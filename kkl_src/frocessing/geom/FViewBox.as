package frocessing.geom
{
   import flash.geom.Matrix;
   
   public class FViewBox
   {
      
      public static const NO_SCALE:String = "noscale";
      
      public static const EXACT_FIT:String = "exactfit";
      
      public static const NO_BORDER:String = "noborder";
      
      public static const SHOW_ALL:String = "showall";
      
      public static const CENTER:String = "C";
      
      public static const BOTTOM:String = "B";
      
      public static const BOTTOM_LEFT:String = "BL";
      
      public static const BOTTOM_RIGHT:String = "BR";
      
      public static const LEFT:String = "L";
      
      public static const RIGHT:String = "R";
      
      public static const TOP:String = "T";
      
      public static const TOP_LEFT:String = "TL";
      
      public static const TOP_RIGHT:String = "TR";
      
      private static const px:Object = {
         "C":0.5,
         "L":0,
         "R":1,
         "B":0.5,
         "BL":0,
         "BR":1,
         "T":0.5,
         "TL":0,
         "TR":1
      };
      
      private static const py:Object = {
         "C":0.5,
         "L":0.5,
         "R":0.5,
         "B":1,
         "BL":1,
         "BR":1,
         "T":0,
         "TL":0,
         "TR":0
      };
       
      
      private var _x:Number;
      
      private var _y:Number;
      
      private var _width:Number;
      
      private var _height:Number;
      
      public var align:String = "C";
      
      public var scaleMode:String = "noscale";
      
      public function FViewBox(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this._x = param1;
         this._y = param2;
         this._width = param3;
         this._height = param4;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function get y() : Number
      {
         return this._y;
      }
      
      public function set y(param1:Number) : void
      {
         this._y = param1;
      }
      
      public function get width() : Number
      {
         return this._width;
      }
      
      public function set width(param1:Number) : void
      {
         this._width = param1;
      }
      
      public function get height() : Number
      {
         return this._height;
      }
      
      public function set height(param1:Number) : void
      {
         this._height = param1;
      }
      
      public function getTransformMatrix(param1:Number, param2:Number, param3:Number, param4:Number) : Matrix
      {
         var _loc5_:FMatrix2D = new FMatrix2D();
         var _loc6_:Number = this._width;
         var _loc7_:Number = this._height;
         var _loc8_:Number = 1;
         var _loc9_:Number = 1;
         if(this.scaleMode == EXACT_FIT)
         {
            _loc8_ = param3 / _loc6_;
            _loc9_ = param4 / _loc7_;
            _loc6_ = param3;
            _loc7_ = param4;
         }
         else if(this.scaleMode == SHOW_ALL)
         {
            _loc8_ = param3 / _loc6_;
            _loc9_ = param4 / _loc7_;
            if(_loc8_ <= _loc9_)
            {
               _loc9_ = _loc8_;
               _loc6_ = param3;
               _loc7_ *= _loc9_;
            }
            else
            {
               _loc8_ = _loc9_;
               _loc6_ *= _loc8_;
               _loc7_ = param4;
            }
         }
         else if(this.scaleMode == NO_BORDER)
         {
            _loc8_ = param3 / _loc6_;
            _loc9_ = param4 / _loc7_;
            if(_loc8_ >= _loc9_)
            {
               _loc9_ = _loc8_;
               _loc6_ = param3;
               _loc7_ *= _loc9_;
            }
            else
            {
               _loc8_ = _loc9_;
               _loc6_ *= _loc8_;
               _loc7_ = param4;
            }
         }
         _loc5_.translate(-this._x,-this._y);
         _loc5_.scale(_loc8_,_loc9_);
         _loc5_.translate(param1 + (param3 - _loc6_) * px[this.align],param2 + (param4 - _loc7_) * py[this.align]);
         return _loc5_;
      }
   }
}
