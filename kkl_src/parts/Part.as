package parts
{
    import flash.utils.ByteArray;
    import parameter.Dress_data;
    import parameter.Color_data;
    import menu.Chara_Class;
    import menu.Tab_ColorLinkCheck;

    public class Part {
        private var _dataPrefix: String;
        private var _dataSource: *;
        private var _character: int;
        private var _slot: int;
        private var _old: Boolean;
        private var _codePrefix: String;
        private static var tabNameRegex = /(FreeRibon|Ribon|HairEx)(Add0|\D*)(\d+)/;

        public function Part(dataPrefix: String, exportPrefix: String, character: int, slot: int, old: Boolean = false) {
            this._dataPrefix = dataPrefix;
            this._dataSource = dataSource;
            this._character = character;
            this._codePrefix = exportPrefix;
            this._old = old;
            this._slot = slot;

            if (slot < 0 || slot > 999) {
                throw new Error("Invalid slot index: " + slot);
            }
        }

        public static function tabNameToPart(tabName: String, charIdx: int = -1, old: Boolean = false) : Array {
            var result = tabNameRegex.exec(tabName);
            if (result) {
                var partType = result[1];
                var subKey = result[2];
                var slot = int(result[3]);

                if (partType == "Ribon") {
                    return [Ribbon.fromCharacter(charIdx, slot, old), subKey];
                } else if (partType == "FreeRibon") {
                    return [Ribbon.fromGlobal(slot, old), subKey];
                } else if (partType == "HairEx") {
                    return [Hairpiece.fromCharacter(charIdx, slot, old), subKey];
                }
            }
            
            return null;
        }

        public static function getCharaData(charIdx: int, tabName: String, old: Boolean = false) : Object {
            var part = tabNameToPart(tabName, charIdx, old);
            if (part) {
                return part[0].getDataObject(part[1]);
            } else if (old) {
                return MenuClass.charaOldData[charIdx][tabName];
            } else {
                return MenuClass.charaData[charIdx][tabName];
            }
        }

        public static function getDressData(charIdx: int, tabName: String) : Array {
            var part = tabNameToPart(tabName, charIdx);
            if (part) {
                return part[0].getAllDressData(part[1]);
            } else {
                return Dress_data.DressCharaData[charIdx][tabName];
            }
        }

        public static function getDefaultDressData(tabName: String) : Array {
            var result = tabNameRegex.exec(tabName);
            if (result) {
                var partType = result[1];
                var subKey = result[2];
                return Dress_data.DressData[partType + subKey];
            } else {
                return Dress_data.DressData[tabName];
            }
        }

        public function get defaults() : Object {
            return null;
        }

        public function get dressDefaults() : Object {
            return null;
        }

        public function get dressInit() : Object {
            return null;
        }

        public function get old() : Boolean {
            return this._old;
        }

        public function get character() : int {
            return this._character;
        }

        public function get isSystem() : Boolean {
            return this.character < 0 || this.character >= 9;
        }

        public function get dataSource() : Object {
            if (this.isSystem) {
                if (this.old) {
                    return MenuClass.systemOldData;
                } else {
                    return MenuClass.systemData;
                }
            } else {
                if (this.old) {
                    return MenuClass.charaOldData[this.character];
                } else {
                    return MenuClass.charaData[this.character];
                }
            }
        }

        public function get characterDressDataSource() : Object {
            if (this.isSystem) {
                return Dress_data.DressCharaData[0];
            } else {
                return Dress_data.DressCharaData[this.character];
            }
        }

        public function get customNumSource() : Object {
            if (this.isSystem) {
                return Dress_data.menuCustomNum[0];
            } else {
                return Dress_data.menuCustomNum[this.character];
            }
        }

        public function get spriteSource() : * {
            if (this.isSystem) {
                return Chara_Class.chara_m;
            } else {
                return MenuClass.charaAdd[this.character];
            }
        }

        public function get codePrefix() : String {
            return this._codePrefix;
        }

        public function get slot() : int {
            return this._slot;
        }

        public function get dataPrefix() : String {
            return this._dataPrefix;
        }

        public function ensureInitialized() : void {
            for (var key in this.defaults) {
                if (!key) {
                    key = "";
                }

                var fullKey = this.dataPrefix + key + this.slot;
                if (!this.dataSource[fullKey]) {
                    this.dataSource[fullKey] = clone(this.defaults[key]);
                }
            }

            for (var key in this.dressInit) {
                if (!key) {
                    key = "";
                }

                var fullKey = this.dataPrefix + key + this.slot;
                if (!this.characterDressDataSource[fullKey]) {
                    this.characterDressDataSource[fullKey] = clone(this.dressInit[key]);
                }
            }
        }

        public function clearData() : void {
            for (var key in this.defaults) {
                if (!key) {
                    key = "";
                }

                var fullKey = this.dataPrefix + key + this.slot;
                if (this.dataSource[fullKey]) {
                    delete this.dataSource[fullKey];
                }
            }

            for (var key in this.dressInit) {
                if (!key) {
                    key = "";
                }

                var fullKey = this.dataPrefix + key + this.slot;
                if (this.characterDressDataSource[fullKey]) {
                    delete this.characterDressDataSource[fullKey];
                }
            }

            delete this.dataSource[this.dataPrefix + "Plus"]["_visible"][this.slot];
        }

        public function getDataObject(key: String) : Object {
            if (!key) {
                key = "";
            }

            var fullKey = key + this.slot;
            if (key.substring(0, this.dataPrefix.length) == this.dataPrefix) {
                key = key.substring(this.dataPrefix.length);
            } else {
                fullKey = this.dataPrefix + fullKey;
            }
            
            if (!this.dataSource[fullKey]) {
                this.dataSource[fullKey] = clone(this.defaults[key]);
            }

            return this.dataSource[fullKey];
        }

        public function getData(key: String, prop: String) : * {
            return this.getDataObject(key)[prop];
        }

        public function setData(key: String, prop: String, value: *) : void {
            var obj = this.getDataObject(key);
            obj[prop] = value;
        }

        public function hasChanged() : Boolean {
            var otherSrc = null;
            if (this.isSystem) {
                if (this.old) {
                    otherSrc = MenuClass.systemData;
                } else {
                    otherSrc = MenuClass.systemOldData;
                }
            } else {
                if (this.old) {
                    otherSrc = MenuClass.charaData[this.character];
                } else {
                    otherSrc = MenuClass.charaOldData[this.character];
                }
            }

            if ((!!this.dataSource[this.dataPrefix + "Plus"]["_visible"][this.slot]) != (!!otherSrc[this.dataPrefix + "Plus"]["_visible"][this.slot])) {
                return true;
            }

            for (var key in this.defaults) {
                var fullKey = this.dataPrefix + key + this.slot;
                var thisData = this.dataSource[fullKey];
                var otherData = otherSrc[fullKey];

                if ((!!thisData) != (!!otherData)) {
                    return true;
                }

                for (var prop in this.defaults[key]) {
                    if (prop == "_color0" || prop == "_color1" || prop == "_color2") {
                        if (String(thisData[prop]) != String(otherData[prop])) {
                            return true;
                        }
                    } else {
                        if (thisData[prop] != otherData[prop]) {
                            return true;
                        }
                    }
                }
            }

            return false;
        }

        public function getAllDefaultDressData(key: String) : Array {
            if (!key) {
                key = "";
            }

            if (key.substring(0, this.dataPrefix.length) == this.dataPrefix) {
                key = key.substring(this.dataPrefix.length);
            }

            return this.dressDefaults[key];
        }

        public function getDefaultDressDataObject(key: String, menuNum: int) : Object {
            var arr = this.getAllDefaultDressData(key);
            if (arr.length == 1) {
                return arr[0];
            } else {
                return arr[menuNum];
            }
        }

        public function getDefaultDressData(key: String, menuNum: int, colorIdx: int) : Array {
            return this.getDefaultDressDataObject(key, menuNum)["_color" + colorIdx];
        }

        public function getDefaultColorData(key: String, menuNum: int, colorIdx: int) : Array {
            var color = this.getDefaultDressDataObject(key, menuNum)["_color" + colorIdx][0];
            return Color_data.ColorData[color];
        }

        public function getAllDressData(key: String) : Array {
            if (!key) {
                key = "";
            }

            var fullKey = key + this.slot;
            if (key.substring(0, this.dataPrefix.length) == this.dataPrefix) {
                key = key.substring(this.dataPrefix.length);
            } else {
                fullKey = this.dataPrefix + fullKey;
            }

            if (!this.characterDressDataSource[fullKey]) {
                this.characterDressDataSource[fullKey] = clone(this.dressInit[key]);
            }

            return this.characterDressDataSource[fullKey];
        }

        public function getDressDataObject(key: String, menuNum: int) : Object {
            var arr = this.getAllDressData(key);
            if (arr.length == 1) {
                return arr[0];
            } else {
                return arr[menuNum];
            }
        }

        public function getDressData(key: String, menuNum: int, colorIdx: int) : Array {
            return this.getDressDataObject(key, menuNum)["_color" + colorIdx];
        }

        public function get visible() : Boolean {
            return !!this.dataSource[this.dataPrefix + "Plus"]["_visible"][this.slot];
        }

        public function set visible(value: Boolean) : void {
            this.dataSource[this.dataPrefix + "Plus"]["_visible"][this.slot] = value;
        }

        public function removeSprites() : void {}

        public function serializeProperties(props: Array) : String {
            var ret: String = "";
            if (this.slot >= 99) {
                ret = "x" + this.codePrefix + this.slot + ".";
            } else if (this.slot >= 10) {
                ret = this.codePrefix + this.slot;
            } else {
                ret = this.codePrefix + "0" + this.slot;
            }

            for (var i = 0; i < props.length; i++) {
                if (props[i][1] == "_color0" || props[i][1] == "_color1" || props[i][1] == "_color2") {
                    ret += String(this.getData(props[i][0], props[i][1])[0]);
                } else {
                    ret += String(this.getData(props[i][0], props[i][1]));
                }

                if (i != (props.length - 1)) {
                    ret += ".";
                }
            }

            return ret;
        }

        public function deserializeProperties(props: Array, source: Array, sourceOffset: int, importType: String) : void {
            var prevMenu = {};
            this.ensureInitialized();

            for (var i = 0; i < props.length; i++) {
                var prop = props[i];
                var targetObj = this.getDataObject(prop[0]);
                var inputData = source[i + sourceOffset];

                if (("_menu" in targetObj) && !(prop[0] in prevMenu)) {
                    prevMenu[prop[0]] = targetObj["_menu"];
                }

                if (inputData) {
                    if (prop[1] == "_color0" || prop[1] == "_color1" || prop[1] == "_color2") {
                        if (importType != "allHairSet" || this.codePrefix == "m" || this.codePrefix == "r") {
                            var colorArray = targetObj[prop[1]];
                            var dressColorData = this.getDressDataObject(prop[0], targetObj["_menu"]);

                            if (inputData.length == 6) {
                                colorArray[0] = String(inputData);
                                try {
                                    dressColorData[prop[1]][0] = String(inputData);
                                } catch (err: Error) { };
                            } else {
                                colorArray[0] = int(inputData);
                                try {
                                    dressColorData[prop[1]][0] = int(inputData);
                                } catch (err: Error) { };
                            }

                            if (!this.isSystem) {
                                new Tab_ColorLinkCheck(this.character, this.dataPrefix + prop[0] + this.slot, "chara");
                            }
                        }
                    } else {
                        targetObj[prop[1]] = int(inputData);
                    }
                } else {
                    if (prop[1] == "_color0" || prop[1] == "_color1" || prop[1] == "_color2") {
                        continue;
                    } else if (prop[1] == "_menu") {
                        targetObj[prop[1]] = prevMenu[prop[0]];
                    } else {
                        targetObj[prop[1]] = clone(this.defaults[prop[0]][prop[1]]);
                    }
                }
            }

            this.visible = (source.length > sourceOffset) && !!source[sourceOffset];
        }

        protected static function clone(obj:Object) : * {
            var buf:ByteArray = new ByteArray();
            buf.writeObject(obj);
            buf.position = 0;
            return buf.readObject();
        }
    }
}