package {
    import flash.display.BitmapData;
    import flash.display.PNGEncoderOptions;
    import flash.display.Sprite;
    import flash.display.MovieClip;
    import flash.events.TimerEvent;
    import flash.events.Event; 
    import flash.events.IOErrorEvent; 
    import flash.events.ProgressEvent; 
    import flash.events.ServerSocketConnectEvent; 
    import flash.filesystem.File;
    import flash.geom.Matrix;
    import flash.geom.Point;
    import flash.geom.Rectangle;
    import flash.geom.ColorTransform;
    import flash.net.ServerSocket; 
    import flash.net.Socket; 
    import flash.utils.ByteArray;
    import flash.utils.Dictionary;
    import flash.utils.getQualifiedClassName;
    import flash.utils.Timer;
    import mx.utils.StringUtil;

    import menu.Tab_IEInOut;
    import menu.Tab_IESet;
    import menu.Tab_CameraJpg;
    import menu.Stage_MoveCheckClass;
    import menu.Chara_ColorClass;
    import menu.SetClass;
    import menu.Tab_ColorLinkCheck;
    import menu.Tab_ClassDelete;
    import menu.HeaderbtnClass;
    import menu.Tab_ColorBtnSet2;
    import menu.Tab_RandomCostumOpen;
    import menu.Tab_ClassSet;
    import menu.Tab_TextSaveBtn;
    import menu.Tab_SaveUpdate;
    import parameter.Tab_IEData1;
    import parameter.Dress_data;
    import system.MeterPersent;

    public class RequestServer {
        private var serverSocket: ServerSocket;
        private var clientSockets: Object = new Object();
        private var messageBufs: Object = new Object();
        private var savedSpriteAlpha: Object = new Object();
        private var savedSpriteTransforms: Object = new Object();
        private var fastLoadCache: Object = {};
        private var eventsEnabled: Object = new Object();

        private var heartbeatTimer: Timer = null;

        public static var CACHE_VALID: Array = [false, false, false, false, false, false, false, false, false];
        public static var FASTLOAD_IN_PROGRESS: Boolean = false;

        public static const MSG_TYPE_CONTROL: int = 0x01;
        public static const MSG_TYPE_RESPONSE: int = 0x02;
        public static const MSG_TYPE_IMAGE: int = 0x03;
        public static const MSG_TYPE_HEARTBEAT: int = 0x04;
        public static const MSG_TYPE_EVENT: int = 0x05;
        public static const CLIENT_MSG_HEADER: Array = [0x4B, 0x4B, 0x4C, 0x20, 0x01];

        public static const HEARTBEAT_INTERVAL: uint = 5 * 1000;

        public function RequestServer() {
            try {
                this.serverSocket = new ServerSocket(); 
                 
                this.serverSocket.addEventListener(Event.CONNECT, connectHandler); 
                this.serverSocket.addEventListener(Event.CLOSE, onClose); 
                 
                this.serverSocket.bind(8008, "127.0.0.1"); 
                this.serverSocket.listen();

                this.heartbeatTimer = new Timer(HEARTBEAT_INTERVAL, 0);
                this.heartbeatTimer.addEventListener("timer", this.doHeartbeat);
                this.heartbeatTimer.start();

                Main.stageVar.nativeWindow.addEventListener(Event.CLOSING, this.shutdownSockets);
            } catch(e: Error) { 
                trace("Failed to start up request server:")
                trace(e);
                trace(e.getStackTrace());
            }
        }

        private static function getRemoteIdentifier(socket: Socket) : String {
            return socket.remoteAddress + ":" + socket.remotePort;
        }

        private function shutdownSockets(evt: Event) : void {
            trace("Shutting down remote control sockets...");

            for (var remoteIdentifier: String in clientSockets) {
                var socket: Socket = clientSockets[remoteIdentifier];

                try {
                    sendJSONData(socket, {"type": "shutdown", "data": {}}, MSG_TYPE_EVENT);
                } catch (error: Error) {
                    trace("caught error when sending shutdown event for " + remoteIdentifier + ": ");
                    trace(error);
                }
            }

            for (var remoteIdentifier: String in clientSockets) {
                try {
                    socket.flush();
                    socket.close();
                } catch (error: Error) {
                    trace("caught error when closing socket for " + remoteIdentifier + ": ");
                    trace(error);
                }

                delete clientSockets[remoteIdentifier];
                delete messageBufs[remoteIdentifier];
            }
        }

        public function connectHandler(event:ServerSocketConnectEvent) : void 
        { 
            var socket: Socket = event.socket as Socket;
            var remoteIdentifier: String = getRemoteIdentifier(socket);

            trace("Accepted remote control connection from " + remoteIdentifier);

            clientSockets[remoteIdentifier] = socket;
            messageBufs[remoteIdentifier] = new ByteArray();

            socket.addEventListener(ProgressEvent.SOCKET_DATA, socketDataHandler); 
            socket.addEventListener(Event.CLOSE, onClientClose); 
            socket.addEventListener(IOErrorEvent.IO_ERROR, onIOError); 

            //Send a connect message
            socket.flush(); 
        }

        private static function sendJSONData(socket: Socket, data: Object, msg_type: int) : void {
            var json_out: String = JSON.stringify(data);
            var bytes: ByteArray = new ByteArray();

            bytes.writeUTFBytes(json_out);

            // 4-byte header: 'KKL '
            socket.writeUTFBytes("KKL ");

            // 1-byte message type indicator
            socket.writeByte(msg_type);

            // 4-byte payload length
            socket.writeUnsignedInt(bytes.length);

            // payload data
            socket.writeBytes(bytes, 0, bytes.length);

            socket.flush();
        }

        private static function sendImageData(socket: Socket, data: ByteArray, identifier: uint) : void {
            // header
            socket.writeUTFBytes("KKL ");

            // message type indicator
            socket.writeByte(MSG_TYPE_IMAGE);

            // Payload length (total)
            socket.writeUnsignedInt(4 + data.length);

            // identifier (4 bytes)
            socket.writeUnsignedInt(identifier);

            // image data
            socket.writeBytes(data);

            socket.flush();
        }

        private function doHeartbeat(ev: TimerEvent) : void {
            for (var remoteIdentifier: String in clientSockets) {
                var socket: Socket = clientSockets[remoteIdentifier];

                try {
                    socket.writeUTFBytes("KKL ");
                    socket.writeByte(MSG_TYPE_HEARTBEAT);
                    socket.writeUnsignedInt(0);
                    socket.flush();
                } catch (error: Error) {
                    trace("caught error on heartbeat: ");
                    trace(error);

                    delete clientSockets[remoteIdentifier];
                    delete messageBufs[remoteIdentifier];
                }
            }
        }

        private function readMessageHeader(buf: ByteArray) : Boolean {
            for (var i = 0; i < CLIENT_MSG_HEADER.length; i++) {
                if (buf.readByte() != CLIENT_MSG_HEADER[i]) {
                    return false;
                }
            }

            return true;
        }

        private function readMessage(buf: ByteArray) : String {
            while ((buf.length - buf.position) >= 9) {
                var startPos = buf.position;
                
                if (!readMessageHeader(buf)) {
                    continue;
                }

                var payloadLength = buf.readInt();
                var availBytes: int = buf.length - buf.position;
                if (availBytes < payloadLength) {
                    buf.position = startPos;
                    return null;
                }
                
                return buf.readUTFBytes(payloadLength);
            }

            return null;
        }

        public function pollSocket(socket: Socket) : void
        {
            var remoteIdentifier: String = getRemoteIdentifier(socket);
            var buf: ByteArray = messageBufs[remoteIdentifier];
            var copyBuf: Boolean = false;

            socket.readBytes(buf, buf.length);

            var msg = this.readMessage(buf);
            while (msg !== null) {
                this.handleRequest(JSON.parse(msg), remoteIdentifier, socket);
                msg = this.readMessage(buf);
            }

            if (buf.position > 0) {
                var newBuf: ByteArray = new ByteArray();

                if (buf.length - buf.position > 0) {
                    /* copy leftover data to new buffer */
                    buf.readBytes(newBuf);
                }
                messageBufs[remoteIdentifier] = newBuf;
            }
        }

        public function socketDataHandler(event: ProgressEvent) : void 
        { 
            var socket: Socket = event.target as Socket;
            pollSocket(socket);
        }

        public function emitEvent(event_type: String, event_data: Object) : void {
            for (var remoteIdentifier: String in clientSockets) {
                if (!this.eventsEnabled[remoteIdentifier]) continue;

                var socket: Socket = clientSockets[remoteIdentifier];

                try {
                    sendJSONData(socket, {
                        "type": event_type,
                        "data": event_data
                    }, MSG_TYPE_EVENT);
                } catch (error: Error) {
                    trace("caught error when emitting event: ");
                    trace(error);

                    delete clientSockets[remoteIdentifier];
                    delete messageBufs[remoteIdentifier];
                }
            }
        }

        public function handleRequest(request: Object, remoteIdentifier: String, reply_socket: Socket) : void {
            var requestId: uint = 0;
            if (request.hasOwnProperty("id")) {
                requestId = uint(request["id"]);
            }

            try {
                if (request["type"] == "reset_full") {
                    sendJSONData(reply_socket, {"status": "in_progress", "id": requestId}, MSG_TYPE_RESPONSE);

                    Tab_IEInOut.execute("IN", Main.fullResetCode, MenuClass._nowCharaNum);

                    sendJSONData(reply_socket, {"status": "done", "id": requestId}, MSG_TYPE_RESPONSE);
                } else if (request["type"] == "reset_partial") {
                    sendJSONData(reply_socket, {"status": "in_progress", "id": requestId}, MSG_TYPE_RESPONSE);

                    Tab_IEInOut.execute("IN", Main.initCode, MenuClass._nowCharaNum);

                    sendJSONData(reply_socket, {"status": "done", "id": requestId}, MSG_TYPE_RESPONSE);
                } else if (request["type"] == "import_partial") {
                    var character = MenuClass._nowCharaNum;
                    if (request.hasOwnProperty("character") && request["character"] !== null && request["character"] !== undefined) {
                        character = uint(request["character"]);
                    }

                    sendJSONData(reply_socket, {"status": "in_progress", "id": requestId}, MSG_TYPE_RESPONSE);
                    
                    Tab_IEInOut.execute("IN", request["code"], character);

                    sendJSONData(reply_socket, {"status": "done", "id": requestId}, MSG_TYPE_RESPONSE);
                } else if (request["type"] == "export") {
                    this.exportCodeRequest(request, requestId, remoteIdentifier, reply_socket);
                } else if (request["type"] == "autosave") {
                    if (Main.autosaver) {
                        Main.autosaver.timerHandler(null);
                    }

                    sendJSONData(reply_socket, {"status": "done", "id": requestId}, MSG_TYPE_RESPONSE);
                } else if (request["type"] == "events") {
                    this.eventsEnabled[remoteIdentifier] = request["enable"];
                    sendJSONData(reply_socket, {"status": "done", "id": requestId}, MSG_TYPE_RESPONSE);
                } else if (request["type"] == "screenshot") {
                    this.getScreenshot(request, requestId, remoteIdentifier, reply_socket);
                } else if (request["type"] == "character-screenshot") {
                    this.getCharacterScreenshot(request, requestId, remoteIdentifier, reply_socket);
                } else if (request["type"] == "direct-screenshot") {
                    this.getScreenshotDirect(request, requestId, remoteIdentifier, reply_socket);
                } else if (request["type"] == "import") {
                    var queueReq: ProcessingRequest = new ProcessingRequest(request["code"], request["transforms"]);
                    queueReq.addEventListener(ProcessingRequest.CODE_PROCESSED, function (ev: Event) : void {
                        try {
                            sendImageData(reply_socket, queueReq.getData(), requestId);
                        } catch (error: Error) {
                            trace("caught error on when sending image reply:");
                            trace(error);
                        }
                    });

                    sendJSONData(reply_socket, {"status": "in_progress", "id": requestId}, MSG_TYPE_RESPONSE);
                    Main.processor.enqueueRequest(queueReq);
                } else if (request["type"] == "alpha") {
                    this.doAlphaChange(request, requestId, remoteIdentifier, reply_socket);
                } else if (request["type"] == "alpha_direct") {
                    this.directAlphaRequest(request, requestId, remoteIdentifier, reply_socket);
                } else if (request["type"] == "adjust_transforms") {
                    this.doTransformChange(request, requestId, remoteIdentifier, reply_socket);
                } else if (request["type"] == "character_data") {
                    this.characterDataRequest(request, requestId, remoteIdentifier, reply_socket);
                } else if (request["type"] == "fastload") {
                    this.batchSetRequest(request, requestId, remoteIdentifier, reply_socket);
                } else if (request["type"] == "dump_sprites") {
                    if (!request.hasOwnProperty("character")) {
                        sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "missing required parameter 'character'"}, MSG_TYPE_RESPONSE);
                        return;
                    }

                    var character = uint(request["character"]);
                    sendJSONData(reply_socket, {"status": "done", "id": requestId, "data": dumpSpriteHierarchy(MenuClass.charaAdd[character], {}, 0, 0)}, MSG_TYPE_RESPONSE);
                } else if (request["type"] == "dump_character") {
                    if (!request.hasOwnProperty("character")) {
                        sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "missing required parameter 'character'"}, MSG_TYPE_RESPONSE);
                        return;
                    }

                    var character = uint(request["character"]);
                    sendJSONData(reply_socket, {"status": "done", "id": requestId, "data": MenuClass.charaData[character]}, MSG_TYPE_RESPONSE);
                } else if (request["type"] == "dump_ie_invert") {
                    sendJSONData(reply_socket, {"status": "done", "id": requestId, "data": InvertIEData.InverseIEMap}, MSG_TYPE_RESPONSE);
                } else if (request["type"] == "dump_ie") {
                    sendJSONData(reply_socket, {"status": "done", "id": requestId, "data": Tab_IEData1.IEData}, MSG_TYPE_RESPONSE);
                } else if (request["type"] == "graphics_data") {
                    this.graphicsDataRequest(request, requestId, remoteIdentifier, reply_socket);
                } else if (request["type"] == "version") {
                    sendJSONData(reply_socket, {"status": "done", "id": requestId, "data": {"major": Main.version, "minor": Main.minor_version, "alpha": Main.alpha_version, "appdir": File.applicationDirectory.nativePath}}, MSG_TYPE_RESPONSE);
                } else {
                    sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "unknown command "+request["type"]}, MSG_TYPE_RESPONSE);
                }
            } catch (error: Error) {
                trace("caught error while processing client request:");
                trace(error);
                trace(error.getStackTrace());
            }
        }

        private function exportCodeRequest(request: Object, requestId: uint, remoteIdentifier: String, reply_socket: Socket) : void {
            var exported_code: String = null;
            var charaNum = null;

            if (request.hasOwnProperty("character") && request["character"] !== null) {
                if (request["character"] === "current") {
                    charaNum = MenuClass._nowCharaNum;
                } else {
                    charaNum = int(request["character"]);

                    if (charaNum < 0 || charaNum > MenuClass._characterNum) {
                        sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "invalid character index " + request["character"]}, MSG_TYPE_RESPONSE);
                    }
                }

                sendJSONData(reply_socket, {"status": "in_progress", "id": requestId}, MSG_TYPE_RESPONSE);

                var prevExportCheck = new Array();
                for (var i = 0; i < Tab_IEData1.IEGroup.length; i++) {
                    prevExportCheck.push(MenuClass.exportCheck[i]);
                    MenuClass.exportCheck[i] = true;
                }

                Tab_IEInOut.dataStr = "";
                Tab_IEInOut.execute("OUT", "0", charaNum);
                Tab_IEInOut.execute("OUTLast","0",0);
                exported_code = Tab_IEInOut.dataStr;

                for (var i = 0; i < Tab_IEData1.IEGroup.length; i++) {
                    MenuClass.exportCheck[i] = prevExportCheck[i];
                }
            } else {
                sendJSONData(reply_socket, {"status": "in_progress", "id": requestId}, MSG_TYPE_RESPONSE);

                new Tab_IESet("txtSave");
                exported_code = Tab_TextSaveBtn.txtSaveData;
            }

            sendJSONData(reply_socket, {"status": "done", "id": requestId, "data": {"character": charaNum, "code": exported_code}}, MSG_TYPE_RESPONSE);
        }

        private function characterDataRequest(request: Object, requestId: uint, remoteIdentifier: String, reply_socket: Socket) : void {
            if (!request.hasOwnProperty("character")) {
                sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "missing required parameter 'character'"}, MSG_TYPE_RESPONSE);
                return;
            }

            if (!request.hasOwnProperty("op")) {
                sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "missing required parameter 'op'"}, MSG_TYPE_RESPONSE);
                return;
            }

            if (request["op"] == "set" && !request.hasOwnProperty("value")) {
                sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "missing required parameter 'value'"}, MSG_TYPE_RESPONSE);
                return;
            }

            if (!request.hasOwnProperty("tabName")) {
                sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "missing required parameter 'tabName'"}, MSG_TYPE_RESPONSE);
                return;
            }

            if (!request.hasOwnProperty("tabParameter")) {
                sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "missing required parameter 'tabParameter'"}, MSG_TYPE_RESPONSE);
                return;
            }

            var character = uint(request["character"]);
            var tabName: String = null;
            var tabParameter: String = null;

            if (!request.hasOwnProperty("internalNames") || !request["internalNames"]) {
                var prefix: String = request["tabName"];
                var index: uint = uint(request["tabParameter"]);

                if (!Tab_IEData1.IEData.hasOwnProperty(prefix)) {
                    sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "no export data prefix "+prefix}, MSG_TYPE_RESPONSE);
                    return;
                }

                var prefixData = Tab_IEData1.IEData[prefix];
                if (index >= prefixData.length) {
                    sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "invalid index "+index+" for prefix "+prefix}, MSG_TYPE_RESPONSE);
                    return;
                }

                var codeData: Array = prefixData[index];
                tabName = codeData[0];
                tabParameter = codeData[1];
            } else {
                tabName = request["tabName"];
                tabParameter = request["tabParameter"];
            }

            var chara: Object = MenuClass.charaData[character];
            if (!chara.hasOwnProperty(tabName)) {
                sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "no such data tab "+tabName}, MSG_TYPE_RESPONSE);
                return;
            }

            var tab: Object = chara[tabName];
            if (!tab.hasOwnProperty(tabParameter)) {
                sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "no parameter "+tabParameter+" within tab "+tabName}, MSG_TYPE_RESPONSE);
                return;
            }

            var data: * = tab[tabParameter];
            var req_unpack: Boolean = (getQualifiedClassName(data) == "Array" && data.length == 1);
            if (request["op"] == "get") {
                if (req_unpack) {
                    data = data[0];
                }

                sendJSONData(reply_socket, {"status": "done", "id": requestId, "data": data}, MSG_TYPE_RESPONSE);
            } else if (request["op"] == "set") {
                var set_data: * = null;
                if (req_unpack) {
                    data = data[0];
                }

                if (typeof(data) == "number") {
                    set_data = new Number(request["value"]);
                } else if (typeof(data) == "boolean") {
                    if (typeof(request["value"]) == "number") {
                        set_data = new Boolean(request["value"]);
                    } else if (typeof(request["value"]) == "boolean") {
                        set_data = request["value"]
                    } else if (typeof(request["value"]) == "string") {
                        set_data = (request["value"].toLowerCase() == "true");
                    }
                }

                if (req_unpack) {
                    tab[tabParameter] = [set_data];
                } else {
                    tab[tabParameter] = set_data;
                }

                sendJSONData(reply_socket, {"status": "done", "id": requestId}, MSG_TYPE_RESPONSE);

                var setter: FastSetCharaData = new FastSetCharaData(character);
                setter.flagModification(tabName);
                setter.apply("move");
            } else {
                sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "invalid op "+request["op"]}, MSG_TYPE_RESPONSE);
            }
        }

        private function asBoolean(val: *) : Boolean {
            if (typeof(val) == "number") {
                return new Boolean(val);
            } else if (typeof(val) == "boolean") {
                return val;
            } else if (typeof(val) == "string") {
                return (val.toLowerCase() == "true") || new Boolean(int(val));
            } else {
                return false;
            }
        }

        private function asBoolArray(val: *) : Array {
            var out: Array = [];
            if (getQualifiedClassName(val) == "Array") {
                for (var i: uint = 0; i < val.length; i++) {
                    out.push(new Boolean(val[i]));
                }
            } else if (typeof(val) == "string") {
                for (var i: uint = 0; i < val.length; i++) {
                    out.push(new Boolean(int(val.charAt(i))));
                }
            }
            return out;
        }

        public function invalidateFastloadCache(character: uint) : void {
            trace("invalidating fastload cache for " + character);
            RequestServer.CACHE_VALID[character] = false;
            this.fastLoadCache[character] = {};
        }

        private function graphicsDataRequest(request: Object, requestId: uint, remoteIdentifier: String, reply_socket: Socket) : void {
            var character = uint(request["character"]);
            var targetSprite: Sprite = MenuClass.charaAdd[character];

            if (request["path"]) {
                targetSprite = this.getSpriteFromPath(character, request["path"]);
                if (!targetSprite) { 
                    sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "invalid path"}, MSG_TYPE_RESPONSE);
                    return;
                }
            }

            sendJSONData(reply_socket, {"status": "in_progress", "id": requestId}, MSG_TYPE_RESPONSE);
            
            var exporter: GraphicsDataExporter = new GraphicsDataExporter(targetSprite.graphics);
            sendJSONData(reply_socket, {"status": "done", "id": requestId, "data": exporter.exportAll()}, MSG_TYPE_RESPONSE);
        }

        private function batchSetRequest(request: Object, requestId: uint, remoteIdentifier: String, reply_socket: Socket) : void {
            var character = uint(request["character"]);
            var codeVersion = uint(request["version"] || Main.version);
            var read_from_cache: Boolean = !request.hasOwnProperty("read_from_cache") || !!request["read_from_cache"];
            var write_to_cache: Boolean =  !request.hasOwnProperty("write_to_cache") || !!request["write_to_cache"];
            var setter: FastSetCharaData = new FastSetCharaData(character);
            var data: Array = request["data"];
            var visible: Object = {
                "r": "HairExPlus",
                "t": "MarkPlus",
                "f": "CharaLoadPlus",
                "m": "RibonPlus",
                "n": "HairpinPlus",
                "s": "BeltPlus"
            };
            var chara: Object = MenuClass.charaData[character];
            
            RequestServer.FASTLOAD_IN_PROGRESS = true;
            if (this.fastLoadCache[character] == null) {
                this.fastLoadCache[character] = {};
            }
            var cache: Object = this.fastLoadCache[character];

            if (!RequestServer.CACHE_VALID[character]) {
                read_from_cache = false;
            }

            for (var i: uint = 0; i < data.length; i++) {
                var tabName: String = null;
                var tabParameter: String = null;
                var raw_value = data[i][2];
                var is_nonempty: Boolean = (raw_value !== null) && (raw_value !== undefined) && (raw_value !== '');

                var hairMod = null;
                var beltMod = null;
                var ribbonMod = null;
                var markMod = null;
                var attachMod = null;

                // trace(data[i]);
                var prefix: String = data[i][0];
                var index: uint = uint(data[i][1]);

                if (prefix == "da" && index > 0 && codeVersion <= 92) {
                    prefix = "bi";
                    index -= 1;
                }

                if (!prefix) {
                    sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "prefix " + i + " is invalid"}, MSG_TYPE_RESPONSE);
                    return;
                }

                if (!Tab_IEData1.IEData.hasOwnProperty(prefix)) {
                    sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "no export data prefix "+prefix}, MSG_TYPE_RESPONSE);
                    return;
                }

                var prefixData = Tab_IEData1.IEData[prefix];
                if (index >= prefixData.length) {
                    sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "invalid index "+index+" for prefix "+prefix}, MSG_TYPE_RESPONSE);
                    return;
                }

                if (read_from_cache && cache[prefix + index] === raw_value) {
                    continue;
                }

                if (write_to_cache) {
                    cache[prefix + index] = raw_value;
                }

                if (prefix.length == 3) {
                    var firstChar: String = prefix.charAt(0);
                    var slot: int = int(prefix.substr(1, 2));

                    if (visible[firstChar] != null) {
                        chara[visible[firstChar]]["_visible"][slot] = is_nonempty;
                    }
                    
                    switch(firstChar) {
                        case "r":
                            hairMod = slot;
                            break;
                        case "t":
                            markMod = slot;
                            break;
                        case "m":
                            ribbonMod = slot;
                            break;
                        case "s":
                            beltMod = slot;
                            break;
                        case "f":
                            attachMod = slot;
                            break;
                        case "n":
                            setter.flagModification(visible[firstChar]);
                            break;
                        default:
                            break;
                    }
                }

                var codeData: Array = prefixData[index];
                tabName = codeData[0];
                tabParameter = codeData[1];

                if (!chara.hasOwnProperty(tabName)) {
                    sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "no such data tab "+tabName}, MSG_TYPE_RESPONSE);
                    return;
                }

                var tab: Object = chara[tabName];
                if (!tab.hasOwnProperty(tabParameter)) {
                    sendJSONData(reply_socket, {"status": "error", "id": requestId, "reason": "no parameter "+tabParameter+" within tab "+tabName}, MSG_TYPE_RESPONSE);
                    return;
                }

                var topTabName: String = prefixData[0][0];
                if (chara[topTabName]["_menu"] != undefined) {
                    if(chara[topTabName]["_menu"] > MenuClass.menuData[topTabName] && topTabName != "Item0" && topTabName != "Item1")
                    {
                        chara[topTabName]["_menu"] = MenuClass.menuData[topTabName];
                        setter.flagModification(topTabName);
                    }
                } 
                
                if (!is_nonempty && (prefix !== "ff" && prefix !== "gd" && prefix !== "ge" && prefix !== "gh")) {
                    if (chara[topTabName]["_visible"] != undefined && chara[topTabName]["_visible"][0]) {
                        chara[topTabName]["_visible"][0] = false;
                        setter.flagModification(topTabName);
                    }
                } else if (tabParameter == "_visible") {
                    if (tab["_visible"].length == 1) {
                        tab["_visible"][0] = this.asBoolean(raw_value);
                    } else {
                        var val = asBoolArray(raw_value);
                        for (var j: uint = 0; (j < val.length) && (j < tab["_visible"].length); j++) {
                            tab["_visible"][j] = val[j];
                        }
                    }
                } else {
                    if (chara[topTabName]["_visible"] != undefined && chara[topTabName]["_visible"].length === 1 && !chara[topTabName]["_visible"][0]) {
                        chara[topTabName]["_visible"][0] = true;
                        setter.flagModification(topTabName);
                    }

                    if (tabParameter == "_color0" || tabParameter == "_color1" || tabParameter == "_color2") {
                        try {
                            var menuNum: uint = 0;
                            var val = 0;
                            try
                            {
                                if(tab["_menu"] == undefined || Dress_data.DressData[tabName].length == 1)
                                {
                                    menuNum = 0;
                                }
                                else
                                {
                                    menuNum = tab["_menu"];
                                }
                            }
                            catch(myError:Error) {}


                            if ((typeof(raw_value) == "string") && (raw_value.length == 6)) {
                                tab[tabParameter][0] = String(raw_value);
                                try
                                {
                                    Dress_data.DressCharaData[character][tabName][menuNum][tabParameter][0] = String(raw_value);
                                }
                                catch(myError:Error)
                                {}
                            } else {
                                tab[tabParameter][0] = int(raw_value);
                                try
                                {
                                    Dress_data.DressCharaData[character][tabName][menuNum][tabParameter][0] = int(raw_value);
                                }
                                catch(myError:Error)
                                {}
                            }

                            if(tabName != "UnderHair")
                            {
                                new Tab_ColorLinkCheck(character, tabName, "chara");
                            }
                            if(tabName == "Hair")
                            {
                                new Tab_ColorLinkCheck(character, "UnderHair", "chara");
                            }
                        } catch(myError:Error) {}
                    } else if ((raw_value === null) || (raw_value === undefined) || (raw_value === '')) {
                        if (tabParameter == "_menu") {
                            try
                            {
                                tab["_menu"] = MenuClass.charaData[character][tabName]["_menu"];
                            }
                            catch(myError:Error) {}
                        } else {
                            var buf:ByteArray = new ByteArray();
                            buf.writeObject(MenuClass.charaDefoData[character][tabName][tabParameter]);
                            buf.position = 0;
                            tab[tabParameter] = buf.readObject();
                        }
                    } else if (tabParameter == "_swfColor") {
                        for (var j: uint = 0; j < tab["_swfColor"].length; j++) {
                            tab["_swfColor"][j] = 0;
                        }

                        if (typeof(raw_value) == "string") {
                            var input_len = raw_value.length / 6;
                            for (var j: uint = 0; (j < tab["_swfColor"].length) && (j < input_len); j++) {
                                tab["_swfColor"][j] = raw_value.substr(j * 6, 6);
                            }

                            for (var j: uint = input_len+1; j < tab["_swfColor"].length; j++) {
                                tab["_swfColor"][j] = 0;
                            }
                        } else {
                            for (var j: uint = 0; (j < tab["_swfColor"].length) && (j < raw_value.length); j++) {
                                tab["_swfColor"][j] = String(raw_value[j]);
                            }
                        }
                    } else {
                        tab[tabParameter] = int(raw_value);
                    }
                }

                // trace(hairMod + " " + beltMod + " " + ribbonMod + " " + markMod);

                if (hairMod != null) {
                    setter.flagModifiedHairEx(hairMod);
                }

                if (beltMod != null) {
                    setter.flagModifiedBelt(beltMod);
                }

                if (ribbonMod != null) {
                    setter.flagModifiedRibbon(ribbonMod);
                }
                
                if (markMod != null) {
                    setter.flagModifiedMark(markMod);
                }

                if (attachMod != null) {
                    setter.flagModifiedAttachment(attachMod);
                }
                
                setter.flagModification(tabName);
            }

            if(chara["Tin"]["_visible"][0] && !chara["TinManualAuto"]["_check"])
            {
               chara["TinMove"]["_mode"] = 0;
            }

            if (request["attachments"] != null) {
                for (var raw_slot in request["attachments"]) {
                    var slot = uint(raw_slot);
                    chara["CharaLoadAdd" + slot]["_name"] = request["attachments"][raw_slot];
                    setter.flagModifiedAttachment(slot);
                }
            }

            new Tab_SaveUpdate(character, codeVersion, "Xmove");
            setter.apply("move");

            RequestServer.FASTLOAD_IN_PROGRESS = false;
            if (write_to_cache) {
                RequestServer.CACHE_VALID[character] = true;
            }

            sendJSONData(reply_socket, {"status": "done", "id": requestId}, MSG_TYPE_RESPONSE);
        }

        private function getScreenshot(request: Object, requestId: uint, remoteIdentifier: String, reply_socket: Socket) : void {
            MenuClass.systemData["CameraKaizoudo"]["_menu"] = 4;
            MenuClass.cameraMode = 1;
            MenuClass.ClickRock = false;
            
            var disableBg = true;
            if (request["bg"] != null) {
                disableBg = !Boolean(request["bg"]);
            }

            var fastEncode = true;
            if (request["fastEncode"] != null) {
                fastEncode = Boolean(request["fastEncode"]);
            }

            new Stage_MoveCheckClass();

            /* create a dummy processing request */
            var req: ProcessingRequest = new ProcessingRequest("", {}, fastEncode);
            var self: RequestServer = this;

            req.addEventListener(ProcessingRequest.CODE_PROCESSED, function (ev: Event) : void {
                if (disableBg) {
                    Main.mainWindow.bg.visible = true;
                }

                try {
                    sendImageData(reply_socket, req.getData(), requestId);
                } catch (error: Error) {
                    trace("caught error on when sending image reply:");
                    trace(error);
                }
            });

            sendJSONData(reply_socket, {"status": "in_progress", "id": requestId}, MSG_TYPE_RESPONSE);

            Main.processingCode = req;
            
            var tm2:Timer = new Timer(750, 1);
            tm2.addEventListener("timer", function (e2:TimerEvent) {
                if (disableBg) {
                    Main.mainWindow.bg.visible = false;
                }                        

                var camera: Tab_CameraJpg = new Tab_CameraJpg();
            });
            
            tm2.start();
        }


        private function getCharacterScreenshot(request: Object, requestId: uint, remoteIdentifier: String, reply_socket: Socket) : void {
            var bm: BitmapData = null;
            var characters: Array = request["characters"] || [];
            var base_sf: Number = request["scale"] || 2.5;
            var fastEncode: Boolean = !request.hasOwnProperty("fastEncode") || !!request["fastEncode"];
            var max_width: Number = 0;
            var max_height: Number = 0;

            sendJSONData(reply_socket, {"status": "in_progress", "id": requestId}, MSG_TYPE_RESPONSE);

            for (var i: uint = 0; i < characters.length; i++) {
                var chara: Sprite = MenuClass.charaAdd[characters[i]["index"]];
                var bounds = chara.transform.pixelBounds.clone();
                var width: Number = bounds.width * base_sf;
                var height: Number = bounds.height * base_sf;
                var matx: Matrix = chara.transform.concatenatedMatrix.clone();
                var extra_matrix: Array = characters[i]["matrix"];

                if (width > max_width) {
                    max_width = width;
                }

                if (height > max_height) {
                    max_height = height;
                }
                
                matx.translate(-bounds.x, -bounds.y);
                matx.scale(base_sf, base_sf);

                if (extra_matrix != null) {
                    matx.concat(new Matrix(
                        extra_matrix[0], extra_matrix[1],
                        extra_matrix[2], extra_matrix[3],
                        extra_matrix[4], extra_matrix[5]
                    ));
                }

                characters[i]["matrix"] = matx;
            }

            bm = new BitmapData(max_width, max_height, true, 16777215);
            for (var i: uint = 0; i < characters.length; i++) {
                bm.draw(MenuClass.charaAdd[characters[i]["index"]], characters[i]["matrix"]);
            }

            var rect: Rectangle = new Rectangle(0, 0, max_width, max_height);
            var opts: PNGEncoderOptions = new PNGEncoderOptions(fastEncode);
            var encoded = bm.encode(rect, opts);
            sendImageData(reply_socket, encoded, requestId);

            bm.dispose();
        }

        private function getScreenshotDirect(request: Object, requestId: uint, remoteIdentifier: String, reply_socket: Socket) : void {
            sendJSONData(reply_socket, {"status": "in_progress", "id": requestId}, MSG_TYPE_RESPONSE);

            var bm: BitmapData = null;
            var sf: Number = request["scale"] || 2.5;
            var fastEncode: Boolean = !request.hasOwnProperty("fastEncode") || !!request["fastEncode"];
            var shift: Array = [0, 0];
            var size: Array = [sf * Main._stageWidth, sf * Main._stageHeight];

            new Stage_MoveCheckClass();

            if (request["shift"]) {
                shift = request["shift"];
            }

            if (request["size"]) {
                size = request["size"];

                var pad_x = int(((sf * Main._stageWidth) - size[0]) / 2);
                var pad_y = int(((sf * Main._stageHeight) - size[1]) / 2);

                shift[0] -= pad_x;
                shift[1] -= pad_y;
            }

            // var bounds = MenuClass.charaAdd[0].transform.pixelBounds;
            // trace("Chara 0 top left:" + bounds.x + ", " + bounds.y);
            // trace("Chara 0 bottom right:" + bounds.bottomRight.x + ", " + bounds.bottomRight.y);
            // trace("Chara 0 bounds size:" + bounds.width + ", " + bounds.height);

            new MeterPersent(1,5,"Zoom",0);
            if(MeterPersent.MeterPersentNum < 1)
            {
                MeterPersent.MeterPersentNum = Main.mainWindow.scaleX;
            }

            Main.mainWindow.scaleX = sf * 1.28;
            Main.mainWindow.scaleY = sf * 1.28;
            Main.mainMask.scaleX = sf * 1.28;
            Main.mainMask.scaleY = sf * 1.28;
            Main.mainWindow.x = shift[0] + (-2 * sf);
            Main.mainMask.x = shift[0] + (-2 * sf);
            Main.mainWindow.y = shift[1] + (-24 * sf);
            Main.mainMask.y = shift[1] + (-24 * sf);

            // trace(MeterPersent.MeterPersentNum);
            // trace(MenuClass.systemData["Zoom"]["_x"]);
            // trace(MenuClass.systemData["Zoom"]["_y"]);
            // trace(MenuClass.systemData["CameraKirinuki"]["_x"]);
            // trace(MenuClass.systemData["CameraKirinuki"]["_y"]);
            // trace(MenuClass.systemData["CameraKirinuki"]["_width"]);
            // trace(MenuClass.systemData["CameraKirinuki"]["_height"]);
            
            for(var headerName in MenuClass.headerAdd)
            {
                MenuClass.headerAdd[headerName].visible = false;
            }
            if(MenuClass._nowHeaderName != null)
            {
                new Tab_ClassDelete(MenuClass._nowHeaderName);
            }
            HeaderbtnClass.headerMenu.visible = false;

            Tab_ColorBtnSet2.deleteFc();
            Tab_ColorBtnSet2.customDeleteFc();
            if(MenuClass._nowHeaderName == "SystemOption")
            {
                Tab_RandomCostumOpen.toolDeleteFc();
            }
            else
            {
                Tab_RandomCostumOpen.deleteFc(MenuClass._nowHeaderName);
            }

            if (request["bg"] != null) {
                Main.mainWindow.bg.visible = Boolean(request["bg"]);
            } else {
                Main.mainWindow.bg.visible = false;
            }

            for (var i: uint = 0; i <= MenuClass._characterNum; i++) {
                new SetClass(i, "CharaDropShadowX", "camera");
                new SetClass(i, "CharaDropShadowY", "camera");
                new SetClass(i, "CharaDropShadowDistance", "camera");
                new SetClass(i, "CharaBlurX", "camera");
                new SetClass(i, "CharaBlurY", "camera");
                MenuClass.charaAddDepth[i].charaSelect.visible = false;
            }

            bm = new BitmapData(size[0], size[1], true, 16777215);
            bm.draw(Main.stageVar);

            Main.mainWindow.bg.visible = true;

            for (var i: uint = 0; i <= MenuClass._characterNum; i++) {
                new SetClass(i, "CharaDropShadowX", "off");
                new SetClass(i, "CharaDropShadowY", "off");
                new SetClass(i, "CharaDropShadowDistance", "off");
                new SetClass(i, "CharaBlurX", "off");
                new SetClass(i, "CharaBlurY", "off");
            }

            Main.mainWindow.scaleX = MeterPersent.MeterPersentNum;
            Main.mainWindow.scaleY = MeterPersent.MeterPersentNum;
            Main.mainMask.scaleX = MeterPersent.MeterPersentNum;
            Main.mainMask.scaleY = MeterPersent.MeterPersentNum;
            Main.mainWindow.x = MenuClass.systemData["Zoom"]["_x"];
            Main.mainMask.x = MenuClass.systemData["Zoom"]["_x"];
            Main.mainWindow.y = MenuClass.systemData["Zoom"]["_y"];
            Main.mainMask.y = MenuClass.systemData["Zoom"]["_y"];

            for (var i: uint = 0; i < MenuClass.MY_MENUNAME.length; i++) {

                if((MenuClass.MY_MENUNAME[i][3] == MenuClass._nowHeaderMenuNum || MenuClass.MY_MENUNAME[i][3] == 0) && MenuClass.MY_MENUNAME[i][0] != "StoryTool")
                {
                    MenuClass.headerAdd[MenuClass.MY_MENUNAME[i][0]].visible = true;
                }
            }
            
            if(MenuClass._nowHeaderName != null)
            {
                new Tab_ClassSet(MenuClass._nowHeaderName);
            }

            if(!MenuClass.systemData["EExpert"]["_check"])
            {
                HeaderbtnClass.headerMenu.visible = true;
            }

            for (var i: uint = 0; i <= MenuClass._characterNum; i++) {
                new SetClass(i, "CharaDropShadowX", "off");
                new SetClass(i, "CharaDropShadowY", "off");
                new SetClass(i, "CharaDropShadowDistance", "off");
                new SetClass(i, "CharaBlurX", "off");
                new SetClass(i, "CharaBlurY", "off");
            }

            var rect: Rectangle = new Rectangle(0, 0, size[0], size[1]);
            var opts: PNGEncoderOptions = new PNGEncoderOptions(fastEncode);
            var encoded = bm.encode(rect, opts);
            sendImageData(reply_socket, encoded, requestId);

            bm.dispose();
        }

        private function forEachXfrm(transformGroup: Object, ignore_err: Boolean, callback: Function, posCallback: Function) : Object {
            var originalXfrms = {};

            for (var character: String in transformGroup) {
                var charTransforms: Object = transformGroup[character];
                var charOriginal: Object = {};
                var chara: MovieClip = null;

                try {
                    trace("forEachMatrixXfrm - finding character " + character);
                    if (character == "current") {
                        chara = MenuClass.charaAdd[MenuClass._nowCharaNum];
                    } else {
                        var charaNum = int(character);
                        chara = MenuClass.charaAdd[charaNum];
                    }

                    if (!chara) {
                        trace("forEachMatrixXfrm - target character " + character + " does not exist");
                        if (!ignore_err) return [false, "target character " + character + " does not exist"];
                    }
                } 
                catch(myError:Error)
                {
                    trace("forEachMatrixXfrm - Caught error when finding sprite for " + character + ": " + myError.getStackTrace());
                    if (!ignore_err) return [false, "error while finding sprite for " + character];
                }

                for (var path: String in charTransforms) {
                    try {
                        var pathParts: Array = StringUtil.trim(path).split('.');
                        var cur: MovieClip = chara;

                        trace("forEachMatrixXfrm - applying transform to character " + character + ", sprite " + path);
                        
                        for(var i2: uint = 0; i2 < pathParts.length; i2++) {
                            if (cur.hasOwnProperty(pathParts[i2]) && cur[pathParts[i2]]) {
                                cur = cur[pathParts[i2]];
                            } else {
                                cur = null;
                                break;
                            }
                        }

                        if (cur == null) {
                            trace("forEachMatrixXfrm - Invalid path: " + path);
                            if (!ignore_err) return [false, "invalid path " + path];
                        }

                        var prevPlaying = cur.isPlaying;

                        var originalData = {
                            "x": cur.x,
                            "y": cur.y,
                            "scaleX": cur.scaleX,
                            "scaleY": cur.scaleY,
                            "rotation": cur.rotation
                        };

                        charOriginal[path] = originalData;
                        var newData1: Object = callback(originalData, charTransforms[path]);
                        cur.rotation = newData1["rotation"];
                        cur.scaleX = newData1["scaleX"];
                        cur.scaleY = newData1["scaleY"];

                        var currentData = {
                            "x": cur.x,
                            "y": cur.y,
                            "scaleX": cur.scaleX,
                            "scaleY": cur.scaleY,
                            "rotation": cur.rotation
                        };

                        var newPosData: Object = posCallback(currentData, charTransforms[path]);
                        cur.x = newPosData["x"];
                        cur.y = newPosData["y"];

                        if (prevPlaying) {
                            cur.play();
                        } else {
                            cur.stop();
                        }

                        trace("forEachMatrixXfrm - applied transform to character " + character + ", sprite " + path);
                    }
                    catch(myError:Error)
                    {
                        trace("forEachMatrixXfrm - Caught error when loading transforms for " + path + ": " + myError.getStackTrace());
                        if (!ignore_err) return [false, "error while loading transforms for " + path];
                    }
                }

                originalXfrms[charaNum] = charOriginal;
            }

            return [true, originalXfrms];
        }

        private function doTransformChange(request: Object, reqId: uint, remoteIdentifier: String, reply_socket: Socket) : void {
            trace("doTransformChange - applying transforms:");
            trace(JSON.stringify(request["transforms"]));
            
            trace("doTransformChange - restoring saved transforms");
            forEachXfrm(this.savedSpriteTransforms, true, function (cur: Object, saved: Object) : Object {
                return saved;
            }, function (cur: Object, saved: Object) : Object {
                return saved;
            });

            trace("doTransformChange - applying new transforms");
            var result = forEachXfrm(request["transforms"], false, function (cur: Object, xfrmData: Object) : Object {
                var retData = {
                    "scaleX": cur.scaleX * xfrmData.scaleX,
                    "scaleY": cur.scaleY * xfrmData.scaleY,
                    "rotation": cur.rotation + xfrmData.rotation
                };

                return retData;
            }, function (cur: Object, xfrmData: Object) : Object {
                var x = xfrmData.x;
                var y = xfrmData.y;

                if (xfrmData.applyScaleX) x *= cur.scaleX;
                if (xfrmData.applyScaleY) y *= cur.scaleY;
                if (xfrmData.applyRotation) {
                    var rotRad = cur.rotation * (Math.PI / 180.0);
                    if (xfrmData.invertRotation) rotRad *= -1;
                    x = (x * Math.cos(rotRad)) - (y * Math.sin(rotRad));
                    y = (x * Math.sin(rotRad)) + (y * Math.cos(rotRad));
                }

                var retData = {
                    "x": cur.x + x,
                    "y": cur.y + y
                };

                return retData;
            });

            if (result[0]) {
                this.savedSpriteTransforms = result[1];
                sendJSONData(reply_socket, {"status": "done", "id": reqId}, MSG_TYPE_RESPONSE);
            } else {
                sendJSONData(reply_socket, {"status": "error", "id": reqId, "reason": result[1]}, MSG_TYPE_RESPONSE);
            }
        }

        private function doAlphaChange(request: Object, reqId: uint, remoteIdentifier: String, reply_socket: Socket) : void {
            var charaNum: int = int(request["character"]);
            var targetColorIndex: int = int(request["colorIndex"]);
            var targetPart: String = request["part"];
            var charaData: Object = MenuClass.charaData[charaNum];

            if (charaData[targetPart]["_color"+targetColorIndex] == null) {
                try {
                    sendJSONData(reply_socket, {"status": "error", "id": reqId, "reason": "target color index does not exist"}, MSG_TYPE_RESPONSE);
                } catch (error: Error) {
                    trace("caught error on when sending alpha change response");
                    trace(error);
                }
                return;
            }

            try {
                sendJSONData(reply_socket, {"status": "in_progress", "id": reqId}, MSG_TYPE_RESPONSE);
            } catch (error: Error) {
                trace(error);
            }

            charaData[targetPart]["_alpha"+targetColorIndex] = uint(request["alpha"]);
            trace(charaData[targetPart]);

            if (request["colorTab"] != null) {
                new Chara_ColorClass(charaNum, request["colorTab"]);
            }

            try {
                sendJSONData(reply_socket, {"status": "done", "id": reqId}, MSG_TYPE_RESPONSE);
            } catch (error: Error) {
                trace(error);
            }
        }

        private function dumpSpriteHierarchy(curSprite: Sprite, dedupe: Object, n: int, nDedupe: int) : Array {
            var ret = [];

            for (var i = 0; i < curSprite.numChildren; i++) {
                var name = null;
                var child = curSprite.getChildAt(i);
                for (var propName : String in curSprite) {
                    if (child === curSprite[propName]) {
                        name = propName;
                        break;
                    }
                }

                var id = n;
                n += 1;

                if (!dedupe[child]) {
                    dedupe[child] = nDedupe;
                    nDedupe += 1;
                }

                var fullName: String = getQualifiedClassName(child);
                var lastDot: Number = fullName.lastIndexOf("::");
                var className: String = fullName;
                if (lastDot >= 0) {
                    className = fullName.substring(lastDot + 2);
                }


                var children = [];
                try {
                    children = dumpSpriteHierarchy(child, dedupe, n, nDedupe);
                } catch (e) {};

                ret.push({ "id": id, "group": dedupe[child], "name": name, "instance_name": curSprite.name,  "depth": i, "children": children, "type": fullName, "masked": (child.mask != null) });
            }
            
            return ret;
        }

        private function getSpriteFromPath(charaNum: int, path: String) : Sprite {
            var targetSprite: Sprite = MenuClass.charaAdd[charaNum];
            if (path == "") {
                return targetSprite;
            }

            var parts: Array = path.split('.');
            for (var i: uint = 0; i < parts.length; i++) {
                if (parts[i].length > 0 && parts[i].substring(0, 1) == '!') {
                    targetSprite = Sprite(targetSprite.getChildAt(parseInt(parts[i].substring(1), 10)));
                } else {
                    targetSprite = targetSprite[parts[i]];
                }
                
                if (!targetSprite) {
                    return null;
                }
            }

            return targetSprite;
        }

        private function directAlphaRequest(request: Object, reqId: uint, remoteIdentifier: String, reply_socket: Socket) : void {
            if (!request.hasOwnProperty("op")) {
                sendJSONData(reply_socket, {"status": "error", "id": reqId, "reason": "missing required parameter 'op'"}, MSG_TYPE_RESPONSE);
                return;
            }

            var op: String = request["op"];
            if (op == "reset_all") {
                for (var key: String in this.savedSpriteAlpha) {
                    var charaNum: int = int(key.substring(0, 1));
                    var path: String = key.substring(2);

                    var targetSprite: Sprite = this.getSpriteFromPath(charaNum, path);
                    if (!targetSprite) {
                        continue;
                    }

                    var xfrm: ColorTransform = targetSprite.transform.colorTransform;
                    var savedAlpha: Array = this.savedSpriteAlpha[key];

                    if (savedAlpha != null) {
                        xfrm.alphaMultiplier = savedAlpha[0];
                        xfrm.alphaOffset = savedAlpha[1];
                        targetSprite.transform.colorTransform = xfrm;
                    }
                }

                this.savedSpriteAlpha = new Object();

                sendJSONData(reply_socket, {"status": "done", "id": reqId}, MSG_TYPE_RESPONSE);
                return;
            }

            if (!request.hasOwnProperty("character")) {
                sendJSONData(reply_socket, {"status": "error", "id": reqId, "reason": "missing required parameter 'character'"}, MSG_TYPE_RESPONSE);
                return;
            }

            if (!request.hasOwnProperty("path")) {
                sendJSONData(reply_socket, {"status": "error", "id": reqId, "reason": "missing required parameter 'path'"}, MSG_TYPE_RESPONSE);
                return;
            }

            var charaNum: int = int(request["character"]);
            var path: String = StringUtil.trim(request["path"]);
            var storageKey: String = charaNum.toString(10) + ":" + path;
            var targetSprite: Sprite = this.getSpriteFromPath(charaNum, path);

            if (targetSprite == null) {
                sendJSONData(reply_socket, {"status": "error", "id": reqId, "reason": "invalid path"}, MSG_TYPE_RESPONSE);
                return;
            }

            if (op == "set-children") {
                if (!request.hasOwnProperty("alpha")) {
                    sendJSONData(reply_socket, {"status": "error", "id": reqId, "reason": "missing required parameter 'alpha'"}, MSG_TYPE_RESPONSE);
                    return;
                }

                for (var i: int = 0; i < targetSprite.numChildren; i++) {
                    var child = targetSprite.getChildAt(i);
                    trace(child.name);

                    if (!child) {
                        continue;
                    }

                    var x: ColorTransform = child.transform.colorTransform;
                    if (!x) {
                        x = new ColorTransform();
                    }

                    var storageData: Array = [x.alphaMultiplier, x.alphaOffset];

                    var storageKey_1: String = storageKey + ".!" + i;
                    if (this.savedSpriteAlpha[storageKey_1] == undefined) {
                        this.savedSpriteAlpha[storageKey_1] = storageData;
                    }

                    if (child.name) {
                        var storageKey_2: String = storageKey + "." + child.name;
                        if (this.savedSpriteAlpha[storageKey_2] == undefined) {
                            this.savedSpriteAlpha[storageKey_2] = storageData;
                        }
                    }

                    x.alphaOffset = Number(request["alpha"]);
                    if (request.hasOwnProperty("multiplier")) {
                        x.alphaMultiplier = Number(request["multiplier"]);
                    } else {
                        x.alphaMultiplier = 0;
                    }

                    child.transform.colorTransform = x;
                }

                sendJSONData(reply_socket, {"status": "done", "id": reqId}, MSG_TYPE_RESPONSE);
                return;
            }

            if (!targetSprite.transform.colorTransform) {
                targetSprite.transform.colorTransform = new ColorTransform();
            }

            var xfrm: ColorTransform = targetSprite.transform.colorTransform;
            if (op == "set") {
                if (!request.hasOwnProperty("alpha")) {
                    sendJSONData(reply_socket, {"status": "error", "id": reqId, "reason": "missing required parameter 'alpha'"}, MSG_TYPE_RESPONSE);
                    return;
                }

                if (this.savedSpriteAlpha[storageKey] == undefined) {
                    this.savedSpriteAlpha[storageKey] = [xfrm.alphaMultiplier, xfrm.alphaOffset];
                }

                xfrm.alphaOffset = Number(request["alpha"]);
                if (request.hasOwnProperty("multiplier")) {
                    xfrm.alphaMultiplier = Number(request["multiplier"]);
                } else {
                    xfrm.alphaMultiplier = 0;
                }

                targetSprite.transform.colorTransform = xfrm;
                sendJSONData(reply_socket, {"status": "done", "id": reqId}, MSG_TYPE_RESPONSE);
            } else if (op == "reset") {
                var savedAlpha: Array = this.savedSpriteAlpha[storageKey];
                if (savedAlpha != null) {
                    xfrm.alphaMultiplier = savedAlpha[0];
                    xfrm.alphaOffset = savedAlpha[1];
                    targetSprite.transform.colorTransform = xfrm;

                    delete this.savedSpriteAlpha[storageKey];
                }

                sendJSONData(reply_socket, {"status": "done", "id": reqId}, MSG_TYPE_RESPONSE);
            } else if (op == "get") {
                var ret: Object = {"multiplier": xfrm.alphaMultiplier, "alpha": xfrm.alphaOffset, "alphaProp": targetSprite.alpha, "visible": targetSprite.visible};
                sendJSONData(reply_socket, {"status": "done", "id": reqId, "data": ret}, MSG_TYPE_RESPONSE);
            } else {
                sendJSONData(reply_socket, {"status": "error", "id": reqId, "reason": "invalid op"}, MSG_TYPE_RESPONSE);
            }
        }

        private function onClientClose(event: Event) : void 
        {
            var socket: Socket = event.target as Socket;
            var remoteIdentifier: String = getRemoteIdentifier(socket);

            delete clientSockets[remoteIdentifier];
            delete messageBufs[remoteIdentifier];

            trace("Connection to client " + remoteIdentifier + " closed."); 
        }
 
        private function onIOError(errorEvent:IOErrorEvent) : void { 
            trace("IOError: " + errorEvent.text); 
        } 
 
        private function onClose(event:Event) : void 
        { 
            trace("Server socket closed by OS."); 
        } 
    }
}