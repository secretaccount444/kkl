package undo {
    import flash.utils.ByteArray;
    import menu.Tab_SetClass;
    import menu.SetClass;
    import menu.SystemText2;
    import menu.Tab_LoadURL;
    import menu.Tab_LoadURL2;
    import menu.Huku_RibonSet;
    import menu.Hair_HairExSet;
    import menu.Huku_MarkSet;
    import menu.Huku_BeltSet;
    import parameter.Dress_data;

    public class SlotShiftAction extends UndoAction {
        private var headerName: String;
        private var dataTarget: String;
        private var character: int;
        private var data: Object;
        private var slotA: Number;
        private var visibleA: Boolean;
        private var slotB: Number;
        private var visibleB: Boolean;

        /* NOTE: character > 10 indicates a system movement */
        public function SlotShiftAction(headerName:String, offset: Number, character: int = 100) {
            super();

            this.headerName = headerName;
            this.character = character;
            this.data = {};

            var cloneBuf: ByteArray = new ByteArray();
            var dataSource = null;
            var dressDataSource = null;
            var menuCustomNumSrc = null;
            if (this.isSystem) {
                dataSource = MenuClass.systemData;
                dressDataSource = Dress_data.DressCharaData[0];
                menuCustomNumSrc = Dress_data.menuCustomNum[0];
            } else {
                dataSource = MenuClass.charaData[character];
                dressDataSource = Dress_data.DressCharaData[character];
                menuCustomNumSrc = Dress_data.menuCustomNum[character];
            }

            var first: Boolean = true;
            for (var i in MenuClass.tabData[headerName]) {
                var tabName = MenuClass.tabData[headerName][i][0];
                var dataTarget = MenuClass.tabData[headerName][i][2]["_data"];
                if (dataTarget == null) {
                    continue;
                }

                if (first) {
                    this.dataTarget = dataTarget;
                    this.slotA = Number(MenuClass.systemData[dataTarget]["_menu"]);
                    this.slotB = this.slotA + offset;

                    if (this.slotB < 0) {
                        this.slotB = dataSource[dataTarget]["_visible"].length - 1;
                    } else if (this.slotB >= dataSource[dataTarget]["_visible"].length) {
                        this.slotB = 0;
                    }

                    this.visibleA = dataSource[dataTarget]["_visible"][this.slotA];
                    this.visibleB = dataSource[dataTarget]["_visible"][this.slotB];
                    
                    first = false;
                }

                var dataKeyA = tabName + this.slotA;
                var dataKeyB = tabName + this.slotB;

                var dataA = {
                    "dress": clone(cloneBuf, dressDataSource[dataKeyA]),
                    "chara": clone(cloneBuf, dataSource[dataKeyA]),
                    "menuCustom": null
                };

                try {
                    if (menuCustomNumSrc) {
                        dataA[tabName]["menuCustom"] = clone(cloneBuf, menuCustomNumSrc[dataKeyA]);
                    }
                } catch (err) {};

                var dataB = {
                    "dress": clone(cloneBuf, dressDataSource[dataKeyB]),
                    "chara": clone(cloneBuf, dataSource[dataKeyB]),
                    "menuCustom": null
                };

                try {
                    if (menuCustomNumSrc) {
                        dataB["menuCustom"] = clone(cloneBuf, menuCustomNumSrc[dataKeyB]);
                    }
                } catch (err) {};

                this.data[tabName] = [dataA, dataB];
            }
        }

        private function get isSystem() : Boolean {
            return this.character > 10;
        }

        private function applyValues(swap: Boolean) : void {
            var cloneBuf: ByteArray = new ByteArray();
            var dataDest = null;
            var dressDataDest = null;
            var menuCustomNumDest = null;
            if (this.isSystem) {
                dataDest = MenuClass.systemData;
                dressDataDest = Dress_data.DressCharaData[0];
                menuCustomNumDest = Dress_data.menuCustomNum[0];
            } else {
                dataDest = MenuClass.charaData[this.character];
                dressDataDest = Dress_data.DressCharaData[this.character];
                menuCustomNumDest = Dress_data.menuCustomNum[this.character];
            }

            for (var tabName in this.data) {
                var destKeyA = null;
                var destKeyB = null;
                var dataPair = this.data[tabName];

                if (swap) {
                    destKeyA = tabName + this.slotB;
                    destKeyB = tabName + this.slotA;
                } else {
                    destKeyA = tabName + this.slotA;
                    destKeyB = tabName + this.slotB;
                }

                dataDest[destKeyA] = clone(cloneBuf, dataPair[0]["chara"]);
                dressDataDest[destKeyA] = clone(cloneBuf, dataPair[0]["dress"]);
                try {
                    if (dataPair[0]["menuCustom"]) {
                        menuCustomNumDest[destKeyA] = clone(cloneBuf, dataPair[0]["menuCustom"]);
                    }
                } catch (err) {}

                dataDest[destKeyB] = clone(cloneBuf, dataPair[1]["chara"]);
                dressDataDest[destKeyB] = clone(cloneBuf, dataPair[1]["dress"]);
                try {
                    if (dataPair[1]["menuCustom"]) {
                        menuCustomNumDest[destKeyB] = clone(cloneBuf, dataPair[1]["menuCustom"]);
                    }
                } catch (err) {}
            }

            if (swap) {
                dataDest[this.dataTarget]["_visible"][this.slotA] = this.visibleB;
                dataDest[this.dataTarget]["_visible"][this.slotB] = this.visibleA;
            } else {
                dataDest[this.dataTarget]["_visible"][this.slotA] = this.visibleA;
                dataDest[this.dataTarget]["_visible"][this.slotB] = this.visibleB;
            }

            if (this.isSystem) {
                if(this.dataTarget == "LoadPlus")
                {
                    for (var i = 0; i < 99; i++) {
                        new Tab_LoadURL("load", i);
                    }
                }
                else if(this.dataTarget == "txtFieldmenu")
                {
                    for (var i = 0; i < 10; i++) {
                        SystemText2.loadFc("txtFieldmenu", i, "menu");
                    }
                }
                else
                {
                    new SetClass(0, this.dataTarget, "move");
                }
            }
            else if (this.dataTarget == "CharaLoadPlus")
            {
                Tab_LoadURL2.updateSingleSlot(this.character, this.slotA);
                Tab_LoadURL2.updateSingleSlot(this.character, this.slotB);
            }
            else if (this.dataTarget == "RibonPlus")
            {
                Huku_RibonSet.setFc(this.character, this.slotA, "move");
                Huku_RibonSet.setFc(this.character, this.slotB, "move");
            }
            else if (this.dataTarget == "HairExPlus")
            {
                Hair_HairExSet.setFc(this.character, this.slotA, "move");
                Hair_HairExSet.setFc(this.character, this.slotB, "move");
            }
            else if (this.dataTarget == "MarkPlus")
            {
                new Huku_MarkSet(this.character, this.slotA, "move");
                new Huku_MarkSet(this.character, this.slotB, "move");
            }
            else if (this.dataTarget == "BeltPlus")
            {
                new Huku_BeltSet(this.character, this.slotA, "move");
                new Huku_BeltSet(this.character, this.slotB, "move");
            }
            else
            {
                new SetClass(this.character, this.dataTarget, "move");
            }

            new Tab_SetClass();
        }

        public function switchMenuToSlot(toB: Boolean) {
            if (toB) {
                MenuClass.systemData[this.dataTarget]["_menu"] = this.slotB;
            } else {
                MenuClass.systemData[this.dataTarget]["_menu"] = this.slotA;
            }
        }

        override public function undo() {
            this.applyValues(false);
        }

        override public function redo() {
            this.applyValues(true);
        }

        override public function toString(): String {
            return "SlotShiftAction[" + this.headerName + ":" + this.character + ":" + this.slotA + "/" + this.slotB + "]";
        }

        private static function clone(cloneBuf: ByteArray, obj: *): * {
            cloneBuf.position = 0;
            cloneBuf.writeObject(obj);
            cloneBuf.position = 0;
            return cloneBuf.readObject();
        }
    }
}