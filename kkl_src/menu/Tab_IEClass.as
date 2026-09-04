package menu
{
   import flash.events.MouseEvent;
   
   public class Tab_IEClass
   {
       
      
      public function Tab_IEClass()
      {
         super();
      }
      
      public static function setFc() : void
      {
         MenuClass.tabMenuAdd["TabImportExport"].ImportExport.imBtn.addEventListener(MouseEvent.MOUSE_DOWN,ImportBtnClick);
         MenuClass.tabMenuAdd["TabImportExport"].ImportExport.exBtn.addEventListener(MouseEvent.MOUSE_DOWN,ExportBtnClick);
         MenuClass.tabMenuAdd["TabImportExport"].ImportExport.buttonMode = true;
      }
      
      public static function deleteFc() : void
      {
         try
         {
            MenuClass.tabMenuAdd["TabImportExport"].ImportExport.imBtn.gotoAndStop(1);
            MenuClass.tabMenuAdd["TabImportExport"].ImportExport.exBtn.gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         MenuClass.tabMenuAdd["TabImportExport"].ImportExport.imBtn.removeEventListener(MouseEvent.MOUSE_DOWN,ImportBtnClick);
         MenuClass.tabMenuAdd["TabImportExport"].ImportExport.exBtn.removeEventListener(MouseEvent.MOUSE_DOWN,ExportBtnClick);
      }
      
      public static function ImportBtnClick(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(MenuClass._nowWindowName == "tabImportWindow")
         {
            MenuClass._nowWindowName = null;
            Tab_IE_Import.deleteFc();
            MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.alpha = 1;
            MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.buttonMode = true;
            MenuClass.tabMenuAdd["TabImportExport"].ImportExport.imBtn.gotoAndStop(1);
         }
         else
         {
            Tab_IE_Export.deleteFc();
            Tab_IE_Import.setFc();
            MenuClass.tabMenuAdd["TabImportExport"].ImportExport.exBtn.gotoAndStop(1);
            MenuClass.tabMenuAdd["TabImportExport"].ImportExport.imBtn.gotoAndStop(2);
            MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.alpha = 1;
            MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.buttonMode = true;
            MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.alpha = 0.5;
            MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.buttonMode = false;
         }
      }
      
      public static function ExportBtnClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         new Stage_MoveCheckClass();
         if(MenuClass._nowWindowName == "tabExportWindow")
         {
            MenuClass._nowWindowName = null;
            Tab_IE_Export.deleteFc();
            MenuClass.tabMenuAdd["TabImportExport"].ImportExport.exBtn.gotoAndStop(1);
            MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.alpha = 1;
            MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.buttonMode = true;
         }
         else
         {
            Tab_IE_Import.deleteFc();
            Tab_IE_Export.setFc();
            MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.alpha = 1;
            MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.buttonMode = true;
            MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.alpha = 0.5;
            MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.buttonMode = false;
            MenuClass.tabMenuAdd["TabImportExport"].ImportExport.exBtn.gotoAndStop(2);
            MenuClass.tabMenuAdd["TabImportExport"].ImportExport.imBtn.gotoAndStop(1);
         }
      }
   }
}
