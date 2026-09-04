package net
{
   import com.adobe.images.JPGEncoder;
   import com.adobe.images.PNGEncoder;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   
   public class JPGSaver extends EventDispatcher
   {
       
      
      private var file:FileReference;
      
      public function JPGSaver()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.file = new FileReference();
         this.file.addEventListener(Event.OPEN,this.open,false,0,true);
         this.file.addEventListener(ProgressEvent.PROGRESS,this.progress,false,0,true);
         this.file.addEventListener(Event.COMPLETE,this.complete,false,0,true);
         this.file.addEventListener(IOErrorEvent.IO_ERROR,this.ioerror,false,0,true);
         this.file.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.httpstatus,false,0,true);
         this.file.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityerror,false,0,true);
      }
      
      public function save(param1:BitmapData, param2:String) : void
      {
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         var _loc5_:JPGEncoder = null;
         if(MenuClass.cameraMode == 0)
         {
            _loc3_ = new BitmapData(param1.width,param1.height);
         }
         else if(MenuClass.cameraMode == 1)
         {
            _loc3_ = new BitmapData(param1.width,param1.height,true,16777215);
         }
         _loc3_.lock();
         _loc3_.draw(param1);
         _loc3_.unlock();
         if(MenuClass.cameraMode == 0)
         {
            _loc4_ = (_loc5_ = new JPGEncoder(MenuClass.jpgMeter)).encode(_loc3_);
         }
         else if(MenuClass.cameraMode == 1)
         {
            _loc4_ = PNGEncoder.encode(_loc3_);
         }
         this.file.save(_loc4_,param2);
      }
      
      private function open(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      private function progress(param1:ProgressEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function complete(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      private function ioerror(param1:IOErrorEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function httpstatus(param1:HTTPStatusEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function securityerror(param1:SecurityErrorEvent) : void
      {
         dispatchEvent(param1);
      }
   }
}
