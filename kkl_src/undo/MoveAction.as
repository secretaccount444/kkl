package undo {
    import menu.Tab_SetClass;
    import menu.SetClass;

    public class MoveAction extends UndoAction {
        private var oldData: Array;
        private var newData: Array;

        public function MoveAction() {
            super();
            
            this.oldData = [];
            this.newData = [];

            for (var i = 0; i <= MenuClass._characterNum; i++) {
                this.oldData.push(this.getDataTuple(i));
            }
        }

        public function recordNewData() : void {
            this.newData = [];
            for (var i = 0; i <= MenuClass._characterNum; i++) {
                this.newData.push(this.getDataTuple(i));
            }
        }

        private function getDataTuple(character: int) : Array {
            return [
                MenuClass.charaData[character]["Xmove"]["_meter"],
                MenuClass.charaData[character]["Ymove"]["_meter"],
                MenuClass.charaData[character]["Jump"]["_meter"]
            ];
        }

        private function applyDataTuple(character: int, src: Array) : void {
            MenuClass.charaData[character]["Xmove"]["_meter"] = src[0];
            MenuClass.charaData[character]["Ymove"]["_meter"] = src[1];
            MenuClass.charaData[character]["Jump"]["_meter"] = src[2];
            new SetClass(character,"Xmove","tab");
            new SetClass(character,"Ymove","tab");
            new SetClass(character,"Jump","tab");
        }

        override public function undo() {
            for (var i = 0; i < this.oldData.length; i++) {
                this.applyDataTuple(i, this.oldData[i]);
            }
            new Tab_SetClass();
        }

        override public function redo() {
            for (var i = 0; i < this.newData.length; i++) {
                this.applyDataTuple(i, this.newData[i]);
            }
            new Tab_SetClass();
        }

        override public function toString(): String {
            return "MoveAction";
        }
    }
}