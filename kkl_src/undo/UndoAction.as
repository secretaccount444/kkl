package undo {
    import flash.utils.ByteArray;
    import menu.Tab_SetClass;
    import menu.SetClass;

    public class UndoAction {
        private var _prev: UndoAction = null;
        private var _next: UndoAction = null;
        private var _sequenceNumber: uint = 0;
        
        public function UndoAction() {
            super();
            this._prev = null;
            this._next = null;
            this._sequenceNumber = 0;
        }

        public function get prev(): UndoAction {
            return this._prev;
        }

        public function get next(): UndoAction {
            return this._next;
        }

        public function get sequenceNumber() : uint {
            return this._sequenceNumber;
        }

        public function unlink() : void {
            this._sequenceNumber = 0;

            /* Note: deliberately breaking chains */
            if (this._next) {
                this._next._prev = null;
            }

            if (this._prev) {
                this._prev._next = null;
            }

            this._next = null;
            this._prev = null;
        }

        public function overwriteNext(other: UndoAction) : void {
            if (this._next) {
                this._next._prev = null;
            }
            this._next = other;

            if (other) {
                other._sequenceNumber = this._sequenceNumber + 1;
                if (other._prev) {
                    other._prev._next = null;
                }
                other._prev = this;
            }
        }


        public function undo() {}

        public function redo() {}

        public function toString() : String {
            return "UndoAction";
        }
    }
}