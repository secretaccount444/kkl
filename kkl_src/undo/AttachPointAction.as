package undo {
    import menu.Tab_SetClass;
    import menu.SetClass;
    import menu.Tab_FileDepth;
    import menu.Tab_FileDepth2;
    import menu.Huku_RibonSet;
    import menu.Huku_MarkSet;
    import menu.Hair_HairExSet;
    import menu.Add_LoadURL2;

    public class AttachPointAction extends UndoAction {
        private var headerName: String;
        private var slot: int;
        private var oldVal;
        private var newVal: Number;

        public function AttachPointAction(headerName:String, slot: int, curCharacter: int, newVal: int) {
            this.headerName = headerName;
            this.slot = slot;
            this.newVal = newVal;

            switch (headerName) {
            case "Loadmenu":
                this.oldVal = MenuClass.systemData["LoadAdd" + slot]["_add0"];
                break;
            case "txt":
                this.oldVal = MenuClass.systemData["txtFieldAdd" + slot]["_add0"];
                break;
            case "CharaLoad":
                this.oldVal = {};
                this.oldVal[curCharacter] = MenuClass.charaData[curCharacter]["CharaLoadAdd" + slot]["_add0"];
                break;
            case "Ribon":
                this.oldVal = {};
                if (MenuClass._nowTargetMode == "All" || MenuClass._nowTargetMode == "SelectPlus") {
                    for (var i = 0; i <= MenuClass._characterNum; i++) {
                        if (
                            MenuClass.charaData[i]["SelectCharacter"]["_visible"][0] &&
                            (MenuClass._nowTargetMode == "All" || MenuClass._nowSelectChara[i])
                        ) {
                            this.oldVal[i] = MenuClass.charaData[i]["RibonAdd" + slot]["_add0"];
                        }
                    }
                } else {
                    this.oldVal[curCharacter] = MenuClass.charaData[curCharacter]["RibonAdd" + slot]["_add0"];
                }
                break;
            case "HairEx":
                this.oldVal = {};
                if (MenuClass._nowTargetMode == "All" || MenuClass._nowTargetMode == "SelectPlus") {
                    for (var i = 0; i <= MenuClass._characterNum; i++) {
                        if (
                            MenuClass.charaData[i]["SelectCharacter"]["_visible"][0] &&
                            (MenuClass._nowTargetMode == "All" || MenuClass._nowSelectChara[i])
                        ) {
                            this.oldVal[i] = MenuClass.charaData[i]["HairExAdd" + slot]["_add0"];
                        }
                    }
                } else {
                    this.oldVal[curCharacter] = MenuClass.charaData[curCharacter]["HairExAdd" + slot]["_add0"];
                }
                break;
            case "Mark":
                this.oldVal = {};
                if (MenuClass._nowTargetMode == "All" || MenuClass._nowTargetMode == "SelectPlus") {
                    for (var i = 0; i <= MenuClass._characterNum; i++) {
                        if (
                            MenuClass.charaData[i]["SelectCharacter"]["_visible"][0] &&
                            (MenuClass._nowTargetMode == "All" || MenuClass._nowSelectChara[i])
                        ) {
                            this.oldVal[i] = MenuClass.charaData[i]["MarkAdd" + slot]["_add0"];
                        }
                    }
                } else {
                    this.oldVal[curCharacter] = MenuClass.charaData[curCharacter]["MarkAdd" + slot]["_add0"];
                }
                break;
            }
        }

        private function get isSystem() : Boolean {
            return this.headerName == "Loadmenu" || this.headerName == "txt";
        }

        private function applyAttachPointValue(val: int, character: int) {
            switch (this.headerName) {
            case "Loadmenu":
                MenuClass.systemData["LoadAdd" + this.slot]["_add0"] = val;
                new SetClass(this.slot, "LoadAdd", "menu");
                new Tab_FileDepth(this.slot);
                new SetClass(this.slot, "LoadAlpha", "menu");
                new SetClass(this.slot, "LoadScaleB", "menu");
                new SetClass(this.slot, "LoadSize", "menu");
                new SetClass(this.slot, "LoadSwfColor", "menu");
                break;
            case "txt":
                MenuClass.systemData["txtFieldAdd" + this.slot]["_add0"] = val;
                new SetClass(this.slot, "txtFieldAdd", "menu");
                break;
            case "CharaLoad":
                MenuClass.charaData[character]["CharaLoadAdd" + this.slot]["_add0"] = val;
                new Add_LoadURL2("CharaLoadAdd", character, this.slot, "menu");
                new Tab_FileDepth2(this.slot, character);
                new Add_LoadURL2("CharaLoadAlpha", character, this.slot, "menu");
                new Add_LoadURL2("CharaLoadScaleB", character, this.slot, "menu");
                new Add_LoadURL2("CharaLoadSwfColor", character, this.slot, "menu");
                break;
            case "Ribon":
                MenuClass.charaData[character]["RibonAdd" + this.slot]["_add0"] = val;
                Huku_RibonSet.deleteFc(character, slot, 0);
                Huku_RibonSet.deleteFc(character, slot, 1);
                Huku_RibonSet.setFc(character, slot, "random");
                break;
            case "HairEx":
                MenuClass.charaData[character]["HairExAdd" + this.slot]["_add0"] = val;
                Hair_HairExSet.deleteFc(character, slot, 0);
                Hair_HairExSet.deleteFc(character, slot, 1);
                Hair_HairExSet.setFc(character, slot, "move");
            case "Mark":
                MenuClass.charaData[character]["MarkAdd" + this.slot]["_add0"] = val;
                Huku_MarkSet.deleteFc(character, slot, 0);
                Huku_MarkSet.deleteFc(character, slot, 1);
                new Huku_MarkSet(character, slot, "tab");
                break;
            }
        }

        override public function undo() {
            if (this.isSystem) {
                this.applyAttachPointValue(this.oldVal, 0);
            } else {
                for (var character in this.oldVal) {
                    this.applyAttachPointValue(this.oldVal[character], character);
                }
            }

            new Tab_SetClass();
        }

        override public function redo() {
            if (this.isSystem) {
                this.applyAttachPointValue(this.newVal, 0);
            } else {
                for (var character in this.oldVal) {
                    this.applyAttachPointValue(newVal, character);
                }
            }

            new Tab_SetClass();
        }

        override public function toString(): String {
            var ret = "AttachPointAction[" + this.headerName + ":" + this.slot;

            if (!this.isSystem) {
                var n = 0;
                for (var idx in this.oldVal) {
                    n += 1;
                }

                if (n == 1) {
                    for (var idx in this.oldVal) {
                        ret += ", character " + idx;
                        break;
                    }
                } else if (n > 1) {
                    var first = true;
                    for (var idx in this.oldVal) {
                        if (first) {
                            ret += ", characters " + idx;
                            first = false;
                        } else {
                            ret += ", " + idx;
                        }
                    }
                }
            }

            ret += "]";
            return ret;
        }
    }
}