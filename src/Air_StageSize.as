package
{
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import menu.Tab_ColorBtnSet2;
   import menu.Tab_RandomCostumOpen;
   import menu.Tab_SaveClass;
   import menu.Tab_headerSwitchSet;
   
   public class Air_StageSize
   {
      
      public static var modeCheck:int = 0;
       
      
      public function Air_StageSize()
      {
         super();
         Main.stageVar.addEventListener(Event.RESIZE,resizeDisplay);
         Main.stageVar.addEventListener(Event.ENTER_FRAME,Enter);
      }
      
      public static function Enter(param1:Event) : void
      {
         if(MenuClass.systemData["ViewMode"]["_check"])
         {
            if(modeCheck == 0)
            {
               Main.stageVar.scaleMode = StageScaleMode.SHOW_ALL;
               Main._stageResizeY = 0;
               dataFc();
               modeCheck = 1;
            }
         }
         else if(modeCheck == 1)
         {
            Main.stageVar.scaleMode = StageScaleMode.NO_SCALE;
            modeCheck = 0;
         }
      }
      
      public static function resizeDisplay(param1:Event) : void
      {
         Main._stageResizeX = (Main.stageVar.stageWidth - 800) / 2;
         Main._stageResizeY = (Main.stageVar.stageHeight - 600) / 2;
         Main._stageWidth = Main.stageVar.stageWidth;
         Main._stageHeight = Main.stageVar.stageHeight;
         dataFc();
      }
      
      public static function dataFc() : void
      {
         try
         {
            new Tab_headerSwitchSet();
         }
         catch(myError:Error)
         {
         }
         if(MenuClass._nowHeaderName == "SystemOption")
         {
            if(!MenuClass.RamdomOpenCheck)
            {
               Tab_RandomCostumOpen.toolDeleteFc();
            }
         }
         else if(!MenuClass.RamdomOpenCheck)
         {
            Tab_RandomCostumOpen.deleteFc(MenuClass._nowHeaderName);
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
         try
         {
            if(MenuClass.hederSwitchCheck)
            {
               Air_HtmlLoader.closeHtmlBtn.y = 472 + Main._stageResizeY;
            }
            else
            {
               Air_HtmlLoader.closeHtmlBtn.y = 56 + Main._stageResizeY * -1;
            }
            if(MenuClass.hederSwitchCheck)
            {
               Air_HtmlLoader.htmlLoader.y = 466 + Main._stageResizeY;
            }
            else
            {
               Air_HtmlLoader.htmlLoader.y = 50 + Main._stageResizeY * -1;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            if(!MenuClass.hederSwitchCheck)
            {
               MenuClass.quickSaveText.y = 575 + Main._stageResizeY;
            }
            else
            {
               MenuClass.quickSaveText.y = 0 + Main._stageResizeY * -1;
            }
         }
         catch(myError:Error)
         {
         }
         if(MenuClass._nowHeaderName == "Save" || MenuClass._nowHeaderName == "EasySave")
         {
            Tab_SaveClass.TabSaveViewDeleteFc();
            try
            {
               if(!MenuClass.hederSwitchCheck)
               {
                  MenuClass.tabMenuAdd["tabExportWindow"].y = 65 + Main._stageResizeY * -1;
               }
               else
               {
                  MenuClass.tabMenuAdd["tabExportWindow"].y = 0 + Main._stageResizeY;
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(!MenuClass.hederSwitchCheck)
               {
                  MenuClass.tabMenuAdd["tabImportWindow"].y = 65 + Main._stageResizeY * -1;
               }
               else
               {
                  MenuClass.tabMenuAdd["tabImportWindow"].y = 0 + Main._stageResizeY;
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(MenuClass.hederSwitchCheck)
               {
                  MenuClass.tabMenuAdd["Save"].y = 4 + Main._stageResizeY;
               }
               else
               {
                  MenuClass.tabMenuAdd["Save"].y = 31 + Main._stageResizeY * -1;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName == "Story")
         {
            try
            {
               if(MenuClass.hederSwitchCheck)
               {
                  MenuClass.tabMenuAdd["StorySaveWindow"].y = 4 + Main._stageResizeY;
               }
               else
               {
                  MenuClass.tabMenuAdd["StorySaveWindow"].y = 31 + Main._stageResizeY * -1;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName == "SystemOption")
         {
            try
            {
               if(MenuClass.hederSwitchCheck)
               {
                  MenuClass.tabMenuAdd["ShortcutWindow"].y = 4 + Main._stageResizeY;
               }
               else
               {
                  MenuClass.tabMenuAdd["ShortcutWindow"].y = 31 + Main._stageResizeY * -1;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName == "Loadmenu" || MenuClass._nowHeaderName == "CharaLoad")
         {
            try
            {
               if(MenuClass.hederSwitchCheck)
               {
                  MenuClass.tabMenuAdd["URLTextWindow"].y = 4 + Main._stageResizeY;
               }
               else
               {
                  MenuClass.tabMenuAdd["URLTextWindow"].y = 31 + Main._stageResizeY * -1;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName == "StoryTool")
         {
            try
            {
               if(MenuClass.hederSwitchCheck)
               {
                  MenuClass.tabMenuAdd["StoryToolSaveWindow"].y = 4 + Main._stageResizeY;
               }
               else
               {
                  MenuClass.tabMenuAdd["StoryToolSaveWindow"].y = 31 + Main._stageResizeY * -1;
               }
            }
            catch(myError:Error)
            {
            }
         }
      }
   }
}
