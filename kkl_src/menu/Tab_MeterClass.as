package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class Tab_MeterClass
   {
      
      public static var targetMC:MovieClip;
      
      public static var nowbtn:MovieClip;
      
      public static var tabName:String;
      
      public static var headerName:String;
      
      public static var targetJ:int;
      
      public static var Nagaoshi_count:int;
      
      public static var before_num:Number = 0;
      
      public static var maxNum:int;
       
      
      public function Tab_MeterClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:int, param3:String, param4:String) : void
      {
         param1.tabName = param4;
         param1.headerName = param3;
         param1.targetJ = param2;
         param1.meterTxt.visible = false;
         param1.minus.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.minus.buttonMode = true;
         param1.plus.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.plus.buttonMode = true;
         param1.maxNum = 100;
         try
         {
            if(MenuClass.tabData[param3][param2][2]["_meterType"] == 1)
            {
               param1.maxNum = 360;
            }
            else if(MenuClass.tabData[param3][param2][2]["_meterType"] == 2)
            {
               param1.maxNum = 1000;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            param1.redBar.mouseEnabled = false;
         }
         catch(myError:Error)
         {
         }
         param1.bar.addEventListener(MouseEvent.MOUSE_DOWN,BarMouseDown);
         param1.bar.buttonMode = true;
         param1.box.mouseEnabled = false;
         param1.bar.doubleClickEnabled = true;
         param1.bar.addEventListener(MouseEvent.DOUBLE_CLICK,btnClick);
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.minus.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.plus.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.bar.removeEventListener(MouseEvent.MOUSE_DOWN,BarMouseDown);
         try
         {
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
         }
         catch(myError:Error)
         {
         }
         try
         {
            param1.box.removeEventListener(Event.ENTER_FRAME,BoxEnterFrame);
         }
         catch(myError:Error)
         {
         }
         try
         {
            param1.bar.removeEventListener(MouseEvent.DOUBLE_CLICK,btnClick);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function btnClick(param1:MouseEvent) : void
      {
         Tab_MenuClass.keySetType = "meter";
         tabName = param1.currentTarget.parent.tabName;
         targetJ = param1.currentTarget.parent.targetJ;
         headerName = param1.currentTarget.parent.headerName;
         MenuClass.tabMenuAdd[tabName].meter0.box.btn0.gotoAndStop(2);
         MenuClass.menuSetFlag = true;
         Tab_MenuClass.menuKeyNum = "";
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget.parent;
         tabName = param1.currentTarget.parent.tabName;
         headerName = param1.currentTarget.parent.headerName;
         targetJ = param1.currentTarget.parent.targetJ;
         maxNum = param1.currentTarget.parent.maxNum;
         before_num = 0;
         new Stage_MoveCheckClass();
         nowbtn = param1.currentTarget as MovieClip;
         nowbtn.gotoAndStop(2);
         nowbtn.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         MenuAction(nowbtn.name,tabName);
         Nagaoshi_count = 0;
         Main.stageVar.addEventListener(Event.ENTER_FRAME,EnterFrame);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         if(!MenuClass.systemData["MeterNumView"]["_check"])
         {
            targetMC.meterTxt.visible = false;
         }
         nowbtn.gotoAndStop(1);
         nowbtn.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
      }
      
      public static function BarMouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget.parent;
         tabName = param1.currentTarget.parent.tabName;
         headerName = param1.currentTarget.parent.headerName;
         targetJ = param1.currentTarget.parent.targetJ;
         maxNum = param1.currentTarget.parent.maxNum;
         before_num = 0;
         new Stage_MoveCheckClass();
         targetMC.box.addEventListener(Event.ENTER_FRAME,BoxEnterFrame);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,stageMouseUp);
      }
      
      public static function stageMouseUp(param1:MouseEvent) : void
      {
         if(!MenuClass.systemData["MeterNumView"]["_check"])
         {
            targetMC.meterTxt.visible = false;
         }
         targetMC.box.removeEventListener(Event.ENTER_FRAME,BoxEnterFrame);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,stageMouseUp);
      }
      
      public static function MenuAction(param1:String, param2:String) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         MenuClass._nowTabName = param2;
         if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "charaPlus")
         {
            if(MenuClass.shiftKeyPress)
            {
               _loc4_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
               _loc6_ = MenuClass.systemData[_loc4_]["_menu"];
               _loc7_ = 0;
               while(_loc7_ < MenuClass.charaData[MenuClass._nowCharaNum][_loc4_]["_visible"].length)
               {
                  if(_loc7_ != _loc6_)
                  {
                     if(MenuClass.charaData[MenuClass._nowCharaNum][_loc4_]["_visible"][_loc7_])
                     {
                        _loc3_ = MenuClass.charaData[MenuClass._nowCharaNum][param2 + _loc7_]["_meter"];
                        if(param1 == "plus")
                        {
                           _loc3_ += 1;
                        }
                        else if(param1 == "minus")
                        {
                           _loc3_--;
                        }
                        MenuClass.systemData[_loc4_]["_menu"] = _loc7_;
                        dataIn(_loc3_,_loc7_);
                     }
                  }
                  _loc7_++;
               }
               MenuClass.systemData[_loc4_]["_menu"] = _loc6_;
               _loc3_ = MenuClass.charaData[MenuClass._nowCharaNum][param2 + _loc6_]["_meter"];
               if(param1 == "plus")
               {
                  _loc3_ += 1;
               }
               else if(param1 == "minus")
               {
                  _loc3_--;
               }
               dataIn(_loc3_,_loc6_);
            }
            else
            {
               _loc4_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
               _loc5_ = MenuClass.systemData[_loc4_]["_menu"];
               _loc3_ = MenuClass.charaData[MenuClass._nowCharaNum][param2 + _loc5_]["_meter"];
               if(param1 == "plus")
               {
                  _loc3_ += 1;
               }
               else if(param1 == "minus")
               {
                  _loc3_--;
               }
               dataIn(_loc3_,_loc5_);
            }
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "chara")
         {
            _loc3_ = MenuClass.charaData[MenuClass._nowCharaNum][param2]["_meter"];
            _loc5_ = 0;
            if(param1 == "plus")
            {
               _loc3_ += 1;
            }
            else if(param1 == "minus")
            {
               _loc3_--;
            }
            dataIn(_loc3_,_loc5_);
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemPlus")
         {
            if(MenuClass.shiftKeyPress)
            {
               _loc4_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
               _loc6_ = MenuClass.systemData[_loc4_]["_menu"];
               _loc7_ = 0;
               while(_loc7_ < MenuClass.systemData[_loc4_]["_visible"].length)
               {
                  if(_loc7_ != _loc6_)
                  {
                     if(MenuClass.systemData[_loc4_]["_visible"][_loc7_])
                     {
                        _loc3_ = MenuClass.systemData[param2 + _loc7_]["_meter"];
                        if(param1 == "plus")
                        {
                           _loc3_ += 1;
                        }
                        else if(param1 == "minus")
                        {
                           _loc3_--;
                        }
                        MenuClass.systemData[_loc4_]["_menu"] = _loc7_;
                        dataIn(_loc3_,_loc7_);
                     }
                  }
                  _loc7_++;
               }
               MenuClass.systemData[_loc4_]["_menu"] = _loc6_;
               _loc3_ = MenuClass.systemData[param2 + _loc6_]["_meter"];
               if(param1 == "plus")
               {
                  _loc3_ += 1;
               }
               else if(param1 == "minus")
               {
                  _loc3_--;
               }
               dataIn(_loc3_,_loc6_);
            }
            else
            {
               _loc4_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
               _loc5_ = MenuClass.systemData[_loc4_]["_menu"];
               _loc3_ = MenuClass.systemData[param2 + _loc5_]["_meter"];
               if(param1 == "plus")
               {
                  _loc3_ += 1;
               }
               else if(param1 == "minus")
               {
                  _loc3_--;
               }
               dataIn(_loc3_,_loc5_);
            }
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "system" || MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemAll")
         {
            _loc3_ = MenuClass.systemData[param2]["_meter"];
            _loc5_ = 0;
            if(param1 == "plus")
            {
               _loc3_ += 1;
            }
            else if(param1 == "minus")
            {
               _loc3_--;
            }
            dataIn(_loc3_,_loc5_);
         }
      }
      
      public static function EnterFrame(param1:Event) : void
      {
         ++Nagaoshi_count;
         if(Nagaoshi_count >= 10)
         {
            MenuAction(nowbtn.name,MenuClass._nowTabName);
         }
      }
      
      public static function BoxEnterFrame(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc3_:int = targetMC.width - 48;
         if(param1.currentTarget.parent.mouseX != before_num)
         {
            if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "charaPlus" || MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemPlus")
            {
               if(MenuClass.shiftKeyPress)
               {
                  _loc2_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
                  _loc8_ = MenuClass.systemData[_loc2_]["_menu"];
                  if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "charaPlus")
                  {
                     _loc6_ = (_loc5_ = Math.floor((param1.currentTarget.parent.mouseX - 3) / _loc3_ * maxNum)) - MenuClass.charaData[MenuClass._nowCharaNum][tabName + _loc8_]["_meter"];
                     _loc4_ = 0;
                     while(_loc4_ < MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_visible"].length)
                     {
                        if(_loc4_ != _loc8_)
                        {
                           if(MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_visible"][_loc4_])
                           {
                              _loc7_ = MenuClass.charaData[MenuClass._nowCharaNum][tabName + _loc4_]["_meter"] + _loc6_;
                              MenuClass.systemData[_loc2_]["_menu"] = _loc4_;
                              dataIn(_loc7_,_loc4_);
                           }
                        }
                        _loc4_++;
                     }
                     MenuClass.systemData[_loc2_]["_menu"] = _loc8_;
                     _loc7_ = MenuClass.charaData[MenuClass._nowCharaNum][tabName + _loc8_]["_meter"] + _loc6_;
                     dataIn(_loc7_,_loc8_);
                  }
                  else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemPlus")
                  {
                     _loc6_ = (_loc5_ = Math.floor((param1.currentTarget.parent.mouseX - 3) / _loc3_ * maxNum)) - MenuClass.systemData[tabName + _loc8_]["_meter"];
                     _loc4_ = 0;
                     while(_loc4_ < MenuClass.systemData[_loc2_]["_visible"].length)
                     {
                        if(_loc4_ != _loc8_)
                        {
                           if(MenuClass.systemData[_loc2_]["_visible"][_loc4_])
                           {
                              _loc7_ = MenuClass.systemData[tabName + _loc4_]["_meter"] + _loc6_;
                              MenuClass.systemData[_loc2_]["_menu"] = _loc4_;
                              dataIn(_loc7_,_loc4_);
                           }
                        }
                        _loc4_++;
                     }
                     MenuClass.systemData[_loc2_]["_menu"] = _loc8_;
                     _loc7_ = MenuClass.systemData[tabName + _loc8_]["_meter"] + _loc6_;
                     dataIn(_loc7_,_loc8_);
                  }
               }
               else
               {
                  dataIn(Math.floor((param1.currentTarget.parent.mouseX - 3) / _loc3_ * maxNum),MenuClass.systemData[MenuClass.tabData[headerName][targetJ][2]["_data"]]["_menu"]);
               }
            }
            else
            {
               dataIn(Math.floor((param1.currentTarget.parent.mouseX - 3) / _loc3_ * maxNum),0);
            }
         }
         before_num = param1.currentTarget.parent.mouseX;
      }
      
      public static function dataIn(param1:Number, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         MenuClass._nowTabName = tabName;
         if(!MenuClass.spaceKeyPress || MenuClass.tabData[headerName][targetJ][2]["_free"] == 3)
         {
            if(param1 >= maxNum)
            {
               param1 = maxNum;
            }
            else if(param1 <= 0)
            {
               param1 = 0;
            }
         }
         if(MenuClass.tabData[headerName][targetJ][2]["_free"] == 1)
         {
            if(param1 <= 0)
            {
               param1 = 0;
            }
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_free"] == 2)
         {
            if(param1 >= maxNum)
            {
               param1 = maxNum;
            }
         }
         if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "charaPlus")
         {
            _loc4_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
            if(MenuClass._nowTargetMode == "All")
            {
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  MenuClass.charaData[_loc3_][tabName + param2]["_meter"] = param1;
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
                     MenuClass.charaData[_loc3_][tabName + param2]["_meter"] = param1;
                  }
                  _loc3_++;
               }
            }
            else
            {
               MenuClass.charaData[MenuClass._nowCharaNum][tabName + param2]["_meter"] = param1;
            }
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "chara")
         {
            if(MenuClass._nowTargetMode == "All")
            {
               if(MenuClass.shiftKeyPress)
               {
                  _loc5_ = MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_meter"] - param1;
                  _loc3_ = 0;
                  while(_loc3_ <= MenuClass._characterNum)
                  {
                     _loc6_ = MenuClass.charaData[_loc3_][tabName]["_meter"] - _loc5_;
                     if(!MenuClass.spaceKeyPress || MenuClass.tabData[headerName][targetJ][2]["_free"] == 3)
                     {
                        if(_loc6_ >= maxNum)
                        {
                           _loc6_ = maxNum;
                        }
                        else if(_loc6_ <= 0)
                        {
                           _loc6_ = 0;
                        }
                     }
                     if(MenuClass.tabData[headerName][targetJ][2]["_free"] == 1)
                     {
                        if(_loc6_ <= 0)
                        {
                           _loc6_ = 0;
                        }
                     }
                     else if(MenuClass.tabData[headerName][targetJ][2]["_free"] == 2)
                     {
                        if(_loc6_ >= maxNum)
                        {
                           _loc6_ = maxNum;
                        }
                     }
                     MenuClass.charaData[_loc3_][tabName]["_meter"] = _loc6_;
                     _loc3_++;
                  }
                  MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_meter"] = param1;
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ <= MenuClass._characterNum)
                  {
                     MenuClass.charaData[_loc3_][tabName]["_meter"] = param1;
                     _loc3_++;
                  }
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc3_])
                  {
                     MenuClass.charaData[_loc3_][tabName]["_meter"] = param1;
                  }
                  _loc3_++;
               }
            }
            else
            {
               MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_meter"] = param1;
            }
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemPlus")
         {
            _loc4_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
            MenuClass.systemData[tabName + param2]["_meter"] = param1;
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "system" || MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemAll")
         {
            MenuClass.systemData[tabName]["_meter"] = param1;
         }
         if((MenuClass.tabData[headerName][targetJ][2]["_meter"] == "charaPlus" || MenuClass.tabData[headerName][targetJ][2]["_meter"] == "chara") && MenuClass._nowTargetMode == "All")
         {
            _loc3_ = 0;
            while(_loc3_ <= MenuClass._characterNum)
            {
               new SetClass(_loc3_,tabName,"tab");
               _loc3_++;
            }
         }
         else if((MenuClass.tabData[headerName][targetJ][2]["_meter"] == "charaPlus" || MenuClass.tabData[headerName][targetJ][2]["_meter"] == "chara") && MenuClass._nowTargetMode == "SelectPlus")
         {
            _loc3_ = 0;
            while(_loc3_ <= MenuClass._characterNum)
            {
               if(MenuClass._nowSelectChara[_loc3_])
               {
                  new SetClass(_loc3_,tabName,"tab");
               }
               _loc3_++;
            }
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemAll" && MenuClass._nowTargetMode == "All")
         {
            _loc3_ = 0;
            while(_loc3_ <= MenuClass._characterNum)
            {
               new SetClass(_loc3_,tabName,"tab");
               _loc3_++;
            }
         }
         else
         {
            new SetClass(MenuClass._nowCharaNum,tabName,"tab");
         }
         if(!MenuClass.menuSetFlag)
         {
            meterTxt();
         }
         new Tab_SetClass();
      }
      
      public static function meterTxt() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         targetMC.meterTxt.visible = true;
         if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "charaPlus")
         {
            _loc2_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
            _loc1_ = MenuClass.charaData[MenuClass._nowCharaNum][tabName + MenuClass.systemData[_loc2_]["_menu"]]["_meter"];
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "chara")
         {
            _loc1_ = MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_meter"];
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemPlus")
         {
            _loc2_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
            _loc1_ = MenuClass.systemData[tabName + MenuClass.systemData[_loc2_]["_menu"]]["_meter"];
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "system" || MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemAll")
         {
            _loc1_ = MenuClass.systemData[tabName]["_meter"];
         }
         if(_loc1_ >= 1000 || _loc1_ <= -100)
         {
            targetMC.meterTxt.gotoAndStop(5);
         }
         else
         {
            targetMC.meterTxt.gotoAndStop(1);
         }
         targetMC.meterTxt.num.text = _loc1_;
         if(!MenuClass.spaceKeyPress)
         {
            if(_loc1_ == maxNum)
            {
               if(maxNum == 100)
               {
                  targetMC.meterTxt.gotoAndStop(2);
               }
               else if(maxNum == 360 && MenuClass.tabData[headerName][targetJ][2]["_meterType"] == 1)
               {
                  targetMC.meterTxt.gotoAndStop(3);
               }
               else if(maxNum == 1000 && MenuClass.tabData[headerName][targetJ][2]["_meterType"] == 2)
               {
                  targetMC.meterTxt.gotoAndStop(4);
               }
            }
         }
      }
   }
}
