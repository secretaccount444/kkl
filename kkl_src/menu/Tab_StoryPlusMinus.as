package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_StoryPlusMinus
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_StoryPlusMinus()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String) : void
      {
         if(param2 == "plus")
         {
            param1.addEventListener(MouseEvent.MOUSE_DOWN,plusMouseDown);
         }
         else
         {
            param1.addEventListener(MouseEvent.MOUSE_DOWN,minusMouseDown);
         }
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip, param2:String) : void
      {
         if(param2 == "plus")
         {
            param1.removeEventListener(MouseEvent.MOUSE_DOWN,plusMouseDown);
         }
         else
         {
            param1.removeEventListener(MouseEvent.MOUSE_DOWN,minusMouseDown);
         }
      }
      
      public static function plusMouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget as MovieClip;
         targetMC.addEventListener(MouseEvent.MOUSE_UP,plusMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,plusMouseUp);
         new Tab_StoryPlusMinusFc("plus");
         targetMC.gotoAndStop(2);
      }
      
      public static function plusMouseUp(param1:MouseEvent) : void
      {
         targetMC.gotoAndStop(1);
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,plusMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,plusMouseUp);
      }
      
      public static function minusMouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget as MovieClip;
         targetMC.addEventListener(MouseEvent.MOUSE_UP,minusMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,minusMouseUp);
         new Tab_StoryPlusMinusFc("minus");
         targetMC.gotoAndStop(2);
      }
      
      public static function minusMouseUp(param1:MouseEvent) : void
      {
         targetMC.gotoAndStop(1);
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,minusMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,minusMouseUp);
      }
   }
}
