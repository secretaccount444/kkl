package menu
{
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import parameter.Dress_data;
   import system.MeterPersentRibon;
   
   public class Free_FlagSet
   {
       
      
      private var clickTarget:String;
      
      public function Free_FlagSet(param1:int, param2:String)
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
         if(MenuClass.UmekomiItemFlag[0] == 0)
         {
            if(MenuClass.systemData["FreeFlagPlus"]["_visible"][param1])
            {
               new Chara_Loading_item(Main.loadItemName[0],param1,this.clickTarget);
            }
         }
         else
         {
            if(this.clickTarget == "menu")
            {
               if(param1 == MenuClass.systemData["FreeFlagPlus"]["_menu"])
               {
                  MenuClass.menuData["FreeFlagExtra"] = Dress_data.FreeFlagData[MenuClass.systemData["FreeFlag" + param1]["_menu"]]["extraNum"] - 1;
                  if(MenuClass.menuData["FreeFlagExtra"] < MenuClass.systemData["FreeFlagExtra" + param1]["_menu"])
                  {
                     MenuClass.systemData["FreeFlagExtra" + param1]["_menu"] = MenuClass.menuData["FreeFlagExtra"];
                  }
                  new Tab_TextInClass(1,"FreeFlagExtra",MenuClass.menuData["FreeFlagExtra"]);
               }
            }
            if(MenuClass.systemData["FreeFlagPlus"]["_visible"][param1])
            {
               if(Chara_Class.chara_m["Flag" + param1] == undefined)
               {
                  (_loc11_ = new MovieClip()).name = "Flag" + param1;
                  _loc11_ = new Chara_Loading_item.FlagClass();
                  Chara_Class.chara_m.addChild(_loc11_);
                  Chara_Class.chara_m["Flag" + param1] = _loc11_;
                  Chara_Class.chara_m["Flag" + param1].name = "Flag" + param1;
                  Chara_Class.chara_m["Flag" + param1].Num = param1;
                  Chara_Class.chara_m["Flag" + param1].mouseChildren = false;
                  Chara_Class.chara_m["Flag" + param1].mouseEnabled = false;
               }
               Chara_Class.chara_m["Flag" + param1].gotoAndStop(MenuClass.systemData["FreeFlag" + param1]["_menu"] + 1);
               Chara_Class.chara_m["Flag" + param1].flag.gotoAndStop(MenuClass.systemData["FreeFlagExtra" + param1]["_menu"] + 1);
               _loc5_ = new Matrix();
               new MeterPersentRibon(1.5,-1.5,100,"FreeFlagScaleB",param1);
               _loc5_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
               Chara_Class.chara_m["Flag" + param1].transform.matrix = _loc5_;
               new MeterPersentRibon(-406,1700,100,"FreeFlagX",param1);
               Chara_Class.chara_m["Flag" + param1].x = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(360,0,100,"FreeFlagRotation",param1);
               _loc6_ = MeterPersentRibon.MeterPersentNum;
               Chara_Class.chara_m["Flag" + param1].rotation = _loc6_;
               new MeterPersentRibon(-55,0,100,"FreeFlagDepth",param1);
               new MeterPersentRibon(400 + MeterPersentRibon.MeterPersentNum,-1000 + MeterPersentRibon.MeterPersentNum,100,"FreeFlagY",param1);
               _loc7_ = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(0,0.3,100,"FreeFlagDepth",param1);
               _loc8_ = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(0.01 + _loc8_,25 + _loc8_,100,"FreeFlagScale",param1);
               _loc9_ = MeterPersentRibon.MeterPersentNum;
               Chara_Class.chara_m["Flag" + param1].scaleX = _loc9_;
               if(MenuClass.systemData["LinkFreeFlagScale"]["_flag"] && MenuClass._nowTabName == "FreeFlagScale")
               {
                  _loc10_ = _loc9_;
                  MenuClass.systemData["FreeFlagScaleY" + param1]["_meter"] = MenuClass.systemData["FreeFlagScale" + param1]["_meter"];
               }
               else
               {
                  new MeterPersentRibon(0.01 + _loc8_,25 + _loc8_,100,"FreeFlagScaleY",param1);
                  _loc10_ = MeterPersentRibon.MeterPersentNum;
               }
               Chara_Class.chara_m["Flag" + param1].scaleX = _loc9_;
               Chara_Class.chara_m["Flag" + param1].scaleY = _loc10_;
               Chara_Class.chara_m["Flag" + param1].y = _loc7_;
               MenuClass.DepthMeter[param1 + 207] = MenuClass.systemData["FreeFlagDepth" + param1]["_meter"];
               try
               {
                  new Chara_Depth2(param1 + 207,"Ymove",this.clickTarget);
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  Chara_Class.chara_m.removeChild(Chara_Class.chara_m["Flag" + param1]);
                  Chara_Class.chara_m["Flag" + param1] = null;
               }
               catch(myError:Error)
               {
               }
               MenuClass.DepthMeter[param1 + 207] = null;
               MenuClass.systemData["FreeFlag" + param1]["_depth"] = 10000;
            }
         }
      }
   }
}
