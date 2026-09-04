package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import parameter.Chara_IEdata;
   import parameter.Dress_data;
   import parameter.Vibrator_data;
   import undo.SetMenuAction;
   
   public class Tab_MenuClass
   {
      
      public static var nowbtn:MovieClip;
      
      public static var tabName:String;
      
      public static var targetJ:int;
      
      public static var headerName:String;
      
      public static var Nagaoshi_count:int;
      
      public static var enterCount:int;
      
      public static var enterCountSelect:int = 0;
      
      public static var selectCheckNum:int = 0;
      
      public static var selectTabName:String;
      
      public static var menuKeyNum:String = "";
      
      public static var menuBtnType:int = 2;
      
      public static var keySetType:String = "menu";

      public static var curUndoAction: SetMenuAction = null;
       
      
      public function Tab_MenuClass()
      {
         super();
      }
      
      public static function setFc(param1:String, param2:int, param3:String) : void
      {
         MenuClass.tabMenuAdd[param1].menu0.tabName = param1;
         MenuClass.tabMenuAdd[param1].menu0.headerName = param3;
         MenuClass.tabMenuAdd[param1].menu0.targetJ = param2;
         MenuClass.tabMenuAdd[param1].menu0.minus.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd[param1].menu0.minus.buttonMode = true;
         try
         {
            MenuClass.tabMenuAdd[param1].menu0.btn0.doubleClickEnabled = true;
            MenuClass.tabMenuAdd[param1].menu0.btn0.addEventListener(MouseEvent.DOUBLE_CLICK,btn0Click);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd[param1].menu0.btn1.doubleClickEnabled = true;
            MenuClass.tabMenuAdd[param1].menu0.btn1.addEventListener(MouseEvent.DOUBLE_CLICK,btn1Click);
         }
         catch(myError:Error)
         {
         }
         MenuClass.tabMenuAdd[param1].menu0.plus.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd[param1].menu0.plus.buttonMode = true;
         new Tab_TextInClass(1,param1,MenuClass.menuData[param1]);
      }
      
      public static function deleteFc(param1:String) : void
      {
         enterCount = 0;
         enterCountSelect = 0;
         MenuClass.tabMenuAdd[param1].menu0.minus.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd[param1].menu0.plus.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         try
         {
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd[param1].menu0.removeEventListener(Event.ENTER_FRAME,EnterFrame2);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd[param1].menu0.removeEventListener(Event.ENTER_FRAME,EnterFrame3);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd[param1].menu0.removeEventListener(Event.ENTER_FRAME,EnterFrame4);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd[param1].menu0.btn0.removeEventListener(MouseEvent.DOUBLE_CLICK,btn0Click);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd[param1].menu0.btn1.removeEventListener(MouseEvent.DOUBLE_CLICK,btn1Click);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function btn0Click(param1:MouseEvent) : void
      {
         keySetType = "menu";
         tabName = param1.currentTarget.parent.tabName;
         targetJ = param1.currentTarget.parent.targetJ;
         headerName = param1.currentTarget.parent.headerName;
         menuBtnType = 2;
         MenuClass.tabMenuAdd[tabName].menu0.btn0.gotoAndStop(2);
         MenuClass.menuSetFlag = true;
         menuKeyNum = "";
      }
      
      public static function btn1Click(param1:MouseEvent) : void
      {
         keySetType = "menu";
         tabName = param1.currentTarget.parent.tabName;
         targetJ = param1.currentTarget.parent.targetJ;
         headerName = param1.currentTarget.parent.headerName;
         menuBtnType = 3;
         MenuClass.tabMenuAdd[tabName].menu0.btn1.gotoAndStop(2);
         MenuClass.menuSetFlag = true;
         menuKeyNum = "";
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         tabName = param1.currentTarget.parent.tabName;
         headerName = param1.currentTarget.parent.headerName;
         targetJ = param1.currentTarget.parent.targetJ;
         selectCheckNum = 0;
         new Stage_MoveCheckClass();
         nowbtn = param1.currentTarget as MovieClip;
         nowbtn.gotoAndStop(2);

         var menuType:String = MenuClass.tabData[headerName][targetJ][2]["_menu"];
         var menuTarget = MenuClass.tabData[headerName][targetJ][2]["_menuTarget"];
         var selectedSlot:int = 0;

         curUndoAction = null;
         if (menuType != "SelectCharacter" && menuTarget != "single" && tabName != "DressSet" && tabName != "UnderwearSet" && tabName != "VibratorMove" && headerName != "Tool") {
            if (menuType == "charaPlus" || menuType == "systemPlus") {
               var dataTarget = MenuClass.tabData[headerName][targetJ][2]["_data"];
               selectedSlot = MenuClass.systemData[dataTarget]["_menu"];
            }

            curUndoAction = new SetMenuAction(headerName, targetJ, true);
            curUndoAction.recordPreviousValue(selectedSlot);
         }

         MenuAction(nowbtn.name,tabName);
         nowbtn.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Nagaoshi_count = 0;
         Main.stageVar.addEventListener(Event.ENTER_FRAME,EnterFrame);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         nowbtn.gotoAndStop(1);
         nowbtn.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);

         if (curUndoAction && headerName != "Tool") {
            Main.undoTimeline.push(curUndoAction);
         }
         curUndoAction = null;
      }
      
      public static function MenuAction(action:String, tabName:String) : void
      {
         var _loc3_:int = 0;
         var dataKey:String = null;
         var dataTarget:String = null;
         var selectedSlot:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         MenuClass._nowTabName = tabName;
         var menuType:String = MenuClass.tabData[headerName][targetJ][2]["_menu"];

         if(menuType  == "charaPlus" || menuType == "systemPlus")
         {
            dataTarget = MenuClass.tabData[headerName][targetJ][2]["_data"];
            selectedSlot = MenuClass.systemData[dataTarget]["_menu"];
            dataKey = tabName + selectedSlot;
         }
         else
         {
            dataKey = tabName;
         }

         var _loc7_:Boolean = false;

         try
         {
            if(Dress_data.menuCustom[tabName][0] >= 0)
            {
               _loc7_ = true;
            }
         }
         catch(myError:Error)
         {
         }

         if(dataKey == "Story_Page")
         {
            MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
         }

         if(menuType == "chara" || menuType == "charaPlus")
         {
            if(action == "plus")
            {
               if(_loc7_)
               {
                  Dress_data.menuCustomNum[MenuClass._nowCharaNum][tabName] += 1;
                  MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_menu"] = Dress_data.menuCustom[tabName][Dress_data.menuCustomNum[MenuClass._nowCharaNum][tabName]];
               }
               else
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_menu"] += 1;
               }
            }
            else if(action == "minus")
            {
               if(_loc7_)
               {
                  Dress_data.menuCustomNum[MenuClass._nowCharaNum][tabName] = Dress_data.menuCustomNum[MenuClass._nowCharaNum][tabName] - 1;
                  MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_menu"] = Dress_data.menuCustom[tabName][Dress_data.menuCustomNum[MenuClass._nowCharaNum][tabName]];
               }
               else
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_menu"] - 1;
               }
            }

            if (curUndoAction) {
               if(_loc7_) {
                  curUndoAction.recordNewValue(Dress_data.menuCustomNum[MenuClass._nowCharaNum][tabName], selectedSlot);
               } else {
                  curUndoAction.recordNewValue(MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_menu"], selectedSlot);
               }
            }
         }
         else if(menuType == "system" || menuType == "systemPlus" || menuType == "SelectCharacter")
         {
            if(action == "plus")
            {
               if(_loc7_)
               {
                  Dress_data.menuCustomNum[0][tabName] += 1;
                  MenuClass.systemData[dataKey]["_menu"] = Dress_data.menuCustom[tabName][Dress_data.menuCustomNum[0][tabName]];
               }
               else
               {
                  MenuClass.systemData[dataKey]["_menu"] += 1;
               }
            }
            else if(action == "minus")
            {
               if(_loc7_)
               {
                  Dress_data.menuCustomNum[0][tabName] = Dress_data.menuCustomNum[0][tabName] - 1;
                  MenuClass.systemData[dataKey]["_menu"] = Dress_data.menuCustom[tabName][Dress_data.menuCustomNum[0][tabName]];
               }
               else
               {
                  MenuClass.systemData[dataKey]["_menu"] = MenuClass.systemData[dataKey]["_menu"] - 1;
               }
            }

            if (curUndoAction) {
               if(_loc7_) {
                  curUndoAction.recordNewValue(Dress_data.menuCustomNum[0][tabName], selectedSlot);
               } else {
                  curUndoAction.recordNewValue(MenuClass.systemData[dataKey]["_menu"], selectedSlot);
               }
            }
         }

         new Tab_TextNum0Class(tabName,headerName,targetJ);

         if(menuType == "charaPlus")
         {
            new Tab_VC(headerName,targetJ,dataTarget);
         }
         else if(menuType == "systemPlus")
         {
            new Tab_VC(headerName,targetJ,dataKey);
         }
         else
         {
            new Tab_VC(headerName,targetJ,tabName);
         }

         try
         {
            if(MenuClass.systemData[dataKey]["_visible"][0] == false && MenuClass.systemData[dataKey]["_visible"].length == 1)
            {
               MenuClass.systemData[dataKey]["_visible"][0] = true;
            }
         }
         catch(myError:Error)
         {
         }

         if(tabName == "DressSet" || tabName == "UnderwearSet")
         {
            if(!MenuClass.DressSetCheck)
            {
               MenuClass.DressSetCheck = true;
               Chara_IEdata.BuraData = new Array(1,1,1,1,1,1,1,1,1);
               Chara_IEdata.MimiData = new Array(1,1,1,1,1,1,1,1,1);
               Chara_IEdata.HornData = new Array(1,1,1,1,1,1,1,1,1);
               Chara_IEdata.HaneData = new Array(1,1,1,1,1,1,1,1,1);
               Chara_IEdata.TailData = new Array(1,1,1,1,1,1,1,1,1);
               Chara_IEdata.MeganeData = new Array(1,1,1,1,1,1,1,1,1);
               Chara_IEdata.Item0Data = new Array(1,1,1,1,1,1,1,1,1);
               Chara_IEdata.Item1Data = new Array(1,1,1,1,1,1,1,1,1);
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  new Chara_DressSet(_loc3_);
                  _loc3_++;
               }
            }
         }

         if(MenuClass._nowTargetMode == "All" && MenuClass.tabData[headerName][targetJ][2]["_menuTarget"] != "single")
         {
            if(menuType == "chara" || menuType == "charaPlus")
            {
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  if(dataKey == "VibratorMove" && MenuClass.charaData[_loc3_]["Vibrator"]["_visible"][0])
                  {
                     if(MenuClass.charaData[_loc3_]["VibratorThrough"]["_check"] || !MenuClass.charaData[_loc3_]["Nawa"]["_visible"][0] && !MenuClass.charaData[_loc3_]["SG"]["_visible"][0] && !MenuClass.charaData[_loc3_]["Pantu"]["_visible"][0] && !MenuClass.charaData[_loc3_]["Zubon"]["_visible"][0] && (!MenuClass.charaData[_loc3_]["Tights"]["_visible"][0] || Dress_data.TightsData[MenuClass.charaData[_loc3_]["Tights"]["_menu"]]["mosaic"] == 2))
                     {
                        if(MenuClass.charaData[MenuClass._nowCharaNum]["VibratorMove"]["_menu"] > Vibrator_data.vibratorData[MenuClass.charaData[_loc3_]["Vibrator"]["_menu"]].length)
                        {
                           MenuClass.charaData[_loc3_]["VibratorMove"]["_menu"] = Vibrator_data.vibratorData[MenuClass.charaData[_loc3_]["Vibrator"]["_menu"]].length;
                        }
                        else
                        {
                           MenuClass.charaData[_loc3_]["VibratorMove"]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum]["VibratorMove"]["_menu"];
                        }
                     }
                     else
                     {
                        _loc11_ = -1;
                        _loc10_ = 0;
                        while(_loc10_ < Vibrator_data.vibratorData[MenuClass.charaData[_loc3_]["Vibrator"]["_menu"]].length)
                        {
                           if(Vibrator_data.vibratorData[MenuClass.charaData[_loc3_]["Vibrator"]["_menu"]][_loc10_][0][1] != 1)
                           {
                              break;
                           }
                           _loc11_ += 1;
                           _loc10_++;
                        }
                        if(MenuClass.charaData[MenuClass._nowCharaNum]["VibratorMove"]["_menu"] > _loc11_)
                        {
                           MenuClass.charaData[_loc3_]["VibratorMove"]["_menu"] = _loc11_;
                        }
                        else
                        {
                           MenuClass.charaData[_loc3_]["VibratorMove"]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum]["VibratorMove"]["_menu"];
                        }
                     }
                  }
                  else
                  {
                     if(MenuClass._nowCharaNum != _loc3_)
                     {
                        MenuClass.charaData[_loc3_][dataKey]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_menu"];
                     }
                     new Tab_MenuColorIn(headerName,targetJ,dataKey,_loc3_);
                     if(menuType == "charaPlus")
                     {
                        try
                        {
                           if(MenuClass.charaData[_loc3_][dataTarget]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][dataTarget]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc3_][dataTarget]["_visible"][Tab_VC.menuNum] = true;
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else
                     {
                        try
                        {
                           if(MenuClass.charaData[_loc3_][tabName]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][dataKey]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc3_][tabName]["_visible"][Tab_VC.menuNum] = true;
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     if(MenuClass.systemData["EExpert"]["_check"])
                     {
                        if(MenuClass.tabData[headerName][targetJ][2]["_easyLink"] != undefined)
                        {
                           MenuClass.charaData[_loc3_][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_menu"] = MenuClass.charaData[_loc3_][dataKey]["_menu"];
                           new Tab_MenuColorIn(headerName,targetJ,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],_loc3_);
                           MenuClass.charaData[_loc3_][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_visible"][0] = true;
                           new SetClass(_loc3_,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],"tab");
                        }
                     }
                  }
                  _loc3_++;
               }
            }
            else if(menuType == "system" || menuType == "systemPlus")
            {
               new Tab_MenuColorIn(headerName,targetJ,dataKey,0);
            }
            if(tabName == "Mosaic")
            {
               new Tab_MenuColorIn(headerName,targetJ,tabName,MenuClass._nowCharaNum);
            }
            if(tabName != "SelectCharacter")
            {
               if(tabName == "DressSet" || tabName == "UnderwearSet")
               {
                  enterCount = 0;
                  MenuClass.tabMenuAdd[tabName].menu0.addEventListener(Event.ENTER_FRAME,EnterFrame2);
               }
               else if(tabName == "BackgroundSet")
               {
                  new SetClass(0,tabName,"menu");
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ <= MenuClass._characterNum)
                  {
                     new SetClass(_loc3_,tabName,"menu");
                     _loc3_++;
                  }
               }
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            if(menuType == "chara" || menuType == "charaPlus")
            {
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc3_])
                  {
                     if(MenuClass._nowCharaNum != _loc3_)
                     {
                        MenuClass.charaData[_loc3_][dataKey]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_menu"];
                     }
                     new Tab_MenuColorIn(headerName,targetJ,dataKey,_loc3_);
                     if(menuType == "charaPlus")
                     {
                        try
                        {
                           if(MenuClass.charaData[_loc3_][dataTarget]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][dataTarget]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc3_][dataTarget]["_visible"][Tab_VC.menuNum] = true;
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else
                     {
                        try
                        {
                           if(MenuClass.charaData[_loc3_][tabName]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][dataKey]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc3_][tabName]["_visible"][Tab_VC.menuNum] = true;
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     if(MenuClass.systemData["EExpert"]["_check"])
                     {
                        if(MenuClass.tabData[headerName][targetJ][2]["_easyLink"] != undefined)
                        {
                           MenuClass.charaData[_loc3_][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_menu"] = MenuClass.charaData[_loc3_][dataKey]["_menu"];
                           new Tab_MenuColorIn(headerName,targetJ,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],_loc3_);
                           MenuClass.charaData[_loc3_][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_visible"][0] = true;
                           new SetClass(_loc3_,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],"tab");
                        }
                     }
                  }
                  _loc3_++;
               }
            }
            else if(menuType == "system" || menuType == "systemPlus")
            {
               new Tab_MenuColorIn(headerName,targetJ,dataKey,0);
            }
            if(tabName == "Mosaic")
            {
               new Tab_MenuColorIn(headerName,targetJ,tabName,MenuClass._nowCharaNum);
            }
            if(tabName != "SelectCharacter")
            {
               if(tabName == "DressSet" || tabName == "UnderwearSet")
               {
                  enterCount = 0;
                  MenuClass.tabMenuAdd[tabName].menu0.addEventListener(Event.ENTER_FRAME,EnterFrame4);
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ <= MenuClass._characterNum)
                  {
                     if(MenuClass._nowSelectChara[_loc3_])
                     {
                        new SetClass(_loc3_,tabName,"menu");
                     }
                     _loc3_++;
                  }
               }
            }
         }
         else if(menuType != "SelectCharacter")
         {
            new Tab_MenuColorIn(headerName,targetJ,dataKey,MenuClass._nowCharaNum);
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
            if(tabName == "DressSet")
            {
               selectTabName = tabName;
               if(enterCountSelect == 0)
               {
                  MenuClass.tabMenuAdd[tabName].menu0.addEventListener(Event.ENTER_FRAME,EnterFrame3);
               }
            }
            else
            {
               if(MenuClass.systemData["EExpert"]["_check"])
               {
                  if(MenuClass.tabData[headerName][targetJ][2]["_easyLink"] != undefined)
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum][dataKey]["_menu"];
                     new Tab_MenuColorIn(headerName,targetJ,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],MenuClass._nowCharaNum);
                     MenuClass.charaData[MenuClass._nowCharaNum][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_visible"][0] = true;
                     new SetClass(MenuClass._nowCharaNum,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],"tab");
                  }
               }
               new SetClass(MenuClass._nowCharaNum,tabName,"menu");
            }
         }

         if(menuType == "SelectCharacter")
         {
            if(action == "plus")
            {
               if(MenuClass._characterNum == MenuClass._nowCharaNum)
               {
                  new Chara_SelectIcon(0);
               }
               else
               {
                  new Chara_SelectIcon(MenuClass._nowCharaNum + 1);
               }
            }
            else if(action == "minus")
            {
               if(MenuClass._nowCharaNum == 0)
               {
                  new Chara_SelectIcon(MenuClass._characterNum);
               }
               else
               {
                  new Chara_SelectIcon(MenuClass._nowCharaNum - 1);
               }
            }
            else if(action == "key")
            {
               new Chara_SelectIcon(MenuClass.systemData["SelectCharacter"]["_menu"]);
            }
         }

         new Tab_SetClass();
      }
      
      public static function EnterFrame3(param1:Event) : void
      {
         ++enterCountSelect;
         if(enterCountSelect == 1)
         {
            selectCheckNum = MenuClass.systemData[selectTabName]["_menu"];
            new SetClass(MenuClass._nowCharaNum,MenuClass._nowTabName,"menu");
         }
         else if(enterCountSelect == 18)
         {
            if(selectCheckNum != MenuClass.systemData[selectTabName]["_menu"] || selectCheckNum == 0 && MenuClass.systemData[selectTabName]["_menu"] == 0)
            {
               new SetClass(MenuClass._nowCharaNum,MenuClass._nowTabName,"menu");
            }
            enterCountSelect = 0;
            try
            {
               MenuClass.tabMenuAdd[MenuClass._nowTabName].menu0.removeEventListener(Event.ENTER_FRAME,EnterFrame3);
            }
            catch(myError:Error)
            {
            }
         }
      }
      
      public static function EnterFrame2(param1:Event) : void
      {
         new SetClass(enterCount,MenuClass._nowTabName,"menu");
         if(enterCount == MenuClass._characterNum)
         {
            MenuClass.tabMenuAdd[MenuClass._nowTabName].menu0.removeEventListener(Event.ENTER_FRAME,EnterFrame2);
         }
         ++enterCount;
      }
      
      public static function EnterFrame4(param1:Event) : void
      {
         if(MenuClass._nowSelectChara[enterCount])
         {
            new SetClass(enterCount,MenuClass._nowTabName,"menu");
         }
         if(enterCount == MenuClass._characterNum)
         {
            MenuClass.tabMenuAdd[MenuClass._nowTabName].menu0.removeEventListener(Event.ENTER_FRAME,EnterFrame4);
         }
         ++enterCount;
      }
      
      public static function EnterFrame(param1:Event) : void
      {
         ++Nagaoshi_count;
         if(Nagaoshi_count >= 10)
         {
            MenuAction(nowbtn.name,MenuClass._nowTabName);
         }
      }
   }
}
