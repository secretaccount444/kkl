package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   
   public class Tab_TextLoadBtn
   {
      
      public static var targetMC:MovieClip;
      
      public static var fr:FileReference = new FileReference();
       
      
      public function Tab_TextLoadBtn()
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
         try
         {
            fr.removeEventListener(Event.SELECT,onSelect);
            fr.removeEventListener(Event.CANCEL,onCancel);
         }
         catch(myError:Error)
         {
         }
         try
         {
            fr.removeEventListener(Event.COMPLETE,onComplete);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc2_:FileFilter = null;
         var _loc3_:FileFilter = null;
         var _loc4_:Array = null;
         targetMC = param1.currentTarget as MovieClip;
         if(MenuClass._nowWindowName != "tabExportWindow")
         {
            new Stage_MoveCheckClass();
            targetMC.gotoAndStop(2);
            fr.addEventListener(Event.SELECT,onSelect);
            fr.addEventListener(Event.CANCEL,onCancel);
            _loc2_ = new FileFilter("Text Files (*.txt)","*.txt;");
            _loc3_ = new FileFilter("すべてのファイル形式 (*.*)","*;");
            _loc4_ = new Array(_loc2_,_loc3_);
            fr.browse(_loc4_);
         }
      }
      
      public static function onSelect(param1:Event) : void
      {
         fr.addEventListener(Event.COMPLETE,onComplete);
         fr.load();
         fr.removeEventListener(Event.SELECT,onSelect);
         fr.removeEventListener(Event.CANCEL,onCancel);
      }
      
      public static function onComplete(param1:Event) : void
      {
         var _loc3_:Array = null;
         var _loc5_:int = 0;
         var _loc2_:String = String(fr.data);
         var _loc4_:Number;
         if((_loc4_ = _loc2_.indexOf("]/#")) == -1)
         {
            _loc3_ = _loc2_.split("***");
            _loc5_ = _loc3_.length - 1;
            if(MenuClass._nowWindowName == "tabImportWindow")
            {
               MenuClass.tabMenuAdd["tabImportWindow"].myTa.text = _loc2_;
            }
            else if(_loc5_ > 1)
            {
               new Tab_StoryLoad(_loc3_,"textIN");
            }
            else
            {
               new Tab_IEInOut("textIN",_loc2_,MenuClass._nowCharaNum);
            }
         }
         else
         {
            _loc3_ = _loc2_.split("]/#");
            new Tab_StoryLoad2(_loc3_,"textIN");
         }
         targetMC.gotoAndStop(1);
         fr.removeEventListener(Event.COMPLETE,onComplete);
      }
      
      public static function onCancel(param1:Event) : void
      {
         targetMC.gotoAndStop(1);
         fr.removeEventListener(Event.SELECT,onSelect);
         fr.removeEventListener(Event.CANCEL,onCancel);
      }
   }
}
