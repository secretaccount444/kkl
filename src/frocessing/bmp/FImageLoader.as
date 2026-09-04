package frocessing.bmp
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import frocessing.utils.FLoadUtil;
   
   public class FImageLoader extends FImage
   {
       
      
      private var __loader:Loader;
      
      private var __status:int;
      
      private var __callback:Function;
      
      public var bgcolor:uint = 4.27819008E9;
      
      public var smooth:Boolean = false;
      
      public function FImageLoader(param1:String, param2:Loader = null, param3:Function = null, param4:BitmapData = null)
      {
         super(param4);
         if(_bitmapdata == null)
         {
            _bitmapdata = new BitmapData(4,4,true,this.bgcolor);
         }
         this.__status = 0;
         this.__callback = param3;
         if(param2 != null)
         {
            this.__loader = param2;
         }
         else
         {
            this.__loader = new Loader();
         }
         FLoadUtil.load(param1,this.__loader,this.__onComplete,this.__onError,int.MAX_VALUE);
      }
      
      private function __onComplete() : void
      {
         var _loc2_:Boolean = false;
         var _loc1_:DisplayObject = this.__loader.content;
         if(_loc1_.width != _bitmapdata.width || _loc1_.height != _bitmapdata.height)
         {
            _loc2_ = _bitmapdata.transparent;
            dispose();
            _bitmapdata = new BitmapData(_loc1_.width,_loc1_.height,_loc2_);
         }
         else
         {
            _bitmapdata.fillRect(_bitmapdata.rect,this.bgcolor);
         }
         _bitmapdata.draw(_loc1_,null,null,null,null,this.smooth);
         this.__loader.unload();
         this.__status = 1;
         this.__load_terminated();
      }
      
      private function __onError() : void
      {
         this.__status = -1;
         this.__load_terminated();
      }
      
      private function __load_terminated() : void
      {
         this.__loader = null;
         if(this.__callback != null)
         {
            this.__callback.call();
            this.__callback = null;
         }
      }
      
      public function get status() : int
      {
         return this.__status;
      }
      
      public function get success() : Boolean
      {
         return this.status == 1;
      }
   }
}
