package
{
   import flash.display.NativeWindow;
   import flash.display.NativeWindowInitOptions;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.html.HTMLHost;
   import flash.html.HTMLLoader;
   import flash.html.HTMLWindowCreateOptions;
   
   public class CustomHost extends HTMLHost
   {
       
      
      public function CustomHost()
      {
         super();
      }
      
      override public function createWindow(param1:HTMLWindowCreateOptions) : HTMLLoader
      {
         Main.HtmlWindowFlag = false;
         var _loc2_:NativeWindowInitOptions = new NativeWindowInitOptions();
         var _loc3_:NativeWindow = new NativeWindow(_loc2_);
         _loc3_.visible = true;
         var _loc4_:HTMLLoader;
         (_loc4_ = new HTMLLoader()).width = _loc3_.width;
         _loc4_.height = _loc3_.height;
         _loc3_.stage.scaleMode = StageScaleMode.NO_SCALE;
         _loc3_.stage.align = StageAlign.TOP_LEFT;
         _loc3_.stage.addChild(_loc4_);
         return _loc4_;
      }
   }
}
