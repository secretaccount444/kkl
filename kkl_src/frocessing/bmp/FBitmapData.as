package frocessing.bmp
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class FBitmapData extends BitmapData
   {
      
      private static const __zeropoint:Point = new Point();
       
      
      public function FBitmapData(param1:uint, param2:uint, param3:Boolean = true, param4:uint = 4.294967295E9)
      {
         super(param1,param2,param3,param4);
      }
      
      public static function split(param1:BitmapData, param2:uint = 2, param3:uint = 2) : Array
      {
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:BitmapData = null;
         var _loc4_:int;
         if((_loc4_ = param2 * param3) <= 0)
         {
            return [];
         }
         if(_loc4_ == 1)
         {
            return [param1.clone()];
         }
         var _loc5_:int = param1.rect.width;
         var _loc6_:int = param1.rect.height;
         var _loc7_:int = Math.ceil(_loc5_ / param2);
         var _loc8_:int = Math.ceil(_loc6_ / param3);
         var _loc9_:Array = [];
         var _loc10_:Rectangle = new Rectangle();
         var _loc11_:int = 0;
         while(_loc11_ < _loc6_)
         {
            _loc12_ = _loc11_;
            _loc13_ = Math.min(_loc11_ + _loc8_,_loc6_);
            _loc14_ = 0;
            while(_loc14_ < _loc5_)
            {
               _loc15_ = _loc14_;
               _loc16_ = Math.min(_loc14_ + _loc7_,_loc5_);
               _loc10_.x = _loc15_;
               _loc10_.y = _loc12_;
               _loc10_.width = _loc16_ - _loc15_;
               _loc10_.height = _loc13_ - _loc12_;
               (_loc17_ = new BitmapData(_loc10_.width,_loc10_.height,param1.transparent,0)).copyPixels(param1,_loc10_,__zeropoint);
               _loc9_.push(_loc17_);
               _loc14_ += _loc7_;
            }
            _loc11_ += _loc8_;
         }
         return _loc9_;
      }
      
      public static function drawObject(param1:DisplayObject, param2:int = 0, param3:Number = 1, param4:Number = 1, param5:Boolean = false, param6:BitmapData = null) : BitmapData
      {
         var _loc7_:Matrix = param1.transform.matrix;
         var _loc8_:Rectangle = !!param1.parent ? param1.getBounds(param1.parent) : param1.getBounds(param1);
         var _loc9_:uint = Math.ceil(_loc8_.width * param3);
         var _loc10_:uint = Math.ceil(_loc8_.height * param4);
         _loc7_.translate(-_loc8_.x,-_loc8_.y);
         _loc7_.scale(param3,param4);
         _loc7_.translate(param2,param2);
         if(param6 == null)
         {
            param6 = new BitmapData(_loc9_ + param2 * 2,_loc10_ + param2 * 2,true,0);
         }
         param6.draw(param1,_loc7_,param1.transform.colorTransform,null,null,param5);
         return param6;
      }
      
      public function drawPixel(param1:int, param2:int, param3:uint) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc4_:uint;
         if((_loc4_ = param3 >>> 24) > 0)
         {
            _loc6_ = (_loc5_ = getPixel32(param1,param2)) >>> 24;
            _loc7_ = _loc4_ ^ 255;
            _loc5_ &= 16777215;
            _loc8_ = _loc7_ * (_loc5_ >> 16 & 255) + _loc4_ * (param3 >> 16 & 255) >> 8;
            _loc9_ = _loc7_ * (_loc5_ >> 8 & 255) + _loc4_ * (param3 >> 8 & 255) >> 8;
            _loc10_ = _loc7_ * (_loc5_ & 255) + _loc4_ * (param3 & 255) >> 8;
            setPixel32(param1,param2,Math.min(_loc6_ + _loc4_,255) << 24 | _loc8_ << 16 | _loc9_ << 8 | _loc10_);
         }
         else
         {
            setPixel(param1,param2,param3 & 16777215);
         }
      }
      
      override public function clone() : BitmapData
      {
         var _loc1_:FBitmapData = new FBitmapData(width,height);
         _loc1_.copyPixels(this,rect,__zeropoint);
         return _loc1_;
      }
   }
}
