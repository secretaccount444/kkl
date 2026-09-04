package menu
{
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import net.AnimationGIFSaver;
   import org.bytearray.gif.encoder.GIFEncoder;
   
   public class Tab_CameraClass
   {
      
      public static var kirinukiX:Number = 5000;
      
      public static var kirinukiY:Number = 5000;
      
      public static var saver:AnimationGIFSaver;
      
      public static var _myGIFEncoder:GIFEncoder = new GIFEncoder();
      
      public static var textAdd:Array = new Array();
      
      public static var Nagaoshi_count:int;
      
      public static var urlTextFocusCheck:Boolean = false;
      
      public static var urlTextClickCheck:Boolean = false;
       
      
      public function Tab_CameraClass()
      {
         super();
      }
      
      public static function setFc(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:TextField = null;
         if(param1 == "EasyCameraPNG")
         {
            MenuClass.tabMenuAdd["EasyCameraPNG"].TabCameraBtn.addEventListener(MouseEvent.MOUSE_DOWN,easyCameraPngClick);
            MenuClass.tabMenuAdd["EasyCameraPNG"].TabCameraBtn.buttonMode = true;
         }
         else if(param1 == "CameraKirinuki")
         {
            MenuClass.tabMenuAdd["CameraJPG"].TabCameraBtn.addEventListener(MouseEvent.MOUSE_DOWN,cameraJpgClick);
            MenuClass.tabMenuAdd["CameraJPG"].TabCameraBtn.buttonMode = true;
            MenuClass.tabMenuAdd["CameraKirinuki"].kirinukiBtn.addEventListener(MouseEvent.MOUSE_DOWN,kirinukiClick);
            MenuClass.tabMenuAdd["CameraKirinuki"].kirinukiBtn.buttonMode = true;
            MenuClass.tabMenuAdd["CameraPNG"].TabCameraBtn.addEventListener(MouseEvent.MOUSE_DOWN,cameraPngClick);
            MenuClass.tabMenuAdd["CameraPNG"].TabCameraBtn.buttonMode = true;
            MenuClass.tabMenuAdd["CameraPNG"].cameraAlpha.addEventListener(MouseEvent.MOUSE_DOWN,alphaClick);
            MenuClass.tabMenuAdd["CameraPNG"].cameraAlpha.buttonMode = true;
         }
         else if(param1 == "CameraGIF")
         {
            MenuClass.tabMenuAdd["CameraGIF"].TabCameraBtn.addEventListener(MouseEvent.MOUSE_DOWN,cameraGifClick);
            MenuClass.tabMenuAdd["CameraGIF"].TabCameraBtn.buttonMode = true;
         }
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.align = TextFormatAlign.CENTER;
         _loc2_.size = 14;
         _loc3_ = 0;
         while(_loc3_ <= 3)
         {
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].gotoAndStop(_loc3_ + 1);
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].btn0.addEventListener(MouseEvent.MOUSE_DOWN,txtBtnClick);
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].btn0.gotoAndStop(1);
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].btn0.buttonMode = true;
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].btn0.num = _loc3_;
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].btn0.num2 = 0;
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].btn1.addEventListener(MouseEvent.MOUSE_DOWN,txtBtnClick);
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].btn1.gotoAndStop(1);
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].btn1.buttonMode = true;
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].btn1.num = _loc3_;
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].btn1.num2 = 1;
            _loc4_ = new TextField();
            MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc3_].addChild(_loc4_);
            _loc4_.width = 40;
            _loc4_.height = 17;
            _loc4_.x = -7.5;
            _loc4_.y = -10;
            _loc4_.textColor = 0;
            _loc4_.text = "0";
            textAdd[_loc3_] = _loc4_;
            _loc4_.maxChars = 5;
            _loc4_.multiline = false;
            _loc4_.wordWrap = false;
            _loc4_.alwaysShowSelection = false;
            _loc4_.type = TextFieldType.INPUT;
            _loc4_.defaultTextFormat = _loc2_;
            _loc4_.name = String(_loc3_);
            _loc4_.addEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
            _loc4_.addEventListener(FocusEvent.FOCUS_OUT,focusOut);
            _loc4_.addEventListener(TextEvent.TEXT_INPUT,textInputHandler);
            _loc3_++;
         }
         textAdd[0].text = MenuClass.systemData["CameraKirinuki"]["_x"];
         textAdd[1].text = MenuClass.systemData["CameraKirinuki"]["_y"];
         textAdd[2].text = MenuClass.systemData["CameraKirinuki"]["_width"];
         textAdd[3].text = MenuClass.systemData["CameraKirinuki"]["_height"];
         MenuClass.kirinukiWaku = new Menu_Load.kirinukiClass();
         Main.stageVar.addChild(MenuClass.kirinukiWaku);
         if(MenuClass.systemData["CameraKirinuki"]["_check"])
         {
            kirinukiSet();
         }
         else
         {
            MenuClass.kirinukiWaku.visible = false;
         }
      }
      
      public static function MouseClick(param1:MouseEvent) : void
      {
         urlTextClickCheck = true;
         urlTextFocusCheck = true;
         textAdd[param1.target.name].selectable = true;
         textAdd[param1.target.name].restrict = "\\-0-9";
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,textMouseUp);
      }
      
      public static function textMouseUp(param1:MouseEvent) : void
      {
         urlTextClickCheck = false;
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,textMouseUp);
      }
      
      public static function focusOut(param1:FocusEvent) : void
      {
         urlTextFocusCheck = false;
         textAdd[param1.target.name].selectable = false;
         textAdd[param1.target.name].restrict = "";
      }
      
      public static function textInputHandler(param1:TextEvent) : void
      {
         if(param1.target.name == 0)
         {
            Main.stageVar.addEventListener(Event.ENTER_FRAME,text0Frame);
         }
         else if(param1.target.name == 1)
         {
            Main.stageVar.addEventListener(Event.ENTER_FRAME,text1Frame);
         }
         else if(param1.target.name == 2)
         {
            Main.stageVar.addEventListener(Event.ENTER_FRAME,text2Frame);
         }
         else if(param1.target.name == 3)
         {
            Main.stageVar.addEventListener(Event.ENTER_FRAME,text3Frame);
         }
      }
      
      public static function text0Frame(param1:Event) : void
      {
         MenuClass.systemData["CameraKirinuki"]["_x"] = Number(textAdd[0].text);
         MenuClass.photoSize[0] = MenuClass.systemData["CameraKirinuki"]["_x"];
         kirinukiSet();
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,text0Frame);
      }
      
      public static function text1Frame(param1:Event) : void
      {
         MenuClass.systemData["CameraKirinuki"]["_y"] = Number(textAdd[1].text);
         MenuClass.photoSize[1] = MenuClass.systemData["CameraKirinuki"]["_y"];
         kirinukiSet();
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,text1Frame);
      }
      
      public static function text2Frame(param1:Event) : void
      {
         MenuClass.systemData["CameraKirinuki"]["_width"] = Number(textAdd[2].text);
         MenuClass.photoSize[2] = MenuClass.systemData["CameraKirinuki"]["_width"];
         kirinukiSet();
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,text2Frame);
      }
      
      public static function text3Frame(param1:Event) : void
      {
         MenuClass.systemData["CameraKirinuki"]["_height"] = Number(textAdd[3].text);
         MenuClass.photoSize[3] = MenuClass.systemData["CameraKirinuki"]["_height"];
         kirinukiSet();
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,text3Frame);
      }
      
      public static function txtBtnClick(param1:MouseEvent) : void
      {
         param1.target.gotoAndStop(2);
         MenuAction(param1.target.num,param1.target.num2);
         param1.target.addEventListener(Event.ENTER_FRAME,NagaoshiEnterFrame);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,txtBtnMouseUp);
         param1.target.addEventListener(MouseEvent.MOUSE_UP,txtBtnMouseUp);
      }
      
      public static function txtBtnMouseUp(param1:MouseEvent) : void
      {
         param1.target.gotoAndStop(1);
         param1.target.removeEventListener(MouseEvent.MOUSE_UP,txtBtnMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,txtBtnMouseUp);
         param1.target.removeEventListener(Event.ENTER_FRAME,NagaoshiEnterFrame);
      }
      
      public static function MenuAction(param1:Number, param2:Number) : void
      {
         Nagaoshi_count = 0;
         var _loc3_:int = 1;
         if(MenuClass.spaceKeyPress)
         {
            _loc3_ = 10;
         }
         if(param1 == 0)
         {
            if(param2 == 0)
            {
               MenuClass.systemData["CameraKirinuki"]["_x"] += 1 * _loc3_;
            }
            else
            {
               MenuClass.systemData["CameraKirinuki"]["_x"] -= 1 * _loc3_;
            }
            textAdd[0].text = MenuClass.systemData["CameraKirinuki"]["_x"];
            MenuClass.photoSize[0] = MenuClass.systemData["CameraKirinuki"]["_x"];
         }
         else if(param1 == 1)
         {
            if(param2 == 0)
            {
               MenuClass.systemData["CameraKirinuki"]["_y"] += 1 * _loc3_;
            }
            else
            {
               MenuClass.systemData["CameraKirinuki"]["_y"] -= 1 * _loc3_;
            }
            textAdd[1].text = MenuClass.systemData["CameraKirinuki"]["_y"];
            MenuClass.photoSize[1] = MenuClass.systemData["CameraKirinuki"]["_y"];
         }
         else if(param1 == 2)
         {
            if(param2 == 0)
            {
               MenuClass.systemData["CameraKirinuki"]["_width"] += 1 * _loc3_;
            }
            else
            {
               MenuClass.systemData["CameraKirinuki"]["_width"] -= 1 * _loc3_;
            }
            textAdd[2].text = MenuClass.systemData["CameraKirinuki"]["_width"];
            MenuClass.photoSize[2] = MenuClass.systemData["CameraKirinuki"]["_width"];
         }
         else if(param1 == 3)
         {
            if(param2 == 0)
            {
               MenuClass.systemData["CameraKirinuki"]["_height"] += 1 * _loc3_;
            }
            else
            {
               MenuClass.systemData["CameraKirinuki"]["_height"] -= 1 * _loc3_;
            }
            textAdd[3].text = MenuClass.systemData["CameraKirinuki"]["_height"];
            MenuClass.photoSize[3] = MenuClass.systemData["CameraKirinuki"]["_height"];
         }
         kirinukiSet();
      }
      
      public static function kirinukiSet() : void
      {
         try
         {
            MenuClass.kirinukiWaku.visible = true;
            MenuClass.kirinukiWaku.sen1.width = MenuClass.photoSize[2];
            MenuClass.kirinukiWaku.sen3.width = MenuClass.photoSize[2];
            MenuClass.kirinukiWaku.sen0.height = MenuClass.photoSize[3];
            MenuClass.kirinukiWaku.sen2.height = MenuClass.photoSize[3];
            MenuClass.kirinukiWaku.sen0.x = MenuClass.photoSize[0] - MenuClass.kirinukiWaku.x;
            MenuClass.kirinukiWaku.sen1.x = MenuClass.photoSize[0] - MenuClass.kirinukiWaku.x;
            MenuClass.kirinukiWaku.sen3.x = MenuClass.photoSize[0] - MenuClass.kirinukiWaku.x;
            MenuClass.kirinukiWaku.sen2.x = MenuClass.photoSize[0] + MenuClass.photoSize[2] - MenuClass.kirinukiWaku.x;
            MenuClass.kirinukiWaku.sen0.y = MenuClass.photoSize[1] - MenuClass.kirinukiWaku.y;
            MenuClass.kirinukiWaku.sen1.y = MenuClass.photoSize[1] - MenuClass.kirinukiWaku.y;
            MenuClass.kirinukiWaku.sen2.y = MenuClass.photoSize[1] - MenuClass.kirinukiWaku.y;
            MenuClass.kirinukiWaku.sen3.y = MenuClass.photoSize[1] + MenuClass.photoSize[3] - MenuClass.kirinukiWaku.y;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function NagaoshiEnterFrame(param1:Event) : void
      {
         ++Nagaoshi_count;
         if(Nagaoshi_count >= 5)
         {
            MenuAction(param1.target.num,param1.target.num2);
         }
      }
      
      public static function clearFc() : void
      {
         MenuClass.ClickRock = false;
         MenuClass.tabMenuAdd["CameraKirinuki"].kirinukiBtn.gotoAndStop(1);
         try
         {
            MenuClass.kirinukiWaku.visible = false;
         }
         catch(myError:Error)
         {
         }
         try
         {
            Main.stageVar.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         }
         catch(myError:Error)
         {
         }
         try
         {
            Main.stageVar.removeChild(MenuClass.kCursor);
            MenuClass.kCursor = null;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function deleteFc(param1:String) : void
      {
         var _loc2_:int = 0;
         if(param1 == "EasyCameraPNG")
         {
            MenuClass.tabMenuAdd["EasyCameraPNG"].TabCameraBtn.removeEventListener(MouseEvent.MOUSE_DOWN,easyCameraPngClick);
            try
            {
               Main.stageVar.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            }
            catch(myError:Error)
            {
            }
         }
         else if(param1 == "CameraKirinuki")
         {
            try
            {
               _loc2_ = 0;
               while(_loc2_ <= 3)
               {
                  textAdd[_loc2_].removeEventListener(TextEvent.TEXT_INPUT,textInputHandler);
                  textAdd[_loc2_].removeEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
                  textAdd[_loc2_].removeEventListener(FocusEvent.FOCUS_OUT,focusOut);
                  MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc2_].btn0.removeEventListener(MouseEvent.MOUSE_DOWN,txtBtnClick);
                  MenuClass.tabMenuAdd["CameraKirinuki"]["txt" + _loc2_].removeChild(textAdd[_loc2_]);
                  _loc2_++;
               }
            }
            catch(myError:Error)
            {
            }
            urlTextFocusCheck = false;
            urlTextClickCheck = false;
            try
            {
               MenuClass.tabMenuAdd["CameraJPG"].TabCameraBtn.removeEventListener(MouseEvent.MOUSE_DOWN,cameraJpgClick);
               MenuClass.tabMenuAdd["CameraPNG"].TabCameraBtn.removeEventListener(MouseEvent.MOUSE_DOWN,cameraPngClick);
               MenuClass.tabMenuAdd["CameraKirinuki"].kirinukiBtn.removeEventListener(MouseEvent.MOUSE_DOWN,kirinukiClick);
               MenuClass.tabMenuAdd["CameraPNG"].cameraAlpha.removeEventListener(MouseEvent.MOUSE_DOWN,alphaClick);
            }
            catch(myError:Error)
            {
            }
            try
            {
               Main.stageVar.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            }
            catch(myError:Error)
            {
            }
            try
            {
               Main.stageVar.removeEventListener(MouseEvent.MOUSE_MOVE,MouseMove);
               Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp2);
            }
            catch(myError:Error)
            {
            }
            try
            {
               Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
               Main.stageVar.removeEventListener(Event.ENTER_FRAME,kirinukiEnterFrame);
            }
            catch(myError:Error)
            {
            }
            clearFc();
            try
            {
               Main.stageVar.removeChild(MenuClass.kirinukiWaku);
               MenuClass.kirinukiWaku = null;
            }
            catch(myError:Error)
            {
            }
         }
         else if(param1 == "CameraGIF")
         {
            MenuClass.tabMenuAdd["CameraGIF"].TabCameraBtn.removeEventListener(MouseEvent.MOUSE_DOWN,cameraGifClick);
            try
            {
               Main.stageVar.removeEventListener(Event.ENTER_FRAME,cameraGifEnterFrame);
            }
            catch(myError:Error)
            {
            }
            try
            {
               MenuClass.ErrorWindow.SaveBtn.removeEventListener(MouseEvent.MOUSE_DOWN,gifSaveMouseDown);
               MenuClass.ErrorWindow.CancelBtn.removeEventListener(MouseEvent.MOUSE_DOWN,gifCancelMouseDown);
            }
            catch(myError:Error)
            {
            }
            try
            {
               MenuClass.ErrorWindow.SaveBtn.removeEventListener(MouseEvent.MOUSE_UP,gifSaveMouseUp);
               Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,gifSaveMouseUp);
            }
            catch(myError:Error)
            {
            }
         }
      }
      
      public static function cameraBtn(param1:int) : void
      {
         if(param1 == 0)
         {
            MenuClass.cameraMode = 0;
            MenuClass.tabMenuAdd["CameraJPG"].TabCameraBtn.gotoAndStop(2);
         }
         else if(param1 == 1)
         {
            MenuClass.cameraMode = 1;
            MenuClass.tabMenuAdd["CameraPNG"].TabCameraBtn.gotoAndStop(2);
         }
         MenuClass.ClickRock = false;
         try
         {
            Main.stageVar.removeChild(MenuClass.kirinukiWaku);
            MenuClass.kirinukiWaku = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            Main.stageVar.removeChild(MenuClass.kCursor);
            MenuClass.kCursor = null;
         }
         catch(myError:Error)
         {
         }
         MenuClass.tabMenuAdd["CameraKirinuki"].kirinukiBtn.gotoAndStop(1);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd["CameraJPG"].TabCameraBtn.addEventListener(MouseEvent.MOUSE_UP,cameraMouseUp);
         MenuClass.tabMenuAdd["CameraPNG"].TabCameraBtn.addEventListener(MouseEvent.MOUSE_UP,cameraMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,cameraMouseUp);
      }
      
      public static function cameraJpgClick(param1:MouseEvent) : void
      {
         cameraBtn(0);
      }
      
      public static function cameraPngClick(param1:MouseEvent) : void
      {
         cameraBtn(1);
      }
      
      public static function easyCameraPngClick(param1:MouseEvent) : void
      {
         MenuClass.cameraMode = 1;
         MenuClass.tabMenuAdd["EasyCameraPNG"].TabCameraBtn.gotoAndStop(2);
         MenuClass.ClickRock = false;
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd["EasyCameraPNG"].TabCameraBtn.addEventListener(MouseEvent.MOUSE_UP,easyCameraMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,easyCameraMouseUp);
      }
      
      public static function cameraGifClick(param1:MouseEvent) : void
      {
         new Tab_PrevBtnFc(1);
         Main.stageVar.addEventListener(Event.ENTER_FRAME,cameraGifEnterFrame);
         MenuClass.bitmapDataList = new Array();
         MenuClass.ErrorWindow.gotoAndStop(4);
         MenuClass.ErrorWindow.visible = true;
         MenuClass.ErrorWindow.closeBtn.visible = false;
      }
      
      public static function cameraGifEnterFrame(param1:Event) : void
      {
         if(MenuClass.StoryTimeLineData.length - 1 > MenuClass.systemData["Story_Page"]["_menu"] && MenuClass.urlLoadCompCheck)
         {
            new Tab_CameraGif();
            MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
            MenuClass.systemData["Story_Page"]["_menu"] += 1;
            Tab_IEInOut.execute("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
         }
         else if(MenuClass.StoryTimeLineData.length - 1 == MenuClass.systemData["Story_Page"]["_menu"] && MenuClass.urlLoadCompCheck)
         {
            new Tab_CameraGif();
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,cameraGifEnterFrame);
            MenuClass.ErrorWindow.gotoAndStop(5);
            MenuClass.ErrorWindow.SaveBtn.buttonMode = true;
            MenuClass.ErrorWindow.CancelBtn.buttonMode = true;
            MenuClass.ErrorWindow.SaveBtn.addEventListener(MouseEvent.MOUSE_DOWN,gifSaveMouseDown);
            MenuClass.ErrorWindow.CancelBtn.addEventListener(MouseEvent.MOUSE_DOWN,gifCancelMouseDown);
         }
      }
      
      public static function gifSaveMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         MenuClass.ErrorWindow.SaveBtn.removeEventListener(MouseEvent.MOUSE_DOWN,gifSaveMouseDown);
         MenuClass.ErrorWindow.SaveBtn.addEventListener(MouseEvent.MOUSE_UP,gifSaveMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,gifSaveMouseUp);
         MenuClass.ErrorWindow.SaveBtn.gotoAndStop(2);
         MenuClass.ErrorWindow.CancelBtn.alpha = 0.5;
      }
      
      public static function gifSaveMouseUp(param1:MouseEvent) : void
      {
         saver = new AnimationGIFSaver();
         var _loc2_:Array = new Array(4000,2000,1000,500,300,200,150,100,70,50);
         var _loc3_:Date = new Date();
         var _loc4_:* = (_loc4_ = String(_loc3_.getFullYear())).substring(2,4);
         var _loc5_:String;
         if((_loc5_ = String(_loc3_.getMonth() + 1)).length == 1)
         {
            _loc5_ = "0" + _loc5_;
         }
         var _loc6_:String;
         if((_loc6_ = String(_loc3_.getDate())).length == 1)
         {
            _loc6_ = "0" + _loc6_;
         }
         _loc4_ = _loc4_ + _loc5_ + _loc6_ + "anime";
         saver.save(MenuClass.bitmapDataList,0,_loc2_[MenuClass.systemData["CameraGIFSpeed"]["_menu"]],_loc4_ + ".gif");
         new Tab_DressUPBtnFc(1);
         MenuClass.ErrorWindow.visible = false;
         MenuClass.ErrorWindow.SaveBtn.removeEventListener(MouseEvent.MOUSE_UP,gifSaveMouseUp);
         MenuClass.ErrorWindow.gotoAndStop(1);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,gifSaveMouseUp);
      }
      
      public static function gifCancelMouseDown(param1:MouseEvent) : void
      {
         new Tab_DressUPBtnFc(1);
         MenuClass.ErrorWindow.visible = false;
         MenuClass.ErrorWindow.SaveBtn.removeEventListener(MouseEvent.MOUSE_DOWN,gifSaveMouseDown);
         MenuClass.ErrorWindow.CancelBtn.removeEventListener(MouseEvent.MOUSE_DOWN,gifCancelMouseDown);
         MenuClass.ErrorWindow.gotoAndStop(1);
      }
      
      public static function easyCameraMouseUp(param1:MouseEvent) : void
      {
         new Tab_CameraJpg();
         MenuClass.tabMenuAdd["EasyCameraPNG"].TabCameraBtn.gotoAndStop(1);
         MenuClass.tabMenuAdd["EasyCameraPNG"].TabCameraBtn.removeEventListener(MouseEvent.MOUSE_UP,easyCameraMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,easyCameraMouseUp);
      }
      
      public static function cameraMouseUp(param1:MouseEvent) : void
      {
         new Tab_CameraJpg();
         if(MenuClass.cameraMode == 0)
         {
            MenuClass.tabMenuAdd["CameraJPG"].TabCameraBtn.gotoAndStop(1);
         }
         else if(MenuClass.cameraMode == 1)
         {
            MenuClass.tabMenuAdd["CameraPNG"].TabCameraBtn.gotoAndStop(1);
         }
         MenuClass.tabMenuAdd["CameraJPG"].TabCameraBtn.removeEventListener(MouseEvent.MOUSE_UP,cameraMouseUp);
         MenuClass.tabMenuAdd["CameraPNG"].TabCameraBtn.removeEventListener(MouseEvent.MOUSE_UP,cameraMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,cameraMouseUp);
      }
      
      public static function kirinukiClick(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         kirinukiWakuAdd();
         MenuClass.tabMenuAdd["CameraKirinuki"].kirinukiBtn.addEventListener(MouseEvent.MOUSE_UP,kirinukiUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,kirinukiUp);
      }
      
      public static function kirinukiWakuAdd() : void
      {
         if(MenuClass.ClickRock)
         {
            try
            {
               Main.stageVar.removeChild(MenuClass.kCursor);
               MenuClass.kCursor = null;
            }
            catch(myError:Error)
            {
            }
            MenuClass.tabMenuAdd["CameraKirinuki"].kirinukiBtn.gotoAndStop(1);
            Main.stageVar.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         }
         else
         {
            MenuClass.systemData["CameraKirinuki"]["_check"] = true;
            MenuClass.tabMenuAdd["CameraKirinuki"].checkBox.gotoAndStop(1);
            kirinukiSet();
            MenuClass.tabMenuAdd["CameraKirinuki"].kirinukiBtn.gotoAndStop(2);
         }
         MenuClass.ClickRock = !MenuClass.ClickRock;
      }
      
      public static function kirinukiUp(param1:MouseEvent) : void
      {
         if(MenuClass.ClickRock)
         {
            Main.stageVar.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            if(MenuClass.kCursor == null)
            {
               MenuClass.kCursor = new Menu_Load.kirinukiCursorClass();
               Main.stageVar.addChild(MenuClass.kCursor);
               MenuClass.kCursor.mouseChildren = false;
               MenuClass.kCursor.mouseEnabled = false;
            }
         }
         MenuClass.tabMenuAdd["CameraKirinuki"].kirinukiBtn.removeEventListener(MouseEvent.MOUSE_UP,kirinukiUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,kirinukiUp);
      }
      
      public static function alphaClick(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(MenuClass.alphaMode)
         {
            MenuClass.tabMenuAdd["CameraPNG"].cameraAlpha.gotoAndStop(1);
         }
         else
         {
            MenuClass.tabMenuAdd["CameraPNG"].cameraAlpha.gotoAndStop(2);
         }
         MenuClass.alphaMode = !MenuClass.alphaMode;
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         if(MenuClass._nowTabName != "FullScreen")
         {
            kirinukiX = Main.stageVar.mouseX;
            kirinukiY = Main.stageVar.mouseY;
            Main.stageVar.addEventListener(MouseEvent.MOUSE_MOVE,MouseMove);
            Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp2);
         }
         else
         {
            MenuClass._nowTabName = null;
         }
      }
      
      public static function MouseMove(param1:Event) : void
      {
         try
         {
            MenuClass.kirinukiWaku.sen1.width = 1;
            MenuClass.kirinukiWaku.sen3.width = 1;
            MenuClass.kirinukiWaku.sen0.height = 1;
            MenuClass.kirinukiWaku.sen2.height = 1;
            MenuClass.kirinukiWaku.x = kirinukiX;
            MenuClass.kirinukiWaku.y = kirinukiY;
         }
         catch(myError:Error)
         {
         }
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(Event.ENTER_FRAME,kirinukiEnterFrame);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_MOVE,MouseMove);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp2);
      }
      
      public static function kirinukiEnterFrame(param1:Event) : void
      {
         try
         {
            MenuClass.kirinukiWaku.sen0.x = 0;
            MenuClass.kirinukiWaku.sen0.y = 0;
            MenuClass.kirinukiWaku.sen1.x = 0;
            MenuClass.kirinukiWaku.sen1.y = 0;
            MenuClass.kirinukiWaku.sen2.y = 0;
            MenuClass.kirinukiWaku.sen3.x = 0;
            if(Main.stageVar.mouseX >= MenuClass.kirinukiWaku.x && Main.stageVar.mouseY >= MenuClass.kirinukiWaku.y)
            {
               MenuClass.kirinukiWaku.sen1.width = Main.stageVar.mouseX - MenuClass.kirinukiWaku.x;
               MenuClass.kirinukiWaku.sen3.width = Main.stageVar.mouseX - MenuClass.kirinukiWaku.x;
               MenuClass.kirinukiWaku.sen0.height = Main.stageVar.mouseY - MenuClass.kirinukiWaku.y;
               MenuClass.kirinukiWaku.sen2.height = Main.stageVar.mouseY - MenuClass.kirinukiWaku.y;
               MenuClass.kirinukiWaku.sen3.y = Main.stageVar.mouseY - MenuClass.kirinukiWaku.y;
               MenuClass.kirinukiWaku.sen2.x = Main.stageVar.mouseX - MenuClass.kirinukiWaku.x;
               textAdd[0].text = MenuClass.photoSize[0] = MenuClass.systemData["CameraKirinuki"]["_x"] = MenuClass.kirinukiWaku.x;
               textAdd[1].text = MenuClass.photoSize[1] = MenuClass.systemData["CameraKirinuki"]["_y"] = MenuClass.kirinukiWaku.y;
            }
            else if(Main.stageVar.mouseX <= MenuClass.kirinukiWaku.x && Main.stageVar.mouseY >= MenuClass.kirinukiWaku.y)
            {
               MenuClass.kirinukiWaku.sen1.width = MenuClass.kirinukiWaku.x - Main.stageVar.mouseX;
               MenuClass.kirinukiWaku.sen3.width = MenuClass.kirinukiWaku.x - Main.stageVar.mouseX;
               MenuClass.kirinukiWaku.sen1.scaleX *= -1;
               MenuClass.kirinukiWaku.sen3.scaleX *= -1;
               MenuClass.kirinukiWaku.sen0.height = Main.stageVar.mouseY - MenuClass.kirinukiWaku.y;
               MenuClass.kirinukiWaku.sen2.height = Main.stageVar.mouseY - MenuClass.kirinukiWaku.y;
               MenuClass.kirinukiWaku.sen3.y = Main.stageVar.mouseY - MenuClass.kirinukiWaku.y;
               MenuClass.kirinukiWaku.sen2.x = Main.stageVar.mouseX - MenuClass.kirinukiWaku.x;
               textAdd[0].text = MenuClass.photoSize[0] = MenuClass.systemData["CameraKirinuki"]["_x"] = MenuClass.kirinukiWaku.x - MenuClass.kirinukiWaku.sen1.width;
               textAdd[1].text = MenuClass.photoSize[1] = MenuClass.systemData["CameraKirinuki"]["_y"] = MenuClass.kirinukiWaku.y;
            }
            else if(Main.stageVar.mouseX >= MenuClass.kirinukiWaku.x && Main.stageVar.mouseY <= MenuClass.kirinukiWaku.y)
            {
               MenuClass.kirinukiWaku.sen1.width = Main.stageVar.mouseX - MenuClass.kirinukiWaku.x;
               MenuClass.kirinukiWaku.sen3.width = Main.stageVar.mouseX - MenuClass.kirinukiWaku.x;
               MenuClass.kirinukiWaku.sen0.height = MenuClass.kirinukiWaku.y - Main.stageVar.mouseY;
               MenuClass.kirinukiWaku.sen2.height = MenuClass.kirinukiWaku.y - Main.stageVar.mouseY;
               MenuClass.kirinukiWaku.sen0.scaleY *= -1;
               MenuClass.kirinukiWaku.sen2.scaleY *= -1;
               MenuClass.kirinukiWaku.sen3.y = Main.stageVar.mouseY - MenuClass.kirinukiWaku.y;
               MenuClass.kirinukiWaku.sen2.x = Main.stageVar.mouseX - MenuClass.kirinukiWaku.x;
               textAdd[0].text = MenuClass.photoSize[0] = MenuClass.systemData["CameraKirinuki"]["_x"] = MenuClass.kirinukiWaku.x;
               textAdd[1].text = MenuClass.photoSize[1] = MenuClass.systemData["CameraKirinuki"]["_y"] = MenuClass.kirinukiWaku.y - MenuClass.kirinukiWaku.sen0.height;
            }
            else if(Main.stageVar.mouseX <= MenuClass.kirinukiWaku.x && Main.stageVar.mouseY <= MenuClass.kirinukiWaku.y)
            {
               MenuClass.kirinukiWaku.sen1.width = MenuClass.kirinukiWaku.x - Main.stageVar.mouseX;
               MenuClass.kirinukiWaku.sen3.width = MenuClass.kirinukiWaku.x - Main.stageVar.mouseX;
               MenuClass.kirinukiWaku.sen0.height = MenuClass.kirinukiWaku.y - Main.stageVar.mouseY;
               MenuClass.kirinukiWaku.sen2.height = MenuClass.kirinukiWaku.y - Main.stageVar.mouseY;
               MenuClass.kirinukiWaku.sen0.scaleY *= -1;
               MenuClass.kirinukiWaku.sen2.scaleY *= -1;
               MenuClass.kirinukiWaku.sen1.scaleX *= -1;
               MenuClass.kirinukiWaku.sen3.scaleX *= -1;
               MenuClass.kirinukiWaku.sen3.y = Main.stageVar.mouseY - MenuClass.kirinukiWaku.y;
               MenuClass.kirinukiWaku.sen2.x = Main.stageVar.mouseX - MenuClass.kirinukiWaku.x;
               textAdd[0].text = MenuClass.photoSize[0] = MenuClass.systemData["CameraKirinuki"]["_x"] = MenuClass.kirinukiWaku.x - MenuClass.kirinukiWaku.sen1.width;
               textAdd[1].text = MenuClass.photoSize[1] = MenuClass.systemData["CameraKirinuki"]["_y"] = MenuClass.kirinukiWaku.y - MenuClass.kirinukiWaku.sen0.height;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         try
         {
            if(MenuClass._nowTabName != "FullScreen")
            {
               textAdd[2].text = MenuClass.photoSize[2] = MenuClass.systemData["CameraKirinuki"]["_width"] = MenuClass.kirinukiWaku.sen1.width;
               textAdd[3].text = MenuClass.photoSize[3] = MenuClass.systemData["CameraKirinuki"]["_height"] = MenuClass.kirinukiWaku.sen0.height;
            }
            else
            {
               MenuClass.kirinukiWaku.x = MenuClass.photoSize[0];
               MenuClass.kirinukiWaku.y = MenuClass.photoSize[1];
               MenuClass.kirinukiWaku.sen1.width = MenuClass.photoSize[2];
               MenuClass.kirinukiWaku.sen0.height = MenuClass.photoSize[3];
               MenuClass.kirinukiWaku.sen3.width = MenuClass.photoSize[2];
               MenuClass.kirinukiWaku.sen3.y = MenuClass.photoSize[3];
               MenuClass.kirinukiWaku.sen2.height = MenuClass.photoSize[3];
               MenuClass.kirinukiWaku.sen2.x = MenuClass.photoSize[2];
            }
         }
         catch(myError:Error)
         {
         }
         MenuClass._nowTabName = null;
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,kirinukiEnterFrame);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         try
         {
            Main.stageVar.removeEventListener(MouseEvent.MOUSE_MOVE,MouseMove);
            Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp2);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseUp2(param1:MouseEvent) : void
      {
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_MOVE,MouseMove);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp2);
      }
   }
}
