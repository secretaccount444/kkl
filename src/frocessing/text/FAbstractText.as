package frocessing.text
{
   import frocessing.core.F5C;
   
   public class FAbstractText
   {
      
      public static const CENTER:int = F5C.CENTER;
      
      public static const LEFT:int = F5C.LEFT;
      
      public static const RIGHT:int = F5C.RIGHT;
      
      public static const BASELINE:int = F5C.BASELINE;
      
      public static const TOP:int = F5C.TOP;
      
      public static const BOTTOM:int = F5C.BOTTOM;
       
      
      private var __loadcheck:Boolean = false;
      
      protected var _font:IFont;
      
      protected var _size:Number;
      
      protected var _leading:Number;
      
      protected var _letterspacing:Number;
      
      protected var _align:int;
      
      protected var _valign:int;
      
      protected var _color:uint;
      
      private var buffer:String;
      
      private var buffer_length:int;
      
      private var char_sp:uint;
      
      protected var drawType:int;
      
      public function FAbstractText()
      {
         this.char_sp = String(" ").charCodeAt(0);
         super();
         this._size = 12;
         this._leading = 14;
         this._letterspacing = 0;
         this._align = LEFT;
         this._valign = BASELINE;
      }
      
      public function textFont(param1:IFont, param2:Number = NaN) : void
      {
         this._font = param1;
         if(param2 > 0)
         {
            this.size = param2;
         }
         else
         {
            this.size = this._font.size;
         }
         if(this._font is PFont)
         {
            this.drawType = 1;
         }
         else if(this._font is FFont)
         {
            this.drawType = 2;
         }
         else
         {
            this.drawType = 0;
         }
         if(param1 is PFontLoader)
         {
            this.__loadcheck = true;
         }
      }
      
      public function get font() : IFont
      {
         return this._font;
      }
      
      public function get size() : Number
      {
         return this._size;
      }
      
      public function set size(param1:Number) : void
      {
         if(this._font != null)
         {
            this._size = param1;
            this._leading = param1 * (this._font.ascent + this._font.descent) * 1.275;
         }
      }
      
      public function get leading() : Number
      {
         return this._leading;
      }
      
      public function set leading(param1:Number) : void
      {
         this._leading = param1;
      }
      
      public function get letterSpacing() : Number
      {
         return this._letterspacing;
      }
      
      public function set letterSpacing(param1:Number) : void
      {
         this._letterspacing = param1;
      }
      
      public function get align() : int
      {
         return this._align;
      }
      
      public function set align(param1:int) : void
      {
         this._align = param1;
      }
      
      public function get alignY() : int
      {
         return this._valign;
      }
      
      public function set alignY(param1:int) : void
      {
         this._valign = param1;
      }
      
      public function textAscent() : Number
      {
         if(this._font == null)
         {
            return NaN;
         }
         return this._font.ascent * this._size;
      }
      
      public function textDescent() : Number
      {
         if(this._font == null)
         {
            return NaN;
         }
         return this._font.descent * this._size;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function set color(param1:uint) : void
      {
         this._color = param1;
      }
      
      protected function __drawPFontChar(param1:PFont, param2:uint, param3:Number, param4:Number) : void
      {
      }
      
      protected function __drawFFontChar(param1:FFont, param2:uint, param3:Number, param4:Number) : void
      {
      }
      
      private function __text(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:int = 0;
         var _loc6_:PFont = null;
         var _loc7_:FFont = null;
         if(this._align == CENTER)
         {
            param3 -= this.__textWidth(this.buffer,param1,param2) * 0.5;
         }
         else if(this._align == RIGHT)
         {
            param3 -= this.__textWidth(this.buffer,param1,param2);
         }
         if(this.drawType == 1)
         {
            _loc6_ = PFont(this._font);
            _loc5_ = param1;
            while(_loc5_ < param2)
            {
               this.__drawPFontChar(_loc6_,this.buffer.charCodeAt(_loc5_),param3,param4);
               param3 += this._font.charWidth(this.buffer.charCodeAt(_loc5_)) * this._size + this._letterspacing;
               _loc5_++;
            }
         }
         else if(this.drawType == 2)
         {
            _loc7_ = FFont(this._font);
            _loc5_ = param1;
            while(_loc5_ < param2)
            {
               this.__drawFFontChar(_loc7_,this.buffer.charCodeAt(_loc5_),param3,param4);
               param3 += this._font.charWidth(this.buffer.charCodeAt(_loc5_)) * this._size + this._letterspacing;
               _loc5_++;
            }
         }
      }
      
      public function drawText(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(this._font == null)
         {
            throw new Error("font is not selected.");
         }
         if(this.__loadcheck && this._font.size > 0)
         {
            this.size = this._size < 0 ? Number(this._font.size) : Number(this._size);
            this.__loadcheck = false;
         }
         this.buffer = param1;
         this.buffer_length = this.buffer.length;
         var _loc5_:Number = 0;
         _loc4_ = 0;
         while(_loc4_ < this.buffer_length)
         {
            if(this.buffer.charAt(_loc7_) == "\r" || this.buffer.charAt(_loc7_) == "\n")
            {
               _loc5_ += this._leading;
            }
            _loc4_++;
         }
         if(this._valign == CENTER)
         {
            param3 += (this._font.ascent * this._size - _loc5_) * 0.5;
         }
         else if(this._valign == TOP)
         {
            param3 += this._font.ascent * this._size;
         }
         else if(this._valign == BOTTOM)
         {
            param3 -= _loc5_;
         }
         while(_loc7_ < this.buffer_length)
         {
            if(this.buffer.charAt(_loc7_) == "\r" || this.buffer.charAt(_loc7_) == "\n")
            {
               this.__text(_loc6_,_loc7_,param2,param3);
               _loc6_ = _loc7_ + 1;
               param3 += this._leading;
            }
            _loc7_++;
         }
         if(_loc6_ < this.buffer_length)
         {
            this.__text(_loc6_,_loc7_,param2,param3);
         }
      }
      
      public function drawTextArea(param1:String, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc16_:Number = NaN;
         if(this._font == null)
         {
            throw new Error("font is not selected.");
         }
         if(this.__loadcheck && this._font.size > 0)
         {
            this.size = this._size < 0 ? Number(this._font.size) : Number(this._size);
            this.__loadcheck = false;
         }
         this.buffer = param1;
         this.buffer_length = this.buffer.length;
         var _loc6_:Number = this._font.charWidth(this.char_sp) * this._size;
         var _loc7_:Number = param2;
         var _loc8_:Number = param3;
         var _loc9_:Number = param2 + param4;
         var _loc10_:Number = param3 + param5;
         var _loc11_:Number = param2;
         if(this._align == CENTER)
         {
            _loc11_ += param4 * 0.5;
         }
         else if(this._align == RIGHT)
         {
            _loc11_ = _loc9_;
         }
         if((_loc8_ += this._font.ascent) > _loc10_)
         {
            return;
         }
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         while(_loc15_ < this.buffer_length)
         {
            if(this.buffer.charAt(_loc15_) == " " || _loc15_ == this.buffer_length - 1)
            {
               _loc16_ = this.__textWidth(this.buffer,_loc12_,_loc15_);
               if(_loc7_ + _loc16_ > _loc9_)
               {
                  if(_loc7_ == param2)
                  {
                     while(--_loc15_ != _loc12_)
                     {
                        if((_loc16_ = this.__textWidth(this.buffer,_loc12_,_loc15_)) > param4)
                        {
                           continue;
                        }
                        this.__text(_loc14_,_loc15_,_loc11_,_loc8_);
                     }
                     return;
                  }
                  this.__text(_loc14_,_loc13_,_loc11_,_loc8_);
                  _loc15_ = _loc13_;
                  while(_loc15_ < this.buffer_length && this.buffer.charAt(_loc15_) == " ")
                  {
                     _loc15_++;
                  }
                  _loc14_ = _loc15_;
                  _loc12_ = _loc15_;
                  _loc13_ = _loc15_;
                  _loc7_ = param2;
                  if((_loc8_ += this._leading) > _loc10_)
                  {
                     return;
                  }
               }
               else
               {
                  _loc7_ += _loc16_ + _loc6_;
                  _loc13_ = _loc15_;
                  _loc12_ = _loc15_ + 1;
               }
            }
            else if(this.buffer.charAt(_loc15_) == "\r" || this.buffer.charAt(_loc15_) == "\n")
            {
               if(_loc14_ != _loc15_)
               {
                  this.__text(_loc14_,_loc15_,_loc11_,_loc8_);
               }
               _loc12_ = _loc14_ = _loc15_ + 1;
               _loc7_ = param2;
               if((_loc8_ += this._leading) > _loc10_)
               {
                  return;
               }
            }
            _loc15_++;
         }
         if(_loc14_ < this.buffer_length && _loc14_ != _loc15_)
         {
            this.__text(_loc14_,_loc15_,_loc11_,_loc8_);
         }
      }
      
      public function textWidth(param1:String) : Number
      {
         if(!this._font)
         {
            throw new Error("font is not selected.");
         }
         var _loc2_:int = param1.length;
         var _loc3_:Number = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc4_ < _loc2_)
         {
            if(param1.charAt(_loc4_) == "\r" || param1.charAt(_loc4_) == "\n")
            {
               _loc3_ = Math.max(_loc3_,this.__textWidth(param1,_loc5_,_loc4_));
               _loc5_ = _loc4_ + 1;
            }
            _loc4_++;
         }
         if(_loc5_ < _loc2_)
         {
            _loc3_ = Math.max(_loc3_,this.__textWidth(param1,_loc5_,_loc4_));
         }
         return _loc3_;
      }
      
      private function __textWidth(param1:String, param2:int, param3:int) : Number
      {
         var _loc4_:Number = 0;
         var _loc5_:int = param2;
         while(_loc5_ < param3)
         {
            _loc4_ += this._font.charWidth(param1.charCodeAt(_loc5_)) * this._size;
            _loc5_++;
         }
         return _loc4_;
      }
   }
}
