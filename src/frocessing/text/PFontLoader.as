package frocessing.text
{
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.ByteArray;
   import frocessing.utils.FLoadUtil;
   
   public class PFontLoader extends PFont
   {
       
      
      private var __loader:URLLoader;
      
      private var __status:int;
      
      private var __callback:Function;
      
      public function PFontLoader(param1:String, param2:URLLoader = null, param3:Function = null)
      {
         super(null);
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
         this.__loader.dataFormat = URLLoaderDataFormat.BINARY;
         FLoadUtil.load(param1,this.__loader,this.__onComplete,this.__onError,int.MAX_VALUE);
      }
      
      private function __onComplete() : void
      {
         __init(ByteArray(this.__loader.data));
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
