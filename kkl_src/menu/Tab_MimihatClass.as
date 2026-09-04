package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import undo.PropertyAction;
   
   public class Tab_MimihatClass
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_MimihatClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:int, param3:String, param4:String) : void
      {
         param1.headerName = param3;
         param1.tabName = param4;
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
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         targetMC = param1.currentTarget as MovieClip;
         MenuClass._nowTabName = targetMC.tabName;
         targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         if(MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_mimihat"])
         {
            _loc4_ = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_mimihat"];
         }
         else if(MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_menu"])
         {
            _loc4_ = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_menu"];
         }
         else if(MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_meter"])
         {
            _loc4_ = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_meter"];
         }

         if(_loc4_ == "charaPlus" || _loc4_ == "systemPlus")
         {
            _loc2_ = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_data"];
            _loc3_ = MenuClass.systemData[_loc2_]["_menu"];
            _loc5_ = targetMC.tabName + _loc3_;
         }
         else if(_loc4_ == "chara" || _loc4_ == "system")
         {
            _loc5_ = targetMC.tabName;
         }
         
         new Tab_VC(targetMC.headerName,targetMC.targetJ,_loc5_);
         if(_loc4_ == "chara" || _loc4_ == "charaPlus")
         {
            var undoAction = new PropertyAction(
               targetMC.headerName, targetMC.targetJ, "_mimihat",
               true, (_loc4_ == "charaPlus"),
               "tab", true
            );

            var newVal = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_mimihat"];

            undoAction.recordPreviousValue(_loc3_);
            undoAction.recordNewValue(newVal, _loc3_);
            Main.undoTimeline.push(undoAction);

            if(MenuClass._nowTargetMode == "All")
            {
               _loc6_ = 0;
               for(; _loc6_ <= MenuClass._characterNum; new SetClass(_loc6_,targetMC.tabName,"tab"),_loc6_++)
               {
                  if(MenuClass.charaData[_loc6_][_loc5_]["_mimihat"] == 1)
                  {
                     MenuClass.charaData[_loc6_][_loc5_]["_mimihat"] = 0;
                     targetMC.gotoAndStop(3);
                     MenuClass.charaAdd[_loc6_].head.Mimi.buttonMode = false;
                  }
                  else
                  {
                     MenuClass.charaData[_loc6_][_loc5_]["_mimihat"] = 1;
                     targetMC.gotoAndStop(4);
                     MenuClass.charaAdd[_loc6_].head.Mimi.buttonMode = true;
                  }
                  MenuClass.charaData[_loc6_][_loc5_]["_mimihat"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_mimihat"];
                  try
                  {
                     if(MenuClass.charaData[_loc6_][_loc5_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc6_][_loc5_]["_visible"].length == 1)
                     {
                        MenuClass.charaData[_loc6_][_loc5_]["_visible"][Tab_VC.menuNum] = true;
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
               _loc6_ = 0;
               while(_loc6_ <= MenuClass._characterNum)
               {
                  if(MenuClass.charaData[_loc6_][_loc5_]["_mimihat"] == 1)
                  {
                     MenuClass.charaData[_loc6_][_loc5_]["_mimihat"] = 0;
                     targetMC.gotoAndStop(3);
                     MenuClass.charaAdd[_loc6_].head.Mimi.buttonMode = false;
                  }
                  else
                  {
                     MenuClass.charaData[_loc6_][_loc5_]["_mimihat"] = 1;
                     targetMC.gotoAndStop(4);
                     MenuClass.charaAdd[_loc6_].head.Mimi.buttonMode = true;
                  }
                  if(MenuClass._nowSelectChara[_loc6_])
                  {
                     MenuClass.charaData[_loc6_][_loc5_]["_mimihat"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_mimihat"];
                     try
                     {
                        if(MenuClass.charaData[_loc6_][_loc5_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc6_][_loc5_]["_visible"].length == 1)
                        {
                           MenuClass.charaData[_loc6_][_loc5_]["_visible"][Tab_VC.menuNum] = true;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     new SetClass(_loc6_,targetMC.tabName,"tab");
                  }
                  _loc6_++;
               }
            }
            else
            {
               if(MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_mimihat"] == 1)
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_mimihat"] = 0;
                  targetMC.gotoAndStop(3);
                  MenuClass.charaAdd[MenuClass._nowCharaNum].head.Mimi.buttonMode = false;
               }
               else
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_mimihat"] = 1;
                  targetMC.gotoAndStop(4);
                  MenuClass.charaAdd[MenuClass._nowCharaNum].head.Mimi.buttonMode = true;
               }
               try
               {
                  if(MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_visible"].length == 1)
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_visible"][Tab_VC.menuNum] = true;
                  }
               }
               catch(myError:Error)
               {
               }
               new SetClass(MenuClass._nowCharaNum,targetMC.tabName,"tab");
            }
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
