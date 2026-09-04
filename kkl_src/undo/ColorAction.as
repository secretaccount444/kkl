package undo {
    import menu.Tab_ColorBtnSet2;
    import parameter.Dress_data;

    public class ColorAction extends PropertyAction {
        public function ColorAction(headerName:String, targetJ:int) {
            var menuType:String = MenuClass.tabData[headerName][targetJ][2]["_color"];

            super(
                headerName, targetJ, "_color",
                (menuType  == "charaPlus" || menuType == "chara"),
                (menuType  == "charaPlus" || menuType == "systemPlus")
            );
        }

        override protected function getPropValue(character:int = 0, slot:int = 0) {
            var dataKey = this.tabName;
            if (this.hasSlots) {
                dataKey = dataKey + slot;
            }

            if (this.isCharacter) {
                var menuNum = 0;
                try {
                    if (MenuClass.charaData[character][dataKey]["_visible"].length > 1) {
                        menuNum = MenuClass.charaData[character][dataKey]["_menu"];
                    }
                } catch (err) {}

                var ret = [];
                for (var i=0; i <= 2; i++) {
                    if (MenuClass.charaData[character][dataKey]["_color" + i]) {
                        ret.push(MenuClass.charaData[character][dataKey]["_color" + i][menuNum]);
                    } else {
                        ret.push(null);
                    }
                }

                return {"colors": ret, "menuNum": menuNum};
            } else {
                var menuNum = 0;
                try {
                    if (MenuClass.systemData[dataKey]["_visible"].length > 1) {
                        menuNum = MenuClass.systemData[dataKey]["_menu"];
                    }
                } catch (err) {}

                
                var ret = [];
                for (var i=0; i <= 2; i++) {
                    if (MenuClass.systemData[dataKey]["_color" + i]) {
                        ret.push(MenuClass.systemData[dataKey]["_color" + i][menuNum]);
                    } else {
                        ret.push(null);
                    }
                }

                return {"colors": ret, "menuNum": menuNum};
            }
        }

        override protected function setPropValue(value: *, character:int = 0, slot:int = 0) {
            var menuNum = value["menuNum"];
            var colors = value["colors"];
            var dataKey = this.tabName;
            if (this.hasSlots) {
                dataKey = dataKey + slot;
            }

            if (this.isCharacter) {
                var dressCharaDataIdx = MenuClass.colorMenuNum;
                if (
                    (MenuClass._nowTargetMode == "All" && this.isCharacter) ||
                    (MenuClass._nowTargetMode == "SelectPlus")
                ) {
                    dressCharaDataIdx = Tab_ColorBtnSet2.anotherMenuNum;
                }

                for (var i=0; i <= 2; i++) {
                    if (colors[i]) {
                        MenuClass.charaData[character][dataKey]["_color" + i][menuNum] = colors[i];
                        if (
                            Dress_data.DressCharaData[character][dataKey] && 
                            Dress_data.DressCharaData[character][dataKey][dressCharaDataIdx] &&
                            Dress_data.DressCharaData[character][dataKey][dressCharaDataIdx]["_color" + i]
                        ) {
                            Dress_data.DressCharaData[character][dataKey][dressCharaDataIdx]["_color" + i][0] = colors[i];
                        }
                    }
                }
            } else {
                for (var i=0; i <= 2; i++) {
                    if (colors[i]) {
                        MenuClass.systemData[dataKey]["_color" + i][menuNum] = colors[i];
                        Dress_data.DressCharaData[0][dataKey][MenuClass.colorMenuNum]["_color" + i][0] = colors[i];
                    }
                }
            }
        }

        public function recordNewValuesFromCurrent(character:int=0, slot: int=0) {
            var vals = this.getPropValue(character, slot);
            this.recordNewValue(vals, slot);
        }
    
        override public function toString(): String {
            var tabName = MenuClass.tabData[this.headerName][this.targetJ][0];
            var ret = "ColorAction[" + tabName;

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