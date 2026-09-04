package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.FileReference;
   
   public class Tab_TextSaveAllBtn
   {
      
      public static var targetMC:MovieClip;
      
      public static var fr:FileReference = new FileReference();
      
      public static var txtSaveData:String;
       
      
      public function Tab_TextSaveAllBtn()
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
         var _loc3_:int = 0;
         targetMC = param1.currentTarget as MovieClip;
         new Stage_MoveCheckClass();
         targetMC.gotoAndStop(2);
         var _loc2_:* = Main.saveAllVersion + "]#/";
         Tab_SaveClass.saveObj = MenuClass.so_Save.data;
         Tab_SaveClass.saveData = Tab_SaveClass.saveObj.saveData;
         _loc3_ = 0;
         while(_loc3_ <= 51)
         {
            if(Tab_SaveClass.saveData[_loc3_].fullYearData != false)
            {
               if(Tab_SaveClass.saveObj.saveData[_loc3_].systemData == null)
               {
                  _loc2_ = _loc2_ + Tab_SaveClass.saveData[_loc3_].fullYearData + "_" + Tab_SaveClass.saveData[_loc3_].monthData + "_" + Tab_SaveClass.saveData[_loc3_].dateData + "_" + Tab_SaveClass.saveData[_loc3_].hoursData + "_" + Tab_SaveClass.saveData[_loc3_].minutesData + "_" + Tab_SaveClass.saveData[_loc3_].lockData + "_" + Tab_SaveClass.saveData[_loc3_].colorData + "]#/" + Tab_SaveClass.saveData[_loc3_].memoData + "]#/" + Tab_SaveClass.saveData[_loc3_].charaData;
                  if(_loc3_ != 51)
                  {
                     _loc2_ += "]#/";
                  }
               }
               else
               {
                  _loc2_ = _loc2_ + "nodata" + "]#/" + "nodata" + "]#/" + "nodata";
                  if(_loc3_ != 51)
                  {
                     _loc2_ += "]#/";
                  }
               }
            }
            else
            {
               _loc2_ = _loc2_ + "nodata" + "]#/" + "nodata" + "]#/" + "nodata";
               if(_loc3_ != 51)
               {
                  _loc2_ += "]#/";
               }
            }
            _loc3_++;
         }
         fr.addEventListener(Event.COMPLETE,onComplete);
         fr.addEventListener(Event.CANCEL,onCancel);
         var _loc4_:Date = new Date();
         var _loc5_:* = (_loc5_ = String(_loc4_.getFullYear())).substring(2,4);
         var _loc6_:String;
         if((_loc6_ = String(_loc4_.getMonth() + 1)).length == 1)
         {
            _loc6_ = "0" + _loc6_;
         }
         var _loc7_:String;
         if((_loc7_ = String(_loc4_.getDate())).length == 1)
         {
            _loc7_ = "0" + _loc7_;
         }
         _loc5_ = _loc5_ + _loc6_ + _loc7_ + "save_all";
         fr.save(_loc2_,_loc5_ + ".txt");
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
