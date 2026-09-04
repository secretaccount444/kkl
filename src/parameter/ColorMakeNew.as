package parameter
{
   import flash.display.BitmapData;
   import menu.ColorChangeClass;
   
   public class ColorMakeNew
   {
      
      public static var colorStr:String;
       
      
      public function ColorMakeNew(param1:String, param2:int)
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         super();
         _loc3_ = 0;
         while(_loc3_ <= 8)
         {
            new ColorChangeClass(Color_data.checkColor["color" + _loc3_],param1);
            _loc3_++;
         }
         Color_data.pict_bd = new BitmapData(90,10,true);
         Color_data.pict_bd.draw(Color_data.checkColor);
         _loc4_ = Color_data.pict_bd.getPixel(10 * param2 + 5,5);
         _loc5_ = ("00000" + _loc4_.toString(16)).substr(-6).toUpperCase();
         colorStr = _loc5_;
         Color_data.pict_bd = null;
      }
   }
}
