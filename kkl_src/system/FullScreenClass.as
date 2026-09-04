package system
{
   import flash.events.FullScreenEvent;
   
   public class FullScreenClass
   {
       
      
      public function FullScreenClass()
      {
         super();
         Main.stageVar.addEventListener(FullScreenEvent.FULL_SCREEN,this.fullScreenRedraw);
      }
      
      private function fullScreenRedraw(param1:FullScreenEvent) : void
      {
         if(!param1.fullScreen)
         {
            MenuClass.systemData["FullScreen"]["_check"] = false;
            MenuClass.systemData["StoryFullScreen"]["_check"] = false;
            try
            {
               MenuClass.tabMenuAdd["FullScreen"].checkBox.gotoAndStop(2);
            }
            catch(myError:Error)
            {
            }
         }
      }
   }
}
