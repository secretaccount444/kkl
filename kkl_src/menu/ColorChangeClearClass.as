package menu
{
   import flash.geom.ColorTransform;
   
   public class ColorChangeClearClass
   {
       
      
      public function ColorChangeClearClass(param1:Object)
      {
         super();
         var _loc2_:ColorTransform = param1.transform.colorTransform;
         _loc2_.redMultiplier = 1;
         _loc2_.redOffset = 0;
         _loc2_.greenMultiplier = 1;
         _loc2_.greenOffset = 0;
         _loc2_.blueMultiplier = 1;
         _loc2_.blueOffset = 0;
         param1.transform.colorTransform = _loc2_;
      }
   }
}
