package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import undo.LinkAction;
   
   public class Tab_LinkClass
   {
       
      
      public function Tab_LinkClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String) : void
      {
         param1.tabName = param2;
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var undoAction = new LinkAction(param1.currentTarget.headerName, param1.currentTarget.targetJ, param1.currentTarget.tabName);
         undoAction.recordPreviousValue(0);
         if(MenuClass.systemData[param1.currentTarget.tabName]["_flag"])
         {
            MenuClass.systemData[param1.currentTarget.tabName]["_flag"] = false;
            param1.currentTarget.gotoAndStop(2);
         }
         else
         {
            MenuClass.systemData[param1.currentTarget.tabName]["_flag"] = true;
            param1.currentTarget.gotoAndStop(1);
         }
         undoAction.recordNewValue(MenuClass.systemData[param1.currentTarget.tabName]["_flag"], 0);
         Main.undoTimeline.push(undoAction);
         new SetLinkColorClass(param1.currentTarget.tabName);
      }
   }
}
