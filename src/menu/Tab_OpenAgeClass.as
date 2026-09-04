package menu
{
   import flash.events.MouseEvent;
   
   public class Tab_OpenAgeClass
   {
      
      public static var str:String;
      
      public static var Flag:String = "nashi";
       
      
      public function Tab_OpenAgeClass()
      {
         super();
      }
      
      public static function setFc(param1:String) : void
      {
         str = param1;
         MenuClass.tabMenuAdd["openAgeWindow"] = new Menu_Load.openAgeClass();
         Main.stageVar.addChild(MenuClass.tabMenuAdd["openAgeWindow"]);
         MenuClass.tabMenuAdd["openAgeWindow"].btn0.addEventListener(MouseEvent.MOUSE_DOWN,openAgeBtn0MouseDown);
         MenuClass.tabMenuAdd["openAgeWindow"].btn0_1.addEventListener(MouseEvent.MOUSE_DOWN,openAgeBtn0MouseDown);
         MenuClass.tabMenuAdd["openAgeWindow"].btn0.buttonMode = true;
         MenuClass.tabMenuAdd["openAgeWindow"].btn0_1.buttonMode = true;
         MenuClass.tabMenuAdd["openAgeWindow"].btn1.addEventListener(MouseEvent.MOUSE_DOWN,openAgeBtn1MouseDown);
         MenuClass.tabMenuAdd["openAgeWindow"].btn1_1.addEventListener(MouseEvent.MOUSE_DOWN,openAgeBtn1MouseDown);
         MenuClass.tabMenuAdd["openAgeWindow"].btn1.buttonMode = true;
         MenuClass.tabMenuAdd["openAgeWindow"].btn1_1.buttonMode = true;
         if(str == "first")
         {
            MenuClass.tabMenuAdd["openAgeWindow"].gotoAndStop(1);
            MenuClass.tabMenuAdd["openAgeWindow"].gamestartBtn.addEventListener(MouseEvent.MOUSE_DOWN,gamestartBtnMouseDown);
            MenuClass.tabMenuAdd["openAgeWindow"].gamestartBtn.gotoAndStop(2);
         }
         else
         {
            if(Main.accessObj.age == "r18")
            {
               MenuClass.tabMenuAdd["openAgeWindow"].gotoAndStop(4);
               Flag = "r18";
            }
            else
            {
               MenuClass.tabMenuAdd["openAgeWindow"].gotoAndStop(5);
               Flag = "all";
            }
            MenuClass.tabMenuAdd["openAgeWindow"].okBtn.addEventListener(MouseEvent.MOUSE_DOWN,okBtnMouseDown);
            MenuClass.tabMenuAdd["openAgeWindow"].okBtn.buttonMode = true;
            MenuClass.tabMenuAdd["openAgeWindow"].CancelBtn.addEventListener(MouseEvent.MOUSE_DOWN,CancelBtnMouseDown);
            MenuClass.tabMenuAdd["openAgeWindow"].CancelBtn.buttonMode = true;
         }
      }
      
      public static function deleteFc() : void
      {
         Main.stageVar.removeChild(MenuClass.tabMenuAdd["openAgeWindow"]);
         MenuClass.tabMenuAdd["openAgeWindow"].btn0.removeEventListener(MouseEvent.MOUSE_DOWN,openAgeBtn0MouseDown);
         MenuClass.tabMenuAdd["openAgeWindow"].btn0_1.removeEventListener(MouseEvent.MOUSE_DOWN,openAgeBtn0MouseDown);
         MenuClass.tabMenuAdd["openAgeWindow"].btn1.removeEventListener(MouseEvent.MOUSE_DOWN,openAgeBtn1MouseDown);
         MenuClass.tabMenuAdd["openAgeWindow"].btn1_1.removeEventListener(MouseEvent.MOUSE_DOWN,openAgeBtn1MouseDown);
         try
         {
            MenuClass.tabMenuAdd["openAgeWindow"].okBtn.removeEventListener(MouseEvent.MOUSE_DOWN,okBtnMouseDown);
            MenuClass.tabMenuAdd["openAgeWindow"].CancelBtn.removeEventListener(MouseEvent.MOUSE_DOWN,CancelBtnMouseDown);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd["openAgeWindow"].gamestartBtn.removeEventListener(MouseEvent.MOUSE_DOWN,gamestartBtnMouseDown);
         }
         catch(myError:Error)
         {
         }
         try
         {
            if(Main.accessObj.age == "r18")
            {
               MenuClass.tabMenuAdd["OpenAge"].TabOpenAgeBtn.gotoAndStop(2);
            }
            else if(Main.accessObj.age == "all")
            {
               MenuClass.tabMenuAdd["OpenAge"].TabOpenAgeBtn.gotoAndStop(1);
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function gamestartBtnMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(Flag != "nashi")
         {
            Main.accessObj.age = Flag;
            Main.so_access.flush();
            Main.openAgeFlag = true;
            ++Main.loadCount;
            if(Flag == "r18")
            {
               Main.r18Check = false;
            }
            else
            {
               Main.r18Check = true;
            }
            deleteFc();
         }
      }
      
      public static function openAgeBtn0MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(str == "first")
         {
            MenuClass.tabMenuAdd["openAgeWindow"].gotoAndStop(2);
            MenuClass.tabMenuAdd["openAgeWindow"].gamestartBtn.buttonMode = true;
            MenuClass.tabMenuAdd["openAgeWindow"].gamestartBtn.gotoAndStop(1);
         }
         else
         {
            MenuClass.tabMenuAdd["openAgeWindow"].gotoAndStop(4);
         }
         Flag = "r18";
      }
      
      public static function openAgeBtn1MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(str == "first")
         {
            MenuClass.tabMenuAdd["openAgeWindow"].gotoAndStop(3);
            MenuClass.tabMenuAdd["openAgeWindow"].gamestartBtn.buttonMode = true;
            MenuClass.tabMenuAdd["openAgeWindow"].gamestartBtn.gotoAndStop(1);
         }
         else
         {
            MenuClass.tabMenuAdd["openAgeWindow"].gotoAndStop(5);
         }
         Flag = "all";
      }
      
      public static function okBtnMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         Main.accessObj.age = Flag;
         Main.so_access.flush();
         deleteFc();
      }
      
      public static function CancelBtnMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         deleteFc();
      }
   }
}
