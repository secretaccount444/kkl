package undo {
    import menu.Tab_SetClass;
    import menu.SetClass;

    public class ClickAction extends UndoAction {
        private var character: int;
        private var slot;
        private var tabNames: Array;
        private var targetName: String;
        private var oldData: Object;
        private var newData: Object;

        public function ClickAction(character: int, tabNames, slot) {
            this.character = character;
            this.slot = slot;
            this.targetName = null;
            this.newData = {};

            if ((typeof tabNames) == "string") {
                this.tabNames = [tabNames];
            } else {
                this.tabNames = tabNames;
            }

            this.oldData = this.getAllTabData();
        }

        private function get charaData() : Object {
            return MenuClass.charaData[this.character];
        }

        private function getAllTabData() : Object {
            var ret = {};
            for (var i in this.tabNames) {
                var tabName = this.tabNames[i];
                ret[tabName] = this.getTabData(tabName);
            }
            return ret;
        }

        private function getTabData(tabName: String) : Object {
            var ret = {};

            if (tabName == "CharaLoad" || tabName == "HairEx" || tabName == "Belt" || tabName == "Mark" || tabName == "Ribon") {
                ret["visible"] = this.charaData[tabName + "Plus"]["_visible"][this.slot];
                if ("_reversal2" in this.charaData[tabName + this.slot]) {
                    ret["_reversal2"] = this.charaData[tabName + this.slot]["_reversal2"];
                }
            } else if (tabName == "FaceOption" || tabName == "EmotionOption") {
                ret["visible"] = this.charaData[tabName]["_visible"][this.slot];
            } else if (tabName == "EyeOption") {
                ret["visible"] = this.charaData["EyeOption"]["_visible"].slice();
                trace("ClickAction: sliced EyeOption");
            } else if (this.charaData[tabName] && this.charaData[tabName]["_visible"]) {
                ret["visible"] = this.charaData[tabName]["_visible"][0];
            }

            switch (tabName) {
            case "HeartPlus":
                ret["_meter"] = this.charaData["HeartPlus"]["_meter"];
                break;
            case "SideBurnLeft":
            case "SideBurnRight":
                ret["_depth"] = this.charaData[tabName]["_depth"];
                break;
            case "s":
                ret["_sClick"] = this.charaData["s"]["_sClick"];
                ret["_hidaPlay"] = this.charaData["s"]["_hidaPlay"];
                break;
            case "Hane":
                ret["_posi0"] = this.charaData["Hane"]["_posi0"];
                ret["_posi1"] = this.charaData["Hane"]["_posi1"];
                break;
            case "Tail":
                ret["_posi0"] = this.charaData["Tail"]["_posi0"];
                break;
            case "Tin":
                ret["_tClick"] = this.charaData["Tin"]["_tClick"];
                break;
            default:
                break;
            }

            if (this.charaData[tabName]) {
                for (var i = 0; i <= 2; i++) {
                    var prop = "_g" + i;
                    if (prop in this.charaData[tabName]) {
                        ret[prop] = this.charaData[tabName][prop];
                    }
                }
            }

            return ret;
        }

        private function applyTabData(tabName: String, src: Object) : void {
            for (var prop in src) {
                if (prop == "visible") {
                    if (tabName == "CharaLoad" || tabName == "HairEx" || tabName == "Belt" || tabName == "Mark" || tabName == "Ribon") {
                        this.charaData[tabName + "Plus"]["_visible"][this.slot] = src[prop];
                    } else if (tabName == "FaceOption" || tabName == "EmotionOption") {
                        this.charaData[tabName]["_visible"][this.slot] = src[prop];
                    } else if (tabName == "EyeOption") {
                        this.charaData["EyeOption"]["_visible"] = src[prop].slice();
                    } else if (this.charaData[tabName]["_visible"]) {
                        this.charaData[tabName]["_visible"][0] = src[prop];
                    }
                } else if (prop == "_reversal2") {
                    this.charaData[tabName + this.slot][prop] = src[prop];
                } else {
                    this.charaData[tabName][prop] = src[prop];
                }
            }
        }

        public function recordNewData(newTargetName: String) : void {
            this.newData = this.getAllTabData();
            this.targetName = newTargetName;
        }

        private function applyAllData(src: Object) : void {
            var appliedMimi = false;
            var appliedHat = false;

            for (var i in this.tabNames) {
                var tabName = this.tabNames[i];
                if (src[tabName]) {
                    this.applyTabData(tabName, src[tabName]);
                    if (tabName == "Mimi") {
                        appliedMimi = true;
                    } else if (tabName == "Hat") {
                        appliedHat = true;
                    }
                }
            }

            if (appliedHat) {
                new SetClass(this.character, "Hat", "huku");
            }

            if (appliedMimi) {
                new SetClass(this.character, "Mimi", "huku");
            }

            new Tab_SetClass();

            if (this.targetName) {
                try {
                    new SetClass(this.character, this.targetName, "huku");
                } catch (err) {}
            }
            
            if(this.charaData["HeartPlus"]["_meter"] <= 0) {
               this.charaData["HeartPlus"]["_meter"] = 0;
            }
        }

        public function anyChanged() : Boolean {
            for (var i in this.tabNames) {
                var tabName = this.tabNames[i];
                if (this.oldData[tabName] && this.newData[tabName]) {
                    for (var prop in this.oldData[tabName]) {
                        if (this.oldData[tabName][prop] != this.newData[tabName][prop]) {
                            return true;
                        }
                    }

                    for (var prop in this.newData[tabName]) {
                        if (this.oldData[tabName][prop] != this.newData[tabName][prop]) {
                            return true;
                        }
                    }
                } else if (
                    (this.oldData[tabName] && !this.newData[tabName]) ||
                    (!this.oldData[tabName] && this.newData[tabName])
                ) {
                    return true;
                }
            }

            return false;
        }

        override public function undo() {
            this.applyAllData(this.oldData);
        }

        override public function redo() {
            this.applyAllData(this.newData);
        }

        override public function toString(): String {
            var ret = "ClickAction[character " + this.character + ":";

            var first = true;
            for (var i in this.tabNames) {
                if (!first) {
                    ret += "/";
                }

                ret += this.tabNames[i];
                first = false;
            }
            
            ret += ":" + this.slot + ":" + this.targetName + "]";

            return ret;
        }
    }
}