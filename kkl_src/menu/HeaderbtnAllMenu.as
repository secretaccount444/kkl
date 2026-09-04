package menu
{
   public class HeaderbtnAllMenu
   {
       
      
      public function HeaderbtnAllMenu()
      {
         var _loc1_:int = 0;
         var _loc3_:String = null;
         super();
         if(MenuClass._nowHeaderName != null)
         {
            new Tab_CloseClass();
         }
         new Stage_MoveCheckClass();
         var _loc2_:int = MenuClass.MY_MENUNAME.length - 1;
         if(MenuClass.AllMenuBtn)
         {
            new HeaderbtnAllMenuClose();
         }
         else
         {
            HeaderbtnClass.headerMenu.menuBtn.gotoAndStop(2);
            _loc1_ = 0;
            while(_loc1_ <= _loc2_)
            {
               _loc3_ = MenuClass.MY_MENUNAME[_loc1_][0];
               if(MenuClass.MY_MENUNAME[_loc1_][3] != 0 && MenuClass.MY_MENUNAME[_loc1_][3] != 10)
               {
                  MenuClass.headerAdd[_loc3_].visible = true;
                  if(MenuClass.hederSwitchCheck)
                  {
                     MenuClass.headerAdd[_loc3_].y = 568 + (MenuClass.MY_MENUNAME[_loc1_][3] - 1) * -33 + Main._stageResizeY;
                  }
                  else
                  {
                     MenuClass.headerAdd[_loc3_].y = 74 + (MenuClass.MY_MENUNAME[_loc1_][3] - 1) * -33 + Main._stageResizeY * -1;
                  }
               }
               _loc1_++;
            }
            MenuClass.AllMenuBtn = true;
         }
      }
   }
}
