package frocessing.shape
{
   import flash.display.Graphics;
   import frocessing.core.F5Graphics;
   import frocessing.f5internal;
   
   use namespace f5internal;
   
   public class FShapeEllipse extends FShapeObject implements IFShape
   {
       
      
      private var _cx:Number;
      
      private var _cy:Number;
      
      public function FShapeEllipse(param1:Number, param2:Number, param3:Number, param4:Number, param5:FShapeContainer = null)
      {
         super(param5);
         this._init(param1,param2,param3,param4);
      }
      
      protected function _init(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this._cx = param1;
         this._cy = param2;
         _left = this._cx - param3;
         _top = this._cy - param4;
         _width = param3 * 2;
         _height = param4 * 2;
         _geom_changed = false;
      }
      
      public function get cx() : Number
      {
         return this._cx;
      }
      
      public function set cx(param1:Number) : void
      {
         this._cx = param1;
         _left = this._cx - this.rx;
      }
      
      public function get cy() : Number
      {
         return this._cy;
      }
      
      public function set cy(param1:Number) : void
      {
         this._cy = param1;
         _top = this._cy - this.ry;
      }
      
      public function get rx() : Number
      {
         return _width * 0.5;
      }
      
      public function set rx(param1:Number) : void
      {
         _width = param1 * 2;
         _left = this._cx - param1;
      }
      
      public function get ry() : Number
      {
         return _height * 0.5;
      }
      
      public function set ry(param1:Number) : void
      {
         _height = param1 * 2;
         _top = this._cy - param1;
      }
      
      override protected function _draw_to_f5(param1:F5Graphics) : void
      {
         param1.__ellipse(this._cx,this._cy,_width * 0.5,_height * 0.5);
      }
      
      override protected function _draw_to_graphics(param1:Graphics) : void
      {
         param1.drawEllipse(_left,_top,_width,_height);
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
