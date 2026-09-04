package system
{
   import menu.Tab_TabNameCheck;
   import parts.Ribbon;
   import parts.Hairpiece;
   
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
            else if(MenuClass.tabData[_loc6_][_loc7_][2]["_meterType"] == 3)
            {
               _loc10_ = 1000;
            }
            if(MenuClass.tabData[_loc6_][_loc7_][2]["_meterType"] == 4)
            {
               _loc10_ = 3600;
            }
         }
         catch(myError:Error)
         {
         }

         if(param3 == 100)
         {
            if (_loc6_ == "FreeRibon") {
               var ribbon = Ribbon.fromGlobal(param5);
               _loc9_ = ribbon.getData(param4.substring(9), "_meter") / _loc10_;
            } else {
               _loc9_ = MenuClass.systemData[param4 + param5]["_meter"] / _loc10_;
            }

         }
         else
         {
            if (_loc6_ == "Ribon") {
               var ribbon = Ribbon.fromCharacter(param3, param5);
               _loc9_ = ribbon.getData(param4.substring(5), "_meter") / _loc10_;
            } else if (_loc6_ == "HairEx") {
               var hairpiece = Hairpiece.fromCharacter(param3, param5);
               _loc9_ = hairpiece.getData(param4.substring(6), "_meter") / _loc10_;
            } else {
               _loc9_ = MenuClass.charaData[param3][param4 + param5]["_meter"] / _loc10_;
            }
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
