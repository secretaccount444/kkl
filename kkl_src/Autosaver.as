package {
    import flash.utils.Timer;
    import flash.events.TimerEvent;
    import flash.filesystem.File;
    import flash.filesystem.FileStream;

    import menu.Tab_TextSaveBtn;
    import menu.Tab_IESet;

    public class Autosaver {
        private var saveDir: File = null;
        private var secondaryDir: File = null;
        private var autosaveTimer: Timer = null;

        public static var autosaveInterval: uint = 120 * 1000;

        public function Autosaver() {
            this.saveDir = new File(File.applicationDirectory.resolvePath("autosaves").nativePath);
            if (!this.saveDir.exists) {
                this.saveDir.createDirectory();
            }

            this.secondaryDir = File.documentsDirectory.resolvePath("kkl-autosave");
            if (!this.secondaryDir.exists) {
                this.secondaryDir.createDirectory();
            }

            this.autosaveTimer = new Timer(autosaveInterval, 0);
            var self: Autosaver = this;
            this.autosaveTimer.addEventListener("timer", this.timerHandler);

            this.autosaveTimer.start();

            if (!this.doAutosave(this.saveDir)) {
                this.doAutosave(this.secondaryDir);
            }
        }

        public function timerHandler(ev: TimerEvent) : void {
            if (this.doAutosave(this.saveDir)) {
                return;
            }

            this.doAutosave(this.secondaryDir);
        }

        public function doAutosave(saveDir: File) : Boolean {
            var outFile: File = null;
            var exported_code: String = null;

            try {
                var now: Date = new Date();

                // generate folder
                var folderName: String = now.fullYear + "-" + (now.month + 1) + "-" + now.date;

                var folder: File = saveDir.resolvePath(folderName);
                if (!folder.exists) {
                    folder.createDirectory();
                }

                var filename: String = now.toString().replace(/[^a-zA-Z0-9_\-]+/gi, "_") + '.txt';
                outFile = folder.resolvePath(filename);
                trace("Writing autosave to " + outFile.nativePath);

                var out_stream: FileStream = new FileStream();
                out_stream.open(outFile, "write");

                var prevExportFilters = {};
                for (var idx in MenuClass.exportCheck) {
                    prevExportFilters[idx] = MenuClass.exportCheck[idx];
                    MenuClass.exportCheck[idx] = true;
                }
                
                new Tab_IESet("txtSave");
                exported_code = Tab_TextSaveBtn.txtSaveData;
                
                out_stream.writeUTFBytes(exported_code);
                out_stream.close();

                for (var idx in MenuClass.exportCheck) {
                    MenuClass.exportCheck[idx] = prevExportFilters[idx];
                }
            } catch(err: Error) {
                Main.logError(err, "in doAutosave");
                return false;
            }

            try {
                if (Main.server && outFile) {
                    Main.server.emitEvent("autosave", {"path": outFile.nativePath, "code": exported_code});
                }
            } catch(err: Error) {
                Main.logError(err, "when emitting autosave event");
                return false;
            }

            return true;
        }
    }
}