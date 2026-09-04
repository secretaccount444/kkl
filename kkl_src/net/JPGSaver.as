package net
{
   import com.adobe.images.JPGEncoder;
   import com.adobe.images.PNGEncoder;
   import flash.display.PNGEncoderOptions;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.filesystem.FileMode;
   import flash.utils.ByteArray;
   
   public class JPGSaver extends EventDispatcher
   {
       
      
      private var file: File;
      private var data: ByteArray;
      private var defaultFilename: String;
      private var formatExtension: String;
      
      public function JPGSaver()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.file = new File();
         this.file.addEventListener(Event.SELECT,this.select);
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
         var _loc5_:JPGEncoder = null;

         this.defaultFilename = param2;

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
            this.data = (_loc5_ = new JPGEncoder(MenuClass.jpgMeter)).encode(_loc3_);
            this.formatExtension = ".jpg";
         }
         else if(MenuClass.cameraMode == 1)
         {
            if (Main.processingCode != null && Main.processingCode.doFastEncode()) {
               var opts: PNGEncoderOptions = new PNGEncoderOptions(true);
               this.data = _loc3_.encode(new Rectangle(0, 0, _loc3_.width, _loc3_.height), opts);
            } else {
               this.data = PNGEncoder.encode(_loc3_);
            }
            this.formatExtension = ".png";
         }

         if(Main.processingCode != null) {
            Main.processingCode.storeData(this.data);
         } else {
            this.file.browseForSave("Save Image");
            // this.file.save(this.data,param2);
         }
      }
      
      private function select(ev:Event) : void
      {
         var targetFile: File = ev.target as File;
         var dotIdx = targetFile.nativePath.lastIndexOf(".");

         if (targetFile.nativePath.length == 0) {
            targetFile.nativePath = this.defaultFilename;
         } else if (dotIdx < 0 || targetFile.nativePath.substring(dotIdx) != this.formatExtension) {
            targetFile.nativePath += this.formatExtension;
         }

         var stream: FileStream = new FileStream();
         stream.open(targetFile, FileMode.WRITE);
         stream.writeBytes(this.data);
         stream.close();

         this.dispatchEvent(new Event(Event.COMPLETE));
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
