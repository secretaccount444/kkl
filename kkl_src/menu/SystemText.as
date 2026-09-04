package menu
{
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import system.MeterPersent;
   
   public class SystemText
   {
       
      
      public function SystemText()
      {
         super();
      }
      
      public static function loadFc(param1:String, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:Boolean = true;
         try
         {
            if(MenuClass.systemOldData["txtFieldmenu"]["_visible"][param2] == MenuClass.systemData["txtFieldmenu"]["_visible"][param2] && String(MenuClass.systemOldData["FontType" + param2]["_color0"][0]) == String(MenuClass.systemData["FontType" + param2]["_color0"][0]) && MenuClass.systemOldData["FontType" + param2]["_txt"] == MenuClass.systemData["FontType" + param2]["_txt"] && MenuClass.systemOldData["FontType" + param2]["_font"] == MenuClass.systemData["FontType" + param2]["_font"] && MenuClass.systemOldData["txtFieldScale" + param2]["_meter"] == MenuClass.systemData["txtFieldScale" + param2]["_meter"] && MenuClass.systemOldData["txtFieldX" + param2]["_meter"] == MenuClass.systemData["txtFieldX" + param2]["_meter"] && MenuClass.systemOldData["txtFieldY" + param2]["_meter"] == MenuClass.systemData["txtFieldY" + param2]["_meter"] && MenuClass.systemOldData["txtFieldLeading" + param2]["_meter"] == MenuClass.systemData["txtFieldLeading" + param2]["_meter"] && MenuClass.systemOldData["txtFieldLetter" + param2]["_meter"] == MenuClass.systemData["txtFieldLetter" + param2]["_meter"])
            {
               _loc3_ = false;
            }
         }
         catch(myError:Error)
         {
         }
         if(_loc3_)
         {
            if(param1 == "txtFc")
            {
               txtFieldmenuFc(param2);
            }
            else if(param1 == "txtFieldmenu")
            {
               Main.stageVar.focus = Main.mainWindow;
               txtFieldmenuFc(param2);
               if(MenuClass._nowHeaderName == "txt")
               {
                  _loc5_ = MenuClass.systemData["txtFieldmenu"]["_visible"].length - 1;
                  _loc4_ = 0;
                  while(_loc4_ <= _loc5_)
                  {
                     try
                     {
                        MenuClass.txtFieldAdd[_loc4_].selectable = false;
                        MenuClass.txtFieldAdd[_loc4_].restrict = "";
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc4_++;
                  }
               }
            }
            else if(param1 == "FontType")
            {
               FontTypeFc(param2);
            }
            else if(param1 == "txtFieldScale")
            {
               txtFieldScaleFc(param2);
            }
            else if(param1 == "txtFieldX")
            {
               txtFieldXFc(param2);
            }
            else if(param1 == "txtFieldY")
            {
               txtFieldYFc(param2);
            }
            else if(param1 == "txtFieldLeading")
            {
               txtFieldLeadingFc(param2);
            }
            else if(param1 == "txtFieldLetter")
            {
               txtFieldLetterFc(param2);
            }
         }
      }
      
      public static function txtSaveFc(param1:Number) : void
      {
         var _loc2_:String = null;
         var _loc3_:RegExp = null;
         try
         {
            _loc2_ = "";
            _loc3_ = /\n/g;
            _loc2_ = MenuClass.txtFieldAdd[param1].text.replace(_loc3_,"<br>");
            _loc3_ = /\r/g;
            _loc2_ = MenuClass.txtFieldAdd[param1].text.replace(_loc3_,"<br>");
            MenuClass.systemData["FontType" + param1]["_txt"] = _loc2_;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function txtFieldmenuFc(param1:Number) : void
      {
         var _loc2_:TextField = null;
         if(MenuClass.systemData["txtFieldmenu"]["_visible"][param1])
         {
            if(MenuClass.txtFieldAdd[param1] == undefined || MenuClass.txtFieldAdd[param1] == null)
            {
               _loc2_ = new TextField();
               _loc2_.border = false;
               _loc2_.borderColor = 16777215;
               _loc2_.width = 800;
               _loc2_.height = 600;
               _loc2_.background = false;
               _loc2_.type = TextFieldType.DYNAMIC;
               _loc2_.mouseWheelEnabled = true;
               _loc2_.multiline = true;
               _loc2_.selectable = false;
               _loc2_.wordWrap = false;
               _loc2_.autoSize = TextFieldAutoSize.LEFT;
               _loc2_.alwaysShowSelection = false;
               Main.mainWindow.addChild(_loc2_);
               MenuClass.txtFieldAdd[param1] = _loc2_;
               MenuClass.txtFieldAdd[param1].name = param1;
               MenuClass.txtFieldAdd[param1].addEventListener(FocusEvent.FOCUS_IN,focusIn);
               MenuClass.txtFieldAdd[param1].addEventListener(FocusEvent.FOCUS_OUT,focusOut);
               MenuClass.txtFieldAdd[param1].addEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
            }
            MenuClass.txtFieldAdd[param1].visible = true;
            MenuClass.txtFieldAdd[param1].htmlText = MenuClass.systemData["FontType" + param1]["_txt"];
            FontTypeFc(param1);
            txtFieldScaleFc(param1);
            txtFieldXFc(param1);
            txtFieldYFc(param1);
            txtFieldLeadingFc(param1);
            txtFieldLetterFc(param1);
            txtFieldDepthFc(param1);
         }
         else if(!MenuClass.systemData["txtFieldmenu"]["_visible"][param1])
         {
            try
            {
               MenuClass.txtFieldAdd[param1].removeEventListener(FocusEvent.FOCUS_IN,focusIn);
               MenuClass.txtFieldAdd[param1].removeEventListener(FocusEvent.FOCUS_OUT,focusOut);
               MenuClass.txtFieldAdd[param1].removeEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
               Main.mainWindow.removeChild(MenuClass.txtFieldAdd[param1]);
               MenuClass.txtFieldAdd[param1] = null;
            }
            catch(myError:Error)
            {
            }
         }
      }
      
      public static function MouseClick(param1:MouseEvent) : void
      {
         if(MenuClass._nowHeaderName == "txt")
         {
            SystemText2.textClickCheck = true;
            SystemText2.textFocusCheck = true;
            param1.target.selectable = true;
            param1.target.restrict = "^*";
            MenuClass.systemData["txtFieldmenu"]["_menu"] = int(param1.target.name);
            new Tab_SetClass();
            Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         if(MenuClass._nowHeaderName == "txt")
         {
            SystemText2.textClickCheck = false;
            Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         }
      }
      
      public static function focusIn(param1:FocusEvent) : void
      {
         if(MenuClass._nowHeaderName == "txt")
         {
            SystemText2.textFocusCheck = true;
         }
      }
      
      public static function focusOut(param1:FocusEvent) : void
      {
         if(MenuClass._nowHeaderName == "txt")
         {
            txtSaveFc(int(param1.target.name));
            param1.target.selectable = false;
            param1.target.restrict = "";
            SystemText2.textFocusCheck = false;
         }
      }
      
      public static function txtFieldDepthFc(param1:Number) : void
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ <= 9)
         {
            try
            {
               Main.mainWindow.addChild(MenuClass.txtFieldAdd[_loc2_]);
            }
            catch(myError:Error)
            {
            }
            _loc2_++;
         }
      }
      
      public static function FontTypeFc(param1:Number) : void
      {
         if(MenuClass.systemData["txtFieldmenu"]["_visible"][param1])
         {
            if(MenuClass.FontList[MenuClass.systemData["FontType" + param1]["_menu"]] == "日本語-Light")
            {
               new Chara_Loading_text("font_jpLight",param1);
            }
            else if(MenuClass.FontList[MenuClass.systemData["FontType" + param1]["_menu"]] == "日本語-Medium")
            {
               new Chara_Loading_text("font_jpMedium",param1);
            }
            else if(MenuClass.FontList[MenuClass.systemData["FontType" + param1]["_menu"]] == "日本語-Black")
            {
               new Chara_Loading_text("font_jpBlack",param1);
            }
            else if(MenuClass.FontList[MenuClass.systemData["FontType" + param1]["_menu"]] == "ABC-1")
            {
               new Chara_Loading_text("font_en1",param1);
            }
            else if(MenuClass.FontList[MenuClass.systemData["FontType" + param1]["_menu"]] == "ABC-2")
            {
               new Chara_Loading_text("font_en2",param1);
            }
            else
            {
               SystemText2.format = new TextFormat();
               SystemText2.format.font = MenuClass.FontList[MenuClass.systemData["FontType" + param1]["_menu"]];
               MenuClass.txtFieldAdd[param1].defaultTextFormat = SystemText2.format;
               MenuClass.txtFieldAdd[param1].embedFonts = false;
               new Chara_ColorClass(0,"FontType" + param1);
               MenuClass.txtFieldAdd[param1].htmlText = MenuClass.systemData["FontType" + param1]["_txt"];
            }
         }
      }
      
      public static function txtFieldScaleFc(param1:Number) : void
      {
         if(MenuClass.systemData["txtFieldmenu"]["_visible"][param1])
         {
            new MeterPersent(1,126,"txtFieldScale",param1);
            SystemText2.format = new TextFormat();
            SystemText2.format.size = Math.floor(MeterPersent.MeterPersentNum);
            MenuClass.txtFieldAdd[param1].defaultTextFormat = SystemText2.format;
            MenuClass.txtFieldAdd[param1].htmlText = MenuClass.systemData["FontType" + param1]["_txt"];
         }
      }
      
      public static function txtFieldXFc(param1:Number) : void
      {
         if(MenuClass.systemData["txtFieldmenu"]["_visible"][param1])
         {
            new MeterPersent(-100,900,"txtFieldX",param1);
            MenuClass.txtFieldAdd[param1].x = MeterPersent.MeterPersentNum;
         }
      }
      
      public static function txtFieldYFc(param1:Number) : void
      {
         if(MenuClass.systemData["txtFieldmenu"]["_visible"][param1])
         {
            new MeterPersent(800,-200,"txtFieldY",param1);
            MenuClass.txtFieldAdd[param1].y = MeterPersent.MeterPersentNum;
         }
      }
      
      public static function txtFieldLeadingFc(param1:Number) : void
      {
         if(MenuClass.systemData["txtFieldmenu"]["_visible"][param1])
         {
            new MeterPersent(-100,200,"txtFieldLeading",param1);
            SystemText2.format = new TextFormat();
            SystemText2.format.leading = Math.floor(MeterPersent.MeterPersentNum);
            MenuClass.txtFieldAdd[param1].defaultTextFormat = SystemText2.format;
            MenuClass.txtFieldAdd[param1].htmlText = MenuClass.systemData["FontType" + param1]["_txt"];
         }
      }
      
      public static function txtFieldLetterFc(param1:Number) : void
      {
         if(MenuClass.systemData["txtFieldmenu"]["_visible"][param1])
         {
            new MeterPersent(-20,180,"txtFieldLetter",param1);
            SystemText2.format = new TextFormat();
            SystemText2.format.letterSpacing = Math.floor(MeterPersent.MeterPersentNum);
            MenuClass.txtFieldAdd[param1].defaultTextFormat = SystemText2.format;
            MenuClass.txtFieldAdd[param1].htmlText = MenuClass.systemData["FontType" + param1]["_txt"];
         }
      }
   }
}
