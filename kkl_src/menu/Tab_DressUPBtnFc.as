package menu
{
   public class Tab_DressUPBtnFc
   {
       
      
      public function Tab_DressUPBtnFc(param1:Number)
      {
         var _loc2_:int = 0;
         var _loc4_:String = null;
         super();
         if(!MenuClass._nowHederSwitch)
         {
            HeaderbtnClass.layoutHeaderButtons();
            new Tab_headerSwitchSet();
         }
         if(param1 == 0)
         {
            new Tab_CloseClass();
         }
         var _loc3_:int = MenuClass.MY_MENUNAME.length - 1;
         HeaderbtnClass.headerMenu.visible = true;
         MenuClass.StoryMode = false;
         MenuClass.ClickRock = false;
         MenuClass.HukuRock = false;
         Main.openingBg.width = 1;
         Main.openingBg.height = 1;
         Main.openingBg.x = -500;
         Main.openingBg.y = -500;
         _loc2_ = 0;
         while(_loc2_ <= _loc3_)
         {
            if((_loc4_ = MenuClass.MY_MENUNAME[_loc2_][0]) == "StoryTool")
            {
               MenuClass.headerAdd[_loc4_].visible = false;
            }
            else if(MenuClass.MY_MENUNAME[_loc2_][3] == MenuClass._nowHeaderMenuNum || MenuClass.MY_MENUNAME[_loc2_][3] == 0)
            {
               MenuClass.headerAdd[_loc4_].visible = true;
            }
            _loc2_++;
         }
         new Stage_MoveCheckClass();
      }
   }
}
