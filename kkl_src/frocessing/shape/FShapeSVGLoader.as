package frocessing.shape
{
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import frocessing.utils.FLoadUtil;
   
   public class FShapeSVGLoader extends FShapeSVG
   {
       
      
      private var __loader:URLLoader;
      
      private var __status:int;
      
      private var __callback:Function;
      
      public function FShapeSVGLoader(param1:String, param2:URLLoader = null, param3:Function = null)
      {
         super(null,null);
         visible = false;
         this.__status = 0;
         this.__callback = param3;
         if(param2 != null)
         {
            this.__loader = param2;
         }
         else
         {
            this.__loader = new URLLoader();
         }
         this.__loader.dataFormat = URLLoaderDataFormat.TEXT;
         FLoadUtil.load(param1,this.__loader,this.__onComplete,this.__onError,int.MAX_VALUE);
      }
      
      private function __onComplete() : void
      {
         _parse_svg_document(XML(this.__loader.data));
         this.__status = 1;
         this.__load_terminated();
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
