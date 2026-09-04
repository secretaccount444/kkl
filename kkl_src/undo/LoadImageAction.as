package undo {
    import menu.Tab_SetClass;
    import menu.SetClass;
    import menu.Tab_LoadURL;
    import menu.Tab_LoadURL2;
    import menu.Tab_TabNameCheck;

    public class LoadImageAction extends UndoAction {
        private var character: int;
        private var slot: int;

        private var oldURL: String;
        public var newURL: String;

        /* NOTE: character > 10 indicates a global image */
        public function LoadImageAction(slot: int, character: int) {
            super();
            
            this.character = character;
            this.slot = slot;

            if (this.isSystem) {
                this.oldURL = null;
                if (MenuClass.systemData["LoadPlus"]["_visible"][slot]) {
                    this.oldURL = MenuClass.systemData["LoadScale" + slot]["_name"];
                    if (this.oldURL != null && this.oldURL.length == 0) {
                        this.oldURL = null;
                    }
                }
            } else {
                this.oldURL = null;
                if (MenuClass.charaData[character]["CharaLoadPlus"]["_visible"][slot]) {
                    this.oldURL = MenuClass.charaData[character]["CharaLoadAdd" + slot]["_name"];
                    if (this.oldURL != null && this.oldURL.length == 0) {
                        this.oldURL = null;
                    }
                }
            }

            this.newURL = null;
        }

        private function get isSystem() : Boolean {
            return this.character > 10;
        }

        private function setUrl(url: String) : void {
            if (this.isSystem) {
                if (url) {
                    MenuClass.systemData["LoadScale" + this.slot]["_name"] = url;
                    MenuClass.systemData["LoadPlus"]["_visible"][this.slot] = true;
                } else {
                    MenuClass.systemData["LoadScale" + this.slot]["_name"] = "";
                    MenuClass.systemData["LoadPlus"]["_visible"][this.slot] = false;
                }
                new Tab_LoadURL("load", this.slot);
            } else {
                if (url) {
                    MenuClass.charaData[this.character]["CharaLoadAdd" + this.slot]["_name"] = url;
                    MenuClass.charaData[this.character]["CharaLoadPlus"]["_visible"][this.slot] = true;
                } else {
                    MenuClass.charaData[this.character]["CharaLoadAdd" + this.slot]["_name"] = "";
                    MenuClass.charaData[this.character]["CharaLoadPlus"]["_visible"][this.slot] = false;
                }
                new Tab_LoadURL2("load", this.slot, this.character);
            }
            new Tab_SetClass();
        }

        override public function undo() {
            this.setUrl(this.oldURL);
        }

        override public function redo() {
            this.setUrl(this.newURL);
        }

        override public function toString(): String {
            if (this.isSystem) {
                return "LoadImageAction[LoadPlus:" + this.slot + "]";
            } else {
                return "LoadImageAction[CharaLoadPlus:" + this.character + ":" + this.slot + "]";
            }
        }
    }
}