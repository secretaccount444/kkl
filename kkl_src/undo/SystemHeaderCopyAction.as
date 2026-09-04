package undo {
    import flash.utils.ByteArray;
    import menu.Tab_SetClass;
    import menu.SetClass;
    import menu.Tab_CopyTargetClass;
    import menu.Tab_LoadURL;
    import parameter.Dress_data;

    public class SystemHeaderCopyAction extends UndoAction {
        private var headerName: String;
        private var targetSlot: int;
        private var oldData: Object;
        private var newData: Object;
        private var sourceVisibility: Boolean;

        public function SystemHeaderCopyAction(headerName: String) {
            super();

            this.headerName = headerName;

            var sourceVis = false;
            var targetVis = false;
            switch (this.headerName) {
            case "HeaderFreeHand":
                this.targetSlot = MenuClass.systemData["FreeHandPlus"]["_menu"];
                sourceVis = Tab_CopyTargetClass.systemCopyData["FreeHandPlus"]["_visible"][Tab_CopyTargetClass.FreeHandPlusNum];
                targetVis = MenuClass.systemData["FreeHandPlus"]["_visible"][this.targetSlot];
                break;
            case "HeaderFreeRibon":
                this.targetSlot = MenuClass.systemData["FreeRibonPlus"]["_menu"];
                sourceVis = Tab_CopyTargetClass.systemCopyData["FreeRibonPlus"]["_visible"][Tab_CopyTargetClass.FreeRibonPlusNum];
                targetVis = MenuClass.systemData["FreeRibonPlus"]["_visible"][this.targetSlot];
                break;
            case "HeaderFreeBelt":
                this.targetSlot = MenuClass.systemData["FreeBeltPlus"]["_menu"];
                sourceVis = Tab_CopyTargetClass.systemCopyData["FreeBeltPlus"]["_visible"][Tab_CopyTargetClass.FreeBeltPlusNum];
                targetVis = MenuClass.systemData["FreeBeltPlus"]["_visible"][this.targetSlot];
                break;
            case "HeaderFreeFlag":
                this.targetSlot = MenuClass.systemData["FreeFlagPlus"]["_menu"];
                sourceVis = Tab_CopyTargetClass.systemCopyData["FreeFlagPlus"]["_visible"][Tab_CopyTargetClass.FreeFlagPlusNum];
                targetVis = MenuClass.systemData["FreeFlagPlus"]["_visible"][this.targetSlot];
                break;
            case "HeaderFreeChair":
                this.targetSlot = MenuClass.systemData["FreeChairPlus"]["_menu"];
                sourceVis = Tab_CopyTargetClass.systemCopyData["FreeChairPlus"]["_visible"][Tab_CopyTargetClass.FreeChairPlusNum];
                targetVis = MenuClass.systemData["FreeChairPlus"]["_visible"][this.targetSlot];
                break;
            case "HeaderFreeHukidashi":
                this.targetSlot = MenuClass.systemData["FreeHukidashiPlus"]["_menu"];
                sourceVis = Tab_CopyTargetClass.systemCopyData["FreeHukidashiPlus"]["_visible"][Tab_CopyTargetClass.FreeHukidashiPlusNum];
                targetVis = MenuClass.systemData["FreeHukidashiPlus"]["_visible"][this.targetSlot];
                break;
            case "Loadmenu":
                this.targetSlot = MenuClass.systemData["LoadPlus"]["_menu"];
                sourceVis = Tab_CopyTargetClass.systemCopyData["LoadPlus"]["_visible"][Tab_CopyTargetClass.LoadPlusNum];
                targetVis = MenuClass.systemData["LoadPlus"]["_visible"][this.targetSlot];
                break;
            case "txt":
                this.targetSlot = MenuClass.systemData["txtFieldmenu"]["_menu"];
                sourceVis = Tab_CopyTargetClass.systemCopyData["txtFieldmenu"]["_visible"][Tab_CopyTargetClass.txtFieldmenuNum];
                targetVis = MenuClass.systemData["txtFieldmenu"]["_visible"][this.targetSlot];
                break;
            default:
                this.targetSlot = -1;
                sourceVis = false;
                targetVis = false;
                break;
            }

            this.newData = this.readData(
                Tab_CopyTargetClass.systemCopyData,
                Tab_CopyTargetClass.dressCopyData[0],
                Tab_CopyTargetClass.menuCustomCopyNum[0],
                true
            );
            this.newData["visibility"] = sourceVis;

            this.oldData = this.readData(
                MenuClass.systemData,
                Dress_data.DressCharaData[0],
                Dress_data.menuCustomNum[0],
                false
            );
            this.oldData["visibility"] = targetVis;
        }

        private function getTabNames() : Array {
            switch (this.headerName) {
            case "HeaderFreeHand":
                return [
                    "FreeHand",
                    "FreeHandAlpha",
                    "FreeHandScale",
                    "FreeHandWidth",
                    "FreeHandRotation",
                    "FreeHandX",
                    "FreeHandY",
                    "FreeHandFineX",
                    "FreeHandFineY",
                    "FreeHandDepth",
                    "FreeHandWrist",
                    "FreeHandWristRotation",
                    "FreeHandItem",
                    "FreeHandVest",
                    "FreeHandWristband"
                ];
            case "HeaderFreeRibon":
                return [
                    "FreeRibon",
                    "FreeRibonScale",
                    "FreeRibonScaleY",
                    "FreeRibonScaleB",
                    "LinkFreeRibonScale",
                    "LinkFreeRibonLine",
                    "FreeRibonLine",
                    "FreeRibonRotation",
                    "FreeRibonX",
                    "FreeRibonY",
                    "FreeRibonFineX",
                    "FreeRibonFineY",
                    "FreeRibonDepth",
                    "FreeRibonAlpha"
                ];
            case "HeaderFreeBelt":
                return [
                    "FreeBelt",
                    "FreeBeltExtra",
                    "FreeBeltScale",
                    "LinkFreeBeltScale",
                    "LinkFreeBeltLine",
                    "FreeBeltScaleY",
                    "FreeBeltScaleB",
                    "FreeBeltLine",
                    "FreeBeltRotation",
                    "FreeBeltX",
                    "FreeBeltY",
                    "FreeBeltFineX",
                    "FreeBeltFineY",
                    "FreeBeltAlpha",
                    "FreeBeltDepth"
                ];
            case "HeaderFreeFlag":
                return [
                    "FreeFlag",
                    "FreeFlagExtra",
                    "FreeFlagScale",
                    "LinkFreeFlagScale",
                    "FreeFlagScaleY",
                    "FreeFlagScaleB",
                    "FreeFlagRotation",
                    "FreeFlagX",
                    "FreeFlagY",
                    "FreeFlagDepth"
                ];
            case "HeaderFreeChair":
                return [
                    "FreeChair",
                    "FreeChairExtra",
                    "FreeChairScale",
                    "FreeChairLine",
                    "FreeChairRotation",
                    "FreeChairX",
                    "FreeChairY",
                    "FreeChairDepth",
                    "FreeChairFineX",
                    "FreeChairFineY",
                    "FreeChairAlpha"
                ];
            case "HeaderFreeHukidashi":
                return [
                    "FreeHukidashi",
                    "FreeHukidashiAlpha",
                    "FreeHukidashiBlend",
                    "FreeHukidashiScale",
                    "LinkFreeHukidashiScale",
                    "FreeHukidashiScaleY",
                    "FreeHukidashiScaleB",
                    "FreeHukidashiLine",
                    "FreeHukidashiRotation",
                    "FreeHukidashiX",
                    "FreeHukidashiY",
                    "FreeHukidashiDepth",
                    "FreeHukidashiExtra",
                    "FreeHukidashiExtraLine",
                    "FreeHukidashiExtraScale",
                    "LinkFreeHukidashiExtraScale",
                    "FreeHukidashiExtraScaleY",
                    "FreeHukidashiExtraRotation",
                    "FreeHukidashiExtraX",
                    "FreeHukidashiExtraY"
                ]
            case "txt":
                /* NOTE: text data requires special handling */
                return [
                    "FontType",
                    "txtFieldScale",
                    "txtFieldX",
                    "txtFieldY",
                    "txtFieldLeading",
                    "txtFieldLetter",
                    "txtFieldTateYoko",
                    "txtFieldFormatAlign",
                    "txtFieldAdd",
                    "txtFieldAlpha",
                    "txtFieldBoxScaleX",
                    "txtFieldBoxScaleY",
                    "txtFieldWidth",
                    "txtFieldScaleB",
                    "txtFieldRotation",
                    "txtFieldDepth"
                ]
            case "Loadmenu":
                /* NOTE: needs to call Tab_LoadURL */
                return [
                    "LoadAlpha",
                    "LoadScale",
                    "LoadSize",
                    "LoadScaleY",
                    "LoadScaleB",
                    "LoadRotation",
                    "LoadX",
                    "LoadY",
                    "LoadFineX",
                    "LoadFineY",
                    "LoadSwfColor",
                    "LoadAdd",
                    "LoadReversalDepth"
                ];
            case "Background":
                return [
                    "Background",
                    "BgFloor",
                    "BgY",
                    "BgFront",
                    "Mob"
                ];
            case "Tool":
                /* NOTE: there's some stuff that has to be handled specially for camera settings */
                return [
                    "Zoom",
                    "FullScreen",
                    "ViewMode",
                    "CameraKaizoudo",
                    "MenuScale",
                    "MenuAlign",
                    "CameraPNG",
                    "CameraJPG",
                    "CameraKirinuki"
                ];
            default:
                return [];
            }
        }

        private function readData(mainSrc: Object, dressSrc: Object, menuCustomNumSrc: Object, readFromCopy: Boolean) : Object {
            var tabNames = this.getTabNames();
            var mainDataBuf = new ByteArray();
            var dressDataBuf = new ByteArray();
            var customNumBuf = new ByteArray();

            for (var i = 0; i < tabNames.length; i++) {
                var dataKey = tabNames[i];
                if (!readFromCopy) {
                    dataKey = dataKey + this.targetSlot;
                }

                mainDataBuf.writeObject(mainSrc[dataKey]);
                if (dataKey in dressSrc) {
                    dressDataBuf.writeObject(dressSrc[dataKey]);
                } else {
                    dressDataBuf.writeObject(null);
                }

                if (dataKey in menuCustomNumSrc) {
                    customNumBuf.writeObject(menuCustomNumSrc[dataKey]);
                } else {
                    customNumBuf.writeObject(null);
                }
            }

            return {
                "dressData": dressDataBuf,
                "mainData": mainDataBuf,
                "customNum": customNumBuf
            };
        }

        private function writeData(src: Object) : void {
            var tabNames = this.getTabNames();

            src["dressData"].position = 0;
            src["mainData"].position = 0;
            src["customNum"].position = 0;

            switch (this.headerName) {
            case "HeaderFreeHand":
                MenuClass.systemData["FreeHandPlus"]["_visible"][this.targetSlot] = src["visibility"];
                break;
            case "HeaderFreeRibon":
                MenuClass.systemData["FreeRibonPlus"]["_visible"][this.targetSlot] = src["visibility"];
                break;
            case "HeaderFreeBelt":
                MenuClass.systemData["FreeBeltPlus"]["_visible"][this.targetSlot] = src["visibility"];
                break;
            case "HeaderFreeFlag":
                MenuClass.systemData["FreeFlagPlus"]["_visible"][this.targetSlot] = src["visibility"];
                break;
            case "HeaderFreeChair":
                MenuClass.systemData["FreeChairPlus"]["_visible"][this.targetSlot] = src["visibility"];
                break;
            case "HeaderFreeHukidashi":
                MenuClass.systemData["FreeHukidashiPlus"]["_visible"][this.targetSlot] = src["visibility"];
                break;
            case "Loadmenu":
                MenuClass.systemData["LoadPlus"]["_visible"][this.targetSlot] = src["visibility"];
                break;
            case "txt":
                MenuClass.systemData["txtFieldmenu"]["_visible"][this.targetSlot] = src["visibility"];
                break;
            default:
                break;
            }

            for (var i = 0; i < tabNames.length; i++) {
                var tabName = tabNames[i];
                var dataKey = tabName;
                if (this.targetSlot >= 0) {
                    dataKey = dataKey + this.targetSlot;
                }

                var dressObj = src["dressData"].readObject();
                var customNum = src["customNum"].readObject();
                MenuClass.systemData[dataKey] = src["mainData"].readObject();

                if (dressObj) {
                    Dress_data.DressCharaData[0][dataKey] = dressObj;
                }

                if (dataKey in Dress_data.menuCustomNum[0]) {
                    Dress_data.menuCustomNum[0][dataKey] = customNum;
                }

                if (this.headerName != "Loadmenu") {
                    new SetClass(0, tabName, "tab");
                }
            }

            if (this.headerName == "Loadmenu") {
                new Tab_LoadURL("load", this.targetSlot);
            } else if (this.headerName == "txt") {
                try {
                    MenuClass.txtFieldAdd[this.targetSlot].htmlText = MenuClass.systemData["FontType"]["_txt"];
                } catch(myError:Error) {}
            }
        }

        override public function undo() {
            this.writeData(this.oldData);
            new Tab_SetClass();
        }

        override public function redo() {
            this.writeData(this.newData);
            new Tab_SetClass();
        }

        override public function toString(): String {
            var ret = "SystemHeaderCopyAction[" + this.headerName;

            var sz = this.newData["dressData"].length + this.newData["mainData"].length + this.newData["customNum"].length;
            sz += this.oldData["dressData"].length + this.oldData["mainData"].length + this.oldData["customNum"].length

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