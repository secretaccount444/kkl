package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import parameter.Tab_IEData1;
   
   public class Tab_IE_Export
   {
      
      public static var targetMC:MovieClip;
      
      public static var menunameSystemNum:int;
       
      
      public function Tab_IE_Export()
      {
         super();
      }
      
      public static function setFc() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         MenuClass._nowWindowName = "tabExportWindow";
         MenuClass.tabMenuAdd["tabExportWindow"] = new Menu_Load.TabExportClass();
         Main.stageVar.addChild(MenuClass.tabMenuAdd["tabExportWindow"]);
         targetMC = MenuClass.tabMenuAdd["tabExportWindow"];
         targetMC.x = 8;

         if (Tab_IEData1.IEGroup.length > 42) {
            targetMC.myTa.scaleY = 0.92;
            targetMC.getChildAt(5).scaleY = (48001.0 / 65536.0) * 0.925;
         }

         targetMC.myTa.editable = false;
         if(!MenuClass.hederSwitchCheck)
         {
            MenuClass.tabMenuAdd["tabExportWindow"].y = 65 + Main._stageResizeY * -1;
         }
         else
         {
            MenuClass.tabMenuAdd["tabExportWindow"].y = 0 + Main._stageResizeY;
         }
         new ColorChangeClass(targetMC.closeBtn.bg,"37241A");
         targetMC.closeBtn.addEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
         targetMC.closeBtn.addEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
         targetMC.closeBtn.addEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
         targetMC.closeBtn.buttonMode = true;
         MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.select.addEventListener(MouseEvent.MOUSE_DOWN,selectMouseDown);
         MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.select.buttonMode = true;
         MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.all.addEventListener(MouseEvent.MOUSE_DOWN,allMouseDown);
         MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.all.buttonMode = true;
         MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.selectPlus.visible = false;
         if(MenuClass._nowTargetMode == "All")
         {
            MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.select.gotoAndStop(2);
            MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.all.gotoAndStop(1);
         }
         else
         {
            MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.select.gotoAndStop(1);
            MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.all.gotoAndStop(2);
         }
         Main.stageVar.addEventListener(Event.ENTER_FRAME,Enter);
      }
      
      public static function deleteFc() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         try
         {
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,Enter);
            targetMC = MenuClass.tabMenuAdd["tabExportWindow"];
            targetMC.closeBtn.removeEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
            targetMC.closeBtn.removeEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
            targetMC.closeBtn.removeEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
            try
            {
               _loc2_ = Tab_IEData1.IEGroup.length;
               _loc1_ = 0;
               while(_loc1_ < _loc2_)
               {
                  MenuClass.exportCheckAdd[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
                  MenuClass.tabMenuAdd["tabExportWindow"].removeChild(MenuClass.exportCheckAdd[_loc1_]);
                  MenuClass.exportCheckAdd[_loc1_] = null;
                  _loc1_++;
               }
            }
            catch(myError:Error)
            {
            }
            MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.select.removeEventListener(MouseEvent.MOUSE_DOWN,selectMouseDown);
            MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.all.removeEventListener(MouseEvent.MOUSE_DOWN,allMouseDown);
            try
            {
               MenuClass.tabMenuAdd["tabExportWindow"].removeChild(MenuClass.TxtCountArea);
               MenuClass.TxtCountArea = null;
            }
            catch(myError:Error)
            {
            }
            Main.stageVar.removeChild(MenuClass.tabMenuAdd["tabExportWindow"]);
            MenuClass.tabMenuAdd["tabExportWindow"] = null;
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

         if(MenuClass._nowWindowName == "tabExportWindow")
         {
            _loc4_ = 0;
            _loc3_ = MenuClass.MY_MENUNAME.length;
            _loc2_ = 0;
            while(_loc2_ < _loc3_)
            {
               if(MenuClass.MY_MENUNAME[_loc2_][5] == "system")
               {
                  menunameSystemNum = _loc2_ - 4;
                  break;
               }
               _loc2_++;
            }

            _loc3_ = Tab_IEData1.IEGroup.length;
            _loc2_ = 0;

            var buttonsPerRow = 21;
            var totalRows = Math.ceil(_loc3_ / buttonsPerRow);
            var baseX = 25;
            var baseY = 510 - (36 * totalRows);

            MenuClass.TxtCountArea = new Menu_Load.txtCountAreaClass();
            MenuClass.tabMenuAdd["tabExportWindow"].addChild(MenuClass.TxtCountArea);
            MenuClass.TxtCountArea.x = 195;
            MenuClass.TxtCountArea.y = baseY - 22;

            while(_loc2_ < _loc3_)
            {
               _loc5_ = new Menu_Load.TabRandomBoxClass();
               MenuClass.tabMenuAdd["tabExportWindow"].addChild(_loc5_);
               MenuClass.exportCheckAdd[_loc2_] = _loc5_;

               var row = Math.floor(_loc2_ / buttonsPerRow);
               var col = _loc2_ % buttonsPerRow;

               MenuClass.exportCheckAdd[_loc2_].x = baseX + (34 * col);
               MenuClass.exportCheckAdd[_loc2_].y = baseY + (36 * row);
               MenuClass.exportCheckAdd[_loc2_].Num = _loc2_;

               _loc6_ = MenuClass.MY_MENUNAME[_loc2_ + 4][0];
               _loc7_ = MenuClass.MY_MENUNAME[_loc2_ + 4][1];
               if(_loc6_ == "Story")
               {
                  _loc6_ = "Tool";
                  _loc7_ = "666666";
               }
               else if (_loc6_ == "ArmHeight")
               {
                  _loc6_ = "FreeHandScale";
               }
               else if (_loc6_ == "LegHeight")
               {
                  _loc6_ = "Ashi2";
               }

               MenuClass.exportCheckAdd[_loc2_].icon.icon.gotoAndStop(_loc6_);
               if(MenuClass.exportCheck[_loc2_])
               {
                  new ColorChangeClass(MenuClass.exportCheckAdd[_loc2_].icon.icon,"ffffff");
                  new ColorChangeClass(MenuClass.exportCheckAdd[_loc2_].bg,_loc7_);
               }
               else
               {
                  new ColorChangeClass(MenuClass.exportCheckAdd[_loc2_].icon.icon,"CCCCCC");
                  new ColorChangeClass(MenuClass.exportCheckAdd[_loc2_].bg,"050505");
               }
               MenuClass.exportCheckAdd[_loc2_].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
               MenuClass.exportCheckAdd[_loc2_].Num2 = _loc2_ + 4;
               MenuClass.exportCheckAdd[_loc2_].buttonMode = true;
               _loc2_++;
            }
            if(MenuClass._nowTargetMode == "All")
            {
               MenuClass.exportCheckAdd[30].alpha = 1;
               MenuClass.exportCheckAdd[30].buttonMode = true;
               MenuClass.exportCheckAdd[31].alpha = 1;
               MenuClass.exportCheckAdd[31].buttonMode = true;
               MenuClass.exportCheckAdd[32].alpha = 1;
               MenuClass.exportCheckAdd[32].buttonMode = true;
               MenuClass.exportCheckAdd[33].alpha = 1;
               MenuClass.exportCheckAdd[33].buttonMode = true;
               MenuClass.exportCheckAdd[34].alpha = 1;
               MenuClass.exportCheckAdd[34].buttonMode = true;
               MenuClass.exportCheckAdd[35].alpha = 1;
               MenuClass.exportCheckAdd[35].buttonMode = true;
               MenuClass.exportCheckAdd[36].alpha = 1;
               MenuClass.exportCheckAdd[36].buttonMode = true;
               MenuClass.exportCheckAdd[37].alpha = 1;
               MenuClass.exportCheckAdd[37].buttonMode = true;
               MenuClass.exportCheckAdd[38].alpha = 1;
               MenuClass.exportCheckAdd[38].buttonMode = true;
               MenuClass.exportCheckAdd[39].alpha = 1;
               MenuClass.exportCheckAdd[39].buttonMode = true;
               MenuClass.exportCheckAdd[40].alpha = 1;
               MenuClass.exportCheckAdd[40].buttonMode = true;
            }
            else
            {
               MenuClass.exportCheckAdd[30].alpha = 0.2;
               MenuClass.exportCheckAdd[30].buttonMode = false;
               MenuClass.exportCheckAdd[31].alpha = 0.2;
               MenuClass.exportCheckAdd[31].buttonMode = false;
               MenuClass.exportCheckAdd[32].alpha = 0.2;
               MenuClass.exportCheckAdd[32].buttonMode = false;
               MenuClass.exportCheckAdd[33].alpha = 0.2;
               MenuClass.exportCheckAdd[33].buttonMode = false;
               MenuClass.exportCheckAdd[34].alpha = 0.2;
               MenuClass.exportCheckAdd[34].buttonMode = false;
               MenuClass.exportCheckAdd[35].alpha = 0.2;
               MenuClass.exportCheckAdd[35].buttonMode = false;
               MenuClass.exportCheckAdd[36].alpha = 0.2;
               MenuClass.exportCheckAdd[36].buttonMode = false;
               MenuClass.exportCheckAdd[37].alpha = 0.2;
               MenuClass.exportCheckAdd[37].buttonMode = false;
               MenuClass.exportCheckAdd[38].alpha = 0.2;
               MenuClass.exportCheckAdd[38].buttonMode = false;
               MenuClass.exportCheckAdd[39].alpha = 0.2;
               MenuClass.exportCheckAdd[39].buttonMode = false;
               MenuClass.exportCheckAdd[40].alpha = 0.2;
               MenuClass.exportCheckAdd[40].buttonMode = false;
            }
            new Tab_IESet("export");
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,Enter);
         }
         else
         {
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,Enter);
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:int = param1.currentTarget.Num;
         var _loc3_:int = param1.currentTarget.Num2;
         var _loc4_:int = Tab_IEData1.IEGroup.length;
         if(MenuClass._nowTargetMode == "All" || _loc2_ < menunameSystemNum)
         {
            if(MenuClass.exportCheck[_loc2_])
            {
               if(MenuClass.spaceKeyPress)
               {
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_)
                  {
                     if(MenuClass._nowTargetMode == "All" || _loc5_ < menunameSystemNum)
                     {
                        MenuClass.exportCheck[_loc5_] = false;
                        new ColorChangeClass(MenuClass.exportCheckAdd[_loc5_].icon.icon,"CCCCCC");
                        new ColorChangeClass(MenuClass.exportCheckAdd[_loc5_].bg,"050505");
                     }
                     _loc5_++;
                  }
               }
               else
               {
                  MenuClass.exportCheck[_loc2_] = false;
                  new ColorChangeClass(MenuClass.exportCheckAdd[_loc2_].icon.icon,"CCCCCC");
                  new ColorChangeClass(MenuClass.exportCheckAdd[_loc2_].bg,"050505");
               }
            }
            else if(MenuClass.spaceKeyPress)
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  if(MenuClass._nowTargetMode == "All" || _loc5_ < menunameSystemNum)
                  {
                     if(MenuClass.MY_MENUNAME[_loc5_ + 4][4] || !Main.r18Check)
                     {
                        MenuClass.exportCheck[_loc5_] = true;
                     }
                     new ColorChangeClass(MenuClass.exportCheckAdd[_loc5_].icon.icon,"ffffff");
                     _loc7_ = MenuClass.MY_MENUNAME[_loc5_ + 4][0];
                     _loc6_ = MenuClass.MY_MENUNAME[_loc5_ + 4][1];
                     if(_loc7_ == "Story")
                     {
                        _loc6_ = "666666";
                     }
                     new ColorChangeClass(MenuClass.exportCheckAdd[_loc5_].bg,_loc6_);
                  }
                  _loc5_++;
               }
            }
            else
            {
               MenuClass.exportCheck[_loc2_] = true;
               new ColorChangeClass(MenuClass.exportCheckAdd[_loc2_].icon.icon,"ffffff");
               _loc7_ = MenuClass.MY_MENUNAME[_loc3_][0];
               _loc6_ = MenuClass.MY_MENUNAME[_loc3_][1];
               if(_loc7_ == "Story")
               {
                  _loc6_ = "666666";
               }
               new ColorChangeClass(MenuClass.exportCheckAdd[_loc2_].bg,_loc6_);
            }
            new Tab_IESet("export");
         }
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         MenuClass._nowWindowName = null;
         Tab_IE_Export.deleteFc();
         MenuClass.tabMenuAdd["TabImportExport"].ImportExport.exBtn.gotoAndStop(1);
         MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.alpha = 1;
         MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.buttonMode = true;
         new Tab_SetClass();
         param1.currentTarget.gotoAndStop(1);
      }
      
      public static function closeMouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
      
      public static function closeMouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
      
      public static function selectMouseDown(param1:MouseEvent) : void
      {
         if(MenuClass._nowTargetMode == "All")
         {
            MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.select.gotoAndStop(1);
            MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.all.gotoAndStop(2);
            MenuClass._nowTargetMode = "Select";
            new Chara_SelectClass("open");
            new Tab_IESet("export");
            MenuClass.exportCheckAdd[30].alpha = 0.2;
            MenuClass.exportCheckAdd[30].buttonMode = false;
            MenuClass.exportCheckAdd[31].alpha = 0.2;
            MenuClass.exportCheckAdd[31].buttonMode = false;
            MenuClass.exportCheckAdd[32].alpha = 0.2;
            MenuClass.exportCheckAdd[32].buttonMode = false;
            MenuClass.exportCheckAdd[33].alpha = 0.2;
            MenuClass.exportCheckAdd[33].buttonMode = false;
            MenuClass.exportCheckAdd[34].alpha = 0.2;
            MenuClass.exportCheckAdd[34].buttonMode = false;
            MenuClass.exportCheckAdd[35].alpha = 0.2;
            MenuClass.exportCheckAdd[35].buttonMode = false;
            MenuClass.exportCheckAdd[36].alpha = 0.2;
            MenuClass.exportCheckAdd[36].buttonMode = false;
            MenuClass.exportCheckAdd[37].alpha = 0.2;
            MenuClass.exportCheckAdd[37].buttonMode = false;
            MenuClass.exportCheckAdd[38].alpha = 0.2;
            MenuClass.exportCheckAdd[38].buttonMode = false;
            MenuClass.exportCheckAdd[39].alpha = 0.2;
            MenuClass.exportCheckAdd[39].buttonMode = false;
            MenuClass.exportCheckAdd[40].alpha = 0.2;
            MenuClass.exportCheckAdd[40].buttonMode = false;
         }
      }
      
      public static function allMouseDown(param1:MouseEvent) : void
      {
         if(MenuClass._nowTargetMode == "Select" || MenuClass._nowTargetMode == "SelectPlus")
         {
            MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.select.gotoAndStop(2);
            MenuClass.tabMenuAdd["tabExportWindow"].selectTarget.all.gotoAndStop(1);
            MenuClass._nowTargetMode = "All";
            new Chara_SelectClass("open");
            new Tab_IESet("export");
            MenuClass.exportCheckAdd[30].alpha = 1;
            MenuClass.exportCheckAdd[30].buttonMode = true;
            MenuClass.exportCheckAdd[31].alpha = 1;
            MenuClass.exportCheckAdd[31].buttonMode = true;
            MenuClass.exportCheckAdd[32].alpha = 1;
            MenuClass.exportCheckAdd[32].buttonMode = true;
            MenuClass.exportCheckAdd[33].alpha = 1;
            MenuClass.exportCheckAdd[33].buttonMode = true;
            MenuClass.exportCheckAdd[34].alpha = 1;
            MenuClass.exportCheckAdd[34].buttonMode = true;
            MenuClass.exportCheckAdd[35].alpha = 1;
            MenuClass.exportCheckAdd[35].buttonMode = true;
            MenuClass.exportCheckAdd[36].alpha = 1;
            MenuClass.exportCheckAdd[36].buttonMode = true;
            MenuClass.exportCheckAdd[37].alpha = 1;
            MenuClass.exportCheckAdd[37].buttonMode = true;
            MenuClass.exportCheckAdd[38].alpha = 1;
            MenuClass.exportCheckAdd[38].buttonMode = true;
            MenuClass.exportCheckAdd[39].alpha = 1;
            MenuClass.exportCheckAdd[39].buttonMode = true;
            MenuClass.exportCheckAdd[40].alpha = 1;
            MenuClass.exportCheckAdd[40].buttonMode = true;
         }
      }
   }
}
