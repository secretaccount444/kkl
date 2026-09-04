package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   
   public class Tab_URLTextWindow
   {
      
      public static var tabName:String;
      
      public static var nowbtn:MovieClip;
      
      public static var Nagaoshi_count:int;
      
      public static var enterCount:int;
      
      public static var enterCountSelect:int = 0;
      
      public static var menuNum:int = 0;
      
      public static var urlText:Array;
       
      
      public function Tab_URLTextWindow()
      {
         super();
      }
      
      public static function setFc() : void
      {
         var _loc1_:int = 0;
         MenuClass._nowWindowName = "URLTextWindow";
         MenuClass.tabMenuAdd["URLTextWindow"] = new Menu_Load.TabURLWindowClass();
         Main.stageVar.addChild(MenuClass.tabMenuAdd["URLTextWindow"]);
         MenuClass.tabMenuAdd["URLTextWindow"].x = 8;
         if(MenuClass.hederSwitchCheck)
         {
            MenuClass.tabMenuAdd["URLTextWindow"].y = 5 + Main._stageResizeY;
         }
         else
         {
            MenuClass.tabMenuAdd["URLTextWindow"].y = 31 + Main._stageResizeY * -1;
         }
         new ColorChangeClass(MenuClass.tabMenuAdd["URLTextWindow"].closeBtn.bg,"37241A");
         MenuClass.tabMenuAdd["URLTextWindow"].closeBtn.x = 752;
         MenuClass.tabMenuAdd["URLTextWindow"].closeBtn.y = 3;
         MenuClass.tabMenuAdd["URLTextWindow"].closeBtn.addEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
         MenuClass.tabMenuAdd["URLTextWindow"].closeBtn.addEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
         MenuClass.tabMenuAdd["URLTextWindow"].closeBtn.addEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
         MenuClass.tabMenuAdd["URLTextWindow"].closeBtn.buttonMode = true;
         MenuClass.tabMenuAdd["URLTextWindow"].menu0.minus.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd["URLTextWindow"].menu0.minus.buttonMode = true;
         MenuClass.tabMenuAdd["URLTextWindow"].menu0.plus.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         MenuClass.tabMenuAdd["URLTextWindow"].menu0.plus.buttonMode = true;
         if(MenuClass._nowHeaderName == "CharaLoad")
         {
            tabName = "CharaURLTextMenu";
         }
         else
         {
            tabName = "URLTextMenu";
         }
         new Tab_TextInClass(1,"URLTextWindow",9);
         var _loc2_:Number = menuNum * 15;
         _loc1_ = 0;
         while(_loc1_ < 15)
         {
            MenuClass.tabMenuAdd["URLTextWindow"]["url" + _loc1_].txt.text = Main.userUrlTextData[_loc2_ + _loc1_];
            _loc1_++;
         }
         new Tab_TextInClass(0,"URLTextWindow",menuNum);
      }
      
      public static function urlTextFc() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         urlText = new Array();
         _loc1_ = 0;
         while(_loc1_ < Main.userUrlTextData.length)
         {
            if(Main.userUrlTextData[_loc1_] != "" && Main.userUrlTextData[_loc1_] != " ")
            {
               urlText.push(Main.userUrlTextData[_loc1_]);
            }
            _loc1_++;
         }
         if(Main.domainName == "pochi.x.fc2.com")
         {
            _loc2_ = "http://pochi.x.fc2.com/kisekae/images/";
         }
         else if(Main.domainName == "pochi.lix.jp")
         {
            _loc2_ = "http://pochi.lix.jp/images/";
         }
         else if(Main.domainName == "pochi.eek.jp")
         {
            _loc2_ = "http://pochi.eek.jp/images/";
         }
         else
         {
            _loc2_ = "http://pochi.eek.jp/images/";
         }
         _loc1_ = 0;
         while(_loc1_ < Main.urlTextData.length)
         {
            urlText.push(_loc2_ + Main.urlTextData[_loc1_]);
            _loc1_++;
         }
         MenuClass.menuData["URLTextMenu"] = urlText.length - 1;
         MenuClass.menuData["CharaURLTextMenu"] = urlText.length - 1;
      }
      
      public static function deleteFc() : void
      {
         try
         {
            try
            {
               MenuClass.tabMenuAdd["URLText"].gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            dataIn();
            MenuClass.tabMenuAdd["URLTextWindow"].closeBtn.removeEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
            MenuClass.tabMenuAdd["URLTextWindow"].closeBtn.removeEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
            MenuClass.tabMenuAdd["URLTextWindow"].closeBtn.removeEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
            MenuClass.tabMenuAdd["URLTextWindow"].menu0.minus.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            MenuClass.tabMenuAdd["URLTextWindow"].menu0.plus.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            Main.stageVar.removeChild(MenuClass.tabMenuAdd["URLTextWindow"]);
            MenuClass.tabMenuAdd["URLTextWindow"] = null;
            urlTextFc();
            new Tab_TextInClass(1,"URLTextMenu",MenuClass.menuData["URLTextMenu"]);
            new Tab_TextInClass(1,"CharaURLTextMenu",MenuClass.menuData["CharaURLTextMenu"]);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         nowbtn = param1.currentTarget as MovieClip;
         nowbtn.gotoAndStop(2);
         MenuAction(nowbtn);
         nowbtn.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Nagaoshi_count = 0;
         Main.stageVar.addEventListener(Event.ENTER_FRAME,EnterFrame);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         nowbtn.gotoAndStop(1);
         nowbtn.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
      }
      
      public static function MenuAction(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = menuNum * 15;
         dataIn();
         if(param1.name == "plus")
         {
            if(menuNum >= 9)
            {
               menuNum = 0;
            }
            else
            {
               menuNum += 1;
            }
         }
         else if(param1.name == "minus")
         {
            if(menuNum == 0)
            {
               menuNum = 9;
            }
            else
            {
               --menuNum;
            }
         }
         _loc3_ = menuNum * 15;
         _loc2_ = 0;
         while(_loc2_ < 15)
         {
            MenuClass.tabMenuAdd["URLTextWindow"]["url" + _loc2_].txt.text = Main.userUrlTextData[_loc3_ + _loc2_];
            _loc2_++;
         }
         new Tab_TextInClass(0,"URLTextWindow",menuNum);
      }
      
      public static function EnterFrame(param1:Event) : void
      {
         ++Nagaoshi_count;
         if(Nagaoshi_count >= 10)
         {
            MenuAction(nowbtn);
         }
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
         MenuClass._nowWindowName = null;
         dataIn();
         Tab_URLTextWindow.deleteFc();
      }
      
      public static function closeMouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
      
      public static function closeMouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
      
      public static function dataIn() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = menuNum * 15;
         _loc1_ = 0;
         while(_loc1_ < 15)
         {
            Main.userUrlTextData[_loc2_ + _loc1_] = MenuClass.tabMenuAdd["URLTextWindow"]["url" + _loc1_].txt.text;
            _loc1_++;
         }
         Tab_URLTextBtn.so_url = SharedObject.getLocal("my_url", "/");
         Tab_URLTextBtn.urlObj = Tab_URLTextBtn.so_url.data;
         Tab_URLTextBtn.urlObj.urlText = Main.userUrlTextData;
         try
         {
            Tab_URLTextBtn.so_url.flush();
         }
         catch(myError:Error)
         {
         }
      }
   }
}
