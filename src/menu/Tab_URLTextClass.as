package menu
{
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   
   public class Tab_URLTextClass
   {
      
      public static var urlTextFocusCheck:Boolean = false;
      
      public static var urlTextClickCheck:Boolean = false;
       
      
      public function Tab_URLTextClass()
      {
         super();
      }
      
      public static function setFc(param1:String) : void
      {
         if(param1 == "CharaURLText")
         {
            MenuClass.tabMenuAdd["CharaURLText"].txt.addEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
            MenuClass.tabMenuAdd["CharaURLText"].txt.addEventListener(FocusEvent.FOCUS_OUT,focusOut);
            MenuClass.tabMenuAdd["CharaURLText"].txt.multiline = false;
         }
         else
         {
            MenuClass.tabMenuAdd["URLText"].txt.addEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
            MenuClass.tabMenuAdd["URLText"].txt.addEventListener(FocusEvent.FOCUS_OUT,focusOut);
            MenuClass.tabMenuAdd["URLText"].txt.multiline = false;
         }
      }
      
      public static function deleteFc() : void
      {
         try
         {
            MenuClass.tabMenuAdd["CharaURLText"].txt.removeEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
            MenuClass.tabMenuAdd["CharaURLText"].txt.removeEventListener(FocusEvent.FOCUS_OUT,focusOut);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd["URLText"].txt.removeEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
            MenuClass.tabMenuAdd["URLText"].txt.removeEventListener(FocusEvent.FOCUS_OUT,focusOut);
         }
         catch(myError:Error)
         {
         }
         urlTextFocusCheck = false;
         urlTextClickCheck = false;
      }
      
      public static function MouseClick(param1:MouseEvent) : void
      {
         urlTextClickCheck = true;
         urlTextFocusCheck = true;
         if(MenuClass._nowHeaderName == "CharaLoad")
         {
            MenuClass.tabMenuAdd["CharaURLText"].txt.selectable = true;
         }
         else
         {
            MenuClass.tabMenuAdd["URLText"].txt.selectable = true;
         }
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         urlTextClickCheck = false;
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function focusOut(param1:FocusEvent) : void
      {
         urlTextFocusCheck = false;
         if(MenuClass._nowHeaderName == "CharaLoad")
         {
            MenuClass.tabMenuAdd["CharaURLText"].txt.selectable = false;
         }
         else
         {
            MenuClass.tabMenuAdd["URLText"].txt.selectable = false;
         }
      }
   }
}
