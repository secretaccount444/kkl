package frocessing.shape
{
   import flash.display.CapsStyle;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.JointStyle;
   import flash.display.LineScaleMode;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import frocessing.core.F5Graphics;
   import frocessing.f5internal;
   import frocessing.geom.FMatrix2D;
   
   public class FShapeObject implements IFShape
   {
      
      protected static var __minX:Number;
      
      protected static var __maxX:Number;
      
      protected static var __minY:Number;
      
      protected static var __maxY:Number;
      
      private static var __test:Shape = new Shape();
       
      
      public var userData:Object;
      
      protected var _sysData:Object;
      
      protected var _name:String = "";
      
      protected var _parent:FShapeContainer;
      
      public var matrix:FMatrix2D;
      
      public var visible:Boolean = true;
      
      public var styleEnabled:Boolean = true;
      
      public var thickness:Number;
      
      public var caps:String;
      
      public var joints:String;
      
      public var pixelHinting:Boolean;
      
      public var scaleMode:String;
      
      public var miterLimit:Number;
      
      public var strokeEnabled:Boolean;
      
      public var strokeColor:uint;
      
      public var strokeAlpha:Number;
      
      public var strokeGradient:FShapeGradient;
      
      public var fillEnabled:Boolean;
      
      public var fillColor:uint;
      
      public var fillAlpha:Number;
      
      public var fillGradient:FShapeGradient;
      
      public var alpha:Number;
      
      protected var _left:Number = 0;
      
      protected var _top:Number = 0;
      
      protected var _width:Number = 1;
      
      protected var _height:Number = 1;
      
      protected var _geom_changed:Boolean = false;
      
      public function FShapeObject(param1:FShapeContainer = null)
      {
         this.userData = {};
         super();
         this._parent = param1;
         this._defaultSetting();
      }
      
      public function get parent() : FShapeContainer
      {
         return this._parent;
      }
      
      f5internal function set parent(param1:FShapeContainer) : void
      {
         this._parent = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      protected function _defaultSetting() : void
      {
         this.alpha = 1;
         if(this._parent == null)
         {
            this.thickness = 0;
            this.caps = CapsStyle.NONE;
            this.joints = JointStyle.MITER;
            this.pixelHinting = false;
            this.scaleMode = LineScaleMode.NORMAL;
            this.miterLimit = 4;
            this.strokeEnabled = false;
            this.strokeColor = 0;
            this.strokeAlpha = 1;
            this.strokeGradient = null;
            this.fillEnabled = true;
            this.fillColor = 0;
            this.fillAlpha = 1;
            this.fillGradient = null;
         }
         else
         {
            this.thickness = this._parent.thickness;
            this.caps = this._parent.caps;
            this.joints = this._parent.joints;
            this.pixelHinting = this._parent.pixelHinting;
            this.scaleMode = this._parent.scaleMode;
            this.miterLimit = this._parent.miterLimit;
            this.strokeEnabled = this._parent.strokeEnabled;
            this.strokeColor = this._parent.strokeColor;
            this.strokeAlpha = this._parent.strokeAlpha;
            this.strokeGradient = this._parent.strokeGradient;
            this.fillEnabled = this._parent.fillEnabled;
            this.fillColor = this._parent.fillColor;
            this.fillAlpha = this._parent.fillAlpha;
            this.fillGradient = this._parent.fillGradient;
         }
      }
      
      public function enableStyle() : void
      {
         this.styleEnabled = true;
      }
      
      public function disableStyle() : void
      {
         this.styleEnabled = false;
      }
      
      private function _checkmatrix() : void
      {
         if(this.matrix == null)
         {
            this.matrix = new FMatrix2D();
         }
      }
      
      public function resetMatrix() : void
      {
         this._checkmatrix();
         this.matrix.identity();
      }
      
      public function translate(param1:Number, param2:Number) : void
      {
         this._checkmatrix();
         this.matrix.prependTranslation(param1,param2);
      }
      
      public function scale(param1:Number, param2:Number = NaN) : void
      {
         this._checkmatrix();
         if(isNaN(param2))
         {
            this.matrix.prependScale(param1,param1);
         }
         else
         {
            this.matrix.prependScale(param1,param2);
         }
      }
      
      public function rotate(param1:Number) : void
      {
         this._checkmatrix();
         this.matrix.prependRotation(param1);
      }
      
      public function applyMatrix(param1:Matrix) : void
      {
         this._checkmatrix();
         this.matrix.prepend(param1);
      }
      
      protected function _draw_to_f5(param1:F5Graphics) : void
      {
      }
      
      protected function _draw_to_graphics(param1:Graphics) : void
      {
      }
      
      public function draw(param1:F5Graphics) : void
      {
         if(this.visible)
         {
            this._preDraw(param1);
            this._drawImp(param1);
            this._postDraw(param1);
         }
      }
      
      protected function _preDraw(param1:F5Graphics) : void
      {
         if(this.matrix != null)
         {
            param1.pushMatrix();
            param1.applyMatrix2D(this.matrix);
         }
         if(this.styleEnabled)
         {
            param1.pushStyle();
         }
      }
      
      protected function _postDraw(param1:F5Graphics) : void
      {
         if(this.styleEnabled)
         {
            param1.popStyle();
         }
         if(this.matrix != null)
         {
            param1.popMatrix();
         }
      }
      
      protected function _drawImp(param1:F5Graphics) : void
      {
         if(this.styleEnabled)
         {
            if(this.strokeEnabled)
            {
               param1.lineStyle(this.thickness,this.strokeColor,this.strokeAlpha,this.pixelHinting,this.scaleMode,this.caps,this.joints,this.miterLimit);
               if(this.strokeGradient != null)
               {
                  this.strokeGradient.applyStroke(param1,this);
               }
            }
            else
            {
               param1.noStroke();
            }
            if(this.fillEnabled)
            {
               if(this.fillGradient == null)
               {
                  param1.fillColor = this.fillColor;
                  param1.fillAlpha = this.fillAlpha;
                  param1.applyFill();
               }
               else
               {
                  param1.moveToLast();
                  this.fillGradient.applyFill(param1,this);
               }
            }
            else
            {
               param1.noFill();
            }
            this._draw_to_f5(param1);
            param1.endFill();
         }
         else
         {
            param1.applyFill();
            this._draw_to_f5(param1);
            param1.endFill();
         }
      }
      
      public function drawGraphics(param1:Graphics) : void
      {
         if(this.styleEnabled)
         {
            if(this.strokeEnabled)
            {
               param1.lineStyle(this.thickness,this.strokeColor,this.strokeAlpha,this.pixelHinting,this.scaleMode,this.caps,this.joints,this.miterLimit);
               if(this.strokeGradient != null)
               {
                  this.strokeGradient.applyStrokeToGraphics(param1,this);
               }
            }
            else
            {
               param1.lineStyle();
            }
            if(this.fillEnabled)
            {
               param1.moveTo(0,0);
               if(this.fillGradient == null)
               {
                  param1.beginFill(this.fillColor,this.fillAlpha);
               }
               else
               {
                  this.fillGradient.applyFillToGraphics(param1,this);
               }
            }
            this._draw_to_graphics(param1);
            if(this.fillEnabled)
            {
               param1.endFill();
            }
         }
         else
         {
            this._draw_to_graphics(param1);
         }
      }
      
      public function toSprite() : Sprite
      {
         if(this.visible == false)
         {
            return new Sprite();
         }
         var _loc1_:Sprite = new Sprite();
         if(this.matrix != null)
         {
            _loc1_.transform.matrix = this.matrix;
         }
         this.drawGraphics(_loc1_.graphics);
         _loc1_.alpha = this.alpha;
         return _loc1_;
      }
      
      public function get left() : Number
      {
         this._check_geom();
         return this._left;
      }
      
      public function get top() : Number
      {
         this._check_geom();
         return this._top;
      }
      
      public function get width() : Number
      {
         this._check_geom();
         return this._width;
      }
      
      public function get height() : Number
      {
         this._check_geom();
         return this._height;
      }
      
      function _check_sprite_geom(param1:Sprite = null, param2:DisplayObject = null) : void
      {
         if(this.visible == false)
         {
            return;
         }
         if(this.matrix != null)
         {
            __test.transform.matrix = this.matrix;
         }
         param1.addChild(__test);
         var _loc3_:Rectangle = this._testdraw(param2);
         if(_loc3_.width > 0 && _loc3_.height > 0)
         {
            __minX = Math.min(__minX,_loc3_.x);
            __minY = Math.min(__minY,_loc3_.y);
            __maxX = Math.max(__maxX,_loc3_.x + _loc3_.width);
            __maxY = Math.max(__maxY,_loc3_.y + _loc3_.height);
         }
      }
      
      protected function _check_geom() : void
      {
         var _loc1_:Rectangle = null;
         if(this._geom_changed)
         {
            _loc1_ = this._testdraw(null);
            this._left = _loc1_.x;
            this._top = _loc1_.y;
            this._width = _loc1_.width;
            this._height = _loc1_.height;
            this._geom_changed = false;
         }
      }
      
      private function _testdraw(param1:DisplayObject = null) : Rectangle
      {
         __test.graphics.clear();
         __test.graphics.beginFill(0,1);
         this._draw_to_graphics(__test.graphics);
         __test.graphics.endFill();
         var _loc2_:Rectangle = __test.getRect(param1);
         __test.graphics.clear();
         return _loc2_;
      }
      
      public function zeroPoint(param1:Number = 0, param2:Number = 0, param3:Boolean = true) : void
      {
         this._checkmatrix();
         this._check_geom();
         if(param3)
         {
            this.matrix.prependTranslation(-this._left - this._width * param1,-this._top - this._height * param2);
            this._left = -this._width * param1;
            this._top = -this._height * param2;
         }
         else
         {
            this.matrix.prependTranslation(-param1,-param2);
            this._left -= param1;
            this._top -= param2;
         }
      }
   }
}
