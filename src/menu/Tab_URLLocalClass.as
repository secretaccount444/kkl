package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_URLLocalClass
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_URLLocalClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String) : void
      {
         param1.tabName = param2;
         param1.urlBtn.addEventListener(MouseEvent.MOUSE_DOWN,URLBtnClick);
         param1.localBtn.addEventListener(MouseEvent.MOUSE_DOWN,LocalBtnClick);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.urlBtn.removeEventListener(MouseEvent.MOUSE_DOWN,URLBtnClick);
         param1.localBtn.removeEventListener(MouseEvent.MOUSE_DOWN,LocalBtnClick);
         try
         {
            MenuClass.tabMenuAdd["URLText"].gotoAndStop(1);
         }
         catch(e:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(1);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function URLBtnClick(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(MenuClass._nowHeaderName == "Loadmenu")
         {
            if(!MenuClass.systemData[param1.currentTarget.parent.tabName]["_check"])
            {
               Tab_URLTextClass.urlTextFocusCheck = true;
               MenuClass.tabMenuAdd["URLText"].txt.selectable = true;
               MenuClass.systemData[param1.currentTarget.parent.tabName]["_check"] = true;
               MenuClass.tabMenuAdd["URLText"].gotoAndStop(1);
            }
         }
         else if(MenuClass._nowHeaderName == "CharaLoad")
         {
            if(!MenuClass.systemData["CharaURLLocal"]["_check"])
            {
               Tab_URLTextClass.urlTextFocusCheck = true;
               MenuClass.tabMenuAdd["CharaURLText"].txt.selectable = true;
               MenuClass.systemData["CharaURLLocal"]["_check"] = true;
               MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(1);
            }
         }
         new Tab_SetClass();
      }
      
      public static function LocalBtnClick(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(MenuClass._nowHeaderName == "Loadmenu")
         {
            if(MenuClass.systemData[param1.currentTarget.parent.tabName]["_check"])
            {
               Tab_URLTextClass.urlTextFocusCheck = false;
               MenuClass.tabMenuAdd["URLText"].txt.selectable = false;
               MenuClass.systemData[param1.currentTarget.parent.tabName]["_check"] = false;
               MenuClass.tabMenuAdd["URLText"].gotoAndStop(1);
            }
         }
         else if(MenuClass._nowHeaderName == "CharaLoad")
         {
            if(MenuClass.systemData["CharaURLLocal"]["_check"])
            {
               Tab_URLTextClass.urlTextFocusCheck = false;
               MenuClass.tabMenuAdd["CharaURLText"].txt.selectable = false;
               MenuClass.systemData["CharaURLLocal"]["_check"] = false;
               MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(1);
            }
         }
         new Tab_SetClass();
      }
   }
}
