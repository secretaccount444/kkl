package menu
{
   public class Tab_TabNameCheck
   {
      
      public static var headerName:String;
      
      public static var targetJ:int;
       
      
      public function Tab_TabNameCheck(param1:String)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:* = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         super();
         var _loc4_:int = MenuClass.MY_MENUNAME.length - 1;
         if(!MenuClass.systemData["EExpert"]["_check"])
         {
            _loc2_ = 0;
            while(_loc2_ <= _loc4_)
            {
               if((_loc6_ = MenuClass.MY_MENUNAME[_loc2_][0]).substring(0,4) != "Easy")
               {
                  for(_loc5_ in MenuClass.tabData[_loc6_])
                  {
                     _loc3_ = _loc5_ as int;
                     _loc7_ = MenuClass.tabData[_loc6_][_loc3_][0];
                     if(param1 == _loc7_)
                     {
                        targetJ = _loc3_;
                        headerName = _loc6_;
                        break;
                     }
                  }
               }
               _loc2_++;
            }
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ <= _loc4_)
            {
               _loc6_ = MenuClass.MY_MENUNAME[_loc2_][0];
               for(_loc5_ in MenuClass.tabData[_loc6_])
               {
                  _loc3_ = _loc5_ as int;
                  _loc7_ = MenuClass.tabData[_loc6_][_loc3_][0];
                  if(param1 == _loc7_)
                  {
                     targetJ = _loc3_;
                     headerName = _loc6_;
                     break;
                  }
               }
               _loc2_++;
            }
         }
      }
   }
}
