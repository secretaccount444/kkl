package {
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import flash.events.Event;
    import flash.events.EventDispatcher;
    import flash.filesystem.File;
    import flash.filesystem.FileStream;
    import flash.display.Sprite;
    import flash.utils.ByteArray;
    import flash.geom.ColorTransform;
    import flash.geom.Matrix;
    import mx.utils.StringUtil;

    import menu.Stage_MoveCheckClass;
    import menu.Tab_IEInOut;
    import menu.Tab_StoryLoad;
    import menu.Tab_CameraJpg;
    import menu.Tab_SetClass;

    public class RequestProcessor extends EventDispatcher {
        private var codesToProcess: Array = [];
        private var lastHideShowStatus: Array = [];
        private var lastTransforms: Object = {};
        private var lastSelectVisibility: Object = {};

        private var fileTimer: Timer = null;
        private var processTimer: Timer = null;
        
        private var secondaryDir: File = null;
        private var controlDirs: Array = [];

        private var identifier: uint = 0;

        public function RequestProcessor() {
            trace("app dir:" + File.applicationDirectory.nativePath);

            this.secondaryDir = new File(File.applicationDirectory.resolvePath("import_requests").nativePath);

            if (!this.secondaryDir.exists) {
                this.secondaryDir.createDirectory();
            }

            if (!this.secondaryDir.exists || !this.secondaryDir.isDirectory) {
                this.secondaryDir = null;
            }

            this.identifier = Math.floor(Math.random() * 10000);

            this.controlDirs.push(this.getControlDir(File.applicationStorageDirectory));
            if (this.secondaryDir != null) {
                this.controlDirs.push(this.getControlDir(this.secondaryDir));
            }

            this.createControlMetadataFiles();

            this.fileTimer = new Timer(300, 0);
            this.fileTimer.addEventListener("timer", this.timerHandler);
            this.fileTimer.start();

            this.processTimer = new Timer(200, 0);
            this.processTimer.addEventListener("timer", this.codeProcessor);
            this.processTimer.start();

            Main.stageVar.nativeWindow.addEventListener(Event.CLOSING, this.onExit);
        }

        private static function djb_hash(s: String) : uint {
            var hash: uint = 5381;
            for (var i: uint = 0; i < s.length; i++) {
                hash = (hash * 33) ^ s.charCodeAt(i);
            }

            return hash;
        }

        private function getControlDir(dir: File) : File {
            var ret: File = dir.resolvePath("kkl-control");
            if (!ret.exists) {
                ret.createDirectory();
            }

            return ret;
        }

        private function createControlMetadataFiles() : void {
            for (var i: uint = 0; i < this.controlDirs.length; i++) {
                var d: File = this.controlDirs[i];

                try {
                    var f: File = d.resolvePath(this.identifier+".run");
                    var fstream: FileStream = new FileStream();

                    fstream.open(f, "write");
                    fstream.writeUTFBytes(this.identifier.toString(10));
                    fstream.close();

                    var f2: File = d.resolvePath("meta.info");
                    
                    fstream = new FileStream();
                    fstream.open(f2, "write");
                    fstream.writeUTFBytes("major_version="+Main.version+"\nminor_version="+Main.minor_version+"\nappdir="+File.applicationDirectory.nativePath);
                    fstream.close();
                } catch (err: Error) {
                    Main.logError(err, "while creating control metadata in directory " + d.nativePath);
                }
            }
        }

        private function cleanupControlFiles() : void {
            for (var i: uint = 0; i < this.controlDirs.length; i++) {
                var d: File = this.controlDirs[i];

                try {
                    var f1 = d.resolvePath(this.identifier+".run");
                    if (f1.exists) {
                        f1.deleteFile();
                    }
                } catch (err: Error) {
                    Main.logError(err, "when deleting control info file in " + d.nativePath);
                }
            }
        }

        private function onExit(ev: Event) : void {
            this.cleanupControlFiles();
        }
      
        private function timerHandler(ev: TimerEvent) : void
        {
            this.checkForRequests(File.applicationStorageDirectory);

            if (this.secondaryDir != null) {
                this.checkForRequests(this.secondaryDir);
            }
        }
      
        private function codeProcessor(ev:TimerEvent) : void
        {
            this.processCode();
        }

        public function enqueueRequest(req: ProcessingRequest) : void {
            codesToProcess.push(req);
        }

        public function checkForRequests(dir: File) : void {
            var files: Array = dir.getDirectoryListing();

            for (var i: uint = 0; i < files.length; i++) {
                var f: File = files[i];

                if (f.isDirectory || f.extension != "txt") {
                    continue;
                }

                var fdata: * = null;
                var fstream:FileStream = new FileStream();
                
                var fname: String = f.name.substr(0, f.name.length - f.extension.length - 1);
                
                fstream.open(f,"read");
                fdata = fstream.readUTFBytes(f.size);
                fstream.close();
                
                f.deleteFile();

                var outFile: File = dir.resolvePath(fname + '.png');
                var req: ProcessingRequest = new ProcessingRequest(fdata, {});
                
                req.addEventListener(ProcessingRequest.CODE_PROCESSED, function (ev: Event) : void {
                    req.saveToFile(outFile);
                });

                codesToProcess.push(req);
            }
        }

        public function processCode() : void {
            if (codesToProcess.length <= 0 || Main.processingCode != null) {
                return;
            }

            var req: ProcessingRequest = codesToProcess.shift();
            var code: String = req.getCode();

            var processor: RequestProcessor = this;
            req.addEventListener(ProcessingRequest.CODE_PROCESSED, function (ev: Event) : void {
                processor.onProcessCodeComplete();
            });

            Main.processingCode = req;

            var alpha_values:Array = [];
            var lines:Array = code.split("\n");
            if(lines.length > 1)
            {
                for(var i: uint = 0; i < lines.length - 1; i++) {
                    var t:Array = lines[i].split('=');

                    if(t.length > 1) {
                        var path:Array = StringUtil.trim(t[0]).split('.');                        
                        var alpha:Number = Number(t[1]);
                        
                        alpha_values.push([path, [0, alpha]]);
                    }
                }
                
                for(var j: Number = lines.length-1; j >= 0; j--) {
                    var t2: Number = lines[j].split('**').length;
                    if (t2 > 1) {
                        code = lines[j];
                        break;
                    }
                }
            }

            new Stage_MoveCheckClass();

            var split_idx: int = 0;
            var code_split:* = null;

            if(code.length > 3) {
                code_split = code.split("***");
                split_idx = code_split.length - 1;

                if (split_idx > 1) {
                    new Tab_StoryLoad(code_split, "IN");
                } else {
                    Tab_IEInOut.execute("IN", code, MenuClass._nowCharaNum);
                    new Tab_SetClass();
                }
            }

            var tm:Timer = new Timer(500, 1);
            tm.addEventListener("timer", function (e:TimerEvent) {
                lastHideShowStatus = getChildren(MenuClass.charaAdd[MenuClass._nowCharaNum], []);
                
                for (var i = 0; i < alpha_values.length; i++) {
                    lastHideShowStatus.push([alpha_values[i][0], getHSValueFromPath(MenuClass.charaAdd[MenuClass._nowCharaNum], alpha_values[i][0])]);
                }
                
                loadHideShowFromArray(MenuClass.charaAdd[MenuClass._nowCharaNum], alpha_values);
                lastTransforms = applyTransformMatrices(MenuClass.charaAdd[MenuClass._nowCharaNum], req.transforms);
                 
                MenuClass.systemData["CameraKaizoudo"]["_menu"] = 4;
                MenuClass.cameraMode = 1;
                MenuClass.ClickRock = false;
                
                new Stage_MoveCheckClass();

                for (var i=0; i < 9; i++) {
                    lastSelectVisibility[i] = MenuClass.charaAddDepth[i].charaSelect.visible;
                    MenuClass.charaAddDepth[i].charaSelect.visible = false;
                }
                
                var tm2:Timer = new Timer(25, 1);
                tm2.addEventListener("timer", function (e2:TimerEvent) {
                    Main.mainWindow.bg.visible = false;
                    var camera: Tab_CameraJpg = new Tab_CameraJpg();
                });
                tm2.start();
            });
            tm.start();
        }

        public function onProcessCodeComplete() : void {
            var t:Timer = new Timer(50, 1);
            
            Main.mainWindow.bg.visible = true;
            loadHideShowFromArray(MenuClass.charaAdd[MenuClass._nowCharaNum], lastHideShowStatus);
            restoreTransformMatrices(MenuClass.charaAdd[MenuClass._nowCharaNum], lastTransforms);

            for (var i=0; i < 9; i++) {
                MenuClass.charaAddDepth[i].charaSelect.visible = lastSelectVisibility[i];
            }
            
            t.addEventListener("timer", function (e:TimerEvent) {
                Main.processingCode = null;
            });
            
            t.start();
        }

        public static function getChildren(param1:Sprite, curPath:Array) : Array {
            var _loc2_:Boolean = false;
            var _loc4_:int = 0;
            var _loc3_:Boolean = false;
            var _loc7_:int = 0;
            var _loc6_:* = param1;
            
            var ret:Array = [[curPath, getSpriteHSValues(param1)]];

            for(var _loc5_: String in param1)
            {
                _loc2_ = false;
                _loc4_ = 0;
                while(_loc4_ < param1.numChildren)
                {
                    if(param1.getChildAt(_loc4_) == param1[_loc5_])
                    {
                        _loc2_ = true;
                        break;
                    }
                    _loc4_++;
                }
                if(_loc2_)
                {
                    var path: Array = [];
                    for(var i=0;i<curPath.length;i++) {
                        path.push(curPath[i]);
                    }
                    
                    path.push(_loc5_);
                    
                    var children:Array = getChildren(param1[_loc5_], path);
                    
                    for(var i: uint = 0; i < children.length; i++) {
                        ret.push(children[i]);
                    }
                }
            }
            
            return ret;
        }

        public static function getSpriteHSValues(cur: Sprite) : Array {
            var xfrm: ColorTransform = cur.transform.colorTransform;
            if (xfrm != null) {
                return [xfrm.alphaMultiplier, xfrm.alphaOffset];
            } else {
                return [1, 0];
            }
        }

        public static function getHSValueFromPath(chara:Sprite, path:Array) : Array {
            try
            {
                var cur:Sprite = chara;
                
                for(var i2: uint = 0; i2 < path.length; i2++) {
                    cur = cur[path[i2]];
                }
                
                var xfrm: ColorTransform = cur.transform.colorTransform;
                if (xfrm != null) {
                    return [xfrm.alphaMultiplier, xfrm.alphaOffset];
                } else {
                    return [1, 0];
                }
            }
            catch(myError:Error)
            {
                trace("Caught error in getHSValueFromPath: " + myError.getStackTrace());
                return [1, 0];
            }
            
            return [1, 0];
        }

        public static function applyTransformMatrices(chara:Sprite, transforms: Object) : Object {
            var originalXfrms = {};

            for (var path: String in transforms) {
                try {
                    var matxData = transforms[path];
                    var pathParts: Array = StringUtil.trim(path).split('.');
                    var applyMatx: Matrix = new Matrix(
                        matxData["a"], matxData["b"], matxData["c"], matxData["d"], matxData["tx"], matxData["ty"]
                    );

                    var cur: Sprite = chara;
                    
                    for(var i2: uint = 0; i2 < pathParts.length; i2++) {
                        if (cur.hasOwnProperty(pathParts[i2]) && cur[pathParts[i2]]) {
                            cur = cur[pathParts[i2]];
                        } else {
                            cur = null;
                            break;
                        }
                    }

                    if (cur == null) {
                        trace("applyTransformMatrices - Invalid matrix path: " + path);
                        continue;
                    } else {
                        originalXfrms[path] = cur.transform.matrix.clone();

                        var newMatx = cur.transform.matrix.clone();
                        newMatx.concat(applyMatx);
                        cur.transform.matrix = newMatx;
                    }

                }
                catch(myError:Error)
                {
                    trace("Caught error when loading matrix transforms for " + path + ": " + myError.getStackTrace());
                }
            }

            return originalXfrms;
        }

        public static function restoreTransformMatrices(chara:Sprite, transforms: Object) : void {
            for (var path: String in transforms) {
                try {
                    var pathParts: Array = StringUtil.trim(path).split('.');
                    var cur: Sprite = chara;
                    
                    for(var i2: uint = 0; i2 < pathParts.length; i2++) {
                        if (cur.hasOwnProperty(pathParts[i2]) && cur[pathParts[i2]]) {
                            cur = cur[pathParts[i2]];
                        } else {
                            cur = null;
                            break;
                        }
                    }

                    if (cur == null) {
                        trace("restoreTransformMatrices - Invalid matrix path: " + path);
                        continue;
                    }

                    cur.transform.matrix = transforms[path];
                }
                catch(myError:Error)
                {
                    trace("Caught error when restoring matrix transforms for " + path + ": " + myError.getStackTrace());
                }
            }
        }

        public static function loadHideShowFromArray(chara:Sprite, arr:Array) : void {
            for(var i=0;i<arr.length;i++) {
                try
                {
                    var path: Array = arr[i][0];
                    var alpha: Array = arr[i][1];
                    
                    var cur:Sprite = chara;
                    
                    for(var i2: uint = 0; i2 < path.length; i2++) {
                        cur = cur[path[i2]];
                    }
                    
                    var xfrm: ColorTransform = cur.transform.colorTransform;
                    if (xfrm == null) {
                        xfrm = new ColorTransform();
                    }

                    xfrm.alphaMultiplier = alpha[0];
                    xfrm.alphaOffset = alpha[1];

                    cur.transform.colorTransform = xfrm;
                }
                catch(myError:Error)
                {
                    trace("Caught error when loading hide-show info: " + myError.getStackTrace());
                }
            }
        }
    }
}