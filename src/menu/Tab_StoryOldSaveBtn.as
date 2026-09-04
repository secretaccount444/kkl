package menu
{
   import flash.events.MouseEvent;
   
   public class Tab_StoryOldSaveBtn
   {
       
      
      public function Tab_StoryOldSaveBtn()
      {
         super();
      }
      
      public static function setFc() : void
      {
         MenuClass.tabMenuAdd["StoryOldSave"].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd["StoryOldSave"].buttonMode = true;
      }
      
      public static function deleteFc() : void
      {
         MenuClass.tabMenuAdd["StoryOldSave"].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         Tab_SaveClass.setFc("Story","StorySaveWindow");
         MenuClass.tabMenuAdd["StoryOldSave"].addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         MenuClass.tabMenuAdd["StoryOldSave"].removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
