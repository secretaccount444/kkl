package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import undo.MeterAction;
   import parts.Hairpiece;
   import parts.Ribbon;

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

      public static var barMouseHeld:Boolean = false;

      public static var curUndoAction: MeterAction = null;
       
      
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
            else if(MenuClass.tabData[param3][param2][2]["_meterType"] == 3)
            {
               param1.maxNum = MenuClass.f10KeyPress? 100 : 1000;
               trace("maxnum = " + param1.maxNum);
            }
            else if(MenuClass.tabData[param3][param2][2]["_meterType"] == 4)
            {
               param1.maxNum = MenuClass.f10KeyPress? 360 : 3600;
               trace("maxnum = " + param1.maxNum);
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
         barMouseHeld = false;
         param1.bar.addEventListener(MouseEvent.MOUSE_DOWN,BarMouseDown);
         param1.bar.buttonMode = true;
         param1.box.mouseEnabled = false;
         param1.bar.doubleClickEnabled = true;
         param1.bar.addEventListener(MouseEvent.DOUBLE_CLICK,btnClick);
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         barMouseHeld = false;
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

         curUndoAction = initUndoAction(tabName);
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

         if (curUndoAction && headerName != "Tool") {
            Main.undoTimeline.push(curUndoAction);
         }
         curUndoAction = null;
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

         barMouseHeld = true;
         curUndoAction = initUndoAction(tabName);

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

         if (curUndoAction && headerName != "Tool") {
            Main.undoTimeline.push(curUndoAction);
         }

         curUndoAction = null;
         barMouseHeld = false;

         if (headerName == "Tool" && tabName == "MenuScale") {
            new SetClass(MenuClass._nowCharaNum, "MenuScale", "tab");
         }
      }

      public static function initUndoAction(dataKey: String) : MeterAction {
         var val:Number = NaN;
         var dataTarget:String = null;
         var selectedSlot:int = 0;
         var action = new MeterAction(headerName, targetJ, maxNum);
         
         if (MenuClass.tabData[headerName][targetJ][2]["_meter"] == "charaPlus") {
            if (headerName == "HairEx" && (Main.keypressHandler.shift || Main.keypressHandler.ctrl)) {
               selectedSlot = MenuClass.systemData["HairExPlus"]["_menu"];
               if (!Main.keypressHandler.ctrl) {
                  for each(var hairpiece:Hairpiece in Hairpiece.getVisibleHairpieces(MenuClass._nowCharaNum)) {
                     if (hairpiece.slot != selectedSlot) {
                        action.recordPreviousValue(hairpiece.slot);
                     }
                  }
                  action.recordPreviousValue(selectedSlot);
               } else {
                  var attach:int = 0;
                  for each(var hairpiece:Hairpiece in Hairpiece.getVisibleHairpieces(MenuClass._nowCharaNum)) {
                     if (hairpiece.slot == selectedSlot) {
                        attach = hairpiece.attachPoint;
                     }
                  }
                  for each(var hairpiece:Hairpiece in Hairpiece.getVisibleHairpieces(MenuClass._nowCharaNum)) {
                     if (hairpiece.attachPoint == attach && hairpiece.slot != selectedSlot) {
                        action.recordPreviousValue(hairpiece.slot);
                     }
                  }
                  action.recordPreviousValue(selectedSlot);
               }
            } else if (headerName == "Ribon" && (Main.keypressHandler.shift || Main.keypressHandler.ctrl)) {
               selectedSlot = MenuClass.systemData["RibonPlus"]["_menu"];
               if (!Main.keypressHandler.ctrl) {
                  for each(var ribbon:Ribbon in Ribbon.getVisibleRibbons(MenuClass._nowCharaNum)) {
                     if (ribbon.slot != selectedSlot) {
                        action.recordPreviousValue(ribbon.slot);
                     }
                  }
                  action.recordPreviousValue(selectedSlot);
               } else {
                  var attach:int = 0;
                  for each(var ribbon:Ribbon in Ribbon.getVisibleRibbons(MenuClass._nowCharaNum)) {
                     if (ribbon.slot == selectedSlot) {
                        attach = ribbon.attachPoint;
                     }
                  }
                  for each(var ribbon:Ribbon in Ribbon.getVisibleRibbons(MenuClass._nowCharaNum)) {
                     if (ribbon.attachPoint == attach && ribbon.slot != selectedSlot) {
                        action.recordPreviousValue(ribbon.slot);
                     }
                  }
                  action.recordPreviousValue(selectedSlot);
               }
            } else if (MenuClass.shiftKeyPress) {
               dataTarget = MenuClass.tabData[headerName][targetJ][2]["_data"];
               selectedSlot = MenuClass.systemData[dataTarget]["_menu"];

               for (var shiftSlot = 0; shiftSlot < MenuClass.charaData[MenuClass._nowCharaNum][dataTarget]["_visible"].length; shiftSlot++) {
                  if (shiftSlot != selectedSlot) {
                     if (MenuClass.charaData[MenuClass._nowCharaNum][dataTarget]["_visible"][shiftSlot]) {
                        action.recordPreviousValue(shiftSlot);
                     }
                  }
               }

               action.recordPreviousValue(selectedSlot);
            } else {
               dataTarget = MenuClass.tabData[headerName][targetJ][2]["_data"];
               selectedSlot = MenuClass.systemData[dataTarget]["_menu"];
               action.recordPreviousValue(selectedSlot);
            }
         } else if (MenuClass.tabData[headerName][targetJ][2]["_meter"] == "chara") {
            action.recordPreviousValue(0);
         } else if (MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemPlus") {
            if (MenuClass.shiftKeyPress) {
               dataTarget = MenuClass.tabData[headerName][targetJ][2]["_data"];
               selectedSlot = MenuClass.systemData[dataTarget]["_menu"];

               for (var shiftSlot = 0; shiftSlot < MenuClass.systemData[dataTarget]["_visible"].length; shiftSlot++) {
                  if (shiftSlot != selectedSlot) {
                     if (MenuClass.systemData[dataTarget]["_visible"][shiftSlot]) {
                        action.recordPreviousValue(shiftSlot);
                     }
                  }
               }

               action.recordPreviousValue(selectedSlot);
            } else {
               dataTarget = MenuClass.tabData[headerName][targetJ][2]["_data"];
               selectedSlot = MenuClass.systemData[dataTarget]["_menu"];
               action.recordPreviousValue(selectedSlot);
            }
         } else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "system" || MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemAll") {
            action.recordPreviousValue(0);
         }

         return action;
      }

      public static function MenuAction(param1:String, param2:String) : void
      {
         var dataTarget:String = null;
         var selectedSlot:int = 0;

         MenuClass._nowTabName = param2;
         var oldSliders:Boolean = MenuClass.tabData[headerName][targetJ][2]["_meterType"] > 2 && MenuClass.f10KeyPress;

         if (MenuClass.tabData[headerName][targetJ][2]["_meter"] == "charaPlus") {
            if (headerName == "HairEx" && (Main.keypressHandler.shift || Main.keypressHandler.ctrl)) {
               selectedSlot = MenuClass.systemData["HairExPlus"]["_menu"];
               if (!Main.keypressHandler.ctrl) {
                  for each(var hairpiece:Hairpiece in Hairpiece.getVisibleHairpieces(MenuClass._nowCharaNum)) {
                     if (hairpiece.slot != selectedSlot) {
                        changeValInSlot(param1, hairpiece.slot, "HairExPlus", true, false, oldSliders);
                     }
                  }
                  changeValInSlot(param1, selectedSlot, "HairExPlus", true, false, oldSliders);
               } else {
                  var attach:int = 0;
                  for each(var hairpiece:Hairpiece in Hairpiece.getVisibleHairpieces(MenuClass._nowCharaNum)) {
                     if (hairpiece.slot == selectedSlot) {
                        attach = hairpiece.attachPoint;
                     }
                  }
                  for each(var hairpiece:Hairpiece in Hairpiece.getVisibleHairpieces(MenuClass._nowCharaNum)) {
                     if (hairpiece.attachPoint == attach && hairpiece.slot != selectedSlot) {
                        changeValInSlot(param1, hairpiece.slot, "HairExPlus", true, false, oldSliders);
                     }
                  }
                  changeValInSlot(param1, selectedSlot, "HairExPlus", true, false, oldSliders);
               }
            } else if (headerName == "Ribon" && (Main.keypressHandler.shift || Main.keypressHandler.ctrl)) {
               selectedSlot = MenuClass.systemData["RibonPlus"]["_menu"];
               if (!Main.keypressHandler.ctrl) {
                  for each(var ribbon:Ribbon in Ribbon.getVisibleRibbons(MenuClass._nowCharaNum)) {
                     if (ribbon.slot != selectedSlot) {
                        changeValInSlot(param1, ribbon.slot, "RibonPlus", true, false, oldSliders);
                     }
                  }
                  changeValInSlot(param1, selectedSlot, "RibonPlus", true, false, oldSliders);
               } else {
                  var attach:int = 0;
                  for each(var ribbon:Ribbon in Ribbon.getVisibleRibbons(MenuClass._nowCharaNum)) {
                     if (ribbon.slot == selectedSlot) {
                        attach = ribbon.attachPoint;
                     }
                  }
                  for each(var ribbon:Ribbon in Ribbon.getVisibleRibbons(MenuClass._nowCharaNum)) {
                     if (ribbon.attachPoint == attach && ribbon.slot != selectedSlot) {
                        changeValInSlot(param1, ribbon.slot, "RibonPlus", true, false, oldSliders);
                     }
                  }
                  changeValInSlot(param1, selectedSlot, "RibonPlus", true, false, oldSliders);
               }
            } else if (MenuClass.shiftKeyPress) {
               dataTarget = MenuClass.tabData[headerName][targetJ][2]["_data"];
               selectedSlot = MenuClass.systemData[dataTarget]["_menu"];

               for (var shiftSlot = 0; shiftSlot < MenuClass.charaData[MenuClass._nowCharaNum][dataTarget]["_visible"].length; shiftSlot++) {
                  if (shiftSlot != selectedSlot) {
                     if (MenuClass.charaData[MenuClass._nowCharaNum][dataTarget]["_visible"][shiftSlot]) {
                        changeValInSlot(param1, shiftSlot, dataTarget, true, false, oldSliders);
                     }
                  }
               }
               changeValInSlot(param1, selectedSlot, dataTarget, true, false, oldSliders);
            } else {
               dataTarget = MenuClass.tabData[headerName][targetJ][2]["_data"];
               selectedSlot = MenuClass.systemData[dataTarget]["_menu"];
               changeValInSlot(param1, selectedSlot, dataTarget, false, false, oldSliders);
            }
         } else if (MenuClass.tabData[headerName][targetJ][2]["_meter"] == "chara") {            
            changeVal(param1, false, oldSliders);
         } else if (MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemPlus") {
            if (MenuClass.shiftKeyPress) {
               dataTarget = MenuClass.tabData[headerName][targetJ][2]["_data"];
               selectedSlot = MenuClass.systemData[dataTarget]["_menu"];

               for (var shiftSlot = 0; shiftSlot < MenuClass.systemData[dataTarget]["_visible"].length; shiftSlot++) {
                  if (shiftSlot != selectedSlot) {
                     if (MenuClass.systemData[dataTarget]["_visible"][shiftSlot]) {
                        changeValInSlot(param1, shiftSlot, dataTarget, true, true, oldSliders);
                     }
                  }
               }
               changeValInSlot(param1, selectedSlot, dataTarget, true, true, oldSliders);
            } else {
               dataTarget = MenuClass.tabData[headerName][targetJ][2]["_data"];
               selectedSlot = MenuClass.systemData[dataTarget]["_menu"];
               changeValInSlot(param1, selectedSlot, dataTarget, false, true, oldSliders);
            }
         } else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "system" || MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemAll") {
            changeVal(param1, true, oldSliders);
         }
      }
      
      public static function changeValInSlot(param1:String, slot:Number, dataTarget:String, sysData:Boolean, sys:Boolean, oldSliders:Boolean) : void
      {
         var val:Number = NaN;
         if (sysData) {
            MenuClass.systemData[dataTarget]["_menu"] = slot;
         }
         if (sys){
            val = MenuClass.systemData[MenuClass._nowTabName + slot]["_meter"];
         } else {
            val = MenuClass.charaData[MenuClass._nowCharaNum][MenuClass._nowTabName + slot]["_meter"];
         }

         if (oldSliders)
         {
            val = Math.floor(val/10);
         }

         if (MenuClass.altKeyPress != MenuClass.f11KeyPress) {
            if (param1 == "plus") {
               val += 10;
            } else if (param1 == "minus") {
               val -= 10;
            }
         } else {
            if (param1 == "plus") {
               val++;
            } else if (param1 == "minus") {
               val--;
            }
         }
         if (curUndoAction) {
            curUndoAction.recordNewValue(val, slot);
         }
         dataIn(val, slot, oldSliders);
      }

      public static function changeVal(param1:String, sys:Boolean, oldSliders:Boolean) : void
      {
         var val:Number = NaN;
         if (sys){
            val = MenuClass.systemData[MenuClass._nowTabName]["_meter"];
         } else {
            val = MenuClass.charaData[MenuClass._nowCharaNum][MenuClass._nowTabName]["_meter"];
         }

         if (oldSliders)
         {
            val = Math.floor(val/10);
         }

         if (MenuClass.altKeyPress != MenuClass.f11KeyPress) {
            if (param1 == "plus") {
               val += 10;
            } else if (param1 == "minus") {
               val -= 10;
            }
         } else {
            if (param1 == "plus") {
               val++;
            } else if (param1 == "minus") {
               val--;
            }
         }
         if (curUndoAction) {
            curUndoAction.recordNewValue(val, 0);
         }
         dataIn(val, 0, oldSliders);
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
         var oldSliders:Boolean = MenuClass.tabData[headerName][targetJ][2]["_meterType"] > 2 && MenuClass.f10KeyPress;
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
                              if (curUndoAction) {
                                 curUndoAction.recordNewValue(_loc7_, _loc4_);
                              }
                              dataIn(_loc7_,_loc4_,oldSliders);
                           }
                        }
                        _loc4_++;
                     }
                     MenuClass.systemData[_loc2_]["_menu"] = _loc8_;
                     _loc7_ = MenuClass.charaData[MenuClass._nowCharaNum][tabName + _loc8_]["_meter"] + _loc6_;
                     if (curUndoAction) {
                        curUndoAction.recordNewValue(_loc7_, _loc8_);
                     }
                     dataIn(_loc7_,_loc8_,oldSliders);
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
                              if (curUndoAction) {
                                 curUndoAction.recordNewValue(_loc7_, _loc4_);
                              }
                              dataIn(_loc7_,_loc4_,oldSliders);
                           }
                        }
                        _loc4_++;
                     }
                     MenuClass.systemData[_loc2_]["_menu"] = _loc8_;
                     _loc7_ = MenuClass.systemData[tabName + _loc8_]["_meter"] + _loc6_;
                     if (curUndoAction) {
                        curUndoAction.recordNewValue(_loc7_, _loc8_);
                     }
                     dataIn(_loc7_,_loc8_,oldSliders);
                  }
               }
               else
               {
                  var val = Math.floor((param1.currentTarget.parent.mouseX - 3) / _loc3_ * maxNum);
                  var slot = MenuClass.systemData[MenuClass.tabData[headerName][targetJ][2]["_data"]]["_menu"];

                  if (curUndoAction) {
                     curUndoAction.recordNewValue(val, slot);
                  }

                  dataIn(val, slot, oldSliders);
               }
            }
            else
            {
               var val = Math.floor((param1.currentTarget.parent.mouseX - 3) / _loc3_ * maxNum);
   
               if (curUndoAction) {
                  curUndoAction.recordNewValue(val, 0);
               }

               dataIn(val, 0, oldSliders);
            }
         }
         before_num = param1.currentTarget.parent.mouseX;
      }
      
      public static function dataIn(param1:Number, param2:int, oldSliders:Boolean) : void
      {
         trace("datain "+ param1 + " param2 " + param2);
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         MenuClass._nowTabName = tabName;
         if(MenuClass.spaceKeyPress == MenuClass.f12KeyPress || MenuClass.tabData[headerName][targetJ][2]["_free"] == 3)
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
                  MenuClass.charaData[_loc3_][tabName + param2]["_meter"] = oldSliders? MenuClass.charaData[_loc3_][tabName + param2]["_meter"] - Math.floor(MenuClass.charaData[_loc3_][tabName + param2]["_meter"] / 10) * 10 + param1 * 10 : param1;
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
                     MenuClass.charaData[_loc3_][tabName + param2]["_meter"] = oldSliders? MenuClass.charaData[_loc3_][tabName + param2]["_meter"] - Math.floor(MenuClass.charaData[_loc3_][tabName + param2]["_meter"] / 10) * 10  +  param1 * 10 : param1;
                  }
                  _loc3_++;
               }
            }
            else
            {
               MenuClass.charaData[MenuClass._nowCharaNum][tabName + param2]["_meter"] = oldSliders? MenuClass.charaData[MenuClass._nowCharaNum][tabName + param2]["_meter"] - Math.floor(MenuClass.charaData[MenuClass._nowCharaNum][tabName + param2]["_meter"] / 10) * 10  + param1 * 10 : param1;
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
                     if(MenuClass.spaceKeyPress == MenuClass.f12KeyPress || MenuClass.tabData[headerName][targetJ][2]["_free"] == 3)
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
                     MenuClass.charaData[_loc3_][tabName]["_meter"] = oldSliders? MenuClass.charaData[_loc3_][tabName]["_meter"] - Math.floor(MenuClass.charaData[_loc3_][tabName]["_meter"] / 10) * 10  + _loc6_ * 10 : _loc6_;
                     _loc3_++;
                  }
                  MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_meter"] = oldSliders? MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_meter"] - Math.floor(MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_meter"] / 10) * 10  +  param1 * 10 : param1;
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ <= MenuClass._characterNum)
                  {
                     MenuClass.charaData[_loc3_][tabName]["_meter"] = oldSliders? MenuClass.charaData[_loc3_][tabName]["_meter"] - Math.floor(MenuClass.charaData[_loc3_][tabName]["_meter"] / 10) * 10 + param1 * 10 : param1;
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
                     MenuClass.charaData[_loc3_][tabName]["_meter"] = oldSliders? MenuClass.charaData[_loc3_][tabName]["_meter"] - Math.floor(MenuClass.charaData[_loc3_][tabName]["_meter"] / 10) * 10  + param1 * 10 : param1;
                  }
                  _loc3_++;
               }
            }
            else
            {
               MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_meter"] = oldSliders? MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_meter"] - Math.floor(MenuClass.charaData[MenuClass._nowCharaNum][tabName]["_meter"] / 10) * 10  + param1 * 10 : param1;
            }
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemPlus")
         {
            _loc4_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
            MenuClass.systemData[tabName + param2]["_meter"] = oldSliders? MenuClass.systemData[tabName + param2]["_meter"] - Math.floor(MenuClass.systemData[tabName + param2]["_meter"] / 10) * 10  + param1 * 10 : param1;
         }
         else if(MenuClass.tabData[headerName][targetJ][2]["_meter"] == "system" || MenuClass.tabData[headerName][targetJ][2]["_meter"] == "systemAll")
         {
            MenuClass.systemData[tabName]["_meter"] = oldSliders? MenuClass.systemData[tabName]["_meter"] - Math.floor(MenuClass.systemData[tabName]["_meter"] / 10) * 10  + param1 * 10 : param1;
         }

         /* Don't rescale the menu while the user is manipulating the scale slider. */
         if (headerName == "Tool" && tabName == "MenuScale" && barMouseHeld) {
            meterTxt();
            new Tab_SetClass();
            return;
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

         if (MenuClass.tabData[headerName][targetJ][2]["_meterType"] > 2 && MenuClass.f10KeyPress)
         {
            _loc1_ = Math.floor(_loc1_ / 10);
         }
         /* NOTE: could probably replace this with a more general formatting mechanism
          * Also see Tab_MeterTxt
          */
         if (headerName == "Tool" && tabName == "MenuScale") {
            var scale = (_loc1_ * (0.50 / 100)) + .50;
            targetMC.meterTxt.num.text = scale.toFixed(2);
         } else {
            targetMC.meterTxt.num.text = _loc1_;

            if(MenuClass.spaceKeyPress == MenuClass.f12KeyPress)
            {
               if(_loc1_ == maxNum)
               {
                  if(maxNum == 100)
                  {
                     targetMC.meterTxt.gotoAndStop(2);
                  }
                  //else if(maxNum == 3600 && MenuClass.tabData[headerName][targetJ][2]["_meterType"] == 4)
                  //{
                  //   targetMC.meterTxt.gotoAndStop(3);
                  //}
                  else if(maxNum == 1000 && MenuClass.tabData[headerName][targetJ][2]["_meterType"] == 2)
                  {
                     targetMC.meterTxt.gotoAndStop(4);
                  }
               }
            }
         }
      }
   }
}
