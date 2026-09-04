package menu
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class Stage_ClickClass
   {
       
      
      private var enterCount:int = 1;
      
      public function Stage_ClickClass()
      {
         super();
         Main.openingBg.addEventListener(MouseEvent.MOUSE_DOWN,this.MouseDown);
         Main.openingBg.buttonMode = true;
         Main.stageVar.addEventListener(MouseEvent.MOUSE_DOWN,this.MouseDownMainWindow);
      }
      
      private function MouseDownMainWindow(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(MenuClass.menuSetFlag)
         {
            try
            {
               if(MenuClass.tabMenuAdd[Tab_MenuClass.tabName].menu0.btn0.currentFrame == 2)
               {
                  MenuClass.menuSetFlag = false;
                  MenuClass.tabMenuAdd[Tab_MenuClass.tabName].menu0.btn0.gotoAndStop(1);
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(MenuClass.tabMenuAdd[Tab_MenuClass.tabName].menu0.btn1.currentFrame == 2)
               {
                  MenuClass.menuSetFlag = false;
                  MenuClass.tabMenuAdd[Tab_MenuClass.tabName].menu0.btn1.gotoAndStop(1);
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(MenuClass.tabMenuAdd[Tab_MeterClass.tabName].meter0.box.btn0.currentFrame == 2)
               {
                  MenuClass.menuSetFlag = false;
                  MenuClass.tabMenuAdd[Tab_MeterClass.tabName].meter0.box.btn0.gotoAndStop(1);
               }
            }
            catch(myError:Error)
            {
            }
         }
         try
         {
            if(MenuClass.TimuLineSMenuFlag)
            {
               MenuClass.TimuLineSMenuFlag = false;
               Main.stageVar.removeChild(MenuClass.TimuLineSMenu);
               MenuClass.TimuLineSMenu = null;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            if(MenuClass.quickSaveTextFlag)
            {
               MenuClass.quickSaveTextFlag = false;
               Main.stageVar.removeChild(MenuClass.quickSaveText);
               MenuClass.quickSaveText = null;
            }
         }
         catch(myError:Error)
         {
         }
         MenuClass.clickCheck = true;
         if(MenuClass._nowHeaderName == "Loadmenu" && !Tab_URLTextClass.urlTextClickCheck)
         {
            Tab_URLTextClass.urlTextFocusCheck = false;
            try
            {
               MenuClass.tabMenuAdd["URLText"].txt.selectable = false;
            }
            catch(myError:Error)
            {
            }
         }
         if(MenuClass._nowHeaderName == "CharaLoad" && !Tab_URLTextClass.urlTextClickCheck)
         {
            Tab_URLTextClass.urlTextFocusCheck = false;
            try
            {
               MenuClass.tabMenuAdd["CharaURLText"].txt.selectable = false;
            }
            catch(myError:Error)
            {
            }
         }
         if(MenuClass._nowHeaderName == "Tool" && !Tab_CameraClass.urlTextClickCheck)
         {
            Tab_CameraClass.urlTextFocusCheck = false;
            try
            {
               _loc2_ = 0;
               while(_loc2_ <= 3)
               {
                  Tab_CameraClass.textAdd[_loc2_].selectable = false;
                  Tab_CameraClass.textAdd[_loc2_].restrict = "";
                  _loc2_++;
               }
            }
            catch(myError:Error)
            {
            }
         }
         try
         {
            if(MenuClass.ColorOpenCheck)
            {
               Tab_ColorBtnSet2.deleteFc();
            }
         }
         catch(myError:Error)
         {
         }
         if(MenuClass._nowHeaderName == "txt" && !SystemText2.textClickCheck)
         {
            SystemText2.textFocusCheck = false;
            _loc3_ = MenuClass.systemData["txtFieldmenu"]["_visible"].length - 1;
            _loc2_ = 0;
            while(_loc2_ <= _loc3_)
            {
               try
               {
                  MenuClass.txtFieldAdd[_loc2_].selectable = false;
                  MenuClass.txtFieldAdd[_loc2_].restrict = "";
               }
               catch(myError:Error)
               {
               }
               _loc2_++;
            }
         }
      }
      
      private function MouseDown(param1:MouseEvent) : void
      {
         if(MenuClass.StoryTimeLineData.length - 1 > MenuClass.systemData["Story_Page"]["_menu"] && MenuClass.StoryMode && MenuClass._nowHeaderName == null && this.enterCount == 1 && MenuClass.urlLoadCompCheck)
         {
            this.enterCount = 0;
            Main.openingBg.addEventListener(Event.ENTER_FRAME,this.EnterFrame);
            MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
            MenuClass.systemData["Story_Page"]["_menu"] += 1;
            new Tab_SetClass();
            new Tab_IEInOut("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
         }
      }
      
      private function EnterFrame(param1:Event) : void
      {
         ++this.enterCount;
         if(this.enterCount == 1)
         {
            Main.openingBg.removeEventListener(Event.ENTER_FRAME,this.EnterFrame);
         }
      }
   }
}
