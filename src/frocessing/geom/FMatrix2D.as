package frocessing.geom
{
   import flash.geom.Matrix;
   
   public class FMatrix2D extends Matrix
   {
       
      
      public function FMatrix2D(param1:Number = 1.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0, param5:Number = 0.0, param6:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public static function scaleMatrix(param1:Number = 1.0, param2:Number = 1.0) : FMatrix2D
      {
         return new FMatrix2D(param1,0,0,param2,0,0);
      }
      
      public static function translateMatrix(param1:Number, param2:Number) : FMatrix2D
      {
         return new FMatrix2D(1,0,0,1,param1,param2);
      }
      
      public static function rotateMatrix(param1:Number) : FMatrix2D
      {
         var _loc2_:Number = Math.sin(param1);
         var _loc3_:Number = Math.cos(param1);
         return new FMatrix2D(_loc3_,_loc2_,-_loc2_,_loc3_,0,0);
      }
      
      public function setMatrix(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         a = param1;
         b = param2;
         c = param3;
         d = param4;
         tx = param5;
         ty = param6;
      }
      
      override public function clone() : Matrix
      {
         return new FMatrix2D(a,b,c,d,tx,ty);
      }
      
      public function equals(param1:Matrix) : Boolean
      {
         return a == param1.a && b == param1.b && c == param1.c && d == param1.d && tx == param1.tx && ty == param1.ty;
      }
      
      public function prepend(param1:Matrix) : void
      {
         var _loc2_:Number = param1.a * a + param1.b * c;
         var _loc3_:Number = param1.a * b + param1.b * d;
         var _loc4_:Number = param1.c * a + param1.d * c;
         var _loc5_:Number = param1.c * b + param1.d * d;
         var _loc6_:Number = param1.tx * a + param1.ty * c + tx;
         var _loc7_:Number = param1.tx * b + param1.ty * d + ty;
         a = _loc2_;
         b = _loc3_;
         c = _loc4_;
         d = _loc5_;
         tx = _loc6_;
         ty = _loc7_;
      }
      
      public function prependMatrix(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc12_:Number = NaN;
         var _loc7_:Number = param1 * a + param2 * c;
         var _loc8_:Number = param1 * b + param2 * d;
         var _loc9_:Number = param3 * a + param4 * c;
         var _loc10_:Number = param3 * b + param4 * d;
         var _loc11_:Number = param5 * a + param6 * c + tx;
         _loc12_ = param5 * b + param6 * d + ty;
         a = _loc7_;
         b = _loc8_;
         c = _loc9_;
         d = _loc10_;
         tx = _loc11_;
         ty = _loc12_;
      }
      
      public function prependScale(param1:Number, param2:Number) : void
      {
         a *= param1;
         b *= param1;
         c *= param2;
         d *= param2;
      }
      
      public function prependTranslation(param1:Number, param2:Number) : void
      {
         tx += param1 * a + param2 * c;
         ty += param1 * b + param2 * d;
      }
      
      public function prependRotation(param1:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:Number = Math.sin(param1);
         var _loc3_:Number = Math.cos(param1);
         var _loc4_:Number = _loc3_ * a + _loc2_ * c;
         _loc5_ = _loc3_ * b + _loc2_ * d;
         _loc6_ = -_loc2_ * a + _loc3_ * c;
         _loc7_ = -_loc2_ * b + _loc3_ * d;
         a = _loc4_;
         b = _loc5_;
         c = _loc6_;
         d = _loc7_;
      }
      
      override public function concat(param1:Matrix) : void
      {
         var _loc2_:Number = a * param1.a + b * param1.c;
         var _loc3_:Number = a * param1.b + b * param1.d;
         var _loc4_:Number = c * param1.a + d * param1.c;
         var _loc5_:Number = c * param1.b + d * param1.d;
         var _loc6_:Number = tx * param1.a + ty * param1.c + param1.tx;
         var _loc7_:Number = tx * param1.b + ty * param1.d + param1.ty;
         a = _loc2_;
         b = _loc3_;
         c = _loc4_;
         d = _loc5_;
         tx = _loc6_;
         ty = _loc7_;
      }
      
      public function appendMatrix(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:Number = a * param1 + b * param3;
         var _loc8_:Number = a * param2 + b * param4;
         var _loc9_:Number = c * param1 + d * param3;
         var _loc10_:Number = c * param2 + d * param4;
         var _loc11_:Number = tx * param1 + ty * param3 + param5;
         var _loc12_:Number = tx * param2 + ty * param4 + param6;
         a = _loc7_;
         b = _loc8_;
         c = _loc9_;
         d = _loc10_;
         tx = _loc11_;
         ty = _loc12_;
      }
      
      override public function scale(param1:Number, param2:Number) : void
      {
         a *= param1;
         b *= param2;
         c *= param1;
         d *= param2;
         tx *= param1;
         ty *= param2;
      }
      
      override public function translate(param1:Number, param2:Number) : void
      {
         tx += param1;
         ty += param2;
      }
      
      override public function rotate(param1:Number) : void
      {
         var _loc2_:Number = Math.sin(param1);
         var _loc3_:Number = Math.cos(param1);
         var _loc4_:Number = a * _loc3_ - b * _loc2_;
         var _loc5_:Number = a * _loc2_ + b * _loc3_;
         var _loc6_:Number = c * _loc3_ - d * _loc2_;
         var _loc7_:Number = c * _loc2_ + d * _loc3_;
         var _loc8_:Number = tx * _loc3_ - ty * _loc2_;
         var _loc9_:Number = tx * _loc2_ + ty * _loc3_;
         a = _loc4_;
         b = _loc5_;
         c = _loc6_;
         d = _loc7_;
         tx = _loc8_;
         ty = _loc9_;
      }
      
      public function product(param1:Matrix) : FMatrix2D
      {
         return new FMatrix2D(a * param1.a + b * param1.c,a * param1.b + b * param1.d,c * param1.a + d * param1.c,c * param1.b + d * param1.d,tx * param1.a + ty * param1.c + param1.tx,tx * param1.b + ty * param1.d + param1.ty);
      }
      
      public function preProduct(param1:Matrix) : FMatrix2D
      {
         return new FMatrix2D(param1.a * a + param1.b * c,param1.a * b + param1.b * d,param1.c * a + param1.d * c,param1.c * b + param1.d * d,param1.tx * a + param1.ty * c + tx,param1.tx * b + param1.ty * d + ty);
      }
      
      public function add(param1:Matrix) : FMatrix2D
      {
         return new FMatrix2D(a + param1.a,b + param1.b,c + param1.c,d + param1.d,tx + param1.tx,ty + param1.ty);
      }
      
      public function subtract(param1:Matrix) : FMatrix2D
      {
         return new FMatrix2D(a - param1.a,b - param1.b,c - param1.c,d - param1.d,tx - param1.tx,ty - param1.ty);
      }
      
      public function multi(param1:Number) : FMatrix2D
      {
         return new FMatrix2D(a * param1,b * param1,c * param1,d * param1,tx * param1,ty * param1);
      }
      
      public function offset(param1:Matrix) : void
      {
         a += param1.a;
         b += param1.b;
         c += param1.c;
         d += param1.d;
         tx += param1.tx;
         ty += param1.ty;
      }
      
      public function createUVBox(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number = 1, param14:Number = 1) : void
      {
         param7 *= param13;
         param8 *= param14;
         var _loc15_:Number = param13 * param9 - param7;
         var _loc16_:Number = param14 * param10 - param8;
         var _loc17_:Number = param13 * param11 - param7;
         var _loc18_:Number = param14 * param12 - param8;
         var _loc19_:Number;
         if((_loc19_ = _loc15_ * _loc18_ - _loc16_ * _loc17_) == 0)
         {
            if(_loc15_ == 0 && _loc16_ == 0)
            {
               _loc15_ = 1;
            }
            else if(_loc17_ == 0 && _loc18_ == 0)
            {
               _loc18_ = 1;
            }
            else if(_loc15_ == 0 && _loc17_ == 0)
            {
               _loc17_ += 1;
            }
            else
            {
               _loc18_ += 1;
            }
            _loc19_ = _loc15_ * _loc18_ - _loc16_ * _loc17_;
         }
         a = _loc18_ / _loc19_;
         b = -_loc16_ / _loc19_;
         c = -_loc17_ / _loc19_;
         d = _loc15_ / _loc19_;
         tx = (_loc17_ * param8 - _loc18_ * param7) / _loc19_;
         ty = (_loc16_ * param7 - _loc15_ * param8) / _loc19_;
         this.appendMatrix(param3 - param1,param4 - param2,param5 - param1,param6 - param2,param1,param2);
      }
      
      override public function toString() : String
      {
         return "[FMatrix2D (" + a + "," + b + ")(" + c + "," + d + ")(" + tx + "," + ty + ")]";
      }
   }
}
