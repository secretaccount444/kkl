package undo {
    import menu.Tab_MenuColorIn;
    import menu.Tab_SetClass;
    import menu.SetClass;
    import parameter.Dress_data;

    public class SetMenuAction extends PropertyAction {
        private var isCharacterSelect: Boolean = false;

        public function SetMenuAction(headerName:String, targetJ:int, forceVisible: Boolean) {
            var menuType:String = MenuClass.tabData[headerName][targetJ][2]["_menu"];

            super(
                headerName, targetJ, "_menu",
                (menuType  == "charaPlus" || menuType == "chara"),
                (menuType  == "charaPlus" || menuType == "systemPlus"),
                "menu", forceVisible
            );

            this.isCharacterSelect = menuType == "SelectCharacter";
        }

        private function get hasMenuCustomNum() : Boolean {
            if (Dress_data.menuCustom[this.tabName]) {
                return Dress_data.menuCustom[this.tabName][0] >= 0;
            } else {
                return false;
            }
        }

        override protected function getPropValue(character:int = 0, slot:int = 0) {
            var dataKey = this.tabName;
            if (this.hasSlots) {
                dataKey = dataKey + slot;
            }

            if (this.hasMenuCustomNum) {
                if (this.isCharacter) {
                    return Dress_data.menuCustomNum[character][this.tabName];
                } else {
                    return Dress_data.menuCustomNum[0][this.tabName];
                }
            } else {
                if (this.isCharacter) {
                    return MenuClass.charaData[character][dataKey]["_menu"];
                } else {
                    return MenuClass.systemData[dataKey]["_menu"];
                }
            }
        }

        override protected function setPropValue(value: *, character:int = 0, slot:int = 0) {
            var dataKey = this.tabName;
            if (this.hasSlots) {
                dataKey = dataKey + slot;
            }

            if (this.hasMenuCustomNum) {
                if (this.isCharacter) {
                    Dress_data.menuCustomNum[character][this.tabName] = value;
                    MenuClass.charaData[character][dataKey]["_menu"] = Dress_data.menuCustom[this.tabName][Dress_data.menuCustomNum[character][this.tabName]];
                } else {
                    Dress_data.menuCustomNum[0][this.tabName] = value;
                    MenuClass.systemData[dataKey]["_menu"] = Dress_data.menuCustom[this.tabName][Dress_data.menuCustomNum[0][this.tabName]];
                }
            } else {
                if (this.isCharacter) {
                    MenuClass.charaData[character][dataKey]["_menu"] = value;
                } else {
                    MenuClass.systemData[dataKey]["_menu"] = value;
                }
            }
        }

        override protected function applyValues(src:*) {
            if (this.isCharacter) {
                for (var charNum:int in src) {
                    if (this.hasSlots) {
                        for (var slotNum:int in src[charNum]) {
                            this.setPropValue(src[charNum][slotNum], charNum, slotNum);
                            new Tab_MenuColorIn(this.headerName, this.targetJ, this.tabName + slotNum, charNum);
                        }
                    }
                    else {
                        this.setPropValue(src[charNum], charNum);
                        new Tab_MenuColorIn(this.headerName, this.targetJ, this.tabName, charNum);
                    }

                    new SetClass(charNum, this.tabName, "menu");
                }
            }
            else {
                if (this.hasSlots) {
                    for (var slotNum:int in src) {
                        this.setPropValue(src[slotNum], 0, slotNum);
                        new Tab_MenuColorIn(this.headerName, this.targetJ, this.tabName + slotNum, 0);
                    }
                }
                else {
                    this.setPropValue(src);
                    new Tab_MenuColorIn(this.headerName, this.targetJ, this.tabName, 0);
                }

                new SetClass(MenuClass._nowCharaNum, this.tabName, "menu");
            }

            new Tab_SetClass();
        }
    
        override public function toString(): String {
            var tabName = MenuClass.tabData[this.headerName][this.targetJ][0];
            var ret = "SetMenuAction[" + tabName;

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