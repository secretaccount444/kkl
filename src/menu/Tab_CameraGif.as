package menu
{
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class Tab_CameraGif
   {
       
      
      public function Tab_CameraGif()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:BitmapData = null;
         var _loc2_:BitmapData = null;
         MenuClass.ErrorWindow.visible = false;
         _loc1_ = new BitmapData(800,600,true,16777215);
         var _loc3_:Matrix = new Matrix();
         _loc3_.scale(0.5,0.5);
         var _loc4_:Boolean = true;
         _loc1_.draw(Main.stageVar,null,null,null,null,_loc4_);
         _loc2_ = new BitmapData(400,300,true,16777215);
         _loc2_.draw(_loc1_,_loc3_,null,null,null,_loc4_);
         MenuClass.bitmapDataList.push(_loc2_);
         MenuClass.ErrorWindow.visible = true;
      }
   }
}
