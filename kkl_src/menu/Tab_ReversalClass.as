package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import undo.PropertyAction;
   import parts.Ribbon;
   
   public class Tab_ReversalClass
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_ReversalClass()
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
         var dataTarget:String = null;
         var selectedSlot:int = 0;
         var itemType:String = null;
         var dataKey:String = null;
         var targetPart = null;
         var _loc6_:int = 0;
         targetMC = param1.currentTarget as MovieClip;
         MenuClass._nowTabName = targetMC.tabName;
         targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);


         if(MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_reversal"])
         {
            itemType = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_reversal"];
         }
         else if(MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_menu"])
         {
            itemType = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_menu"];
         }
         else if(MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_meter"])
         {
            itemType = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_meter"];
         }

         var undoAction = new PropertyAction(
            targetMC.headerName, targetMC.targetJ, "_reversal",
            (itemType == "chara" || itemType == "charaPlus"),
            (itemType == "systemPlus" || itemType == "charaPlus"),
            "tab", true
         );

         if (targetMC.headerName == "Ribon") 
         {
            targetPart = Ribbon.fromCharacter(MenuClass._nowCharaNum, MenuClass.systemData["RibonPlus"]["_menu"]);
            targetPart.ensureInitialized();
         }

         if(itemType == "charaPlus" || itemType == "systemPlus")
         {
            dataTarget = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_data"];
            selectedSlot = MenuClass.systemData[dataTarget]["_menu"];
            dataKey = targetMC.tabName + selectedSlot;
         }
         else if(itemType == "chara" || itemType == "system")
         {
            dataKey = targetMC.tabName;
         }

         undoAction.recordPreviousValue(selectedSlot);
         new Tab_VC(targetMC.headerName,targetMC.targetJ,dataKey);

         if(itemType == "chara" || itemType == "charaPlus")
         {
            var newReversal = int(!MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal"]);
            undoAction.recordNewValue(newReversal, selectedSlot);

            if(MenuClass._nowTargetMode == "All")
            {
               if (targetMC.headerName == "Ribon") {
                  targetPart.reversal = newReversal;
               } else {
                  MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal"] = int(!MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal"]);
               }

               _loc6_ = 0;
               for(; _loc6_ <= MenuClass._characterNum; new SetClass(_loc6_,targetMC.tabName,"tab"),_loc6_++)
               {
                  if (targetMC.headerName == "Ribon") {
                     var ribbon = Ribbon.fromCharacter(_loc6_, selectedSlot);
                     ribbon.reversal = newReversal;
                  } else {
                     MenuClass.charaData[_loc6_][dataKey]["_reversal"] = int(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal"]);
                     try
                     {
                        if(MenuClass.charaData[_loc6_][dataKey]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc6_][dataKey]["_visible"].length == 1)
                        {
                           MenuClass.charaData[_loc6_][dataKey]["_visible"][Tab_VC.menuNum] = true;
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               if (targetMC.headerName == "Ribon") {
                  targetPart.reversal = newReversal;
               } else {
                  MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal"] = int(!MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal"]);
               }

               _loc6_ = 0;
               while(_loc6_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc6_])
                  {
                     if (targetMC.headerName == "Ribon") {
                        var ribbon = Ribbon.fromCharacter(_loc6_, selectedSlot);
                        ribbon.reversal = newReversal;
                     } else {
                        MenuClass.charaData[_loc6_][dataKey]["_reversal"] = int(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal"]);
                        try
                        {
                           if(MenuClass.charaData[_loc6_][dataKey]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc6_][dataKey]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc6_][dataKey]["_visible"][Tab_VC.menuNum] = true;
                           }
                        }
                        catch(myError:Error)
                        {
                           continue;
                        }
                     }
                     new SetClass(_loc6_,targetMC.tabName,"tab");
                  }
                  _loc6_++;
               }
            }
            else
            {
               if (targetMC.headerName == "Ribon") {
                  targetPart.reversal = newReversal;
               } else {
                  MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal"] = int(!MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal"]);
               }

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


            if (targetMC.headerName == "Ribon") {
               if(targetPart.reversal) {
                  targetMC.gotoAndStop(3);
               } else {
                  targetMC.gotoAndStop(4);
               }
            } else {
               if(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_reversal"]) {
                  targetMC.gotoAndStop(3);
               } else {
                  targetMC.gotoAndStop(4);
               }
            }

         }
         else if(itemType == "system" || itemType == "systemPlus")
         {
            var newReversal = int(!MenuClass.systemData[dataKey]["_reversal"]);
            undoAction.recordNewValue(newReversal, selectedSlot);

            MenuClass.systemData[dataKey]["_reversal"] = int(!MenuClass.systemData[dataKey]["_reversal"]);
            try
            {
               if(MenuClass.systemData[dataKey]["_visible"][Tab_VC.menuNum] == false && MenuClass.systemData[dataKey]["_visible"].length == 1)
               {
                  MenuClass.systemData[dataKey]["_visible"][Tab_VC.menuNum] = true;
               }
            }
            catch(myError:Error)
            {
            }
            new SetClass(0,targetMC.tabName,"tab");
            if(MenuClass.systemData[dataKey]["_reversal"])
            {
               targetMC.gotoAndStop(3);
            }
            else
            {
               targetMC.gotoAndStop(4);
            }
         }

         Main.undoTimeline.push(undoAction);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         new Tab_SetClass();
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
