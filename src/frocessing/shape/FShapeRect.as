package frocessing.shape
{
   import flash.display.Graphics;
   import frocessing.core.F5Graphics;
   import frocessing.f5internal;
   
   use namespace f5internal;
   
   public class FShapeRect extends FShapeObject implements IFShape
   {
       
      
      private var _rx:Number;
      
      private var _ry:Number;
      
      public function FShapeRect(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0, param7:FShapeContainer = null)
      {
         super(param7);
         this._init(param1,param2,param3,param4,param5,param6);
      }
      
      protected function _init(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         _left = param1;
         _top = param2;
         _width = param3;
         _height = param4;
         this._rx = param5 > _width * 0.5 ? Number(_width * 0.5) : Number(param5);
         this._ry = param6 > _height * 0.5 ? Number(_height * 0.5) : Number(param6);
         _geom_changed = false;
      }
      
      public function get x() : Number
      {
         return _left;
      }
      
      public function set x(param1:Number) : void
      {
         _left = param1;
      }
      
      public function get y() : Number
      {
         return _top;
      }
      
      public function set y(param1:Number) : void
      {
         _top = param1;
      }
      
      public function set width(param1:Number) : void
      {
         _width = param1;
      }
      
      public function set height(param1:Number) : void
      {
         _height = param1;
      }
      
      public function get rx() : Number
      {
         return this._rx;
      }
      
      public function set rx(param1:Number) : void
      {
         this._rx = param1;
      }
      
      public function get ry() : Number
      {
         return this._ry;
      }
      
      public function set ry(param1:Number) : void
      {
         this._ry = param1;
      }
      
      override protected function _draw_to_f5(param1:F5Graphics) : void
      {
         if(this._rx <= 0 || this._ry <= 0)
         {
            param1.moveTo(_left,_top);
            param1.lineTo(_left + _width,_top);
            param1.lineTo(_left + _width,_top + _height);
            param1.lineTo(_left,_top + _height);
            param1.closePath();
         }
         else
         {
            param1.__roundrect(_left,_top,_left + _width,_top + _height,this.rx,this.ry);
         }
      }
      
      override protected function _draw_to_graphics(param1:Graphics) : void
      {
         if(this._rx <= 0 || this._ry <= 0)
         {
            param1.drawRect(_left,_top,_width,_height);
         }
         else
         {
            param1.drawRoundRect(_left,_top,_width,_height,this._rx * 2,this._ry * 2);
         }
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
