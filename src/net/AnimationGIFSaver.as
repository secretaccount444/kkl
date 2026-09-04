package net
{
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   import org.bytearray.gif.encoder.GIFEncoder;
   
   public class AnimationGIFSaver extends EventDispatcher
   {
       
      
      private var file:FileReference;
      
      public function AnimationGIFSaver()
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
      
      public function save(param1:Array, param2:uint, param3:uint, param4:String) : void
      {
         var _loc8_:BitmapData = null;
         var _loc9_:BitmapData = null;
         var _loc5_:GIFEncoder;
         (_loc5_ = new GIFEncoder()).start();
         _loc5_.setRepeat(param2);
         _loc5_.setDelay(param3);
         var _loc6_:uint = 0;
         while(_loc6_ < param1.length)
         {
            _loc8_ = param1[_loc6_];
            (_loc9_ = new BitmapData(_loc8_.width,_loc8_.height)).lock();
            _loc9_.draw(_loc8_);
            _loc9_.unlock();
            _loc5_.addFrame(_loc9_);
            _loc6_++;
         }
         _loc5_.finish();
         var _loc7_:ByteArray = _loc5_.stream;
         this.file.save(_loc7_,param4);
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
