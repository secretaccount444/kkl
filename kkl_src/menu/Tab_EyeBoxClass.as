package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import undo.VisibilityAction;
   
   public class Tab_EyeBoxClass
   {
       
      
      public function Tab_EyeBoxClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:int, param3:String, param4:String) : void
      {
         param1.tabName = param4;
         param1.headerName = param3;
         param1.targetJ = param2;
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         MenuClass._nowTabName = param1.currentTarget.tabName;
         new Stage_MoveCheckClass();
         var _loc3_:String = MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_data"];

         var tabName = param1.currentTarget.tabName;
         var headerName = param1.currentTarget.headerName;
         var targetJ = param1.currentTarget.targetJ;
         var visType = MenuClass.tabData[headerName][targetJ][2]["_visible"];
         var hasSlots = false;
         var slotIndexedVisibility = false;
         var curSelectedSlot = 0;

         if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_menu"] == "charaPlus" || MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_menu"] == "systemPlus")
         {
            _loc4_ = param1.currentTarget.tabName + MenuClass.systemData[_loc3_]["_menu"];
            hasSlots = true;
         }
         else
         {
            _loc4_ = param1.currentTarget.tabName;
            if (visType == "system" || visType == "systemPlus") {
               hasSlots = MenuClass.systemData[tabName]["_visible"].length > 1;
            } else {
               hasSlots = MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_visible"].length > 1;
            }
            slotIndexedVisibility = hasSlots;
         }

         if (visType == "SelectCharacter") {
            hasSlots = false;
            slotIndexedVisibility = false;
         }

         if(MenuClass.tabData[headerName][targetJ][2]["_menu"] == "chara" || MenuClass.tabData[headerName][targetJ][2]["_menu"] == "charaPlus")
         {
            curSelectedSlot = MenuClass.charaData[MenuClass._nowCharaNum][_loc4_]["_menu"];
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_menu"] == "system" || MenuClass.tabData[headerName][targetJ][2]["_menu"] == "systemPlus")
         {
            curSelectedSlot = MenuClass.systemData[_loc4_]["_menu"];
         }
         
         var undoAction = new VisibilityAction(headerName, targetJ, hasSlots, slotIndexedVisibility);
         undoAction.recordPreviousValue(curSelectedSlot);

         new Tab_VC(param1.currentTarget.headerName,param1.currentTarget.targetJ,_loc4_);

         if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_visible"] == "chara" || MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_visible"] == "charaPlus")
         {
            var prevVisible = MenuClass.charaData[MenuClass._nowCharaNum][_loc4_]["_visible"][Tab_VC.menuNum];
            undoAction.recordNewValue(!prevVisible, curSelectedSlot);

            if(MenuClass._nowTargetMode == "All")
            {
               _loc5_ = MenuClass.charaData[MenuClass._nowCharaNum][_loc4_]["_visible"][Tab_VC.menuNum];
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  if(MenuClass.systemData["EExpert"]["_check"])
                  {
                     if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_easyLink"] != undefined)
                     {
                        MenuClass.charaData[_loc2_][MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_easyLink"]]["_visible"][Tab_VC.menuNum] = !_loc5_;
                        new SetClass(_loc2_,MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_easyLink"],"tab");
                     }
                  }
                  MenuClass.charaData[_loc2_][_loc4_]["_visible"][Tab_VC.menuNum] = !_loc5_;
                  new SetClass(_loc2_,param1.currentTarget.tabName,"tab");
                  _loc2_++;
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc5_ = MenuClass.charaData[MenuClass._nowCharaNum][_loc4_]["_visible"][Tab_VC.menuNum];
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc2_])
                  {
                     if(MenuClass.systemData["EExpert"]["_check"])
                     {
                        if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_easyLink"] != undefined)
                        {
                           MenuClass.charaData[_loc2_][MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_easyLink"]]["_visible"][Tab_VC.menuNum] = !_loc5_;
                           new SetClass(_loc2_,MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_easyLink"],"tab");
                        }
                     }
                     MenuClass.charaData[_loc2_][_loc4_]["_visible"][Tab_VC.menuNum] = !_loc5_;
                     new SetClass(_loc2_,param1.currentTarget.tabName,"tab");
                  }
                  _loc2_++;
               }
            }
            else
            {
               if(MenuClass.systemData["EExpert"]["_check"])
               {
                  if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_easyLink"] != undefined)
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum][MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_easyLink"]]["_visible"][Tab_VC.menuNum] = !MenuClass.charaData[MenuClass._nowCharaNum][_loc4_]["_visible"][Tab_VC.menuNum];
                     new SetClass(MenuClass._nowCharaNum,MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_easyLink"],"tab");
                  }
               }
               MenuClass.charaData[MenuClass._nowCharaNum][_loc4_]["_visible"][Tab_VC.menuNum] = !MenuClass.charaData[MenuClass._nowCharaNum][_loc4_]["_visible"][Tab_VC.menuNum];
               new SetClass(MenuClass._nowCharaNum,param1.currentTarget.tabName,"tab");
               emotionCheck(param1.currentTarget.headerName,MenuClass._nowCharaNum);
            }
         }
         else if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_visible"] == "system" || MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_visible"] == "systemPlus")
         {
            if(Tab_FileReference.loadCheck)
            {
               undoAction.recordNewValue(!MenuClass.systemData[_loc4_]["_visible"][Tab_VC.menuNum], curSelectedSlot);
               MenuClass.systemData[_loc4_]["_visible"][Tab_VC.menuNum] = !MenuClass.systemData[_loc4_]["_visible"][Tab_VC.menuNum];
               new SetClass(MenuClass._nowCharaNum,param1.currentTarget.tabName,"tab");
            }
         }
         else if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_visible"] == "SelectCharacter")
         {
            var prevVisible = MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0];
            undoAction.recordNewValue(!prevVisible, 0);

            if(MenuClass._nowTargetMode == "All")
            {
               _loc5_ = MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0];
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0] = !_loc5_;
                  new SetClass(_loc2_,"SelectCharacter_visible","tab");
                  _loc2_++;
               }
               if(MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0])
               {
                  try
                  {
                     MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.obj.obj.scaleY = 0.9;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc5_ = MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0];
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc2_])
                  {
                     MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0] = !_loc5_;
                     new SetClass(_loc2_,"SelectCharacter_visible","tab");
                  }
                  _loc2_++;
               }
               if(MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0])
               {
                  try
                  {
                     MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.obj.obj.scaleY = 0.9;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else
            {
               MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0] = !MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0];
               new SetClass(MenuClass._nowCharaNum,"SelectCharacter_visible","tab");
            }
            new Chara_SelectClass("open");
         }

         Main.undoTimeline.push(undoAction);

         new Tab_SetClass();
      }
      
      public static function emotionCheck(param1:String, param2:int) : void
      {
         if(param1 == "Seihuku" || param1 == "Skirt" || param1 == "Bura" || param1 == "Hat")
         {
            new Tab_EmotionCheck(param2,1);
         }
      }
   }
}
