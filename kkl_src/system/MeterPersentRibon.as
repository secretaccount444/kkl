package system
{
   import menu.Tab_TabNameCheck;
   
   public class MeterPersentRibon
   {
      
      public static var MeterPersentNum:Number;

      public static function get(param1:Number, param2:Number, param3:int, param4:String, param5:int)
      {
         var _loc9_:Number = NaN;
         Tab_TabNameCheck.lookup(param4);
         var _loc6_:String = Tab_TabNameCheck.headerName;
         var _loc7_:int = Tab_TabNameCheck.targetJ;
         var _loc8_:Number = param2 - param1;
         var _loc10_:int = 100;
         try
         {
            if(MenuClass.tabData[_loc6_][_loc7_][2]["_meterType"] == 1)
            {
               _loc10_ = 360;
            }
            else if(MenuClass.tabData[_loc6_][_loc7_][2]["_meterType"] == 2)
            {
               _loc10_ = 1000;
            }
         }
         catch(myError:Error)
         {
         }
         if(param3 == 100)
         {
            _loc9_ = MenuClass.systemData[param4 + param5]["_meter"] / _loc10_;
         }
         else
         {
            _loc9_ = MenuClass.charaData[param3][param4 + param5]["_meter"] / _loc10_;
         }
         MeterPersentNum = param1 + _loc8_ * _loc9_;
      }
      
      public function MeterPersentRibon(param1:Number, param2:Number, param3:int, param4:String, param5:int)
      {
         super();
         get(param1, param2, param3, param4, param5);
      }
   }
}
