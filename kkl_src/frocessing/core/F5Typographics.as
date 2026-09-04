package frocessing.core
{
   import flash.display.BitmapData;
   import frocessing.f5internal;
   import frocessing.text.FAbstractText;
   import frocessing.text.FFont;
   import frocessing.text.PFont;
   
   use namespace f5internal;
   
   public class F5Typographics extends FAbstractText
   {
       
      
      private var _fg:F5Graphics;
      
      private var _z:Number = 0;
      
      public var detail:uint;
      
      public function F5Typographics(param1:F5Graphics)
      {
         super();
         this._fg = param1;
         this._z = 0;
         this.detail = 1;
      }
      
      public function text(param1:String, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         this._z = param4;
         if(drawType == 1)
         {
            this._fg.gc.abortStroke();
            _loc5_ = this._fg.gc.imageDetail;
            _loc6_ = this._fg.tintColor;
            this._fg.gc.imageDetail = this.detail;
            this._fg.tintColor = _color;
            drawText(param1,param2,param3);
            this._fg.gc.imageDetail = _loc5_;
            this._fg.tintColor = _loc6_;
            this._fg.gc.reapplyStroke();
         }
         else
         {
            drawText(param1,param2,param3);
         }
         this._z = 0;
      }
      
      public function textArea(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number = 0.0) : void
      {
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         this._z = param6;
         if(drawType == 1)
         {
            this._fg.gc.abortStroke();
            _loc7_ = this._fg.gc.imageDetail;
            _loc8_ = this._fg.tintColor;
            this._fg.gc.imageDetail = this.detail;
            this._fg.tintColor = _color;
            drawTextArea(param1,param2,param3,param4,param5);
            this._fg.gc.imageDetail = _loc7_;
            this._fg.tintColor = _loc8_;
            this._fg.gc.reapplyStroke();
         }
         else
         {
            drawTextArea(param1,param2,param3,param4,param5);
         }
         this._z = 0;
      }
      
      override protected function __drawPFontChar(param1:PFont, param2:uint, param3:Number, param4:Number) : void
      {
         var _loc5_:int;
         if((_loc5_ = _font.index(param2)) == -1)
         {
            return;
         }
         var _loc6_:Number = param1.fwidth;
         var _loc7_:Number = param1.fheight;
         var _loc8_:Number = param1.width[_loc5_];
         var _loc9_:Number = param1.height[_loc5_];
         var _loc10_:Number = _loc8_ / _loc6_;
         var _loc11_:Number = _loc9_ / _loc7_;
         var _loc12_:Number = param1.leftExtent[_loc5_] / _loc6_;
         var _loc13_:Number = param1.topExtent[_loc5_] / _loc7_;
         var _loc14_:BitmapData = param1.getFontImage(_loc5_);
         var _loc15_:Number = param3 + _loc12_ * _size;
         var _loc16_:Number = param4 - _loc13_ * _size;
         var _loc17_:Number = _loc10_ * _size;
         var _loc18_:Number = _loc11_ * _size;
         this._fg._image(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,this._z);
      }
      
      override protected function __drawFFontChar(param1:FFont, param2:uint, param3:Number, param4:Number) : void
      {
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc5_:int;
         if((_loc5_ = _font.index(param2)) == -1)
         {
            return;
         }
         var _loc6_:Number = _size / param1.size;
         var _loc7_:Array = param1.commands[_loc5_];
         var _loc8_:Array = param1.paths[_loc5_];
         var _loc9_:int = _loc7_.length;
         var _loc10_:int = 0;
         var _loc11_:int = 1;
         this._fg.applyFill();
         var _loc14_:int = 0;
         while(_loc14_ < _loc9_)
         {
            switch(_loc7_[_loc14_])
            {
               case 1:
                  this._fg.moveTo(param3 + _loc8_[_loc10_] * _loc6_,param4 + _loc8_[_loc11_] * _loc6_,this._z);
                  _loc10_ += 2;
                  _loc11_ += 2;
                  break;
               case 2:
                  this._fg.lineTo(param3 + _loc8_[_loc10_] * _loc6_,param4 + _loc8_[_loc11_] * _loc6_,this._z);
                  _loc10_ += 2;
                  _loc11_ += 2;
                  break;
               case 3:
                  _loc12_ = _loc10_ + 2;
                  _loc13_ = _loc11_ + 2;
                  this._fg._curveTo(param3 + _loc8_[_loc10_] * _loc6_,param4 + _loc8_[_loc11_] * _loc6_,this._z,param3 + _loc8_[_loc12_] * _loc6_,param4 + _loc8_[_loc13_] * _loc6_,this._z);
                  _loc10_ += 4;
                  _loc11_ += 4;
                  break;
            }
            _loc14_++;
         }
         this._fg.endFill();
      }
   }
}
