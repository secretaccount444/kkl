package undo {
    public class MeterAction extends PropertyAction {
        private var maxNum:Number;

        public function MeterAction(headerName:String, targetJ:int, maxNum:Number) {
            var meterType = MenuClass.tabData[headerName][targetJ][2]["_meter"];
            var isCharacter = meterType == "chara" || meterType == "charaPlus";
            var hasSlots = meterType == "charaPlus" || meterType == "systemPlus";

            super(headerName, targetJ, "_meter", isCharacter, hasSlots);

            this.maxNum = maxNum;
        }

        private function clampValue(value:Number) : Number {
            var clampMode = MenuClass.tabData[this.headerName][this.targetJ][2]["_free"];

            if (!MenuClass.spaceKeyPress || clampMode == 3) {
                if (value >= this.maxNum) {
                    value = this.maxNum;
                }
                else if (value <= 0) {
                    value = 0;
                }
            }

            if (clampMode == 1) {
                if (value <= 0) {
                    value = 0;
                }
            }
            else if (clampMode == 2) {
                if (value >= this.maxNum) {
                    value = this.maxNum;
                }
            }

            return value;
        }

        override protected function recordSystemValue(value:*, isNew: Boolean, slot:int = 0) {
            if (isNew) {
                value = this.clampValue(value);
            }

            return super.recordSystemValue(value, isNew, slot);
        }

        override protected function recordCharacterValue(value:*, isNew: Boolean, character:int, slot:int = 0) {
            if (isNew) {
                value = this.clampValue(value);
            }
            
            return super.recordCharacterValue(value, isNew, character, slot);
        }

        override public function recordNewValue(value:*, slot:int = 0) {
            if (this.isCharacter && MenuClass._nowTargetMode == "All" && !this.hasSlots && MenuClass.shiftKeyPress) {
                var adjustment = MenuClass.charaData[MenuClass._nowCharaNum][this.tabName]["_meter"] - value;

                for (var i = 0; i <= MenuClass._characterNum; i++) {
                    var shifted = MenuClass.charaData[i][this.tabName]["_meter"] - adjustment;
                    this.recordCharacterValue(shifted, true, i, slot);
                }

                this.recordCharacterValue(shifted, true, MenuClass._nowCharaNum, slot);
            } else {
                super.recordNewValue(value, slot);
            }
        }

        override public function toString(): String {
            var tabName = MenuClass.tabData[this.headerName][this.targetJ][0];
            var ret = "MeterAction[" + tabName;

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