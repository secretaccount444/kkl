package frocessing.bmp
{
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Point;
   
   public class FImage
   {
      
      protected static const _zeropoint:Point = new Point();
       
      
      protected var _bitmapdata:BitmapData;
      
      public function FImage(param1:BitmapData)
      {
         super();
         this._bitmapdata = param1;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapdata;
      }
      
      public function mask(param1:BitmapData, param2:uint = 8) : void
      {
         this._bitmapdata.copyChannel(param1,this._bitmapdata.rect,_zeropoint,param2,BitmapDataChannel.ALPHA);
      }
      
      public function dispose() : void
      {
         this._bitmapdata.dispose();
      }
      
      public function valueOf() : BitmapData
      {
         return this._bitmapdata;
      }
   }
}
