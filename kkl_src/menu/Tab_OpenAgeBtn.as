package menu
{
   import flash.events.MouseEvent;
   
   public class Tab_OpenAgeBtn
   {
       
      
      public function Tab_OpenAgeBtn()
      {
         super();
      }
      
      public static function setFc() : void
      {
         MenuClass.tabMenuAdd["OpenAge"].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd["OpenAge"].buttonMode = true;
         if(Main.accessObj.age == "r18")
         {
            MenuClass.tabMenuAdd["OpenAge"].TabOpenAgeBtn.gotoAndStop(2);
         }
         else if(Main.accessObj.age == "all")
         {
            MenuClass.tabMenuAdd["OpenAge"].TabOpenAgeBtn.gotoAndStop(1);
         }
      }
      
      public static function deleteFc() : void
      {
         MenuClass.tabMenuAdd["OpenAge"].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         MenuClass._nowWindowName = "OpenAge";
         Tab_OpenAgeClass.setFc("normal");
         MenuClass.tabMenuAdd["OpenAge"].addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         MenuClass.tabMenuAdd["OpenAge"].removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
