package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_headerSwitchBtn
   {
       
      
      public function Tab_headerSwitchBtn()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip) : void
      {
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         MenuClass.hederSwitchCheck = !MenuClass.hederSwitchCheck;
         HeaderbtnClass.layoutHeaderButtons();
         new Tab_headerSwitchSet();
         if(!MenuClass.hederSwitchCheck)
         {
            param1.currentTarget.gotoAndStop(2);
         }
         else
         {
            param1.currentTarget.gotoAndStop(1);
         }
      }
   }
}
