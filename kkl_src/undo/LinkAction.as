package undo {
    import menu.SetLinkColorClass;
    import menu.Tab_SetClass;

    public class LinkAction extends PropertyAction {
        private var _tabName: String;
        
        public function LinkAction(headerName:String, targetJ:int, tabName: String) {
            super(headerName, targetJ, "_flag", false, false);
            this._tabName = tabName;
        }

        override public function get tabName() : String {
            return this._tabName;
        }

        override protected function applyValues(src:*) {
            this.setPropValue(src);
            new SetLinkColorClass(this.tabName);
            new Tab_SetClass();
        }

        override public function toString(): String {
            return "LinkAction[" + this.tabName + "]";
        }
    }
}