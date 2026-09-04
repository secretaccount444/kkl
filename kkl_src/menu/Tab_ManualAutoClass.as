package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import undo.ManualAutoAction;
   
   public class Tab_ManualAutoClass
   {
       
      
      public function Tab_ManualAutoClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String) : void
      {
         param1.tabName = param2;
         param1.AutoBtn.addEventListener(MouseEvent.MOUSE_DOWN,AutoBtnClick);
         param1.ManualBtn.addEventListener(MouseEvent.MOUSE_DOWN,ManualBtnClick);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.AutoBtn.removeEventListener(MouseEvent.MOUSE_DOWN,AutoBtnClick);
         param1.ManualBtn.removeEventListener(MouseEvent.MOUSE_DOWN,ManualBtnClick);
      }
      
      public static function AutoBtnClick(param1:MouseEvent) : void
      {
         var undoAction = new ManualAutoAction(MenuClass._nowHeaderName, param1.currentTarget.parent.tabName, true);
         var _loc2_:int = 0;
         new Stage_MoveCheckClass();


         if(param1.currentTarget.parent.tabName == "BreastManualAuto")
         {
            Main.undoTimeline.push(undoAction);

            if(MenuClass._nowTargetMode == "All")
            {
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  MenuClass.charaData[_loc2_][param1.currentTarget.parent.tabName]["_check"] = false;
                  if(MenuClass._nowHeaderName == "Hand")
                  {
                     MenuClass.charaData[_loc2_]["BreastMove"]["_mode"][0] = "tateYure";
                     MenuClass.charaData[_loc2_]["BreastMove"]["_mode"][1] = "tateYure";
                     MenuClass.charaData[_loc2_]["BreastMove"]["_count"][0] = 0;
                     MenuClass.charaData[_loc2_]["BreastMove"]["_count"][1] = 0;
                     MenuClass.charaData[_loc2_]["NippleMove"]["_mode"][0] = 1;
                     MenuClass.charaData[_loc2_]["NippleMove"]["_mode"][1] = 1;
                     MenuClass.charaData[_loc2_]["NippleMove"]["_count"][0] = 0;
                     MenuClass.charaData[_loc2_]["NippleMove"]["_count"][1] = 0;
                  }
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
                     MenuClass.charaData[_loc2_][param1.currentTarget.parent.tabName]["_check"] = false;
                     if(MenuClass._nowHeaderName == "Hand")
                     {
                        MenuClass.charaData[_loc2_]["BreastMove"]["_mode"][0] = "tateYure";
                        MenuClass.charaData[_loc2_]["BreastMove"]["_mode"][1] = "tateYure";
                        MenuClass.charaData[_loc2_]["BreastMove"]["_count"][0] = 0;
                        MenuClass.charaData[_loc2_]["BreastMove"]["_count"][1] = 0;
                        MenuClass.charaData[_loc2_]["NippleMove"]["_mode"][0] = 1;
                        MenuClass.charaData[_loc2_]["NippleMove"]["_mode"][1] = 1;
                        MenuClass.charaData[_loc2_]["NippleMove"]["_count"][0] = 0;
                        MenuClass.charaData[_loc2_]["NippleMove"]["_count"][1] = 0;
                     }
                  }
                  _loc2_++;
               }
            }
            else
            {
               MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.parent.tabName]["_check"] = false;
               if(MenuClass._nowHeaderName == "Hand")
               {
                  MenuClass.charaData[MenuClass._nowCharaNum]["BreastMove"]["_mode"][0] = "tateYure";
                  MenuClass.charaData[MenuClass._nowCharaNum]["BreastMove"]["_mode"][1] = "tateYure";
                  MenuClass.charaData[MenuClass._nowCharaNum]["BreastMove"]["_count"][0] = 0;
                  MenuClass.charaData[MenuClass._nowCharaNum]["BreastMove"]["_count"][1] = 0;
                  MenuClass.charaData[MenuClass._nowCharaNum]["NippleMove"]["_mode"][0] = 1;
                  MenuClass.charaData[MenuClass._nowCharaNum]["NippleMove"]["_mode"][1] = 1;
                  MenuClass.charaData[MenuClass._nowCharaNum]["NippleMove"]["_count"][0] = 0;
                  MenuClass.charaData[MenuClass._nowCharaNum]["NippleMove"]["_count"][1] = 0;
               }
            }
            
            if(!MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.parent.tabName]["_check"])
            {
               if(MenuClass._nowTargetMode == "All")
               {
                  _loc2_ = 0;
                  while(_loc2_ <= MenuClass._characterNum)
                  {
                     MenuClass.charaData[_loc2_][param1.currentTarget.parent.tabName]["_check"] = true;
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
                        MenuClass.charaData[_loc2_][param1.currentTarget.parent.tabName]["_check"] = true;
                     }
                     _loc2_++;
                  }
               }
               else
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.parent.tabName]["_check"] = true;
               }
            }
         }
         else if(!MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.parent.tabName]["_check"])
         {
            Main.undoTimeline.push(undoAction);
            if(MenuClass._nowTargetMode == "All")
            {
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  new Tab_EmotionCheck(_loc2_,1);
                  MenuClass.charaData[_loc2_][param1.currentTarget.parent.tabName]["_check"] = true;
                  if(param1.currentTarget.parent.tabName == "EmotionManualAuto")
                  {
                     MenuClass.charaData[_loc2_]["MouthSen"]["_menu"] = 2;
                     MenuClass.charaData[_loc2_]["MouthRotation"]["_meter"] = 50;
                     MenuClass.charaData[_loc2_]["MouthXMove"]["_meter"] = 50;
                  }
                  else if(param1.currentTarget.parent.tabName == "TinSizeAuto")
                  {
                     new SetClass(_loc2_, "TinSizeAuto", "tab");
                  }
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
                     new Tab_EmotionCheck(_loc2_,1);
                     MenuClass.charaData[_loc2_][param1.currentTarget.parent.tabName]["_check"] = true;
                     if(param1.currentTarget.parent.tabName == "EmotionManualAuto")
                     {
                        MenuClass.charaData[_loc2_]["MouthSen"]["_menu"] = 2;
                        MenuClass.charaData[_loc2_]["MouthRotation"]["_meter"] = 50;
                        MenuClass.charaData[_loc2_]["MouthXMove"]["_meter"] = 50;
                     }
                  else if(param1.currentTarget.parent.tabName == "TinSizeAuto")
                  {
                     new SetClass(_loc2_, "TinSizeAuto", "tab");
                  }
                  }
                  _loc2_++;
               }
            }
            else
            {
               new Tab_EmotionCheck(MenuClass._nowCharaNum,1);
               MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.parent.tabName]["_check"] = true;
               if(param1.currentTarget.parent.tabName == "EmotionManualAuto")
               {
                  MenuClass.charaData[MenuClass._nowCharaNum]["MouthSen"]["_menu"] = 2;
                  MenuClass.charaData[MenuClass._nowCharaNum]["MouthRotation"]["_meter"] = 50;
                  MenuClass.charaData[MenuClass._nowCharaNum]["MouthXMove"]["_meter"] = 50;
               }
               else if(param1.currentTarget.parent.tabName == "TinSizeAuto")
               {
                  new SetClass(MenuClass._nowCharaNum, "TinSizeAuto", "tab");
               }
            }
         }
         new Tab_SetClass();
      }
      
      public static function ManualBtnClick(param1:MouseEvent) : void
      {
         var undoAction = new ManualAutoAction(MenuClass._nowHeaderName, param1.currentTarget.parent.tabName, false);
         var _loc2_:int = 0;
         new Stage_MoveCheckClass();

         if(MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.parent.tabName]["_check"])
         {
            Main.undoTimeline.push(undoAction);
         
            if(MenuClass._nowTargetMode == "All")
            {
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  MenuClass.charaData[_loc2_][param1.currentTarget.parent.tabName]["_check"] = false;
                  if(param1.currentTarget.parent.tabName == "TinSizeAuto")
                  {
                     new SetClass(_loc2_, "TinSizeAuto", "tab");
                  }
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
                     MenuClass.charaData[_loc2_][param1.currentTarget.parent.tabName]["_check"] = false;
                     if(param1.currentTarget.parent.tabName == "TinSizeAuto")
                     {
                        new SetClass(_loc2_, "TinSizeAuto", "tab");
                     }
                  }
                  _loc2_++;
               }
            }
            else
            {
               MenuClass.charaData[MenuClass._nowCharaNum][param1.currentTarget.parent.tabName]["_check"] = false;
               if(param1.currentTarget.parent.tabName == "TinSizeAuto")
               {
                  new SetClass(MenuClass._nowCharaNum, "TinSizeAuto", "tab");
               }
            }
         }
         new Tab_SetClass();
      }
   }
}
