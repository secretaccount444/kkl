package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_BreakBlockBtn
   {
      
      public static var breakblockFirst:Boolean = false;
      
      public static var ball:MovieClip = new MovieClip();
      
      public static var blockrod:MovieClip = new MovieClip();
      
      public static var breakblockMode:int = 0;
       
      
      public function Tab_BreakBlockBtn()
      {
         super();
      }
      
      public static function setFc() : void
      {
         MenuClass.tabMenuAdd["BreakBlock"].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd["BreakBlock"].buttonMode = true;
      }
      
      public static function deleteFc() : void
      {
         MenuClass.tabMenuAdd["BreakBlock"].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         MenuClass._nowWindowName = "BreakBlock";
         if(!breakblockFirst)
         {
            ball.name = "ball";
            ball = new Chara_Loading.ballClass();
            Main.mainWindow.addChild(ball);
            ball.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown2);
            ball.buttonMode = true;
            blockrod.name = "blockrod";
            blockrod = new Chara_Loading.blockrodClass();
            Main.mainWindow.addChild(blockrod);
            breakblockFirst = true;
            blockrod.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown2);
            blockrod.buttonMode = true;
         }
         else
         {
            Tab_BreakBlockBtn.ball.visible = true;
            Tab_BreakBlockBtn.blockrod.visible = true;
         }
         breakblockMode = 1;
         new Tab_CloseClass();
      }
      
      public static function MouseDown2(param1:MouseEvent) : void
      {
         breakblockMode = 2;
      }
   }
}
