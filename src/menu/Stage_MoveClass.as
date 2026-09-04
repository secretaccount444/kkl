package menu
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class Stage_MoveClass
   {
      
      public static var beforeX:Number;
      
      public static var beforeMouseX:Number;
      
      public static var beforeY:Number;
      
      public static var beforeMouseY:Number;
      
      public static var MouseUpCheck:Boolean;
       
      
      private var Target:Object;
      
      public function Stage_MoveClass(param1:Object)
      {
         super();
         this.Target = param1;
         this.Target.addEventListener(MouseEvent.MOUSE_DOWN,this.MouseDown);
         this.Target.addEventListener(MouseEvent.MOUSE_UP,this.MouseUp);
      }
      
      private function MouseUp(param1:MouseEvent) : void
      {
         MouseUpCheck = false;
         this.Target.removeEventListener(MouseEvent.MOUSE_MOVE,this.MouseMove);
      }
      
      private function MouseMove(param1:Event) : void
      {
         MenuClass.clickMoveCheck = false;
         this.Target.removeEventListener(MouseEvent.MOUSE_MOVE,this.MouseMove);
      }
      
      private function MouseDown(param1:MouseEvent) : void
      {
         if(!MenuClass.ClickRock && MenuClass._nowHeaderName != "Escape" && Main.allLoadFlag)
         {
            MouseUpCheck = true;
            MenuClass.clickMoveCheck = true;
            beforeX = Main.mainWindow.x;
            beforeMouseX = Main.stageVar.mouseX;
            beforeY = Main.mainWindow.y;
            beforeMouseY = Main.stageVar.mouseY;
            this.Target.addEventListener(MouseEvent.MOUSE_MOVE,this.MouseMove);
         }
      }
   }
}
