package menu
{
   import flash.display.MovieClip;
   import parameter.Dress_data;
   import system.MeterPersentRibon;
   
   public class Free_ChairSet
   {
       
      
      private var clickTarget:String;
      
      public function Free_ChairSet(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         super();
         this.clickTarget = param2;
         if(MenuClass.UmekomiItemFlag[2] == 0)
         {
            if(MenuClass.systemData["FreeChairPlus"]["_visible"][param1])
            {
               new Chara_Loading_item(Main.loadItemName[2],param1,this.clickTarget);
            }
         }
         else
         {
            _loc5_ = Dress_data.menuCustom["FreeChair"].length - 1;
            _loc3_ = 0;
            while(_loc3_ <= _loc5_)
            {
               if(MenuClass.systemData["FreeChair" + param1]["_menu"] == Dress_data.menuCustom["FreeChair"][_loc3_])
               {
                  Dress_data.menuCustomNum[0]["FreeChair"] = _loc3_;
                  break;
               }
               _loc3_++;
            }
            MenuClass.systemData["FreeChair" + param1]["_menu"] = Dress_data.menuCustom["FreeChair"][Dress_data.menuCustomNum[0]["FreeChair"]];
            if(this.clickTarget == "menu")
            {
               if(param1 == MenuClass.systemData["FreeChairPlus"]["_menu"])
               {
                  MenuClass.menuData["FreeChairExtra"] = Dress_data.FreeChairData[MenuClass.systemData["FreeChair" + param1]["_menu"]]["extraNum"] - 1;
                  if(MenuClass.menuData["FreeChairExtra"] < MenuClass.systemData["FreeChairExtra" + param1]["_menu"])
                  {
                     MenuClass.systemData["FreeChairExtra" + param1]["_menu"] = MenuClass.menuData["FreeChairExtra"];
                  }
                  new Tab_TextInClass(1,"FreeChairExtra",MenuClass.menuData["FreeChairExtra"]);
               }
            }
            if(MenuClass.systemData["FreeChairPlus"]["_visible"][param1])
            {
               if(Chara_Class.chara_m["Chair" + param1] == undefined)
               {
                  (_loc10_ = new MovieClip()).name = "Chair" + param1;
                  _loc10_ = new Chara_Loading_item.ChairClass();
                  Chara_Class.chara_m.addChild(_loc10_);
                  Chara_Class.chara_m["Chair" + param1] = _loc10_;
                  Chara_Class.chara_m["Chair" + param1].name = "Chair" + param1;
                  Chara_Class.chara_m["Chair" + param1].Num = param1;
                  Chara_Class.chara_m["Chair" + param1].mouseChildren = false;
                  Chara_Class.chara_m["Chair" + param1].mouseEnabled = false;
                  (_loc11_ = new MovieClip()).name = "ChairBack" + param1;
                  _loc11_ = new Chara_Loading_item.ChairBackClass();
                  Chara_Class.chara_m.addChild(_loc11_);
                  Chara_Class.chara_m["ChairBack" + param1] = _loc11_;
                  Chara_Class.chara_m["ChairBack" + param1].name = "ChairBack" + param1;
                  Chara_Class.chara_m["ChairBack" + param1].Num = param1;
                  Chara_Class.chara_m["ChairBack" + param1].mouseChildren = false;
                  Chara_Class.chara_m["ChairBack" + param1].mouseEnabled = false;
               }
               Chara_Class.chara_m["Chair" + param1].gotoAndStop(MenuClass.systemData["FreeChair" + param1]["_menu"] + 1);
               Chara_Class.chara_m["ChairBack" + param1].gotoAndStop(MenuClass.systemData["FreeChair" + param1]["_menu"] + 1);
               Chara_Class.chara_m["Chair" + param1].chair.gotoAndStop(MenuClass.systemData["FreeChairExtra" + param1]["_menu"] + 1);
               try
               {
                  Chara_Class.chara_m["ChairBack" + param1].chair.gotoAndStop(MenuClass.systemData["FreeChairExtra" + param1]["_menu"] + 1);
               }
               catch(myError:Error)
               {
               }
               new MeterPersentRibon(-406,1700,100,"FreeChairX",param1);
               Chara_Class.chara_m["Chair" + param1].x = MeterPersentRibon.MeterPersentNum;
               Chara_Class.chara_m["ChairBack" + param1].x = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(360,0,100,"FreeChairRotation",param1);
               _loc6_ = MeterPersentRibon.MeterPersentNum;
               Chara_Class.chara_m["Chair" + param1].rotation = _loc6_;
               Chara_Class.chara_m["ChairBack" + param1].rotation = _loc6_;
               new MeterPersentRibon(-55,0,100,"FreeChairDepth",param1);
               new MeterPersentRibon(400 + MeterPersentRibon.MeterPersentNum,-1000 + MeterPersentRibon.MeterPersentNum,100,"FreeChairY",param1);
               _loc7_ = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(0,0.3,100,"FreeChairDepth",param1);
               _loc8_ = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(0.5 + _loc8_,1.5 + _loc8_,100,"FreeChairScale",param1);
               if(MenuClass.systemData["FreeChair" + param1]["_reversal"] == 1)
               {
                  Chara_Class.chara_m["Chair" + param1].scaleX = MeterPersentRibon.MeterPersentNum;
                  Chara_Class.chara_m["ChairBack" + param1].scaleX = MeterPersentRibon.MeterPersentNum;
               }
               else
               {
                  Chara_Class.chara_m["Chair" + param1].scaleX = MeterPersentRibon.MeterPersentNum * -1;
                  Chara_Class.chara_m["ChairBack" + param1].scaleX = MeterPersentRibon.MeterPersentNum * -1;
               }
               Chara_Class.chara_m["Chair" + param1].scaleY = MeterPersentRibon.MeterPersentNum;
               Chara_Class.chara_m["ChairBack" + param1].scaleY = MeterPersentRibon.MeterPersentNum;
               Chara_Class.chara_m["Chair" + param1].y = _loc7_;
               Chara_Class.chara_m["ChairBack" + param1].y = _loc7_;
               _loc9_ = MenuClass.systemData["FreeChairDepth" + param1]["_meter"];
               MenuClass.DepthMeter[param1 + 504] = _loc9_;
               try
               {
                  new Chara_Depth2(param1 + 504,"Ymove",this.clickTarget);
               }
               catch(myError:Error)
               {
               }
               if((_loc9_ = MenuClass.systemData["FreeChairDepth" + param1]["_meter"] - 10) <= 0)
               {
                  _loc9_ = 0;
               }
               MenuClass.DepthMeter[param1 + 603] = _loc9_;
               try
               {
                  new Chara_Depth2(param1 + 603,"Ymove",this.clickTarget);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.systemData["LinkFreeChairScale"]["_flag"] && MenuClass._nowTabName == "FreeChairScale")
                  {
                     if(MenuClass.systemData["FreeChairScale" + param1]["_meter"] >= 80)
                     {
                        _loc3_ = 0;
                        while(_loc3_ <= 3)
                        {
                           try
                           {
                              Chara_Class.chara_m["Chair" + param1].chair["sen" + _loc3_].gotoAndStop(1);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc3_++;
                        }
                        _loc3_ = 0;
                        while(_loc3_ <= 3)
                        {
                           try
                           {
                              Chara_Class.chara_m["ChairBack" + param1].chair["sen" + _loc3_].gotoAndStop(1);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc3_++;
                        }
                        MenuClass.systemData["FreeChairLine" + param1]["_menu"] = 1;
                     }
                     else if(MenuClass.systemData["FreeChairScale" + param1]["_meter"] >= 60)
                     {
                        _loc3_ = 0;
                        while(_loc3_ <= 3)
                        {
                           try
                           {
                              Chara_Class.chara_m["Chair" + param1].chair["sen" + _loc3_].gotoAndStop(2);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc3_++;
                        }
                        _loc3_ = 0;
                        while(_loc3_ <= 3)
                        {
                           try
                           {
                              Chara_Class.chara_m["ChairBack" + param1].chair["sen" + _loc3_].gotoAndStop(2);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc3_++;
                        }
                        MenuClass.systemData["FreeChairLine" + param1]["_menu"] = 2;
                     }
                     else if(MenuClass.systemData["FreeChairScale" + param1]["_meter"] >= 40)
                     {
                        _loc3_ = 0;
                        while(_loc3_ <= 3)
                        {
                           try
                           {
                              Chara_Class.chara_m["Chair" + param1].chair["sen" + _loc3_].gotoAndStop(3);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc3_++;
                        }
                        _loc3_ = 0;
                        while(_loc3_ <= 3)
                        {
                           try
                           {
                              Chara_Class.chara_m["ChairBack" + param1].chair["sen" + _loc3_].gotoAndStop(3);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc3_++;
                        }
                        MenuClass.systemData["FreeChairLine" + param1]["_menu"] = 3;
                     }
                     else if(MenuClass.systemData["FreeChairScale" + param1]["_meter"] >= 20)
                     {
                        _loc3_ = 0;
                        while(_loc3_ <= 3)
                        {
                           try
                           {
                              Chara_Class.chara_m["Chair" + param1].chair["sen" + _loc3_].gotoAndStop(4);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc3_++;
                        }
                        _loc3_ = 0;
                        while(_loc3_ <= 3)
                        {
                           try
                           {
                              Chara_Class.chara_m["ChairBack" + param1].chair["sen" + _loc3_].gotoAndStop(4);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc3_++;
                        }
                        MenuClass.systemData["FreeChairLine" + param1]["_menu"] = 4;
                     }
                     else if(MenuClass.systemData["FreeChairScale" + param1]["_meter"] >= 0)
                     {
                        _loc3_ = 0;
                        while(_loc3_ <= 3)
                        {
                           try
                           {
                              Chara_Class.chara_m["Chair" + param1].chair["sen" + _loc3_].gotoAndStop(5);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc3_++;
                        }
                        _loc3_ = 0;
                        while(_loc3_ <= 3)
                        {
                           try
                           {
                              Chara_Class.chara_m["ChairBack" + param1].chair["sen" + _loc3_].gotoAndStop(5);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc3_++;
                        }
                        MenuClass.systemData["FreeChairLine" + param1]["_menu"] = 5;
                     }
                  }
                  else if(MenuClass.systemData["FreeChairLine" + param1]["_menu"] == 0)
                  {
                     _loc3_ = 0;
                     while(_loc3_ <= 3)
                     {
                        try
                        {
                           Chara_Class.chara_m["Chair" + param1].chair["sen" + _loc3_].gotoAndStop(6);
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc3_++;
                     }
                     _loc3_ = 0;
                     while(_loc3_ <= 3)
                     {
                        try
                        {
                           Chara_Class.chara_m["ChairBack" + param1].chair["sen" + _loc3_].gotoAndStop(6);
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc3_++;
                     }
                  }
                  else
                  {
                     _loc3_ = 0;
                     while(_loc3_ <= 3)
                     {
                        try
                        {
                           Chara_Class.chara_m["Chair" + param1].chair["sen" + _loc3_].gotoAndStop(MenuClass.systemData["FreeChairLine" + param1]["_menu"]);
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc3_++;
                     }
                     _loc3_ = 0;
                     while(_loc3_ <= 3)
                     {
                        try
                        {
                           Chara_Class.chara_m["ChairBack" + param1].chair["sen" + _loc3_].gotoAndStop(MenuClass.systemData["FreeChairLine" + param1]["_menu"]);
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc3_++;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.systemData["FreeChairLine" + param1]["_menu"] == 0)
                  {
                     _loc3_ = 0;
                     while(_loc3_ <= 3)
                     {
                        Chara_Class.chara_m["Chair" + param1].chair["sen" + _loc3_].gotoAndStop(6);
                        _loc3_++;
                     }
                  }
                  else
                  {
                     _loc3_ = 0;
                     while(_loc3_ <= 3)
                     {
                        Chara_Class.chara_m["Chair" + param1].chair["sen" + _loc3_].gotoAndStop(MenuClass.systemData["FreeChairLine" + param1]["_menu"]);
                        _loc3_++;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.systemData["FreeChairLine" + param1]["_menu"] == 0)
                  {
                     _loc3_ = 0;
                     while(_loc3_ <= 3)
                     {
                        Chara_Class.chara_m["ChairBack" + param1].chair["sen" + _loc3_].gotoAndStop(6);
                        _loc3_++;
                     }
                  }
                  else
                  {
                     _loc3_ = 0;
                     while(_loc3_ <= 3)
                     {
                        Chara_Class.chara_m["ChairBack" + param1].chair["sen" + _loc3_].gotoAndStop(MenuClass.systemData["FreeChairLine" + param1]["_menu"]);
                        _loc3_++;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               new Chara_ColorClass(0,"FreeChair" + param1);
            }
            else
            {
               try
               {
                  Chara_Class.chara_m.removeChild(Chara_Class.chara_m["Chair" + param1]);
                  Chara_Class.chara_m["Chair" + param1] = null;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  Chara_Class.chara_m.removeChild(Chara_Class.chara_m["ChairBack" + param1]);
                  Chara_Class.chara_m["ChairBack" + param1] = null;
               }
               catch(myError:Error)
               {
               }
               MenuClass.DepthMeter[param1 + 504] = null;
               MenuClass.DepthMeter[param1 + 603] = null;
               MenuClass.systemData["FreeChair" + param1]["_depth"] = 10000;
               MenuClass.systemData["FreeChair" + param1]["_depth2"] = 10000;
            }
         }
      }
   }
}
