package menu
{
   import flash.events.MouseEvent;
   import system.MeterPersent;
   
   public class Tab_CloseBtnClass
   {
       
      
      public function Tab_CloseBtnClass()
      {
         super();
      }
      
      public static function setFc(param1:String, param2:int) : void
      {
         MenuClass.tabMenuAdd[param1].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd[param1].addEventListener(MouseEvent.MOUSE_OVER,MouseOver);
         MenuClass.tabMenuAdd[param1].addEventListener(MouseEvent.MOUSE_OUT,MouseOut);
         MenuClass.tabMenuAdd[param1].buttonMode = true;

         if(param1 == "Close2")
         {
            new ColorChangeClass(MenuClass.tabMenuAdd[param1].bg,MenuClass.MY_MENUNAME[param2][1]);
         }

         applyScale(param1);
      }

      public static function applyScale(tabName:String) {
         new MeterPersent(0.5, 1.0, "MenuScale", 0);
         var menuScale = MeterPersent.MeterPersentNum;

         if(tabName == "Close2")
         {
            MenuClass.tabMenuAdd[tabName].scaleX = MenuClass.tabMenuAdd[tabName].scaleY = 0.93 * menuScale;
         }
         else
         {
            MenuClass.tabMenuAdd[tabName].scaleX = MenuClass.tabMenuAdd[tabName].scaleY = 0.73 * menuScale;
         }

      }
      
      public static function deleteFc(param1:String) : void
      {
         MenuClass.tabMenuAdd[param1].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd[param1].removeEventListener(MouseEvent.MOUSE_OVER,MouseOver);
         MenuClass.tabMenuAdd[param1].removeEventListener(MouseEvent.MOUSE_OUT,MouseOut);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         new Tab_CloseClass();
         param1.currentTarget.gotoAndStop(1);
      }
      
      public static function MouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
      
      public static function MouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
   }
}
