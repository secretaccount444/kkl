package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform; 
   import undo.PropertyAction;
   
   public class Tab_DepthClass
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_DepthClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:int, param3:String, param4:String) : void
      {
         param1.tabName = param4;
         param1.targetJ = param2;
         param1.headerName = param3;
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
         var itemType:String = null;
         var dataTarget:String = null;
         var selectedSlot:int = 0;
         var dataKey:String = null;

         targetMC = param1.currentTarget as MovieClip;
         MenuClass._nowTabName = targetMC.tabName;
         targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);

         if(MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_menu"])
         {
            itemType = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_menu"];
         }
         else if(MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_meter"])
         {
            itemType = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_meter"];
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

         var undoAction = new PropertyAction(
            targetMC.headerName, targetMC.targetJ, "_depth",
            (itemType == "charaPlus" || itemType == "chara"),
            (itemType == "charaPlus" || itemType == "systemPlus"),
            "depth", (itemType == "charaPlus" || itemType == "chara")
         );

         undoAction.recordPreviousValue(selectedSlot);

         new Tab_VC(targetMC.headerName,targetMC.targetJ,dataKey);
         if(itemType == "charaPlus" || itemType == "chara")
         {
            if(MenuClass._nowTargetMode == "All")
            {
               _loc2_ = 0;
               for(; _loc2_ <= MenuClass._characterNum; DepthChange(_loc2_,targetMC.targetJ,targetMC.headerName,targetMC.tabName,dataKey,undoAction,selectedSlot),_loc2_++)
               {
                  try
                  {
                     if(MenuClass.charaData[_loc2_][dataKey]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc2_][dataKey]["_visible"].length == 1)
                     {
                        MenuClass.charaData[_loc2_][dataKey]["_visible"][Tab_VC.menuNum] = true;
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
               DepthChange(MenuClass._nowCharaNum,targetMC.targetJ,targetMC.headerName,targetMC.tabName,dataKey,undoAction,selectedSlot);
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc2_])
                  {
                     try
                     {
                        if(MenuClass.charaData[_loc2_][dataKey]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc2_][dataKey]["_visible"].length == 1)
                        {
                           MenuClass.charaData[_loc2_][dataKey]["_visible"][Tab_VC.menuNum] = true;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     MenuClass.charaData[_loc2_][dataKey]["_depth"] = int(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_depth"]);
                     new SetClass(_loc2_,targetMC.tabName,"depth");
                  }
                  _loc2_++;
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
               DepthChange(MenuClass._nowCharaNum,targetMC.targetJ,targetMC.headerName,targetMC.tabName,dataKey,undoAction,selectedSlot);
            }

            targetMC.transform.colorTransform = new ColorTransform();

            targetMC.scaleY = 1;
            targetMC.y = 2;
            if(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_depth"] == 0)
            {
               targetMC.gotoAndStop(5);
            }
            else if(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_depth"] == 1)
            {
               targetMC.gotoAndStop(6);
            }
            else if(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_depth"] == 2)
            {
               if (
                  targetMC.tabName === "CharaLoadReversalDepth" && MenuClass.charaData[MenuClass._nowCharaNum][dataKey.replace("ReversalDepth", "Add")]["_add0"] == 0
               ) {
                  var prevCxForm = targetMC.transform.colorTransform;

                  prevCxForm.redMultiplier = 0.5;
                  prevCxForm.greenMultiplier = 0.5;
                  prevCxForm.blueMultiplier = 0.5;

                  prevCxForm.redOffset = 139 * 0.5;
                  prevCxForm.greenOffset = 75 * 0.5;
                  prevCxForm.blueOffset = 143 * 0.5;

                  targetMC.transform.colorTransform = prevCxForm;

                  targetMC.gotoAndStop(6);
               } else {
                  targetMC.gotoAndStop(7);
               }
            }
            else if(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_depth"] == 3)
            {
               if (targetMC.tabName === "LeftArm2" || targetMC.tabName === "RightArm2") {
                  targetMC.gotoAndStop(5);
                  targetMC.y = 30;
                  targetMC.scaleY = -1;
               } else {
                  targetMC.gotoAndStop(8);
               }
            }
         }
         else
         {
            DepthChange2(targetMC.targetJ,targetMC.headerName,targetMC.tabName,dataKey,undoAction,selectedSlot);
            if(MenuClass.systemData[dataKey]["_depth"] == 0)
            {
               targetMC.gotoAndStop(5);
            }
            else if(MenuClass.systemData[dataKey]["_depth"] == 1)
            {
               targetMC.gotoAndStop(6);
            }
            else if(MenuClass.systemData[dataKey]["_depth"] == 2)
            {
               targetMC.gotoAndStop(7);
            }
            else if(MenuClass.systemData[dataKey]["_depth"] == 3)
            {
               targetMC.gotoAndStop(8);
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
      
      public static function DepthChange(param1:int, param2:int, param3:String, param4:String, param5:String, undoAction: PropertyAction,selectedSlot:int) : void
      {
         var _loc6_:String = null;
         if(param3 == "HairEx")
         {
            _loc6_ = param5.replace("HairEx","");
            if(MenuClass.charaData[param1]["HairExAdd" + _loc6_]["_add0"] == 2 || MenuClass.charaData[param1]["HairExAdd" + _loc6_]["_add0"] == 3)
            {
               if(MenuClass.charaData[param1][param5]["_depth"] == 0)
               {
                  MenuClass.charaData[param1][param5]["_depth"] = 1;
               }
               else
               {
                  MenuClass.charaData[param1][param5]["_depth"] = 0;
               }
            }
            else if(MenuClass.charaData[param1][param5]["_depth"] < 2)
            {
               MenuClass.charaData[param1][param5]["_depth"] += 1;
            }
            else
            {
               MenuClass.charaData[param1][param5]["_depth"] = 0;
            }
         }
         else if(param5 == "LeftArm2" || param5 == "RightArm2") {
            MenuClass.charaData[param1][param5]["_depth"] = (MenuClass.charaData[param1][param5]["_depth"] + 1) % (MenuClass.tabData[param3][param2][2]["_depth"] + 1);
         }
         else if(MenuClass.tabData[param3][param2][2]["_depth"] == 1)
         {
            if(MenuClass.charaData[param1][param5]["_depth"] == 0)
            {
               MenuClass.charaData[param1][param5]["_depth"] = 1;
            }
            else
            {
               MenuClass.charaData[param1][param5]["_depth"] = 0;
            }
         }
         else if(MenuClass.tabData[param3][param2][2]["_depth"] == 2)
         {
            if(MenuClass.charaData[param1][param5]["_depth"] < 2)
            {
               MenuClass.charaData[param1][param5]["_depth"] += 1;
            }
            else
            {
               MenuClass.charaData[param1][param5]["_depth"] = 0;
            }
         }
         else if(MenuClass.tabData[param3][param2][2]["_depth"] == 3)
         {
            if(MenuClass.charaData[param1][param5]["_depth"] < 3)
            {
               MenuClass.charaData[param1][param5]["_depth"] += 1;
            }
            else
            {
               MenuClass.charaData[param1][param5]["_depth"] = 0;
            }
         }
         undoAction.recordNewValue(MenuClass.charaData[param1][param5]["_depth"], selectedSlot);
         new SetClass(param1,param4,"depth");
      }
      
      public static function DepthChange2(param1:int, param2:String, param3:String, param4:String, undoAction: PropertyAction,selectedSlot:int) : void
      {
         if(MenuClass.tabData[param2][param1][2]["_depth"] == 1)
         {
            if(MenuClass.systemData[param4]["_depth"] == 0)
            {
               MenuClass.systemData[param4]["_depth"] = 1;
            }
            else
            {
               MenuClass.systemData[param4]["_depth"] = 0;
            }
         }
         else if(MenuClass.tabData[param2][param1][2]["_depth"] == 2)
         {
            if(MenuClass.systemData[param4]["_depth"] < 2)
            {
               MenuClass.systemData[param4]["_depth"] += 1;
            }
            else
            {
               MenuClass.systemData[param4]["_depth"] = 0;
            }
         }
         else if(MenuClass.tabData[param2][param1][2]["_depth"] == 3)
         {
            if(MenuClass.systemData[param4]["_depth"] < 3)
            {
               MenuClass.systemData[param4]["_depth"] += 1;
            }
            else
            {
               MenuClass.systemData[param4]["_depth"] = 0;
            }
         }
         undoAction.recordNewValue(MenuClass.systemData[param4]["_depth"], selectedSlot);
         new SetClass(0,param3,"depth");
      }
   }
}
