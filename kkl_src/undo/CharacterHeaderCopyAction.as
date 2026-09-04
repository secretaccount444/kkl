package undo {
    import flash.utils.ByteArray;
    import menu.Tab_SetClass;
    import menu.SetClass;
    import menu.Tab_CopyTargetClass;
    import parameter.Dress_data;

    public class CharacterHeaderCopyAction extends UndoAction {
        private var headerName: String;
        private var targetSlot: int;
        private var copyAllParts: Boolean;
        private var ribbonCopy: Boolean;
        private var oldData: Object;
        private var newData: Object;

        public function CharacterHeaderCopyAction(headerName: String, copyAllParts: Boolean, targetSlot: int, ribbonCopy: Boolean) {
            super();

            this.oldData = {};
            this.headerName = headerName;
            this.copyAllParts = copyAllParts;
            this.targetSlot = targetSlot;
            this.ribbonCopy = ribbonCopy;

            if (ribbonCopy) {
                this.newData = this.readData(
                    Tab_CopyTargetClass.charaRibonCopyData[0],
                    Tab_CopyTargetClass.dressRibonCopyData[0],
                    Tab_CopyTargetClass.menuCustomRibonCopyNum[0],
                    true, 0
                );
            } else {
                this.newData = this.readData(
                    Tab_CopyTargetClass.charaCopyData[0],
                    Tab_CopyTargetClass.dressCopyData[0],
                    Tab_CopyTargetClass.menuCustomCopyNum[0],
                    true, 0
                );
            }

            if (MenuClass._nowTargetMode == "All" || MenuClass._nowTargetMode == "SelectPlus") {
                for (var i = 0; i <= MenuClass._characterNum; i++) {
                    if (MenuClass._nowTargetMode == "All" || MenuClass._nowSelectChara[i]) {
                        this.oldData[i] = this.readData(
                            MenuClass.charaData[i],
                            Dress_data.DressCharaData[i],
                            Dress_data.menuCustomNum[i],
                            false, targetSlot
                        );
                    }
                }
            } else {
                this.oldData[MenuClass._nowCharaNum] = this.readData(
                    MenuClass.charaData[MenuClass._nowCharaNum],
                    Dress_data.DressCharaData[MenuClass._nowCharaNum],
                    Dress_data.menuCustomNum[MenuClass._nowCharaNum],
                    false, targetSlot
                );
            }
        }

        private function readData(charaSource: Object, dressSource: Object, customNumSrc: Object, isCopySrc: Boolean, slot: int = -1) : Object {
            var dressDataBuf = new ByteArray();
            var charaDataBuf = new ByteArray();
            var customNumBuf = new ByteArray();
            var customNumPresent = new Array();
            var visibility = false;

            for (var i = 0; i < MenuClass.tabData[this.headerName].length; i++) {
                var tabName = MenuClass.tabData[this.headerName][i][0];
                if (MenuClass.tabData[headerName][i][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][i][2]["_meter"] == "charaPlus") {
                    var dataTarget = MenuClass.tabData[headerName][i][2]["_data"];
                    if (this.copyAllParts) {
                        var customNumLocalPresent = new Array();

                        for (var j = 0; j < charaSource[dataTarget]["_visible"].length; j++) {
                            var dataKey = tabName + j;

                            charaDataBuf.writeObject(charaSource[dataKey]);
                            dressDataBuf.writeObject(dressSource[dataKey]);
                            customNumLocalPresent.push(false);
                            try {
                                customNumBuf.writeObject(customNumSrc[dataKey]);
                                customNumLocalPresent[customNumLocalPresent.length - 1] = true;
                            } catch(err) {}
                        }

                        customNumPresent.push(customNumLocalPresent);
                    } else {
                        if (isCopySrc) {
                            visibility = Tab_CopyTargetClass.RibonPlusNum[dataTarget];
                        } else {
                            visibility = charaSource[dataTarget]["_visible"][slot];
                        }

                        charaDataBuf.writeObject(charaSource[tabName + slot]);
                        dressDataBuf.writeObject(dressSource[tabName + slot]);
                        customNumPresent.push(false);
                        try {
                            customNumBuf.writeObject(customNumSrc[tabName + slot]);
                            customNumPresent[customNumPresent.length - 1] = true;
                        } catch(err) {}
                    }
                } else {
                    charaDataBuf.writeObject(charaSource[tabName]);
                    dressDataBuf.writeObject(dressSource[tabName]);
                    customNumPresent.push(false);
                    try {
                        customNumBuf.writeObject(customNumSrc[tabName]);
                        customNumPresent[customNumPresent.length - 1] = true;
                    } catch(err) {}
                }
            }

            return {
                "dressData": dressDataBuf,
                "charaData": charaDataBuf,
                "customNum": customNumBuf,
                "customNumPresent": customNumPresent,
                "visibility": visibility
            };
        }

        private function writeData(destChar: int, src: Object) : void {
            src["dressData"].position = 0;
            src["charaData"].position = 0;
            src["customNum"].position = 0;

            var dataTarget = null;
            for (var i = 0; i < MenuClass.tabData[this.headerName].length; i++) {
                var tabName = MenuClass.tabData[this.headerName][i][0];
                var customNumPresent = src["customNumPresent"][i];

                if (MenuClass.tabData[this.headerName][i][2]["_menu"] == "charaPlus" || MenuClass.tabData[this.headerName][i][2]["_meter"] == "charaPlus") {
                    dataTarget = MenuClass.tabData[this.headerName][i][2]["_data"];
                    if (this.copyAllParts) {
                        for (var j = 0; j < MenuClass.charaData[destChar][dataTarget]["_visible"].length; j++) {
                            var dataKey = tabName + j;
                            Dress_data.DressCharaData[destChar][dataKey] = src["dressData"].readObject();
                            MenuClass.charaData[destChar][dataKey] = src["charaData"].readObject();
                            if (customNumPresent[j]) {
                                try {
                                    Dress_data.menuCustomNum[destChar][dataKey] = src["customNum"].readObject();
                                } catch (err) {}
                            }
                        }
                        new SetClass(destChar, tabName, "tab");
                    } else {
                        var dataKey = tabName + this.targetSlot;
                        Dress_data.DressCharaData[destChar][dataKey] = src["dressData"].readObject();
                        MenuClass.charaData[destChar][dataKey] = src["charaData"].readObject();
                        if (customNumPresent) {
                            try {
                                Dress_data.menuCustomNum[destChar][dataKey] = src["customNum"].readObject();
                            } catch (err) {}
                        }
                    }
                } else {
                    Dress_data.DressCharaData[destChar][tabName] = src["dressData"].readObject();
                    MenuClass.charaData[destChar][tabName] = src["charaData"].readObject();
                    if (customNumPresent) {
                        try {
                            Dress_data.menuCustomNum[destChar][tabName] = src["customNum"].readObject();
                        } catch (err) {}
                    }
                    new SetClass(destChar, tabName, "tab");
                }
            }

            if (dataTarget != null && !this.copyAllParts) {
                MenuClass.charaData[destChar][dataTarget]["_visible"][this.targetSlot] = src["visibility"];
                new SetClass(destChar, dataTarget, "tab");
            }
        }

        override public function undo() {
            for (var i in this.oldData) {
                this.writeData(i, this.oldData[i]);
            }
            new Tab_SetClass();
        }

        override public function redo() {
            for (var i in this.oldData) {
                this.writeData(i, this.newData);
            }
            new Tab_SetClass();
        }

        override public function toString(): String {
            var ret = "CharacterHeaderCopyAction[" + this.headerName;

            if (this.copyAllParts) {
                ret += ":ALL";
            } else {
                ret += ":" + this.targetSlot;
            }

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

            var sz = this.newData["dressData"].length + this.newData["charaData"].length + this.newData["customNum"].length;
            for (var i in this.oldData) {
                sz += this.oldData[i]["dressData"].length + this.oldData[i]["charaData"].length + this.oldData[i]["customNum"].length
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
    }
}