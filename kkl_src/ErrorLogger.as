package {
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.events.ErrorEvent;
   import flash.events.TimerEvent;
   import flash.filesystem.*;
   import flash.utils.getTimer;
   import flash.utils.Timer;
   import flash.system.Capabilities;
   
   public class ErrorLogger
   {
        private var logStream: FileStream = null;
        private var loggedMessages: Object = {};
        private var curReferenceNumber: uint = 0;
        private var logTimer: Timer = null;
        private var internalErrorTime = null;

        public function ErrorLogger() {
            if (!Capabilities.isDebugger) return;

            var errorLog: File = new File(File.applicationDirectory.resolvePath("error.log").nativePath);
            try {
                if (errorLog.exists) {
                    errorLog.deleteFile();
                }
            } catch (fileErr: Error) {
                trace("Caught error while deleting old error log: ");
                trace(fileErr.getStackTrace());
                return;
            }

            try {
                this.logStream = new FileStream();
                this.logStream.openAsync(errorLog, FileMode.WRITE);
            }  catch (fileErr: Error) {
                trace("Caught error while opening error log: ");
                trace(fileErr.getStackTrace());
                this.logStream = null;
            }

            this.logTimer = new Timer(10000);
            this.logTimer.addEventListener(TimerEvent.TIMER, this.timerHandler);
            this.logTimer.start();
        }

        public function logError(err: Error, where: String = null) : void {
            if (!Capabilities.isDebugger) return;

            var t = getTimer();
            var stack = err.getStackTrace();
            var key = stack;
            if (where !== null) {
                key = where + ":" + key;
            }

            var logData = this.loggedMessages[key];
            if (logData) {
                logData.count += 1;
                logData.lastSeen = t;
            } else {
                this.curReferenceNumber += 1;
                this.loggedMessages[key] = {
                    name: err.name,
                    message: err.message,
                    stack: stack,
                    where: where,
                    refNumber: this.curReferenceNumber,
                    count: 1,
                    lastSeen: t,
                    lastWritten: null,
                    lastWrittenCount: null
                };
            }
        }

        private function logInternalError(where: String, err: Error) : void {
            var t = getTimer();

            if ((this.internalErrorTime === null) || ((t - this.internalErrorTime) < 1000)) {
                trace("Caught error " + where + ":");
                trace(err.getStackTrace());
                this.internalErrorTime = t;
            }
        }

        private function processMessages() : void {
            if (!Capabilities.isDebugger) return;

            var t = getTimer();
            var logQueue = [];

            for each (var logData: Object in this.loggedMessages) {
                if (logData.lastWritten === null) {
                    logData.lastWrittenCount = logData.count;
                    logData.lastWritten = t;
                    logQueue.push([logData, true, logData.count]);
                } else if (logData.lastWritten < logData.lastSeen) {
                    var countDiff = logData.count - logData.lastWrittenCount;
                    logData.lastWrittenCount = logData.count;
                    logData.lastWritten = t;

                    if (countDiff > 0) {
                        logQueue.push([logData, false, countDiff]);
                    }
                }
            }

            for (var i = 0; i < logQueue.length; i++) {
                var item = logQueue[i];
                this.writeMessage(item[0], item[1], item[2], t);
            }
        }

        private function writeMessage(logData: Object, firstWrite: Boolean, instanceCount: uint, emitTime: int) : void {
            if (!Capabilities.isDebugger) return;

            if (Main.server) {
                try {
                    Main.server.emitEvent("internal_error", {
                        "type": logData.name,
                        "message": logData.message,
                        "stack": logData.stack,
                        "where": logData.where,
                        "count": instanceCount
                    });
                } catch (emitErr: Error) {
                    this.logInternalError("while emitting error event via server", emitErr);
                }
            }

            var fracTime = emitTime % 1000;
            var wholeTime = int(Math.floor(emitTime / 1000));
            var lines: Array = [];
            var prefix: String = "[" + wholeTime + "." + fracTime + "] [" + logData.refNumber + "] ";

            if (firstWrite) {
                if (logData.where !== null) {
                    lines.push("Caught error " + logData.where + ":");
                }
                lines = lines.concat(logData.stack.split("\n"));
                if (instanceCount > 1) {
                    lines.push("(suppressed " + (instanceCount - 1) + " duplicate messages)");
                }
            } else {
                lines.push("Suppressed " + instanceCount + " duplicates of message " + logData.refNumber);
            }

            var writeData = lines.map(function (line) {
                return prefix + line;
            }).join("\n");

            if (this.logStream) {
                try {
                    this.logStream.writeUTFBytes(writeData);
                } catch (writeErr: Error) {
                    this.logInternalError("while writing to error log", writeErr);
                }
            }

            trace(writeData);
        }

        private function timerHandler(ev: TimerEvent) : void {
            this.logTimer.reset();

            if (!Capabilities.isDebugger) return;

            try {
                this.processMessages();
            } catch (err: Error) {
                this.logInternalError("while processing error log messages", err);
            }

            this.logTimer.start();
        }
   }
}