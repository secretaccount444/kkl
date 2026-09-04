package menu
{
   import flash.display.BlendMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import parameter.Color_data;
   import parameter.Dress_data;
   
   public class KeyPressClass
   {
      
      public static var spaceKeyCheck:Boolean = true;
      
      public static var shiftKeyCheck:Boolean = true;
      
      public static var keyCodeNum:int = 0;
      
      public static var charCodeNum:int = 0;
      
      public static var storyShortcutCheck:Boolean = false;
       
      
      private var muneSayuu:Array;
      
      private var testAr:Array;
      
      private var testCount:int = 0;
      
      private var quickTextNum:int = 0;
      
      private var quickTextCount:int = 0;
      
      private var ccc:int = 1;
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var keyName:String = null;
      
      private var flag:int = 24;
      
      private var plusStr:String;
      
      private var plusNum:int;
      
      private var tabNamePlus:String;
      
      public function KeyPressClass()
      {
         this.muneSayuu = new Array([0,0],[0,0]);
         this.testAr = new Array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
         super();
         Main.stageVar.addEventListener(KeyboardEvent.KEY_DOWN,this.KeyDownFunc);
         Main.stageVar.addEventListener(KeyboardEvent.KEY_UP,this.KeyUpFunc);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_WHEEL,this.MouseWheelFunc);
         Main.stageVar.addEventListener(Event.DEACTIVATE,this.deactFc);
      }
      
      private function MouseWheelFunc(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(MenuClass.systemData["FullScreen"]["_check"] && !MenuClass.StoryMode && MenuClass._nowHeaderName != "Escape")
         {
            if(param1.delta >= 15)
            {
               _loc2_ = 12;
            }
            else if(param1.delta >= 10)
            {
               _loc2_ = 8;
            }
            else if(param1.delta >= 5)
            {
               _loc2_ = 4;
            }
            else if(param1.delta >= 0)
            {
               _loc2_ = 1;
            }
            else if(param1.delta >= -5)
            {
               _loc2_ = -1;
            }
            else if(param1.delta >= -10)
            {
               _loc2_ = -4;
            }
            else if(param1.delta >= -10)
            {
               _loc2_ = -8;
            }
            else if(param1.delta < -15)
            {
               _loc2_ = -12;
            }
            MenuClass.systemData["Zoom"]["_meter"] += _loc2_;
            if(MenuClass.systemData["Zoom"]["_meter"] <= 0)
            {
               MenuClass.systemData["Zoom"]["_meter"] = 0;
            }
            else if(MenuClass.systemData["Zoom"]["_meter"] >= 100)
            {
               MenuClass.systemData["Zoom"]["_meter"] = 100;
            }
            new SetClass(MenuClass._nowCharaNum,"Zoom","tab");
            new Tab_SetClass();
         }
      }
      
      private function deactFc(param1:Event) : void
      {
         this.keyClearFc();
      }
      
      private function KeyUpFunc(param1:KeyboardEvent) : void
      {
         keyCodeNum = param1.keyCode;
         charCodeNum = param1.charCode;
         this.keyClearFc();
      }
      
      private function keyClearFc() : void
      {
         if(!SystemText2.textFocusCheck && !Tab_URLTextClass.urlTextFocusCheck && !Tab_CameraClass.urlTextFocusCheck && MenuClass._nowHeaderName != "Story" && !MenuClass.StoryMode && !MenuClass.ColorCustomOpenCheck && !MenuClass.PassWindowOpenCheck && !Tab_IE_Import.textFocusCheck && MenuClass._nowWindowName == null && MenuClass._nowHeaderName != "Escape")
         {
            if(charCodeNum == 97 && this.keyName == null)
            {
               this.handCheck("Breast_Left_Up",false);
            }
            if(charCodeNum == 122 && this.keyName == null)
            {
               this.handCheck("Breast_Left_Sayuu",false);
            }
            if(charCodeNum == 115 && this.keyName == null)
            {
               this.handCheck("Breast_Right_Up",false);
            }
            if(charCodeNum == 120 && this.keyName == null)
            {
               this.handCheck("Breast_Right_Sayuu",false);
            }
            if(charCodeNum == 100 && this.keyName == null)
            {
               if(!Main.r18Check)
               {
                  this.handCheck("sClick",false);
               }
            }
            if(charCodeNum == 102 && this.keyName == null)
            {
               this.handCheck("Kiss",false);
            }
         }
         if(keyCodeNum == 16)
         {
            MenuClass.shiftKeyPress = false;
            shiftKeyCheck = true;
         }
         if(keyCodeNum == 32)
         {
            MenuClass.spaceKeyPress = false;
            spaceKeyCheck = true;
            this.fc_Space(true,false);
         }
      }
      
      private function KeyDownFunc(param1:KeyboardEvent) : void
      {
         var i:int = 0;
         var tadDataName:String = null;
         var menuTypeFlag:Boolean = false;
         var menuKeyNum2:Number = NaN;
         var meterTypeNum:int = 0;
         var meterMaxNum:int = 0;
         var genkaiFlag:int = 0;
         var j:int = 0;
         var menuNum:int = 0;
         var num:Number = NaN;
         var n:int = 0;
         var charCodeName:String = null;
         var thinghNum:int = 0;
         var dataNum:int = 0;
         var thinghNum2:int = 0;
         var obj:Object = null;
         var colorNum:int = 0;
         var targetJ:int = 0;
         var event:KeyboardEvent = param1;
         this.charaData = MenuClass.charaData[MenuClass._nowCharaNum];
         this.charaAdd = MenuClass.charaAdd[MenuClass._nowCharaNum];
         keyCodeNum = event.keyCode;
         charCodeNum = event.charCode;
         if(keyCodeNum == 16 && shiftKeyCheck)
         {
            MenuClass.shiftKeyPress = true;
            shiftKeyCheck = false;
         }
         if(keyCodeNum == 32 && spaceKeyCheck)
         {
            MenuClass.spaceKeyPress = true;
            spaceKeyCheck = false;
            this.fc_Space(false,true);
         }
         if(MenuClass.menuSetFlag)
         {
            if(charCodeNum == 45 && Tab_MenuClass.keySetType == "meter")
            {
               Tab_MenuClass.menuKeyNum += "-";
            }
            else if(charCodeNum == 48)
            {
               Tab_MenuClass.menuKeyNum += "0";
            }
            else if(charCodeNum == 49)
            {
               Tab_MenuClass.menuKeyNum += "1";
            }
            else if(charCodeNum == 50)
            {
               Tab_MenuClass.menuKeyNum += "2";
            }
            else if(charCodeNum == 51)
            {
               Tab_MenuClass.menuKeyNum += "3";
            }
            else if(charCodeNum == 52)
            {
               Tab_MenuClass.menuKeyNum += "4";
            }
            else if(charCodeNum == 53)
            {
               Tab_MenuClass.menuKeyNum += "5";
            }
            else if(charCodeNum == 54)
            {
               Tab_MenuClass.menuKeyNum += "6";
            }
            else if(charCodeNum == 55)
            {
               Tab_MenuClass.menuKeyNum += "7";
            }
            else if(charCodeNum == 56)
            {
               Tab_MenuClass.menuKeyNum += "8";
            }
            else if(charCodeNum == 57)
            {
               Tab_MenuClass.menuKeyNum += "9";
            }
            if(Tab_MenuClass.keySetType == "menu")
            {
               tadDataName = MenuClass.tabData[Tab_MenuClass.headerName][Tab_MenuClass.targetJ][2]["_menu"];
               if(tadDataName == "charaPlus" || tadDataName == "systemPlus")
               {
                  this.plusStr = MenuClass.tabData[Tab_MenuClass.headerName][Tab_MenuClass.targetJ][2]["_data"];
                  this.plusNum = MenuClass.systemData[this.plusStr]["_menu"];
                  this.tabNamePlus = Tab_MenuClass.tabName + this.plusNum;
               }
               else
               {
                  this.tabNamePlus = Tab_MenuClass.tabName;
               }
               menuTypeFlag = false;
               try
               {
                  if(Dress_data.menuCustom[Tab_MenuClass.tabName][0] >= 0)
                  {
                     menuTypeFlag = true;
                  }
               }
               catch(myError:Error)
               {
               }
               if(Tab_MenuClass.menuBtnType == String(Tab_MenuClass.menuKeyNum).length || charCodeNum == 13)
               {
                  menuKeyNum2 = Number(Tab_MenuClass.menuKeyNum);
                  if(tadDataName == "chara" || tadDataName == "charaPlus")
                  {
                     if(menuKeyNum2 > MenuClass.menuData[Tab_MenuClass.tabName] + 1)
                     {
                        if(menuTypeFlag)
                        {
                           Dress_data.menuCustomNum[MenuClass._nowCharaNum][Tab_MenuClass.tabName] = MenuClass.menuData[Tab_MenuClass.tabName];
                           MenuClass.charaData[MenuClass._nowCharaNum][this.tabNamePlus]["_menu"] = Dress_data.menuCustom[Tab_MenuClass.tabName][Dress_data.menuCustomNum[MenuClass._nowCharaNum][Tab_MenuClass.tabName]];
                        }
                        else
                        {
                           MenuClass.charaData[MenuClass._nowCharaNum][this.tabNamePlus]["_menu"] = MenuClass.menuData[Tab_MenuClass.tabName];
                        }
                     }
                     else
                     {
                        if(menuKeyNum2 == 0)
                        {
                           menuKeyNum2 = 1;
                        }
                        if(menuTypeFlag)
                        {
                           Dress_data.menuCustomNum[MenuClass._nowCharaNum][Tab_MenuClass.tabName] = menuKeyNum2 - 1;
                           MenuClass.charaData[MenuClass._nowCharaNum][this.tabNamePlus]["_menu"] = Dress_data.menuCustom[Tab_MenuClass.tabName][Dress_data.menuCustomNum[MenuClass._nowCharaNum][Tab_MenuClass.tabName]];
                        }
                        else
                        {
                           MenuClass.charaData[MenuClass._nowCharaNum][this.tabNamePlus]["_menu"] = menuKeyNum2 - 1;
                        }
                     }
                  }
                  else if(tadDataName == "system" || tadDataName == "systemPlus" || tadDataName == "SelectCharacter")
                  {
                     if(menuKeyNum2 > MenuClass.menuData[Tab_MenuClass.tabName] + 1)
                     {
                        if(menuTypeFlag)
                        {
                           Dress_data.menuCustomNum[0][Tab_MenuClass.tabName] = MenuClass.menuData[Tab_MenuClass.tabName];
                           MenuClass.systemData[this.tabNamePlus]["_menu"] = Dress_data.menuCustom[Tab_MenuClass.tabName][Dress_data.menuCustomNum[0][Tab_MenuClass.tabName]];
                        }
                        else
                        {
                           MenuClass.systemData[this.tabNamePlus]["_menu"] = MenuClass.menuData[Tab_MenuClass.tabName];
                        }
                     }
                     else
                     {
                        if(menuKeyNum2 == 0)
                        {
                           menuKeyNum2 = 1;
                        }
                        if(menuTypeFlag)
                        {
                           Dress_data.menuCustomNum[0][Tab_MenuClass.tabName] = menuKeyNum2 - 1;
                           MenuClass.systemData[this.tabNamePlus]["_menu"] = Dress_data.menuCustom[Tab_MenuClass.tabName][Dress_data.menuCustomNum[0][Tab_MenuClass.tabName]];
                        }
                        else
                        {
                           MenuClass.systemData[this.tabNamePlus]["_menu"] = menuKeyNum2 - 1;
                        }
                     }
                  }
                  Tab_MenuClass.MenuAction("key",Tab_MenuClass.tabName);
                  MenuClass.menuSetFlag = false;
                  try
                  {
                     MenuClass.tabMenuAdd[Tab_MenuClass.tabName].menu0.btn0.gotoAndStop(1);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     MenuClass.tabMenuAdd[Tab_MenuClass.tabName].menu0.btn1.gotoAndStop(1);
                  }
                  catch(myError:Error)
                  {
                  }
                  Tab_MenuClass.tabName = null;
               }
            }
            else if(Tab_MenuClass.keySetType == "meter")
            {
               tadDataName = MenuClass.tabData[Tab_MeterClass.headerName][Tab_MeterClass.targetJ][2]["_meter"];
               if(tadDataName == "charaPlus" || tadDataName == "systemPlus")
               {
                  this.plusStr = MenuClass.tabData[Tab_MeterClass.headerName][Tab_MeterClass.targetJ][2]["_data"];
                  this.plusNum = MenuClass.systemData[this.plusStr]["_menu"];
                  this.tabNamePlus = Tab_MeterClass.tabName + this.plusNum;
               }
               else
               {
                  this.tabNamePlus = Tab_MeterClass.tabName;
               }
               if(MenuClass.tabData[Tab_MeterClass.headerName][Tab_MeterClass.targetJ][2]["_meterType"] == 0)
               {
                  meterTypeNum = 3;
                  meterMaxNum = 100;
               }
               else if(MenuClass.tabData[Tab_MeterClass.headerName][Tab_MeterClass.targetJ][2]["_meterType"] == 2)
               {
                  meterTypeNum = 4;
                  meterMaxNum = 1000;
               }
               else if(MenuClass.tabData[Tab_MeterClass.headerName][Tab_MeterClass.targetJ][2]["_meterType"] == 1)
               {
                  meterTypeNum = 3;
                  meterMaxNum = 360;
               }
               genkaiFlag = 0;
               if(meterTypeNum == String(Tab_MenuClass.menuKeyNum).length || charCodeNum == 13)
               {
                  if(!MenuClass.spaceKeyPress || charCodeNum == 13)
                  {
                     genkaiFlag = 1;
                  }
               }
               trace("meter//////////",Tab_MenuClass.menuKeyNum,Tab_MenuClass.headerName,Tab_MenuClass.tabName,this.tabNamePlus);
               if(genkaiFlag == 1)
               {
                  try
                  {
                     menuKeyNum2 = Number(Tab_MenuClass.menuKeyNum);
                     if(tadDataName == "chara" || tadDataName == "charaPlus")
                     {
                        if(menuKeyNum2 > meterMaxNum && !MenuClass.spaceKeyPress)
                        {
                           MenuClass.charaData[MenuClass._nowCharaNum][this.tabNamePlus]["_meter"] = meterMaxNum;
                        }
                        else
                        {
                           MenuClass.charaData[MenuClass._nowCharaNum][this.tabNamePlus]["_meter"] = menuKeyNum2;
                        }
                     }
                     else if(tadDataName == "system" || tadDataName == "systemPlus" || tadDataName == "systemAll" || tadDataName == "SelectCharacter")
                     {
                        if(menuKeyNum2 > meterMaxNum && !MenuClass.spaceKeyPress)
                        {
                           MenuClass.systemData[this.tabNamePlus]["_meter"] = meterMaxNum;
                        }
                        else
                        {
                           MenuClass.systemData[this.tabNamePlus]["_meter"] = menuKeyNum2;
                        }
                     }
                     Tab_MeterClass.MenuAction("key",Tab_MeterClass.tabName);
                  }
                  catch(myError:Error)
                  {
                  }
                  MenuClass.menuSetFlag = false;
                  try
                  {
                     MenuClass.tabMenuAdd[Tab_MeterClass.tabName].meter0.box.btn0.gotoAndStop(1);
                  }
                  catch(myError:Error)
                  {
                  }
                  Tab_MeterClass.tabName = null;
               }
            }
         }
         else if(!SystemText2.textFocusCheck && !Tab_URLTextClass.urlTextFocusCheck && !Tab_CameraClass.urlTextFocusCheck && !MenuClass.StoryMode && !MenuClass.ColorCustomOpenCheck && !MenuClass.PassWindowOpenCheck && !Tab_IE_Import.textFocusCheck && MenuClass._nowWindowName == null && MenuClass._nowHeaderName != "Escape")
         {
            num = 0;
            n = MenuClass.shortcutHeaderAr.length - 1;
            this.keyName = null;
            charCodeName = null;
            i = 0;
            while(i <= n)
            {
               if(MenuClass.shortcutHeaderAr[i][2] == charCodeNum && MenuClass.shortcutHeaderAr[i][2] != "")
               {
                  this.keyName = MenuClass.shortcutHeaderAr[i][0];
                  charCodeName = MenuClass.shortcutHeaderAr[i][2];
               }
               i++;
            }
            if(!MenuClass.systemData["EExpert"]["_check"])
            {
               n = MenuClass.MY_MENUNAME.length - 1;
               i = 0;
               while(i <= n)
               {
                  if(MenuClass.MY_MENUNAME[i][3] != 10 && MenuClass.MY_MENUNAME[i][0] != "StoryTool")
                  {
                     if(MenuClass.MY_MENUNAME[i][0] == this.keyName)
                     {
                        MenuClass._nowTabName = null;
                        new HeaderbtnFc(this.keyName);
                     }
                  }
                  i++;
               }
            }
            if(!MenuClass.systemData["EExpert"]["_check"])
            {
               if(this.keyName == "StoryTimeLinePlus")
               {
                  if(MenuClass.menuData["Story_Page"] <= MenuClass.menuData["Story_Page"])
                  {
                     try
                     {
                        if(!MenuClass.TimuLineSMenuFlag)
                        {
                           MenuClass.TimuLineSMenuFlag = true;
                           MenuClass.TimuLineSMenu = new Menu_Load.TimuLineShortCutMenuClass();
                           Main.stageVar.addChild(MenuClass.TimuLineSMenu);
                           MenuClass.TimuLineSMenu.x = 736;
                           if(!MenuClass.hederSwitchCheck)
                           {
                              MenuClass.TimuLineSMenu.y = 575 + Main._stageResizeY;
                           }
                           else
                           {
                              MenuClass.TimuLineSMenu.y = 0 + Main._stageResizeY * -1;
                           }
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     storyShortcutCheck = true;
                     if(MenuClass._nowHeaderName != "Story" && MenuClass.clickCheck)
                     {
                        new Tab_IESet("txtSave");
                     }
                     MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
                     if(MenuClass.menuData["Story_Page"] == MenuClass.systemData["Story_Page"]["_menu"])
                     {
                        MenuClass.systemData["Story_Page"]["_menu"] = 0;
                     }
                     else
                     {
                        MenuClass.systemData["Story_Page"]["_menu"] += 1;
                     }
                     Tab_IEInOut.execute("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
                     storyShortcutCheck = false;
                     MenuClass.clickCheck = false;
                     this.StoryPangeNum();
                  }
               }
               if(this.keyName == "StoryTimeLineMinus")
               {
                  if(MenuClass.menuData["Story_Page"] >= 1)
                  {
                     try
                     {
                        if(!MenuClass.TimuLineSMenuFlag)
                        {
                           MenuClass.TimuLineSMenuFlag = true;
                           MenuClass.TimuLineSMenu = new Menu_Load.TimuLineShortCutMenuClass();
                           Main.stageVar.addChild(MenuClass.TimuLineSMenu);
                           MenuClass.TimuLineSMenu.x = 736;
                           if(!MenuClass.hederSwitchCheck)
                           {
                              MenuClass.TimuLineSMenu.y = 575 + Main._stageResizeY;
                           }
                           else
                           {
                              MenuClass.TimuLineSMenu.y = 0 + Main._stageResizeY * -1;
                           }
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     storyShortcutCheck = true;
                     if(MenuClass._nowHeaderName != "Story" && MenuClass.clickCheck)
                     {
                        new Tab_IESet("txtSave");
                     }
                     MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
                     if(MenuClass.systemData["Story_Page"]["_menu"] == 0)
                     {
                        MenuClass.systemData["Story_Page"]["_menu"] = MenuClass.menuData["Story_Page"];
                     }
                     else
                     {
                        MenuClass.systemData["Story_Page"]["_menu"] = MenuClass.systemData["Story_Page"]["_menu"] - 1;
                     }
                     Tab_IEInOut.execute("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
                     storyShortcutCheck = false;
                     MenuClass.clickCheck = false;
                     this.StoryPangeNum();
                  }
               }
               if(this.keyName == "StoryTimeLinePlus2")
               {
                  storyShortcutCheck = true;
                  if(!MenuClass.storyFirstCheck)
                  {
                     new Tab_IESet("txtSave");
                     MenuClass.storyFirstCheck = true;
                  }
                  try
                  {
                     if(!MenuClass.TimuLineSMenuFlag)
                     {
                        MenuClass.TimuLineSMenuFlag = true;
                        MenuClass.TimuLineSMenu = new Menu_Load.TimuLineShortCutMenuClass();
                        Main.stageVar.addChild(MenuClass.TimuLineSMenu);
                        MenuClass.TimuLineSMenu.x = 736;
                        if(!MenuClass.hederSwitchCheck)
                        {
                           MenuClass.TimuLineSMenu.y = 575 + Main._stageResizeY;
                        }
                        else
                        {
                           MenuClass.TimuLineSMenu.y = 0 + Main._stageResizeY * -1;
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  new Tab_StoryPlusMinusFc("plus");
                  storyShortcutCheck = false;
                  this.StoryPangeNum();
               }
               if(this.keyName == "StoryTimeLineMinus2")
               {
                  try
                  {
                     if(!MenuClass.TimuLineSMenuFlag)
                     {
                        MenuClass.TimuLineSMenuFlag = true;
                        MenuClass.TimuLineSMenu = new Menu_Load.TimuLineShortCutMenuClass();
                        Main.stageVar.addChild(MenuClass.TimuLineSMenu);
                        MenuClass.TimuLineSMenu.x = 736;
                        if(!MenuClass.hederSwitchCheck)
                        {
                           MenuClass.TimuLineSMenu.y = 575 + Main._stageResizeY;
                        }
                        else
                        {
                           MenuClass.TimuLineSMenu.y = 0 + Main._stageResizeY * -1;
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  new Tab_StoryPlusMinusFc("minus");
                  this.StoryPangeNum();
               }
               if(this.keyName == "QuickSave1")
               {
                  this.quickTextNum = 1;
                  this.quickTextCount = 0;
                  Main.stageVar.addEventListener(Event.ENTER_FRAME,this.QucikSaveEnterFrame);
               }
               if(this.keyName == "QuickSave2")
               {
                  this.quickTextNum = 2;
                  this.quickTextCount = 0;
                  Main.stageVar.addEventListener(Event.ENTER_FRAME,this.QucikSaveEnterFrame);
               }
               if(this.keyName == "QuickSave3")
               {
                  this.quickTextNum = 3;
                  this.quickTextCount = 0;
                  Main.stageVar.addEventListener(Event.ENTER_FRAME,this.QucikSaveEnterFrame);
               }
               if(this.keyName == "QuickLoad1")
               {
                  this.quickTextNum = 4;
                  this.quickTextCount = 0;
                  Main.stageVar.addEventListener(Event.ENTER_FRAME,this.QucikSaveEnterFrame);
               }
               if(this.keyName == "QuickLoad2")
               {
                  this.quickTextNum = 5;
                  this.quickTextCount = 0;
                  Main.stageVar.addEventListener(Event.ENTER_FRAME,this.QucikSaveEnterFrame);
               }
               if(this.keyName == "QuickLoad3")
               {
                  this.quickTextNum = 6;
                  this.quickTextCount = 0;
                  Main.stageVar.addEventListener(Event.ENTER_FRAME,this.QucikSaveEnterFrame);
               }
               if(this.keyName == "fullScreen")
               {
                  if(MenuClass.systemData["FullScreen"]["_check"])
                  {
                     MenuClass.systemData["FullScreen"]["_check"] = false;
                  }
                  else
                  {
                     MenuClass.systemData["FullScreen"]["_check"] = true;
                  }
                  new SetClass(0,"FullScreen","tab");
               }
            }
            if(MenuClass._nowHeaderName != "Story")
            {
               if(keyCodeNum == 38 && this.keyName == null)
               {
                  Main.mainWindow.y += 10;
                  this.fc_MoveJyouge();
               }
               if(keyCodeNum == 37 && this.keyName == null)
               {
                  Main.mainWindow.x += 10;
                  this.fc_MoveSayuu();
               }
               if(keyCodeNum == 40 && this.keyName == null)
               {
                  Main.mainWindow.y -= 10;
                  this.fc_MoveJyouge();
               }
               if(keyCodeNum == 39 && this.keyName == null)
               {
                  Main.mainWindow.x -= 10;
                  this.fc_MoveSayuu();
               }
               if(charCodeNum == 118 && this.keyName == null || this.keyName == "selecterDepth")
               {
                  new SetClass(0,"selecterDepth","tab");
               }
               if(charCodeNum == 119 && this.keyName == null || this.keyName == "zoomPlus")
               {
                  MenuClass.systemData["Zoom"]["_meter"] += 10;
                  if(MenuClass.systemData["Zoom"]["_meter"] >= 99 && !MenuClass.spaceKeyPress)
                  {
                     MenuClass.systemData["Zoom"]["_meter"] = 99;
                  }
                  new SetClass(MenuClass._nowCharaNum,"Zoom","tab");
               }
               if(charCodeNum == 113 && this.keyName == null || this.keyName == "zoomMinus")
               {
                  MenuClass.systemData["Zoom"]["_meter"] -= 10;
                  if(MenuClass.systemData["Zoom"]["_meter"] <= 0 && !MenuClass.spaceKeyPress)
                  {
                     MenuClass.systemData["Zoom"]["_meter"] = 0;
                  }
                  new SetClass(MenuClass._nowCharaNum,"Zoom","tab");
               }
               if(charCodeNum == 101 && this.keyName == null || this.keyName == "zoom100")
               {
                  MenuClass.systemData["Zoom"]["_meter"] = 0;
                  new SetClass(MenuClass._nowCharaNum,"Zoom","tab");
               }
               if(charCodeNum == 109 && this.keyName == null || this.keyName == "MeterNumView")
               {
                  MenuClass.systemData["MeterNumView"]["_check"] = !MenuClass.systemData["MeterNumView"]["_check"];
                  new SetClass(0,"MeterNumView","tab");
               }
               if(!MenuClass.systemData["EExpert"]["_check"])
               {
                  if(charCodeNum == 44 && this.keyName == null || this.keyName == "headerScrollDown")
                  {
                     new HeaderMenuClass("minus");
                     new HeaderbtnAllMenuClose();
                  }
                  if(charCodeNum == 46 && this.keyName == null || this.keyName == "headerScrollUp")
                  {
                     new HeaderMenuClass("plus");
                     new HeaderbtnAllMenuClose();
                  }
                  if(this.keyName == "headerMenu")
                  {
                     new HeaderbtnAllMenu();
                  }
               }
               if(charCodeNum == 49 && this.keyName == null)
               {
                  if(MenuClass._nowHeaderName == "Hair" || MenuClass._nowHeaderName == "HairEx")
                  {
                     if(MenuClass._nowTargetMode == "Select")
                     {
                        this.HairColor1Set(MenuClass._nowCharaNum);
                     }
                     else if(MenuClass._nowTargetMode == "SelectPlus")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           if(MenuClass._nowSelectChara[i])
                           {
                              this.HairColor1Set(i);
                           }
                           i++;
                        }
                     }
                     else if(MenuClass._nowTargetMode == "All")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           this.HairColor1Set(i);
                           i++;
                        }
                     }
                  }
                  else if(MenuClass._nowHeaderName == "Mimi")
                  {
                     if(MenuClass._nowTargetMode == "Select")
                     {
                        this.mimiSenColorSet(MenuClass._nowCharaNum);
                     }
                     else if(MenuClass._nowTargetMode == "SelectPlus")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           if(MenuClass._nowSelectChara[i])
                           {
                              this.mimiSenColorSet(i);
                           }
                           i++;
                        }
                     }
                     else if(MenuClass._nowTargetMode == "All")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           this.mimiSenColorSet(i);
                           i++;
                        }
                     }
                  }
               }
               if(charCodeNum == 50 && this.keyName == null)
               {
                  if(MenuClass._nowHeaderName == "Hair" || MenuClass._nowHeaderName == "HairEx")
                  {
                     if(MenuClass._nowTargetMode == "Select")
                     {
                        this.HairColor2Set(MenuClass._nowCharaNum);
                     }
                     else if(MenuClass._nowTargetMode == "SelectPlus")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           if(MenuClass._nowSelectChara[i])
                           {
                              this.HairColor2Set(i);
                           }
                           i++;
                        }
                     }
                     else if(MenuClass._nowTargetMode == "All")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           this.HairColor2Set(i);
                           i++;
                        }
                     }
                  }
                  else if(MenuClass._nowHeaderName == "Mimi")
                  {
                     if(MenuClass._nowTargetMode == "Select")
                     {
                        this.mimiSenColor(MenuClass._nowCharaNum);
                     }
                     else if(MenuClass._nowTargetMode == "SelectPlus")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           if(MenuClass._nowSelectChara[i])
                           {
                              this.mimiSenColor(i);
                           }
                           i++;
                        }
                     }
                     else if(MenuClass._nowTargetMode == "All")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           this.mimiSenColor(i);
                           i++;
                        }
                     }
                  }
               }
               if(charCodeNum == 51 && this.keyName == null)
               {
                  if(MenuClass._nowHeaderName == "Hair" || MenuClass._nowHeaderName == "HairEx")
                  {
                     if(this.charaData["Hair"]["_sen"] == 2)
                     {
                        this.charaData["Hair"]["_sen"] = 0;
                     }
                     else
                     {
                        this.charaData["Hair"]["_sen"] += 1;
                     }
                     if(MenuClass._nowTargetMode == "Select")
                     {
                        new Hair_Sen(MenuClass._nowCharaNum);
                     }
                     else if(MenuClass._nowTargetMode == "SelectPlus")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           if(MenuClass._nowSelectChara[i])
                           {
                              MenuClass.charaData[i]["Hair"]["_sen"] = this.charaData["Hair"]["_sen"];
                              new Hair_Sen(i);
                           }
                           i++;
                        }
                     }
                     else if(MenuClass._nowTargetMode == "All")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           MenuClass.charaData[i]["Hair"]["_sen"] = this.charaData["Hair"]["_sen"];
                           new Hair_Sen(i);
                           i++;
                        }
                     }
                  }
                  else if(MenuClass._nowHeaderName == "Mimi")
                  {
                     if(MenuClass._nowTargetMode == "Select")
                     {
                        this.mimiSenAlpha(MenuClass._nowCharaNum);
                     }
                     else if(MenuClass._nowTargetMode == "SelectPlus")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           if(MenuClass._nowSelectChara[i])
                           {
                              this.mimiSenAlpha(i);
                           }
                           i++;
                        }
                     }
                     else if(MenuClass._nowTargetMode == "All")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           this.mimiSenAlpha(i);
                           i++;
                        }
                     }
                  }
               }
               if(keyCodeNum == 55 && this.keyName == null)
               {
                  if(event.shiftKey)
                  {
                     if(this.charaAdd.scaleY > 0.5)
                     {
                        this.charaAdd.scaleY -= 0.01;
                        new Move_HitLine(MenuClass._nowCharaNum);
                     }
                  }
                  else if(event.ctrlKey)
                  {
                     this.charaAdd.scaleY = 1;
                     new Move_HitLine(MenuClass._nowCharaNum);
                  }
                  else if(this.charaAdd.scaleY < 2)
                  {
                     this.charaAdd.scaleY += 0.01;
                     new Move_HitLine(MenuClass._nowCharaNum);
                  }
               }
               if(keyCodeNum == 56 && this.keyName == null)
               {
                  if(event.shiftKey)
                  {
                     if(this.charaAdd.scaleX > 0.5)
                     {
                        this.charaAdd.scaleX -= 0.01;
                        new Move_HitLine(MenuClass._nowCharaNum);
                     }
                  }
                  else if(event.ctrlKey)
                  {
                     this.charaAdd.scaleX = 1;
                     new Move_HitLine(MenuClass._nowCharaNum);
                  }
                  else if(this.charaAdd.scaleX < 2)
                  {
                     this.charaAdd.scaleX += 0.01;
                     new Move_HitLine(MenuClass._nowCharaNum);
                  }
               }
               if(keyCodeNum == 57 && this.keyName == null)
               {
                  if(!Main.r18Check)
                  {
                     if(event.shiftKey)
                     {
                        if(MenuClass._nowTargetMode == "All")
                        {
                           i = 0;
                           while(i <= MenuClass._characterNum)
                           {
                              if(MenuClass.alphaTest[i] == undefined)
                              {
                                 MenuClass.alphaTest[i] = 1;
                              }
                              if(MenuClass.alphaTest[i] < 1)
                              {
                                 MenuClass.alphaTest[i] += 0.05;
                                 this.alphaTestFc(i);
                              }
                              i++;
                           }
                        }
                        else if(MenuClass._nowTargetMode == "SelectPlus")
                        {
                           i = 0;
                           while(i <= MenuClass._characterNum)
                           {
                              if(MenuClass._nowSelectChara[i])
                              {
                                 if(MenuClass.alphaTest[i] == undefined)
                                 {
                                    MenuClass.alphaTest[i] = 1;
                                 }
                                 if(MenuClass.alphaTest[i] < 1)
                                 {
                                    MenuClass.alphaTest[i] += 0.05;
                                    this.alphaTestFc(i);
                                 }
                              }
                              i++;
                           }
                        }
                        else
                        {
                           if(MenuClass.alphaTest[MenuClass._nowCharaNum] == undefined)
                           {
                              MenuClass.alphaTest[MenuClass._nowCharaNum] = 1;
                           }
                           if(MenuClass.alphaTest[MenuClass._nowCharaNum] < 1)
                           {
                              MenuClass.alphaTest[MenuClass._nowCharaNum] += 0.05;
                              this.alphaTestFc(MenuClass._nowCharaNum);
                           }
                        }
                     }
                     else if(event.ctrlKey)
                     {
                        if(MenuClass._nowTargetMode == "All")
                        {
                           i = 0;
                           while(i <= MenuClass._characterNum)
                           {
                              MenuClass.alphaTest[i] = 1;
                              this.alphaTestFc(i);
                              i++;
                           }
                        }
                        else if(MenuClass._nowTargetMode == "SelectPlus")
                        {
                           i = 0;
                           while(i <= MenuClass._characterNum)
                           {
                              if(MenuClass._nowSelectChara[i])
                              {
                                 MenuClass.alphaTest[i] = 1;
                                 this.alphaTestFc(i);
                              }
                              i++;
                           }
                        }
                        else
                        {
                           MenuClass.alphaTest[MenuClass._nowCharaNum] = 1;
                           this.alphaTestFc(MenuClass._nowCharaNum);
                        }
                     }
                     else if(MenuClass._nowTargetMode == "All")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           if(MenuClass.alphaTest[i] == undefined)
                           {
                              MenuClass.alphaTest[i] = 1;
                           }
                           if(MenuClass.alphaTest[i] > 0)
                           {
                              MenuClass.alphaTest[i] -= 0.05;
                              this.alphaTestFc(i);
                           }
                           i++;
                        }
                     }
                     else if(MenuClass._nowTargetMode == "SelectPlus")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           if(MenuClass._nowSelectChara[i])
                           {
                              if(MenuClass.alphaTest[i] == undefined)
                              {
                                 MenuClass.alphaTest[i] = 1;
                              }
                              if(MenuClass.alphaTest[i] > 0)
                              {
                                 MenuClass.alphaTest[i] -= 0.05;
                                 this.alphaTestFc(i);
                              }
                           }
                           i++;
                        }
                     }
                     else
                     {
                        if(MenuClass.alphaTest[MenuClass._nowCharaNum] == undefined)
                        {
                           MenuClass.alphaTest[MenuClass._nowCharaNum] = 1;
                        }
                        if(MenuClass.alphaTest[MenuClass._nowCharaNum] > 0)
                        {
                           MenuClass.alphaTest[MenuClass._nowCharaNum] -= 0.05;
                           this.alphaTestFc(MenuClass._nowCharaNum);
                        }
                     }
                  }
               }
               if(keyCodeNum == 84 && this.keyName == null)
               {
                  try
                  {
                     Tab_TabNameCheck.lookup(MenuClass._nowTabName);
                     targetJ = Tab_TabNameCheck.targetJ;
                     if(MenuClass.tabData[MenuClass._nowHeaderName][targetJ][2]["_menu"] == "charaPlus" || MenuClass.tabData[MenuClass._nowHeaderName][targetJ][2]["_menu"] == "systemPlus")
                     {
                        this.plusStr = MenuClass.tabData[MenuClass._nowHeaderName][targetJ][2]["_data"];
                        this.plusNum = MenuClass.systemData[this.plusStr]["_menu"];
                        this.tabNamePlus = MenuClass._nowTabName + this.plusNum;
                     }
                     else
                     {
                        this.tabNamePlus = MenuClass._nowTabName;
                     }
                     if(MenuClass.tabData[MenuClass._nowHeaderName][targetJ][2]["_menu"] == "systemPlus")
                     {
                        menuNum = MenuClass.systemData[this.tabNamePlus]["_menu"];
                        trace("< ///  " + this.tabNamePlus + "  -  " + menuNum + "  /// >");
                        try
                        {
                           j = 0;
                           while(j <= 2)
                           {
                              colorNum = MenuClass.systemData[this.tabNamePlus]["_color" + j];
                              obj = Color_data.ColorData[Dress_data.DressData[this.tabNamePlus][menuNum]["_color" + j][0]];
                              trace(colorNum,"    ",obj[colorNum][0]["_code"]);
                              j++;
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else
                     {
                        menuNum = this.charaData[this.tabNamePlus]["_menu"];
                        trace("< ///  " + this.tabNamePlus + "  -  " + menuNum + "  /// >");
                        try
                        {
                           j = 0;
                           while(j <= 2)
                           {
                              colorNum = this.charaData[this.tabNamePlus]["_color" + j];
                              obj = Color_data.ColorData[Dress_data.DressData[this.tabNamePlus][menuNum]["_color" + j][0]];
                              trace(colorNum,"    ",obj[colorNum][0]["_code"]);
                              j++;
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     try
                     {
                        menuNum = MenuClass.systemData[MenuClass._nowTabName]["_menu"];
                        trace("< ///  " + MenuClass._nowTabName + "  -  " + menuNum + "  /// >");
                     }
                     catch(myError:Error)
                     {
                        trace("colorボックスを一度クリックして　MenuClass._nowTabName　を指定してください");
                     }
                     try
                     {
                        j = 0;
                        while(j <= 2)
                        {
                           colorNum = MenuClass.systemData[MenuClass._nowTabName]["_color" + j];
                           obj = Color_data.ColorData[Dress_data.DressData[MenuClass._nowTabName][menuNum]["_color" + j][0]];
                           trace(obj[colorNum][0]["_code"]);
                           j++;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               if(keyCodeNum == 65 && this.keyName == null)
               {
                  this.handCheck("Breast_Left_Up",true);
               }
               if(keyCodeNum == 90 && this.keyName == null)
               {
                  this.handCheck("Breast_Left_Sayuu",true);
               }
               if(keyCodeNum == 83 && this.keyName == null)
               {
                  this.handCheck("Breast_Right_Up",true);
               }
               if(keyCodeNum == 88 && this.keyName == null)
               {
                  this.handCheck("Breast_Right_Sayuu",true);
               }
               if(keyCodeNum == 68 && this.keyName == null)
               {
                  if(!Main.r18Check)
                  {
                     this.handCheck("sClick",true);
                  }
               }
               if(keyCodeNum == 70 && this.keyName == null)
               {
                  this.handCheck("Kiss",true);
               }
               thinghNum = this.charaAdd.ashi0.currentFrame - 1;
               dataNum = 1;
               if(charCodeNum == 112 && this.keyName == null)
               {
                  if(this.flag == 1)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["_width"] += dataNum;
                     new Move_BodyYClass(MenuClass._nowCharaNum);
                  }
                  else if(this.flag == 2)
                  {
                     if(Move_DataClass.AshiFrameData[thinghNum]["skirt"] < 10)
                     {
                        Move_DataClass.AshiFrameData[thinghNum]["skirt"] += dataNum;
                     }
                     new Huku_Skirt(MenuClass._nowCharaNum,"Skirt");
                  }
                  else if(this.flag == 3)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["thigthX_Y"] += dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 4)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["thigthX_H"] += dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 5)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["legX_Y"] += dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 6)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["legX_H"] += dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 22)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["legY_Y"] += dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 23)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["legY_H"] += dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 9)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["legX_WH"] += dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 7)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["fX_Y"] += dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 8)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["fX_H"] += dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 10)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["douH_Y"] += dataNum;
                     new Move_BodyYClass(MenuClass._nowCharaNum);
                  }
                  else if(this.flag == 11)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["douH_H"] += dataNum;
                     new Move_BodyYClass(MenuClass._nowCharaNum);
                  }
                  else if(this.flag != 12)
                  {
                     if(this.flag == 13)
                     {
                        Move_DataClass.AshiFrameData[thinghNum]["fHip_Y"] += dataNum;
                        new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                     }
                     else if(this.flag == 14)
                     {
                        Move_DataClass.AshiFrameData[thinghNum]["fHip_H"] += dataNum;
                        new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                     }
                     else if(this.flag != 21)
                     {
                        if(this.flag != 16)
                        {
                           if(this.flag != 15)
                           {
                              if(this.flag != 17)
                              {
                                 if(this.flag != 18)
                                 {
                                    if(this.flag == 19)
                                    {
                                       Move_DataClass.AshiFrameData[thinghNum]["_ashiY_Y"] += dataNum;
                                       new Move_BodyYClass(MenuClass._nowCharaNum);
                                    }
                                    else if(this.flag == 20)
                                    {
                                       Move_DataClass.AshiFrameData[thinghNum]["_ashiY_H"] += dataNum;
                                       new Move_BodyYClass(MenuClass._nowCharaNum);
                                    }
                                    else if(this.flag == 24)
                                    {
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(charCodeNum == 111 && this.keyName == null)
               {
                  if(this.flag == 1)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["_width"] -= dataNum;
                     new Move_BodyYClass(MenuClass._nowCharaNum);
                  }
                  else if(this.flag == 2)
                  {
                     if(Move_DataClass.AshiFrameData[thinghNum]["skirt"] > 1)
                     {
                        Move_DataClass.AshiFrameData[thinghNum]["skirt"] -= dataNum;
                     }
                     new Huku_Skirt(MenuClass._nowCharaNum,"Skirt");
                  }
                  else if(this.flag == 3)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["thigthX_Y"] -= dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 4)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["thigthX_H"] -= dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 5)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["legX_Y"] -= dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 6)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["legX_H"] -= dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 22)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["legY_Y"] -= dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 23)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["legY_H"] -= dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 7)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["fX_Y"] -= dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 8)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["fX_H"] -= dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 9)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["legX_WH"] -= dataNum;
                     new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                  }
                  else if(this.flag == 10)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["douH_Y"] -= dataNum;
                     new Move_BodyYClass(MenuClass._nowCharaNum);
                  }
                  else if(this.flag == 11)
                  {
                     Move_DataClass.AshiFrameData[thinghNum]["douH_H"] -= dataNum;
                     new Move_BodyYClass(MenuClass._nowCharaNum);
                  }
                  else if(this.flag != 12)
                  {
                     if(this.flag == 13)
                     {
                        Move_DataClass.AshiFrameData[thinghNum]["fHip_Y"] -= dataNum;
                        new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                     }
                     else if(this.flag == 14)
                     {
                        Move_DataClass.AshiFrameData[thinghNum]["fHip_H"] -= dataNum;
                        new Chara_SetSize(MenuClass._nowCharaNum,"HipWidth","move");
                     }
                     else if(this.flag == 21)
                     {
                        Move_DataClass.AshiFrameData[thinghNum]["_y"] -= dataNum;
                        new Move_BodyYClass(MenuClass._nowCharaNum);
                     }
                     else if(this.flag == 16)
                     {
                        Move_DataClass.AshiFrameData[thinghNum]["_y2"] -= dataNum;
                        new Move_BodyYClass(MenuClass._nowCharaNum);
                     }
                     else if(this.flag == 15)
                     {
                        Move_DataClass.AshiFrameData[thinghNum]["_y_H"] -= dataNum;
                        new Move_BodyYClass(MenuClass._nowCharaNum);
                     }
                     else if(this.flag == 17)
                     {
                        Move_DataClass.AshiFrameData[thinghNum]["_y2_H"] -= dataNum;
                        new Move_BodyYClass(MenuClass._nowCharaNum);
                     }
                     else if(this.flag != 18)
                     {
                        if(this.flag == 19)
                        {
                           Move_DataClass.AshiFrameData[thinghNum]["_ashiY_Y"] -= dataNum;
                           new Move_BodyYClass(MenuClass._nowCharaNum);
                        }
                        else if(this.flag == 20)
                        {
                           Move_DataClass.AshiFrameData[thinghNum]["_ashiY_H"] -= dataNum;
                           new Move_BodyYClass(MenuClass._nowCharaNum);
                        }
                        else if(this.flag == 24)
                        {
                        }
                     }
                  }
               }
               if(charCodeNum == 108 && this.keyName == null)
               {
               }
               if(charCodeNum == 107 && this.keyName == null)
               {
               }
               if(charCodeNum == 117 && this.keyName == null)
               {
               }
               if(charCodeNum == 105 && this.keyName == null)
               {
               }
               if(charCodeNum == 111 && this.keyName == null)
               {
               }
               if(charCodeNum == 112 && this.keyName == null)
               {
                  if(Main.publishMode == "test")
                  {
                     new Chara_Loading("test");
                  }
               }
               if(charCodeNum == 45 && this.keyName == null)
               {
                  trace(this.charaAdd["handm1_" + 1].hand.arm1.arm1.currentFrame,this.charaData["LeftArm2"]["_meter"],this.charaData["RightArm2"]["_meter"]);
                  trace(this.charaAdd["handm1_" + 1].hand.arm1.arm1.arm1.actual.x,",　",this.charaAdd["handm1_" + 1].hand.arm1.arm1.arm1.actual.y,",　",this.charaAdd["handm1_" + 1].hand.arm1.arm1.arm1.actual.rotation);
               }
               if(charCodeNum == 48 && this.keyName == null)
               {
               }
            }
            new Tab_SetClass();
         }
      }
      
      private function QucikSaveEnterFrame(param1:Event) : void
      {
         if(this.quickTextCount == 0)
         {
            try
            {
               if(!MenuClass.quickSaveTextFlag)
               {
                  MenuClass.quickSaveTextFlag = true;
                  MenuClass.quickSaveText = new Menu_Load.QuickSaveTextClass();
                  Main.stageVar.addChild(MenuClass.quickSaveText);
                  MenuClass.quickSaveText.x = 736;
                  if(!MenuClass.hederSwitchCheck)
                  {
                     MenuClass.quickSaveText.y = 575 + Main._stageResizeY;
                  }
                  else
                  {
                     MenuClass.quickSaveText.y = 0 + Main._stageResizeY * -1;
                  }
               }
               MenuClass.quickSaveText.gotoAndStop(this.quickTextNum);
               if(this.quickTextNum <= 3)
               {
                  Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.QucikSaveEnterFrame);
                  MenuClass.quickSaveFlag[this.quickTextNum - 1] = true;
                  new Tab_IESet("txtSave");
                  MenuClass.quickSaveFlag[this.quickTextNum - 1] = false;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(this.quickTextCount == 1)
         {
            if(MenuClass.quickSaveData[this.quickTextNum - 4] != null)
            {
               MenuClass.clickCheck = true;
               Tab_IEInOut.execute("textIN",MenuClass.quickSaveData[this.quickTextNum - 4],MenuClass._nowCharaNum);
               if(MenuClass._nowHeaderName == "Story")
               {
                  new Tab_IESet("txtSave");
               }
            }
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.QucikSaveEnterFrame);
         }
         ++this.quickTextCount;
      }
      
      private function mimiSenColor(param1:int) : void
      {
         var _loc2_:Object = MenuClass.charaData[param1];
         if(_loc2_["Ear"]["_senColor"] == 1)
         {
            _loc2_["Ear"]["_senColor"] = 0;
         }
         else if(_loc2_["Ear"]["_senColor"] == 0)
         {
            _loc2_["Ear"]["_senColor"] = 1;
         }
         if(_loc2_["Ear"]["_visible"][0])
         {
            new Chara_ColorClass(param1,"Ear");
         }
         if(_loc2_["Mimi"]["_visible"][0])
         {
            new Chara_ColorClass(param1,"Mimi");
         }
         if(_loc2_["Tail"]["_visible"][0])
         {
            new Chara_ColorClass(param1,"Tail");
         }
      }
      
      private function mimiSenColorSet(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:Object = MenuClass.charaData[param1];
         var _loc3_:Object = Dress_data.DressCharaData[param1];
         if(_loc2_["Ear"]["_visible"][0])
         {
            _loc4_ = _loc2_["Ear"]["_menu"];
            _loc2_["Ear"]["_color0"] = this.clone(_loc2_["Hair"]["_color0"]);
            _loc3_["Ear"][_loc4_]["_color0"] = this.clone(_loc3_["Hair"][0]["_color0"]);
            new Chara_ColorClass(param1,"Ear");
         }
         if(_loc2_["Mimi"]["_visible"][0])
         {
            _loc4_ = _loc2_["Mimi"]["_menu"];
            _loc2_["Mimi"]["_color0"] = this.clone(_loc2_["Hair"]["_color0"]);
            _loc3_["Mimi"][_loc4_]["_color0"] = this.clone(_loc3_["Hair"][0]["_color0"]);
            new Chara_ColorClass(param1,"Mimi");
         }
         if(_loc2_["Tail"]["_visible"][0])
         {
            _loc4_ = _loc2_["Tail"]["_menu"];
            _loc2_["Tail"]["_color0"] = this.clone(_loc2_["Hair"]["_color0"]);
            _loc3_["Tail"][_loc4_]["_color0"] = this.clone(_loc3_["Hair"][0]["_color0"]);
            new Chara_ColorClass(param1,"Tail");
         }
      }
      
      private function mimiSenAlpha(param1:int) : void
      {
         var _loc2_:Object = MenuClass.charaData[param1];
         if(_loc2_["Ear"]["_sen"] == 1)
         {
            _loc2_["Ear"]["_sen"] = 2;
         }
         else if(_loc2_["Ear"]["_sen"] == 2)
         {
            _loc2_["Ear"]["_sen"] = 0;
         }
         else if(_loc2_["Ear"]["_sen"] == 0)
         {
            _loc2_["Ear"]["_sen"] = 1;
         }
         if(_loc2_["Ear"]["_visible"][0])
         {
            new Hair_SenColorSet(param1,0);
         }
         if(_loc2_["Mimi"]["_visible"][0])
         {
            new Hair_SenColorSet(param1,1);
         }
         if(_loc2_["Tail"]["_visible"][0])
         {
            new Hair_SenColorSet(param1,2);
         }
      }
      
      private function HairColor1Set(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Object = MenuClass.charaData[param1];
         var _loc6_:Object = Dress_data.DressCharaData[param1];
         if(_loc5_["Bangs"]["_visible"][0])
         {
            _loc5_["Bangs"]["_color0"][0] = _loc5_["Hair"]["_color1"][0];
            _loc6_["Bangs"][0]["_color0"][0] = _loc5_["Hair"]["_color1"][0];
            new Chara_ColorClass(param1,"Bangs");
            if(_loc5_["Hair"]["_color0"][0] != _loc5_["Bangs"]["_color0"][0])
            {
               _loc6_["Bangs"][0]["_color0"][1] = 1;
            }
         }
         if(_loc5_["HairBack"]["_visible"][0])
         {
            _loc5_["HairBack"]["_color1"][0] = _loc5_["Hair"]["_color1"][0];
            _loc6_["HairBack"][0]["_color1"][0] = _loc5_["Hair"]["_color1"][0];
            new Chara_ColorClass(param1,"HairBack");
            if(_loc5_["HairBack"]["_color0"][0] != _loc5_["HairBack"]["_color1"][0])
            {
               _loc6_["HairBack"][0]["_color1"][1] = 1;
            }
         }
         if(_loc5_["SideBurnLeft"]["_visible"][0])
         {
            _loc5_["SideBurnLeft"]["_color1"][0] = _loc5_["Hair"]["_color1"][0];
            _loc6_["SideBurnLeft"][0]["_color1"][0] = _loc5_["Hair"]["_color1"][0];
            new Chara_ColorClass(param1,"SideBurnLeft");
            if(_loc5_["SideBurnLeft"]["_color0"][0] != _loc5_["SideBurnLeft"]["_color1"][0])
            {
               _loc6_["SideBurnLeft"][0]["_color1"][1] = 1;
            }
         }
         if(_loc5_["SideBurnRight"]["_visible"][0])
         {
            _loc5_["SideBurnRight"]["_color1"][0] = _loc5_["Hair"]["_color1"][0];
            _loc6_["SideBurnRight"][0]["_color1"][0] = _loc5_["Hair"]["_color1"][0];
            new Chara_ColorClass(param1,"SideBurnRight");
            if(_loc5_["SideBurnRight"]["_color0"][0] != _loc5_["SideBurnRight"]["_color1"][0])
            {
               _loc6_["SideBurnRight"][0]["_color1"][1] = 1;
            }
         }
         try
         {
            _loc3_ = 0;
            while(_loc3_ <= Main.hukusuuNum)
            {
               if(_loc5_["HairExPlus"]["_visible"][_loc3_])
               {
                  _loc5_["HairEx" + _loc3_]["_color1"][0] = _loc5_["Hair"]["_color1"][0];
                  _loc6_["HairEx" + _loc3_][0]["_color1"][0] = _loc5_["Hair"]["_color1"][0];
                  if(_loc5_["HairEx" + _loc3_]["_color0"][0] != _loc5_["HairEx" + _loc3_]["_color1"][0])
                  {
                     _loc6_["HairEx" + _loc3_][0]["_color1"][1] = 1;
                  }
                  new Chara_ColorClass(param1,"HairEx" + _loc3_);
               }
               _loc3_++;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function HairColor2Set(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = MenuClass.charaData[param1];
         var _loc5_:Object = Dress_data.DressCharaData[param1];
         if(_loc4_["Bangs"]["_visible"][0])
         {
            _loc4_["Bangs"]["_color1"][0] = _loc4_["Hair"]["_color2"][0];
            _loc5_["Bangs"][0]["_color1"][0] = _loc4_["Hair"]["_color2"][0];
            new Chara_ColorClass(param1,"Bangs");
            if(_loc4_["Bangs"]["_color0"][0] != _loc4_["Bangs"]["_color1"][0])
            {
               _loc5_["Bangs"][0]["_color1"][1] = 1;
            }
         }
         if(_loc4_["HairBack"]["_visible"][0])
         {
            _loc4_["HairBack"]["_color2"][0] = _loc4_["Hair"]["_color2"][0];
            _loc5_["HairBack"][0]["_color2"][0] = _loc4_["Hair"]["_color2"][0];
            new Chara_ColorClass(param1,"HairBack");
            if(_loc4_["HairBack"]["_color0"][0] != _loc4_["HairBack"]["_color2"][0])
            {
               _loc5_["HairBack"][0]["_color2"][1] = 1;
            }
         }
         if(_loc4_["SideBurnLeft"]["_visible"][0])
         {
            _loc4_["SideBurnLeft"]["_color2"][0] = _loc4_["Hair"]["_color2"][0];
            _loc5_["SideBurnLeft"][0]["_color2"][0] = _loc4_["Hair"]["_color2"][0];
            new Chara_ColorClass(param1,"SideBurnLeft");
            if(_loc4_["SideBurnLeft"]["_color0"][0] != _loc4_["SideBurnLeft"]["_color2"][0])
            {
               _loc5_["SideBurnLeft"][0]["_color2"][1] = 1;
            }
         }
         if(_loc4_["SideBurnRight"]["_visible"][0])
         {
            _loc4_["SideBurnRight"]["_color2"][0] = _loc4_["Hair"]["_color2"][0];
            _loc5_["SideBurnRight"][0]["_color2"][0] = _loc4_["Hair"]["_color2"][0];
            new Chara_ColorClass(param1,"SideBurnRight");
            if(_loc4_["SideBurnRight"]["_color0"][0] != _loc4_["SideBurnRight"]["_color2"][0])
            {
               _loc5_["SideBurnRight"][0]["_color2"][1] = 1;
            }
         }
         try
         {
            _loc3_ = 0;
            while(_loc3_ <= Main.hukusuuNum)
            {
               if(_loc4_["HairExPlus"]["_visible"][_loc3_])
               {
                  _loc4_["HairEx" + _loc3_]["_color2"][0] = _loc4_["Hair"]["_color2"][0];
                  _loc5_["HairEx" + _loc3_][0]["_color2"][0] = _loc4_["Hair"]["_color2"][0];
                  if(_loc4_["HairEx" + _loc3_]["_color0"][0] != _loc4_["HairEx" + _loc3_]["_color2"][0])
                  {
                     _loc5_["HairEx" + _loc3_][0]["_color2"][1] = 1;
                  }
                  new Chara_ColorClass(param1,"HairEx" + _loc3_);
               }
               _loc3_++;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function StoryPangeNum() : void
      {
         try
         {
            if(MenuClass.systemData["Story_Page"]["_menu"] < 9)
            {
               MenuClass.TimuLineSMenu["num0"].text = "00" + (MenuClass.systemData["Story_Page"]["_menu"] + 1);
            }
            else if(MenuClass.systemData["Story_Page"]["_menu"] < 99)
            {
               MenuClass.TimuLineSMenu["num0"].text = "0" + (MenuClass.systemData["Story_Page"]["_menu"] + 1);
            }
            else
            {
               MenuClass.TimuLineSMenu["num0"].text = MenuClass.systemData["Story_Page"]["_menu"] + 1;
            }
            if(MenuClass.menuData["Story_Page"] < 9)
            {
               MenuClass.TimuLineSMenu["num1"].text = "00" + (MenuClass.menuData["Story_Page"] + 1);
            }
            else if(MenuClass.menuData["Story_Page"] < 99)
            {
               MenuClass.TimuLineSMenu["num1"].text = "0" + (MenuClass.menuData["Story_Page"] + 1);
            }
            else
            {
               MenuClass.TimuLineSMenu["num1"].text = MenuClass.menuData["Story_Page"] + 1;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function alphaTestFc(param1:int) : void
      {
         var _loc2_:int = 0;
         MenuClass.charaAdd[param1].mune.Bura.blendMode = BlendMode.LAYER;
         MenuClass.charaAdd[param1].dou.Bura.blendMode = BlendMode.LAYER;
         MenuClass.charaAdd[param1].dou.dou_shitaHuku.Pantu.blendMode = BlendMode.LAYER;
         MenuClass.charaAdd[param1].dou.dou_shitaHuku.Spantu.blendMode = BlendMode.LAYER;
         MenuClass.charaAdd[param1].mune.Bura.alpha = MenuClass.alphaTest[param1];
         MenuClass.charaAdd[param1].dou.Bura.alpha = MenuClass.alphaTest[param1];
         MenuClass.charaAdd[param1].dou.dou_shitaHuku.Pantu.alpha = MenuClass.alphaTest[param1];
         MenuClass.charaAdd[param1].dou.dou_shitaHuku.Spantu.alpha = MenuClass.alphaTest[param1];
         new Huku_PantuAlpha(param1);
      }
      
      private function handCheck(param1:String, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         if(MenuClass._nowTargetMode == "All")
         {
            _loc3_ = 0;
            while(_loc3_ <= MenuClass._characterNum)
            {
               MenuClass.charaData[_loc3_][param1]["_check"] = param2;
               _loc3_++;
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            _loc3_ = 0;
            while(_loc3_ <= MenuClass._characterNum)
            {
               if(MenuClass._nowSelectChara[_loc3_])
               {
                  MenuClass.charaData[_loc3_][param1]["_check"] = param2;
               }
               _loc3_++;
            }
         }
         else
         {
            MenuClass.charaData[MenuClass._nowCharaNum][param1]["_check"] = param2;
         }
         new Tab_SetClass();
      }
      
      private function fc_Space(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         _loc3_ = 0;
         for(; _loc3_ <= MenuClass._characterNum; MenuClass.charaAdd[_loc3_].head.Mimi.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.Horn.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.hokuro0.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.hokuro1.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.hokuro2.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.hokuro3.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.hokuro4.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.sobakasu0.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.sobakasu1.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.Hige.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.faceKage0.buttonMode = param2,MenuClass.charaAdd[_loc3_].head.faceKage1.buttonMode = param2,_loc3_++)
         {
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               MenuClass.charaAdd[_loc3_].mune["mune" + _loc4_].mune.Nipple.mouseChildren = param1;
               MenuClass.charaAdd[_loc3_].mune["mune" + _loc4_].mune.Nipple.buttonMode = param2;
               MenuClass.charaAdd[_loc3_].mune["mune" + _loc4_].mune.NippleG.mouseChildren = param1;
               MenuClass.charaAdd[_loc3_].mune["mune" + _loc4_].mune.NippleG.buttonMode = param2;
               _loc4_++;
            }
            try
            {
               MenuClass.charaAdd[_loc3_].HairBack.hairBack.hairBack.buttonMode = param2;
            }
            catch(myError:Error)
            {
            }
            try
            {
               MenuClass.charaAdd[_loc3_].head.Bangs.bangs.buttonMode = param2;
               MenuClass.charaAdd[_loc3_].head.Bangs.bangs.mouseEnabled = param2;
            }
            catch(myError:Error)
            {
            }
            MenuClass.charaAdd[_loc3_].dou.dou_shitaHuku.UnderHair.buttonMode = param2;
            MenuClass.charaAdd[_loc3_].dou.dou_shitaHuku.UnderHair.mouseEnabled = param2;
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(MenuClass.charaData[_loc3_]["HairExPlus"]["_visible"][_loc4_])
               {
                  try
                  {
                     MenuClass.charaAdd[_loc3_]["HairEx" + _loc4_ + "_0"].buttonMode = param2;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     MenuClass.charaAdd[_loc3_]["HairEx" + _loc4_ + "_1"].buttonMode = param2;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               _loc4_++;
            }
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(MenuClass.charaData[_loc3_]["MarkPlus"]["_visible"][_loc4_])
               {
                  try
                  {
                     MenuClass.charaAdd[_loc3_].head["mark" + _loc4_ + "_0"].buttonMode = param2;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     MenuClass.charaAdd[_loc3_].head["mark" + _loc4_ + "_1"].buttonMode = param2;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               _loc4_++;
            }
            MenuClass.charaAdd[_loc3_].Hukidashi.buttonMode = param2;
            MenuClass.charaAddDepth[_loc3_].charaMae.Hukidashi.buttonMode = param2;
            MenuClass.charaAdd[_loc3_].dou.dou_shitaHuku.s.eki.mouseChildren = param1;
            MenuClass.charaAdd[_loc3_].dou.dou_shitaHuku.s.eki.buttonMode = param2;
            try
            {
               _loc4_ = 0;
               while(_loc4_ <= 1)
               {
                  MenuClass.charaAdd[_loc3_]["ashi" + _loc4_].thigh.actual.thigh.eki.mouseChildren = param1;
                  MenuClass.charaAdd[_loc3_]["ashi" + _loc4_].thigh.actual.thigh.eki.buttonMode = param2;
                  _loc4_++;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function fc_MoveSayuu() : void
      {
         var _loc1_:Number = Main.mainMask.width - 800;
         if(!MenuClass.spaceKeyPress)
         {
            if(Main.mainWindow.x >= 0)
            {
               Main.mainWindow.x = 0;
            }
            else if(Main.mainWindow.x <= -_loc1_)
            {
               Main.mainWindow.x = -_loc1_;
            }
         }
         MenuClass.systemData["Zoom"]["_x"] = Math.floor(Main.mainWindow.x);
      }
      
      private function fc_MoveJyouge() : void
      {
         var _loc1_:Number = Main.mainMask.height - 600;
         if(!MenuClass.spaceKeyPress)
         {
            if(Main.mainWindow.y >= 0)
            {
               Main.mainWindow.y = 0;
            }
            else if(Main.mainWindow.y <= -_loc1_)
            {
               Main.mainWindow.y = -_loc1_;
            }
         }
         MenuClass.systemData["Zoom"]["_y"] = Math.floor(Main.mainWindow.y);
      }
      
      private function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
