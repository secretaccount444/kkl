package menu
{
   import fl.text.TLFTextField;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.text.AntiAliasType;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flashx.textLayout.elements.TextFlow;
   import flashx.textLayout.formats.BlockProgression;
   import flashx.textLayout.formats.TextLayoutFormat;
   import system.MeterPersent;
   import system.MeterPersentRibon;
   
   public class SystemText2
   {
      
      public static var format:TextFormat;
      
      public static var textFocusCheck:Boolean = false;
      
      public static var textClickCheck:Boolean = false;
       
      
      public function SystemText2()
      {
         super();
      }
      
      public static function loadFc(param1:String, param2:int, param3:String) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc4_:Boolean = true;
         try
         {
            if(MenuClass.systemOldData["txtFieldmenu"]["_visible"][param2] == MenuClass.systemData["txtFieldmenu"]["_visible"][param2] && String(MenuClass.systemOldData["FontType" + param2]["_color0"][0]) == String(MenuClass.systemData["FontType" + param2]["_color0"][0]) && MenuClass.systemOldData["FontType" + param2]["_txt"] == MenuClass.systemData["FontType" + param2]["_txt"] && MenuClass.systemOldData["FontType" + param2]["_font"] == MenuClass.systemData["FontType" + param2]["_font"] && MenuClass.systemOldData["txtFieldScale" + param2]["_meter"] == MenuClass.systemData["txtFieldScale" + param2]["_meter"] && MenuClass.systemOldData["txtFieldX" + param2]["_meter"] == MenuClass.systemData["txtFieldX" + param2]["_meter"] && MenuClass.systemOldData["txtFieldY" + param2]["_meter"] == MenuClass.systemData["txtFieldY" + param2]["_meter"] && MenuClass.systemOldData["txtFieldLeading" + param2]["_meter"] == MenuClass.systemData["txtFieldLeading" + param2]["_meter"] && MenuClass.systemOldData["txtFieldLetter" + param2]["_meter"] == MenuClass.systemData["txtFieldLetter" + param2]["_meter"] && MenuClass.systemOldData["txtFieldTateYoko" + param2]["_meter"] == MenuClass.systemData["txtFieldTateYoko" + param2]["_meter"] && MenuClass.systemOldData["txtFieldWidth" + param2]["_meter"] == MenuClass.systemData["txtFieldWidth" + param2]["_meter"] && MenuClass.systemOldData["txtFieldRotation" + param2]["_meter"] == MenuClass.systemData["txtFieldRotation" + param2]["_meter"] && MenuClass.systemOldData["txtFieldFormatAlign" + param2]["_meter"] == MenuClass.systemData["txtFieldFormatAlign" + param2]["_meter"] && MenuClass.systemOldData["txtFieldAlpha" + param2]["_meter"] == MenuClass.systemData["txtFieldAlpha" + param2]["_meter"] && MenuClass.systemOldData["txtFieldScaleB" + param2]["_meter"] == MenuClass.systemData["txtFieldScaleB" + param2]["_meter"] && MenuClass.systemOldData["txtFieldBoxScaleX" + param2]["_meter"] == MenuClass.systemData["txtFieldBoxScaleX" + param2]["_meter"] && MenuClass.systemOldData["txtFieldBoxScaleY" + param2]["_meter"] == MenuClass.systemData["txtFieldBoxScaleY" + param2]["_meter"] && MenuClass.systemOldData["txtFieldAdd" + param2]["_add0"] == MenuClass.systemData["txtFieldAdd" + param2]["_add0"] && MenuClass.systemOldData["txtFieldDepth" + param2]["_depth"] == MenuClass.systemData["txtFieldDepth" + param2]["_depth"])
            {
               _loc4_ = false;
            }
         }
         catch(myError:Error)
         {
         }
         if(_loc4_)
         {
            if(param1 == "txtFc")
            {
               txtFieldmenuFc(param2,param3);
            }
            else if(param1 == "txtFieldmenu")
            {
               Main.stageVar.focus = Main.mainWindow;
               txtFieldmenuFc(param2,param3);
               if(MenuClass._nowHeaderName == "txt")
               {
                  _loc6_ = MenuClass.systemData["txtFieldmenu"]["_visible"].length - 1;
                  _loc5_ = 0;
                  while(_loc5_ <= _loc6_)
                  {
                     try
                     {
                        MenuClass.txtFieldAdd[_loc5_].selectable = false;
                        MenuClass.txtFieldAdd[_loc5_].restrict = "";
                        MenuClass.txtFieldAdd[_loc5_].mouseChildren = false;
                        MenuClass.txtFieldAdd[_loc5_].mouseEnabled = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
               }
            }
            else if(param1 == "txtFieldAdd")
            {
               _loc7_ = MenuClass.systemData["txtFieldAdd" + param2]["_add0"];
               _loc9_ = (_loc8_ = Tab_AddCostumOpen.openAr[_loc7_][0]).substring(0,13);
               _loc10_ = _loc8_.substring(13,14);
               if(_loc9_ == "FreeHukidashi")
               {
                  Chara_Class.chara_m["Hukidashi" + _loc10_].addChild(MenuClass.txtFieldAdd[param2]);
               }
               else if(_loc8_ == "Background")
               {
                  Main.mainWindow.addChild(MenuClass.txtFieldAdd[param2]);
               }
               txtFieldScaleFc(param2);
               new Tab_FileDepth_txt(param2,param3);
            }
            else
            {
               txtFieldScaleFc(param2);
               new Tab_FileDepth_txt(param2,param3);
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
            _loc2_ = MenuClass.txtFieldAdd[param1].text.replace(/\r|\n|\r\n/gi,"<br>");
            MenuClass.systemData["FontType" + param1]["_txt"] = _loc2_;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function txtFieldmenuFc(param1:Number, param2:String) : void
      {
         var _loc7_:TLFTextField = null;
         var _loc3_:int = MenuClass.systemData["txtFieldAdd" + param1]["_add0"];
         var _loc4_:String;
         var _loc5_:String = (_loc4_ = Tab_AddCostumOpen.openAr[_loc3_][0]).substring(0,13);
         var _loc6_:String = _loc4_.substring(13,14);
         if(MenuClass.systemData["txtFieldmenu"]["_visible"][param1])
         {
            if(MenuClass.txtFieldAdd[param1] == undefined || MenuClass.txtFieldAdd[param1] == null)
            {
               (_loc7_ = new TLFTextField()).background = false;
               _loc7_.type = TextFieldType.DYNAMIC;
               _loc7_.mouseWheelEnabled = true;
               _loc7_.multiline = true;
               _loc7_.selectable = false;
               _loc7_.wordWrap = false;
               _loc7_.autoSize = TextFieldAutoSize.LEFT;
               _loc7_.antiAliasType = AntiAliasType.ADVANCED;
               _loc7_.paddingTop = 0;
               _loc7_.alwaysShowSelection = false;
               MenuClass.txtFieldAdd[param1] = _loc7_;
               try
               {
                  if(_loc5_ == "FreeHukidashi")
                  {
                     MenuClass.systemData["FreeHukidashiPlus"]["_visible"][_loc6_] = true;
                     new Free_HukidashiSet(int(_loc6_),"tab");
                     Chara_Class.chara_m["Hukidashi" + _loc6_].addChild(MenuClass.txtFieldAdd[param1]);
                  }
                  else if(_loc4_ == "Background")
                  {
                     Main.mainWindow.addChild(MenuClass.txtFieldAdd[param1]);
                  }
               }
               catch(myError:Error)
               {
               }
               MenuClass.txtFieldAdd[param1].mouseChildren = true;
               MenuClass.txtFieldAdd[param1].mouseEnabled = true;
               MenuClass.txtFieldAdd[param1].name = param1;
               MenuClass.txtFieldAdd[param1].addEventListener(FocusEvent.FOCUS_IN,focusIn);
               MenuClass.txtFieldAdd[param1].addEventListener(FocusEvent.FOCUS_OUT,focusOut);
               MenuClass.txtFieldAdd[param1].addEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
            }
            MenuClass.txtFieldAdd[param1].visible = true;
            MenuClass.txtFieldAdd[param1].htmlText = MenuClass.systemData["FontType" + param1]["_txt"];
            txtFieldScaleFc(param1);
            new Tab_FileDepth_txt(param1,param2);
         }
         else if(!MenuClass.systemData["txtFieldmenu"]["_visible"][param1])
         {
            try
            {
               MenuClass.txtFieldAdd[param1].removeEventListener(FocusEvent.FOCUS_IN,focusIn);
               MenuClass.txtFieldAdd[param1].removeEventListener(FocusEvent.FOCUS_OUT,focusOut);
               MenuClass.txtFieldAdd[param1].removeEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
               if(_loc5_ == "FreeHukidashi")
               {
                  Chara_Class.chara_m["Hukidashi" + _loc6_].removeChild(MenuClass.txtFieldAdd[param1]);
               }
               else if(_loc4_ == "Background")
               {
                  Main.mainWindow.removeChild(MenuClass.txtFieldAdd[param1]);
               }
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
            textClickCheck = true;
            textFocusCheck = true;
            param1.currentTarget.selectable = true;
            param1.currentTarget.restrict = "^*";
            MenuClass.systemData["txtFieldmenu"]["_menu"] = int(param1.currentTarget.name);
            new Tab_SetClass();
            Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         if(MenuClass._nowHeaderName == "txt")
         {
            textClickCheck = false;
            Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         }
      }
      
      public static function focusIn(param1:FocusEvent) : void
      {
         if(MenuClass._nowHeaderName == "txt")
         {
            textFocusCheck = true;
         }
      }
      
      public static function focusOut(param1:FocusEvent) : void
      {
         if(MenuClass._nowHeaderName == "txt")
         {
            txtSaveFc(int(param1.currentTarget.name));
            param1.currentTarget.selectable = false;
            param1.currentTarget.restrict = "";
            textFocusCheck = false;
         }
      }
      
      public static function txtFieldScaleFc(param1:Number) : void
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
               MenuClass.txtFieldAdd[param1].embedFonts = false;
               txtFieldFc(param1,MenuClass.FontList[MenuClass.systemData["FontType" + param1]["_menu"]],"menu");
            }
         }
      }
      
      public static function txtFieldFc(param1:Number, param2:String, param3:String) : void
      {
         var _loc4_:int = MenuClass.systemData["txtFieldAdd" + param1]["_add0"];
         var _loc5_:String;
         var _loc6_:String = (_loc5_ = Tab_AddCostumOpen.openAr[_loc4_][0]).substring(0,13);
         var _loc7_:String = _loc5_.substring(13,14);
         var _loc8_:TextLayoutFormat = new TextLayoutFormat();
         var _loc9_:TextFlow = MenuClass.txtFieldAdd[param1].textFlow;
         new MeterPersent(50,1000,"txtFieldWidth",param1);
         if(MenuClass.systemData["txtFieldTateYoko" + param1]["_menu"] == 0)
         {
            MenuClass.txtFieldAdd[param1].blockProgression = BlockProgression.TB;
            MenuClass.txtFieldAdd[param1].width = MeterPersent.MeterPersentNum;
         }
         else
         {
            MenuClass.txtFieldAdd[param1].blockProgression = BlockProgression.RL;
            MenuClass.txtFieldAdd[param1].height = MeterPersent.MeterPersentNum;
         }
         _loc9_.hostFormat = _loc8_;
         _loc9_.flowComposer.updateAllControllers();
         format = new TextFormat();
         format.font = param2;
         if(MenuClass.systemData["txtFieldFormatAlign" + param1]["_menu"] == 0)
         {
            format.align = TextFormatAlign.LEFT;
         }
         else if(MenuClass.systemData["txtFieldFormatAlign" + param1]["_menu"] == 1)
         {
            format.align = TextFormatAlign.CENTER;
         }
         else if(MenuClass.systemData["txtFieldFormatAlign" + param1]["_menu"] == 2)
         {
            format.align = TextFormatAlign.RIGHT;
         }
         var _loc10_:Matrix = new Matrix();
         new MeterPersentRibon(1.5,-1.5,100,"txtFieldScaleB",param1);
         _loc10_.c = Math.tan(MeterPersentRibon.MeterPersentNum);
         MenuClass.txtFieldAdd[param1].transform.matrix = _loc10_;
         if(_loc6_ == "FreeHukidashi")
         {
            new MeterPersent(-520,1980,"txtFieldX",param1);
            MenuClass.txtFieldAdd[param1].x = MeterPersent.MeterPersentNum;
            new MeterPersent(725,-1275,"txtFieldY",param1);
            MenuClass.txtFieldAdd[param1].y = MeterPersent.MeterPersentNum;
         }
         else if(_loc5_ == "Background")
         {
            new MeterPersent(-100,900,"txtFieldX",param1);
            MenuClass.txtFieldAdd[param1].x = MeterPersent.MeterPersentNum;
            new MeterPersent(800,-200,"txtFieldY",param1);
            MenuClass.txtFieldAdd[param1].y = MeterPersent.MeterPersentNum;
         }
         if(_loc6_ == "FreeHukidashi")
         {
            new MeterPersent(2,6,"txtFieldBoxScaleX",param1);
         }
         else if(_loc5_ == "Background")
         {
            new MeterPersent(1,5,"txtFieldBoxScaleX",param1);
         }
         MenuClass.txtFieldAdd[param1].scaleX = MeterPersent.MeterPersentNum;
         if(MenuClass.systemData["LinktxtFieldBoxScale"]["_flag"] && MenuClass._nowTabName == "txtFieldBoxScaleX")
         {
            MenuClass.systemData["txtFieldBoxScaleY" + param1]["_meter"] = MenuClass.systemData["txtFieldBoxScaleX" + param1]["_meter"];
            MenuClass.txtFieldAdd[param1].scaleY = MenuClass.txtFieldAdd[param1].scaleX;
         }
         else
         {
            if(_loc6_ == "FreeHukidashi")
            {
               new MeterPersent(2,6,"txtFieldBoxScaleY",param1);
            }
            else if(_loc5_ == "Background")
            {
               new MeterPersent(1,5,"txtFieldBoxScaleY",param1);
            }
            MenuClass.txtFieldAdd[param1].scaleY = MeterPersent.MeterPersentNum;
         }
         new MeterPersent(0,360,"txtFieldRotation",param1);
         MenuClass.txtFieldAdd[param1].rotation = MeterPersent.MeterPersentNum;
         new MeterPersent(0,1,"txtFieldAlpha",param1);
         MenuClass.txtFieldAdd[param1].alpha = MeterPersent.MeterPersentNum;
         new MeterPersent(1,126,"txtFieldScale",param1);
         format.size = Math.floor(MeterPersent.MeterPersentNum);
         new MeterPersent(0,100,"txtFieldLeading",param1);
         format.leading = Math.floor(MeterPersent.MeterPersentNum);
         new MeterPersent(-20,180,"txtFieldLetter",param1);
         format.letterSpacing = Math.floor(MeterPersent.MeterPersentNum);
         MenuClass.txtFieldAdd[param1].defaultTextFormat = format;
         MenuClass.txtFieldAdd[param1].htmlText = MenuClass.systemData["FontType" + param1]["_txt"];
         new Chara_ColorClass(0,"FontType" + param1);
      }
   }
}
