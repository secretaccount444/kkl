package frocessing.shape
{
   import flash.display.Graphics;
   import frocessing.core.F5Graphics;
   
   public class FShapeLine extends FShapeObject implements IFShape
   {
       
      
      private var _x1:Number;
      
      private var _y1:Number;
      
      private var _x2:Number;
      
      private var _y2:Number;
      
      public function FShapeLine(param1:Number, param2:Number, param3:Number, param4:Number, param5:FShapeContainer = null)
      {
         super(param5);
         this._init(param1,param2,param3,param4);
      }
      
      protected function _init(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this._x1 = param1;
         this._y1 = param2;
         this._x2 = param3;
         this._y2 = param4;
         _geom_changed = true;
         this._check_geom();
      }
      
      public function get x1() : Number
      {
         return this._x1;
      }
      
      public function set x1(param1:Number) : void
      {
         _geom_changed = true;
         this._x1 = param1;
      }
      
      public function get y1() : Number
      {
         return this._y1;
      }
      
      public function set y1(param1:Number) : void
      {
         _geom_changed = true;
         this._y1 = param1;
      }
      
      public function get x2() : Number
      {
         return this._x2;
      }
      
      public function set x2(param1:Number) : void
      {
         _geom_changed = true;
         this._x2 = param1;
      }
      
      public function get y2() : Number
      {
         return this._y2;
      }
      
      public function set y2(param1:Number) : void
      {
         _geom_changed = true;
         this._y2 = param1;
      }
      
      override protected function _draw_to_f5(param1:F5Graphics) : void
      {
         param1.moveTo(this._x1,this._y1);
         param1.lineTo(this._x2,this._y2);
      }
      
      override protected function _draw_to_graphics(param1:Graphics) : void
      {
         param1.moveTo(this._x1,this._y1);
         param1.lineTo(this._x2,this._y2);
      }
      
      override protected function _check_geom() : void
      {
         if(_geom_changed)
         {
            _width = Math.abs(this._x2 - this._x1);
            _height = Math.abs(this._y2 - this._y1);
            _left = Math.min(this._x1,this._x2);
            _top = Math.min(this._y1,this._y2);
            _geom_changed = false;
         }
      }
   }
}
