package menu
{
   import parameter.Dress_data;
   
   public class System_bg
   {
       
      
      public function System_bg(param1:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         super();
         var _loc2_:Boolean = true;
         try
         {
            if(param1 != "first" && MenuClass.systemOldData["Background"]["_menu"] == MenuClass.systemData["Background"]["_menu"] && String(MenuClass.systemOldData["Background"]["_color0"][0]) == String(MenuClass.systemData["Background"]["_color0"][0]) && String(MenuClass.systemOldData["Background"]["_color1"][0]) == String(MenuClass.systemData["Background"]["_color1"][0]) && String(MenuClass.systemOldData["Background"]["_color2"][0]) == String(MenuClass.systemData["Background"]["_color2"][0]) && MenuClass.systemOldData["BgY"]["_meter"] == MenuClass.systemData["BgY"]["_meter"] && Dress_data.ObjData["Background"][MenuClass.systemOldData["Background"]["_menu"]]["floorYUnder"] == Dress_data.ObjData["Background"][_loc5_]["floorYUnder"] && MenuClass.systemOldData["BgFloor"]["_menu"] == MenuClass.systemData["BgFloor"]["_menu"] && String(MenuClass.systemOldData["BgFloor"]["_color0"][0]) == String(MenuClass.systemData["BgFloor"]["_color0"][0]) && String(MenuClass.systemOldData["BgFloor"]["_color1"][0]) == String(MenuClass.systemData["BgFloor"]["_color1"][0]) && String(MenuClass.systemOldData["BgFloor"]["_color2"][0]) == String(MenuClass.systemData["BgFloor"]["_color2"][0]) && MenuClass.systemOldData["BgFront"]["_visible"][0] == MenuClass.systemData["BgFront"]["_visible"][0] && MenuClass.systemOldData["BgFront"]["_menu"] == MenuClass.systemData["BgFront"]["_menu"] && String(MenuClass.systemOldData["BgFront"]["_color0"][0]) == String(MenuClass.systemData["BgFront"]["_color0"][0]) && String(MenuClass.systemOldData["BgFront"]["_color1"][0]) == String(MenuClass.systemData["BgFront"]["_color1"][0]) && String(MenuClass.systemOldData["BgFront"]["_color2"][0]) == String(MenuClass.systemData["BgFront"]["_color2"][0]) && MenuClass.systemOldData["BgSituation"]["_menu"] == MenuClass.systemData["BgSituation"]["_menu"])
            {
               _loc2_ = false;
            }
         }
         catch(myError:Error)
         {
         }
         if(_loc2_)
         {
            try
            {
               _loc3_ = Dress_data.menuCustom["Background"].length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc3_)
               {
                  if(MenuClass.systemData["Background"]["_menu"] == Dress_data.menuCustom["Background"][_loc4_])
                  {
                     Dress_data.menuCustomNum[0]["Background"] = _loc4_;
                     break;
                  }
                  _loc4_++;
               }
               MenuClass.systemData["Background"]["_menu"] = Dress_data.menuCustom["Background"][Dress_data.menuCustomNum[0]["Background"]];
               _loc5_ = MenuClass.systemData["Background"]["_menu"];
               _loc3_ = Dress_data.menuCustom["BgFloor"].length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc3_)
               {
                  if(MenuClass.systemData["BgFloor"]["_menu"] == Dress_data.menuCustom["BgFloor"][_loc4_])
                  {
                     Dress_data.menuCustomNum[0]["BgFloor"] = _loc4_;
                     break;
                  }
                  _loc4_++;
               }
               MenuClass.systemData["BgFloor"]["_menu"] = Dress_data.menuCustom["BgFloor"][Dress_data.menuCustomNum[0]["BgFloor"]];
               _loc6_ = MenuClass.systemData["BgFloor"]["_menu"];
               _loc3_ = Dress_data.menuCustom["BgFront"].length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc3_)
               {
                  if(MenuClass.systemData["BgFront"]["_menu"] == Dress_data.menuCustom["BgFront"][_loc4_])
                  {
                     Dress_data.menuCustomNum[0]["BgFront"] = _loc4_;
                     break;
                  }
                  _loc4_++;
               }
               MenuClass.systemData["BgFront"]["_menu"] = Dress_data.menuCustom["BgFront"][Dress_data.menuCustomNum[0]["BgFront"]];
               _loc7_ = MenuClass.systemData["BgFront"]["_menu"];
               Main.mainWindow.bg.gotoAndStop(Dress_data.ObjData["Background"][_loc5_]["frame"]);
               try
               {
                  Main.mainWindow.bg.wall.gotoAndStop(Dress_data.ObjData["Background"][_loc5_]["wall"]);
                  Main.mainWindow.bg.floor.gotoAndStop(_loc6_ + 1);
                  Main.mainWindow.bg.front.visible = MenuClass.systemData["BgFront"]["_visible"][0];
                  if(MenuClass.systemData["BgFront"]["_visible"][0])
                  {
                     Main.mainWindow.bg.front.gotoAndStop(_loc7_ + 2);
                  }
                  else
                  {
                     Main.mainWindow.bg.front.gotoAndStop(1);
                  }
                  Main.mainWindow.bg.floor.frontHuchi.visible = MenuClass.systemData["BgFront"]["_visible"][0];
                  Main.mainWindow.bg.floor.frontHuchi.gotoAndStop(_loc6_ + 1);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(Dress_data.ObjData["Background"][_loc5_]["hansya0"] == 0)
                  {
                     Main.mainWindow.bg.floor.hansya0.visible = false;
                  }
                  else
                  {
                     Main.mainWindow.bg.floor.hansya0.visible = true;
                  }
               }
               catch(myError:Error)
               {
               }
               new SetClass(0,"BgY",param1);
               new Chara_ColorClass(0,"Background");
            }
            catch(myError:Error)
            {
            }
         }
      }
   }
}
