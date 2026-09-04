package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import undo.PropertyAction;
   
   public class Tab_Reversal2Class
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_Reversal2Class()
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
         var dataKey:String = null;
         var _loc4_:int = 0;
         var dataTarget:String = null;
         var selectedSlot:int = 0;
         targetMC = param1.currentTarget as MovieClip;
         MenuClass._nowTabName = targetMC.tabName;
         var menuType:String = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_menu"];

         var undoAction = new PropertyAction(
            targetMC.headerName, targetMC.targetJ,"_reversal2",
            true, menuType == "charaPlus",
            "tab", true
         );

         if(menuType == "charaPlus")
         {
            dataTarget = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_data"];
            selectedSlot = MenuClass.systemData[dataTarget]["_menu"];
            dataKey = targetMC.tabName + selectedSlot;
         }
         else
         {
            dataKey = targetMC.tabName;
         }

         undoAction.recordPreviousValue(selectedSlot);

         targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         new Tab_VC(targetMC.headerName,targetMC.targetJ,dataKey);
         if(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal2"] == 2)
         {
            MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal2"] = 0;
         }
         else
         {
            ++MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal2"];
         }

         undoAction.recordNewValue(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal2"], selectedSlot);
         Main.undoTimeline.push(undoAction);

         if(MenuClass._nowTargetMode == "All")
         {
            _loc4_ = 0;
            for(; _loc4_ <= MenuClass._characterNum; new SetClass(_loc4_,targetMC.tabName,"tab"),_loc4_++)
            {
               MenuClass.charaData[_loc4_][dataKey]["_reversal2"] = MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal2"];
               try
               {
                  if(MenuClass.charaData[_loc4_][dataKey]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc4_][dataKey]["_visible"].length == 1)
                  {
                     MenuClass.charaData[_loc4_][dataKey]["_visible"][Tab_VC.menuNum] = true;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            _loc4_ = 0;
            while(_loc4_ <= MenuClass._characterNum)
            {
               if(MenuClass._nowSelectChara[_loc4_])
               {
                  MenuClass.charaData[_loc4_][dataKey]["_reversal2"] = MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal2"];
                  try
                  {
                     if(MenuClass.charaData[_loc4_][dataKey]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc4_][dataKey]["_visible"].length == 1)
                     {
                        MenuClass.charaData[_loc4_][dataKey]["_visible"][Tab_VC.menuNum] = true;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  new SetClass(_loc4_,targetMC.tabName,"tab");
               }
               _loc4_++;
            }
         }
         else
         {
            try
            {
               if(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_visible"].length == 1)
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_visible"][Tab_VC.menuNum] = true;
               }
            }
            catch(myError:Error)
            {
            }
            new SetClass(MenuClass._nowCharaNum,targetMC.tabName,"tab");
         }

         if(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal2"] == 0)
         {
            targetMC.gotoAndStop(4);
         }
         else if(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal2"] == 1)
         {
            targetMC.gotoAndStop(5);
         }
         else if(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal2"] == 2)
         {
            targetMC.gotoAndStop(6);
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         new Tab_SetClass();
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
