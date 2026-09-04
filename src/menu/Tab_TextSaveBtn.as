package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.FileReference;
   
   public class Tab_TextSaveBtn
   {
      
      public static var targetMC:MovieClip;
      
      public static var fr:FileReference = new FileReference();
      
      public static var txtSaveData:String;
       
      
      public function Tab_TextSaveBtn()
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
            fr.removeEventListener(Event.COMPLETE,onComplete);
            fr.removeEventListener(Event.CANCEL,onCancel);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:Date = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Array = null;
         targetMC = param1.currentTarget as MovieClip;
         if(MenuClass._nowWindowName != "tabImportWindow")
         {
            new Stage_MoveCheckClass();
            targetMC.gotoAndStop(2);
            _loc2_ = "";
            if(MenuClass.StoryTimeLineData.length > 1 && MenuClass._nowHeaderName == "Story")
            {
               _loc7_ = MenuClass.StoryTimeLineData.length;
               _loc8_ = 0;
               while(_loc8_ < _loc7_)
               {
                  if(_loc8_ == 0)
                  {
                     _loc2_ = MenuClass.StoryTimeLineData[_loc8_][9];
                  }
                  else
                  {
                     _loc2_ = _loc2_ + "]/#" + MenuClass.StoryTimeLineData[_loc8_][9];
                  }
                  _loc8_++;
               }
            }
            else if(MenuClass._nowWindowName == "tabExportWindow")
            {
               _loc2_ = MenuClass.tabMenuAdd["tabExportWindow"].myTa.text;
            }
            else
            {
               new Tab_IESet("txtSave");
               _loc2_ = txtSaveData;
            }
            _loc2_ = _loc2_.replace(/\r/g,"\r\n");
            fr.addEventListener(Event.COMPLETE,onComplete);
            fr.addEventListener(Event.CANCEL,onCancel);
            _loc3_ = new Date();
            _loc4_ = (_loc4_ = String(_loc3_.getFullYear())).substring(2,4);
            if((_loc5_ = String(_loc3_.getMonth() + 1)).length == 1)
            {
               _loc5_ = "0" + _loc5_;
            }
            if((_loc6_ = String(_loc3_.getDate())).length == 1)
            {
               _loc6_ = "0" + _loc6_;
            }
            if(MenuClass.StoryTimeLineData.length > 1 && MenuClass._nowHeaderName == "Story")
            {
               _loc4_ = _loc4_ + _loc5_ + _loc6_ + "story";
            }
            else
            {
               _loc4_ = _loc4_ + _loc5_ + _loc6_ + "kisekae";
            }
            fr.save(_loc2_,_loc4_ + ".txt");
         }
      }
      
      public static function onComplete(param1:Event) : void
      {
         targetMC.gotoAndStop(1);
         fr.removeEventListener(Event.COMPLETE,onComplete);
         fr.removeEventListener(Event.CANCEL,onCancel);
      }
      
      public static function onCancel(param1:Event) : void
      {
         targetMC.gotoAndStop(1);
         fr.removeEventListener(Event.COMPLETE,onComplete);
         fr.removeEventListener(Event.CANCEL,onCancel);
      }
   }
}
