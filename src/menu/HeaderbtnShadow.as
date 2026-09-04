package menu
{
   public class HeaderbtnShadow
   {
       
      
      public function HeaderbtnShadow(param1:String, param2:Boolean)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         super();
         _loc3_ = MenuClass.MY_MENUNAME.length - 1;
         _loc4_ = 0;
         while(_loc4_ <= _loc3_)
         {
            if(MenuClass.MY_MENUNAME[_loc4_][0] == param1)
            {
               try
               {
                  MenuClass.headerAdd[MenuClass.MY_MENUNAME[_loc4_ + 1][0]].bg.shadow0.visible = param2;
               }
               catch(myError:Error)
               {
               }
            }
            _loc4_++;
         }
      }
   }
}
