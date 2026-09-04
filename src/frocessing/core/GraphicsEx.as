package frocessing.core
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import frocessing.bmp.FBitmapData;
   import frocessing.geom.FGradientMatrix;
   import frocessing.geom.FMatrix2D;
   
   public class GraphicsEx
   {
       
      
      protected var gc:Graphics;
      
      public var fillDo:Boolean = true;
      
      public var fillColor:uint = 16777215;
      
      public var fillAlpha:Number = 1.0;
      
      var __stroke:Boolean = false;
      
      var __stroke_resume:Boolean = false;
      
      public var strokeColor:uint = 0;
      
      public var strokeAlpha:Number = 1.0;
      
      public var thickness:Number = 0;
      
      public var pixelHinting:Boolean = false;
      
      public var scaleMode:String = "normal";
      
      public var caps:String = null;
      
      public var joints:String = null;
      
      public var miterLimit:Number = 3;
      
      public var bezierDetail:uint = 20;
      
      public var splineDetail:uint = 20;
      
      private var __splineTightness:Number = 1.0;
      
      var __tightness:Number;
      
      var __startX:Number = 0;
      
      var __startY:Number = 0;
      
      var __x:Number = 0;
      
      var __y:Number = 0;
      
      var default_gradient_matrix:Matrix;
      
      public var imageSmoothing:Boolean = false;
      
      public var imageDetail:uint = 4;
      
      private var __matrix:FMatrix2D;
      
      private var __image:BitmapData;
      
      private var __image_width:int;
      
      private var __image_height:int;
      
      private var vx0:Number;
      
      private var vy0:Number;
      
      private var vx1:Number;
      
      private var vy1:Number;
      
      var pixelbitmap:FBitmapData;
      
      public function GraphicsEx(param1:Graphics)
      {
         this.__tightness = this.__splineTightness / 6;
         super();
         this.gc = param1;
         this.__matrix = new FMatrix2D();
         this.default_gradient_matrix = FGradientMatrix.defaultGradient();
      }
      
      public function clear() : void
      {
         this.gc.clear();
         this.__x = this.__y = this.__startX = this.__startY = 0;
         if(this.__stroke)
         {
            this.applyStroke();
         }
      }
      
      function __reset() : void
      {
         this.gc.moveTo(0,0);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.gc.moveTo(param1,param2);
         this.__x = this.__startX = param1;
         this.__y = this.__startY = param2;
      }
      
      public function lineTo(param1:Number, param2:Number) : void
      {
         this.gc.lineTo(param1,param2);
         this.__x = param1;
         this.__y = param2;
      }
      
      public function curveTo(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.gc.curveTo(param1,param2,param3,param4);
         this.__x = param3;
         this.__y = param4;
      }
      
      public function bezierTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc9_:Number = NaN;
         var _loc7_:Number = 1 / this.bezierDetail;
         var _loc8_:Number = 0;
         var _loc10_:int = 1;
         while(_loc10_ <= this.bezierDetail)
         {
            _loc8_ += _loc7_;
            _loc9_ = 1 - _loc8_;
            this.gc.lineTo(this.__x * _loc9_ * _loc9_ * _loc9_ + 3 * param1 * _loc8_ * _loc9_ * _loc9_ + 3 * param3 * _loc8_ * _loc8_ * _loc9_ + param5 * _loc8_ * _loc8_ * _loc8_,this.__y * _loc9_ * _loc9_ * _loc9_ + 3 * param2 * _loc8_ * _loc9_ * _loc9_ + 3 * param4 * _loc8_ * _loc8_ * _loc9_ + param6 * _loc8_ * _loc8_ * _loc8_);
            _loc10_++;
         }
         this.__x = param5;
         this.__y = param6;
      }
      
      public function splineTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc9_:Number = NaN;
         var _loc7_:Number = 1 / this.splineDetail;
         var _loc8_:Number = 0;
         param1 = this.__x + this.__tightness * (param3 - param1);
         param2 = this.__y + this.__tightness * (param4 - param2);
         param5 = param3 - this.__tightness * (param5 - this.__x);
         param6 = param4 - this.__tightness * (param6 - this.__y);
         var _loc10_:int = 1;
         while(_loc10_ <= this.splineDetail)
         {
            _loc8_ += _loc7_;
            _loc9_ = 1 - _loc8_;
            this.gc.lineTo(this.__x * _loc9_ * _loc9_ * _loc9_ + 3 * param1 * _loc8_ * _loc9_ * _loc9_ + 3 * param5 * _loc8_ * _loc8_ * _loc9_ + param3 * _loc8_ * _loc8_ * _loc8_,this.__y * _loc9_ * _loc9_ * _loc9_ + 3 * param2 * _loc8_ * _loc9_ * _loc9_ + 3 * param6 * _loc8_ * _loc8_ * _loc9_ + param4 * _loc8_ * _loc8_ * _loc8_);
            _loc10_++;
         }
         this.__x = param3;
         this.__y = param4;
      }
      
      public function get splineTightness() : Number
      {
         return this.__splineTightness;
      }
      
      public function set splineTightness(param1:Number) : void
      {
         this.__splineTightness = param1;
         this.__tightness = param1 / 6;
      }
      
      public function closePath() : void
      {
         this.gc.lineTo(this.__startX,this.__startY);
         this.__x = this.__startX;
         this.__y = this.__startY;
      }
      
      public function moveToLast() : void
      {
         this.gc.moveTo(this.__x,this.__y);
         this.__startX = this.__x;
         this.__startY = this.__y;
      }
      
      public function point(param1:Number, param2:Number) : void
      {
         this.abortStroke();
         this.gc.moveTo(param1,param2);
         this.gc.beginFill(this.strokeColor,this.strokeAlpha);
         this.gc.lineTo(param1 + 1,param2);
         this.gc.lineTo(param1 + 1,param2 + 1);
         this.gc.lineTo(param1,param2 + 1);
         this.gc.endFill();
         this.resumeStroke();
         this.__x = this.__startX = param1;
         this.__y = this.__startY = param2;
      }
      
      public function abortStroke() : Boolean
      {
         if(this.__stroke)
         {
            this.__stroke_resume = true;
            this.noStroke();
            return true;
         }
         this.__stroke_resume = false;
         return false;
      }
      
      public function resumeStroke() : Boolean
      {
         if(this.__stroke_resume)
         {
            this.__stroke_resume = false;
            this.applyStroke();
            return true;
         }
         this.__stroke_resume = false;
         return false;
      }
      
      public function reapplyStroke() : void
      {
         if(this.__stroke)
         {
            this.applyStroke();
         }
      }
      
      public function applyStroke() : void
      {
         this.gc.lineStyle(this.thickness,this.strokeColor,this.strokeAlpha,this.pixelHinting,this.scaleMode,this.caps,this.joints,this.miterLimit);
         this.__stroke = true;
      }
      
      public function noStroke() : void
      {
         this.gc.lineStyle();
         this.__stroke = false;
      }
      
      public function applyFill() : void
      {
         if(this.fillDo)
         {
            this.moveToLast();
            this.gc.beginFill(this.fillColor,this.fillAlpha);
         }
      }
      
      public function lineStyle(param1:Number = NaN, param2:uint = 0, param3:Number = 1, param4:Boolean = false, param5:String = "normal", param6:String = null, param7:String = null, param8:Number = 3) : void
      {
         if(param1 >= 0)
         {
            this.strokeColor = param2;
            this.strokeAlpha = param3;
            this.thickness = param1;
            this.pixelHinting = param4;
            this.scaleMode = param5;
            this.caps = param6;
            this.joints = this.joints;
            this.miterLimit = this.miterLimit;
            this.applyStroke();
         }
         else
         {
            this.noStroke();
         }
      }
      
      public function lineGradientStyle(param1:String, param2:Array, param3:Array, param4:Array, param5:Matrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0.0) : void
      {
         this.gc.lineGradientStyle(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function beginFill(param1:uint, param2:Number = 1.0) : void
      {
         this.fillColor = param1;
         this.fillAlpha = param2;
         this.gc.beginFill(this.fillColor,this.fillAlpha);
      }
      
      public function beginBitmapFill(param1:BitmapData, param2:Matrix = null, param3:Boolean = true, param4:Boolean = false) : void
      {
         this.gc.beginBitmapFill(param1,param2,param3,param4);
      }
      
      public function beginGradientFill(param1:String, param2:Array, param3:Array, param4:Array, param5:Matrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0.0) : void
      {
         this.gc.beginGradientFill(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function endFill() : void
      {
         this.gc.endFill();
      }
      
      public function beginBitmap(param1:BitmapData) : void
      {
         if(param1 !== this.__image)
         {
            this.__image = param1;
            this.__image_width = this.__image.width;
            this.__image_height = this.__image.height;
         }
      }
      
      public function endBitmap() : void
      {
         this.__image = null;
      }
      
      public function drawBitmap(param1:Number, param2:Number, param3:Number, param4:Number, param5:Matrix = null) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.__matrix.setMatrix(param3 / this.__image_width,0,0,param4 / this.__image_height,param1,param2);
         if(param5 == null)
         {
            this.__x = this.__startX = param1;
            this.__y = this.__startY = param2;
            this.gc.beginBitmapFill(this.__image,this.__matrix,false,this.imageSmoothing);
            this.gc.drawRect(param1,param2,param3,param4);
            this.gc.endFill();
         }
         else
         {
            this.__matrix.concat(param5);
            _loc6_ = param5.a;
            _loc7_ = param5.b;
            _loc8_ = param5.c;
            _loc9_ = param5.d;
            _loc10_ = param5.tx;
            _loc11_ = param5.ty;
            this.__x = this.__startX = _loc6_ * param1 + _loc8_ * param2 + _loc10_;
            this.__y = this.__startY = _loc7_ * param1 + _loc9_ * param2 + _loc11_;
            this.gc.beginBitmapFill(this.__image,this.__matrix,false,this.imageSmoothing);
            this.gc.moveTo(this.__x,this.__y);
            param1 += param3;
            this.gc.lineTo(_loc6_ * param1 + _loc8_ * param2 + _loc10_,_loc7_ * param1 + _loc9_ * param2 + _loc11_);
            param2 += param4;
            this.gc.lineTo(_loc6_ * param1 + _loc8_ * param2 + _loc10_,_loc7_ * param1 + _loc9_ * param2 + _loc11_);
            param1 -= param3;
            this.gc.lineTo(_loc6_ * param1 + _loc8_ * param2 + _loc10_,_loc7_ * param1 + _loc9_ * param2 + _loc11_);
            this.gc.endFill();
         }
      }
      
      public function drawBitmapTriangle(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number) : void
      {
         this.__x = this.__startX = param1;
         this.__y = this.__startY = param2;
         this.vx0 = param3 - param1;
         this.vy0 = param4 - param2;
         this.vx1 = param5 - param1;
         this.vy1 = param6 - param2;
         this.__matrix.createUVBox(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,this.__image_width,this.__image_height);
         this.gc.beginBitmapFill(this.__image,this.__matrix,false,this.imageSmoothing && this.vx0 * this.vy1 - this.vy0 * this.vx1 > 255);
         this.gc.moveTo(param1,param2);
         this.gc.lineTo(param3,param4);
         this.gc.lineTo(param5,param6);
         this.gc.endFill();
      }
      
      public function drawBitmapTriangles(param1:Array, param2:Array, param3:Array) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:int = param2.length;
         var _loc11_:int = 0;
         while(_loc11_ < _loc4_)
         {
            _loc5_ = 2 * param2[_loc11_];
            _loc6_ = 2 * param2[_loc11_ + 1];
            _loc7_ = 2 * param2[_loc11_ + 2];
            _loc8_ = _loc5_ + 1;
            _loc9_ = _loc6_ + 1;
            _loc10_ = _loc7_ + 1;
            this.drawBitmapTriangle(param1[_loc5_],param1[_loc8_],param1[_loc6_],param1[_loc9_],param1[_loc7_],param1[_loc10_],param3[_loc5_],param3[_loc8_],param3[_loc6_],param3[_loc9_],param3[_loc7_],param3[_loc10_]);
            _loc11_ += 3;
         }
      }
      
      public function drawBitmapQuad(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number = 0, param10:Number = 0, param11:Number = 1, param12:Number = 0, param13:Number = 1, param14:Number = 1, param15:Number = 0, param16:Number = 1) : void
      {
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc53_:int = 0;
         this.__x = this.__startX = param1;
         this.__y = this.__startY = param2;
         var _loc19_:Number = param1;
         var _loc20_:Number = param2;
         var _loc21_:Number = param3;
         var _loc22_:Number = param4;
         var _loc27_:Number = param9;
         var _loc28_:Number = param9;
         var _loc29_:Number = param11;
         var _loc30_:Number = param12;
         var _loc51_:Number = 1 / this.imageDetail;
         var _loc52_:int = 1;
         while(_loc52_ <= this.imageDetail)
         {
            _loc18_ = _loc52_ * _loc51_;
            _loc23_ = param1 + (param7 - param1) * _loc18_;
            _loc24_ = param2 + (param8 - param2) * _loc18_;
            _loc25_ = param3 + (param5 - param3) * _loc18_;
            _loc26_ = param4 + (param6 - param4) * _loc18_;
            _loc31_ = param9 + (param15 - param9) * _loc18_;
            _loc32_ = param10 + (param16 - param10) * _loc18_;
            _loc33_ = param11 + (param13 - param11) * _loc18_;
            _loc34_ = param12 + (param14 - param12) * _loc18_;
            _loc35_ = _loc19_;
            _loc36_ = _loc20_;
            _loc37_ = _loc23_;
            _loc38_ = _loc24_;
            _loc43_ = _loc27_;
            _loc44_ = _loc28_;
            _loc45_ = _loc31_;
            _loc46_ = _loc32_;
            _loc53_ = 1;
            while(_loc53_ <= this.imageDetail)
            {
               _loc17_ = _loc53_ * _loc51_;
               _loc39_ = _loc19_ + (_loc21_ - _loc19_) * _loc17_;
               _loc40_ = _loc20_ + (_loc22_ - _loc20_) * _loc17_;
               _loc41_ = _loc23_ + (_loc25_ - _loc23_) * _loc17_;
               _loc42_ = _loc24_ + (_loc26_ - _loc24_) * _loc17_;
               _loc47_ = _loc27_ + (_loc29_ - _loc27_) * _loc17_;
               _loc48_ = _loc28_ + (_loc30_ - _loc28_) * _loc17_;
               _loc49_ = _loc31_ + (_loc33_ - _loc31_) * _loc17_;
               _loc50_ = _loc32_ + (_loc34_ - _loc32_) * _loc17_;
               this.vx0 = _loc39_ - _loc35_;
               this.vy0 = _loc40_ - _loc36_;
               this.vx1 = _loc37_ - _loc35_;
               this.vy1 = _loc38_ - _loc36_;
               this.__matrix.createUVBox(_loc35_,_loc36_,_loc39_,_loc40_,_loc37_,_loc38_,_loc43_,_loc44_,_loc47_,_loc48_,_loc45_,_loc46_,this.__image_width,this.__image_height);
               this.gc.beginBitmapFill(this.__image,this.__matrix,false,this.imageSmoothing && this.vx0 * this.vy1 - this.vy0 * this.vx1 > 255);
               this.gc.moveTo(_loc35_,_loc36_);
               this.gc.lineTo(_loc39_,_loc40_);
               this.gc.lineTo(_loc37_,_loc38_);
               this.gc.endFill();
               this.vx0 = _loc41_ - _loc39_;
               this.vy0 = _loc42_ - _loc40_;
               this.vx1 = _loc37_ - _loc39_;
               this.vy1 = _loc38_ - _loc40_;
               this.__matrix.createUVBox(_loc39_,_loc40_,_loc41_,_loc42_,_loc37_,_loc38_,_loc47_,_loc48_,_loc49_,_loc50_,_loc45_,_loc46_,this.__image_width,this.__image_height);
               this.gc.beginBitmapFill(this.__image,this.__matrix,false,this.imageSmoothing && this.vx0 * this.vy1 - this.vy0 * this.vx1 > 255);
               this.gc.moveTo(_loc39_,_loc40_);
               this.gc.lineTo(_loc41_,_loc42_);
               this.gc.lineTo(_loc37_,_loc38_);
               this.gc.endFill();
               _loc35_ = _loc39_;
               _loc36_ = _loc40_;
               _loc37_ = _loc41_;
               _loc38_ = _loc42_;
               _loc43_ = _loc47_;
               _loc44_ = _loc48_;
               _loc45_ = _loc49_;
               _loc46_ = _loc50_;
               _loc53_++;
            }
            _loc19_ = _loc23_;
            _loc20_ = _loc24_;
            _loc21_ = _loc25_;
            _loc22_ = _loc26_;
            _loc27_ = _loc31_;
            _loc28_ = _loc32_;
            _loc29_ = _loc33_;
            _loc30_ = _loc34_;
            _loc52_++;
         }
      }
      
      function pixel() : void
      {
         this.pixelbitmap.drawPixel(this.__x,this.__y,uint(this.strokeAlpha * 255) << 24 | this.strokeColor);
      }
      
      function __BG(param1:Number, param2:Number, param3:uint, param4:Number) : void
      {
         this.clear();
         this.abortStroke();
         this.gc.beginFill(param3,param4);
         this.gc.moveTo(0,0);
         this.gc.lineTo(param1,0);
         this.gc.lineTo(param1,param2);
         this.gc.lineTo(0,param2);
         this.gc.endFill();
         this.resumeStroke();
      }
   }
}
