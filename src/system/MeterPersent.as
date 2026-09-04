package system
{
   import menu.Tab_TabNameCheck;
   
   public class MeterPersent
   {
      
      public static var MeterPersentNum:Number;
       
      
      public function MeterPersent(param1:Number, param2:Number, param3:String, param4:int)
      {
         var _loc8_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         super();
         new Tab_TabNameCheck(param3);
         var _loc5_:String = Tab_TabNameCheck.headerName;
         var _loc6_:int = Tab_TabNameCheck.targetJ;
         var _loc7_:Number = param2 - param1;
         try
         {
            _loc10_ = MenuClass.tabData[_loc5_][_loc6_][2]["_data"];
            _loc11_ = MenuClass.systemData[_loc10_]["_menu"];
            _loc12_ = param4;
         }
         catch(myError:Error)
         {
         }
         var _loc9_:int = 100;
         try
         {
            if(MenuClass.tabData[_loc5_][_loc6_][2]["_meterType"] == 1)
            {
               _loc9_ = 360;
            }
            else if(MenuClass.tabData[_loc5_][_loc6_][2]["_meterType"] == 2)
            {
               _loc9_ = 1000;
            }
         }
         catch(myError:Error)
         {
         }
         if(MenuClass.tabData[_loc5_][_loc6_][2]["_meter"] == "charaPlus")
         {
            _loc8_ = MenuClass.charaData[param4][param3 + _loc11_]["_meter"] / _loc9_;
         }
         else if(MenuClass.tabData[_loc5_][_loc6_][2]["_meter"] == "chara")
         {
            _loc8_ = MenuClass.charaData[param4][param3]["_meter"] / _loc9_;
         }
         else if(MenuClass.tabData[_loc5_][_loc6_][2]["_meter"] == "systemPlus")
         {
            _loc8_ = MenuClass.systemData[param3 + _loc12_]["_meter"] / _loc9_;
         }
         else if(MenuClass.tabData[_loc5_][_loc6_][2]["_meter"] == "system" || MenuClass.tabData[_loc5_][_loc6_][2]["_meter"] == "systemAll")
         {
            _loc8_ = MenuClass.systemData[param3]["_meter"] / _loc9_;
         }
         MeterPersentNum = param1 + _loc7_ * _loc8_;
      }
   }
}
