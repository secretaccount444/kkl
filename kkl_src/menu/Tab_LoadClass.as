package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.FileFilter;
   import undo.LoadImageAction;
   
   public class Tab_LoadClass
   {
      
      public static var targetMC:MovieClip;

      public static var curUndoAction: LoadImageAction;
       
      
      public function Tab_LoadClass()
      {
         super();
      }
      
      public static function pushUndoAction(newURL: String) : void {
         if (curUndoAction) {
            curUndoAction.newURL = newURL;
            Main.undoTimeline.push(curUndoAction);
         }
         curUndoAction = null;
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
         var _loc2_:FileFilter = null;
         var _loc3_:FileFilter = null;
         var _loc4_:Array = null;
         targetMC = param1.currentTarget as MovieClip;
         new Stage_MoveCheckClass();

         if(MenuClass._nowHeaderName == "Loadmenu")
         {
            curUndoAction = new LoadImageAction(MenuClass.systemData["LoadPlus"]["_menu"], 100);
         
            if(MenuClass.systemData["URLLocal"]["_check"])
            {
               Tab_FileReference.loadCheck = false;
               pushUndoAction(MenuClass.tabMenuAdd["URLText"].txt.text);
               new Tab_LoadURL("menu",MenuClass.systemData["LoadPlus"]["_menu"]);
            }
            else
            {
               _loc2_ = new FileFilter("Images(JPEG, GIF, PNG, SWF, SVG)","*.jpg;*.gif;*.png;*.swf;*.svg");
               _loc3_ = new FileFilter("すべてのファイル形式 (*.*)","*;");
               _loc4_ = new Array(_loc2_,_loc3_);
               Tab_FileReference.fileReference.browse(_loc4_);
               Tab_FileReference.loadCheck = false;
            }
         }
         else if(MenuClass._nowHeaderName == "CharaLoad")
         {
            curUndoAction = new LoadImageAction(MenuClass.systemData["CharaLoadPlus"]["_menu"], MenuClass._nowCharaNum);
            if(MenuClass.systemData["CharaURLLocal"]["_check"])
            {
               Tab_FileReference.loadCheck = false;
               pushUndoAction(MenuClass.tabMenuAdd["CharaURLText"].txt.text);
               new Tab_LoadURL2("menu",MenuClass.systemData["CharaLoadPlus"]["_menu"],MenuClass._nowCharaNum);
            }
            else
            {
               _loc2_ = new FileFilter("Images(JPEG, GIF, PNG, SWF, SVG)","*.jpg;*.gif;*.png;*.swf;*.svg");
               _loc3_ = new FileFilter("すべてのファイル形式 (*.*)","*;");
               _loc4_ = new Array(_loc2_,_loc3_);
               Tab_FileReference2.fileReference.browse(_loc4_);
               Tab_FileReference.loadCheck = false;
            }
         }
         targetMC.gotoAndStop(2);
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
