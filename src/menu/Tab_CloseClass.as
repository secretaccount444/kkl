package menu
{
   import flash.text.TextFieldType;
   
   public class Tab_CloseClass
   {
       
      
      private var headerName:String;
      
      public function Tab_CloseClass()
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         super();
         this.headerName = MenuClass.headerAdd[MenuClass._nowHeaderName].name;
         for(_loc1_ in MenuClass.headerAdd)
         {
            if(_loc1_ != "null")
            {
               if(MenuClass.HideIconCheck)
               {
                  MenuClass.headerAdd[_loc1_].alpha = 0;
               }
               new ColorFilterClass(MenuClass.headerAdd[_loc1_],false,-0.3,"header");
            }
         }
         if(MenuClass.HideIconCheck)
         {
            HeaderbtnClass.headerMenu.alpha = 0;
         }
         if(MenuClass._nowHeaderName == "Character")
         {
            new Tab_CloseSelectMove();
         }
         new Tab_ClassDelete(MenuClass._nowHeaderName);
         if(MenuClass._nowHeaderName == "Save" || MenuClass._nowHeaderName == "EasySave")
         {
            MenuClass._nowWindowName = null;
            Tab_IE_Import.deleteFc();
            Tab_IE_Export.deleteFc();
            Tab_SaveClass.deleteFc("Save","Save");
            Tab_SaveClass.TabSaveViewDeleteFc();
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
         }
         else if(MenuClass._nowHeaderName == "Story")
         {
            MenuClass._nowWindowName = null;
            Tab_SaveClass.deleteFc("Story","StorySaveWindow");
            Tab_SaveClass.TabSaveViewDeleteFc();
         }
         else if(MenuClass._nowHeaderName == "SystemOption")
         {
            try
            {
               MenuClass._nowWindowName = null;
               Tab_ShortcutClass.deleteFc();
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowWindowName == "URLTextWindow")
         {
            try
            {
               MenuClass._nowWindowName = null;
               Tab_URLTextWindow.deleteFc();
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName == "Tool")
         {
            try
            {
               MenuClass._nowWindowName = null;
               Tab_CameraClass.deleteFc("CameraKirinuki");
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName == "StoryTool")
         {
            MenuClass._nowWindowName = null;
            Tab_SaveClass.deleteFc("StoryTool","StoryToolSaveWindow");
            Tab_SaveClass.TabSaveViewDeleteFc();
         }
         try
         {
            if(this.headerName == "SystemOption")
            {
               Tab_RandomCostumOpen.toolDeleteFc();
            }
            else
            {
               Tab_RandomCostumOpen.deleteFc(this.headerName);
            }
         }
         catch(myError:Error)
         {
         }
         if(MenuClass.hederSwitchCheck)
         {
            MenuClass.headerAdd[MenuClass._nowHeaderName].gotoAndStop(1);
         }
         else
         {
            MenuClass.headerAdd[MenuClass._nowHeaderName].gotoAndStop(3);
         }
         MenuClass.headerAdd[MenuClass._nowHeaderName].bg.shadow1.visible = true;
         new HeaderbtnShadow(MenuClass._nowHeaderName,false);
         var _loc3_:int = MenuClass.systemData["txtFieldmenu"]["_visible"].length - 1;
         _loc2_ = 0;
         while(_loc2_ <= _loc3_)
         {
            if(MenuClass._nowHeaderName == "txt")
            {
               MenuClass.systemData["FontType" + _loc2_]["_font"] = MenuClass.FontList[MenuClass.systemData["FontType" + _loc2_]["_menu"]];
               try
               {
                  MenuClass.systemData["FontType" + _loc2_]["_txt"] = MenuClass.txtFieldAdd[_loc2_].text;
                  MenuClass.txtFieldAdd[_loc2_].selectable = false;
                  MenuClass.txtFieldAdd[_loc2_].border = false;
                  MenuClass.txtFieldAdd[_loc2_].type = TextFieldType.DYNAMIC;
                  MenuClass.txtFieldAdd[_loc2_].mouseChildren = false;
                  MenuClass.txtFieldAdd[_loc2_].mouseEnabled = false;
               }
               catch(myError:Error)
               {
               }
               Main.stageVar.focus = Main.mainWindow;
            }
            _loc2_++;
         }
         if(!MenuClass.StoryMode)
         {
            MenuClass.ClickRock = false;
            MenuClass.HukuRock = false;
         }
         new Chara_SelectClass("close");
         MenuClass._nowHeaderName = null;
         MenuClass.DressSetCheck = false;
      }
   }
}
