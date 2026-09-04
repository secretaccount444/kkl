package menu
{
   import flash.geom.ColorTransform;
   
   public class ColorChangeClass
   {
      public function ColorChangeClass(param1:Object, param2:String)
      {
         var _loc3_:ColorTransform = null;
         super();
         if(param2 == "nashi")
         {
            _loc3_ = param1.transform.colorTransform;
            param1.transform.colorTransform = new ColorTransform();
         }
         else
         {
            _loc3_ = param1.transform.colorTransform;

            var rgb: uint = 0;
            var changed = false;

            if (param2.length > 6) {
               trace(param2);

               rgb = uint("0x" + param2.substring(0, 6));

               var alpha: uint = uint("0x" + param2.substring(6, 8));

               // if (_loc3_.alphaMultiplier != 0 || _loc3_.alphaOffset != alpha) {
                  _loc3_.alphaMultiplier = 0;
                  _loc3_.alphaOffset = alpha;
                  // changed = true;
               // }
            } else {
               rgb = uint("0x" + param2);
            }

            // if (_loc3_.color != rgb) {
               _loc3_.color = rgb;
            //    changed = true;
            // }

            // if (changed) {
               param1.transform.colorTransform = _loc3_;
            // }
         }
      }
   }
}
