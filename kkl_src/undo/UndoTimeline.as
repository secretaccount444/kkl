package undo {
    import flash.utils.ByteArray;
    import menu.Tab_SetClass;
    import menu.SetClass;

    public class UndoTimeline {
        public static var maxTimelineLength = 10000;

        private var tail: UndoAction = null;
        private var head: UndoAction = null;

        public function UndoTimeline() {
            super();
            this.head = null;
            this.tail = null;
        }

        public function get length() : uint {
            if (this.tail && this.head) {
                return this.head.sequenceNumber - this.tail.sequenceNumber;
            } else {
                return 0;
            }
        }

        public function reset() {
            // if (this.head != null || this.tail != null) {
            //     trace("Reset undo timeline");
            // }

            this.head = null;
            this.tail = null;
        }

        public function push(action: UndoAction) {
            action.unlink();

            if (this.head) {
                this.head.overwriteNext(action);
            } else {
                this.tail = action;
            }

            this.head = action;

            // trace("push " + action.sequenceNumber + ": " + action.toString());
            if (this.length >= maxTimelineLength) {
                var prevTail = this.tail;
                this.tail = prevTail.next;

                // trace("drop " + prevTail.sequenceNumber + ": " + prevTail.toString());
                prevTail.unlink();
            }
        }

        public function undo () {
            if (this.head) {
                // trace("undo " + this.head.sequenceNumber + ": " + this.head.toString());
                this.head.undo();
                this.head = this.head.prev;
            }
        }

        public function redo() {
            var redoAction = null;
            if (this.head) {
                redoAction = this.head.next;
            } else {
                redoAction = this.tail;
            }

            if (redoAction) {
                // trace("redo " + redoAction.sequenceNumber + ": " + redoAction.toString());
                redoAction.redo();
                this.head = redoAction;
            }
        }
    }
}