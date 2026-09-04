package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import undo.PropertyAction;
   
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

         var headerName = param1.currentTarget.headerName;
         var targetJ = param1.currentTarget.targetJ;
         var tabName = param1.currentTarget.tabName;
         var checkType = MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_check"];
         var undoAction: PropertyAction = null;

         if (headerName != "Tool" && headerName != "SystemOption") {
            undoAction = new PropertyAction(
               headerName, targetJ, "_check",
               checkType == "chara",
               checkType == "systemPlus"
            );
         }

         if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_check"] == "chara")
         {
            var prevChecked = MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.tabName]["_check"];
            if (undoAction) {
               undoAction.recordPreviousValue(0);
               undoAction.recordNewValue(!prevChecked, 0);
            }

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
            var prevChecked = MenuClass.systemData[param1.currentTarget.tabName]["_check"];
            if (undoAction) {
               undoAction.recordPreviousValue(0);
               undoAction.recordNewValue(!prevChecked, 0);
            }

            MenuClass.systemData[param1.currentTarget.tabName]["_check"] = !MenuClass.systemData[param1.currentTarget.tabName]["_check"];
            new SetClass(MenuClass._nowCharaNum,param1.currentTarget.tabName,"tab");
         }
         else if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_check"] == "systemPlus")
         {
            _loc3_ = MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_data"];

            var selectedSlot = MenuClass.systemData[_loc3_]["_menu"];
            var prevChecked = MenuClass.systemData[param1.currentTarget.tabName + selectedSlot]["_check"];
            if (undoAction) {
               undoAction.recordPreviousValue(selectedSlot);
               undoAction.recordNewValue(!prevChecked, selectedSlot);
            }
            
            MenuClass.systemData[param1.currentTarget.tabName + MenuClass.systemData[_loc3_]["_menu"]]["_check"] = !MenuClass.systemData[param1.currentTarget.tabName + MenuClass.systemData[_loc3_]["_menu"]]["_check"];
            new SetClass(MenuClass._nowCharaNum,param1.currentTarget.tabName,"tab");
         }

         if (undoAction) {
            Main.undoTimeline.push(undoAction);
         }

         new Tab_SetClass();
      }
   }
}
