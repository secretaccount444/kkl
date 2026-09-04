package frocessing.core
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Loader;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import frocessing.bmp.FImageLoader;
   import frocessing.color.FColor;
   import frocessing.f5internal;
   import frocessing.shape.FShapeSVGLoader;
   import frocessing.shape.IFShape;
   import frocessing.text.IFont;
   import frocessing.text.PFontLoader;
   
   use namespace f5internal;
   
   public class F5Graphics
   {
      
      public static const RGB:String = F5C.RGB;
      
      public static const HSB:String = F5C.HSB;
      
      public static const HSV:String = F5C.HSV;
      
      public static const CORNER:int = F5C.CORNER;
      
      public static const CORNERS:int = F5C.CORNERS;
      
      public static const RADIUS:int = F5C.RADIUS;
      
      public static const CENTER:int = F5C.CENTER;
      
      public static const LEFT:int = F5C.LEFT;
      
      public static const RIGHT:int = F5C.RIGHT;
      
      public static const BASELINE:int = F5C.BASELINE;
      
      public static const TOP:int = F5C.TOP;
      
      public static const BOTTOM:int = F5C.BOTTOM;
      
      public static const POINTS:int = F5C.POINTS;
      
      public static const LINES:int = F5C.LINES;
      
      public static const TRIANGLES:int = F5C.TRIANGLES;
      
      public static const TRIANGLE_FAN:int = F5C.TRIANGLE_FAN;
      
      public static const TRIANGLE_STRIP:int = F5C.TRIANGLE_STRIP;
      
      public static const QUADS:int = F5C.QUADS;
      
      public static const QUAD_STRIP:int = F5C.QUAD_STRIP;
      
      public static const OPEN:Boolean = F5C.OPEN;
      
      public static const CLOSE:Boolean = F5C.CLOSE;
      
      public static const NORMALIZED:int = F5C.NORMALIZED;
      
      public static const IMAGE:int = F5C.IMAGE;
      
      public static const PI:Number = Math.PI;
      
      public static const TWO_PI:Number = Math.PI * 2;
      
      public static const HALF_PI:Number = Math.PI / 2;
      
      public static const QUART_PI:Number = Math.PI / 4;
       
      
      var gc:GraphicsEx;
      
      var _width:uint;
      
      var _height:uint;
      
      public var colorModeState:String;
      
      public var colorModeX:Number;
      
      public var colorModeY:Number;
      
      public var colorModeZ:Number;
      
      public var colorModeA:Number;
      
      var __calc_color:uint;
      
      var __calc_alpha:Number;
      
      var _rect_mode:int;
      
      var _ellipse_mode:int;
      
      var _shape_mode:int;
      
      var _vertex_mode:int;
      
      var _vertex_mode_polygon:Boolean;
      
      var vertexsX:Array;
      
      var vertexsY:Array;
      
      var vertexCount:uint;
      
      var splineVertexX:Array;
      
      var splineVertexY:Array;
      
      var splineVertexCount:uint;
      
      var vertexsU:Array;
      
      var vertexsV:Array;
      
      var _image_mode:int;
      
      var _tint_color:uint;
      
      var _tint_do:Boolean;
      
      var tintImageCache:TintCache;
      
      var __texture:Boolean;
      
      var _texture_mode:int;
      
      var _texture_width:int = 1;
      
      var _texture_height:int = 1;
      
      var _style_tmp:Array;
      
      private var __text_gc:F5Typographics;
      
      public function F5Graphics(param1:Graphics)
      {
         super();
         this.__initGC(param1);
         this.tintImageCache = new TintCache();
         this.__text_gc = new F5Typographics(this);
         this._width = 100;
         this._height = 100;
         this.gc.bezierDetail = 20;
         this.gc.splineDetail = 20;
         this.gc.splineTightness = 1;
         this.gc.imageSmoothing = false;
         this.gc.imageDetail = 4;
         this.__text_gc.detail = 1;
         this.__texture = false;
         this._style_tmp = [];
         this.defaultSettings();
      }
      
      protected function __initGC(param1:Graphics) : void
      {
         this.gc = new GraphicsEx(param1);
      }
      
      protected function defaultSettings() : void
      {
         this.__calc_color = 0;
         this.__calc_alpha = 1;
         this.colorModeState = RGB;
         this.colorModeX = this.colorModeY = this.colorModeZ = 255;
         this.colorModeA = 1;
         this.gc.fillColor = 16777215;
         this.gc.fillAlpha = 1;
         this.gc.fillDo = true;
         this.gc.strokeColor = 0;
         this.gc.strokeAlpha = 1;
         this.gc.thickness = 0;
         this.gc.pixelHinting = false;
         this.gc.scaleMode = "normal";
         this.gc.caps = null;
         this.gc.joints = null;
         this.gc.miterLimit = 3;
         this._rect_mode = CORNER;
         this._ellipse_mode = CENTER;
         this._texture_mode = NORMALIZED;
         this._image_mode = CORNER;
         this._tint_color = 4294967295;
         this._tint_do = false;
         this.gc.applyStroke();
      }
      
      public function get width() : uint
      {
         return this._width;
      }
      
      public function get height() : uint
      {
         return this._height;
      }
      
      public function size(param1:uint, param2:uint) : void
      {
         this._width = param1;
         this._height = param2;
      }
      
      public function beginDraw() : void
      {
         this.clear();
      }
      
      public function endDraw() : void
      {
      }
      
      public function clear() : void
      {
         this.gc.clear();
         this.tintImageCache.dispose();
      }
      
      public function moveTo(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.gc.moveTo(param1,param2);
      }
      
      public function lineTo(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.gc.lineTo(param1,param2);
      }
      
      public function curveTo(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.gc.curveTo(param1,param2,param3,param4);
      }
      
      function _curveTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.curveTo(param1,param2,param4,param5);
      }
      
      public function bezierTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.gc.bezierTo(param1,param2,param3,param4,param5,param6);
      }
      
      public function splineTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.gc.splineTo(param1,param2,param3,param4,param5,param6);
      }
      
      public function arcTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number = 0) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(param7 == 0)
         {
            this.lineTo(param1 + param3 * Math.cos(param5),param2 + param4 * Math.sin(param5));
            this.__arc(param1,param2,param3,param4,param5,param6,param7);
         }
         else
         {
            _loc8_ = Math.cos(param7);
            _loc9_ = Math.sin(param7);
            _loc10_ = param3 * Math.cos(param5);
            _loc11_ = param4 * Math.sin(param5);
            this.lineTo(param1 + _loc10_ * _loc8_ - _loc11_ * _loc9_,param2 + _loc10_ * _loc9_ + _loc11_ * _loc8_);
            this.__arc(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public function arcCurve(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean = false, param8:Boolean = true, param9:Number = 0) : void
      {
         this.moveTo(param1,param2);
         this.__arcCurve(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      function __drawArc(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number = 0) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(param7 == 0)
         {
            this.moveTo(param1 + param3 * Math.cos(param5),param2 + param4 * Math.sin(param5));
            this.__arc(param1,param2,param3,param4,param5,param6,param7);
         }
         else
         {
            _loc8_ = Math.cos(param7);
            _loc9_ = Math.sin(param7);
            _loc10_ = param3 * Math.cos(param5);
            _loc11_ = param4 * Math.sin(param5);
            this.moveTo(param1 + _loc10_ * _loc8_ - _loc11_ * _loc9_,param2 + _loc10_ * _loc9_ + _loc11_ * _loc8_);
            this.__arc(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      function __arc(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number = 0) : void
      {
         var _loc13_:int = 0;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc8_:int = Math.ceil(Math.abs(4 * (param6 - param5) / PI));
         var _loc9_:Number = (param6 - param5) / _loc8_;
         var _loc10_:Number = 1 / Math.cos(_loc9_ * 0.5);
         var _loc11_:Number = param5;
         var _loc12_:Number = param5 - _loc9_ * 0.5;
         if(param7 == 0)
         {
            _loc13_ = 1;
            while(_loc13_ <= _loc8_)
            {
               _loc11_ += _loc9_;
               _loc12_ += _loc9_;
               this.curveTo(param1 + param3 * _loc10_ * Math.cos(_loc12_),param2 + param4 * _loc10_ * Math.sin(_loc12_),param1 + param3 * Math.cos(_loc11_),param2 + param4 * Math.sin(_loc11_));
               _loc13_++;
            }
         }
         else
         {
            _loc14_ = Math.cos(param7);
            _loc15_ = Math.sin(param7);
            _loc13_ = 1;
            while(_loc13_ <= _loc8_)
            {
               _loc11_ += _loc9_;
               _loc12_ += _loc9_;
               _loc16_ = param3 * Math.cos(_loc11_);
               _loc17_ = param4 * Math.sin(_loc11_);
               _loc18_ = param3 * _loc10_ * Math.cos(_loc12_);
               _loc19_ = param4 * _loc10_ * Math.sin(_loc12_);
               this.curveTo(param1 + _loc18_ * _loc14_ - _loc19_ * _loc15_,param2 + _loc18_ * _loc15_ + _loc19_ * _loc14_,param1 + _loc16_ * _loc14_ - _loc17_ * _loc15_,param2 + _loc16_ * _loc15_ + _loc17_ * _loc14_);
               _loc13_++;
            }
         }
      }
      
      function __arcCurve(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean = false, param8:Boolean = true, param9:Number = 0) : void
      {
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc10_:Number = param5 / param6;
         var _loc11_:Number = (param3 - param1) * 0.5;
         var _loc12_:Number = (param4 - param2) * 0.5;
         var _loc13_:Number = param1 + _loc11_;
         var _loc14_:Number = param2 + _loc12_;
         if(param9 != 0)
         {
            _loc15_ = Math.cos(-param9);
            _loc16_ = Math.sin(-param9);
            _loc19_ = _loc11_ * _loc15_ - _loc12_ * _loc16_;
            _loc20_ = _loc11_ * _loc16_ + _loc12_ * _loc15_;
            _loc11_ = _loc19_;
            _loc12_ = _loc20_;
         }
         _loc12_ *= _loc10_;
         var _loc17_:Number;
         if((_loc17_ = Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_)) < param5)
         {
            _loc21_ = param7 != param8 ? Number(Math.acos(_loc17_ / param5)) : Number(-Math.acos(_loc17_ / param5));
            _loc22_ = Math.tan(_loc21_);
            _loc23_ = -_loc12_ * _loc22_;
            _loc24_ = _loc11_ * _loc22_;
            _loc25_ = Math.PI - 2 * _loc21_;
            _loc18_ = Math.atan2(-_loc12_ - _loc24_,-_loc11_ - _loc23_);
            _loc24_ /= _loc10_;
            _loc15_ = Math.cos(param9);
            _loc16_ = Math.sin(param9);
            this.__arc(_loc13_ + _loc23_ * _loc15_ - _loc24_ * _loc16_,_loc14_ + _loc23_ * _loc16_ + _loc24_ * _loc15_,param5,param6,_loc18_,!!param8 ? Number(_loc18_ + _loc25_) : Number(_loc18_ - (2 * Math.PI - _loc25_)),param9);
         }
         else
         {
            param6 = (param5 = _loc17_) / _loc10_;
            _loc18_ = Math.atan2(-_loc12_,-_loc11_);
            this.__arc(_loc13_,_loc14_,param5,param6,_loc18_,!!param8 ? Number(_loc18_ + Math.PI) : Number(_loc18_ - Math.PI),param9);
         }
      }
      
      public function closePath() : void
      {
         this.gc.closePath();
      }
      
      public function moveToLast() : void
      {
         this.gc.moveToLast();
      }
      
      f5internal function __ellipse(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = 0.7071067811865476;
         var _loc6_:Number = 0.41421356237309503;
         this.moveTo(param1 + param3,param2);
         this.curveTo(param1 + param3,param2 + param4 * _loc6_,param1 + param3 * _loc5_,param2 + param4 * _loc5_);
         this.curveTo(param1 + param3 * _loc6_,param2 + param4,param1,param2 + param4);
         this.curveTo(param1 - param3 * _loc6_,param2 + param4,param1 - param3 * _loc5_,param2 + param4 * _loc5_);
         this.curveTo(param1 - param3,param2 + param4 * _loc6_,param1 - param3,param2);
         this.curveTo(param1 - param3,param2 - param4 * _loc6_,param1 - param3 * _loc5_,param2 - param4 * _loc5_);
         this.curveTo(param1 - param3 * _loc6_,param2 - param4,param1,param2 - param4);
         this.curveTo(param1 + param3 * _loc6_,param2 - param4,param1 + param3 * _loc5_,param2 - param4 * _loc5_);
         this.curveTo(param1 + param3,param2 - param4 * _loc6_,param1 + param3,param2);
      }
      
      f5internal function __roundrect(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:Number = 1 - 0.7071067811865476;
         var _loc8_:Number = 1 - 0.41421356237309503;
         this.moveTo(param1 + param5,param2);
         this.lineTo(param3 - param5,param2);
         this.curveTo(param3 - param5 * _loc8_,param2,param3 - param5 * _loc7_,param2 + param6 * _loc7_);
         this.curveTo(param3,param2 + param6 * _loc8_,param3,param2 + param6);
         this.lineTo(param3,param4 - param6);
         this.curveTo(param3,param4 - param6 * _loc8_,param3 - param5 * _loc7_,param4 - param6 * _loc7_);
         this.curveTo(param3 - param5 * _loc8_,param4,param3 - param5,param4);
         this.lineTo(param1 + param5,param4);
         this.curveTo(param1 + param5 * _loc8_,param4,param1 + param5 * _loc7_,param4 - param6 * _loc7_);
         this.curveTo(param1,param4 - param6 * _loc8_,param1,param4 - param6);
         this.lineTo(param1,param2 + param6);
         this.curveTo(param1,param2 + param6 * _loc8_,param1 + param5 * _loc7_,param2 + param6 * _loc7_);
         this.curveTo(param1 + param5 * _loc8_,param2,param1 + param5,param2);
      }
      
      public function point(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.gc.point(param1,param2);
      }
      
      public function line(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.moveTo(param1,param2);
         this.lineTo(param3,param4);
      }
      
      public function triangle(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.gc.applyFill();
         this.moveTo(param1,param2);
         this.lineTo(param3,param4);
         this.lineTo(param5,param6);
         this.closePath();
         this.gc.endFill();
      }
      
      public function quad(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         this.gc.applyFill();
         this.moveTo(param1,param2);
         this.lineTo(param3,param4);
         this.lineTo(param5,param6);
         this.lineTo(param7,param8);
         this.closePath();
         this.gc.endFill();
      }
      
      public function arc(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         param3 *= 0.5;
         param4 *= 0.5;
         if(this.gc.fillDo)
         {
            this.gc.applyFill();
            this.moveTo(param1,param2);
            this.lineTo(param1 + param3 * Math.cos(param5),param2 + param4 * Math.sin(param5));
            this.__arc(param1,param2,param3,param4,param5,param6);
            this.gc.endFill();
         }
         else
         {
            this.__drawArc(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function circle(param1:Number, param2:Number, param3:Number) : void
      {
         this.gc.applyFill();
         this.__ellipse(param1,param2,param3,param3);
         this.gc.endFill();
      }
      
      public function ellipse(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         switch(this._ellipse_mode)
         {
            case CORNERS:
               _loc5_ = (param3 - param1) * 0.5;
               _loc6_ = (param4 - param2) * 0.5;
               param1 += _loc5_;
               param2 += _loc6_;
               break;
            case CORNER:
               _loc5_ = param3 * 0.5;
               _loc6_ = param4 * 0.5;
               param1 += _loc5_;
               param2 += _loc6_;
               break;
            case RADIUS:
               _loc5_ = param3;
               _loc6_ = param4;
               break;
            case CENTER:
               _loc5_ = param3 * 0.5;
               _loc6_ = param4 * 0.5;
         }
         this.gc.applyFill();
         this.__ellipse(param1,param2,_loc5_,_loc6_);
         this.gc.endFill();
      }
      
      public function rect(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         switch(this._rect_mode)
         {
            case CORNERS:
               _loc7_ = (param3 - param1) * 0.5;
               _loc8_ = (param4 - param2) * 0.5;
               break;
            case CORNER:
               param3 += param1;
               param4 += param2;
               break;
            case RADIUS:
               _loc7_ = param3;
               _loc8_ = param4;
               param3 = param1 + _loc7_;
               param4 = param2 + _loc8_;
               param1 -= _loc7_;
               param2 -= _loc8_;
               break;
            case CENTER:
               _loc7_ = param3 * 0.5;
               _loc8_ = param4 * 0.5;
               param3 = param1 + _loc7_;
               param4 = param2 + _loc8_;
               param1 -= _loc7_;
               param2 -= _loc8_;
         }
         this.gc.applyFill();
         if(param5 <= 0 || param6 <= 0)
         {
            this.moveTo(param1,param2);
            this.lineTo(param3,param2);
            this.lineTo(param3,param4);
            this.lineTo(param1,param4);
            this.closePath();
         }
         else
         {
            if(param5 > _loc7_)
            {
               param5 = _loc7_;
            }
            if(param6 > _loc8_)
            {
               param6 = _loc8_;
            }
            this.__roundrect(param1,param2,param3,param4,param5,param6);
         }
         this.gc.endFill();
      }
      
      public function bezier(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         this.gc.applyFill();
         this.moveTo(param1,param2);
         this.bezierTo(param3,param4,param5,param6,param7,param8);
         this.gc.endFill();
      }
      
      public function curve(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         this.beginShape();
         this.curveVertex(param1,param2);
         this.curveVertex(param3,param4);
         this.curveVertex(param5,param6);
         this.curveVertex(param7,param8);
         this.endShape();
      }
      
      public function bezierDetail(param1:uint) : void
      {
         this.gc.bezierDetail = param1;
      }
      
      public function curveDetail(param1:uint) : void
      {
         this.gc.splineDetail = param1;
      }
      
      public function curveTightness(param1:Number) : void
      {
         this.gc.splineTightness = param1;
      }
      
      public function qbezierPoint(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = 1 - param4;
         return param1 * _loc5_ * _loc5_ + 2 * param2 * param4 * _loc5_ + param3 * param4 * param4;
      }
      
      public function bezierPoint(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc6_:Number = 1 - param5;
         return param1 * _loc6_ * _loc6_ * _loc6_ + 3 * param2 * param5 * _loc6_ * _loc6_ + 3 * param3 * param5 * param5 * _loc6_ + param4 * param5 * param5 * param5;
      }
      
      public function curvePoint(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc6_:Number = this.gc.splineTightness * (param3 - param1) * 0.5;
         var _loc7_:Number = this.gc.splineTightness * (param4 - param2) * 0.5;
         return param5 * param5 * param5 * (2 * param2 - 2 * param3 + _loc6_ + _loc7_) + param5 * param5 * (-3 * param2 + 3 * param3 - 2 * _loc6_ - _loc7_) + _loc6_ * param5 + param2;
      }
      
      public function qbezierTangent(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return 2 * (param4 * (param1 + param3 - 2 * param2) - param1 + param2);
      }
      
      public function bezierTangent(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         return 3 * (param4 - param1 - 3 * param3 + 3 * param2) * param5 * param5 + 6 * (param1 + param3 - 2 * param2) * param5 - 3 * param1 + 3 * param2;
      }
      
      public function curveTangent(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc6_:Number = this.gc.splineTightness * (param3 - param1) * 0.5;
         var _loc7_:Number = this.gc.splineTightness * (param4 - param2) * 0.5;
         return 3 * param5 * param5 * (2 * param2 - 2 * param3 + _loc6_ + _loc7_) + 2 * param5 * (3 * param3 - 3 * param2 - _loc7_ - 2 * _loc6_) + _loc6_;
      }
      
      public function beginShape(param1:int = 0) : void
      {
         this._vertex_mode = param1;
         this.vertexsX = [];
         this.vertexsY = [];
         this.splineVertexX = [];
         this.splineVertexY = [];
         this.vertexsU = [];
         this.vertexsV = [];
         this.vertexCount = 0;
         this.splineVertexCount = 0;
         if(this._vertex_mode_polygon = param1 == 0)
         {
            this.gc.applyFill();
         }
      }
      
      public function endShape(param1:Boolean = false) : void
      {
         if(this._vertex_mode_polygon)
         {
            if(param1)
            {
               this.gc.closePath();
            }
            this.endFill();
            this._vertex_mode_polygon = false;
         }
         if(this.__texture)
         {
            this.__texture = false;
            this.gc.endBitmap();
         }
         this.vertexCount = 0;
         this.splineVertexCount = 0;
         this._vertex_mode = 0;
      }
      
      public function texture(param1:BitmapData) : void
      {
         if(this._tint_do)
         {
            this.gc.beginBitmap(this.tintImageCache.getTintImage(param1,this._tint_color));
         }
         else
         {
            this.gc.beginBitmap(param1);
         }
         this.__texture = true;
         this._texture_width = param1.width;
         this._texture_height = param1.height;
      }
      
      public function textureMode(param1:int) : void
      {
         this._texture_mode = param1;
      }
      
      public function vertex(param1:Number, param2:Number, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         this.vertexsX[this.vertexCount] = param1;
         this.vertexsY[this.vertexCount] = param2;
         if(this._texture_mode < 1)
         {
            param3 /= this._texture_width;
            param4 /= this._texture_height;
         }
         this.vertexsU[this.vertexCount] = param3;
         this.vertexsV[this.vertexCount] = param4;
         ++this.vertexCount;
         this.splineVertexCount = 0;
         switch(this._vertex_mode)
         {
            case POINTS:
               this.gc.point(param1,param2);
               break;
            case LINES:
               if(this.vertexCount % 2 == 0)
               {
                  _loc5_ = this.vertexCount - 2;
                  this.gc.moveTo(this.vertexsX[_loc5_],this.vertexsY[_loc5_]);
                  this.gc.lineTo(param1,param2);
               }
               break;
            case TRIANGLES:
               if(this.vertexCount % 3 == 0)
               {
                  _loc5_ = this.vertexCount - 2;
                  _loc6_ = this.vertexCount - 3;
                  if(this.__texture)
                  {
                     this.gc.drawBitmapTriangle(this.vertexsX[_loc6_],this.vertexsY[_loc6_],this.vertexsX[_loc5_],this.vertexsY[_loc5_],param1,param2,this.vertexsU[_loc6_],this.vertexsV[_loc6_],this.vertexsU[_loc5_],this.vertexsV[_loc5_],param3,param4);
                  }
                  else
                  {
                     this.__vertexTriangle(this.vertexsX[_loc6_],this.vertexsY[_loc6_],this.vertexsX[_loc5_],this.vertexsY[_loc5_],param1,param2);
                  }
               }
               break;
            case TRIANGLE_FAN:
               if(this.vertexCount >= 3)
               {
                  _loc5_ = this.vertexCount - 2;
                  if(this.__texture)
                  {
                     this.gc.drawBitmapTriangle(this.vertexsX[0],this.vertexsY[0],this.vertexsX[_loc5_],this.vertexsY[_loc5_],param1,param2,this.vertexsU[0],this.vertexsV[0],this.vertexsU[_loc5_],this.vertexsV[_loc5_],param3,param4);
                  }
                  else
                  {
                     this.__vertexTriangle(this.vertexsX[0],this.vertexsY[0],this.vertexsX[_loc5_],this.vertexsY[_loc5_],param1,param2);
                  }
               }
               break;
            case TRIANGLE_STRIP:
               if(this.vertexCount >= 3)
               {
                  _loc5_ = this.vertexCount - 2;
                  _loc6_ = this.vertexCount - 3;
                  if(this.__texture)
                  {
                     this.gc.drawBitmapTriangle(param1,param2,this.vertexsX[_loc5_],this.vertexsY[_loc5_],this.vertexsX[_loc6_],this.vertexsY[_loc6_],param3,param4,this.vertexsU[_loc5_],this.vertexsV[_loc5_],this.vertexsU[_loc6_],this.vertexsV[_loc6_]);
                  }
                  else
                  {
                     this.__vertexTriangle(param1,param2,this.vertexsX[_loc5_],this.vertexsY[_loc5_],this.vertexsX[_loc6_],this.vertexsY[_loc6_]);
                  }
               }
               break;
            case QUADS:
               if(this.vertexCount % 4 == 0)
               {
                  _loc5_ = this.vertexCount - 2;
                  _loc6_ = this.vertexCount - 3;
                  _loc7_ = this.vertexCount - 4;
                  if(this.__texture)
                  {
                     this.__vertexBitmapQuad(this.vertexsX[_loc7_],this.vertexsY[_loc7_],this.vertexsX[_loc6_],this.vertexsY[_loc6_],this.vertexsX[_loc5_],this.vertexsY[_loc5_],param1,param2,this.vertexsU[_loc7_],this.vertexsV[_loc7_],this.vertexsU[_loc6_],this.vertexsV[_loc6_],this.vertexsU[_loc5_],this.vertexsV[_loc5_],param3,param4);
                  }
                  else
                  {
                     this.__vertexQuad(this.vertexsX[_loc7_],this.vertexsY[_loc7_],this.vertexsX[_loc6_],this.vertexsY[_loc6_],this.vertexsX[_loc5_],this.vertexsY[_loc5_],param1,param2);
                  }
               }
               break;
            case QUAD_STRIP:
               if(this.vertexCount >= 4 && this.vertexCount % 2 == 0)
               {
                  _loc5_ = this.vertexCount - 2;
                  _loc6_ = this.vertexCount - 3;
                  _loc7_ = this.vertexCount - 4;
                  if(this.__texture)
                  {
                     this.__vertexBitmapQuad(this.vertexsX[_loc7_],this.vertexsY[_loc7_],this.vertexsX[_loc6_],this.vertexsY[_loc6_],param1,param2,this.vertexsX[_loc5_],this.vertexsY[_loc5_],this.vertexsU[_loc7_],this.vertexsV[_loc7_],this.vertexsU[_loc6_],this.vertexsV[_loc6_],param3,param4,this.vertexsU[_loc5_],this.vertexsV[_loc5_]);
                  }
                  else
                  {
                     this.__vertexQuad(this.vertexsX[_loc7_],this.vertexsY[_loc7_],this.vertexsX[_loc6_],this.vertexsY[_loc6_],param1,param2,this.vertexsX[_loc5_],this.vertexsY[_loc5_]);
                  }
               }
               break;
            default:
               if(this.vertexCount > 1)
               {
                  this.gc.lineTo(param1,param2);
               }
               else
               {
                  this.gc.moveTo(param1,param2);
               }
         }
      }
      
      private function __vertexBitmapQuad(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number, param14:Number, param15:Number, param16:Number) : void
      {
         this.gc.abortStroke();
         this.gc.drawBitmapQuad(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         if(this.gc.resumeStroke())
         {
            this.gc.moveTo(param1,param2);
            this.gc.lineTo(param3,param4);
            this.gc.lineTo(param5,param6);
            this.gc.lineTo(param7,param8);
            this.gc.closePath();
         }
      }
      
      private function __vertexQuad(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         this.gc.applyFill();
         this.gc.moveTo(param1,param2);
         this.gc.lineTo(param3,param4);
         this.gc.lineTo(param5,param6);
         this.gc.lineTo(param7,param8);
         this.gc.closePath();
         this.gc.endFill();
      }
      
      private function __vertexTriangle(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.gc.applyFill();
         this.gc.moveTo(param1,param2);
         this.gc.lineTo(param3,param4);
         this.gc.lineTo(param5,param6);
         this.gc.closePath();
         this.gc.endFill();
      }
      
      public function bezierVertex(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         if(this._vertex_mode_polygon)
         {
            this.vertexsX[this.vertexCount] = param5;
            this.vertexsY[this.vertexCount] = param6;
            ++this.vertexCount;
            this.splineVertexCount = 0;
            this.gc.bezierTo(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function curveVertex(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._vertex_mode_polygon)
         {
            this.splineVertexX[this.splineVertexCount] = param1;
            this.splineVertexY[this.splineVertexCount] = param2;
            ++this.splineVertexCount;
            _loc3_ = this.splineVertexCount - 2;
            _loc4_ = this.splineVertexCount - 4;
            if(this.splineVertexCount > 4)
            {
               this.gc.splineTo(this.splineVertexX[_loc4_],this.splineVertexY[_loc4_],this.splineVertexX[_loc3_],this.splineVertexY[_loc3_],param1,param2);
            }
            else if(this.splineVertexCount == 4)
            {
               _loc5_ = this.splineVertexCount - 3;
               if(this.vertexCount > 0)
               {
                  this.gc.splineTo(this.splineVertexX[_loc4_],this.splineVertexY[_loc4_],this.splineVertexX[_loc3_],this.splineVertexY[_loc3_],param1,param2);
               }
               else
               {
                  this.gc.moveTo(this.splineVertexX[_loc5_],this.splineVertexY[_loc5_]);
                  this.gc.splineTo(this.splineVertexX[_loc4_],this.splineVertexY[_loc4_],this.splineVertexX[_loc3_],this.splineVertexY[_loc3_],param1,param2);
               }
            }
         }
      }
      
      public function shape(param1:IFShape, param2:Number = 0, param3:Number = 0, param4:Number = NaN, param5:Number = NaN) : void
      {
         param1.draw(this);
      }
      
      public function loadShape(param1:String, param2:URLLoader = null, param3:Function = null) : FShapeSVGLoader
      {
         return new FShapeSVGLoader(param1,param2,param3);
      }
      
      public function loadImage(param1:String, param2:Loader = null, param3:Function = null) : FImageLoader
      {
         return new FImageLoader(param1,param2,param3);
      }
      
      public function image(param1:BitmapData, param2:Number, param3:Number, param4:Number = NaN, param5:Number = NaN) : void
      {
         if(param4 > 0 && param5 > 0)
         {
            switch(this._image_mode)
            {
               case CORNERS:
                  param4 -= param2;
                  param5 -= param3;
                  break;
               case RADIUS:
                  param2 -= param4;
                  param3 -= param5;
                  param4 *= 2;
                  param5 *= 2;
                  break;
               case CENTER:
                  param2 -= param4 * 0.5;
                  param3 -= param5 * 0.5;
            }
         }
         else
         {
            param4 = param1.width;
            param5 = param1.height;
            if(this._image_mode == RADIUS || this._image_mode == CENTER)
            {
               param2 -= param4 * 0.5;
               param3 -= param5 * 0.5;
            }
         }
         this._image(param1,param2,param3,param4,param5);
      }
      
      f5internal function _image(param1:BitmapData, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number = 0) : void
      {
         if(this._tint_do)
         {
            this.gc.beginBitmap(this.tintImageCache.getTintImage(param1,this._tint_color));
         }
         else
         {
            this.gc.beginBitmap(param1);
         }
         this.gc.drawBitmap(param2,param3,param4,param5);
         this.gc.endBitmap();
      }
      
      public function loadFont(param1:String, param2:URLLoader = null, param3:Function = null) : PFontLoader
      {
         return new PFontLoader(param1,param2,param3);
      }
      
      public function textFont(param1:IFont, param2:Number = NaN) : void
      {
         this.__text_gc.textFont(param1,param2);
      }
      
      public function text(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Number = 0, param6:Number = 0) : void
      {
         this.__text_gc.color = uint(this.gc.fillAlpha * 255) << 24 | this.gc.fillColor;
         if(param4 > 0 && param5 > 0)
         {
            this.__text_gc.textArea(param1,param2,param3,param4,param5,param6);
         }
         else
         {
            this.__text_gc.text(param1,param2,param3,param4);
         }
      }
      
      public function textAscent() : Number
      {
         return this.__text_gc.textAscent();
      }
      
      public function textDescent() : Number
      {
         return this.__text_gc.textDescent();
      }
      
      public function textWidth(param1:String) : Number
      {
         return this.__text_gc.textWidth(param1);
      }
      
      public function pushStyle() : void
      {
         var _loc1_:FStyle = new FStyle();
         _loc1_.colorMode = this.colorModeState;
         _loc1_.colorModeX = this.colorModeX;
         _loc1_.colorModeY = this.colorModeY;
         _loc1_.colorModeZ = this.colorModeZ;
         _loc1_.colorModeA = this.colorModeA;
         _loc1_.fillDo = this.gc.fillDo;
         _loc1_.fillColor = this.gc.fillColor;
         _loc1_.fillAlpha = this.gc.fillAlpha;
         _loc1_.strokeDo = this.gc.__stroke;
         _loc1_.strokeColor = this.gc.strokeColor;
         _loc1_.strokeAlpha = this.gc.strokeAlpha;
         _loc1_.thickness = this.gc.thickness;
         _loc1_.pixelHinting = this.gc.pixelHinting;
         _loc1_.scaleMode = this.gc.scaleMode;
         _loc1_.caps = this.gc.caps;
         _loc1_.joints = this.gc.joints;
         _loc1_.miterLimit = this.gc.miterLimit;
         _loc1_.rectMode = this._rect_mode;
         _loc1_.ellipseMode = this._ellipse_mode;
         _loc1_.imageMode = this._image_mode;
         _loc1_.shapeMode = this._shape_mode;
         _loc1_.tintDo = this._tint_do;
         _loc1_.tintColor = this._tint_color;
         _loc1_.textFont = this.__text_gc.font;
         _loc1_.textAlign = this.__text_gc.align;
         _loc1_.textAlignY = this.__text_gc.alignY;
         _loc1_.textSize = this.__text_gc.size;
         _loc1_.textLeading = this.__text_gc.leading;
         this._style_tmp.push(_loc1_);
      }
      
      public function popStyle() : void
      {
         var _loc1_:FStyle = FStyle(this._style_tmp.pop());
         this.colorModeState = _loc1_.colorMode;
         this.colorModeX = _loc1_.colorModeX;
         this.colorModeY = _loc1_.colorModeY;
         this.colorModeZ = _loc1_.colorModeZ;
         this.colorModeA = _loc1_.colorModeA;
         this.gc.fillDo = _loc1_.fillDo;
         this.gc.fillColor = _loc1_.fillColor;
         this.gc.fillAlpha = _loc1_.fillAlpha;
         this.gc.strokeColor = _loc1_.strokeColor;
         this.gc.strokeAlpha = _loc1_.strokeAlpha;
         this.gc.thickness = _loc1_.thickness;
         this.gc.pixelHinting = _loc1_.pixelHinting;
         this.gc.scaleMode = _loc1_.scaleMode;
         this.gc.caps = _loc1_.caps;
         this.gc.joints = _loc1_.joints;
         this.gc.miterLimit = _loc1_.miterLimit;
         this._rect_mode = _loc1_.rectMode;
         this._ellipse_mode = _loc1_.ellipseMode;
         this._image_mode = _loc1_.imageMode;
         this._shape_mode = _loc1_.shapeMode;
         this._tint_color = _loc1_.tintColor;
         this._tint_do = _loc1_.tintDo;
         this.__text_gc.textFont(_loc1_.textFont,_loc1_.textSize);
         this.__text_gc.align = _loc1_.textAlign;
         this.__text_gc.alignY = _loc1_.textAlignY;
         this.__text_gc.leading = _loc1_.textLeading;
         if(_loc1_.strokeDo)
         {
            this.gc.applyStroke();
         }
         else
         {
            this.gc.noStroke();
         }
      }
      
      public function rectMode(param1:int) : void
      {
         this._rect_mode = param1;
      }
      
      public function ellipseMode(param1:int) : void
      {
         this._ellipse_mode = param1;
      }
      
      public function imageMode(param1:int) : void
      {
         this._image_mode = param1;
      }
      
      public function shapeMode(param1:int) : void
      {
         this._shape_mode = param1;
      }
      
      public function imageSmoothing(param1:Boolean) : void
      {
         this.gc.imageSmoothing = param1;
      }
      
      public function imageDetail(param1:uint) : void
      {
         this.gc.imageDetail = param1;
      }
      
      public function fontImageDetail(param1:uint) : void
      {
         this.__text_gc.detail = param1;
      }
      
      public function textSize(param1:Number) : void
      {
         this.__text_gc.size = param1;
      }
      
      public function textAlign(param1:int, param2:int = 0) : void
      {
         this.__text_gc.align = param1;
         this.__text_gc.alignY = param2;
      }
      
      public function textLeading(param1:Number) : void
      {
         this.__text_gc.leading = param1;
      }
      
      public function textMode(param1:int) : void
      {
      }
      
      public function background(param1:Number, param2:Number = NaN, param3:Number = NaN, param4:Number = NaN) : void
      {
         if(this._width > 0 && this._height > 0)
         {
            this.__calcColor(param1,param2,param3,param4);
            this.gc.__BG(this._width,this._height,this.__calc_color,this.__calc_alpha);
         }
      }
      
      public function fill(param1:Number, param2:Number = NaN, param3:Number = NaN, param4:Number = NaN) : void
      {
         this.__calcColor(param1,param2,param3,param4);
         this.gc.fillColor = this.__calc_color;
         this.gc.fillAlpha = this.__calc_alpha;
         this.gc.fillDo = true;
      }
      
      public function noFill() : void
      {
         this.gc.fillDo = false;
      }
      
      public function stroke(param1:Number, param2:Number = NaN, param3:Number = NaN, param4:Number = NaN) : void
      {
         this.__calcColor(param1,param2,param3,param4);
         this.gc.strokeColor = this.__calc_color;
         this.gc.strokeAlpha = this.__calc_alpha;
         this.gc.applyStroke();
      }
      
      public function noStroke() : void
      {
         this.gc.noStroke();
      }
      
      public function strokeWeight(param1:Number) : void
      {
         this.gc.thickness = param1;
         this.gc.reapplyStroke();
      }
      
      public function strokeJoin(param1:String) : void
      {
         this.gc.joints = param1;
         this.gc.reapplyStroke();
      }
      
      public function strokeCap(param1:String) : void
      {
         this.gc.caps = param1;
         this.gc.reapplyStroke();
      }
      
      public function strokePixelHint(param1:Boolean) : void
      {
         this.gc.pixelHinting = param1;
         this.gc.reapplyStroke();
      }
      
      public function strokeScaleMode(param1:String) : void
      {
         this.gc.scaleMode = param1;
         this.gc.reapplyStroke();
      }
      
      public function strokeMiterLimit(param1:Number) : void
      {
         this.gc.miterLimit = param1;
         this.gc.reapplyStroke();
      }
      
      public function tint(param1:Number, param2:Number = NaN, param3:Number = NaN, param4:Number = NaN) : void
      {
         this.__calcColor(param1,param2,param3,param4);
         this._tint_color = FColor.toARGB(this.__calc_color,this.__calc_alpha);
         this._tint_do = this._tint_color != 4294967295;
      }
      
      public function noTint() : void
      {
         this._tint_color = 4294967295;
         this._tint_do = false;
      }
      
      public function get fillColor() : uint
      {
         return this.gc.fillColor;
      }
      
      public function set fillColor(param1:uint) : void
      {
         this.gc.fillColor = param1;
         this.gc.fillDo = true;
      }
      
      public function get fillAlpha() : Number
      {
         return this.gc.fillAlpha;
      }
      
      public function set fillAlpha(param1:Number) : void
      {
         this.gc.fillAlpha = param1;
         this.gc.fillDo = true;
      }
      
      public function get strokeColor() : uint
      {
         return this.gc.strokeColor;
      }
      
      public function set strokeColor(param1:uint) : void
      {
         this.gc.strokeColor = param1;
         this.gc.applyStroke();
      }
      
      public function get strokeAlpha() : Number
      {
         return this.gc.strokeAlpha;
      }
      
      public function set strokeAlpha(param1:Number) : void
      {
         this.gc.strokeAlpha = param1;
         this.gc.applyStroke();
      }
      
      public function get tintColor() : uint
      {
         return this._tint_color;
      }
      
      public function set tintColor(param1:uint) : void
      {
         this._tint_color = param1;
         this._tint_do = this._tint_color != 4294967295;
      }
      
      public function applyStroke() : void
      {
         this.gc.applyStroke();
      }
      
      public function applyFill() : void
      {
         this.gc.applyFill();
      }
      
      public function lineStyle(param1:Number = NaN, param2:uint = 0, param3:Number = 1, param4:Boolean = false, param5:String = "normal", param6:String = null, param7:String = null, param8:Number = 3) : void
      {
         this.gc.lineStyle(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function lineGradientStyle(param1:String, param2:Array, param3:Array, param4:Array, param5:Matrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0.0) : void
      {
         this.gc.lineGradientStyle(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function beginFill(param1:uint, param2:Number = 1.0) : void
      {
         this.gc.beginFill(param1,param2);
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
      
      public function colorMode(param1:String, param2:Number = 255, param3:Number = NaN, param4:Number = NaN, param5:Number = NaN) : void
      {
         this.colorModeState = param1;
         if(param5 > 0)
         {
            this.colorModeX = param2;
            this.colorModeY = param3;
            this.colorModeZ = param4;
            this.colorModeA = param5;
         }
         else if(param4 > 0)
         {
            this.colorModeX = param2;
            this.colorModeY = param3;
            this.colorModeZ = param4;
         }
         else
         {
            this.colorModeX = this.colorModeY = this.colorModeZ = this.colorModeA = param2;
         }
      }
      
      public function color(param1:Number, param2:Number = NaN, param3:Number = NaN, param4:Number = NaN) : uint
      {
         if(param4 >= 0)
         {
            if(this.colorModeState == HSB)
            {
               return FColor.HSVtoValue(360 * param1 / this.colorModeX,param2 / this.colorModeY,param3 / this.colorModeZ,param4 / this.colorModeA);
            }
            return FColor.RGBtoValue(uint(param1 / this.colorModeX * 255),uint(param2 / this.colorModeY * 255),uint(param3 / this.colorModeZ * 255),param4 / this.colorModeA);
         }
         if(param3 >= 0)
         {
            if(this.colorModeState == HSB)
            {
               return FColor.HSVtoValue(360 * param1 / this.colorModeX,param2 / this.colorModeY,param3 / this.colorModeZ);
            }
            return FColor.RGBtoValue(uint(param1 / this.colorModeX * 255),uint(param2 / this.colorModeY * 255),uint(param3 / this.colorModeZ * 255));
         }
         if(param2 >= 0)
         {
            if(uint(param1) <= 255)
            {
               return FColor.GrayToValue(uint(param1 / this.colorModeX * 255),param2 / this.colorModeA);
            }
            return FColor.toARGB(uint(param1),param2 / this.colorModeA);
         }
         if(uint(param1) <= 255)
         {
            return FColor.GrayToValue(uint(param1 / this.colorModeX * 255));
         }
         return uint(param1);
      }
      
      function __calcColor(param1:Number, param2:Number = NaN, param3:Number = NaN, param4:Number = NaN) : void
      {
         if(param4 >= 0)
         {
            this.__calc_alpha = param4 / this.colorModeA;
            if(this.colorModeState == HSB)
            {
               this.__calc_color = FColor.HSVtoValue(360 * param1 / this.colorModeX,param2 / this.colorModeY,param3 / this.colorModeZ);
            }
            else
            {
               this.__calc_color = FColor.RGBtoValue(uint(param1 / this.colorModeX * 255),uint(param2 / this.colorModeY * 255),uint(param3 / this.colorModeZ * 255));
            }
         }
         else if(param3 >= 0)
         {
            this.__calc_alpha = 1;
            if(this.colorModeState == HSB)
            {
               this.__calc_color = FColor.HSVtoValue(360 * param1 / this.colorModeX,param2 / this.colorModeY,param3 / this.colorModeZ);
            }
            else
            {
               this.__calc_color = FColor.RGBtoValue(uint(param1 / this.colorModeX * 255),uint(param2 / this.colorModeY * 255),uint(param3 / this.colorModeZ * 255));
            }
         }
         else if(param2 >= 0)
         {
            this.__calc_alpha = param2 / this.colorModeA;
            if(uint(param1) <= 255)
            {
               this.__calc_color = FColor.GrayToValue(uint(param1 / this.colorModeX * 255));
            }
            else if(param1 >>> 24 > 0)
            {
               this.__calc_color = param1 & 16777215;
            }
            else
            {
               this.__calc_color = uint(param1);
            }
         }
         else
         {
            this.__calc_alpha = 1;
            if(uint(param1) <= 255)
            {
               this.__calc_color = FColor.GrayToValue(uint(param1 / this.colorModeX * 255));
            }
            else if(param1 >>> 24 > 0)
            {
               this.__calc_color = param1 & 16777215;
               this.__calc_alpha = (param1 >>> 24) / 255;
            }
            else
            {
               this.__calc_color = uint(param1);
            }
         }
      }
      
      public function pushMatrix() : void
      {
      }
      
      public function popMatrix() : void
      {
      }
      
      public function applyMatrix2D(param1:Matrix) : void
      {
      }
   }
}

import flash.display.BitmapData;
import flash.geom.ColorTransform;
import flash.utils.Dictionary;

class TintCache
{
    
   
   private var d:Dictionary;
   
   private var ct:ColorTransform;
   
   function TintCache()
   {
      super();
      this.d = new Dictionary(false);
      this.ct = new ColorTransform();
   }
   
   public function getTintImage(param1:BitmapData, param2:uint) : BitmapData
   {
      var _loc3_:BitmapData = null;
      if(param2 != 4294967295)
      {
         if(this.d[param1] == null)
         {
            this.d[param1] = [];
            this.d[param1][param2] = _loc3_ = this.tint(param1,param2);
         }
         else
         {
            _loc3_ = this.d[param1][param2];
            if(_loc3_ == null)
            {
               this.d[param1][param2] = _loc3_ = this.tint(param1,param2);
            }
         }
         return _loc3_;
      }
      return param1;
   }
   
   private function tint(param1:BitmapData, param2:uint) : BitmapData
   {
      var _loc3_:BitmapData = param1.clone();
      this.ct.alphaMultiplier = (param2 >>> 24) / 255;
      this.ct.redMultiplier = (param2 >> 16 & 255) / 255;
      this.ct.greenMultiplier = (param2 >> 8 & 255) / 255;
      this.ct.blueMultiplier = (param2 & 255) / 255;
      _loc3_.colorTransform(_loc3_.rect,this.ct);
      return _loc3_;
   }
   
   public function dispose(param1:BitmapData = null) : void
   {
      var _loc2_:Array = null;
      var _loc3_:BitmapData = null;
      var _loc4_:* = undefined;
      if(param1 == null)
      {
         for(_loc4_ in this.d)
         {
            _loc2_ = this.d[_loc4_];
            for each(_loc3_ in _loc2_)
            {
               _loc3_.dispose();
            }
            delete this.d[_loc4_];
         }
      }
      else
      {
         _loc2_ = this.d[param1];
         if(_loc2_ != null)
         {
            for each(_loc3_ in _loc2_)
            {
               _loc3_.dispose();
            }
            delete this.d[param1];
         }
      }
   }
}
