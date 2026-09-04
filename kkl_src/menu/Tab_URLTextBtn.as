package menu
{
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   
   public class Tab_URLTextBtn
   {
      
      public static var fistSet:Boolean = false;
      
      public static var urlObj:Object;
      
      public static var so_url:SharedObject;
       
      
      public function Tab_URLTextBtn()
      {
         super();
      }
      
      public static function setFc(param1:String) : void
      {
         if(!fistSet)
         {
            so_url = SharedObject.getLocal("my_url", "/");
            if(so_url)
            {
               urlObj = so_url.data;
               if(!urlObj.urlText)
               {
                  urlObj.urlText = Main.userUrlTextData;
               }
               else
               {
                  Main.userUrlTextData = urlObj.urlText;
               }
            }
            try
            {
               so_url.flush();
            }
            catch(myError:Error)
            {
            }
            fistSet = true;
            Tab_URLTextWindow.urlTextFc();
         }
         if(param1 == "URLTextList")
         {
            MenuClass.tabMenuAdd["URLTextList"].urlTextListBtn.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            MenuClass.tabMenuAdd["URLTextList"].urlTextListBtn.buttonMode = true;
         }
         else
         {
            MenuClass.tabMenuAdd["CharaURLTextList"].urlTextListBtn.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            MenuClass.tabMenuAdd["CharaURLTextList"].urlTextListBtn.buttonMode = true;
         }
      }
      
      public static function deleteFc(param1:String) : void
      {
         if(param1 == "URLTextList")
         {
            MenuClass.tabMenuAdd["URLTextList"].urlTextListBtn.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         }
         else
         {
            MenuClass.tabMenuAdd["CharaURLTextList"].urlTextListBtn.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(MenuClass._nowHeaderName == "Loadmenu")
         {
            MenuClass._nowWindowName = "URLTextList";
            Tab_URLTextWindow.setFc();
            MenuClass.tabMenuAdd["URLTextList"].addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         }
         else
         {
            MenuClass._nowWindowName = "CharaURLTextList";
            Tab_URLTextWindow.setFc();
            MenuClass.tabMenuAdd["CharaURLTextList"].addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         }
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         if(MenuClass._nowHeaderName == "Loadmenu")
         {
            MenuClass.tabMenuAdd["URLTextList"].removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         }
         else
         {
            MenuClass.tabMenuAdd["CharaURLTextList"].removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         }
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
