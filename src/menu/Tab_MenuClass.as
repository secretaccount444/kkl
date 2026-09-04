package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import parameter.Chara_IEdata;
   import parameter.Dress_data;
   import parameter.Vibrator_data;
   
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
      }
      
      public static function MenuAction(param1:String, param2:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         MenuClass._nowTabName = param2;
         var _loc6_:String;
         if((_loc6_ = MenuClass.tabData[headerName][targetJ][2]["_menu"]) == "charaPlus" || _loc6_ == "systemPlus")
         {
            _loc8_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
            _loc9_ = MenuClass.systemData[_loc8_]["_menu"];
            _loc5_ = param2 + _loc9_;
         }
         else
         {
            _loc5_ = param2;
         }
         var _loc7_:Boolean = false;
         try
         {
            if(Dress_data.menuCustom[param2][0] >= 0)
            {
               _loc7_ = true;
            }
         }
         catch(myError:Error)
         {
         }
         if(_loc5_ == "Story_Page")
         {
            MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
         }
         if(_loc6_ == "chara" || _loc6_ == "charaPlus")
         {
            if(param1 == "plus")
            {
               if(_loc7_)
               {
                  Dress_data.menuCustomNum[MenuClass._nowCharaNum][param2] += 1;
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"] = Dress_data.menuCustom[param2][Dress_data.menuCustomNum[MenuClass._nowCharaNum][param2]];
               }
               else
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"] += 1;
               }
            }
            else if(param1 == "minus")
            {
               if(_loc7_)
               {
                  Dress_data.menuCustomNum[MenuClass._nowCharaNum][param2] = Dress_data.menuCustomNum[MenuClass._nowCharaNum][param2] - 1;
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"] = Dress_data.menuCustom[param2][Dress_data.menuCustomNum[MenuClass._nowCharaNum][param2]];
               }
               else
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"] - 1;
               }
            }
         }
         else if(_loc6_ == "system" || _loc6_ == "systemPlus" || _loc6_ == "SelectCharacter")
         {
            if(param1 == "plus")
            {
               if(_loc7_)
               {
                  Dress_data.menuCustomNum[0][param2] += 1;
                  MenuClass.systemData[_loc5_]["_menu"] = Dress_data.menuCustom[param2][Dress_data.menuCustomNum[0][param2]];
               }
               else
               {
                  MenuClass.systemData[_loc5_]["_menu"] += 1;
               }
            }
            else if(param1 == "minus")
            {
               if(_loc7_)
               {
                  Dress_data.menuCustomNum[0][param2] = Dress_data.menuCustomNum[0][param2] - 1;
                  MenuClass.systemData[_loc5_]["_menu"] = Dress_data.menuCustom[param2][Dress_data.menuCustomNum[0][param2]];
               }
               else
               {
                  MenuClass.systemData[_loc5_]["_menu"] = MenuClass.systemData[_loc5_]["_menu"] - 1;
               }
            }
         }
         new Tab_TextNum0Class(param2,headerName,targetJ);
         if(_loc6_ == "charaPlus")
         {
            new Tab_VC(headerName,targetJ,_loc8_);
         }
         else if(_loc6_ == "systemPlus")
         {
            new Tab_VC(headerName,targetJ,_loc5_);
         }
         else
         {
            new Tab_VC(headerName,targetJ,param2);
         }
         try
         {
            if(MenuClass.systemData[_loc5_]["_visible"][0] == false && MenuClass.systemData[_loc5_]["_visible"].length == 1)
            {
               MenuClass.systemData[_loc5_]["_visible"][0] = true;
            }
         }
         catch(myError:Error)
         {
         }
         if(param2 == "DressSet" || param2 == "UnderwearSet")
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
            if(_loc6_ == "chara" || _loc6_ == "charaPlus")
            {
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  if(_loc5_ == "VibratorMove" && MenuClass.charaData[_loc3_]["Vibrator"]["_visible"][0])
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
                        MenuClass.charaData[_loc3_][_loc5_]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"];
                     }
                     new Tab_MenuColorIn(headerName,targetJ,_loc5_,_loc3_);
                     if(_loc6_ == "charaPlus")
                     {
                        try
                        {
                           if(MenuClass.charaData[_loc3_][_loc8_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][_loc8_]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc3_][_loc8_]["_visible"][Tab_VC.menuNum] = true;
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
                           if(MenuClass.charaData[_loc3_][param2]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][_loc5_]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc3_][param2]["_visible"][Tab_VC.menuNum] = true;
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
                           MenuClass.charaData[_loc3_][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_menu"] = MenuClass.charaData[_loc3_][_loc5_]["_menu"];
                           new Tab_MenuColorIn(headerName,targetJ,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],_loc3_);
                           MenuClass.charaData[_loc3_][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_visible"][0] = true;
                           new SetClass(_loc3_,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],"tab");
                        }
                     }
                  }
                  _loc3_++;
               }
            }
            else if(_loc6_ == "system" || _loc6_ == "systemPlus")
            {
               new Tab_MenuColorIn(headerName,targetJ,_loc5_,0);
            }
            if(param2 == "Mosaic")
            {
               new Tab_MenuColorIn(headerName,targetJ,param2,MenuClass._nowCharaNum);
            }
            if(param2 != "SelectCharacter")
            {
               if(param2 == "DressSet" || param2 == "UnderwearSet")
               {
                  enterCount = 0;
                  MenuClass.tabMenuAdd[param2].menu0.addEventListener(Event.ENTER_FRAME,EnterFrame2);
               }
               else if(param2 == "BackgroundSet")
               {
                  new SetClass(0,param2,"menu");
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ <= MenuClass._characterNum)
                  {
                     new SetClass(_loc3_,param2,"menu");
                     _loc3_++;
                  }
               }
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            if(_loc6_ == "chara" || _loc6_ == "charaPlus")
            {
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc3_])
                  {
                     if(MenuClass._nowCharaNum != _loc3_)
                     {
                        MenuClass.charaData[_loc3_][_loc5_]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"];
                     }
                     new Tab_MenuColorIn(headerName,targetJ,_loc5_,_loc3_);
                     if(_loc6_ == "charaPlus")
                     {
                        try
                        {
                           if(MenuClass.charaData[_loc3_][_loc8_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][_loc8_]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc3_][_loc8_]["_visible"][Tab_VC.menuNum] = true;
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
                           if(MenuClass.charaData[_loc3_][param2]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][_loc5_]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc3_][param2]["_visible"][Tab_VC.menuNum] = true;
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
                           MenuClass.charaData[_loc3_][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_menu"] = MenuClass.charaData[_loc3_][_loc5_]["_menu"];
                           new Tab_MenuColorIn(headerName,targetJ,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],_loc3_);
                           MenuClass.charaData[_loc3_][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_visible"][0] = true;
                           new SetClass(_loc3_,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],"tab");
                        }
                     }
                  }
                  _loc3_++;
               }
            }
            else if(_loc6_ == "system" || _loc6_ == "systemPlus")
            {
               new Tab_MenuColorIn(headerName,targetJ,_loc5_,0);
            }
            if(param2 == "Mosaic")
            {
               new Tab_MenuColorIn(headerName,targetJ,param2,MenuClass._nowCharaNum);
            }
            if(param2 != "SelectCharacter")
            {
               if(param2 == "DressSet" || param2 == "UnderwearSet")
               {
                  enterCount = 0;
                  MenuClass.tabMenuAdd[param2].menu0.addEventListener(Event.ENTER_FRAME,EnterFrame4);
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ <= MenuClass._characterNum)
                  {
                     if(MenuClass._nowSelectChara[_loc3_])
                     {
                        new SetClass(_loc3_,param2,"menu");
                     }
                     _loc3_++;
                  }
               }
            }
         }
         else if(_loc6_ != "SelectCharacter")
         {
            new Tab_MenuColorIn(headerName,targetJ,_loc5_,MenuClass._nowCharaNum);
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
            if(param2 == "DressSet")
            {
               selectTabName = param2;
               if(enterCountSelect == 0)
               {
                  MenuClass.tabMenuAdd[param2].menu0.addEventListener(Event.ENTER_FRAME,EnterFrame3);
               }
            }
            else
            {
               if(MenuClass.systemData["EExpert"]["_check"])
               {
                  if(MenuClass.tabData[headerName][targetJ][2]["_easyLink"] != undefined)
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"];
                     new Tab_MenuColorIn(headerName,targetJ,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],MenuClass._nowCharaNum);
                     MenuClass.charaData[MenuClass._nowCharaNum][MenuClass.tabData[headerName][targetJ][2]["_easyLink"]]["_visible"][0] = true;
                     new SetClass(MenuClass._nowCharaNum,MenuClass.tabData[headerName][targetJ][2]["_easyLink"],"tab");
                  }
               }
               new SetClass(MenuClass._nowCharaNum,param2,"menu");
            }
         }
         if(_loc6_ == "SelectCharacter")
         {
            if(param1 == "plus")
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
            else if(param1 == "minus")
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
            else if(param1 == "key")
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
