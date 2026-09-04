package frocessing.utils
{
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class FLoadUtil
   {
      
      private static var __d:Dictionary = new Dictionary(true);
       
      
      public function FLoadUtil()
      {
         super();
      }
      
      public static function load(param1:String, param2:EventDispatcher = null, param3:Function = null, param4:Function = null, param5:int = 0) : void
      {
         var _loc6_:* = undefined;
         if(param2 == null)
         {
            _loc6_ = _loc6_ = new URLLoader();
         }
         else if(param2 is Loader)
         {
            _loc6_ = param2;
            param2 = Loader(param2).contentLoaderInfo;
         }
         else
         {
            if(!(param2 is URLLoader))
            {
               throw new Error("loader have to be URLLoader or Loader.");
            }
            _loc6_ = param2;
         }
         if(param3 != null)
         {
            param2.addEventListener(Event.COMPLETE,__onComplete,false,param5);
         }
         if(param4 != null)
         {
            param2.addEventListener(IOErrorEvent.IO_ERROR,__onError,false,param5);
            param2.addEventListener(SecurityErrorEvent.SECURITY_ERROR,__onError,false,param5);
         }
         __d[param2] = {
            "complete":param3,
            "error":param4
         };
         if(param2 is URLLoader)
         {
            URLLoader(_loc6_).load(new URLRequest(param1));
         }
         else if(param2 is LoaderInfo)
         {
            Loader(_loc6_).load(new URLRequest(param1));
         }
      }
      
      private static function __onComplete(param1:Event) : void
      {
         __callback(EventDispatcher(param1.target),"complete");
      }
      
      private static function __onError(param1:Event) : void
      {
         __callback(EventDispatcher(param1.target),"error");
      }
      
      private static function __callback(param1:EventDispatcher, param2:String) : void
      {
         var _loc3_:Function = __d[param1][param2];
         if(_loc3_ != null)
         {
            _loc3_.call();
         }
         if(param1.hasEventListener(Event.COMPLETE))
         {
            param1.removeEventListener(Event.COMPLETE,__onComplete);
         }
         if(param1.hasEventListener(IOErrorEvent.IO_ERROR))
         {
            param1.removeEventListener(IOErrorEvent.IO_ERROR,__onError);
            param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,__onError);
         }
         delete __d[param1];
      }
   }
}
