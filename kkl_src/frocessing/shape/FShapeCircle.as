package frocessing.shape
{
   import flash.display.Graphics;
   import frocessing.core.F5Graphics;
   import frocessing.f5internal;
   
   use namespace f5internal;
   
   public class FShapeCircle extends FShapeObject implements IFShape
   {
       
      
      private var _cx:Number;
      
      private var _cy:Number;
      
      private var _r:Number;
      
      public function FShapeCircle(param1:Number, param2:Number, param3:Number, param4:FShapeContainer = null)
      {
         super(param4);
         this._init(param1,param2,param3);
      }
      
      protected function _init(param1:Number, param2:Number, param3:Number) : void
      {
         this._cx = param1;
         this._cy = param2;
         this._r = param3;
         _left = this._cx - this._r;
         _top = this._cy - this._r;
         _width = _height = this._r * 2;
         _geom_changed = false;
      }
      
      public function get cx() : Number
      {
         return this._cx;
      }
      
      public function set cx(param1:Number) : void
      {
         this._cx = param1;
         _left = this._cx - this._r;
      }
      
      public function get cy() : Number
      {
         return this._cy;
      }
      
      public function set cy(param1:Number) : void
      {
         this._cy = param1;
         _top = this._cy - this._r;
      }
      
      public function get r() : Number
      {
         return this._r;
      }
      
      public function set r(param1:Number) : void
      {
         this._r = param1;
         _left = this._cx - this._r;
         _top = this._cy - this._r;
         _width = _height = this._r * 2;
      }
      
      override protected function _draw_to_f5(param1:F5Graphics) : void
      {
         param1.__ellipse(this._cx,this._cy,this._r,this._r);
      }
      
      override protected function _draw_to_graphics(param1:Graphics) : void
      {
         param1.drawCircle(this._cx,this._cy,this._r);
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
