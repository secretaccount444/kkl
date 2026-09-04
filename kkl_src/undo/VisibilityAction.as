package undo {
    import menu.Chara_SelectClass;
    import menu.SetClass;
    import menu.Tab_SetClass;

    public class VisibilityAction extends PropertyAction {
        private var slotIndexedVisibility:Boolean;

        public function VisibilityAction(headerName:String, targetJ:int, hasSlots:Boolean, slotIndexedVisibility:Boolean) {
            var visType = MenuClass.tabData[headerName][targetJ][2]["_visible"];
            var isCharacter = visType == "chara" || visType == "charaPlus" || visType == "SelectCharacter";
            super(headerName, targetJ, "_visible", isCharacter, hasSlots);

            this.slotIndexedVisibility = slotIndexedVisibility;
        }

        override protected function getPropValue(character:int = 0, slot:int = 0) {
            if (this.isCharacter) {
                if (this.hasSlots) {
                    if (this.slotIndexedVisibility) {
                        return MenuClass.charaData[character][this.tabName]["_visible"][slot];
                    } else {
                        return MenuClass.charaData[character][this.tabName + slot]["_visible"][0];
                    }
                } else {
                    return MenuClass.charaData[character][this.tabName]["_visible"][0];
                }
            } else {
                if (this.hasSlots) {
                    if (this.slotIndexedVisibility) {
                        return MenuClass.systemData[this.tabName]["_visible"][slot];
                    } else {
                        return MenuClass.systemData[this.tabName + slot]["_visible"][0];
                    }
                } else {
                    return MenuClass.systemData[this.tabName]["_visible"][0];
                }
            }
        }

        override protected function setPropValue(value: *, character:int = 0, slot:int = 0) {
            if (this.isCharacter) {
                if (this.hasSlots) {
                    if (this.slotIndexedVisibility) {
                        MenuClass.charaData[character][this.tabName]["_visible"][slot] = value;
                    } else {
                        MenuClass.charaData[character][this.tabName + slot]["_visible"][0] = value;
                    }
                } else {
                    MenuClass.charaData[character][this.tabName]["_visible"][0] = value;
                }
            } else {
                if (this.hasSlots) {
                    if (this.slotIndexedVisibility) {
                        MenuClass.systemData[this.tabName]["_visible"][slot] = value;
                    } else {
                        MenuClass.systemData[this.tabName + slot]["_visible"][0] = value;
                    }
                } else {
                    MenuClass.systemData[this.tabName]["_visible"][0] = value;
                }
            }
        }

        override protected function applyValues(src:*) {
            if (this.tabName == "SelectCharacter") {
                for (var charNum:int in src) {
                    this.setPropValue(src[charNum], charNum);
                    new SetClass(charNum, "SelectCharacter_visible", "tab");
                }
                new Chara_SelectClass("open");
                new Tab_SetClass();
            } else {
                super.applyValues(src);
            }
        }

        override public function toString(): String {
            var tabName = MenuClass.tabData[this.headerName][this.targetJ][0];
            var ret = "VisibilityAction[" + tabName;

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

            ret += "]";
            return ret;
        }
    }
}