package menu
{
   import flash.filters.ColorMatrixFilter;
   
   public class ColorFilterClass
   {
       
      
      public function ColorFilterClass(param1:Object, param2:Boolean, param3:Number, param4:String)
      {
         var _loc5_:Array = null;
         var _loc6_:ColorMatrixFilter = null;
         super();
         try
         {
            if(param2)
            {
               if(param4 == "link")
               {
                  param1.mouseEnabled = false;
                  param1.mouseChildren = false;
               }
               _loc5_ = [1,0,0,param3,0,0,1,0,param3,0,0,0,1,param3,0,0,0,0,1,0];
            }
            else
            {
               if(param4 == "link")
               {
                  param1.mouseEnabled = true;
                  param1.mouseChildren = true;
               }
               _loc5_ = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
            }
            _loc6_ = new ColorMatrixFilter(_loc5_);
            param1.filters = [_loc6_];
         }
         catch(myError:Error)
         {
         }
      }
   }
}
