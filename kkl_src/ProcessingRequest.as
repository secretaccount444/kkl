package {
    import flash.events.Event;
    import flash.events.EventDispatcher;
    import flash.filesystem.File;
    import flash.filesystem.FileStream;
    import flash.utils.ByteArray;
    import flash.geom.Matrix;

    public class ProcessingRequest extends EventDispatcher {
        private var code: String = null;
        public var transforms: Object = {}
        private var image_data: ByteArray = null;
        private var fastEncode: Boolean = false;

        public static var CODE_PROCESSED: String = "code_processed";

        public function ProcessingRequest(code: String, transforms: Object, fastEncode: Boolean = true) {
            super();

            if (!transforms) {
                transforms = {};
            }

            this.code = code;
            this.transforms = transforms;
            this.fastEncode = fastEncode;
            this.image_data = null;
        }

        public function getCode() : String {
            return this.code;
        }

        public function getData() : ByteArray {
            return this.image_data;
        }

        public function doFastEncode() : Boolean {
            return this.fastEncode;
        }

        public function storeData(image_data: ByteArray) {
            this.image_data = image_data;
            this.dispatchEvent(new Event(ProcessingRequest.CODE_PROCESSED));
        }

        public function saveToFile(file: File) {
            var fstream: FileStream = new FileStream();

            fstream.open(file, "write");
            fstream.writeBytes(this.image_data, 0, this.image_data.length);
            fstream.close();
        }
    }
}