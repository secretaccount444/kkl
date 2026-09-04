package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_PageTopBtn
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_PageTopBtn()
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
         targetMC = param1.currentTarget as MovieClip;
         new Tab_CloseClass();
         targetMC.gotoAndStop(2);
         new Stage_MoveCheckClass();
         if(MenuClass.systemData["Story_Page"]["_menu"] != 0)
         {
            MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
            MenuClass.systemData["Story_Page"]["_menu"] = 0;
            Tab_IEInOut.execute("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
         }
         targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         targetMC.gotoAndStop(1);
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
