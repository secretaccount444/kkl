package {
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.events.KeyboardEvent;
    import flash.events.TimerEvent;
    import flash.geom.ColorTransform;
    import flash.utils.Timer;
    
    import menu.SystemText2;
    import menu.Tab_URLTextClass;
    import menu.Tab_CameraClass;
    import menu.Tab_IE_Import;
    import menu.Tab_SetClass;

    public class AdvKeyPressHandler {
        private var cur_target: int = 0;  // 0 = forearm, 1 = hand
        private var target_side: int = 0; // 0 = left, 1 = right

        public function AdvKeyPressHandler() {
            super();
            Main.stageVar.addEventListener(KeyboardEvent.KEY_DOWN, this.handleKeyDown);
            Main.stageVar.addEventListener(KeyboardEvent.KEY_DOWN, this.sendServerKeyEvent);
            Main.stageVar.addEventListener(KeyboardEvent.KEY_UP, this.sendServerKeyEvent);
        }

        private function getTarget() : Sprite {
            var charaAdd: Object = MenuClass.charaAdd[MenuClass._nowCharaNum];
            var base_sprite: Object = charaAdd["handm1_" + this.target_side].hand;
            if (this.cur_target == 0) {
                return base_sprite.arm1.arm1.arm1.actual;
            } else {
                return base_sprite.arm0;
            }
        }

        private function highlightTarget() {
            var tgt: Sprite = this.getTarget();
            var prev_xfrm: ColorTransform = tgt.transform.colorTransform;
            var xfrm: ColorTransform = tgt.transform.colorTransform;

            xfrm.alphaMultiplier = 0;
            xfrm.alphaOffset = 0.5;
            tgt.transform.colorTransform = xfrm;

            var tm:Timer = new Timer(500, 1);
            
            tm.addEventListener("timer", function (e: TimerEvent) {
                tgt.transform.colorTransform = prev_xfrm;
            });

            tm.start();
        }

        private function sendServerKeyEvent(ev: KeyboardEvent) {
            var type: String = "";
            if (ev.type == KeyboardEvent.KEY_UP) {
                type = "key_up";
            } else if (ev.type == KeyboardEvent.KEY_DOWN) {
                type = "key_down";
            } else {
                trace("Unknown keyboard event type " + ev.type);
                return
            }

            if (Main.server) {
                try {
                    if (Main.server) {
                        Main.server.emitEvent(type, {"char_code": ev.charCode, "key_code": ev.keyCode, "location": ev.keyLocation, "ctrl": ev.ctrlKey, "alt": ev.altKey, "shift": ev.shiftKey});
                    }
                } catch(err: Error) {
                    Main.logError(err, "when emitting autosave event");
                }
            }
        }

        private function handleKeyDown(ev: KeyboardEvent) {
            trace("keyDown event, charCode: " + ev.charCode);

            if (MenuClass.menuSetFlag) {
                return;
            }

            if (SystemText2.textFocusCheck || 
                Tab_URLTextClass.urlTextFocusCheck || 
                Tab_CameraClass.urlTextFocusCheck ||
                MenuClass.StoryMode ||
                MenuClass.ColorCustomOpenCheck ||
                MenuClass.PassWindowOpenCheck || 
                Tab_IE_Import.textFocusCheck || 
                MenuClass._nowWindowName != null || 
                MenuClass._nowHeaderName == "Escape"
            ) {
                return;
            }

            if (MenuClass._nowHeaderName == "Story") {
                return;
            }

            for (var i: int = 0; i < MenuClass.shortcutHeaderAr.length; i++) {
                if(MenuClass.shortcutHeaderAr[i][2] == ev.charCode && MenuClass.shortcutHeaderAr[i][2] != "")
                {
                    return;
                }
            }

            var tgt: Sprite = this.getTarget();
            switch (ev.charCode) {
            case 108:
                /* l */
                tgt.x += 0.5;
                break;
            case 107:
                /* k */
                tgt.x -= 0.5;
                break;
            case 111:
                /* o */
                tgt.y += 0.5;
                break;
            case 105:
                /* i */
                tgt.y -= 0.5;
                break;
            case 117:
                /* u */
                tgt.rotation += 0.25;
                break;
            case 121:
                /* y */
                tgt.rotation -= 0.25;
                break;
            case 106:
                /* j */
                if (this.cur_target == 0) {
                    this.cur_target = 1;
                } else {
                    this.cur_target = 0;
                }
                this.highlightTarget();
                return;
            case 104:
                /* h */
                if (this.target_side == 0) {
                    this.target_side = 1;
                } else {
                    this.target_side = 0;
                }
                this.highlightTarget();
                return;
            default:
                return;
            }
        }
    }
}