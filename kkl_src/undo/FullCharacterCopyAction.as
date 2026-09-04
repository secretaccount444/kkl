package undo {
    import flash.utils.ByteArray;
    import menu.Tab_SetClass;
    import menu.SetCharaData;
    import menu.Tab_CopyTargetClass;
    import parameter.Dress_data;

    public class FullCharacterCopyAction extends UndoAction {
        private var oldData: Object;
        private var newData: Object;

        public function FullCharacterCopyAction() {
            super();

            this.oldData = {};
            this.newData = readData(
                Tab_CopyTargetClass.charaCopyData[0],
                Tab_CopyTargetClass.dressCopyData[0],
                Tab_CopyTargetClass.menuCustomCopyNum[0]
            );

            if (MenuClass._nowTargetMode == "All" || MenuClass._nowTargetMode == "SelectPlus") {
                for (var i = 0; i <= MenuClass._characterNum; i++) {
                    if (MenuClass._nowTargetMode == "All" || MenuClass._nowSelectChara[i]) {
                        this.oldData[i] = readData(
                            MenuClass.charaData[i],
                            Dress_data.DressCharaData[i],
                            Dress_data.menuCustomNum[i]
                        );
                    }
                }
            } else {
                this.oldData[MenuClass._nowCharaNum] = readData(
                    MenuClass.charaData[MenuClass._nowCharaNum],
                    Dress_data.DressCharaData[MenuClass._nowCharaNum],
                    Dress_data.menuCustomNum[MenuClass._nowCharaNum]
                );
            }
        }

        private static function readData(charaSource: Object, dressSource: Object, customNumSrc: Object) : Object {
            var charaDataBuf = new ByteArray();
            var dressDataBuf = new ByteArray();
            var customNumBuf = new ByteArray();
            var xMove = charaSource["Xmove"]["_meter"];

            charaDataBuf.writeObject(charaSource);
            dressDataBuf.writeObject(dressSource);
            customNumBuf.writeObject(customNumSrc);

            return {
                "charaData": charaDataBuf,
                "dressData": dressDataBuf,
                "customNum": customNumBuf,
                "xMove": xMove
            };
        }

        private static function writeData(destChar: int, src: Object, xMove: Number) : void {
            src["dressData"].position = 0;
            src["charaData"].position = 0;
            src["customNum"].position = 0;

            MenuClass.charaData[destChar] = src["charaData"].readObject();
            Dress_data.DressCharaData[destChar] = src["dressData"].readObject();
            Dress_data.menuCustomNum[destChar] = src["customNum"].readObject();
            MenuClass.charaData[destChar]["Xmove"]["_meter"] = xMove;

            SetCharaData.execute(destChar, "move", 0);
        }

        override public function undo() {
            MenuClass.charaOldData = clone(MenuClass.charaData);
            MenuClass.systemOldData = clone(MenuClass.systemData);

            for (var i in this.oldData) {
                writeData(i, this.oldData[i], this.oldData[i]["xMove"]);
            }
            new Tab_SetClass();
        }

        override public function redo() {
            MenuClass.charaOldData = clone(MenuClass.charaData);
            MenuClass.systemOldData = clone(MenuClass.systemData);

            for (var i in this.oldData) {
                writeData(i, this.newData, this.oldData[i]["xMove"]);
            }
            new Tab_SetClass();
        }

        override public function toString(): String {
            var ret = "FullCharacterCopyAction[";

            var sz = this.newData["dressData"].length + this.newData["charaData"].length + this.newData["customNum"].length;
            var n = 0;
            for (var i in this.oldData) {
                sz += this.oldData[i]["dressData"].length + this.oldData[i]["charaData"].length + this.oldData[i]["customNum"].length;
                n += 1;
            }
            
            if (n == 1) {
                for (var idx in this.oldData) {
                    ret += "character " + idx;
                    break;
                }
            } else if (n > 1) {
                var first = true;
                for (var idx in this.oldData) {
                    if (first) {
                        ret += "characters " + idx;
                        first = false;
                    } else {
                        ret += ", " + idx;
                    }
                }
            }

            if (sz < 1024) {
                ret += " - " + sz + " bytes";
            } else if (sz < (1024 * 1024)) {
                ret += " - " + (sz / 1024).toFixed(2) + " KiB";
            } else {
                ret += " - " + (sz / (1024 * 1024)).toFixed(2) + " MiB";
            }

            ret += "]";
            return ret;
        }

        
      public static function clone(obj:Object) : * {
         var buf:ByteArray = new ByteArray();
         buf.writeObject(obj);
         buf.position = 0;
         return buf.readObject();
      }
    }
}