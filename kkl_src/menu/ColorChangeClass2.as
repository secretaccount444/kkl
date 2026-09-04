package menu
{
   import flash.geom.ColorTransform;
   
   public class ColorChangeClass2
   {
       
      
      public function ColorChangeClass2(param1:Object, param2:String, param3:Number, param4:Number)
      {
         var _loc5_:Number = NaN;
         var _loc6_:ColorTransform = null;
         super();
         _loc6_ = param1.transform.colorTransform;
         param2 = "0x" + param2;
         if(param2 == "nashi")
         {
            param1.transform.colorTransform = new ColorTransform();
         }
         else if(param4 == 1)
         {
            _loc6_.redMultiplier = 1 - param3;
            _loc6_.greenMultiplier = 1 - param3;
            _loc6_.blueMultiplier = 1 - param3;
            _loc6_.redOffset = (uint(param2) >> 16 & 255) * param3;
            _loc6_.greenOffset = (uint(param2) >> 8 & 255) * param3;
            _loc6_.blueOffset = (uint(param2) >> 0 & 255) * param3;
            param1.transform.colorTransform = _loc6_;
         }
         else if(param4 == 2)
         {
            _loc6_.redMultiplier = param3;
            _loc6_.greenMultiplier = param3;
            _loc6_.blueMultiplier = param3;
            _loc6_.redOffset = (uint(param2) >> 16 & 255) * param3;
            _loc6_.greenOffset = (uint(param2) >> 8 & 255) * param3;
            _loc6_.blueOffset = (uint(param2) >> 0 & 255) * param3;
            param1.transform.colorTransform = _loc6_;
         }
         else if(param4 == 3)
         {
            _loc6_.redMultiplier = param3;
            _loc6_.greenMultiplier = param3;
            _loc6_.blueMultiplier = param3;
            _loc6_.redOffset = uint(param2) >> 16 & 255;
            _loc6_.greenOffset = uint(param2) >> 8 & 255;
            _loc6_.blueOffset = uint(param2) >> 0 & 255;
            param1.transform.colorTransform = _loc6_;
         }
         else if(param4 == 4)
         {
            _loc5_ = 1 - param3 - 1;
            _loc6_.redMultiplier = _loc5_;
            _loc6_.greenMultiplier = _loc5_;
            _loc6_.blueMultiplier = _loc5_;
            _loc6_.redOffset = uint(param2) >> 16 & 255;
            _loc6_.greenOffset = uint(param2) >> 8 & 255;
            _loc6_.blueOffset = uint(param2) >> 0 & 255;
            param1.transform.colorTransform = _loc6_;
         }
      }
   }
}
