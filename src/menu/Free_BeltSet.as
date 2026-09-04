package menu
{
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import parameter.Dress_data;
   import system.MeterPersentRibon;
   
   public class Free_BeltSet
   {
       
      
      private var clickTarget:String;
      
      public function Free_BeltSet(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:MovieClip = null;
         super();
         this.clickTarget = param2;
         if(this.clickTarget == "menu")
         {
            if(param1 == MenuClass.systemData["FreeBeltPlus"]["_menu"])
            {
               MenuClass.menuData["FreeBeltExtra"] = Dress_data.ObjData["Belt"][MenuClass.systemData["FreeBelt" + param1]["_menu"]]["extraNum"] - 1;
               if(MenuClass.menuData["FreeBeltExtra"] < MenuClass.systemData["FreeBeltExtra" + param1]["_menu"])
               {
                  MenuClass.systemData["FreeBeltExtra" + param1]["_menu"] = MenuClass.menuData["FreeBeltExtra"];
               }
               new Tab_TextInClass(1,"FreeBeltExtra",MenuClass.menuData["FreeBeltExtra"]);
            }
         }
         if(MenuClass.systemData["FreeBeltPlus"]["_visible"][param1])
         {
            if(Chara_Class.chara_m["Belt" + param1] == undefined)
            {
               (_loc11_ = new MovieClip()).name = "Belt" + param1;
               _loc11_ = new Chara_Loading.douBeltClass();
               Chara_Class.chara_m.addChild(_loc11_);
               Chara_Class.chara_m["Belt" + param1] = _loc11_;
               Chara_Class.chara_m["Belt" + param1].name = "Belt" + param1;
               Chara_Class.chara_m["Belt" + param1].Num = param1;
               Chara_Class.chara_m["Belt" + param1].mouseChildren = false;
               Chara_Class.chara_m["Belt" + param1].mouseEnabled = false;
               new Stage_MoveClass(Chara_Class.chara_m["Belt" + param1]);
            }
            Chara_Class.chara_m["Belt" + param1].gotoAndStop(MenuClass.systemData["FreeBelt" + param1]["_menu"] + 1);
            Chara_Class.chara_m["Belt" + param1].belt0.gotoAndStop(MenuClass.systemData["FreeBeltExtra" + param1]["_menu"] + 1);
            try
            {
               if(MenuClass.systemData["LinkFreeBeltLine"]["_flag"] && MenuClass._nowTabName == "FreeBeltScale")
               {
                  if(MenuClass.systemData["FreeBeltScale" + param1]["_meter"] >= 80)
                  {
                     _loc4_ = 0;
                     while(_loc4_ <= 5)
                     {
                        try
                        {
                           Chara_Class.chara_m["Belt" + param1].belt0["sen" + _loc4_].gotoAndStop(1);
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc4_++;
                     }
                     MenuClass.systemData["FreeBeltLine" + param1]["_menu"] = 1;
                  }
                  else if(MenuClass.systemData["FreeBeltScale" + param1]["_meter"] >= 60)
                  {
                     _loc4_ = 0;
                     while(_loc4_ <= 5)
                     {
                        try
                        {
                           Chara_Class.chara_m["Belt" + param1].belt0["sen" + _loc4_].gotoAndStop(2);
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc4_++;
                     }
                     MenuClass.systemData["FreeBeltLine" + param1]["_menu"] = 2;
                  }
                  else if(MenuClass.systemData["FreeBeltScale" + param1]["_meter"] >= 40)
                  {
                     _loc4_ = 0;
                     while(_loc4_ <= 5)
                     {
                        try
                        {
                           Chara_Class.chara_m["Belt" + param1].belt0["sen" + _loc4_].gotoAndStop(3);
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc4_++;
                     }
                     MenuClass.systemData["FreeBeltLine" + param1]["_menu"] = 3;
                  }
                  else if(MenuClass.systemData["FreeBeltScale" + param1]["_meter"] >= 20)
                  {
                     _loc4_ = 0;
                     while(_loc4_ <= 5)
                     {
                        try
                        {
                           Chara_Class.chara_m["Belt" + param1].belt0["sen" + _loc4_].gotoAndStop(4);
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc4_++;
                     }
                     MenuClass.systemData["FreeBeltLine" + param1]["_menu"] = 4;
                  }
                  else if(MenuClass.systemData["FreeBeltScale" + param1]["_meter"] >= 0)
                  {
                     _loc4_ = 0;
                     while(_loc4_ <= 5)
                     {
                        try
                        {
                           Chara_Class.chara_m["Belt" + param1].belt0["sen" + _loc4_].gotoAndStop(5);
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc4_++;
                     }
                     MenuClass.systemData["FreeBeltLine" + param1]["_menu"] = 5;
                  }
               }
               else if(MenuClass.systemData["FreeBeltLine" + param1]["_menu"] == 0)
               {
                  _loc4_ = 0;
                  while(_loc4_ <= 5)
                  {
                     try
                     {
                        Chara_Class.chara_m["Belt" + param1].belt0["sen" + _loc4_].gotoAndStop(6);
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
                  while(_loc4_ <= 5)
                  {
                     try
                     {
                        Chara_Class.chara_m["Belt" + param1].belt0["sen" + _loc4_].gotoAndStop(MenuClass.systemData["FreeBeltLine" + param1]["_menu"]);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc4_++;
                  }
               }
            }
            catch(myError:Error)
            {
            }
            _loc5_ = new Matrix();
            if(MenuClass.systemData["FreeBelt" + param1]["_reversal"])
            {
               new MeterPersentRibon(1.5,-1.5,100,"FreeBeltScaleB",param1);
            }
            else
            {
               new MeterPersentRibon(-1.5,1.5,100,"FreeBeltScaleB",param1);
            }
            _loc5_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
            Chara_Class.chara_m["Belt" + param1].belt0.transform.matrix = _loc5_;
            Chara_Class.chara_m["Belt" + param1].belt0.y = -400;
            new MeterPersentRibon(-506,1800,100,"FreeBeltX",param1);
            Chara_Class.chara_m["Belt" + param1].x = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(360,0,100,"FreeBeltRotation",param1);
            _loc6_ = MeterPersentRibon.MeterPersentNum;
            Chara_Class.chara_m["Belt" + param1].belt0.rotation = _loc6_;
            new MeterPersentRibon(-55,0,100,"FreeBeltDepth",param1);
            new MeterPersentRibon(900 + MeterPersentRibon.MeterPersentNum,-700 + MeterPersentRibon.MeterPersentNum,100,"FreeBeltY",param1);
            _loc7_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0,0.3,100,"FreeBeltDepth",param1);
            _loc8_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0.5 + _loc8_,1.5 + _loc8_,100,"FreeBeltScale",param1);
            _loc9_ = MeterPersentRibon.MeterPersentNum;
            if(MenuClass.systemData["LinkFreeBeltScale"]["_flag"] && MenuClass._nowTabName == "FreeBeltScale")
            {
               _loc10_ = _loc9_;
               MenuClass.systemData["FreeBeltScaleY" + param1]["_meter"] = MenuClass.systemData["FreeBeltScale" + param1]["_meter"];
            }
            else
            {
               new MeterPersentRibon(0.5 + _loc8_,1.5 + _loc8_,100,"FreeBeltScaleY",param1);
               _loc10_ = MeterPersentRibon.MeterPersentNum;
            }
            Chara_Class.chara_m["Belt" + param1].belt0.scaleX = _loc9_;
            Chara_Class.chara_m["Belt" + param1].belt0.scaleY = _loc10_;
            Chara_Class.chara_m["Belt" + param1].y = _loc7_;
            if(MenuClass.systemData["FreeBelt" + param1]["_reversal"])
            {
               if(Chara_Class.chara_m["Belt" + param1].belt0.scaleX < 0)
               {
                  Chara_Class.chara_m["Belt" + param1].belt0.scaleX *= -1;
               }
            }
            else if(Chara_Class.chara_m["Belt" + param1].belt0.scaleX > 0)
            {
               Chara_Class.chara_m["Belt" + param1].belt0.scaleX *= -1;
            }
            MenuClass.systemData["FreeBeltY" + param1]["_meter"] = Math.floor(MenuClass.systemData["FreeBeltY" + param1]["_meter"]);
            MenuClass.DepthMeter[param1 + 108] = MenuClass.systemData["FreeBeltDepth" + param1]["_meter"];
            try
            {
               new Chara_Depth2(param1 + 108,"Ymove",this.clickTarget);
            }
            catch(myError:Error)
            {
            }
            new Chara_ColorClass(0,"FreeBelt" + param1);
         }
         else
         {
            try
            {
               Chara_Class.chara_m.removeChild(Chara_Class.chara_m["Belt" + param1]);
               Chara_Class.chara_m["Belt" + param1] = null;
               MenuClass.DepthMeter[param1 + 108] = null;
               MenuClass.systemData["FreeBelt" + param1]["_depth"] = 10000;
            }
            catch(myError:Error)
            {
            }
         }
      }
   }
}
