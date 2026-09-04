package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_CheckBoxClass
   {
       
      
      public function Tab_CheckBoxClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:int, param3:String, param4:String) : void
      {
         param1.headerName = param3;
         param1.tabName = param4;
         param1.targetJ = param2;
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
      }
      
      public static function MouseClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         MenuClass._nowTabName = param1.currentTarget.tabName;
         new Stage_MoveCheckClass();
         if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_check"] == "chara")
         {
            MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.tabName]["_check"] = !MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.tabName]["_check"];
            if(MenuClass._nowTargetMode == "All")
            {
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  MenuClass.charaData[_loc2_][param1.currentTarget.tabName]["_check"] = MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.tabName]["_check"];
                  new SetClass(_loc2_,param1.currentTarget.tabName,"tab");
                  _loc2_++;
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc2_])
                  {
                     MenuClass.charaData[_loc2_][param1.currentTarget.tabName]["_check"] = MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.tabName]["_check"];
                     new SetClass(_loc2_,param1.currentTarget.tabName,"tab");
                  }
                  _loc2_++;
               }
            }
            else
            {
               new SetClass(MenuClass._nowCharaNum,param1.currentTarget.tabName,"tab");
            }
         }
         else if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_check"] == "system")
         {
            MenuClass.systemData[param1.currentTarget.tabName]["_check"] = !MenuClass.systemData[param1.currentTarget.tabName]["_check"];
            new SetClass(MenuClass._nowCharaNum,param1.currentTarget.tabName,"tab");
         }
         else if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_check"] == "systemPlus")
         {
            _loc3_ = MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_data"];
            MenuClass.systemData[param1.currentTarget.tabName + MenuClass.systemData[_loc3_]["_menu"]]["_check"] = !MenuClass.systemData[param1.currentTarget.tabName + MenuClass.systemData[_loc3_]["_menu"]]["_check"];
            new SetClass(MenuClass._nowCharaNum,param1.currentTarget.tabName,"tab");
         }
         new Tab_SetClass();
      }
   }
}
