package menu
{
   import flash.events.MouseEvent;
   
   public class Tab_ErrorWindowClass
   {
       
      
      public function Tab_ErrorWindowClass()
      {
         super();
         MenuClass.ErrorWindow = new Menu_Load.errorWindowClass();
         Main.stageVar.addChild(MenuClass.ErrorWindow);
         new ColorChangeClass(MenuClass.ErrorWindow.closeBtn.bg,"37241A");
         MenuClass.ErrorWindow.visible = false;
         MenuClass.ErrorWindow.gotoAndStop(1);
         MenuClass.ErrorWindow.y = 240;
         MenuClass.ErrorWindow.x = 65;
         MenuClass.ErrorWindow.closeBtn.addEventListener(MouseEvent.MOUSE_DOWN,this.closeMouseDown);
         MenuClass.ErrorWindow.closeBtn.addEventListener(MouseEvent.MOUSE_OVER,this.closeMouseOver);
         MenuClass.ErrorWindow.closeBtn.addEventListener(MouseEvent.MOUSE_OUT,this.closeMouseOut);
         MenuClass.ErrorWindow.closeBtn.buttonMode = true;
      }
      
      private function closeMouseDown(param1:MouseEvent) : void
      {
         param1.currentTarget.parent.visible = false;
         param1.currentTarget.gotoAndStop(1);
      }
      
      private function closeMouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
      
      private function closeMouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
   }
}
