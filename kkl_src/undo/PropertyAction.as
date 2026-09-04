package undo {
    import menu.SetClass;
    import menu.Tab_SetClass;

    public class PropertyAction extends UndoAction {
        protected var headerName:String;
        protected var targetJ:int;
        protected var isCharacter:Boolean;
        protected var hasSlots:Boolean;
        protected var propName:String;
        protected var setClassAction:String;
        protected var forceVisible:Boolean;
        protected var oldData:*;
        protected var oldVisibility:*;
        protected var newData:*;

        public function PropertyAction(headerName:String, targetJ:int, propName:String, isCharacter: Boolean, hasSlots: Boolean, setClassAction: String = "tab", forceVisible: Boolean = false) {
            super();

            this.headerName = headerName;
            this.targetJ = targetJ;
            this.propName = propName;
            this.isCharacter = isCharacter;
            this.hasSlots = hasSlots;
            this.setClassAction = setClassAction;
            this.forceVisible = forceVisible;
            this.oldData = {};
            this.newData = {};
            this.oldVisibility = null;
        }

        public function get tabName() : String {
            return MenuClass.tabData[this.headerName][this.targetJ][0];
        }

        protected function getPropValue(character:int = 0, slot:int = 0) {
            var dataKey = this.tabName;
            if (this.hasSlots) {
                dataKey = dataKey + slot;
            }

            if (this.isCharacter) {
                return MenuClass.charaData[character][dataKey][this.propName];
            } else {
                return MenuClass.systemData[dataKey][this.propName];
            }
        }

        protected function setPropValue(value: *, character:int = 0, slot:int = 0) {
            var dataKey = this.tabName;
            if (this.hasSlots) {
                dataKey = dataKey + slot;
            }

            if (this.isCharacter) {
                MenuClass.charaData[character][dataKey][this.propName] = value;
            } else {
                MenuClass.systemData[dataKey][this.propName] = value;
            }
        }

        protected function recordPreviousVisibility(character:int, slot:int = 0) {
            var dataKey = this.tabName;
            if (this.hasSlots) {
                dataKey = dataKey + slot;
            }

            if (
                this.isCharacter &&
                MenuClass.charaData[character][dataKey]["_visible"] &&
                MenuClass.charaData[character][dataKey]["_visible"].length == 1
            ) {
                if (!this.oldVisibility) {
                    this.oldVisibility = {};
                }

                if (this.hasSlots) {
                    if (!this.oldVisibility[character]) {
                        this.oldVisibility[character] = {};
                    }

                    this.oldVisibility[character][slot] = MenuClass.charaData[character][dataKey]["_visible"][0];
                } else {
                    this.oldVisibility[character] = MenuClass.charaData[character][dataKey]["_visible"][0];
                }
            } else if (
                !this.isCharacter &&
                MenuClass.systemData[dataKey]["_visible"] &&
                MenuClass.systemData[dataKey]["_visible"].length == 1
            ) {
                if (this.hasSlots) {
                    if (!this.oldVisibility) {
                        this.oldVisibility = {};
                    }

                    this.oldVisibility[slot] = MenuClass.systemData[dataKey]["_visible"][0];
                } else {
                    this.oldVisibility = MenuClass.systemData[dataKey]["_visible"][0];
                }
            }
        }

        protected function applySingleVisibility(restore:Boolean, character:int, slot:int = 0) {
            var dataKey = this.tabName;
            if (this.hasSlots) {
                dataKey = dataKey + slot;
            }

            if (
                this.isCharacter &&
                MenuClass.charaData[character][dataKey]["_visible"] &&
                MenuClass.charaData[character][dataKey]["_visible"].length == 1
            ) {
                if (restore) {
                    if (this.oldVisibility) {
                        if (this.hasSlots) {
                            if (this.oldVisibility[character]) {
                                MenuClass.charaData[character][dataKey]["_visible"][0] = this.oldVisibility[character][slot];
                            }
                        } else {
                            MenuClass.charaData[character][dataKey]["_visible"][0] = this.oldVisibility[character];
                        }
                    }
                } else {
                    MenuClass.charaData[character][dataKey]["_visible"][0] = true;
                }
            } else if (
                !this.isCharacter &&
                MenuClass.systemData[dataKey]["_visible"] &&
                MenuClass.systemData[dataKey]["_visible"].length == 1
            ) {
                if (restore) {
                    if (this.hasSlots) {
                        if (this.oldVisibility) {
                            MenuClass.systemData[dataKey]["_visible"][0] = this.oldVisibility[slot];
                        }
                    } else {
                        MenuClass.systemData[dataKey]["_visible"][0] = this.oldVisibility;
                    }
                } else {
                    MenuClass.systemData[dataKey]["_visible"][0] = true;
                }
            }
        }

        protected function recordSystemValue(value:*, isNew: Boolean, slot:int = 0) {
            if (this.hasSlots) {
                /* global slotted object */
                if (isNew) {
                    this.newData[slot] = value;
                } else {
                    this.oldData[slot] = value;
                }
            }
            else {
                /* global setting */
                if (isNew) {
                    this.newData = value;
                } else {
                    this.oldData = value;
                }
            }
        }

        protected function recordCharacterValue(value:*, isNew: Boolean, character:int, slot:int = 0) {
            var dest = this.oldData;
            if (isNew) {
                dest = this.newData;
            }

            if (this.hasSlots) {
                if (!dest[character]) {
                    dest[character] = {};
                }

                dest[character][slot] = value;
            } else {
                dest[character] = value;
            }
        }

        public function recordPreviousValue(slot:int = 0) {
            var dataKey = this.tabName;
            if (this.hasSlots) {
                dataKey = dataKey + slot;
            }
            
            if (this.isCharacter) {
                if (MenuClass._nowTargetMode == "All") {
                    for (var i:int = 0; i <= MenuClass._characterNum; i++) {
                        this.recordCharacterValue(this.getPropValue(i, slot), false, i, slot);
                        if (this.forceVisible) {
                            this.recordPreviousVisibility(i, slot);
                        }
                    }
                }
                else if (MenuClass._nowTargetMode == "SelectPlus") {
                    for (var i:int = 0; i <= MenuClass._characterNum; i++) {
                        if (MenuClass._nowSelectChara[i]) {
                            this.recordCharacterValue(this.getPropValue(i, slot), false, i, slot);
                            if (this.forceVisible) {
                                this.recordPreviousVisibility(i, slot);
                            }
                        }
                    }
                }
                else {
                    this.recordCharacterValue(this.getPropValue(MenuClass._nowCharaNum, slot), false, MenuClass._nowCharaNum, slot);
                    if (this.forceVisible) {
                        this.recordPreviousVisibility(MenuClass._nowCharaNum, slot);
                    }
                }
            } else {
                this.recordSystemValue(this.getPropValue(0, slot), false, slot);
                if (this.forceVisible) {
                    this.recordPreviousVisibility(0, slot);
                }
            }
        }

        public function recordNewValue(value:*, slot:int = 0) {
            if (this.isCharacter) {
                if (MenuClass._nowTargetMode == "All") {
                    for (var i:int = 0; i <= MenuClass._characterNum; i++) {
                        this.recordCharacterValue(value, true, i, slot);
                    }
                }
                else if (MenuClass._nowTargetMode == "SelectPlus") {
                    for (var i:int = 0; i <= MenuClass._characterNum; i++) {
                        if (MenuClass._nowSelectChara[i]) {
                            this.recordCharacterValue(value, true, i, slot);
                        }
                    }
                }
                else {
                    this.recordCharacterValue(value, true, MenuClass._nowCharaNum, slot);
                }
            } else {
                this.recordSystemValue(value, true, slot);
            }
        }

        protected function applyValues(src:*) {
            var dataTarget = MenuClass.tabData[this.headerName][this.targetJ][2]["_data"];

            if (this.isCharacter) {
                for (var charNum:int in src) {
                    if (this.hasSlots) {
                        for (var slotNum:int in src[charNum]) {
                            this.setPropValue(src[charNum][slotNum], charNum, slotNum);
                            if (MenuClass.systemData[dataTarget]) {
                                MenuClass.systemData[dataTarget]["_menu"] = slotNum;
                                new SetClass(charNum, this.tabName, this.setClassAction);
                            }
                        }

                        if (!MenuClass.systemData[dataTarget]) {
                            new SetClass(charNum, this.tabName, this.setClassAction);
                        }
                    }
                    else {
                        this.setPropValue(src[charNum], charNum);
                        new SetClass(charNum, this.tabName, this.setClassAction);
                    }
                }
            }
            else {
                if (this.hasSlots) {
                    for (var slotNum:int in src) {
                        this.setPropValue(src[slotNum], 0, slotNum);
                        if (MenuClass.systemData[dataTarget]) {
                            MenuClass.systemData[dataTarget]["_menu"] = slotNum;
                            new SetClass(MenuClass._nowCharaNum, this.tabName, this.setClassAction);
                        }
                    }

                    if (!MenuClass.systemData[dataTarget]) {
                        new SetClass(MenuClass._nowCharaNum, this.tabName, this.setClassAction);
                    }
                }
                else {
                    this.setPropValue(src);
                    new SetClass(MenuClass._nowCharaNum, this.tabName, this.setClassAction);
                }
            }

            new Tab_SetClass();
        }

        protected function applyVisibility(restore:Boolean) {
            var src = this.newData;
            if (restore) {
                src = this.oldData;
            }

            if (this.isCharacter) {
                for (var charNum:int in src) {
                    if (this.hasSlots) {
                        for (var slotNum:int in src[charNum]) {
                            this.applySingleVisibility(restore, charNum, slotNum);
                        }
                    } else {
                        this.applySingleVisibility(restore, charNum, 0);
                    }
                }
            } else {
                if (this.hasSlots) {
                    for (var slotNum:int in src) {
                        this.applySingleVisibility(restore, 0, slotNum);
                    }
                } else {
                    this.applySingleVisibility(restore, 0, 0);
                }
            }
        }

        override public function undo() {
            if (this.forceVisible) {
                this.applyVisibility(true);
            }
            this.applyValues(this.oldData);
        }

        override public function redo() {
            if (this.forceVisible) {
                this.applyVisibility(false);
            }
            this.applyValues(this.newData);
        }

        override public function toString(): String {
            var tabName = MenuClass.tabData[this.headerName][this.targetJ][0];
            var ret = "PropertyAction[" + tabName + ":" + this.propName;

            if (this.isCharacter) {
                var n = 0;
                for (var idx in this.oldData) {
                    n += 1;
                }

                if (n == 1) {
                    for (var idx in this.oldData) {
                        ret += ", character " + idx;
                        break;
                    }
                } else if (n > 1) {
                    var first = true;
                    for (var idx in this.oldData) {
                        if (first) {
                            ret += ", characters " + idx;
                            first = false;
                        } else {
                            ret += ", " + idx;
                        }
                    }
                }
            }

            if (this.forceVisible) {
                ret += ", forced visibility";
            }

            ret += "]";
            return ret;
        }
    }
}