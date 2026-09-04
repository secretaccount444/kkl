package menu
{
   import flash.events.Event;
   import parameter.Dress_data;
   import parameter.Vibrator_data;
   import system.MeterPersent;
   import flash.geom.Rectangle; 
   
   public class EnterFrameClass
   {
      
      public static var charaEyeLeft:Array = new Array(null,null,null,null,null,null,null,null,null);
      
      public static var charaEyeRight:Array = new Array(null,null,null,null,null,null,null,null,null);
      
      public static var charaEyeLeftCheck:Array = new Array(null,null,null,null,null,null,null,null,null);
      
      public static var charaEyeRightCheck:Array = new Array(null,null,null,null,null,null,null,null,null);
      
      public static var charaEyeLeftClick:Array = [[false,0],[false,0],[false,0],[false,0],[false,0],[false,0],[false,0],[false,0],[false,0]];
      
      public static var charaEyeRightClick:Array = [[false,0],[false,0],[false,0],[false,0],[false,0],[false,0],[false,0],[false,0],[false,0]];
      
      public static var EmotionTest:Array = new Array(false,false,false,false,false,false,false,false,false);
      
      public static var ballX:int = 10;
      
      public static var ballY:int = -10;
      
      public static var hitFlag:int = 0;
       
      public static var PrevVisible:Array = new Array(false,false,false,false,false,false,false,false,false);
      
      private var tateYure:Array;
      
      private var tateyokoYure:Array;
      
      private var yokoYure:Array;
      
      private var ueYose:Array;
      
      private var NippleMove:Array;
      
      private var SituationNum:int;
      
      private var EmotionNum:int;
      
      private var KandoNum:int;
      
      private var KanjyouNum:int;
      
      public function EnterFrameClass()
      {
         this.tateYure = new Array(9,10,11,12,13,12,6,15,17,16,14,9,6);
         this.tateyokoYure = new Array(9,10,11,12,13,12,10,6,15,17,16,14,6,5,4,3,4,5,6,7,8,7,6);
         this.yokoYure = new Array(3,4,5,6,7,8,7,6,5,6);
         this.ueYose = new Array(9,10,11,12,13);
         this.NippleMove = [[4,5,4,1,3,2,3],[3,2,3,1,4,5,4],[6,7,6,1,8,9,8],[8,9,8,1,6,7,6],[4,5,4,1,3,2,3,1,8,9,8,1,6,7,6]];
         super();
         Main.stageVar.addEventListener(Event.ENTER_FRAME,this.Enter);
      }
      
      private function muneMove(param1:String, param2:int, param3:int) : void
      {
         if(MenuClass.charaData[param2]["BreastMove"]["_mode"][param3] != param1)
         {
            if(MenuClass.charaData[param2]["EmotionManualAuto"]["_check"])
            {
               new Tab_EmotionCheck(param2,2);
               MenuClass.charaData[param2]["HeartPlus"]["_meter"] += 0.2 + MenuClass.KandoSetNum;
               if(MenuClass.charaData[param2]["HeartPlus"]["_meter"] <= 0)
               {
                  MenuClass.charaData[param2]["HeartPlus"]["_meter"] = 0;
               }
            }
            MenuClass.charaData[param2]["BreastMove"]["_mode"][param3] = param1;
            MenuClass.charaData[param2]["BreastMove"]["_count"][param3] = 0;
         }
      }
      
      private function nippleMove(param1:int, param2:int, param3:int) : void
      {
         if(MenuClass.charaData[param2]["NippleMove"]["_mode"][param3] != param1)
         {
            if(MenuClass.charaData[param2]["EmotionManualAuto"]["_check"])
            {
               new Tab_EmotionCheck(param2,2);
               MenuClass.charaData[param2]["HeartPlus"]["_meter"] += 0.3 + MenuClass.KandoSetNum;
               if(MenuClass.charaData[param2]["HeartPlus"]["_meter"] <= 0)
               {
                  MenuClass.charaData[param2]["HeartPlus"]["_meter"] = 0;
               }
            }
            MenuClass.charaData[param2]["NippleMove"]["_mode"][param3] = param1;
            MenuClass.charaData[param2]["NippleMove"]["_count"][param3] = 0;
         }
      }
      
      private function Enter(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:* = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Array = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:Array = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Boolean = false;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Array = null;
         var _loc24_:Array = null;
         var _loc25_:Object = null;
         var _loc26_:int = 0;
         var _loc27_:Number = NaN;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:int = 0;
         var _loc31_:Object = null;
         var _loc32_:int = 0;
         var _loc33_:int = 0;
         var _loc34_:Number = NaN;
         var _loc35_:int = 0;
         if(MenuClass.spaceKeyPress || Main.mainWindow.scaleX < 1)
         {
            if(Stage_MoveClass.MouseUpCheck && MenuClass.stageMoveCheck && MenuClass._nowWindowName == null && !MenuClass.StoryMode && !SystemText2.textFocusCheck && !Tab_URLTextClass.urlTextFocusCheck && !Tab_CameraClass.urlTextFocusCheck)
            {
               Main.mainWindow.x = Main.stageVar.mouseX - Stage_MoveClass.beforeMouseX + Stage_MoveClass.beforeX;
               Main.mainWindow.y = Main.stageVar.mouseY - Stage_MoveClass.beforeMouseY + Stage_MoveClass.beforeY;
               MenuClass.systemData["Zoom"]["_x"] = Math.floor(Main.mainWindow.x);
               MenuClass.systemData["Zoom"]["_y"] = Math.floor(Main.mainWindow.y);
            }
         }
         else if(Stage_MoveClass.MouseUpCheck && MenuClass.stageMoveCheck && MenuClass._nowWindowName == null && !MenuClass.StoryMode && !SystemText2.textFocusCheck && !Tab_URLTextClass.urlTextFocusCheck && !Tab_CameraClass.urlTextFocusCheck)
         {
            if(Main.mainWindow.scaleX != 1)
            {
               Main.mainWindow.x = Main.stageVar.mouseX - Stage_MoveClass.beforeMouseX + Stage_MoveClass.beforeX;
               Main.mainWindow.y = Main.stageVar.mouseY - Stage_MoveClass.beforeMouseY + Stage_MoveClass.beforeY;
               if(MenuClass.spaceKeyPress == false && Main.mainWindow.scaleX != 1)
               {
                  _loc8_ = Main.mainMask.width - 800;
                  if(Main.mainWindow.x >= 0)
                  {
                     Main.mainWindow.x = 0;
                  }
                  else if(Main.mainWindow.x <= -_loc8_)
                  {
                     Main.mainWindow.x = -_loc8_;
                  }
                  _loc8_ = Main.mainMask.height - 600;
                  if(Main.mainWindow.y >= 0)
                  {
                     Main.mainWindow.y = 0;
                  }
                  else if(Main.mainWindow.y <= -_loc8_)
                  {
                     Main.mainWindow.y = -_loc8_;
                  }
               }
               MenuClass.systemData["Zoom"]["_x"] = Math.floor(Main.mainWindow.x);
               MenuClass.systemData["Zoom"]["_y"] = Math.floor(Main.mainWindow.y);
            }
            else
            {
               Main.mainWindow.x = 0;
               Main.mainWindow.y = 0;
               MenuClass.systemData["Zoom"]["_x"] = Math.floor(Main.mainWindow.x);
               MenuClass.systemData["Zoom"]["_y"] = Math.floor(Main.mainWindow.y);
            }
         }
         if(MenuClass._nowHeaderName == "Tool")
         {
            if(MenuClass.ClickRock)
            {
               try
               {
                  MenuClass.kCursor.x = Main.stageVar.mouseX;
                  MenuClass.kCursor.y = Main.stageVar.mouseY;
               }
               catch(myError:Error)
               {
               }
            }
         }
         if(MenuClass.firstLoadEmotionCount < 2)
         {
            MenuClass.firstLoadEmotionCount += 1;
         }
         if(MenuClass.HideIconCheck && MenuClass._nowHeaderName == null)
         {
            if(MenuClass.hederSwitchCheck && Main.stageVar.mouseY >= 555 || !MenuClass.hederSwitchCheck && Main.stageVar.mouseY <= 45)
            {
               if(HeaderbtnClass.headerMenu.alpha == 0)
               {
                  for(_loc7_ in MenuClass.headerAdd)
                  {
                     if(_loc7_ != "null")
                     {
                        MenuClass.headerAdd[_loc7_].alpha = 100;
                     }
                  }
                  HeaderbtnClass.headerMenu.alpha = 100;
               }
            }
            else if(HeaderbtnClass.headerMenu.alpha == 100)
            {
               for(_loc7_ in MenuClass.headerAdd)
               {
                  if(_loc7_ != "null")
                  {
                     MenuClass.headerAdd[_loc7_].alpha = 0;
                  }
               }
               HeaderbtnClass.headerMenu.alpha = 0;
            }
         }
         if(Tab_BreakBlockBtn.breakblockMode == 2)
         {
            if(Main.stageVar.stageWidth <= Tab_BreakBlockBtn.ball.x || 0 >= Tab_BreakBlockBtn.ball.x)
            {
               if(ballX >= 0)
               {
                  Tab_BreakBlockBtn.ball.x -= 10;
               }
               else
               {
                  Tab_BreakBlockBtn.ball.x += 10;
               }
               ballX *= -1;
            }
            if(Main.stageVar.stageHeight <= Tab_BreakBlockBtn.ball.y - 100)
            {
               Tab_BreakBlockBtn.ball.y = Tab_BreakBlockBtn.blockrod.y - 20;
               Tab_BreakBlockBtn.ball.x = Tab_BreakBlockBtn.blockrod.x;
               Tab_BreakBlockBtn.breakblockMode = 1;
               ballX = 10;
               ballY = -10;
            }
            else if(0 >= Tab_BreakBlockBtn.ball.y)
            {
               ballY *= -1;
            }
            new HittestClass();
         }
         
         // var quarterWidth = uint(Main.stageVar.stageWidth / 4);
         // var quarterHeight = uint(Main.stageVar.stageHeight / 4);
         // var stageViewBounds = new Rectangle(-quarterWidth, -quarterHeight, Main.stageVar.stageWidth + quarterWidth, Main.stageVar.stageHeight + quarterHeight);

         _loc2_ = 0;
         while(_loc2_ <= MenuClass._characterNum)
         {
            if((_loc9_ = MenuClass.charaData[_loc2_])["SelectCharacter"]["_visible"][0])
            {
               // var curCharaSprite = MenuClass.charaAddDepth[_loc2_];
               // var curBounds = curCharaSprite.getBounds(Main.stageVar);
               // if (stageViewBounds.intersects(curBounds)) {
               //    if (!PrevVisible[_loc2_]) {
               //       trace(_loc2_ + " is now visible");
               //    }
               //    PrevVisible[_loc2_] = true;
               //    curCharaSprite.visible = true;
               // } else {
               //    if (PrevVisible[_loc2_]) {
               //       trace(_loc2_ + " is now off-screen");
               //    }
               //    PrevVisible[_loc2_] = false;
               //    curCharaSprite.visible = false;
               // }

               _loc10_ = MenuClass.charaAdd[_loc2_];
               if(Tab_BreakBlockBtn.breakblockMode == 2)
               {
                  new HittestCharaClass(_loc2_);
               }
               if(_loc9_["Vibrator"]["_visible"][0])
               {
                  _loc18_ = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][0];
                  _loc19_ = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][1];
                  if(_loc18_ != _loc10_.dou.dou_shitaHuku.s.b_s_main0_kage1.currentFrame)
                  {
                     _loc10_.dou.dou_shitaHuku.s.b_s_main0_kage1.gotoAndStop(_loc18_);
                     _loc10_.dou.dou_shitaHuku.s.b_s_main0_kage2.gotoAndStop(_loc18_);
                     _loc10_.dou.dou_shitaHuku.s.b_s_main0_color1.gotoAndStop(_loc18_);
                     _loc10_.dou.dou_shitaHuku.s.b_s_main0_color2.gotoAndStop(_loc18_);
                     _loc10_.dou.dou_shitaHuku.s.b_s_hida0_color1.gotoAndStop(_loc18_);
                     _loc10_.dou.dou_shitaHuku.s.b_s_hida0_kage1.gotoAndStop(_loc18_);
                  }
                  if(_loc19_ != _loc10_.dou.dou_shitaHuku.s.b_s_main1_kage1.currentFrame)
                  {
                     _loc10_.dou.dou_shitaHuku.s.b_s_main1_kage1.gotoAndStop(_loc19_);
                     _loc10_.dou.dou_shitaHuku.s.b_s_main1_kage2.gotoAndStop(_loc19_);
                     _loc10_.dou.dou_shitaHuku.s.b_s_main1_color1.gotoAndStop(_loc19_);
                     _loc10_.dou.dou_shitaHuku.s.b_s_main1_color2.gotoAndStop(_loc19_);
                     _loc10_.dou.dou_shitaHuku.s.b_s_hida1_color1.gotoAndStop(_loc19_);
                     _loc10_.dou.dou_shitaHuku.s.b_s_hida1_kage1.gotoAndStop(_loc19_);
                  }
                  if(_loc19_ > _loc18_ && _loc19_ != _loc10_.dou.dou_shitaHuku.s.b_s_kuri.currentFrame)
                  {
                     _loc10_.dou.dou_shitaHuku.s.b_s_kuri.gotoAndStop(_loc19_);
                  }
                  else if(_loc18_ != _loc10_.dou.dou_shitaHuku.s.b_s_kuri.currentFrame)
                  {
                     _loc10_.dou.dou_shitaHuku.s.b_s_kuri.gotoAndStop(_loc18_);
                  }
                  if(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][9] != _loc10_.dou.dou_shitaHuku.s.chitu.currentFrame)
                  {
                     _loc10_.dou.dou_shitaHuku.s.chitu.gotoAndStop(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][9]);
                  }
                  _loc20_ = true;
                  if(isNaN(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][2]))
                  {
                     _loc20_ = false;
                  }
                  else
                  {
                     _loc22_ = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][2];
                  }
                  new MeterPersent(0,2,"VibratorScale",_loc2_);
                  _loc21_ = MeterPersent.MeterPersentNum;
                  _loc4_ = 0;
                  while(_loc4_ <= 2)
                  {
                     _loc3_ = 0;
                     while(_loc3_ <= 1)
                     {
                        try
                        {
                           if(_loc22_ != _loc10_.vibrator.vibrator.item["color" + _loc4_ + "_" + _loc3_].currentFrame && _loc20_)
                           {
                              _loc10_.vibrator.vibrator.item["color" + _loc4_ + "_" + _loc3_].gotoAndStop(_loc22_);
                           }
                           _loc10_.vibrator.vibrator.item["color" + _loc4_ + "_" + _loc3_].x = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][3];
                           _loc10_.vibrator.vibrator.item["color" + _loc4_ + "_" + _loc3_].y = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][4] + Dress_data.SujiData[_loc9_["s"]["_menu"]]["_vibrator"] + _loc21_;
                           _loc10_.vibrator.vibrator.item["color" + _loc4_ + "_" + _loc3_].rotation = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][5];
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           if(_loc22_ != _loc10_.vibrator.vibrator.item["kage" + _loc4_ + "_" + _loc3_].currentFrame && _loc20_)
                           {
                              _loc10_.vibrator.vibrator.item["kage" + _loc4_ + "_" + _loc3_].gotoAndStop(_loc22_);
                           }
                           _loc10_.vibrator.vibrator.item["kage" + _loc4_ + "_" + _loc3_].x = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][3];
                           _loc10_.vibrator.vibrator.item["kage" + _loc4_ + "_" + _loc3_].y = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][4] + Dress_data.SujiData[_loc9_["s"]["_menu"]]["_vibrator"] + _loc21_;
                           _loc10_.vibrator.vibrator.item["kage" + _loc4_ + "_" + _loc3_].rotation = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][5];
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc3_++;
                     }
                     try
                     {
                        if(_loc22_ != _loc10_.vibrator.vibrator.item["obj" + _loc4_].currentFrame && _loc20_)
                        {
                           _loc10_.vibrator.vibrator.item["obj" + _loc4_].gotoAndStop(_loc22_);
                        }
                        _loc10_.vibrator.vibrator.item["obj" + _loc4_].x = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][3];
                        _loc10_.vibrator.vibrator.item["obj" + _loc4_].y = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][4] + Dress_data.SujiData[_loc9_["s"]["_menu"]]["_vibrator"] + _loc21_;
                        _loc10_.vibrator.vibrator.item["obj" + _loc4_].rotation = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][5];
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        if(_loc22_ != _loc10_.vibrator.vibrator.item["sen" + _loc4_].currentFrame && _loc20_)
                        {
                           _loc10_.vibrator.vibrator.item["sen" + _loc4_].gotoAndStop(_loc22_);
                        }
                        _loc10_.vibrator.vibrator.item["sen" + _loc4_].x = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][3];
                        _loc10_.vibrator.vibrator.item["sen" + _loc4_].y = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][4] + Dress_data.SujiData[_loc9_["s"]["_menu"]]["_vibrator"] + _loc21_;
                        _loc10_.vibrator.vibrator.item["sen" + _loc4_].rotation = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][5];
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc4_++;
                  }
                  if(Dress_data.VibratorData[_loc9_["Vibrator"]["_menu"]]["sen"] == 1)
                  {
                     try
                     {
                        if(_loc22_ != _loc10_.vibrator.vibrator.item.senMask.currentFrame && _loc20_)
                        {
                           _loc10_.vibrator.vibrator.item.senMask.gotoAndStop(_loc22_);
                        }
                        _loc10_.vibrator.vibrator.item.senMask.x = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][3];
                        _loc10_.vibrator.vibrator.item.senMask.y = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][4] + Dress_data.SujiData[_loc9_["s"]["_menu"]]["_vibrator"] + _loc21_;
                        _loc10_.vibrator.vibrator.item.senMask.rotation = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][5];
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  try
                  {
                     _loc10_.vibrator.vibrator.item.mosaic.x = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][3];
                     _loc10_.vibrator.vibrator.item.mosaic.y = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][4] + Dress_data.SujiData[_loc9_["s"]["_menu"]]["_vibrator"] + _loc21_;
                     _loc10_.vibrator.vibrator.item.mosaic.rotation = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][5];
                  }
                  catch(myError:Error)
                  {
                  }
                  if(_loc9_["VibratorMove"]["_turn2"] && _loc9_["Vibrator"]["_visible"][0])
                  {
                     _loc10_.y = Math.cos(_loc10_.rotation * Math.PI / 180) * Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][10];
                     if(!_loc9_["CharaFilterEmotion"]["_check"])
                     {
                        MenuClass.charaAddDepth[_loc2_].charaMae.y = Math.cos(_loc10_.rotation * Math.PI / 180) * Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][10];
                     }
                     new Move_BodyX(_loc2_);
                     if(_loc9_["BreastManualAuto"]["_check"])
                     {
                        if(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][11] == 1)
                        {
                           _loc9_["BreastMove"]["_mode"][0] = "tateYure";
                           _loc9_["BreastMove"]["_count"][0] = 0;
                           _loc9_["BreastMove"]["_mode"][1] = "tateYure";
                           _loc9_["BreastMove"]["_count"][1] = 0;
                        }
                     }
                  }
                  else if(_loc10_.y != 1)
                  {
                     _loc10_.y = 1;
                     if(!_loc9_["CharaFilterEmotion"]["_check"])
                     {
                        MenuClass.charaAddDepth[_loc2_].charaMae.y = 1;
                     }
                     new Move_BodyX(_loc2_);
                  }
                  _loc9_["VibratorMove"]["_mosaicMode"] = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][6];
                  if(_loc9_["VibratorSpeed"]["_menu"] != 0)
                  {
                     if((_loc23_ = new Array(Move_DataClass.AshiFrameData[_loc9_["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[_loc9_["Ashi2"]["_menu"]]["depth"]))[0] == 0 && _loc23_[1] == 0 || MenuClass.systemData["Mosaic"]["_menu"] != 0)
                     {
                        try
                        {
                           if(_loc10_.mosaic.mosaic.color0_0.currentFrame != 1)
                           {
                              _loc10_.mosaic.mosaic.color0_0.gotoAndStop(1);
                           }
                           _loc10_.mosaic.mosaic.color0_0.y = 0;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else if(_loc9_["VibratorMove"]["_mosaicMode"] == 0)
                     {
                        try
                        {
                           if(_loc10_.mosaic.mosaic.color0_0.currentFrame != 2)
                           {
                              _loc10_.mosaic.mosaic.color0_0.gotoAndStop(2);
                           }
                           _loc10_.mosaic.mosaic.color0_0.y = 1.05;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else
                     {
                        try
                        {
                           if(_loc10_.mosaic.mosaic.color0_0.currentFrame != 1)
                           {
                              _loc10_.mosaic.mosaic.color0_0.gotoAndStop(1);
                           }
                           _loc10_.mosaic.mosaic.color0_0.y = -5;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     if(_loc9_["VibratorMove"]["_count"] == Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]].length - 1)
                     {
                        if(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][0][0] == 0)
                        {
                           _loc9_["VibratorMove"]["_count"] = 0;
                        }
                        else
                        {
                           _loc9_["VibratorMove"]["_return"] = 1;
                        }
                     }
                     if(_loc9_["VibratorMove"]["_turn"] == 1)
                     {
                        _loc26_ = 0;
                        _loc27_ = 0;
                        if(!(!_loc9_["Nawa"]["_visible"][0] && !_loc9_["SG"]["_visible"][0] && !_loc9_["Pantu"]["_visible"][0] && !_loc9_["Zubon"]["_visible"][0] && (!_loc9_["Tights"]["_visible"][0] || Dress_data.TightsData[_loc9_["Tights"]["_menu"]]["mosaic"] == 2)))
                        {
                           _loc26_ = 1;
                           _loc3_ = 0;
                           while(_loc3_ < Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]].length)
                           {
                              if(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc3_][0][1] != 1)
                              {
                                 break;
                              }
                              _loc27_ += 1;
                              _loc3_++;
                           }
                        }
                        if(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][13])
                        {
                           _loc28_ = Math.floor(Math.random() * 3);
                           try
                           {
                              if(_loc28_ == 1 || Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][13][0] == "kakutei")
                              {
                                 _loc28_ = Math.floor(Math.random() * (Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][13].length - 1)) + 1;
                                 if(_loc26_ == 1 && Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][13][_loc28_][0] < _loc27_ || _loc26_ == 0)
                                 {
                                    _loc29_ = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][13][_loc28_][1];
                                    _loc9_["VibratorMove"]["_menu"] = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][13][_loc28_][0];
                                    _loc9_["VibratorMove"]["_count"] = _loc29_;
                                    _loc28_ = Math.floor(Math.random() * 2);
                                    _loc9_["VibratorMove"]["_return"] = _loc28_;
                                    if(isNaN(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][2]))
                                    {
                                       _loc4_ = 0;
                                       while(_loc4_ <= 2)
                                       {
                                          _loc3_ = 0;
                                          while(_loc3_ <= 1)
                                          {
                                             try
                                             {
                                                _loc10_.vibrator.vibrator.item["color" + _loc4_ + "_" + _loc3_].gotoAndPlay(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][2]);
                                             }
                                             catch(myError:Error)
                                             {
                                             }
                                             try
                                             {
                                                _loc10_.vibrator.vibrator.item["kage" + _loc4_ + "_" + _loc3_].gotoAndPlay(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][2]);
                                             }
                                             catch(myError:Error)
                                             {
                                             }
                                             _loc3_++;
                                          }
                                          try
                                          {
                                             _loc10_.vibrator.vibrator.item["obj" + _loc4_].gotoAndPlay(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][2]);
                                          }
                                          catch(myError:Error)
                                          {
                                          }
                                          try
                                          {
                                             _loc10_.vibrator.vibrator.item["sen" + _loc4_].gotoAndPlay(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][2]);
                                          }
                                          catch(myError:Error)
                                          {
                                          }
                                          _loc4_++;
                                       }
                                    }
                                    if(MenuClass._nowHeaderName == "Vibrator")
                                    {
                                       new Tab_TextNum0Class("VibratorMove","Vibrator",9);
                                    }
                                 }
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                     }
                     _loc24_ = new Array(0,1,2,4,8,16);
                     if(_loc9_["VibratorSpeed"]["_turn"] == 1)
                     {
                        if(MenuClass.vibratorSpeedCount[_loc2_] == 20)
                        {
                           if((_loc30_ = Math.floor(Math.random() * 10) + 1) <= 5)
                           {
                              _loc9_["VibratorSpeed"]["_menu"] = _loc30_;
                              if(MenuClass._nowHeaderName == "Vibrator")
                              {
                                 new Tab_TextNum0Class("VibratorSpeed","Vibrator",10);
                              }
                           }
                           MenuClass.vibratorSpeedCount[_loc2_] = 0;
                        }
                        else
                        {
                           ++MenuClass.vibratorSpeedCount[_loc2_];
                        }
                     }
                     if(_loc9_["VibratorMove"]["_return"] == 0)
                     {
                        _loc9_["VibratorMove"]["_count"] += _loc24_[_loc9_["VibratorSpeed"]["_menu"]];
                        if(_loc9_["VibratorMove"]["_count"] >= Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]].length - 1)
                        {
                           _loc9_["VibratorMove"]["_count"] = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]].length - 1;
                        }
                     }
                     else if(_loc9_["VibratorMove"]["_return"] == 1)
                     {
                        _loc9_["VibratorMove"]["_count"] -= _loc24_[_loc9_["VibratorSpeed"]["_menu"]];
                        if(_loc9_["VibratorMove"]["_count"] <= 1)
                        {
                           _loc9_["VibratorMove"]["_count"] = 1;
                        }
                        if(_loc9_["VibratorMove"]["_count"] == 1)
                        {
                           _loc9_["VibratorMove"]["_return"] = 0;
                        }
                     }
                     if(_loc9_["VibratorMove"]["_menu"] != MenuClass.vibratorMoveBefore[_loc2_])
                     {
                        if(Dress_data.VibratorData[_loc9_["Vibrator"]["_menu"]]["sen"] == 1)
                        {
                           _loc10_.vibrator.senMc.mask = _loc10_.vibrator.vibrator.item.senMask;
                           if(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][7] != _loc10_.vibrator.senMc.currentFrame)
                           {
                              _loc10_.vibrator.senMc.gotoAndStop(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][7]);
                           }
                        }
                        if(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][7] != _loc10_.vibrator.senMc.currentFrame)
                        {
                           _loc10_.vibrator.maskMc.gotoAndStop(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][7]);
                        }
                        MenuClass.vibratorMoveBefore[_loc2_] = _loc9_["VibratorMove"]["_menu"];
                     }
                     if(_loc9_["EmotionManualAuto"]["_check"])
                     {
                        _loc31_ = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][8];
                        if(MenuClass.beforeEmotionNum[_loc2_] != _loc31_)
                        {
                           if(_loc31_ == "r1" || _loc31_ == "r2" || _loc31_ == "r3")
                           {
                              if(MenuClass.EmotionRandom[_loc2_] != 0)
                              {
                                 MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 3) + 1;
                                 if(_loc31_ == "r1")
                                 {
                                    if(_loc9_["VibratorSpeed"]["_menu"] == 1)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 3.7 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 2)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 2.2 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 3)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 1.4 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 4)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 1.1 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 5)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 0.9 + MenuClass.KandoSetNum;
                                    }
                                 }
                                 else if(_loc31_ == "r2")
                                 {
                                    if(_loc9_["VibratorSpeed"]["_menu"] == 1)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 3.1 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 2)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 1.8 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 3)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 1.2 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 4)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 0.9 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 5)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 0.7 + MenuClass.KandoSetNum;
                                    }
                                 }
                                 else if(_loc31_ == "r3")
                                 {
                                    if(_loc9_["VibratorSpeed"]["_menu"] == 1)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 2.1 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 2)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 1.3 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 3)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 0.8 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 4)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 0.6 + MenuClass.KandoSetNum;
                                    }
                                    else if(_loc9_["VibratorSpeed"]["_menu"] == 5)
                                    {
                                       _loc9_["HeartPlus"]["_meter"] += 0.5 + MenuClass.KandoSetNum;
                                    }
                                 }
                                 ++_loc9_["sClick"]["_count"];
                                 if(_loc9_["sClick"]["_count"] >= 4)
                                 {
                                    _loc9_["s"]["_sClick"] += 1;
                                    _loc9_["sClick"]["_count"] = 0;
                                 }
                                 new Chara_s(_loc2_,"huku");
                                 new Tab_EmotionCheck(_loc2_,MenuClass.EmotionRandom[_loc2_]);
                              }
                              if(_loc31_ == "r1")
                              {
                                 if(_loc9_["VibratorSpeed"]["_menu"] == 1)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 14);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 2)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 12);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 3)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 10);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 4)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 8);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 5)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 6);
                                 }
                              }
                              else if(_loc31_ == "r2")
                              {
                                 if(_loc9_["VibratorSpeed"]["_menu"] == 1)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 12);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 2)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 10);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 3)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 8);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 4)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 6);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 5)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 4);
                                 }
                              }
                              else if(_loc31_ == "r3")
                              {
                                 if(_loc9_["VibratorSpeed"]["_menu"] == 1)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 10);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 2)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 8);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 3)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 6);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 4)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 4);
                                 }
                                 else if(_loc9_["VibratorSpeed"]["_menu"] == 5)
                                 {
                                    MenuClass.EmotionRandom[_loc2_] = Math.floor(Math.random() * 2);
                                 }
                              }
                           }
                           else if(_loc31_ != 0)
                           {
                              _loc9_["HeartPlus"]["_meter"] += 0.8 + MenuClass.KandoSetNum;
                              ++_loc9_["sClick"]["_count"];
                              if(_loc9_["sClick"]["_count"] >= 4)
                              {
                                 _loc9_["s"]["_sClick"] += 1;
                                 _loc9_["sClick"]["_count"] = 0;
                              }
                              new Chara_s(_loc2_,"huku");
                              new Tab_EmotionCheck(_loc2_,int(_loc31_));
                           }
                        }
                        MenuClass.beforeEmotionNum[_loc2_] = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][8];
                     }
                     if((_loc25_ = Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][12]) != 0)
                     {
                        new SoundCharaFc(_loc2_,_loc25_,1);
                     }
                     if(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][0][2] != 0)
                     {
                        _loc9_["VibratorMove"]["_roop"] += 1;
                        if(_loc9_["VibratorMove"]["_roop"] == 1)
                        {
                           new SoundCharaFc(_loc2_,Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][0][2],Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][0][3]);
                        }
                        else if(_loc9_["VibratorMove"]["_roop"] == Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][0][4])
                        {
                           _loc9_["VibratorMove"]["_roop"] = 0;
                        }
                     }
                     else
                     {
                        _loc9_["VibratorMove"]["_roop"] = 0;
                     }
                  }
                  if(isNaN(Vibrator_data.vibratorData[_loc9_["Vibrator"]["_menu"]][_loc9_["VibratorMove"]["_menu"]][_loc9_["VibratorMove"]["_count"]][2]))
                  {
                     if(_loc9_["VibratorSpeed"]["_menu"] == 0)
                     {
                        _loc4_ = 0;
                        while(_loc4_ <= 2)
                        {
                           _loc3_ = 0;
                           while(_loc3_ <= 1)
                           {
                              try
                              {
                                 _loc10_.vibrator.vibrator.item["color" + _loc4_ + "_" + _loc3_].stop();
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 _loc10_.vibrator.vibrator.item["kage" + _loc4_ + "_" + _loc3_].stop();
                              }
                              catch(myError:Error)
                              {
                              }
                              _loc3_++;
                           }
                           try
                           {
                              _loc10_.vibrator.vibrator.item["obj" + _loc4_].stop();
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              _loc10_.vibrator.vibrator.item["sen" + _loc4_].stop();
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc4_++;
                        }
                     }
                     else
                     {
                        _loc4_ = 0;
                        while(_loc4_ <= 2)
                        {
                           _loc3_ = 0;
                           while(_loc3_ <= 1)
                           {
                              try
                              {
                                 _loc10_.vibrator.vibrator.item["color" + _loc4_ + "_" + _loc3_].play();
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 _loc10_.vibrator.vibrator.item["kage" + _loc4_ + "_" + _loc3_].play();
                              }
                              catch(myError:Error)
                              {
                              }
                              _loc3_++;
                           }
                           try
                           {
                              _loc10_.vibrator.vibrator.item["obj" + _loc4_].play();
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              _loc10_.vibrator.vibrator.item["sen" + _loc4_].play();
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc4_++;
                        }
                     }
                  }
               }
               
               _loc11_ = new Array(false,false);
               _loc12_ = _loc10_.mune.getChildIndex(_loc10_.mune.mune0);
               _loc13_ = _loc10_.mune.getChildIndex(_loc10_.mune.mune1);
               _loc17_ = new Array(_loc9_["LeftArm2"]["_depth"],_loc9_["RightArm2"]["_depth"]);

               if (_loc17_[0] == 2) {
                  _loc17_[0] = 1;
               } else if (_loc17_[0] == 3) {
                  _loc17_[0] = 0;
               }

               if (_loc17_[1] == 2) {
                  _loc17_[1] = 1;
               } else if (_loc17_[1] == 3) {
                  _loc17_[1] = 0;
               }

               _loc3_ = 0;
               while(_loc3_ <= 1)
               {
                  if(_loc3_ == 0)
                  {
                     _loc14_ = Math.round(49 * _loc9_["LeftArm"]["_meter"] / 100);
                     _loc16_ = Math.round(360 * _loc9_["LeftArm2"]["_meter"] / 360);
                  }
                  else
                  {
                     _loc14_ = Math.round(49 * _loc9_["RightArm"]["_meter"] / 100);
                     _loc16_ = Math.round(360 * _loc9_["RightArm2"]["_meter"] / 360);
                  }
                  _loc15_ = _loc10_["handm1_" + _loc3_].hand.arm1.currentFrame;
                  if(Move_UdeClass.udeAngleAr[_loc2_][_loc14_][_loc17_[_loc3_]][_loc16_][1] == 2)
                  {
                     if(_loc9_["Breast"]["_menu"] >= 2 && _loc9_["Breast"]["_menu"] <= 4 && _loc14_ <= 9 && _loc15_ >= 150 && _loc15_ <= 180 || _loc9_["Breast"]["_menu"] >= 5 && _loc9_["Breast"]["_menu"] <= 7 && _loc14_ <= 10 && _loc15_ >= 140 && _loc15_ <= 180 || _loc9_["Breast"]["_menu"] >= 8 && _loc9_["Breast"]["_menu"] <= 9 && _loc14_ <= 11 && _loc15_ >= 130 && _loc15_ <= 180 || _loc9_["Breast"]["_menu"] == 10 && _loc14_ <= 12 && _loc15_ >= 120 && _loc15_ <= 180 || _loc9_["Breast"]["_menu"] >= 11 && _loc9_["Breast"]["_menu"] <= 12 && _loc14_ <= 13 && _loc15_ >= 110 && _loc15_ <= 180 || _loc9_["Breast"]["_menu"] == 13 && _loc14_ <= 14 && _loc15_ >= 100 && _loc15_ <= 190 || _loc9_["Breast"]["_menu"] == 14 && _loc14_ <= 15 && _loc15_ >= 100 && _loc15_ <= 190)
                     {
                        _loc11_[_loc3_] = true;
                     }
                  }
                  _loc3_++;
               }
               new Huku_BreastOpen(_loc2_);
               _loc3_ = 0;
               while(_loc3_ <= 1)
               {
                  if(Huku_BreastOpen.muneOpen)
                  {
                     if(_loc3_ == 0 && !_loc11_[0] || _loc3_ == 1 && !_loc11_[1])
                     {
                        if(_loc9_["BreastMove"]["_mode"][_loc3_] == "stop")
                        {
                           _loc9_["BreastMove"]["_mode"][_loc3_] = "yokoYure";
                           _loc9_["BreastMove"]["_count"][_loc3_] = 0;
                        }
                        if(_loc3_ == 0)
                        {
                           _loc6_ = "Breast_Left_";
                        }
                        else
                        {
                           _loc6_ = "Breast_Right_";
                        }
                        if(_loc9_["BreastMove"]["_count"][_loc3_] == 0)
                        {
                           if(_loc9_[_loc6_ + "Up"]["_check"] && _loc9_[_loc6_ + "Sayuu"]["_check"])
                           {
                              this.muneMove("tateyokoYure",_loc2_,_loc3_);
                           }
                           else if(_loc9_[_loc6_ + "Up"]["_check"])
                           {
                              this.muneMove("tateYure",_loc2_,_loc3_);
                           }
                           else if(_loc9_[_loc6_ + "Sayuu"]["_check"])
                           {
                              this.muneMove("yokoYure",_loc2_,_loc3_);
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc9_["BreastMove"]["_mode"][_loc3_] = "buraSet";
                  }
                  if(_loc9_["BreastMove"]["_mode"][_loc3_] != "tateYure" && _loc9_["BreastMove"]["_mode"][_loc3_] != "yokoYure" && _loc9_["BreastMove"]["_mode"][_loc3_] != "tateyokoYure")
                  {
                     if(_loc9_["BreastManualAuto"]["_check"])
                     {
                        if(_loc3_ == 0)
                        {
                           _loc6_ = "Nipple_Left_";
                        }
                        else
                        {
                           _loc6_ = "Nipple_Right_";
                        }
                        if(_loc9_["NippleMove"]["_count"][_loc3_] == 0)
                        {
                           if(_loc9_[_loc6_ + "Up"]["_check"] && _loc9_[_loc6_ + "Sayuu"]["_check"])
                           {
                              this.nippleMove(5,_loc2_,_loc3_);
                           }
                           else if(_loc9_[_loc6_ + "Up"]["_check"])
                           {
                              this.nippleMove(1,_loc2_,_loc3_);
                           }
                           else if(_loc9_[_loc6_ + "Sayuu"]["_check"])
                           {
                              this.nippleMove(3,_loc2_,_loc3_);
                           }
                        }
                        else if(_loc9_["NippleMove"]["_count"][_loc3_] == 9)
                        {
                           if(_loc9_[_loc6_ + "Up"]["_check"] && _loc9_[_loc6_ + "Sayuu"]["_check"])
                           {
                              new Tab_EmotionCheck(_loc2_,2);
                           }
                        }
                        if(_loc9_["NippleMove"]["_mode"][_loc3_] != 0)
                        {
                           if(_loc9_["NippleMove"]["_count"][_loc3_] >= this.NippleMove[_loc9_["NippleMove"]["_mode"][_loc3_] - 1].length)
                           {
                              _loc9_["NippleMove"]["_mode"][_loc3_] = 0;
                              _loc9_["NippleMove"]["_count"][_loc3_] = 0;
                              try
                              {
                                 _loc10_.mune["mune" + _loc3_].mune.Nipple.nipple.nipple.gotoAndStop(1);
                                 _loc10_.mune["mune" + _loc3_].mune.Nipple.nipple.nipple.color2_1.gotoAndStop(1);
                              }
                              catch(myError:Error)
                              {
                              }
                           }
                           else
                           {
                              try
                              {
                                 _loc10_.mune["mune" + _loc3_].mune.Nipple.nipple.nipple.gotoAndStop(this.NippleMove[_loc9_["NippleMove"]["_mode"][_loc3_] - 1][_loc9_["NippleMove"]["_count"][_loc3_]]);
                                 _loc10_.mune["mune" + _loc3_].mune.Nipple.nipple.nipple.color2_1.gotoAndStop(this.NippleMove[_loc9_["NippleMove"]["_mode"][_loc3_] - 1][_loc9_["NippleMove"]["_count"][_loc3_]]);
                              }
                              catch(myError:Error)
                              {
                              }
                              ++_loc9_["NippleMove"]["_count"][_loc3_];
                           }
                        }
                     }
                  }
                  if(_loc11_[0] && _loc11_[1] && _loc9_["BreastManualAuto"]["_check"] || _loc9_["BreastMove"]["_mode"][_loc3_] == "buraSet")
                  {
                     if(_loc10_.mune["mune" + _loc3_].mune.currentFrame != 1)
                     {
                        _loc10_.mune["mune" + _loc3_].mune.gotoAndStop(1);
                     }
                     try
                     {
                        if(_loc10_.mune["mune" + _loc3_].mune.muneMask.currentFrame != 1)
                        {
                           _loc10_.mune["mune" + _loc3_].mune.muneMask.gotoAndStop(1);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        if(_loc10_.mune["mune" + _loc3_].mune.kage1_m.currentFrame != 1)
                        {
                           _loc10_.mune["mune" + _loc3_].mune.kage1_m.gotoAndStop(1);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     if(Huku_CorsetDou.sepaLineCheck)
                     {
                        try
                        {
                           if(_loc10_.mune["mune" + _loc3_].mune.sepaLine.currentFrame != 1)
                           {
                              _loc10_.mune["mune" + _loc3_].mune.sepaLine.gotoAndStop(1);
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     _loc9_["BreastMove"]["_mode"][_loc3_] = "stop";
                  }
                  else if(!_loc9_["BreastManualAuto"]["_check"])
                  {
                     new SetClass(_loc2_,"BreastRight","huku");
                     new SetClass(_loc2_,"BreastLeft","huku");
                     new SetClass(_loc2_,"NippleLeft","huku");
                     new SetClass(_loc2_,"NippleRight","huku");
                  }
                  else if(_loc11_[_loc3_])
                  {
                     if(_loc10_.mune["mune" + _loc3_].mune.currentFrame != 2)
                     {
                        _loc10_.mune["mune" + _loc3_].mune.gotoAndStop(2);
                     }
                     try
                     {
                        if(_loc10_.mune["mune" + _loc3_].mune.muneMask.currentFrame != 2)
                        {
                           _loc10_.mune["mune" + _loc3_].mune.muneMask.gotoAndStop(2);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     if(Huku_CorsetDou.sepaLineCheck)
                     {
                        try
                        {
                           if(_loc10_.mune["mune" + _loc3_].mune.sepaLine.currentFrame != 2)
                           {
                              _loc10_.mune["mune" + _loc3_].mune.sepaLine.gotoAndStop(2);
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     try
                     {
                        if(_loc10_.mune["mune" + _loc3_].mune.kage1_m.currentFrame != 2)
                        {
                           _loc10_.mune["mune" + _loc3_].mune.kage1_m.gotoAndStop(2);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc9_["BreastMove"]["_mode"][_loc3_] = "stop";
                  }
                  else if(_loc9_["BreastMove"]["_mode"][_loc3_] == "tateYure" || _loc9_["BreastMove"]["_mode"][_loc3_] == "tateYureAutoStop")
                  {
                     _loc10_.mune["mune" + _loc3_].mune.gotoAndStop(this.tateYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     try
                     {
                        _loc10_.mune["mune" + _loc3_].mune.muneMask.gotoAndStop(this.tateYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     }
                     catch(myError:Error)
                     {
                     }
                     if(Huku_CorsetDou.sepaLineCheck)
                     {
                        try
                        {
                           _loc10_.mune["mune" + _loc3_].mune.sepaLine.gotoAndStop(this.tateYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     try
                     {
                        _loc10_.mune["mune" + _loc3_].mune.kage1_m.gotoAndStop(this.tateYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++_loc9_["BreastMove"]["_count"][_loc3_];
                     if(_loc9_["BreastMove"]["_count"][_loc3_] == this.tateYure.length - 2)
                     {
                        _loc9_["BreastMove"]["_mode"][_loc3_] = "tateYureAutoStop";
                     }
                     if(_loc9_["BreastMove"]["_count"][_loc3_] == this.tateYure.length)
                     {
                        _loc9_["BreastMove"]["_mode"][_loc3_] = "tateYureStop";
                        _loc9_["BreastMove"]["_count"][_loc3_] = 0;
                     }
                  }
                  else if(_loc9_["BreastMove"]["_mode"][_loc3_] == "ueYose")
                  {
                     _loc10_.mune["mune" + _loc3_].mune.gotoAndStop(this.ueYose[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     try
                     {
                        _loc10_.mune["mune" + _loc3_].mune.muneMask.gotoAndStop(this.ueYose[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     }
                     catch(myError:Error)
                     {
                     }
                     if(Huku_CorsetDou.sepaLineCheck)
                     {
                        try
                        {
                           _loc10_.mune["mune" + _loc3_].mune.sepaLine.gotoAndStop(this.ueYose[_loc9_["BreastMove"]["_count"][_loc3_]]);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     try
                     {
                        _loc10_.mune["mune" + _loc3_].mune.kage1_m.gotoAndStop(this.ueYose[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++_loc9_["BreastMove"]["_count"][_loc3_];
                     if(_loc9_["BreastMove"]["_count"][_loc3_] == this.ueYose.length)
                     {
                        _loc9_["BreastMove"]["_mode"][_loc3_] = "ueYoseStop";
                        _loc9_["BreastMove"]["_count"][_loc3_] = 0;
                        try
                        {
                           if(_loc3_ == 0)
                           {
                              _loc10_.mune["mune" + 1].mune.muneSen.visible = false;
                           }
                           if(_loc3_ == 1)
                           {
                              _loc10_.mune["mune" + 0].mune.muneSen.visible = false;
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                  }
                  else if(_loc9_["BreastMove"]["_mode"][_loc3_] == "yokoYure" || _loc9_["BreastMove"]["_mode"][_loc3_] == "yokoYureAutoStop")
                  {
                     _loc10_.mune["mune" + _loc3_].mune.gotoAndStop(this.yokoYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     try
                     {
                        _loc10_.mune["mune" + _loc3_].mune.muneMask.gotoAndStop(this.yokoYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     }
                     catch(myError:Error)
                     {
                     }
                     if(Huku_CorsetDou.sepaLineCheck)
                     {
                        try
                        {
                           _loc10_.mune["mune" + _loc3_].mune.sepaLine.gotoAndStop(this.yokoYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     try
                     {
                        _loc10_.mune["mune" + _loc3_].mune.kage1_m.gotoAndStop(this.yokoYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++_loc9_["BreastMove"]["_count"][_loc3_];
                     if(_loc9_["BreastMove"]["_count"][_loc3_] == this.yokoYure.length - 1)
                     {
                        _loc9_["BreastMove"]["_mode"][_loc3_] = "yokoYureAutoStop";
                     }
                     if(_loc9_["BreastMove"]["_count"][_loc3_] == this.yokoYure.length)
                     {
                        _loc9_["BreastMove"]["_mode"][_loc3_] = "yokoYureStop";
                        _loc9_["BreastMove"]["_count"][_loc3_] = 0;
                     }
                  }
                  else if(_loc9_["BreastMove"]["_mode"][_loc3_] == "tateyokoYure")
                  {
                     _loc10_.mune["mune" + _loc3_].mune.gotoAndStop(this.tateyokoYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     try
                     {
                        _loc10_.mune["mune" + _loc3_].mune.muneMask.gotoAndStop(this.tateyokoYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     }
                     catch(myError:Error)
                     {
                     }
                     if(Huku_CorsetDou.sepaLineCheck)
                     {
                        try
                        {
                           _loc10_.mune["mune" + _loc3_].mune.sepaLine.gotoAndStop(this.tateyokoYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     try
                     {
                        _loc10_.mune["mune" + _loc3_].mune.kage1_m.gotoAndStop(this.tateyokoYure[_loc9_["BreastMove"]["_count"][_loc3_]]);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++_loc9_["BreastMove"]["_count"][_loc3_];
                     if(_loc9_["BreastMove"]["_count"][_loc3_] == this.tateyokoYure.length)
                     {
                        _loc9_["BreastMove"]["_mode"][_loc3_] = "tateyokoYureStop";
                        _loc9_["BreastMove"]["_count"][_loc3_] = 0;
                     }
                  }
                  else if(_loc9_["BreastMove"]["_mode"][_loc3_] == "tateyokoYureStop" || _loc9_["BreastMove"]["_mode"][_loc3_] == "yokoYureStop" || _loc9_["BreastMove"]["_mode"][_loc3_] == "yokoYureAutoStop" || _loc9_["BreastMove"]["_mode"][_loc3_] == "tateYureStop" || _loc9_["BreastMove"]["_mode"][_loc3_] == "tateYureAutoStop")
                  {
                     if(_loc10_.mune["mune" + _loc3_].mune.currentFrame == 1)
                     {
                        if(MenuClass._nowHeaderName != "Hand")
                        {
                           _loc10_.mune["mune" + _loc3_].mune.gotoAndStop(6);
                           _loc9_["BreastMove"]["_count"][_loc3_] = 0;
                           try
                           {
                              _loc10_.mune["mune" + _loc3_].mune.muneMask.gotoAndStop(6);
                           }
                           catch(myError:Error)
                           {
                           }
                           if(Huku_CorsetDou.sepaLineCheck)
                           {
                              try
                              {
                                 _loc10_.mune["mune" + _loc3_].mune.sepaLine.gotoAndStop(6);
                              }
                              catch(myError:Error)
                              {
                              }
                           }
                           try
                           {
                              _loc10_.mune["mune" + _loc3_].mune.kage1_m.gotoAndStop(6);
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                     }
                  }
                  if(_loc9_["BreastManualAuto"]["_check"])
                  {
                     if(_loc10_.mune["mune" + _loc3_].mune.currentFrame == 1 || _loc10_.mune["mune" + _loc3_].mune.currentFrame == 2)
                     {
                        _loc32_ = 0;
                     }
                     else
                     {
                        _loc32_ = _loc10_.mune["mune" + _loc3_].mune.currentFrame - 3;
                     }
                     if(_loc3_ == 0)
                     {
                        _loc9_["BreastLeft"]["_menu"] = _loc32_;
                     }
                     else if(_loc3_ == 1)
                     {
                        _loc9_["BreastRight"]["_menu"] = _loc32_;
                     }
                  }
                  new Huku_SodeMune(_loc2_,_loc3_);
                  _loc3_++;
               }
               new Huku_BreastDepth(_loc2_);
               if(_loc9_["sClick"]["_check"])
               {
                  if(_loc9_["sClick"]["_count"] == 0)
                  {
                     new Tab_EmotionCheck(_loc2_,2);
                  }
               }
               else if(_loc9_["Kiss"]["_check"])
               {
                  if(_loc9_["Kiss"]["_count"] == 0)
                  {
                     new Tab_EmotionCheck(_loc2_,0);
                  }
               }
               if(_loc9_["Kiss"]["_check"])
               {
                  ++_loc9_["Kiss"]["_count"];
                  if(_loc9_["Kiss"]["_count"] >= 13)
                  {
                     new SoundCharaFc(_loc2_,"kr",1);
                     if(_loc9_["EmotionManualAuto"]["_check"])
                     {
                        _loc9_["HeartPlus"]["_meter"] += 0.2 + MenuClass.KandoSetNum;
                        if(_loc9_["HeartPlus"]["_meter"] <= 0)
                        {
                           _loc9_["HeartPlus"]["_meter"] = 0;
                        }
                     }
                     _loc9_["Kiss"]["_count"] = 0;
                  }
               }
               if(_loc9_["sClick"]["_check"])
               {
                  ++_loc9_["sClick"]["_count"];
                  if(_loc9_["sClick"]["_count"] >= 4)
                  {
                     new SoundCharaFc(_loc2_,"n",1);
                     _loc9_["s"]["_sClick"] += 1;
                     if(_loc9_["EmotionManualAuto"]["_check"])
                     {
                        _loc9_["HeartPlus"]["_meter"] += 0.3 + MenuClass.KandoSetNum;
                        if(_loc9_["HeartPlus"]["_meter"] <= 0)
                        {
                           _loc9_["HeartPlus"]["_meter"] = 0;
                        }
                     }
                     new SetClass(_loc2_,"s","huku");
                     _loc9_["sClick"]["_count"] = 0;
                  }
               }
               if(!Main.r18Check)
               {
                  new Move_S_Enter(_loc2_);
                  new Huku_TinEnter(_loc2_);
               }
               new Huku_Mosaic(_loc2_);
               if(_loc9_["EmotionManualAuto"]["_check"] && MenuClass.firstLoadEmotionCount == 2)
               {
                  _loc33_ = 0;
                  if(!_loc9_["Tsyatu"]["_visible"][0] && !_loc9_["Ysyatu"]["_visible"][0] && !_loc9_["Seihuku"]["_visible"][0] && !_loc9_["Vest"]["_visible"][0])
                  {
                     _loc33_ += 6;
                  }
                  if(Huku_Mosaic.SkirtCheck && Huku_Mosaic.ZubonCheck && Huku_Mosaic.TightsCheck)
                  {
                     _loc33_ += 6;
                  }
                  if(Huku_Mosaic.PantuCheck && !Main.r18Check)
                  {
                     _loc33_ += 10;
                  }
                  if(_loc9_["s"]["_hidaPlay"] == 2)
                  {
                     _loc33_ += 20;
                  }
                  if(_loc9_["HeartPlus"]["_meter"] > 100)
                  {
                     _loc9_["HeartPlus"]["_meter"] = 100;
                  }
                  if(_loc9_["HeartPlus"]["_meter"] > _loc33_)
                  {
                     if(!Main.EmotionCheck)
                     {
                        if(Tab_BreakBlockBtn.breakblockMode == 0)
                        {
                           _loc9_["HeartPlus"]["_meter"] -= 0.05;
                        }
                        else
                        {
                           _loc9_["HeartPlus"]["_meter"] -= 0.01;
                        }
                        if(_loc9_["HeartPlus"]["_meter"] < 0)
                        {
                           _loc9_["HeartPlus"]["_meter"] = 0;
                        }
                     }
                  }
                  else
                  {
                     _loc9_["HeartPlus"]["_meter"] = _loc33_;
                  }
                  if(Main.r18Check)
                  {
                     if(_loc9_["HeartPlus"]["_meter"] >= 50)
                     {
                        _loc9_["EKando"]["_menu"] = 2;
                     }
                     else if(_loc9_["HeartPlus"]["_meter"] >= 30)
                     {
                        _loc9_["EKando"]["_menu"] = 1;
                     }
                     else
                     {
                        _loc9_["EKando"]["_menu"] = 0;
                     }
                  }
                  else if(_loc9_["Ahegao"]["_check"])
                  {
                     if(_loc9_["HeartPlus"]["_meter"] >= 70)
                     {
                        _loc9_["EKando"]["_menu"] = 4;
                     }
                     else if(_loc9_["HeartPlus"]["_meter"] >= 50)
                     {
                        _loc9_["EKando"]["_menu"] = 3;
                     }
                     else if(_loc9_["HeartPlus"]["_meter"] >= 35)
                     {
                        _loc9_["EKando"]["_menu"] = 2;
                     }
                     else if(_loc9_["HeartPlus"]["_meter"] >= 25)
                     {
                        _loc9_["EKando"]["_menu"] = 1;
                     }
                     else
                     {
                        _loc9_["EKando"]["_menu"] = 0;
                     }
                  }
                  else if(_loc9_["HeartPlus"]["_meter"] >= 70)
                  {
                     _loc9_["EKando"]["_menu"] = 3;
                  }
                  else if(_loc9_["HeartPlus"]["_meter"] >= 50)
                  {
                     _loc9_["EKando"]["_menu"] = 2;
                  }
                  else if(_loc9_["HeartPlus"]["_meter"] >= 35)
                  {
                     _loc9_["EKando"]["_menu"] = 1;
                  }
                  else
                  {
                     _loc9_["EKando"]["_menu"] = 0;
                  }
                  _loc34_ = 3;
                  if(Main.publishMode == "download" || Main.publishMode == "download_test")
                  {
                     _loc34_ = 1;
                  }
                  if(MenuClass.systemData["Quality"]["_menu"] == _loc34_)
                  {
                     new Emotion_EyeOption(_loc2_);
                  }
                  else
                  {
                     _loc4_ = 0;
                     while(_loc4_ <= 1)
                     {
                        if(_loc10_.head["eye" + _loc4_].namida.currentFrame != 1)
                        {
                           if(_loc10_.head["eye" + _loc4_].namida.currentFrame != 2)
                           {
                              _loc10_.head["eye" + _loc4_].namida.gotoAndStop(2);
                           }
                        }
                        if(_loc10_.head["eye" + _loc4_].eyeball.eyeLight.currentFrame != 1)
                        {
                           _loc10_.head["eye" + _loc4_].eyeball.eyeLight.gotoAndStop(1);
                        }
                        _loc4_++;
                     }
                     _loc9_["EyeOption"]["_visible"][4] = false;
                     if(_loc9_["CharaFilterEmotion"]["_check"])
                     {
                        _loc10_.Emotion.iki.visible = false;
                        if(_loc10_.Emotion.iki.currentFrame != 1)
                        {
                           _loc10_.Emotion.iki.gotoAndStop(1);
                        }
                     }
                     else
                     {
                        MenuClass.charaAddDepth[_loc2_].charaMae.Emotion.iki.visible = false;
                        if(MenuClass.charaAddDepth[_loc2_].charaMae.Emotion.iki.currentFrame != 1)
                        {
                           MenuClass.charaAddDepth[_loc2_].charaMae.Emotion.iki.gotoAndStop(1);
                        }
                     }
                  }
                  new SetClass(_loc2_,"HeartPlus","enter");
                  if(_loc9_["EmotionManualAuto"]["_flag"] == "stop")
                  {
                     if((_loc35_ = Math.floor(Math.random() * 200)) == 0 || charaEyeLeft[_loc2_] != null || EmotionTest[_loc2_] || charaEyeLeftClick[_loc2_][0])
                     {
                        if(_loc9_["EmotionEyeLeft"]["_meter"] > 42 && charaEyeLeft[_loc2_] == null)
                        {
                           _loc9_["EyebrowMoveLeft"]["_meter"] -= 5;
                           charaEyeLeft[_loc2_] = _loc9_["EmotionEyeLeft"]["_meter"];
                           charaEyeLeftCheck[_loc2_] = _loc9_["EmotionEyeLeft"]["_meter"] - Math.floor((_loc9_["EmotionEyeLeft"]["_meter"] - 42) / 2);
                           _loc9_["EmotionEyeLeft"]["_meter"] = charaEyeLeftCheck[_loc2_];
                        }
                        else if(_loc9_["EmotionEyeLeft"]["_meter"] == charaEyeLeftCheck[_loc2_] && charaEyeLeft[_loc2_] != null)
                        {
                           _loc9_["EmotionEyeLeft"]["_meter"] = 10;
                           _loc9_["EyebrowMoveLeft"]["_meter"] -= 5;
                        }
                        else if(_loc9_["EmotionEyeLeft"]["_meter"] == 10 && charaEyeLeft[_loc2_] != null)
                        {
                           if(charaEyeLeftClick[_loc2_][0])
                           {
                              charaEyeLeftClick[_loc2_][1] += 1;
                              if(charaEyeLeftClick[_loc2_][1] == 10)
                              {
                                 charaEyeLeftClick[_loc2_][1] = 0;
                                 _loc9_["EyebrowMoveLeft"]["_meter"] += 5;
                                 _loc9_["EmotionEyeLeft"]["_meter"] = charaEyeLeftCheck[_loc2_] + 1;
                              }
                           }
                           else
                           {
                              _loc9_["EyebrowMoveLeft"]["_meter"] += 5;
                              _loc9_["EmotionEyeLeft"]["_meter"] = charaEyeLeftCheck[_loc2_] + 1;
                           }
                        }
                        else if(_loc9_["EmotionEyeLeft"]["_meter"] == charaEyeLeftCheck[_loc2_] + 1 && charaEyeLeft[_loc2_] != null)
                        {
                           _loc9_["EyebrowMoveLeft"]["_meter"] += 5;
                           _loc9_["EmotionEyeLeft"]["_meter"] = charaEyeLeft[_loc2_];
                           charaEyeLeft[_loc2_] = null;
                           charaEyeLeftCheck[_loc2_] = null;
                           charaEyeLeftClick[_loc2_][0] = false;
                           EmotionTest[_loc2_] = false;
                        }
                        else
                        {
                           charaEyeLeft[_loc2_] = null;
                           charaEyeLeftCheck[_loc2_] = null;
                           charaEyeLeftClick[_loc2_][0] = false;
                           EmotionTest[_loc2_] = false;
                        }
                        new Emotion_Eye(_loc2_);
                        new Emotion_Eyebrow(_loc2_);
                     }
                     if(_loc35_ == 0 || charaEyeRight[_loc2_] != null || EmotionTest[_loc2_] || charaEyeRightClick[_loc2_][0])
                     {
                        if(_loc9_["EmotionEyeRight"]["_meter"] > 42 && charaEyeRight[_loc2_] == null)
                        {
                           _loc9_["EyebrowMoveRight"]["_meter"] -= 5;
                           charaEyeRight[_loc2_] = _loc9_["EmotionEyeRight"]["_meter"];
                           charaEyeRightCheck[_loc2_] = _loc9_["EmotionEyeRight"]["_meter"] - Math.floor((_loc9_["EmotionEyeRight"]["_meter"] - 42) / 2);
                           _loc9_["EmotionEyeRight"]["_meter"] = charaEyeRightCheck[_loc2_];
                        }
                        else if(_loc9_["EmotionEyeRight"]["_meter"] == charaEyeRightCheck[_loc2_] && charaEyeRight[_loc2_] != null)
                        {
                           _loc9_["EmotionEyeRight"]["_meter"] = 10;
                           _loc9_["EyebrowMoveRight"]["_meter"] -= 5;
                        }
                        else if(_loc9_["EmotionEyeRight"]["_meter"] == 10 && charaEyeRight[_loc2_] != null)
                        {
                           if(charaEyeRightClick[_loc2_][0])
                           {
                              charaEyeRightClick[_loc2_][1] += 1;
                              if(charaEyeRightClick[_loc2_][1] == 10)
                              {
                                 charaEyeRightClick[_loc2_][1] = 0;
                                 _loc9_["EyebrowMoveRight"]["_meter"] += 5;
                                 _loc9_["EmotionEyeRight"]["_meter"] = charaEyeRightCheck[_loc2_] + 1;
                              }
                           }
                           else
                           {
                              _loc9_["EyebrowMoveRight"]["_meter"] += 5;
                              _loc9_["EmotionEyeRight"]["_meter"] = charaEyeRightCheck[_loc2_] + 1;
                           }
                        }
                        else if(_loc9_["EmotionEyeRight"]["_meter"] == charaEyeRightCheck[_loc2_] + 1 && charaEyeRight[_loc2_] != null)
                        {
                           _loc9_["EyebrowMoveRight"]["_meter"] += 5;
                           _loc9_["EmotionEyeRight"]["_meter"] = charaEyeRight[_loc2_];
                           charaEyeRight[_loc2_] = null;
                           charaEyeRightCheck[_loc2_] = null;
                           charaEyeRightClick[_loc2_][0] = false;
                           EmotionTest[_loc2_] = false;
                        }
                        else
                        {
                           charaEyeRight[_loc2_] = null;
                           charaEyeRightCheck[_loc2_] = null;
                           charaEyeRightClick[_loc2_][0] = false;
                           EmotionTest[_loc2_] = false;
                        }
                        new Emotion_Eye(_loc2_);
                        new Emotion_Eyebrow(_loc2_);
                     }
                  }
                  else if(_loc9_["EmotionManualAuto"]["_flag"] == "play")
                  {
                     new Emotion_Enter(_loc2_);
                  }
               }
            }
            _loc2_++;
         }
         if(Tab_BreakBlockBtn.breakblockMode == 1)
         {
            if(!MenuClass.hederSwitchCheck)
            {
               Tab_BreakBlockBtn.ball.y = Main.stageVar.stageHeight - 36;
               Tab_BreakBlockBtn.blockrod.y = Main.stageVar.stageHeight - 22;
            }
            else
            {
               Tab_BreakBlockBtn.ball.y = Main.stageVar.stageHeight - 64;
               Tab_BreakBlockBtn.blockrod.y = Main.stageVar.stageHeight - 50;
            }
            Tab_BreakBlockBtn.blockrod.x += (Main.stageVar.mouseX - Tab_BreakBlockBtn.blockrod.x) * 0.4;
            Tab_BreakBlockBtn.ball.x += (Main.stageVar.mouseX - Tab_BreakBlockBtn.ball.x) * 0.4;
         }
         else if(Tab_BreakBlockBtn.breakblockMode == 2)
         {
            if(hitFlag == 1)
            {
               hitFlag = 2;
            }
            else if(hitFlag == 2)
            {
               hitFlag = 0;
            }
            Tab_BreakBlockBtn.blockrod.x += (Main.stageVar.mouseX - Tab_BreakBlockBtn.blockrod.x) * 0.4;
            Tab_BreakBlockBtn.ball.x += ballX;
            Tab_BreakBlockBtn.ball.y += ballY;
         }
      }
   }
}
