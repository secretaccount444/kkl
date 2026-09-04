package parameter
{
   import flash.display.BitmapData;
   import menu.ColorChangeClass;
   import flash.utils.ByteArray;
   
   public class ColorMake
   {
      public static var colorStr:Array = new Array();
      public static var cache: Object = {};

      public static function compute(param1: String) {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:String = null;

         if (cache[param1] !== null && cache[param1] !== undefined) {
            colorStr = cache[param1];
         } else {
            _loc2_ = 0;
            while(_loc2_ <= 8)
            {
               new ColorChangeClass(Color_data.checkColor["color" + _loc2_],param1);
               _loc2_++;
            }
            
            Color_data.pict_bd = new BitmapData(90,10,true);
            Color_data.pict_bd.draw(Color_data.checkColor);

            var cacheArr = new Array();
            colorStr = new Array();

            _loc2_ = 0;
            while(_loc2_ <= 8)
            {
               _loc3_ = Color_data.pict_bd.getPixel(10 * _loc2_ + 5,5);
               _loc4_ = ("00000" + _loc3_.toString(16)).substr(-6).toUpperCase();
               colorStr[_loc2_] = _loc4_;
               cacheArr[_loc2_] = _loc4_;
               _loc2_++;
            }

            Color_data.pict_bd.dispose();
            Color_data.pict_bd = null;
            cache[param1] = cacheArr;
         }
      }

      private static function clone(data: Object): *
      {
         var cloneData:ByteArray = new ByteArray();
         cloneData.writeObject(data);
         cloneData.position = 0;
         return cloneData.readObject();
      }
      
      public function ColorMake(param1:String)
      {
         super();
         compute(param1);
      }
   }
}
