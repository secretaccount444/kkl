package menu
{
   import parameter.Dress_data;
   
   public class Tab_SaveUpdateSystem
   {
       
      
      private var menuNum:int;
      
      private var DressCharaData:Object;
      
      public function Tab_SaveUpdateSystem(param1:String, param2:int, param3:String)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super();
         this.DressCharaData = Dress_data.DressCharaData[0];
         if(param2 <= 39 && param1 == "Background")
         {
            if(MenuClass.systemData["Background"]["_menu"] == 1 || MenuClass.systemData["Background"]["_menu"] == 2)
            {
               MenuClass.systemData["BgY"]["_meter"] = 100;
               MenuClass.systemData["BgFloor"]["_menu"] = 0;
               MenuClass.systemData["BgFloor"]["_color0"][0] = 3;
               this.DressCharaData["BgFloor"][MenuClass.systemData["BgFloor"]["_menu"]]["_color0"][0] = 3;
               MenuClass.systemData["BgFront"]["_visible"][0] = false;
            }
            else if(MenuClass.systemData["Background"]["_menu"] == 3)
            {
               MenuClass.systemData["BgY"]["_meter"] = 0;
               MenuClass.systemData["BgFloor"]["_menu"] = 1;
               MenuClass.systemData["BgFront"]["_visible"][0] = false;
            }
            else if(MenuClass.systemData["Background"]["_menu"] == 4)
            {
               MenuClass.systemData["BgY"]["_meter"] = 0;
               MenuClass.systemData["BgFloor"]["_menu"] = 2;
               MenuClass.systemData["BgFront"]["_visible"][0] = false;
            }
            else if(MenuClass.systemData["Background"]["_menu"] == 5)
            {
               MenuClass.systemData["BgY"]["_meter"] = 100;
               MenuClass.systemData["BgFloor"]["_menu"] = 0;
               MenuClass.systemData["BgFloor"]["_color0"][0] = 0;
               this.DressCharaData["BgFloor"][MenuClass.systemData["BgFloor"]["_menu"]]["_color0"][0] = 0;
               MenuClass.systemData["BgFront"]["_visible"][0] = true;
               MenuClass.systemData["BgFront"]["_menu"] = 0;
               MenuClass.systemData["BgFront"]["_color0"][0] = 2;
               this.DressCharaData["BgFront"][MenuClass.systemData["BgFront"]["_menu"]]["_color0"][0] = 2;
            }
            else if(MenuClass.systemData["Background"]["_menu"] == 11)
            {
               MenuClass.systemData["BgY"]["_meter"] = 100;
               MenuClass.systemData["BgFloor"]["_menu"] = 3;
               try
               {
                  MenuClass.systemData["BgFloor"]["_color0"][0] = MenuClass.systemData["Background"]["_color0"][0];
                  this.DressCharaData["BgFloor"][MenuClass.systemData["BgFloor"]["_menu"]]["_color0"][0] = MenuClass.systemData["Background"]["_color0"][0];
               }
               catch(myError:Error)
               {
               }
               try
               {
                  MenuClass.systemData["BgFloor"]["_color1"][0] = MenuClass.systemData["Background"]["_color1"][0];
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.DressCharaData["BgFloor"][MenuClass.systemData["BgFloor"]["_menu"]]["_color1"][0] = MenuClass.systemData["Background"]["_color1"][0];
               }
               catch(myError:Error)
               {
               }
               try
               {
                  MenuClass.systemData["BgFront"]["_visible"][0] = false;
               }
               catch(myError:Error)
               {
               }
            }
         }
         if(param2 <= 40 && param1 == "FreeHukidashi")
         {
            _loc4_ = 0;
            while(_loc4_ <= 98)
            {
               if(MenuClass.systemData["FreeHukidashiPlus"]["_visible"][_loc4_])
               {
                  MenuClass.systemData["FreeHukidashiAlpha" + _loc4_]["_meter"] = 100;
                  MenuClass.systemData["FreeHukidashiBlend" + _loc4_]["_menu"] = 0;
               }
               _loc4_++;
            }
         }
         if(param2 <= 62 && param1 == "urlLoad")
         {
            _loc4_ = 0;
            while(_loc4_ <= 98)
            {
               if(MenuClass.systemData["LoadPlus"]["_visible"][_loc4_])
               {
                  MenuClass.systemData["LoadScaleY" + _loc4_]["_meter"] = MenuClass.systemData["LoadScale" + _loc4_]["_meter"];
               }
               _loc4_++;
            }
         }
         if(param2 <= 63 && param1 == "urlLoad")
         {
            _loc4_ = 0;
            while(_loc4_ <= 98)
            {
               if(MenuClass.systemData["LoadPlus"]["_visible"][_loc4_])
               {
                  MenuClass.systemData["LoadScaleB" + _loc4_]["_meter"] = 500;
               }
               _loc4_++;
            }
         }
         if(param2 <= 64 && param1 == "FreeRibon")
         {
            _loc4_ = 0;
            while(_loc4_ <= 98)
            {
               if(MenuClass.systemData["FreeRibonPlus"]["_visible"][_loc4_])
               {
                  MenuClass.systemData["FreeRibonScaleB" + _loc4_]["_meter"] = 500;
               }
               _loc4_++;
            }
         }
         if(param2 <= 64 && param1 == "FreeBelt")
         {
            _loc4_ = 0;
            while(_loc4_ <= 98)
            {
               if(MenuClass.systemData["FreeBeltPlus"]["_visible"][_loc4_])
               {
                  MenuClass.systemData["FreeBeltScaleB" + _loc4_]["_meter"] = 500;
               }
               _loc4_++;
            }
         }
         if(param2 <= 64 && param1 == "FreeFlag")
         {
            _loc4_ = 0;
            while(_loc4_ <= 98)
            {
               if(MenuClass.systemData["FreeFlagPlus"]["_visible"][_loc4_])
               {
                  MenuClass.systemData["FreeFlagScaleB" + _loc4_]["_meter"] = 500;
               }
               _loc4_++;
            }
         }
         if(param2 <= 64 && param1 == "FreeHukidashi")
         {
            _loc4_ = 0;
            while(_loc4_ <= 98)
            {
               if(MenuClass.systemData["FreeHukidashiPlus"]["_visible"][_loc4_])
               {
                  MenuClass.systemData["FreeHukidashiScaleB" + _loc4_]["_meter"] = 500;
               }
               _loc4_++;
            }
         }
         if(param2 <= 64 && param1 == "urlLoad")
         {
            _loc4_ = 0;
            while(_loc4_ <= 98)
            {
               if(MenuClass.systemData["LoadPlus"]["_visible"][_loc4_])
               {
                  MenuClass.systemData["LoadAlpha" + _loc4_]["_meter"] = 100;
               }
               _loc4_++;
            }
         }
         if(param2 <= 65 && param1 == "urlLoad")
         {
            _loc4_ = 0;
            while(_loc4_ <= 98)
            {
               if(MenuClass.systemData["LoadPlus"]["_visible"][_loc4_])
               {
                  MenuClass.systemData["LoadAdd" + _loc4_]["_add0"] = 0;
                  MenuClass.systemData["LoadReversalDepth" + _loc4_]["_reversal"] = 0;
               }
               _loc4_++;
            }
         }
         if(param2 <= 81 && param1 == "FreeRibon")
         {
            _loc4_ = 0;
            while(_loc4_ <= 98)
            {
               if(MenuClass.systemData["FreeRibonPlus"]["_visible"][_loc4_])
               {
                  MenuClass.systemData["FreeRibon" + _loc4_]["_shadow"] = 0;
               }
               _loc4_++;
            }
         }
         if(param2 <= 97 && param1 == "txtField")
         {
            _loc4_ = 0;
            while(_loc4_ <= 9)
            {
               if(MenuClass.systemData["txtFieldmenu"]["_visible"][_loc4_] && Tab_IEInOut.renCheckText)
               {
                  if(MenuClass.systemData["txtFieldLeading" + _loc4_]["_meter"] <= 33)
                  {
                     MenuClass.systemData["txtFieldLeading" + _loc4_]["_meter"] = 0;
                  }
                  else
                  {
                     MenuClass.systemData["txtFieldLeading" + _loc4_]["_meter"] = Math.floor(100 * ((MenuClass.systemData["txtFieldLeading" + _loc4_]["_meter"] - 33) / 34));
                  }
                  MenuClass.systemData["txtFieldTateYoko" + _loc4_]["_menu"] = 0;
                  MenuClass.systemData["txtFieldFormatAlign" + _loc4_]["_menu"] = 0;
                  MenuClass.systemData["txtFieldAlpha" + _loc4_]["_meter"] = 100;
                  MenuClass.systemData["txtFieldBoxScaleX" + _loc4_]["_meter"] = 0;
                  MenuClass.systemData["txtFieldBoxScaleY" + _loc4_]["_meter"] = 0;
                  MenuClass.systemData["txtFieldWidth" + _loc4_]["_meter"] = 100;
                  MenuClass.systemData["txtFieldScaleB" + _loc4_]["_meter"] = 50;
                  MenuClass.systemData["txtFieldRotation" + _loc4_]["_meter"] = 0;
               }
               _loc4_++;
            }
         }
         if(param2 <= 98 && param1 == "txtField")
         {
            _loc4_ = 0;
            while(_loc4_ <= 9)
            {
               if(MenuClass.systemData["txtFieldmenu"]["_visible"][_loc4_] && Tab_IEInOut.renCheckText)
               {
                  MenuClass.systemData["txtFieldAdd" + _loc4_]["_add0"] = 0;
                  MenuClass.systemData["txtFieldDepth" + _loc4_]["_depth"] = 2;
               }
               _loc4_++;
            }
         }
         if (param2 <= 105) {
            if (param1 == "FreeRibon" || param1 == "FreeBelt" || param1 == "FreeChair" || param1 == "urlLoad" || param1 == "FreeHand") {
               var baseName = param1;
               if (param1 == "urlLoad") {
                  baseName = "Load";
               }

               for (var i = 0; i < 99; i++) {
                  if(MenuClass.systemData[baseName + "Plus"]["_visible"][i])
                  {
                     MenuClass.systemData[baseName + "FineX" + i]["_meter"] = 50;
                     MenuClass.systemData[baseName + "FineY" + i]["_meter"] = 50;
                     if (baseName == "FreeBelt" || baseName == "FreeChair" || baseName == "FreeRibon") {
                        MenuClass.systemData[baseName + "Alpha" + i]["_meter"] = 100;
                     }
                  }
               }
            }
         }
      }
   }
}
