package menu
{
   public class Tab_PrevBtnFc
   {
       
      
      public function Tab_PrevBtnFc(param1:Number)
      {
         var _loc2_:int = 0;
         var _loc4_:String = null;
         super();
         if(!MenuClass.hederSwitchCheck)
         {
            MenuClass.hederSwitchCheck = true;
            new Tab_headerSwitchSet();
         }
         MenuClass._nowHederSwitch = MenuClass.hederSwitchCheck;
         MenuClass.HideIconCheck = false;
         MenuClass.systemData["HideIcon"]["_check"] = false;
         MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
         MenuClass.systemData["Story_Page"]["_menu"] = 0;
         MenuClass.StoryMode = true;
         new Tab_IEInOut("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
         new Tab_CloseClass();
         var _loc3_:int = MenuClass.MY_MENUNAME.length - 1;
         HeaderbtnClass.headerMenu.visible = false;
         MenuClass.ClickRock = true;
         if(param1 == 0)
         {
            _loc2_ = 0;
            while(_loc2_ <= _loc3_)
            {
               if((_loc4_ = MenuClass.MY_MENUNAME[_loc2_][0]) == "StoryTool")
               {
                  MenuClass.headerAdd[_loc4_].visible = true;
               }
               else
               {
                  MenuClass.headerAdd[_loc4_].visible = false;
               }
               _loc2_++;
            }
         }
         else if(param1 == 1)
         {
            _loc2_ = 0;
            while(_loc2_ <= _loc3_)
            {
               _loc4_ = MenuClass.MY_MENUNAME[_loc2_][0];
               MenuClass.headerAdd[_loc4_].visible = false;
               _loc2_++;
            }
         }
         new Stage_MoveCheckClass();
         Main.openingBg.width = 5800;
         Main.openingBg.height = 5600;
         Main.openingBg.x = -2500;
         Main.openingBg.y = -2500;
      }
   }
}
