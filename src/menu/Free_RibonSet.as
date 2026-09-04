package menu
{
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import system.MeterPersentRibon;
   
   public class Free_RibonSet
   {
       
      
      private var clickTarget:String;
      
      public function Free_RibonSet(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:MovieClip = null;
         super();
         this.clickTarget = param2;
         if(MenuClass.systemData["FreeRibonPlus"]["_visible"][param1])
         {
            if(Chara_Class.chara_m["Ribon" + param1] == undefined)
            {
               (_loc13_ = new MovieClip()).name = "Ribon" + param1;
               _loc13_ = new Chara_Loading.RibonClass();
               Chara_Class.chara_m.addChild(_loc13_);
               Chara_Class.chara_m["Ribon" + param1] = _loc13_;
               Chara_Class.chara_m["Ribon" + param1].name = "Ribon" + param1;
               Chara_Class.chara_m["Ribon" + param1].Num = param1;
               Chara_Class.chara_m["Ribon" + param1].mouseChildren = false;
               Chara_Class.chara_m["Ribon" + param1].mouseEnabled = false;
               new Stage_MoveClass(Chara_Class.chara_m["Ribon" + param1]);
            }
            Chara_Class.chara_m["Ribon" + param1].gotoAndStop(MenuClass.systemData["FreeRibon" + param1]["_menu"] + 2);
            Chara_Class.chara_m["Ribon" + param1].ribon0.gotoAndStop(1);
            try
            {
               if(MenuClass.systemData["LinkFreeRibonLine"]["_flag"] && MenuClass._nowTabName == "FreeRibonScale")
               {
                  if(MenuClass.systemData["FreeRibonScale" + param1]["_meter"] >= 70)
                  {
                     Chara_Class.chara_m["Ribon" + param1].ribon0.sen.gotoAndStop(1);
                     MenuClass.systemData["FreeRibonLine" + param1]["_menu"] = 1;
                  }
                  else if(MenuClass.systemData["FreeRibonScale" + param1]["_meter"] >= 50)
                  {
                     Chara_Class.chara_m["Ribon" + param1].ribon0.sen.gotoAndStop(2);
                     MenuClass.systemData["FreeRibonLine" + param1]["_menu"] = 2;
                  }
                  else if(MenuClass.systemData["FreeRibonScale" + param1]["_meter"] >= 30)
                  {
                     Chara_Class.chara_m["Ribon" + param1].ribon0.sen.gotoAndStop(3);
                     MenuClass.systemData["FreeRibonLine" + param1]["_menu"] = 3;
                  }
                  else if(MenuClass.systemData["FreeRibonScale" + param1]["_meter"] >= 10)
                  {
                     Chara_Class.chara_m["Ribon" + param1].ribon0.sen.gotoAndStop(4);
                     MenuClass.systemData["FreeRibonLine" + param1]["_menu"] = 4;
                  }
                  else if(MenuClass.systemData["FreeRibonScale" + param1]["_meter"] >= 0)
                  {
                     Chara_Class.chara_m["Ribon" + param1].ribon0.sen.gotoAndStop(5);
                     MenuClass.systemData["FreeRibonLine" + param1]["_menu"] = 5;
                  }
               }
               else if(MenuClass.systemData["FreeRibonLine" + param1]["_menu"] == 0)
               {
                  if(Chara_Class.chara_m["Ribon" + param1].ribon0.sen.totalFrames == 6)
                  {
                     Chara_Class.chara_m["Ribon" + param1].ribon0.sen.gotoAndStop(6);
                  }
                  else
                  {
                     Chara_Class.chara_m["Ribon" + param1].ribon0.sen.gotoAndStop(9);
                  }
               }
               else
               {
                  Chara_Class.chara_m["Ribon" + param1].ribon0.sen.gotoAndStop(MenuClass.systemData["FreeRibonLine" + param1]["_menu"]);
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               _loc4_ = 0;
               while(_loc4_ <= 3)
               {
                  if(MenuClass.systemData["LinkFreeRibonLine"]["_flag"] && MenuClass._nowTabName == "FreeRibonScale")
                  {
                     if(MenuClass.systemData["FreeRibonScale" + param1]["_meter"] >= 70)
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc4_].sen.gotoAndStop(1);
                        MenuClass.systemData["FreeRibonLine" + param1]["_menu"] = 1;
                     }
                     else if(MenuClass.systemData["FreeRibonScale" + param1]["_meter"] >= 50)
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc4_].sen.gotoAndStop(2);
                        MenuClass.systemData["FreeRibonLine" + param1]["_menu"] = 2;
                     }
                     else if(MenuClass.systemData["FreeRibonScale" + param1]["_meter"] >= 30)
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc4_].sen.gotoAndStop(3);
                        MenuClass.systemData["FreeRibonLine" + param1]["_menu"] = 3;
                     }
                     else if(MenuClass.systemData["FreeRibonScale" + param1]["_meter"] >= 10)
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc4_].sen.gotoAndStop(4);
                        MenuClass.systemData["FreeRibonLine" + param1]["_menu"] = 4;
                     }
                     else if(MenuClass.systemData["FreeRibonScale" + param1]["_meter"] >= 0)
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc4_].sen.gotoAndStop(5);
                        MenuClass.systemData["FreeRibonLine" + param1]["_menu"] = 5;
                     }
                  }
                  else if(MenuClass.systemData["FreeRibonLine" + param1]["_menu"] == 0)
                  {
                     if(Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc4_].sen.totalFrames == 6)
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc4_].sen.gotoAndStop(6);
                     }
                     else
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc4_].sen.gotoAndStop(9);
                     }
                  }
                  else
                  {
                     Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc4_].sen.gotoAndStop(MenuClass.systemData["FreeRibonLine" + param1]["_menu"]);
                  }
                  _loc4_++;
               }
            }
            catch(myError:Error)
            {
            }
            if(MenuClass.systemData["LinkFreeRibonScale"]["_flag"])
            {
               MenuClass.systemData["FreeRibonScaleY" + param1]["_meter"] = MenuClass.systemData["FreeRibonScale" + param1]["_meter"];
            }
            _loc5_ = new Matrix();
            if(MenuClass.systemData["FreeRibon" + param1]["_reversal"])
            {
               new MeterPersentRibon(1.5,-1.5,100,"FreeRibonScaleB",param1);
            }
            else
            {
               new MeterPersentRibon(-1.5,1.5,100,"FreeRibonScaleB",param1);
            }
            _loc5_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
            Chara_Class.chara_m["Ribon" + param1].ribon0.transform.matrix = _loc5_;
            new MeterPersentRibon(-406,1700,100,"FreeRibonX",param1);
            Chara_Class.chara_m["Ribon" + param1].ribon0.x = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(360,0,100,"FreeRibonRotation",param1);
            _loc6_ = MeterPersentRibon.MeterPersentNum;
            Chara_Class.chara_m["Ribon" + param1].ribon0.rotation = _loc6_;
            try
            {
               _loc3_ = 0;
               while(_loc3_ <= 3)
               {
                  Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc3_].rotation = _loc6_ * -1;
                  _loc3_++;
               }
            }
            catch(myError:Error)
            {
            }
            new MeterPersentRibon(-55,0,100,"FreeRibonDepth",param1);
            new MeterPersentRibon(400 + MeterPersentRibon.MeterPersentNum,-1000 + MeterPersentRibon.MeterPersentNum,100,"FreeRibonY",param1);
            _loc7_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0,0.3,100,"FreeRibonDepth",param1);
            _loc8_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0.5 + _loc8_,2 + _loc8_,100,"FreeRibonScale",param1);
            _loc9_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0.5 + _loc8_,2 + _loc8_,100,"FreeRibonScaleY",param1);
            _loc10_ = MeterPersentRibon.MeterPersentNum;
            Chara_Class.chara_m["Ribon" + param1].ribon0.scaleX = _loc9_;
            Chara_Class.chara_m["Ribon" + param1].ribon0.scaleY = _loc10_;
            Chara_Class.chara_m["Ribon" + param1].ribon0.y = _loc7_;
            if(MenuClass.systemData["FreeRibon" + param1]["_reversal"])
            {
               if(Chara_Class.chara_m["Ribon" + param1].ribon0.scaleX < 0)
               {
                  Chara_Class.chara_m["Ribon" + param1].ribon0.scaleX *= -1;
               }
            }
            else if(Chara_Class.chara_m["Ribon" + param1].ribon0.scaleX > 0)
            {
               Chara_Class.chara_m["Ribon" + param1].ribon0.scaleX *= -1;
            }
            MenuClass.DepthMeter[param1 + 9] = MenuClass.systemData["FreeRibonDepth" + param1]["_meter"];
            try
            {
               new Chara_Depth2(param1 + 9,"Ymove",this.clickTarget);
            }
            catch(myError:Error)
            {
            }
            if(MenuClass.systemData["FreeRibon" + param1]["_shadow"] == 0)
            {
               _loc11_ = 0;
               while(_loc11_ <= 1)
               {
                  _loc4_ = 0;
                  while(_loc4_ <= 2)
                  {
                     try
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["kage" + _loc4_ + "_" + _loc11_].visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["light" + _loc11_].visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["shadow" + _loc11_].visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc12_ = 0;
                     while(_loc12_ <= 3)
                     {
                        try
                        {
                           Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc12_]["kage" + _loc4_ + "_" + _loc11_].visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc12_]["light" + _loc11_].visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc12_++;
                     }
                     _loc4_++;
                  }
                  _loc11_++;
               }
            }
            else
            {
               _loc11_ = 0;
               while(_loc11_ <= 1)
               {
                  _loc4_ = 0;
                  while(_loc4_ <= 2)
                  {
                     try
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["kage" + _loc4_ + "_" + _loc11_].visible = true;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["light" + _loc11_].visible = true;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        Chara_Class.chara_m["Ribon" + param1].ribon0["shadow" + _loc11_].visible = true;
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc12_ = 0;
                     while(_loc12_ <= 3)
                     {
                        try
                        {
                           Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc12_]["kage" + _loc4_ + "_" + _loc11_].visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           Chara_Class.chara_m["Ribon" + param1].ribon0["ball" + _loc12_]["light" + _loc11_].visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc12_++;
                     }
                     _loc4_++;
                  }
                  _loc11_++;
               }
            }
            new Chara_ColorClass(0,"FreeRibon" + param1);
         }
         else
         {
            try
            {
               Chara_Class.chara_m.removeChild(Chara_Class.chara_m["Ribon" + param1]);
               Chara_Class.chara_m["Ribon" + param1] = null;
               MenuClass.DepthMeter[param1 + 9] = null;
               MenuClass.systemData["FreeRibon" + param1]["_depth"] = 10000;
            }
            catch(myError:Error)
            {
            }
         }
      }
   }
}
