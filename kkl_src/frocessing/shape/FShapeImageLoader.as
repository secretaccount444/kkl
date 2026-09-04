package frocessing.shape
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.geom.Matrix;
   import frocessing.utils.FLoadUtil;
   
   public class FShapeImageLoader extends FShapeImage implements IFShape
   {
       
      
      private var __loader:Loader;
      
      private var __status:int;
      
      private var __callback:Function;
      
      public var smooth:Boolean = false;
      
      private var __w:Number;
      
      private var __h:Number;
      
      public function FShapeImageLoader(param1:String, param2:Loader = null, param3:Function = null, param4:Number = 0, param5:Number = 0, param6:Number = NaN, param7:Number = NaN, param8:FShapeContainer = null)
      {
         super(null,param4,param5,param6,param7,param8);
         visible = false;
         this.__status = 0;
         this.__callback = param3;
         if(param2 != null)
         {
            this.__loader = param2;
         }
         else
         {
            this.__loader = new Loader();
         }
         FLoadUtil.load(param1,this.__loader,this.__onComplete,this.__onError,int.MAX_VALUE);
      }
      
      override protected function _init(param1:BitmapData, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         _bitmapData = new BitmapData(1,1,false);
         _left = param2;
         _top = param3;
         _width = 1;
         _height = 1;
         _geom_changed = false;
         this.__w = param4;
         this.__h = param5;
         bd_matrix = new Matrix();
      }
      
      private function __onComplete() : void
      {
         var _loc1_:DisplayObject = this.__loader.content;
         _bitmapData.dispose();
         _bitmapData = new BitmapData(_loc1_.width,_loc1_.height,false);
         _bitmapData.draw(_loc1_,null,null,null,null,this.smooth);
         this.__loader.unload();
         this.__status = 1;
         this.__load_terminated();
         super._init(_bitmapData,_left,_top,this.__w,this.__h);
         visible = true;
      }
      
      private function __onError() : void
      {
         this.__status = -1;
         this.__load_terminated();
      }
      
      private function __load_terminated() : void
      {
         this.__loader = null;
         if(this.__callback != null)
         {
            this.__callback.call();
            this.__callback = null;
         }
      }
      
      public function get status() : int
      {
         return this.__status;
      }
      
      public function get success() : Boolean
      {
         return this.status == 1;
      }
   }
}
