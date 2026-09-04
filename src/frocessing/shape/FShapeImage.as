package frocessing.shape
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import frocessing.core.F5Graphics;
   import frocessing.f5internal;
   
   use namespace f5internal;
   
   public class FShapeImage extends FShapeObject implements IFShape
   {
       
      
      protected var _bitmapData:BitmapData;
      
      protected var bd_matrix:Matrix;
      
      public function FShapeImage(param1:BitmapData, param2:Number = 0, param3:Number = 0, param4:Number = NaN, param5:Number = NaN, param6:FShapeContainer = null)
      {
         super(param6);
         this._init(param1,param2,param3,param4,param5);
      }
      
      protected function _init(param1:BitmapData, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         this._bitmapData = param1;
         _left = param2;
         _top = param3;
         if(isNaN(param4 * param5))
         {
            _width = this._bitmapData.rect.width;
            _height = this._bitmapData.rect.height;
         }
         else
         {
            _width = param4;
            _height = param5;
         }
         _geom_changed = false;
         strokeEnabled = false;
         fillEnabled = false;
         this.bd_matrix = new Matrix(_width / this._bitmapData.rect.width,0,0,_height / this._bitmapData.rect.height,_left,_top);
      }
      
      public function get x() : Number
      {
         return _left;
      }
      
      public function set x(param1:Number) : void
      {
         _left = param1;
         this.bd_matrix.tx = param1;
      }
      
      public function get y() : Number
      {
         return _top;
      }
      
      public function set y(param1:Number) : void
      {
         _top = param1;
         this.bd_matrix.ty = param1;
      }
      
      public function set width(param1:Number) : void
      {
         _width = param1;
         this.bd_matrix.a = _width / this._bitmapData.rect.width;
      }
      
      public function set height(param1:Number) : void
      {
         _height = param1;
         this.bd_matrix.d = _height / this._bitmapData.rect.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         this._bitmapData = param1;
      }
      
      override protected function _draw_to_f5(param1:F5Graphics) : void
      {
         param1._image(this._bitmapData,_left,_top,_width,_height);
      }
      
      override protected function _draw_to_graphics(param1:Graphics) : void
      {
         param1.beginBitmapFill(this._bitmapData,this.bd_matrix,false);
         param1.drawRect(_left,_top,_width,_height);
         param1.endFill();
      }
      
      override public function get left() : Number
      {
         return _left;
      }
      
      override public function get top() : Number
      {
         return _top;
      }
      
      override public function get width() : Number
      {
         return _width;
      }
      
      override public function get height() : Number
      {
         return _height;
      }
      
      override protected function _check_geom() : void
      {
         _geom_changed = false;
      }
   }
}
