package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import parameter.Tab_IEData1;
   
   public class Tab_IE_Import
   {
      
      public static var targetMC:MovieClip;
      
      public static var menunameSystemNum:int;
      
      public static var textFocusCheck:Boolean = false;
       
      
      public function Tab_IE_Import()
      {
         super();
      }
      
      public static function setFc() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc2_ = Tab_IEData1.IEGroup.length;
         MenuClass._nowWindowName = "tabImportWindow";
         MenuClass.tabMenuAdd["tabImportWindow"] = new Menu_Load.TabImportClass();
         Main.stageVar.addChild(MenuClass.tabMenuAdd["tabImportWindow"]);
         targetMC = MenuClass.tabMenuAdd["tabImportWindow"];
         targetMC.x = 8;
         if(!MenuClass.hederSwitchCheck)
         {
            MenuClass.tabMenuAdd["tabImportWindow"].y = 65 + Main._stageResizeY * -1;
         }
         else
         {
            MenuClass.tabMenuAdd["tabImportWindow"].y = 0 + Main._stageResizeY;
         }
         targetMC.myTa.editable = true;
         targetMC.importBtn.addEventListener(MouseEvent.MOUSE_DOWN,ImportBtnClick);
         targetMC.importBtn.buttonMode = true;
         new ColorChangeClass(targetMC.closeBtn.bg,"37241A");
         targetMC.closeBtn.addEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
         targetMC.closeBtn.addEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
         targetMC.closeBtn.addEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
         targetMC.closeBtn.buttonMode = true;
         targetMC.myTa.addEventListener(FocusEvent.FOCUS_IN,focusIn);
         targetMC.myTa.addEventListener(FocusEvent.FOCUS_OUT,focusOut);
         Main.stageVar.addEventListener(Event.ENTER_FRAME,Enter);
      }
      
      public static function deleteFc() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         try
         {
            _loc2_ = Tab_IEData1.IEGroup.length;
            targetMC = MenuClass.tabMenuAdd["tabImportWindow"];
            targetMC.importBtn.removeEventListener(MouseEvent.MOUSE_DOWN,ImportBtnClick);
            targetMC.closeBtn.removeEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
            targetMC.closeBtn.removeEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
            targetMC.closeBtn.removeEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
            try
            {
               _loc1_ = 0;
               while(_loc1_ < _loc2_)
               {
                  MenuClass.importCheckAdd[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
                  targetMC.removeChild(MenuClass.importCheckAdd[_loc1_]);
                  MenuClass.importCheckAdd[_loc1_] = null;
                  _loc1_++;
               }
            }
            catch(myError:Error)
            {
            }
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,Enter);
            targetMC.myTa.removeEventListener(FocusEvent.FOCUS_IN,focusIn);
            targetMC.myTa.removeEventListener(FocusEvent.FOCUS_OUT,focusOut);
            Main.stageVar.removeChild(MenuClass.tabMenuAdd["tabImportWindow"]);
            textFocusCheck = false;
            MenuClass.tabMenuAdd["tabImportWindow"] = null;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function Enter(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(MenuClass._nowWindowName == "tabImportWindow")
         {
            _loc3_ = Tab_IEData1.IEGroup.length;
            _loc4_ = 0;
            _loc2_ = 0;
            while(_loc2_ < _loc3_)
            {
               _loc5_ = new Menu_Load.TabRandomBoxClass();
               targetMC.addChild(_loc5_);
               MenuClass.importCheckAdd[_loc2_] = _loc5_;
               if(!MenuClass.MY_MENUNAME[_loc2_ + 4][4] && Main.r18Check)
               {
                  _loc4_++;
                  MenuClass.importCheckAdd[_loc2_].visible = false;
               }
               if(_loc2_ < 21)
               {
                  MenuClass.importCheckAdd[_loc2_].x = 34 * (_loc2_ - _loc4_) + 25;
                  MenuClass.importCheckAdd[_loc2_].y = 438;
               }
               else
               {
                  MenuClass.importCheckAdd[_loc2_].x = 34 * (_loc2_ - 21) + 25;
                  MenuClass.importCheckAdd[_loc2_].y = 474;
               }
               MenuClass.importCheckAdd[_loc2_].Num = _loc2_;
               _loc6_ = MenuClass.MY_MENUNAME[_loc2_ + 4][0];
               _loc7_ = MenuClass.MY_MENUNAME[_loc2_ + 4][1];
               if(_loc6_ == "Story")
               {
                  _loc6_ = "Tool";
                  _loc7_ = "666666";
               }
               MenuClass.importCheckAdd[_loc2_].icon.icon.gotoAndStop(_loc6_);
               if(MenuClass.importCheck[_loc2_])
               {
                  new ColorChangeClass(MenuClass.importCheckAdd[_loc2_].icon.icon,"ffffff");
                  new ColorChangeClass(MenuClass.importCheckAdd[_loc2_].bg,_loc7_);
               }
               else
               {
                  new ColorChangeClass(MenuClass.importCheckAdd[_loc2_].icon.icon,"CCCCCC");
                  new ColorChangeClass(MenuClass.importCheckAdd[_loc2_].bg,"050505");
               }
               MenuClass.importCheckAdd[_loc2_].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
               MenuClass.importCheckAdd[_loc2_].Num2 = _loc2_ + 4;
               MenuClass.importCheckAdd[_loc2_].buttonMode = true;
               _loc2_++;
            }
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,Enter);
         }
         else
         {
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,Enter);
         }
      }
      
      public static function focusIn(param1:FocusEvent) : void
      {
         textFocusCheck = true;
      }
      
      public static function focusOut(param1:FocusEvent) : void
      {
         textFocusCheck = false;
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:int = param1.currentTarget.Num;
         var _loc3_:int = param1.currentTarget.Num2;
         var _loc4_:int = Tab_IEData1.IEGroup.length - 1;
         if(MenuClass.importCheck[_loc2_])
         {
            if(MenuClass.spaceKeyPress)
            {
               _loc5_ = 0;
               while(_loc5_ <= _loc4_)
               {
                  MenuClass.importCheck[_loc5_] = false;
                  new ColorChangeClass(MenuClass.importCheckAdd[_loc5_].icon.icon,"CCCCCC");
                  new ColorChangeClass(MenuClass.importCheckAdd[_loc5_].bg,"050505");
                  _loc5_++;
               }
            }
            else
            {
               MenuClass.importCheck[_loc2_] = false;
               new ColorChangeClass(MenuClass.importCheckAdd[_loc2_].icon.icon,"CCCCCC");
               new ColorChangeClass(MenuClass.importCheckAdd[_loc2_].bg,"050505");
            }
         }
         else if(MenuClass.spaceKeyPress)
         {
            _loc5_ = 0;
            while(_loc5_ <= _loc4_)
            {
               if(MenuClass.MY_MENUNAME[_loc5_ + 4][4] || !Main.r18Check)
               {
                  MenuClass.importCheck[_loc5_] = true;
               }
               new ColorChangeClass(MenuClass.importCheckAdd[_loc5_].icon.icon,"ffffff");
               _loc7_ = MenuClass.MY_MENUNAME[_loc5_ + 4][0];
               _loc6_ = MenuClass.MY_MENUNAME[_loc5_ + 4][1];
               if(_loc7_ == "Story")
               {
                  _loc6_ = "666666";
               }
               new ColorChangeClass(MenuClass.importCheckAdd[_loc5_].bg,_loc6_);
               _loc5_++;
            }
         }
         else
         {
            MenuClass.importCheck[_loc2_] = true;
            new ColorChangeClass(MenuClass.importCheckAdd[_loc2_].icon.icon,"ffffff");
            _loc7_ = MenuClass.MY_MENUNAME[_loc3_][0];
            _loc6_ = MenuClass.MY_MENUNAME[_loc3_][1];
            if(_loc7_ == "Story")
            {
               _loc6_ = "666666";
            }
            new ColorChangeClass(MenuClass.importCheckAdd[_loc2_].bg,_loc6_);
         }
      }
      
      public static function ImportBtnClick(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         var _loc4_:int = 0;
         new Stage_MoveCheckClass();
         var _loc3_:Number = targetMC.myTa.text.indexOf("]/#");
         if(_loc3_ == -1)
         {
            _loc2_ = targetMC.myTa.text.split("***");
            if((_loc4_ = _loc2_.length - 1) > 1)
            {
               new Tab_StoryLoad(_loc2_,"IN");
            }
            else
            {
               new Tab_IEInOut("IN",targetMC.myTa.text,MenuClass._nowCharaNum);
               new Tab_SetClass();
            }
         }
         else
         {
            _loc2_ = targetMC.myTa.text.split("]/#");
            new Tab_StoryLoad2(_loc2_,"textIN");
         }
         MenuClass._nowWindowName = null;
         Tab_IE_Import.deleteFc();
         MenuClass.tabMenuAdd["TabImportExport"].ImportExport.imBtn.gotoAndStop(1);
         MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.alpha = 1;
         MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.buttonMode = true;
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         MenuClass._nowWindowName = null;
         Tab_IE_Import.deleteFc();
         MenuClass.tabMenuAdd["TabImportExport"].ImportExport.imBtn.gotoAndStop(1);
         param1.currentTarget.gotoAndStop(1);
         MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.alpha = 1;
         MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.buttonMode = true;
      }
      
      public static function closeMouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
      
      public static function closeMouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
   }
}
