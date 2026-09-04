package {
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.ui.Keyboard;
    import flash.system.Capabilities;

    public class AdvClickHandler {
        public function AdvClickHandler() {
            super();
            Main.stageVar.addEventListener(MouseEvent.MOUSE_DOWN, this.handleMouseDown);
        }

        public function get identifyModeActive() : Boolean {
            return Main.keypressHandler.shift && Main.keypressHandler.ctrl;
        }

        private function handleMouseDown(ev: MouseEvent) {
            if (!ev.target) {
                return;
            }

            try {
                if (Capabilities.isDebugger && this.identifyModeActive) {
                    var cur = ev.target;
                    var path = "";
                    var foundCharaAdd = false;

                    while (cur != null && !foundCharaAdd) {
                        var name = cur.name;
                        var parent = cur.parent;
                        
                        for (var i = 0; i <= MenuClass._characterNum; i++) {
                            if (MenuClass.charaAdd[i] === cur) {
                                name = "MenuClass.charaAdd[" + i + "]";
                                foundCharaAdd = true;
                                break;
                            } else {
                                var localName = "";

                                for (var key in MenuClass.charaAdd[i]) {
                                    if (MenuClass.charaAdd[i][key] === cur) {
                                        localName = key;
                                        break;
                                    }
                                }

                                if (localName) {
                                    name = localName;
                                    break;
                                }
                            }
                        }

                        if (!name || name.length == 0 || name.substring(0, 8) == "instance") {
                            name = "";
                            if (!parent) {
                                name = "<root>";
                            } else {
                                name = "<" + parent.getChildIndex(cur) + ">";
                            }
                        }

                        if (path.length > 0) {
                            path = name + "." + path;
                        } else {
                            path = name;
                        }

                        cur = parent;
                    }

                    trace("identify: " + path);
                }
            } catch (err) {
                trace("Failed to identify click target:");
                trace(err.getStackTrace());
            }
        }
    }
}