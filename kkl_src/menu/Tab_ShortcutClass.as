package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   
   public class Tab_ShortcutClass
   {
       
      
      public function Tab_ShortcutClass()
      {
         super();
      }
      
      public static function setFc() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:String = null;
         _loc2_ = MenuClass.MY_MENUNAME.length;
         _loc3_ = MenuClass.shortcutAr.length;
         MenuClass._nowWindowName = "ShortcutWindow";
         MenuClass.tabMenuAdd["ShortcutWindow"] = new Menu_Load.TabShortcutWindowClass();
         Main.stageVar.addChild(MenuClass.tabMenuAdd["ShortcutWindow"]);
         MenuClass.tabMenuAdd["ShortcutWindow"].x = 8;
         if(MenuClass.hederSwitchCheck)
         {
            MenuClass.tabMenuAdd["ShortcutWindow"].y = 5 + Main._stageResizeY;
         }
         else
         {
            MenuClass.tabMenuAdd["ShortcutWindow"].y = 31 + Main._stageResizeY * -1;
         }
         new ColorChangeClass(MenuClass.tabMenuAdd["ShortcutWindow"].closeBtn.bg,"37241A");
         MenuClass.tabMenuAdd["ShortcutWindow"].closeBtn.x = 752;
         MenuClass.tabMenuAdd["ShortcutWindow"].closeBtn.y = 3;
         MenuClass.tabMenuAdd["ShortcutWindow"].closeBtn.addEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
         MenuClass.tabMenuAdd["ShortcutWindow"].closeBtn.addEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
         MenuClass.tabMenuAdd["ShortcutWindow"].closeBtn.addEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
         MenuClass.tabMenuAdd["ShortcutWindow"].closeBtn.buttonMode = true;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         _loc4_ = 1;
         var _loc9_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            if(MenuClass.MY_MENUNAME[_loc1_][3] != 10 && MenuClass.MY_MENUNAME[_loc1_][0] != "StoryTool")
            {
               if(!MenuClass.MY_MENUNAME[_loc1_][4] && Main.r18Check)
               {
                  _loc9_++;
               }
               if((_loc10_ = _loc1_ - _loc9_) == 8 || _loc10_ == 16 || _loc10_ == 24 || _loc10_ == 32 || _loc10_ == 40 || _loc10_ == 48)
               {
                  if(!(!MenuClass.MY_MENUNAME[_loc1_][4] && Main.r18Check))
                  {
                     _loc5_++;
                  }
                  _loc6_ = 0;
               }
               _loc7_ = new Menu_Load.TabRandomBoxClass();
               MenuClass.tabMenuAdd["ShortcutWindow"].addChild(_loc7_);
               MenuClass.shortcutHeaderbtnAdd[_loc1_] = _loc7_;
               MenuClass.shortcutHeaderbtnAdd[_loc1_].x = _loc6_ * 91 + 35;
               MenuClass.shortcutHeaderbtnAdd[_loc1_].y = _loc5_ * 47 + 39;
               _loc11_ = MenuClass.MY_MENUNAME[_loc1_][0];
               _loc12_ = MenuClass.MY_MENUNAME[_loc1_][1];

               if (_loc11_ == "ArmHeight")
               {
                  _loc11_ = "FreeHandScale";
               }
               else if (_loc11_ == "LegHeight")
               {
                  _loc11_ = "Ashi2";
               }

               MenuClass.shortcutHeaderbtnAdd[_loc1_].icon.icon.gotoAndStop(_loc11_);
               new ColorChangeClass(MenuClass.shortcutHeaderbtnAdd[_loc1_].icon.icon,"ffffff");
               new ColorChangeClass(MenuClass.shortcutHeaderbtnAdd[_loc1_].bg,_loc12_);
               _loc8_ = new Menu_Load.shortcutTextClass();
               MenuClass.tabMenuAdd["ShortcutWindow"].addChild(_loc8_);
               MenuClass.shortcutAdd[_loc1_] = _loc8_;
               MenuClass.shortcutAdd[_loc1_].x = _loc6_ * 91 + 73;
               MenuClass.shortcutAdd[_loc1_].y = _loc5_ * 47 + 42;
               MenuClass.shortcutAdd[_loc1_].name = MenuClass.MY_MENUNAME[_loc1_][0];
               MenuClass.shortcutAdd[_loc1_].dataNum.addEventListener(Event.CHANGE,txtIN);
               MenuClass.shortcutAdd[_loc1_].dataNum.addEventListener(FocusEvent.FOCUS_IN,txtFocus);
               MenuClass.shortcutAdd[_loc1_].dataNum.addEventListener(FocusEvent.FOCUS_OUT,txtKillFocus);
               if(!(!MenuClass.MY_MENUNAME[_loc1_][4] && Main.r18Check && _loc6_ != 0))
               {
                  _loc6_++;
               }
               _loc4_++;
               if(!MenuClass.MY_MENUNAME[_loc1_][4] && Main.r18Check)
               {
                  MenuClass.shortcutHeaderbtnAdd[_loc1_].visible = false;
                  MenuClass.shortcutAdd[_loc1_].visible = false;
               }
            }
            _loc1_++;
         }
         _loc5_ = 0;
         _loc6_ = 0;
         _loc4_--;
         _loc1_ = 0;
         while(_loc1_ < _loc3_)
         {
            if(_loc1_ == 7 || _loc1_ == 13)
            {
               _loc5_++;
               _loc6_ = 0;
            }
            _loc8_ = new Menu_Load.shortcutTextClass();
            MenuClass.tabMenuAdd["ShortcutWindow"].addChild(_loc8_);
            MenuClass.shortcutAdd[_loc4_ + _loc1_] = _loc8_;
            MenuClass.shortcutAdd[_loc4_ + _loc1_].x = _loc6_ * 91 + 73;
            MenuClass.shortcutAdd[_loc4_ + _loc1_].y = _loc5_ * 47 + 400;
            MenuClass.shortcutAdd[_loc4_ + _loc1_].name = MenuClass.shortcutAr[_loc1_][0];
            MenuClass.shortcutAdd[_loc4_ + _loc1_].dataNum.addEventListener(Event.CHANGE,txtIN);
            MenuClass.shortcutAdd[_loc4_ + _loc1_].dataNum.addEventListener(FocusEvent.FOCUS_IN,txtFocus);
            MenuClass.shortcutAdd[_loc4_ + _loc1_].dataNum.addEventListener(FocusEvent.FOCUS_OUT,txtKillFocus);
            _loc6_++;
            _loc1_++;
         }
         dataIn();
         MenuClass.tabMenuAdd["ShortcutWindow"].traceBtn.addEventListener(MouseEvent.MOUSE_DOWN,traceMouseDown);
      }
      
      public static function deleteFc() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = MenuClass.MY_MENUNAME.length;
         _loc3_ = MenuClass.shortcutAr.length;
         try
         {
            MenuClass.tabMenuAdd["ShortcutWindow"].traceBtn.removeEventListener(MouseEvent.MOUSE_DOWN,traceMouseDown);
            MenuClass.tabMenuAdd["ShortcutWindow"].closeBtn.removeEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
            MenuClass.tabMenuAdd["ShortcutWindow"].closeBtn.removeEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
            MenuClass.tabMenuAdd["ShortcutWindow"].closeBtn.removeEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
            _loc4_ = 1;
            _loc1_ = 0;
            while(_loc1_ < _loc2_)
            {
               if(MenuClass.MY_MENUNAME[_loc1_][3] != 10 && MenuClass.MY_MENUNAME[_loc1_][0] != "StoryTool")
               {
                  MenuClass.shortcutAdd[_loc1_].dataNum.removeEventListener(Event.CHANGE,txtIN);
                  MenuClass.shortcutAdd[_loc1_].dataNum.removeEventListener(FocusEvent.FOCUS_IN,txtFocus);
                  MenuClass.shortcutAdd[_loc1_].dataNum.removeEventListener(FocusEvent.FOCUS_OUT,txtKillFocus);
                  MenuClass.tabMenuAdd["ShortcutWindow"].removeChild(MenuClass.shortcutAdd[_loc1_]);
                  MenuClass.shortcutAdd[_loc1_] = null;
                  MenuClass.tabMenuAdd["ShortcutWindow"].removeChild(MenuClass.shortcutHeaderbtnAdd[_loc1_]);
                  MenuClass.shortcutHeaderbtnAdd[_loc1_] = null;
                  _loc4_++;
               }
               _loc1_++;
            }
            _loc4_--;
            _loc1_ = 0;
            while(_loc1_ < _loc3_)
            {
               MenuClass.shortcutAdd[_loc4_ + _loc1_].dataNum.removeEventListener(Event.CHANGE,txtIN);
               MenuClass.shortcutAdd[_loc4_ + _loc1_].dataNum.removeEventListener(FocusEvent.FOCUS_IN,txtFocus);
               MenuClass.shortcutAdd[_loc4_ + _loc1_].dataNum.removeEventListener(FocusEvent.FOCUS_OUT,txtKillFocus);
               MenuClass.tabMenuAdd["ShortcutWindow"].removeChild(MenuClass.shortcutAdd[_loc4_ + _loc1_]);
               MenuClass.shortcutAdd[_loc4_ + _loc1_] = null;
               _loc1_++;
            }
            Main.stageVar.removeChild(MenuClass.tabMenuAdd["ShortcutWindow"]);
            MenuClass.tabMenuAdd["ShortcutWindow"] = null;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function txtFocus(param1:FocusEvent) : void
      {
         if(param1.currentTarget.text.length >= 1)
         {
            param1.currentTarget.parent.gotoAndStop(2);
         }
         else
         {
            param1.currentTarget.parent.gotoAndStop(4);
         }
      }
      
      public static function txtKillFocus(param1:FocusEvent) : void
      {
         if(param1.currentTarget.text.length >= 1)
         {
            param1.currentTarget.parent.gotoAndStop(1);
         }
         else
         {
            param1.currentTarget.parent.gotoAndStop(3);
         }
      }
      
      public static function txtIN(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc3_ = MenuClass.shortcutHeaderAr.length;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            if(MenuClass.shortcutHeaderAr[_loc2_][1] == param1.currentTarget.text || MenuClass.shortcutHeaderAr[_loc2_][2] == KeyPressClass.charCodeNum)
            {
               MenuClass.shortcutHeaderAr[_loc2_][1] = "";
               MenuClass.shortcutHeaderAr[_loc2_][2] = "";
               MenuClass.shortcutAdd[_loc2_].dataNum.text = "";
               MenuClass.shortcutAdd[_loc2_].gotoAndStop(3);
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            if(MenuClass.shortcutHeaderAr[_loc2_][0] == param1.currentTarget.parent.name)
            {
               if(KeyPressClass.charCodeNum != 8)
               {
                  MenuClass.shortcutHeaderAr[_loc2_][1] = param1.currentTarget.text;
                  MenuClass.shortcutHeaderAr[_loc2_][2] = KeyPressClass.charCodeNum;
               }
               else
               {
                  MenuClass.shortcutHeaderAr[_loc2_][1] = "";
                  MenuClass.shortcutHeaderAr[_loc2_][2] = "";
                  MenuClass.shortcutAdd[_loc2_].dataNum.text = "";
                  MenuClass.shortcutAdd[_loc2_].gotoAndStop(3);
               }
            }
            _loc2_++;
         }
         if(param1.currentTarget.text.length >= 1)
         {
            param1.currentTarget.parent.gotoAndStop(2);
         }
         else
         {
            param1.currentTarget.parent.gotoAndStop(4);
         }
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
         MenuClass._nowWindowName = null;
         Tab_ShortcutClass.deleteFc();
      }
      
      public static function closeMouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
      
      public static function closeMouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
      
      public static function dataIn() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc2_ = MenuClass.shortcutHeaderAr.length;
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            if(MenuClass.shortcutHeaderAr[_loc1_][1] == "")
            {
               MenuClass.shortcutAdd[_loc1_].dataNum.text = "";
               MenuClass.shortcutAdd[_loc1_].gotoAndStop(3);
            }
            else
            {
               MenuClass.shortcutAdd[_loc1_].dataNum.text = MenuClass.shortcutHeaderAr[_loc1_][1];
               MenuClass.shortcutAdd[_loc1_].gotoAndStop(1);
            }
            _loc1_++;
         }
      }
      
      public static function traceMouseDown(param1:MouseEvent) : void
      {
         if(MenuClass.spaceKeyPress && !Main.textFieldAddCheck)
         {
            Main.textFieldAddCheck = true;
            Main.stageVar.addChild(Main.textField);
            Main.textField.width = 600;
            Main.textField.height = 30;
            Main.textField.x = 50;
            Main.textField.y = 10;
            Main.textField.textColor = 0;
            Main.textField.text = "デバック用テキストフィール";
         }
      }
   }
}
