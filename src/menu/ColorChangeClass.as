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
            param2 = "0x" + param2;
            _loc3_.color = uint(param2);
            param1.transform.colorTransform = _loc3_;
         }
      }
   }
}
