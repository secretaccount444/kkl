package system
{
   import menu.Tab_TabNameCheck;
   import parts.Ribbon;
   import parts.Hairpiece;
   
   public class MeterPersent
   {
      
      public static var MeterPersentNum:Number;
      
      public static function get(param1:Number, param2:Number, param3:String, param4:int)
      {
         var _loc8_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         Tab_TabNameCheck.lookup(param3);
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
            else if(MenuClass.tabData[_loc5_][_loc6_][2]["_meterType"] == 3)
            {
               _loc9_ = 1000;
            }
            else if(MenuClass.tabData[_loc5_][_loc6_][2]["_meterType"] == 4)
            {
               _loc9_ = 3600;
            }
         }
         catch(myError:Error)
         {
         }

         if(MenuClass.tabData[_loc5_][_loc6_][2]["_meter"] == "charaPlus")
         {
            if (_loc5_ == "Ribon") {
               var ribbon = Ribbon.fromCharacter(param4, _loc11_);
               _loc8_ = ribbon.getData(param3.substring(5), "_meter") / _loc9_;
            } else if (_loc5_ == "HairEx") {
               var hairpiece = Hairpiece.fromCharacter(param4, _loc11_);
               _loc8_ = hairpiece.getData(param3.substring(6), "_meter") / _loc9_;
            } else {
               _loc8_ = MenuClass.charaData[param4][param3 + _loc11_]["_meter"] / _loc9_;
            }
         }
         else if(MenuClass.tabData[_loc5_][_loc6_][2]["_meter"] == "chara")
         {
            _loc8_ = MenuClass.charaData[param4][param3]["_meter"] / _loc9_;
         }
         else if(MenuClass.tabData[_loc5_][_loc6_][2]["_meter"] == "systemPlus")
         {
            if (_loc5_ == "FreeRibon") {
               var ribbon = Ribbon.fromGlobal(_loc12_);
               _loc8_ = ribbon.getData(param3.substring(9), "_meter") / _loc9_;
            } else {
               _loc8_ = MenuClass.systemData[param3 + _loc12_]["_meter"] / _loc9_;
            }
         }
         else if(MenuClass.tabData[_loc5_][_loc6_][2]["_meter"] == "system" || MenuClass.tabData[_loc5_][_loc6_][2]["_meter"] == "systemAll")
         {
            _loc8_ = MenuClass.systemData[param3]["_meter"] / _loc9_;
         }

         MeterPersentNum = param1 + _loc7_ * _loc8_;
      }
      
      public function MeterPersent(param1:Number, param2:Number, param3:String, param4:int)
      {
         super();
         get(param1, param2, param3, param4);
      }
   }
}
