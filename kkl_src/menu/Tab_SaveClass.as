package menu
{
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import parameter.Color_data;
   import parameter.Dress_data;
   
   public class Tab_SaveClass
   {
      
      public static var tabName:String;
      
      public static var saveTabName:String;
      
      public static var targetMC:MovieClip;
      
      public static var headerName:String;
      
      public static var nowSelectBoxNum:int = 0;
      
      public static var saveData:Array = new Array();
      
      public static var saveObj:Object;
      
      public static var so_menuData:Object;
      
      public static var upCheck:Boolean;
       
      
      public function Tab_SaveClass()
      {
         super();
      }
      
      public static function setFc(param1:String, param2:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         MenuClass._nowWindowName = param2;
         MenuClass.tabMenuAdd[param2] = new Menu_Load.TabSaveClass();
         Main.stageVar.addChild(MenuClass.tabMenuAdd[param2]);
         targetMC = MenuClass.tabMenuAdd[param2];
         targetMC.x = 8;
         if(MenuClass.hederSwitchCheck)
         {
            targetMC.y = 5 + Main._stageResizeY;
         }
         else
         {
            targetMC.y = 31 + Main._stageResizeY * -1;
         }
         saveTabName = param2;
         if(saveTabName == "Save")
         {
            so_menuData = {
               "fullYearData":false,
               "monthData":false,
               "dateData":false,
               "hoursData":false,
               "minutesData":false,
               "charaData":false,
               "systemData":false,
               "randomAllData":false,
               "randomData":false,
               "randomOptionData":false,
               "memoData":false,
               "colorData":0,
               "lockData":false
            };
         }
         else
         {
            so_menuData = {
               "fullYearData":false,
               "monthData":false,
               "dateData":false,
               "hoursData":false,
               "minutesData":false,
               "charaData":false,
               "systemData":false,
               "memoData":false,
               "colorData":0,
               "lockData":false
            };
         }
         headerName = param1;
         targetMC.saveBtn.addEventListener(MouseEvent.MOUSE_DOWN,saveBtnMouseDown);
         targetMC.loadBtn.addEventListener(MouseEvent.MOUSE_DOWN,loadBtnMouseDown);
         targetMC.deleteBtn.addEventListener(MouseEvent.MOUSE_DOWN,deleteBtnMouseDown);
         targetMC.lockBtn.addEventListener(MouseEvent.MOUSE_DOWN,lockBtnMouseDown);
         targetMC.saveBtn.buttonMode = true;
         targetMC.loadBtn.buttonMode = true;
         targetMC.deleteBtn.buttonMode = true;
         targetMC.lockBtn.buttonMode = true;
         _loc3_ = 0;
         while(_loc3_ <= 51)
         {
            targetMC["saveBox" + _loc3_].addEventListener(MouseEvent.MOUSE_DOWN,saveBoxMouseDown);
            targetMC["saveBox" + _loc3_].mouseChildren = false;
            targetMC["saveBox" + _loc3_].buttonMode = true;
            targetMC["saveBox" + _loc3_].Num = _loc3_;
            if(_loc3_ < 9)
            {
               targetMC["saveBox" + _loc3_].txt.dataNum.text = "0" + (_loc3_ + 1);
            }
            else
            {
               targetMC["saveBox" + _loc3_].txt.dataNum.text = _loc3_ + 1;
            }
            targetMC["saveBox" + _loc3_].color.visible = false;
            _loc3_++;
         }
         targetMC.saveColor.addEventListener(MouseEvent.MOUSE_DOWN,saveColorMouseDown);
         targetMC.saveColor.mouseChildren = false;
         targetMC.saveColor.buttonMode = true;
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,StageMouseUp);
         targetMC.saveSmallColor.visible = false;
         _loc3_ = 0;
         while(_loc3_ <= 19)
         {
            targetMC.saveSmallColor["s" + _loc3_].addEventListener(MouseEvent.MOUSE_DOWN,SaveSmallColorMouseDown);
            targetMC.saveSmallColor["s" + _loc3_].mouseChildren = false;
            targetMC.saveSmallColor["s" + _loc3_].buttonMode = true;
            targetMC.saveSmallColor["s" + _loc3_]._number = _loc3_;
            new ColorChangeClass(targetMC.saveSmallColor["s" + _loc3_].color,Color_data.SaveColor[_loc3_]);
            _loc3_++;
         }
         if(saveTabName == "Save")
         {
            saveObj = MenuClass.so_Save.data;
         }
         else if(saveTabName == "StorySaveWindow")
         {
            saveObj = MenuClass.so_StorySaveWindow.data;
         }
         else if(saveTabName == "StoryToolSaveWindow")
         {
            saveObj = MenuClass.so_StoryToolSaveWindow.data;
         }
         if(saveObj.version == undefined)
         {
            trace("Data初期設定","  version",Main.version);
            if(saveTabName == "Save")
            {
               MenuClass.so_Save.clear();
               saveObj = MenuClass.so_Save.data;
            }
            else if(saveTabName == "StorySaveWindow")
            {
               MenuClass.so_StorySaveWindow.clear();
               saveObj = MenuClass.so_StorySaveWindow.data;
            }
            else if(saveTabName == "StoryToolSaveWindow")
            {
               MenuClass.so_StoryToolSaveWindow.clear();
               saveObj = MenuClass.so_StoryToolSaveWindow.data;
            }
            _loc3_ = 0;
            while(_loc3_ <= 51)
            {
               saveData[_loc3_] = clone(so_menuData);
               _loc3_++;
            }
            saveObj.version = Main.version;
            saveWrite();
         }
         else
         {
            saveData = clone(saveObj.saveData);
            _loc3_ = 0;
            while(_loc3_ <= 51)
            {
               if(saveData[_loc3_].fullYearData != false)
               {
                  targetMC["saveBox" + _loc3_].gotoAndStop(3);
                  targetMC["saveBox" + _loc3_].color.visible = true;
                  new ColorChangeClass(targetMC["saveBox" + _loc3_].color,Color_data.SaveColor[saveData[_loc3_].colorData]);
                  dayWrite(saveData[_loc3_].fullYearData,saveData[_loc3_].monthData,saveData[_loc3_].dateData,saveData[_loc3_].hoursData,saveData[_loc3_].minutesData,_loc3_);
               }
               _loc3_++;
            }
         }
         targetMC.memo.txt.addEventListener(MouseEvent.MOUSE_DOWN,memoMouseDown);
         targetMC.memo.txt.addEventListener(FocusEvent.FOCUS_OUT,focusOut);
         if(saveData[nowSelectBoxNum].fullYearData != false)
         {
            targetMC["saveBox" + nowSelectBoxNum].gotoAndStop(4);
            targetMC["saveBox" + nowSelectBoxNum].color.visible = true;
            if(saveData[nowSelectBoxNum].lockData == true || saveData[nowSelectBoxNum].lockData == "true")
            {
               targetMC.saveBtn.gotoAndStop(3);
               targetMC.deleteBtn.gotoAndStop(2);
               targetMC.lockBtn.gotoAndStop(2);
            }
            else
            {
               targetMC.saveBtn.gotoAndStop(1);
               targetMC.deleteBtn.gotoAndStop(1);
            }
         }
         else
         {
            targetMC["saveBox" + nowSelectBoxNum].gotoAndStop(2);
            targetMC["saveBox" + nowSelectBoxNum].color.visible = false;
            targetMC.loadBtn.gotoAndStop(2);
            targetMC.deleteBtn.gotoAndStop(2);
            targetMC.memo.txt.selectable = false;
            targetMC.memo.gotoAndStop(2);
         }
         if(saveData[nowSelectBoxNum].fullYearData != false)
         {
            new ColorChangeClass(targetMC.saveColor.color,Color_data.SaveColor[saveData[nowSelectBoxNum].colorData]);
         }
         else
         {
            new ColorChangeClass(targetMC.saveColor.color,"333333");
         }
         memoDataIn();
         new ColorChangeClass(targetMC.closeBtn.bg,"37241A");
         targetMC.closeBtn.addEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
         targetMC.closeBtn.addEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
         targetMC.closeBtn.addEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
         targetMC.closeBtn.buttonMode = true;
      }
      
      public static function deleteFc(param1:String, param2:String) : void
      {
         var _loc3_:int = 0;
         try
         {
            targetMC = MenuClass.tabMenuAdd[param2];
            targetMC.saveBtn.removeEventListener(MouseEvent.MOUSE_DOWN,saveBtnMouseDown);
            targetMC.loadBtn.removeEventListener(MouseEvent.MOUSE_DOWN,loadBtnMouseDown);
            targetMC.deleteBtn.removeEventListener(MouseEvent.MOUSE_DOWN,deleteBtnMouseDown);
            targetMC.lockBtn.removeEventListener(MouseEvent.MOUSE_DOWN,lockBtnMouseDown);
            _loc3_ = 0;
            while(_loc3_ <= 51)
            {
               targetMC["saveBox" + _loc3_].removeEventListener(MouseEvent.MOUSE_DOWN,saveBoxMouseDown);
               _loc3_++;
            }
            targetMC.saveColor.removeEventListener(MouseEvent.MOUSE_DOWN,saveColorMouseDown);
            Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,StageMouseUp);
            _loc3_ = 0;
            while(_loc3_ <= 19)
            {
               targetMC.saveSmallColor["s" + _loc3_].removeEventListener(MouseEvent.MOUSE_DOWN,SaveSmallColorMouseDown);
               _loc3_++;
            }
            targetMC.memo.txt.removeEventListener(MouseEvent.MOUSE_DOWN,memoMouseDown);
            targetMC.memo.txt.removeEventListener(FocusEvent.FOCUS_OUT,focusOut);
            targetMC.closeBtn.removeEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
            targetMC.closeBtn.removeEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
            targetMC.closeBtn.removeEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
            Main.stageVar.removeChild(MenuClass.tabMenuAdd[param2]);
            MenuClass.tabMenuAdd[param2] = null;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function TabSaveViewDeleteFc() : void
      {
         var _loc1_:int = 0;
         try
         {
            MenuClass.tabMenuAdd["TabSaveView"].closeBtn.removeEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
            MenuClass.tabMenuAdd["TabSaveView"].closeBtn.removeEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
            MenuClass.tabMenuAdd["TabSaveView"].closeBtn.removeEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
            Main.stageVar.removeChild(MenuClass.tabMenuAdd["TabSaveView"]);
            MenuClass.tabMenuAdd["TabSaveView"] = null;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function focusOut(param1:FocusEvent) : void
      {
         txtIN();
      }
      
      public static function txtIN() : void
      {
         if(saveData[nowSelectBoxNum].fullYearData != false)
         {
            if(saveData[nowSelectBoxNum].memoData != targetMC.memo.txt.text && targetMC.memo.txt.text != "")
            {
               saveData[nowSelectBoxNum].memoData = targetMC.memo.txt.text;
               saveWrite();
            }
         }
      }
      
      public static function saveWrite() : void
      {
         try
         {
            saveObj.saveData = clone(saveData);
            if(saveTabName == "Save")
            {
               MenuClass.so_Save.flush();
               trace("//////////////////","Save");
            }
            else if(saveTabName == "StorySaveWindow")
            {
               MenuClass.so_StorySaveWindow.flush();
               trace("//////////////////","StorySaveWindow");
            }
            else if(saveTabName == "StoryToolSaveWindow")
            {
               MenuClass.so_StoryToolSaveWindow.flush();
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function dayWrite(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc7_:String = String(param2);
         var _loc8_:String = String(param3);
         var _loc9_:String = String(param4);
         var _loc10_:String = String(param5);
         if(param2 <= 9)
         {
            _loc7_ = "0" + _loc7_;
         }
         if(param3 <= 9)
         {
            _loc8_ = "0" + _loc8_;
         }
         if(param4 <= 9)
         {
            _loc9_ = "0" + _loc9_;
         }
         if(param5 <= 9)
         {
            _loc10_ = "0" + _loc10_;
         }
         targetMC["saveBox" + param6].dayNum.text = param1 + "/" + _loc7_ + "/" + _loc8_;
         targetMC["saveBox" + param6].hoursNum.text = _loc9_;
         targetMC["saveBox" + param6].minutesNum.text = _loc10_;
      }
      
      public static function memoDataIn() : void
      {
         if(saveData[nowSelectBoxNum].memoData == false || saveData[nowSelectBoxNum].memoData == "false" || saveData[nowSelectBoxNum].memoData == "")
         {
            targetMC.memo.txt.text = "";
         }
         else
         {
            targetMC.memo.txt.text = saveData[nowSelectBoxNum].memoData;
         }
      }
      
      public static function memoMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
      }
      
      public static function SaveSmallColorMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         upCheck = false;
         try
         {
            targetMC.saveSmallColor["s" + saveData[nowSelectBoxNum].colorData].gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         param1.currentTarget.gotoAndStop(3);
         saveData[nowSelectBoxNum].colorData = param1.currentTarget._number;
         saveWrite();
         new ColorChangeClass(targetMC["saveBox" + nowSelectBoxNum].color,Color_data.SaveColor[param1.currentTarget._number]);
         new ColorChangeClass(targetMC.saveColor.color,Color_data.SaveColor[param1.currentTarget._number]);
      }
      
      public static function saveColorMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(saveData[nowSelectBoxNum].fullYearData != false)
         {
            if(!targetMC.saveSmallColor.visible)
            {
               new Stage_MoveCheckClass();
               upCheck = false;
               targetMC.saveSmallColor.visible = true;
               _loc2_ = 0;
               while(_loc2_ <= 19)
               {
                  targetMC.saveSmallColor["s" + _loc2_].gotoAndStop(1);
                  _loc2_++;
               }
               try
               {
                  targetMC.saveSmallColor["s" + saveData[nowSelectBoxNum].colorData].gotoAndStop(3);
               }
               catch(myError:Error)
               {
               }
            }
         }
      }
      
      public static function saveBoxMouseDown(param1:MouseEvent) : void
      {
         txtIN();
         new Stage_MoveCheckClass();
         if(saveData[nowSelectBoxNum].fullYearData != false)
         {
            targetMC["saveBox" + nowSelectBoxNum].gotoAndStop(3);
            targetMC["saveBox" + nowSelectBoxNum].color.visible = true;
         }
         else
         {
            targetMC["saveBox" + nowSelectBoxNum].gotoAndStop(1);
            targetMC["saveBox" + nowSelectBoxNum].color.visible = false;
         }
         nowSelectBoxNum = param1.currentTarget.Num;
         if(MenuClass.spaceKeyPress && saveTabName == "Save" && saveObj.saveData[nowSelectBoxNum].systemData == null)
         {
            MenuClass.tabMenuAdd["TabSaveView"] = new Menu_Load.TabSaveViewClass();
            Main.stageVar.addChild(MenuClass.tabMenuAdd["TabSaveView"]);
            MenuClass.tabMenuAdd["TabSaveView"].x = 8;
            if(MenuClass.hederSwitchCheck)
            {
               MenuClass.tabMenuAdd["TabSaveView"].y = 5 + Main._stageResizeY;
            }
            else
            {
               MenuClass.tabMenuAdd["TabSaveView"].y = 31 + Main._stageResizeY * -1;
            }
            MenuClass.tabMenuAdd["TabSaveView"].myTa.text = saveData[nowSelectBoxNum].charaData;
            new ColorChangeClass(MenuClass.tabMenuAdd["TabSaveView"].closeBtn.bg,"37241A");
            MenuClass.tabMenuAdd["TabSaveView"].closeBtn.addEventListener(MouseEvent.MOUSE_DOWN,TabSaveViewCloseMouseDown);
            MenuClass.tabMenuAdd["TabSaveView"].closeBtn.addEventListener(MouseEvent.MOUSE_OVER,TabSaveViewCloseMouseOver);
            MenuClass.tabMenuAdd["TabSaveView"].closeBtn.addEventListener(MouseEvent.MOUSE_OUT,TabSaveViewCloseMouseOut);
            MenuClass.tabMenuAdd["TabSaveView"].closeBtn.buttonMode = true;
         }
         if(saveData[nowSelectBoxNum].fullYearData != false)
         {
            targetMC.loadBtn.gotoAndStop(1);
            targetMC.memo.txt.selectable = true;
            targetMC.memo.gotoAndStop(1);
            targetMC.saveColor.gotoAndStop(1);
            if(saveData[nowSelectBoxNum].lockData == true || saveData[nowSelectBoxNum].lockData == "true")
            {
               targetMC.saveBtn.gotoAndStop(3);
               targetMC.deleteBtn.gotoAndStop(2);
            }
            else
            {
               targetMC.saveBtn.gotoAndStop(1);
               targetMC.deleteBtn.gotoAndStop(1);
            }
            new ColorChangeClass(targetMC.saveColor.color,Color_data.SaveColor[saveData[nowSelectBoxNum].colorData]);
            targetMC["saveBox" + nowSelectBoxNum].gotoAndStop(4);
            targetMC["saveBox" + nowSelectBoxNum].color.visible = true;
         }
         else
         {
            targetMC.saveBtn.gotoAndStop(1);
            targetMC.loadBtn.gotoAndStop(2);
            targetMC.deleteBtn.gotoAndStop(2);
            targetMC.memo.txt.selectable = false;
            targetMC.memo.gotoAndStop(2);
            targetMC.saveColor.gotoAndStop(2);
            new ColorChangeClass(targetMC.saveColor.color,"333333");
            targetMC["saveBox" + nowSelectBoxNum].gotoAndStop(2);
            targetMC["saveBox" + nowSelectBoxNum].color.visible = false;
         }
         if(saveData[nowSelectBoxNum].lockData == true || saveData[nowSelectBoxNum].lockData == "true")
         {
            targetMC.lockBtn.gotoAndStop(2);
         }
         else if(saveData[nowSelectBoxNum].lockData == undefined)
         {
            saveData[nowSelectBoxNum].lockData = false;
            saveWrite();
            targetMC.lockBtn.gotoAndStop(1);
         }
         else if(saveData[nowSelectBoxNum].lockData == false || saveData[nowSelectBoxNum].lockData == "false")
         {
            targetMC.lockBtn.gotoAndStop(1);
         }
         memoDataIn();
      }
      
      public static function saveBtnMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:Date = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         new Stage_MoveCheckClass();
         if(saveData[nowSelectBoxNum].lockData == false || saveData[nowSelectBoxNum].lockData == "false")
         {
            targetMC.saveBtn.gotoAndStop(2);
            targetMC.loadBtn.gotoAndStop(1);
            targetMC.deleteBtn.gotoAndStop(1);
            targetMC.memo.txt.selectable = true;
            targetMC.memo.gotoAndStop(1);
            targetMC.saveColor.gotoAndStop(1);
            new ColorChangeClass(targetMC.saveColor.color,Color_data.SaveColor[saveData[nowSelectBoxNum].colorData]);
            _loc2_ = new Date();
            targetMC["saveBox" + nowSelectBoxNum].gotoAndStop(4);
            targetMC["saveBox" + nowSelectBoxNum].color.visible = true;
            new ColorChangeClass(targetMC["saveBox" + nowSelectBoxNum].color,Color_data.SaveColor[saveData[nowSelectBoxNum].colorData]);
            dayWrite(_loc2_.fullYear,_loc2_.month + 1,_loc2_.date,_loc2_.hours,_loc2_.minutes,nowSelectBoxNum);
            saveData[nowSelectBoxNum].fullYearData = _loc2_.fullYear;
            saveData[nowSelectBoxNum].monthData = _loc2_.month + 1;
            saveData[nowSelectBoxNum].dateData = _loc2_.date;
            saveData[nowSelectBoxNum].hoursData = _loc2_.hours;
            saveData[nowSelectBoxNum].minutesData = _loc2_.minutes;
            if(saveTabName == "Save")
            {
               new Tab_IESet("txtSave");
               saveData[nowSelectBoxNum].charaData = Tab_TextSaveBtn.txtSaveData;
               saveData[nowSelectBoxNum].systemData = null;
               _loc6_ = new Array();
               _loc7_ = new Array();
               _loc8_ = new Array();
               _loc4_ = MenuClass.MY_MENUNAME.length - 1;
               _loc3_ = 0;
               for(; _loc3_ <= _loc4_; _loc3_++)
               {
                  try
                  {
                     _loc6_.push(MenuClass.MY_MENUNAME[_loc3_][2]);
                  }
                  catch(myError:Error)
                  {
                  }
                  _loc10_ = MenuClass.MY_MENUNAME[_loc3_][0];
                  _loc7_[_loc3_] = new Array();
                  _loc8_[_loc3_] = new Array();
                  try
                  {
                     _loc9_ = MenuClass.tabData[_loc10_].length - 1;
                     _loc5_ = 0;
                     while(_loc5_ <= _loc9_)
                     {
                        _loc7_[_loc3_].push(MenuClass.tabData[_loc10_][_loc5_][2]["_random"]);
                        if(MenuClass.tabData[_loc10_][_loc5_][0] == "Random")
                        {
                           _loc8_[_loc3_] = clone(MenuClass.tabData[_loc10_][_loc5_][2]);
                        }
                        _loc5_++;
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
               saveData[nowSelectBoxNum].randomAllData = clone(_loc6_);
               saveData[nowSelectBoxNum].randomData = clone(_loc7_);
               saveData[nowSelectBoxNum].randomOptionData = clone(_loc8_);
            }
            else
            {
               saveData[nowSelectBoxNum].charaData = clone(MenuClass.StoryTimeLineData);
               saveData[nowSelectBoxNum].systemData = clone(MenuClass.systemData["Story_Page"]);
            }
            saveWrite();
         }
      }
      
      public static function deleteBtnMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(saveData[nowSelectBoxNum].fullYearData != false && (saveData[nowSelectBoxNum].lockData == false || saveData[nowSelectBoxNum].lockData == "false"))
         {
            targetMC.deleteBtn.gotoAndStop(2);
            targetMC.loadBtn.gotoAndStop(2);
            targetMC["saveBox" + nowSelectBoxNum].gotoAndStop(2);
            targetMC["saveBox" + nowSelectBoxNum].color.visible = false;
            targetMC.memo.txt.selectable = false;
            targetMC.memo.txt.text = "";
            targetMC.memo.gotoAndStop(2);
            targetMC.saveColor.gotoAndStop(2);
            targetMC.lockBtn.gotoAndStop(1);
            new ColorChangeClass(targetMC.saveColor.color,"333333");
            deleteWrite();
         }
      }
      
      public static function lockBtnMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(saveData[nowSelectBoxNum].fullYearData != false)
         {
            if(saveData[nowSelectBoxNum].lockData == true || saveData[nowSelectBoxNum].lockData == "true")
            {
               saveData[nowSelectBoxNum].lockData = false;
               targetMC.lockBtn.gotoAndStop(1);
               targetMC.saveBtn.gotoAndStop(1);
               targetMC.deleteBtn.gotoAndStop(1);
            }
            else
            {
               saveData[nowSelectBoxNum].lockData = true;
               targetMC.lockBtn.gotoAndStop(2);
               targetMC.saveBtn.gotoAndStop(3);
               targetMC.deleteBtn.gotoAndStop(2);
            }
            saveWrite();
         }
      }
      
      public static function deleteWrite() : void
      {
         saveData[nowSelectBoxNum].fullYearData = false;
         saveData[nowSelectBoxNum].monthData = false;
         saveData[nowSelectBoxNum].dateData = false;
         saveData[nowSelectBoxNum].hoursData = false;
         saveData[nowSelectBoxNum].minutesData = false;
         saveData[nowSelectBoxNum].charaData = false;
         saveData[nowSelectBoxNum].systemData = false;
         if(saveTabName == "Save")
         {
            saveData[nowSelectBoxNum].randomAllData = false;
            saveData[nowSelectBoxNum].randomData = false;
            saveData[nowSelectBoxNum].randomOptionData = false;
         }
         saveData[nowSelectBoxNum].memoData = false;
         saveData[nowSelectBoxNum].colorData = 0;
         saveData[nowSelectBoxNum].lockData = false;
         saveWrite();
      }
      
      public static function loadCheck() : void
      {
         var charaName:String = null;
         var tabName:String = null;
         var menuName:String = null;
         var i:int = 0;
         var n:int = 0;
         var j:int = 0;
         var m:int = 0;
         var dataBox:Object = new Object();
         for(tabName in so_menuData)
         {
            try
            {
               if(saveObj.saveData[nowSelectBoxNum][tabName] == undefined)
               {
                  saveObj.saveData[nowSelectBoxNum][tabName] = clone(so_menuData[tabName]);
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         for(tabName in saveObj.saveData[nowSelectBoxNum])
         {
            try
            {
               if(so_menuData[tabName] == undefined)
               {
                  saveObj.saveData[nowSelectBoxNum][tabName] = null;
               }
            }
            catch(myError:Error)
            {
               trace(tabName);
               continue;
            }
         }
         for(charaName in MenuClass.charaData)
         {
            for(tabName in MenuClass.charaData[charaName])
            {
               try
               {
                  if(!saveObj.saveData[nowSelectBoxNum].charaData[charaName][tabName])
                  {
                     saveObj.saveData[nowSelectBoxNum].charaData[charaName][tabName] = clone(MenuClass.charaDefoData[charaName][tabName]);
                  }
                  else
                  {
                     for(menuName in MenuClass.charaData[charaName][tabName])
                     {
                        if(saveObj.saveData[nowSelectBoxNum].charaData[charaName][tabName][menuName] == undefined)
                        {
                           saveObj.saveData[nowSelectBoxNum].charaData[charaName][tabName][menuName] = clone(MenuClass.charaDefoData[charaName][tabName][menuName]);
                        }
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(saveObj.saveData[nowSelectBoxNum].charaData[charaName][tabName]["_visible"].length < MenuClass.charaDefoData[charaName][tabName]["_visible"].length)
                  {
                     i = saveObj.saveData[nowSelectBoxNum].charaData[charaName][tabName]["_visible"].length;
                     while(i < MenuClass.charaDefoData[charaName][tabName]["_visible"].length)
                     {
                        saveObj.saveData[nowSelectBoxNum].charaData[charaName][tabName]["_visible"].push(false);
                        i++;
                     }
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         for(charaName in saveObj.saveData[nowSelectBoxNum].charaData)
         {
            dataBox = new Object();
            for(tabName in saveObj.saveData[nowSelectBoxNum].charaData[charaName])
            {
               try
               {
                  if(MenuClass.charaData[charaName][tabName])
                  {
                     dataBox[tabName] = new Object();
                     for(menuName in saveObj.saveData[nowSelectBoxNum].charaData[charaName][tabName])
                     {
                        if(MenuClass.charaData[charaName][tabName][menuName] != undefined)
                        {
                           dataBox[tabName][menuName] = clone(saveObj.saveData[nowSelectBoxNum].charaData[charaName][tabName][menuName]);
                        }
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(tabName != "LeftHand" && tabName != "RightHand")
                  {
                     if(dataBox[tabName]["_menu"] > MenuClass.menuData[tabName])
                     {
                        dataBox[tabName]["_menu"] = MenuClass.menuData[tabName];
                     }
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
            saveObj.saveData[nowSelectBoxNum].charaData[charaName] = clone(dataBox);
         }
         for(tabName in MenuClass.systemData)
         {
            try
            {
               if(!saveObj.saveData[nowSelectBoxNum].systemData[tabName])
               {
                  saveObj.saveData[nowSelectBoxNum].systemData[tabName] = clone(MenuClass.systemDefoData[tabName]);
               }
               else
               {
                  for(menuName in MenuClass.systemData[tabName])
                  {
                     if(saveObj.saveData[nowSelectBoxNum].systemData[tabName][menuName] == undefined)
                     {
                        saveObj.saveData[nowSelectBoxNum].systemData[tabName][menuName] = clone(MenuClass.systemDefoData[tabName][menuName]);
                     }
                     if(menuName == "_visible")
                     {
                        n = MenuClass.systemData[tabName]["_visible"].length;
                        i = 0;
                        while(i < n)
                        {
                           if(saveObj.saveData[nowSelectBoxNum].systemData[tabName]["_visible"][i] == undefined)
                           {
                              saveObj.saveData[nowSelectBoxNum].systemData[tabName]["_visible"][i] = false;
                           }
                           i++;
                        }
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         dataBox = new Object();
         for(tabName in saveObj.saveData[nowSelectBoxNum].systemData)
         {
            try
            {
               if(MenuClass.systemData[tabName])
               {
                  dataBox[tabName] = new Object();
                  for(menuName in saveObj.saveData[nowSelectBoxNum].systemData[tabName])
                  {
                     if(MenuClass.systemData[tabName][menuName] != undefined)
                     {
                        dataBox[tabName][menuName] = clone(saveObj.saveData[nowSelectBoxNum].systemData[tabName][menuName]);
                     }
                  }
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(dataBox[tabName]["_menu"] > MenuClass.menuData[tabName])
               {
                  dataBox[tabName]["_menu"] = MenuClass.menuData[tabName];
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         saveObj.saveData[nowSelectBoxNum].systemData = clone(dataBox);
      }
      
      public static function loadBtnMouseDown(param1:MouseEvent) : void
      {
         var i:int = 0;
         var charaDataBackUp:Array = null;
         var systemDataBackUp:Object = null;
         var headerName2:String = null;
         var j:int = 0;
         var m:int = 0;
         var h:int = 0;
         var k:int = 0;
         var menuNum:int = 0;
         var e:MouseEvent = param1;
         new Stage_MoveCheckClass();
         var n:int = MenuClass.MY_MENUNAME.length - 1;
         if(saveTabName == "Save")
         {
            if(saveObj.saveData[nowSelectBoxNum].systemData == null)
            {
               if(saveData[nowSelectBoxNum].fullYearData != false)
               {
                  i = 0;
                  for(; i <= n; i++)
                  {
                     try
                     {
                        MenuClass.MY_MENUNAME[i][2] = saveData[nowSelectBoxNum].randomAllData[i];
                     }
                     catch(myError:Error)
                     {
                     }
                     headerName2 = MenuClass.MY_MENUNAME[i][0];
                     try
                     {
                        m = MenuClass.tabData[headerName2].length - 1;
                        j = 0;
                        while(j <= m)
                        {
                           MenuClass.tabData[headerName2][j][2]["_random"] = saveData[nowSelectBoxNum].randomData[i][j];
                           if(MenuClass.tabData[headerName2][j][0] == "Random")
                           {
                              for(tabName in MenuClass.tabData[headerName2][j][2])
                              {
                                 if(saveData[nowSelectBoxNum].randomOptionData[i][tabName])
                                 {
                                    MenuClass.tabData[headerName2][j][2][tabName] = saveData[nowSelectBoxNum].randomOptionData[i][tabName];
                                 }
                              }
                           }
                           j++;
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
                  Tab_IEInOut.execute("textIN",saveData[nowSelectBoxNum].charaData,MenuClass._nowCharaNum);
                  new Tab_CloseClass();
               }
            }
            else
            {
               MenuClass.charaOldData = clone(MenuClass.charaData);
               MenuClass.systemOldData = clone(MenuClass.systemData);
               charaDataBackUp = clone(MenuClass.charaData);
               systemDataBackUp = clone(MenuClass.systemData);
               loadCheck();
               if(saveData[nowSelectBoxNum].fullYearData != false)
               {
                  try
                  {
                     MenuClass.charaData = clone(saveObj.saveData[nowSelectBoxNum].charaData);
                     MenuClass.systemData = clone(saveObj.saveData[nowSelectBoxNum].systemData);
                     try
                     {
                        MenuClass.systemData["Story_Page"]["_menu"] = MenuClass.systemOldData["Story_Page"]["_menu"];
                     }
                     catch(myError:Error)
                     {
                     }
                     i = 0;
                     for(; i <= n; i++)
                     {
                        try
                        {
                           MenuClass.MY_MENUNAME[i][2] = saveData[nowSelectBoxNum].randomAllData[i];
                        }
                        catch(myError:Error)
                        {
                        }
                        headerName2 = MenuClass.MY_MENUNAME[i][0];
                        try
                        {
                           m = MenuClass.tabData[headerName2].length - 1;
                           j = 0;
                           while(j <= m)
                           {
                              MenuClass.tabData[headerName2][j][2]["_random"] = saveData[nowSelectBoxNum].randomData[i][j];
                              if(MenuClass.tabData[headerName2][j][0] == "Random")
                              {
                                 for(tabName in MenuClass.tabData[headerName2][j][2])
                                 {
                                    if(saveData[nowSelectBoxNum].randomOptionData[i][tabName])
                                    {
                                       MenuClass.tabData[headerName2][j][2][tabName] = saveData[nowSelectBoxNum].randomOptionData[i][tabName];
                                    }
                                 }
                              }
                              j++;
                           }
                        }
                        catch(myError:Error)
                        {
                           continue;
                        }
                     }
                     i = 0;
                     while(i <= MenuClass._characterNum)
                     {
                        for(tabName in MenuClass.charaData[i])
                        {
                           new Tab_R18Check("chara",tabName,i);
                           try
                           {
                              if(Dress_data.DressData[tabName].length == 1)
                              {
                                 menuNum = 0;
                              }
                              else
                              {
                                 menuNum = MenuClass.charaData[i][tabName]["_menu"];
                              }
                           }
                           catch(myError:Error)
                           {
                              menuNum = 0;
                           }
                           j = 0;
                           while(j <= 2)
                           {
                              try
                              {
                                 Dress_data.DressCharaData[i][tabName][menuNum]["_color" + j][0] = MenuClass.charaData[i][tabName]["_color" + j][0];
                              }
                              catch(myError:Error)
                              {
                              }
                              j++;
                           }
                           new Tab_ColorLinkCheck(i,tabName,"chara");
                        }
                        MenuClass.charaData[i]["TinMove"]["_mode"] = 0;
                        Tab_IEInOut.HairExCheck = true;
                        Tab_IEInOut.BeltCheck = true;
                        Tab_IEInOut.MarkCheck = true;
                        new Tab_SaveUpdate(i,MenuClass.systemData["version"]["_menu"],"Non");
                        SetCharaData.execute(i,"move",2);
                        MenuClass.firstLoadEmotionCount = 1;
                        i++;
                     }
                     MenuClass.systemData["version"]["_menu"] = 0;
                     for(tabName in MenuClass.systemData)
                     {
                        try
                        {
                           if(Dress_data.DressData[tabName].length == 1)
                           {
                              menuNum = 0;
                           }
                           else
                           {
                              menuNum = MenuClass.systemData[tabName]["_menu"];
                           }
                        }
                        catch(myError:Error)
                        {
                           menuNum = 0;
                        }
                        j = 0;
                        while(j <= 2)
                        {
                           try
                           {
                              Dress_data.DressCharaData[0][tabName][menuNum]["_color" + j][0] = MenuClass.systemData[tabName]["_color" + j][0];
                           }
                           catch(myError:Error)
                           {
                           }
                           j++;
                        }
                        new Tab_R18Check("system",tabName,0);
                        new Tab_ColorLinkCheck(0,tabName,"system");
                     }
                     new SetClass(0,"system","move");
                     // MenuClass.charaMotoData = clone(MenuClass.charaData);
                     // Dress_data.DressCharaMotoData = clone(Dress_data.DressCharaData);
                     MenuClass.systemMotoData = clone(MenuClass.systemData);
                     // MenuClass.menuCustomResetNum = clone(Dress_data.menuCustomNum);
                     MenuClass.charaOldData = null;
                     MenuClass.systemOldData = null;
                     if(MenuClass._nowTargetMode == "Select")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           if(i != MenuClass._nowCharaNum)
                           {
                              MenuClass.charaAddDepth[i].charaSelect.visible = false;
                              MenuClass.charaAddDepth[i].charaSelect.gotoAndStop(1);
                           }
                           i++;
                        }
                     }
                     else if(MenuClass._nowTargetMode == "SelectPlus")
                     {
                        i = 0;
                        while(i <= MenuClass._characterNum)
                        {
                           if(!MenuClass._nowSelectChara[i])
                           {
                              MenuClass.charaAddDepth[i].charaSelect.visible = false;
                              MenuClass.charaAddDepth[i].charaSelect.gotoAndStop(1);
                           }
                           i++;
                        }
                     }
                     if(saveTabName == "Save")
                     {
                        if(MenuClass._nowHeaderName == "EasySave")
                        {
                           new Tab_CloseClass();
                        }
                        else
                        {
                           MenuClass._nowWindowName = null;
                           deleteFc("Save","Save");
                        }
                     }
                     else if(saveTabName == "StorySaveWindow")
                     {
                        MenuClass._nowWindowName = null;
                        deleteFc("Story","StorySaveWindow");
                     }
                     else
                     {
                        new Tab_CloseClass();
                     }
                  }
                  catch(myError:Error)
                  {
                     MenuClass.charaData = clone(charaDataBackUp);
                     MenuClass.systemData = clone(systemDataBackUp);
                     i = 0;
                     while(i <= MenuClass._characterNum)
                     {
                        SetCharaData.execute(i,"move",2);
                        i++;
                     }
                     new SetClass(0,"system","tab");
                     if(saveTabName == "Save")
                     {
                        if(MenuClass._nowHeaderName == "EasySave")
                        {
                           new Tab_CloseClass();
                        }
                        else
                        {
                           MenuClass._nowWindowName = null;
                           deleteFc("Save","Save");
                        }
                     }
                     else if(saveTabName == "StorySaveWindow")
                     {
                        MenuClass._nowWindowName = null;
                        deleteFc("Story","StorySaveWindow");
                     }
                     else
                     {
                        new Tab_CloseClass();
                     }
                     MenuClass.ErrorWindow.gotoAndStop(2);
                     MenuClass.ErrorWindow.visible = true;
                  }
               }
            }
         }
         else
         {
            try
            {
               MenuClass.StoryBackupData = clone(MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]]);
               MenuClass.StoryTimeLineData = clone(saveObj.saveData[nowSelectBoxNum].charaData);
               MenuClass.systemData["Story_Page"] = clone(saveObj.saveData[nowSelectBoxNum].systemData);
               MenuClass.BeforePage = MenuClass.systemData["Story_Page"];
               MenuClass.menuData["Story_Page"] = MenuClass.StoryTimeLineData.length - 1;
               new Tab_TextInClass(1,"Story_Page",MenuClass.menuData["Story_Page"]);
               new Tab_SetClass();
               Tab_IEInOut.execute("textIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
               new Tab_CloseClass();
            }
            catch(myError:Error)
            {
            }
         }
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
         if(saveTabName == "Save")
         {
            MenuClass._nowWindowName = null;
            deleteFc("Save","Save");
            try
            {
               MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.alpha = 1;
               MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.buttonMode = true;
               MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.alpha = 1;
               MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            if(MenuClass._nowHeaderName == "EasySave")
            {
               new Tab_CloseClass();
            }
         }
         else if(saveTabName == "StorySaveWindow")
         {
            MenuClass._nowWindowName = null;
            deleteFc("Story","StorySaveWindow");
         }
         else
         {
            new Tab_CloseClass();
         }
      }
      
      public static function closeMouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
      
      public static function closeMouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
      
      public static function TabSaveViewCloseMouseDown(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
         TabSaveViewDeleteFc();
      }
      
      public static function TabSaveViewCloseMouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
      
      public static function TabSaveViewCloseMouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         if(saveData[nowSelectBoxNum].lockData == false || saveData[nowSelectBoxNum].lockData == "false")
         {
            targetMC.saveBtn.gotoAndStop(1);
         }
         else
         {
            targetMC.saveBtn.gotoAndStop(3);
         }
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
      
      public static function StageMouseUp(param1:MouseEvent) : void
      {
         if(upCheck)
         {
            targetMC.saveSmallColor.visible = false;
         }
         else
         {
            upCheck = true;
         }
      }
   }
}
