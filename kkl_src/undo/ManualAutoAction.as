package undo {
    import menu.Tab_SetClass;
    import menu.SetClass;

    public class ManualAutoAction extends UndoAction {
        private var headerName: String;
        private var tabName: String;
        private var prevData: Object;
        private var newToggleState: Boolean;

        public function ManualAutoAction(headerName: String, tabName: String, newState: Boolean) {
            super();
            
            this.headerName = headerName;
            this.tabName = tabName;
            this.prevData = {};
            this.newToggleState = newState;

            if (MenuClass._nowTargetMode == "All" || MenuClass._nowTargetMode == "SelectPlus") {
                for (var i = 0; i <= MenuClass._characterNum; i++) {
                    if (MenuClass._nowTargetMode == "All" || MenuClass._nowSelectChara[i]) {
                        this.prevData[i] = {
                            "state": MenuClass.charaData[i][tabName]["_check"],
                            "data": this.getPrevData(i)
                        };
                    }
                }
            } else {
                this.prevData[MenuClass._nowCharaNum] = {
                    "state": MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_check"],
                    "data": this.getPrevData(MenuClass._nowCharaNum)
                };
            }
        }

        private function getPrevData(character: int) : Object {
            if (this.headerName == "Hand" && this.tabName == "BreastManualAuto") {
                return {
                    "breastMode0": MenuClass.charaData[character]["BreastMove"]["_mode"][0],
                    "breastMode1": MenuClass.charaData[character]["BreastMove"]["_mode"][1],
                    "breastCount0": MenuClass.charaData[character]["BreastMove"]["_count"][0],
                    "breastCount1": MenuClass.charaData[character]["BreastMove"]["_count"][1],
                    "nippleMode0": MenuClass.charaData[character]["NippleMove"]["_mode"][0],
                    "nippleMode1": MenuClass.charaData[character]["NippleMove"]["_mode"][1],
                    "nippleCount0": MenuClass.charaData[character]["NippleMove"]["_count"][0],
                    "nippleCount1": MenuClass.charaData[character]["NippleMove"]["_count"][1]
                };
            } else if (this.tabName == "EmotionManualAuto") {
                return {
                    "MouthSen": MenuClass.charaData[character]["MouthSen"]["_menu"],
                    "MouthRotation": MenuClass.charaData[character]["MouthRotation"]["_meter"],
                    "MouthXMove": MenuClass.charaData[character]["MouthXMove"]["_meter"]
                };
            } else {
                return null;
            }
        }

        private function applyPrevData(character: int, src: Object) : void {
            if (this.headerName == "Hand" && this.tabName == "BreastManualAuto") {
                MenuClass.charaData[character]["BreastMove"]["_mode"][0] = src["breastMode0"];
                MenuClass.charaData[character]["BreastMove"]["_mode"][1] = src["breastMode1"];
                MenuClass.charaData[character]["BreastMove"]["_count"][0] = src["breastCount0"];
                MenuClass.charaData[character]["BreastMove"]["_count"][1] = src["breastCount1"];
                MenuClass.charaData[character]["NippleMove"]["_mode"][0] = src["nippleMode0"];
                MenuClass.charaData[character]["NippleMove"]["_mode"][1] = src["nippleMode1"];
                MenuClass.charaData[character]["NippleMove"]["_count"][0] = src["nippleCount0"];
                MenuClass.charaData[character]["NippleMove"]["_count"][1] = src["nippleCount1"];
                new SetClass(character, "LeftBreast", "tab");
                new SetClass(character, "RightBreast", "tab");
                new SetClass(character, "LeftNipple", "tab");
                new SetClass(character, "RightNipple", "tab");
            } else if (this.tabName == "EmotionManualAuto") {
                MenuClass.charaData[character]["MouthSen"]["_menu"] = src["MouthSen"];
                MenuClass.charaData[character]["MouthRotation"]["_meter"] = src["MouthRotation"];
                MenuClass.charaData[character]["MouthXMove"]["_meter"] = src["MouthXMove"];
                new SetClass(character, "MouthSen", "tab");
                new SetClass(character, "MouthRotation", "tab");
                new SetClass(character, "MouthXMove", "tab");
            }
        }

        override public function undo() {
            for (var i in this.prevData) {
                MenuClass.charaData[i][this.tabName]["_check"] = this.prevData[i]["state"];
                if (this.prevData[i]["data"]) {
                    this.applyPrevData(i, this.prevData[i]["data"]);
                }
                new SetClass(i, this.tabName, "tab");
            }
            new Tab_SetClass();
        }

        override public function redo() {
            for (var i in this.prevData) {
                MenuClass.charaData[i][this.tabName]["_check"] = this.newToggleState;
                new SetClass(i, this.tabName, "tab");
            }
            new Tab_SetClass();
        }

        override public function toString(): String {
            var ret = "ManualAutoAction[" + this.headerName + ":" + this.tabName;
            var n = 0;
            for (var idx in this.prevData) {
                n += 1;
            }

            if (n == 1) {
                for (var idx in this.prevData) {
                    ret += ", character " + idx;
                    break;
                }
            } else if (n > 1) {
                var first = true;
                for (var idx in this.prevData) {
                    if (first) {
                        ret += ", characters " + idx;
                        first = false;
                    } else {
                        ret += ", " + idx;
                    }
                }
            }

            ret += "]";
            return ret;
        }
    }
}