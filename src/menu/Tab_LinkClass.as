package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
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
         new SetLinkColorClass(param1.currentTarget.tabName);
      }
   }
}
