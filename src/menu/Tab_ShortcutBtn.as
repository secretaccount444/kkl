package menu
{
   import flash.events.MouseEvent;
   
   public class Tab_ShortcutBtn
   {
       
      
      public function Tab_ShortcutBtn()
      {
         super();
      }
      
      public static function setFc() : void
      {
         MenuClass.tabMenuAdd["Shortcut"].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd["Shortcut"].buttonMode = true;
      }
      
      public static function deleteFc() : void
      {
         MenuClass.tabMenuAdd["Shortcut"].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         MenuClass._nowWindowName = "ShortcutWindow";
         Tab_ShortcutClass.setFc();
         MenuClass.tabMenuAdd["Shortcut"].addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         MenuClass.tabMenuAdd["Shortcut"].removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
