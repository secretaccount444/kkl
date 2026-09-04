package menu
{
   import flash.events.MouseEvent;
   
   public class Tab_OldSaveBtn
   {
       
      
      public function Tab_OldSaveBtn()
      {
         super();
      }
      
      public static function setFc() : void
      {
         MenuClass.tabMenuAdd["OldSave"].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd["OldSave"].buttonMode = true;
      }
      
      public static function deleteFc() : void
      {
         MenuClass.tabMenuAdd["OldSave"].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd["OldSave"].gotoAndStop(1);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(MenuClass._nowHeaderName == "Save")
         {
            Tab_SaveClass.setFc("Save","Save");
            Tab_IE_Export.deleteFc();
            Tab_IE_Import.deleteFc();
            try
            {
               MenuClass.tabMenuAdd["TabImportExport"].ImportExport.exBtn.gotoAndStop(1);
               MenuClass.tabMenuAdd["TabImportExport"].ImportExport.imBtn.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
         }
         MenuClass.tabMenuAdd["OldSave"].addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         MenuClass.tabMenuAdd["OldSave"].removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
