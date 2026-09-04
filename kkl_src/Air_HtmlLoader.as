package
{
   import flash.desktop.NativeApplication;
   import flash.display.MovieClip;
   import flash.display.NativeWindow;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.html.HTMLLoader;
   import flash.net.URLRequest;
   import menu.Menu_Load;
   
   public class Air_HtmlLoader
   {
      
      public static var htmlLoader:HTMLLoader;
      
      public static var closeHtmlBtn:MovieClip;
       
      
      private var count:int = 0;
      
      private var closeBtnCheck:Boolean = true;
      
      private var window:NativeWindow;
      
      private var firstCountNum:int = 180;
      
      private var countNum:int = 3240;
      
      private var koukokuOpen:Boolean = false;
      
      public function Air_HtmlLoader()
      {
         super();
         Main.stageVar.addEventListener(Event.ENTER_FRAME,this.Enter);
         var _loc1_:NativeApplication = NativeApplication.nativeApplication;
         var _loc2_:Array = _loc1_.openedWindows;
         this.window = _loc2_[0];
      }
      
      public static function MouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
      
      private function Enter(param1:Event) : void
      {
         var closeVisibel:Boolean = false;
         var host:CustomHost = null;
         var aaa:Number = NaN;
         var bbb:Number = NaN;
         var e:Event = param1;
         try
         {
            closeVisibel = closeHtmlBtn.visible;
         }
         catch(myError:Error)
         {
            closeVisibel = false;
         }
         if(MenuClass._nowHeaderName == "Escape" && closeVisibel)
         {
            try
            {
               htmlLoader.visible = false;
               closeHtmlBtn.visible = false;
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName != "Escape" && closeHtmlBtn && !closeVisibel)
         {
            try
            {
               htmlLoader.visible = true;
               closeHtmlBtn.visible = true;
            }
            catch(myError:Error)
            {
            }
         }
         else if(Main.HtmlWindowFlag == false)
         {
            htmlLoader.visible = false;
            closeHtmlBtn.visible = false;
            Main.stageVar.removeChild(htmlLoader);
            Main.stageVar.removeChild(closeHtmlBtn);
            closeHtmlBtn.removeEventListener(MouseEvent.MOUSE_DOWN,this.MouseDown);
            closeHtmlBtn.removeEventListener(MouseEvent.MOUSE_OVER,this.MouseOver);
            closeHtmlBtn.removeEventListener(MouseEvent.MOUSE_OUT,MouseOut);
            this.count = 0;
            this.countNum = 10800;
            Main.HtmlWindowFlag = true;
            this.closeBtnCheck = false;
            this.koukokuOpen = false;
         }
         else if(this.count >= this.firstCountNum && this.closeBtnCheck && this.window.orderToFront() || this.count >= this.countNum && !this.closeBtnCheck && this.window.orderToFront())
         {
            htmlLoader = new HTMLLoader();
            htmlLoader.x = 36;
            if(MenuClass.hederSwitchCheck)
            {
               htmlLoader.y = 466 + Main._stageResizeY;
            }
            else
            {
               htmlLoader.y = 50 + Main._stageResizeY * -1;
            }
            htmlLoader.width = 728;
            htmlLoader.height = 90;
            Main.stageVar.addChild(htmlLoader);
            htmlLoader.stage.nativeWindow.activate();
            htmlLoader.load(new URLRequest("http://pochi.lix.jp/airap_w1.html"));
            htmlLoader.addEventListener(Event.COMPLETE,this.compEvent);
            host = new CustomHost();
            htmlLoader.htmlHost = host;
            htmlLoader.visible = false;
            this.count = 0;
            this.koukokuOpen = true;
         }
         else if(this.count <= this.countNum && !this.koukokuOpen)
         {
            ++this.count;
         }
         if(MenuClass.systemData["ViewMode"]["_check"])
         {
            aaa = (this.window.width - 16) / 800;
            bbb = (this.window.height - 38) / 600;
            if(aaa > bbb)
            {
               Main._stageWidth = 800 * (aaa / bbb);
               Main._stageHeight = 600;
            }
            else
            {
               Main._stageWidth = 800;
               Main._stageHeight = 600 * (bbb / aaa);
            }
         }
      }
      
      private function compEvent(param1:Event) : void
      {
         closeHtmlBtn = new Menu_Load.TabCloseHtmlClass();
         Main.stageVar.addChild(closeHtmlBtn);
         closeHtmlBtn.addEventListener(MouseEvent.MOUSE_DOWN,this.MouseDown);
         closeHtmlBtn.addEventListener(MouseEvent.MOUSE_OVER,this.MouseOver);
         closeHtmlBtn.addEventListener(MouseEvent.MOUSE_OUT,MouseOut);
         closeHtmlBtn.buttonMode = true;
         closeHtmlBtn.mouseEnabled = false;
         closeHtmlBtn.x = 739;
         if(MenuClass.hederSwitchCheck)
         {
            closeHtmlBtn.y = 472 + Main._stageResizeY;
         }
         else
         {
            closeHtmlBtn.y = 56 + Main._stageResizeY * -1;
         }
         if(MenuClass.hederSwitchCheck)
         {
            htmlLoader.y = 466 + Main._stageResizeY;
         }
         else
         {
            htmlLoader.y = 50 + Main._stageResizeY * -1;
         }
         htmlLoader.visible = true;
         htmlLoader.removeEventListener(Event.COMPLETE,this.compEvent);
      }
      
      private function MouseDown(param1:MouseEvent) : void
      {
         htmlLoader.visible = false;
         closeHtmlBtn.visible = false;
         Main.stageVar.removeChild(htmlLoader);
         Main.stageVar.removeChild(closeHtmlBtn);
         closeHtmlBtn.removeEventListener(MouseEvent.MOUSE_DOWN,this.MouseDown);
         closeHtmlBtn.removeEventListener(MouseEvent.MOUSE_OVER,this.MouseOver);
         closeHtmlBtn.removeEventListener(MouseEvent.MOUSE_OUT,MouseOut);
         this.count = 0;
         this.closeBtnCheck = false;
         this.koukokuOpen = false;
      }
      
      private function MouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
   }
}
