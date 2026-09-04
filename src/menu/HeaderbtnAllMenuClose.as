package menu
{
   public class HeaderbtnAllMenuClose
   {
       
      
      public function HeaderbtnAllMenuClose()
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         super();
         if(MenuClass.AllMenuBtn)
         {
            _loc2_ = MenuClass.MY_MENUNAME.length - 1;
            HeaderbtnClass.headerMenu.menuBtn.gotoAndStop(1);
            _loc1_ = 0;
            while(_loc1_ <= _loc2_)
            {
               _loc3_ = MenuClass.MY_MENUNAME[_loc1_][0];
               if(MenuClass.MY_MENUNAME[_loc1_][3] != 0 && MenuClass.MY_MENUNAME[_loc1_][3] != 10)
               {
                  if(MenuClass.hederSwitchCheck)
                  {
                     MenuClass.headerAdd[_loc3_].y = 568 + Main._stageResizeY;
                  }
                  else
                  {
                     MenuClass.headerAdd[_loc3_].y = 8 + Main._stageResizeY * -1;
                  }
                  if(MenuClass.MY_MENUNAME[_loc1_][3] != MenuClass._nowHeaderMenuNum)
                  {
                     MenuClass.headerAdd[_loc3_].visible = false;
                  }
               }
               _loc1_++;
            }
            MenuClass.AllMenuBtn = false;
            MenuClass._nowHeaderName = null;
         }
      }
   }
}
