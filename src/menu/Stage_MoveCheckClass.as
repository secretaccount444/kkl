package menu
{
   import flash.events.MouseEvent;
   
   public class Stage_MoveCheckClass
   {
       
      
      public function Stage_MoveCheckClass()
      {
         super();
         MenuClass.stageMoveCheck = false;
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,this.MouseUp);
      }
      
      private function MouseUp(param1:MouseEvent) : void
      {
         MenuClass.stageMoveCheck = true;
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,this.MouseUp);
      }
   }
}
