package menu
{
   public class HeaderMenuClass
   {
       
      
      public function HeaderMenuClass(param1:String)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         if(param1 == "plus")
         {
            if(MenuClass._nowHeaderMenuNum == MenuClass._headerMenuNum)
            {
               MenuClass._nowHeaderMenuNum = 1;
            }
            else
            {
               MenuClass._nowHeaderMenuNum += 1;
            }
         }
         else if(param1 == "minus")
         {
            if(MenuClass._nowHeaderMenuNum == 1)
            {
               MenuClass._nowHeaderMenuNum = MenuClass._headerMenuNum;
            }
            else
            {
               --MenuClass._nowHeaderMenuNum;
            }
         }
         if(param1 == "plus" || param1 == "minus" || param1 == "")
         {
            HeaderbtnClass.headerMenu.num0.text = MenuClass._nowHeaderMenuNum;
            _loc3_ = MenuClass.MY_MENUNAME.length - 1;
            _loc2_ = 0;
            while(_loc2_ <= _loc3_)
            {
               _loc4_ = MenuClass.MY_MENUNAME[_loc2_][0];
               if(MenuClass.MY_MENUNAME[_loc2_][3] == MenuClass._nowHeaderMenuNum)
               {
                  MenuClass.headerAdd[_loc4_].visible = true;
               }
               else if(MenuClass.MY_MENUNAME[_loc2_][3] != 0)
               {
                  MenuClass.headerAdd[_loc4_].visible = false;
               }
               _loc2_++;
            }
         }
      }
   }
}
