package menu
{
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   import system.MeterPersentRibon;
   
   public class Free_HandSet
   {
       
      
      private var clickTarget:String;
      
      public function Free_HandSet(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:MovieClip = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         super();
         var _loc5_:Boolean = false;
         this.clickTarget = param2;
         try
         {
            if(this.clickTarget == "menu")
            {
               _loc6_ = false;
               _loc4_ = 0;
               while(_loc4_ < Dress_data.menuCustom["FreeHandItem"].length)
               {
                  if(Dress_data.menuCustom["FreeHandItem"][_loc4_] == MenuClass.systemData["FreeHandItem" + param1]["_menu"])
                  {
                     Dress_data.menuCustomNum[0]["FreeHandItem"] = _loc4_;
                     _loc6_ = true;
                     break;
                  }
                  _loc4_++;
               }
               if(_loc6_)
               {
                  if(MenuClass.systemData["FreeHandItem" + param1]["_visible"][0])
                  {
                     MenuClass.menuData["FreeHandWrist"] = Dress_data.ObjData["Item0"][MenuClass.systemData["FreeHandItem" + param1]["_menu"]]["depth"].length - 1;
                  }
                  else
                  {
                     MenuClass.menuData["FreeHandWrist"] = MenuClass.charaAdd[0].handm1_0.hand.arm0.hand.totalFrames - 1;
                  }
                  if(MenuClass.systemData["FreeHandWrist" + param1]["_menu"] > MenuClass.menuData["FreeHandWrist"])
                  {
                     MenuClass.systemData["FreeHandWrist" + param1]["_menu"] = 0;
                  }
               }
               else
               {
                  MenuClass.menuData["FreeHandWrist"] = Dress_data.ObjData["Item0"][MenuClass.systemData["FreeHandItem" + param1]["_menu"]]["depth"].length - 1;
               }
               new Tab_TextInClass(1,"FreeHandWrist",MenuClass.menuData["FreeHandWrist"]);
            }
         }
         catch(myError:Error)
         {
         }
         if(MenuClass.systemData["FreeHandPlus"]["_visible"][param1])
         {
            if(Chara_Class.chara_m["FreeHand" + param1] == undefined)
            {
               (_loc11_ = new MovieClip()).name = "FreeHand" + param1;
               _loc11_ = new Chara_Loading.Handm1FreeClass();
               Chara_Class.chara_m.addChild(_loc11_);
               Chara_Class.chara_m["FreeHand" + param1] = _loc11_;
               Chara_Class.chara_m["FreeHand" + param1].name = "FreeHand" + param1;
               Chara_Class.chara_m["FreeHand" + param1].Num = param1;
               Chara_Class.chara_m["FreeHand" + param1].mouseChildren = false;
               Chara_Class.chara_m["FreeHand" + param1].mouseEnabled = false;
               new Stage_MoveClass(Chara_Class.chara_m["FreeHand" + param1]);
               Chara_Class.chara_m["FreeHand" + param1].arm1.gotoAndStop(361);
               Chara_Class.chara_m["FreeHand" + param1].item.x = 14;
               Chara_Class.chara_m["FreeHand" + param1].item.y = -93;
               Chara_Class.chara_m["FreeHand" + param1].arm1.x = 10.8;
               Chara_Class.chara_m["FreeHand" + param1].arm1.y = -194.35;
               Chara_Class.chara_m["FreeHand" + param1].arm0.x = 14;
               Chara_Class.chara_m["FreeHand" + param1].arm0.y = -93;
            }
            Chara_Class.chara_m["FreeHand" + param1].arm0.gotoAndStop(Math.round(99 * MenuClass.systemData["FreeHandWristRotation" + param1]["_meter"] / 100) + 1);
            Chara_Class.chara_m["FreeHand" + param1].item.gotoAndStop(Math.round(99 * MenuClass.systemData["FreeHandWristRotation" + param1]["_meter"] / 100) + 1);
            Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.gotoAndStop(Math.floor(MenuClass.systemData["FreeHandWidth" + param1]["_meter"] * 0.1));
            if(MenuClass.systemData["FreeHandWristband" + param1]["_visible"][0])
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.Wristband.visible = true;
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.Wristband.gotoAndStop(MenuClass.systemData["FreeHandWristband" + param1]["_menu"] + 2);
            }
            else
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.Wristband.visible = false;
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.Wristband.gotoAndStop(1);
            }
            if(MenuClass.systemData["FreeHandVest" + param1]["_visible"][0])
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.Vest.visible = true;
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.Vest.gotoAndStop(Dress_data.FreeHandVestData[MenuClass.systemData["FreeHandVest" + param1]["_menu"]]["arm1"] + 1);
            }
            else
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.Vest.visible = false;
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.Vest.gotoAndStop(1);
            }
            if(MenuClass.systemData["FreeHandItem" + param1]["_visible"][0])
            {
               _loc6_ = false;
               _loc4_ = 0;
               while(_loc4_ < Dress_data.menuCustom["FreeHandItem"].length)
               {
                  if(Dress_data.menuCustom["FreeHandItem"][_loc4_] == MenuClass.systemData["FreeHandItem" + param1]["_menu"])
                  {
                     _loc6_ = true;
                     break;
                  }
                  _loc4_++;
               }
               if(_loc6_)
               {
                  Chara_Class.chara_m["FreeHand" + param1].item.visible = true;
                  Chara_Class.chara_m["FreeHand" + param1].item.hand.gotoAndStop(MenuClass.systemData["FreeHandItem" + param1]["_menu"] + 2);
                  if(Dress_data.ObjData["Item0"][MenuClass.systemData["FreeHandItem" + param1]["_menu"]]["arm1"] == 0)
                  {
                     Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.visible = false;
                     Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.gotoAndStop(1);
                  }
                  else
                  {
                     Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.visible = true;
                     Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.gotoAndStop(Dress_data.ObjData["Item0"][MenuClass.systemData["FreeHandItem" + param1]["_menu"]]["arm1"] + 1);
                  }
               }
               else
               {
                  MenuClass.systemData["FreeHandItem" + param1]["_visible"][0] = false;
                  Chara_Class.chara_m["FreeHand" + param1].item.hand.gotoAndStop(1);
                  Chara_Class.chara_m["FreeHand" + param1].item.visible = false;
                  Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.visible = false;
                  Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.gotoAndStop(1);
               }
            }
            else
            {
               Chara_Class.chara_m["FreeHand" + param1].item.visible = false;
               Chara_Class.chara_m["FreeHand" + param1].item.hand.gotoAndStop(1);
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.visible = false;
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.gotoAndStop(1);
            }
            new Move_UdeSenClass(param1,"FreeHand");
            Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.color0.visible = true;
            Chara_Class.chara_m["FreeHand" + param1].arm0.visible = true;
            if(MenuClass.systemData["FreeHand" + param1]["_menu"] <= 5)
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.sen.visible = true;
               try
               {
                  Chara_Class.chara_m["FreeHand" + param1].item.hand.hand.sen.visible = true;
               }
               catch(myError:Error)
               {
               }
               Chara_Class.chara_m["FreeHand" + param1].arm0.hand.sen0.visible = true;
               try
               {
                  Chara_Class.chara_m["FreeHand" + param1].arm0.hand.sen1.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  Chara_Class.chara_m["FreeHand" + param1].arm0.hand.kage0.visible = true;
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.sen.visible = false;
               Chara_Class.chara_m["FreeHand" + param1].arm0.hand.sen0.visible = false;
               try
               {
                  Chara_Class.chara_m["FreeHand" + param1].arm0.hand.sen1.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  Chara_Class.chara_m["FreeHand" + param1].arm0.hand.kage0.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  Chara_Class.chara_m["FreeHand" + param1].item.hand.hand.sen.visible = false;
               }
               catch(myError:Error)
               {
               }
            }
            if(MenuClass.systemData["FreeHand" + param1]["_menu"] == 0 || MenuClass.systemData["FreeHand" + param1]["_menu"] == 6)
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.color0.gotoAndStop(1);
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.sen.gotoAndStop(1);
            }
            else if(MenuClass.systemData["FreeHand" + param1]["_menu"] == 1 || MenuClass.systemData["FreeHand" + param1]["_menu"] == 7)
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.color0.gotoAndStop(2);
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.sen.gotoAndStop(2);
            }
            else if(MenuClass.systemData["FreeHand" + param1]["_menu"] == 2 || MenuClass.systemData["FreeHand" + param1]["_menu"] == 8)
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.color0.gotoAndStop(3);
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.sen.gotoAndStop(3);
            }
            else if(MenuClass.systemData["FreeHand" + param1]["_menu"] == 3 || MenuClass.systemData["FreeHand" + param1]["_menu"] == 9)
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.color0.gotoAndStop(4);
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.sen.gotoAndStop(4);
            }
            else if(MenuClass.systemData["FreeHand" + param1]["_menu"] == 4 || MenuClass.systemData["FreeHand" + param1]["_menu"] == 10)
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.color0.gotoAndStop(5);
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.sen.gotoAndStop(5);
            }
            else if(MenuClass.systemData["FreeHand" + param1]["_menu"] == 5 || MenuClass.systemData["FreeHand" + param1]["_menu"] == 11)
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.color0.visible = false;
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.sen.visible = false;
            }
            else if(MenuClass.systemData["FreeHand" + param1]["_menu"] == 12)
            {
               Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.color0.visible = false;
               Chara_Class.chara_m["FreeHand" + param1].arm0.visible = false;
            }
            if(MenuClass.systemData["FreeHandAlpha" + param1]["_meter"] == 100)
            {
               Chara_Class.chara_m["FreeHand" + param1].blendMode = BlendMode.NORMAL;
            }
            else
            {
               Chara_Class.chara_m["FreeHand" + param1].blendMode = BlendMode.LAYER;
            }
            Chara_Class.chara_m["FreeHand" + param1].alpha = MenuClass.systemData["FreeHandAlpha" + param1]["_meter"] * 0.01;
            new MeterPersentRibon(-506,1800,100,"FreeHandX",param1);
            Chara_Class.chara_m["FreeHand" + param1].x = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(360,0,100,"FreeHandRotation",param1);
            _loc7_ = MeterPersentRibon.MeterPersentNum;
            Chara_Class.chara_m["FreeHand" + param1].rotation = _loc7_;
            new MeterPersentRibon(-55,0,100,"FreeHandDepth",param1);
            new MeterPersentRibon(500 + MeterPersentRibon.MeterPersentNum,-1100 + MeterPersentRibon.MeterPersentNum,100,"FreeHandY",param1);
            _loc8_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0,0.3,100,"FreeHandDepth",param1);
            _loc9_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0.1 + _loc9_,2 + _loc9_,100,"FreeHandScale",param1);
            _loc10_ = MeterPersentRibon.MeterPersentNum;
            Chara_Class.chara_m["FreeHand" + param1].scaleX = _loc10_;
            Chara_Class.chara_m["FreeHand" + param1].scaleY = _loc10_;
            Chara_Class.chara_m["FreeHand" + param1].y = _loc8_;
            if(MenuClass.systemData["FreeHand" + param1]["_reversal"])
            {
               if(Chara_Class.chara_m["FreeHand" + param1].scaleX < 0)
               {
                  Chara_Class.chara_m["FreeHand" + param1].scaleX *= -1;
               }
            }
            else if(Chara_Class.chara_m["FreeHand" + param1].scaleX > 0)
            {
               Chara_Class.chara_m["FreeHand" + param1].scaleX *= -1;
            }
            MenuClass.systemData["FreeHandY" + param1]["_meter"] = Math.floor(MenuClass.systemData["FreeHandY" + param1]["_meter"]);
            MenuClass.DepthMeter[param1 + 405] = MenuClass.systemData["FreeHandDepth" + param1]["_meter"];
            try
            {
               new Chara_Depth2(param1 + 405,"Ymove",this.clickTarget);
            }
            catch(myError:Error)
            {
            }
            try
            {
               _loc4_ = 0;
               while(_loc4_ <= 1)
               {
                  if(Chara_Class.chara_m["FreeHand" + param1].arm0.hand["MaskMc" + _loc4_])
                  {
                     Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.sen.mask = Chara_Class.chara_m["FreeHand" + param1].arm0.hand["MaskMc" + _loc4_];
                  }
                  _loc4_++;
               }
            }
            catch(myError:Error)
            {
            }
            if(MenuClass.systemData["FreeHandWristband" + param1]["_visible"][0])
            {
               new Chara_ColorClass(param1,"FreeHandWristband" + param1);
            }
            if(MenuClass.systemData["FreeHandVest" + param1]["_visible"][0])
            {
               new Chara_ColorClass(param1,"FreeHandVest" + param1);
            }
            if(MenuClass.systemData["FreeHandItem" + param1]["_visible"][0])
            {
               new Chara_ColorClass(param1,"FreeHandItem" + param1);
            }
            new Chara_ColorClass(param1,"FreeHand" + param1);
            Chara_Class.chara_m["FreeHand" + param1].arm0.hand.glove.visible = false;
            Chara_Class.chara_m["FreeHand" + param1].arm0.hand.glove.gotoAndStop(1);
            try
            {
               _loc12_ = Chara_Class.chara_m["FreeHand" + param1].getChildIndex(Chara_Class.chara_m["FreeHand" + param1].item);
               _loc13_ = Chara_Class.chara_m["FreeHand" + param1].getChildIndex(Chara_Class.chara_m["FreeHand" + param1].itemSwapMc);
               _loc14_ = false;
               _loc15_ = false;
               if(MenuClass.systemData["FreeHandVest" + param1]["_visible"][0] && Dress_data.FreeHandVestData[MenuClass.systemData["FreeHandVest" + param1]["_menu"]]["item"] == 1)
               {
                  _loc14_ = true;
               }
               if(MenuClass.systemData["FreeHandVest" + param1]["_visible"][0] && Dress_data.FreeHandVestData[MenuClass.systemData["FreeHandVest" + param1]["_menu"]]["item"] == 2)
               {
                  _loc15_ = true;
               }
               if(MenuClass.systemData["FreeHandItem" + param1]["_visible"][0] && Dress_data.ObjData["Item0"][MenuClass.systemData["FreeHandItem" + param1]["_menu"]]["arm1"] >= 1)
               {
                  Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.visible = true;
                  Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.gotoAndStop(Dress_data.ObjData["Item0"][MenuClass.systemData["FreeHandItem" + param1]["_menu"]]["arm1"] + 1);
               }
               if(Dress_data.ObjData["Item0"][MenuClass.systemData["FreeHandItem" + param1]["_menu"]]["depth"][MenuClass.systemData["FreeHandWrist" + param1]["_menu"]] == 0)
               {
                  if(_loc12_ > _loc13_)
                  {
                     Chara_Class.chara_m["FreeHand" + param1].swapChildren(Chara_Class.chara_m["FreeHand" + param1].item,Chara_Class.chara_m["FreeHand" + param1].itemSwapMc);
                  }
               }
               else if(MenuClass.systemData["FreeHandVest" + param1]["_visible"][0] && _loc14_ && Dress_data.ObjData["Item0"][MenuClass.systemData["FreeHandItem" + param1]["_menu"]]["arm1"] >= 1)
               {
                  if(_loc12_ > _loc13_)
                  {
                     Chara_Class.chara_m["FreeHand" + param1].swapChildren(Chara_Class.chara_m["FreeHand" + param1].item,Chara_Class.chara_m["FreeHand" + param1].itemSwapMc);
                  }
                  Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.visible = false;
                  Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item.gotoAndStop(1);
                  Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.sen.visible = false;
                  Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.color0.visible = false;
               }
               else if(_loc12_ < _loc13_)
               {
                  Chara_Class.chara_m["FreeHand" + param1].swapChildren(Chara_Class.chara_m["FreeHand" + param1].item,Chara_Class.chara_m["FreeHand" + param1].itemSwapMc);
               }
               if(Dress_data.ObjData["Item0"][MenuClass.systemData["FreeHandItem" + param1]["_menu"]]["arm1"] >= 1)
               {
                  _loc16_ = Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.getChildIndex(Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item);
                  _loc17_ = Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.getChildIndex(Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.itemSwapMc);
                  if(_loc15_)
                  {
                     if(_loc16_ > _loc17_)
                     {
                        Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.swapChildren(Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item,Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.itemSwapMc);
                     }
                  }
                  else if(_loc16_ < _loc17_)
                  {
                     Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.swapChildren(Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.item,Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.itemSwapMc);
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               Chara_Class.chara_m.removeChild(Chara_Class.chara_m["FreeHand" + param1]);
               Chara_Class.chara_m["FreeHand" + param1] = null;
            }
            catch(myError:Error)
            {
            }
            MenuClass.DepthMeter[param1 + 405] = null;
            MenuClass.systemData["FreeHand" + param1]["_depth"] = 10000;
         }
      }
      
      private function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
