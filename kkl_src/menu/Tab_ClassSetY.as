package menu
{
   public class Tab_ClassSetY
   {
      
      public static var topY:Number;
       
      
      public function Tab_ClassSetY(param1:String)
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:* = null;
         super();
         var _loc5_:Number = 0;
         for(_loc4_ in MenuClass.tabData[param1])
         {
            _loc2_ = _loc4_ as int;
            if(!(MenuClass.tabData[param1][_loc2_][2]["_r18"] == 1 && Main.r18Check || MenuClass.tabData[param1][_loc2_][2]["_r18"] == 2 && !Main.r18Check))
            {
               if(!(MenuClass.tabData[param1][_loc2_][2]["_download"] && (Main.publishMode == "web" || Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age")))
               {
                  _loc5_ = MenuClass.tabData[param1][_loc2_][2]["_sort"];
               }
            }
         }
         for(_loc4_ in MenuClass.tabData[param1])
         {
            _loc2_ = _loc4_ as int;
            if(!(MenuClass.tabData[param1][_loc2_][2]["_r18"] == 1 && Main.r18Check || MenuClass.tabData[param1][_loc2_][2]["_r18"] == 2 && !Main.r18Check))
            {
               if(!(MenuClass.tabData[param1][_loc2_][2]["_download"] && (Main.publishMode == "web" || Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age")))
               {
                  _loc3_ = MenuClass.tabData[param1][_loc2_][0];
                  if(MenuClass.hederSwitchCheck || param1 == "StoryTool")
                  {
                     if(param1 == "CharacterSet" || param1 == "EasyCharacterSet" || param1 == "AllCharacterSet" || param1 == "EasyAllCharacterSet")
                     {
                        MenuClass.tabMenuAdd[_loc3_].y = 493 + 32 * MenuClass.tabData[param1][_loc2_][2]["_sort"] - _loc5_ * 32 + Main._stageResizeY;
                     }
                     else if(param1 == "AllHukuSet" || param1 == "EasyAllHukuSet")
                     {
                        if(_loc3_ == "TabAllHukuSet")
                        {
                           MenuClass.tabMenuAdd[_loc3_].y = 493 + 32 * MenuClass.tabData[param1][_loc2_][2]["_sort"] - _loc5_ * 32 + Main._stageResizeY;
                        }
                        else
                        {
                           MenuClass.tabMenuAdd[_loc3_].y = 488 + 32 * MenuClass.tabData[param1][_loc2_][2]["_sort"] - _loc5_ * 32 + Main._stageResizeY;
                        }
                     }
                     else if(param1 == "StoryTool")
                     {
                        MenuClass.tabMenuAdd[_loc3_].y = 560 + 32 * MenuClass.tabData[param1][_loc2_][2]["_sort"] - _loc5_ * 32 + Main._stageResizeY;
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[_loc3_].y = 525 + 32 * MenuClass.tabData[param1][_loc2_][2]["_sort"] - _loc5_ * 32 + Main._stageResizeY;
                     }
                     if(MenuClass.tabData[param1][_loc2_][2]["_sort"] == 0)
                     {
                        topY = MenuClass.tabMenuAdd[_loc3_].y;
                     }
                  }
                  else if(MenuClass.tabData[param1][_loc2_][2]["_sort"] == 0)
                  {
                     if(param1 == "CharacterSet" || param1 == "EasyCharacterSet" || param1 == "AllCharacterSet" || param1 == "EasyAllCharacterSet")
                     {
                        MenuClass.tabMenuAdd[_loc3_].y = 75 + _loc5_ * 32 + Main._stageResizeY * -1;
                     }
                     else if(param1 == "AllHukuSet" || param1 == "EasyAllHukuSet")
                     {
                        MenuClass.tabMenuAdd[_loc3_].y = 80 + _loc5_ * 32 + Main._stageResizeY * -1;
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[_loc3_].y = 43 + _loc5_ * 32 + Main._stageResizeY * -1;
                     }
                     topY = MenuClass.tabMenuAdd[_loc3_].y;
                  }
                  else if(_loc3_ == "TabAllHukuSet")
                  {
                     MenuClass.tabMenuAdd[_loc3_].y = 16 + 32 * MenuClass.tabData[param1][_loc2_][2]["_sort"] + Main._stageResizeY * -1;
                  }
                  else
                  {
                     MenuClass.tabMenuAdd[_loc3_].y = 11 + 32 * MenuClass.tabData[param1][_loc2_][2]["_sort"] + Main._stageResizeY * -1;
                  }
                  if(_loc3_ == "AllCharacterSet_Close" || _loc3_ == "CharacterSet_Close" || _loc3_ == "AllHukuSet_Close" || _loc3_ == "Close")
                  {
                     MenuClass.tabMenuAdd[_loc3_].y += 5;
                  }
               }
            }
         }
      }
   }
}
