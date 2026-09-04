package frocessing.color
{
   public class FColor implements IColor
   {
      
      private static var __read:uint = 0;
      
      private static var __read_h:Number = 0;
      
      private static var __read_s:Number = 0;
      
      private static var __read_v:Number = 0;
      
      private static var __cache_r:uint = 0;
      
      private static var __cache_g:uint = 0;
      
      private static var __cache_b:uint = 0;
      
      private static var __cache_h:Number = 0;
      
      private static var __cache_s:Number = 0;
      
      private static var __cache_v:Number = 0;
       
      
      private var _a:Number;
      
      private var _r:uint;
      
      private var _g:uint;
      
      private var _b:uint;
      
      private var _h:Number;
      
      private var _s:Number;
      
      private var _v:Number;
      
      private var __update_rgb_flg:Boolean;
      
      private var __update_hsv_flg:Boolean;
      
      public function FColor(param1:Number = 0, param2:Number = NaN, param3:Number = NaN, param4:Number = 1.0, param5:Boolean = true)
      {
         super();
         this.color(param1,param2,param3,param4,param5);
      }
      
      public static function alpha(param1:uint) : Number
      {
         return (param1 >>> 24) / 255;
      }
      
      public static function red(param1:uint) : uint
      {
         return param1 >> 16 & 255;
      }
      
      public static function green(param1:uint) : uint
      {
         return param1 >> 8 & 255;
      }
      
      public static function blue(param1:uint) : uint
      {
         return param1 & 255;
      }
      
      public static function hue(param1:uint) : Number
      {
         if(param1 != __read)
         {
            __readHSV(param1);
         }
         return __read_h;
      }
      
      public static function saturation(param1:uint) : Number
      {
         if(param1 != __read)
         {
            __readHSV(param1);
         }
         return __read_s;
      }
      
      public static function brightness(param1:uint) : Number
      {
         if(param1 != __read)
         {
            __readHSV(param1);
         }
         return __read_v;
      }
      
      private static function __readHSV(param1:uint) : void
      {
         __read = param1;
         __RGBtoHSV(param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255);
         __read_h = __cache_h;
         __read_s = __cache_s;
         __read_v = __cache_v;
      }
      
      public static function RGBtoHSV(param1:uint, param2:uint, param3:uint) : Object
      {
         __RGBtoHSV(param1,param2,param3);
         return {
            "h":__cache_h,
            "s":__cache_s,
            "v":__cache_v
         };
      }
      
      public static function HSVtoRGB(param1:Number, param2:Number, param3:Number) : Object
      {
         __HSVtoRGB(param1,param2,param3);
         return {
            "r":__cache_r,
            "g":__cache_g,
            "b":__cache_b
         };
      }
      
      public static function RGBtoValue(param1:uint, param2:uint, param3:uint, param4:Number = 0) : uint
      {
         if(param4 > 0)
         {
            return (Math.round(param4 * 255) & 255) << 24 | param1 << 16 & 16711680 | param2 << 8 & 65280 | param3 & 255;
         }
         return param1 << 16 & 16711680 | param2 << 8 & 65280 | param3 & 255;
      }
      
      public static function HSVtoValue(param1:Number, param2:Number, param3:Number, param4:Number = 0) : uint
      {
         __HSVtoRGB(param1,param2,param3);
         if(param4 > 0)
         {
            return (Math.round(param4 * 255) & 255) << 24 | __cache_r << 16 | __cache_g << 8 | __cache_b;
         }
         return __cache_r << 16 | __cache_g << 8 | __cache_b;
      }
      
      public static function GrayToValue(param1:uint, param2:Number = 0) : uint
      {
         var _loc3_:uint = param1 > 255 ? uint(255) : uint(param1);
         if(param2 > 0)
         {
            return (Math.round(param2 * 255) & 255) << 24 | _loc3_ << 16 | _loc3_ << 8 | _loc3_;
         }
         return _loc3_ << 16 | _loc3_ << 8 | _loc3_;
      }
      
      public static function toARGB(param1:uint, param2:Number = 1.0) : uint
      {
         if(param1 >>> 24 > 0)
         {
            return (Math.round(param2 * 255) & 255) << 24 | param1 & 16777215;
         }
         return (Math.round(param2 * 255) & 255) << 24 | param1;
      }
      
      public static function ValueToRGB(param1:uint) : Object
      {
         return {
            "r":param1 >> 16 & 255,
            "g":param1 >> 8 & 255,
            "b":param1 & 255
         };
      }
      
      public static function ValueToHSV(param1:uint) : Object
      {
         return RGBtoHSV(param1 >> 16 & 255,param1 >> 8 & 255,param1 & 255);
      }
      
      private static function __RGBtoHSV(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Number = Math.max(param1,Math.max(param2,param3));
         var _loc5_:Number = Math.min(param1,Math.min(param2,param3));
         var _loc6_:Number;
         if((_loc6_ = _loc4_ - _loc5_) == 0)
         {
            __cache_h = 0;
            __cache_s = 0;
            __cache_v = _loc4_ / 255;
         }
         else
         {
            __cache_s = _loc6_ / _loc4_;
            __cache_v = _loc4_ / 255;
            if(param1 == _loc4_)
            {
               __cache_h = 60 * (param2 - param3) / _loc6_;
            }
            else if(param2 == _loc4_)
            {
               __cache_h = 60 * (param3 - param1) / _loc6_ + 120;
            }
            else
            {
               __cache_h = 60 * (param1 - param2) / _loc6_ + 240;
            }
         }
      }
      
      private static function __HSVtoRGB(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         if(param2 == 0)
         {
            __cache_r = __cache_g = __cache_b = Math.round(param3 * 255) & 255;
         }
         else
         {
            _loc4_ = ((_loc4_ = (_loc4_ = param1) % 360) < 0 ? _loc4_ + 360 : _loc4_) / 60;
            _loc5_ = Math.max(0,Math.min(255,param3 * 255));
            _loc6_ = Math.floor(_loc4_);
            switch(_loc6_)
            {
               case 0:
                  __cache_r = _loc5_;
                  __cache_g = Math.round(_loc5_ * (1 - (1 - _loc4_ + _loc6_) * param2));
                  __cache_b = Math.round(_loc5_ * (1 - param2));
                  break;
               case 1:
                  __cache_r = Math.round(_loc5_ * (1 - param2 * _loc4_ + param2 * _loc6_));
                  __cache_g = _loc5_;
                  __cache_b = Math.round(_loc5_ * (1 - param2));
                  break;
               case 2:
                  __cache_r = Math.round(_loc5_ * (1 - param2));
                  __cache_g = _loc5_;
                  __cache_b = Math.round(_loc5_ * (1 - (1 - _loc4_ + _loc6_) * param2));
                  break;
               case 3:
                  __cache_r = Math.round(_loc5_ * (1 - param2));
                  __cache_g = Math.round(_loc5_ * (1 - param2 * _loc4_ + param2 * _loc6_));
                  __cache_b = _loc5_;
                  break;
               case 4:
                  __cache_r = Math.round(_loc5_ * (1 - (1 - _loc4_ + _loc6_) * param2));
                  __cache_g = Math.round(_loc5_ * (1 - param2));
                  __cache_b = _loc5_;
                  break;
               case 5:
                  __cache_r = _loc5_;
                  __cache_g = Math.round(_loc5_ * (1 - param2));
                  __cache_b = Math.round(_loc5_ * (1 - param2 * _loc4_ + param2 * _loc6_));
            }
         }
      }
      
      public function clone() : FColor
      {
         var _loc1_:FColor = new FColor();
         _loc1_._r = this._r;
         _loc1_._g = this._g;
         _loc1_._b = this._b;
         if(this.__update_hsv_flg)
         {
            this.__update_hsv();
         }
         _loc1_._h = this._h;
         _loc1_._s = this._s;
         _loc1_._v = this._v;
         return _loc1_;
      }
      
      public function get value() : uint
      {
         if(this.__update_rgb_flg)
         {
            this.__update_rgb();
         }
         return this._r << 16 | this._g << 8 | this._b;
      }
      
      public function set value(param1:uint) : void
      {
         this._r = param1 >> 16 & 255;
         this._g = param1 >> 8 & 255;
         this._b = param1 & 255;
         this.__update_hsv_flg = true;
         this.__update_rgb_flg = false;
      }
      
      public function get value32() : uint
      {
         if(this.__update_rgb_flg)
         {
            this.__update_rgb();
         }
         return this.a8 << 24 | this._r << 16 | this._g << 8 | this._b;
      }
      
      public function set value32(param1:uint) : void
      {
         this._a = (param1 >>> 24) / 255;
         this.value = param1;
      }
      
      public function get a() : Number
      {
         return this._a;
      }
      
      public function set a(param1:Number) : void
      {
         this._a = param1;
      }
      
      private function get a8() : uint
      {
         return Math.round(this._a * 255) & 255;
      }
      
      public function get r() : uint
      {
         if(this.__update_rgb_flg)
         {
            this.__update_rgb();
         }
         return this._r;
      }
      
      public function set r(param1:uint) : void
      {
         if(this.__update_rgb_flg)
         {
            this.__update_rgb();
         }
         this._r = param1 & 255;
         this.__update_hsv_flg = true;
      }
      
      public function get g() : uint
      {
         if(this.__update_rgb_flg)
         {
            this.__update_rgb();
         }
         return this._g;
      }
      
      public function set g(param1:uint) : void
      {
         if(this.__update_rgb_flg)
         {
            this.__update_rgb();
         }
         this._g = param1 & 255;
         this.__update_hsv_flg = true;
      }
      
      public function get b() : uint
      {
         if(this.__update_rgb_flg)
         {
            this.__update_rgb();
         }
         return this._b;
      }
      
      public function set b(param1:uint) : void
      {
         if(this.__update_rgb_flg)
         {
            this.__update_rgb();
         }
         this._b = param1 & 255;
         this.__update_hsv_flg = true;
      }
      
      public function get hr() : Number
      {
         return Math.PI * this.h / 180;
      }
      
      public function set hr(param1:Number) : void
      {
         this.h = 180 * param1 / Math.PI;
      }
      
      public function get h() : Number
      {
         if(this.__update_hsv_flg)
         {
            this.__update_hsv();
         }
         return this._h;
      }
      
      public function set h(param1:Number) : void
      {
         if(this.__update_hsv_flg)
         {
            this.__update_hsv();
         }
         this._h = param1;
         this.__update_rgb_flg = true;
      }
      
      public function get s() : Number
      {
         if(this.__update_hsv_flg)
         {
            this.__update_hsv();
         }
         return this._s;
      }
      
      public function set s(param1:Number) : void
      {
         if(this.__update_hsv_flg)
         {
            this.__update_hsv();
         }
         this._s = Math.max(0,Math.min(1,param1));
         this.__update_rgb_flg = true;
      }
      
      public function get v() : Number
      {
         if(this.__update_hsv_flg)
         {
            this.__update_hsv();
         }
         return this._v;
      }
      
      public function set v(param1:Number) : void
      {
         if(this.__update_hsv_flg)
         {
            this.__update_hsv();
         }
         this._v = Math.max(0,Math.min(1,param1));
         this.__update_rgb_flg = true;
      }
      
      public function rgb(param1:uint, param2:uint, param3:uint) : void
      {
         this._r = param1 & 255;
         this._g = param2 & 255;
         this._b = param3 & 255;
         this.__update_hsv();
         this.__update_rgb_flg = false;
         this.__update_hsv_flg = false;
      }
      
      public function hsv(param1:Number, param2:Number = 1.0, param3:Number = 1.0) : void
      {
         this._h = param1;
         this._s = Math.max(0,Math.min(1,param2));
         this._v = Math.max(0,Math.min(1,param3));
         this.__update_rgb();
         this.__update_rgb_flg = false;
         this.__update_hsv_flg = false;
      }
      
      public function gray(param1:uint) : void
      {
         this._r = this._g = this._b = param1 & 255;
         this._h = this._s = 0;
         this._v = this._r / 255;
         this.__update_rgb_flg = false;
         this.__update_hsv_flg = false;
      }
      
      public function color(param1:Number, param2:Number = NaN, param3:Number = NaN, param4:Number = 1.0, param5:Boolean = true) : void
      {
         if(param3 >= 0)
         {
            this._a = param4;
            if(param5)
            {
               this.rgb(uint(param1),uint(param2),uint(param3));
            }
            else
            {
               this.hsv(param1,param2,param3);
            }
         }
         else if(param2 >= 0)
         {
            this._a = param2;
            if(uint(param1) <= 255)
            {
               this.gray(param1);
            }
            else
            {
               this.value = param1;
            }
         }
         else
         {
            this._a = 1;
            if(uint(param1) <= 255)
            {
               this.gray(param1);
            }
            else if(param1 >>> 24 > 0)
            {
               this.value32 = param1;
            }
            else
            {
               this.value = param1;
            }
         }
      }
      
      private function __update_rgb() : void
      {
         __HSVtoRGB(this._h,this._s,this._v);
         this._r = __cache_r;
         this._g = __cache_g;
         this._b = __cache_b;
         this.__update_rgb_flg = false;
      }
      
      private function __update_hsv() : void
      {
         __RGBtoHSV(this._r,this._g,this._b);
         this._h = __cache_h;
         this._s = __cache_s;
         this._v = __cache_v;
         this.__update_hsv_flg = false;
      }
      
      public function toString() : String
      {
         return "[FColor(" + this._r + "," + this._g + "," + this._b + "," + this._a.toFixed(2) + ")]";
      }
      
      public function valueOf() : uint
      {
         return this.value;
      }
   }
}
