package frocessing.geom
{
   import flash.geom.Matrix;
   
   public class FGradientMatrix extends Matrix
   {
       
      
      public function FGradientMatrix(param1:Number = 1, param2:Number = 0, param3:Number = 0, param4:Number = 1, param5:Number = 0, param6:Number = 0)
      {
         super();
         this.identity();
         this.appendMatrix(param1,param2,param3,param4,param5,param6);
      }
      
      public static function defaultGradient() : Matrix
      {
         var _loc1_:Matrix = new Matrix();
         _loc1_.createGradientBox(200,200,0,-100,-100);
         return _loc1_;
      }
      
      override public function identity() : void
      {
         a = 0.0006103515625;
         b = 0;
         c = 0;
         d = 0.0006103515625;
         tx = 0;
         ty = 0;
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
      
      public function create(param1:Number = 1, param2:Number = 0, param3:Number = 0, param4:Number = 1, param5:Number = 0, param6:Number = 0) : void
      {
         this.identity();
         this.appendMatrix(param1,param2,param3,param4,param5,param6);
      }
      
      public function createLinear(param1:Number = 0, param2:Number = 0, param3:Number = 1, param4:Number = 0) : void
      {
         this.identity();
         this.appendMatrix(param3 - param1,param4 - param2,param2 - param4,param3 - param1,(param1 + param3) * 0.5,(param2 + param4) * 0.5);
      }
      
      public function createSkew(param1:Number = 0, param2:Number = 0, param3:Number = 1, param4:Number = 0, param5:Number = 0, param6:Number = 1, param7:Number = 0) : void
      {
         this.identity();
         if(param7 != 0)
         {
            this.rotate(param7);
         }
         this.appendMatrix(param3 - param1,param4 - param2,param5 - param1,param6 - param2,(param3 + param5) * 0.5,(param4 + param6) * 0.5);
      }
      
      public function createRadial(param1:Number = 0.5, param2:Number = 0.5, param3:Number = 0.5, param4:Number = 0) : void
      {
         this.identity();
         if(param4 != 0)
         {
            this.rotate(param4);
         }
         this.appendMatrix(param3 * 2,0,0,param3 * 2,param1,param2);
      }
      
      public function createSkewRadial(param1:Number = 0.5, param2:Number = 0.5, param3:Number = 1.0, param4:Number = 0.5, param5:Number = 0.5, param6:Number = 1.0, param7:Number = 0) : void
      {
         this.identity();
         if(param7 != 0)
         {
            this.rotate(param7);
         }
         this.appendMatrix((param3 - param1) * 2,(param4 - param2) * 2,(param5 - param1) * 2,(param6 - param2) * 2,param1,param2);
      }
      
      override public function createGradientBox(param1:Number, param2:Number, param3:Number = 0, param4:Number = 0, param5:Number = 0) : void
      {
         super.createGradientBox(param1,param2,param3,param4,param5);
      }
      
      public function map(param1:Number, param2:Number, param3:Number, param4:Number) : Matrix
      {
         return new Matrix(a * param3,b * param4,c * param3,d * param4,tx * param3 + param1,ty * param4 + param2);
      }
      
      public function appendMatrix(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc7_:Number = a * param1 + b * param3;
         _loc8_ = a * param2 + b * param4;
         _loc9_ = c * param1 + d * param3;
         _loc10_ = c * param2 + d * param4;
         _loc11_ = tx * param1 + ty * param3 + param5;
         _loc12_ = tx * param2 + ty * param4 + param6;
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
      
      override public function toString() : String
      {
         return "[FGradientMatrix (" + a + "," + b + ")(" + c + "," + d + ")(" + tx + "," + ty + ")]";
      }
   }
}
