package system
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import parameter.Chara_IEAllCharadata;
   
   public class TextLoadClass
   {
       
      
      private var urlText:String;
      
      private var url_loader:URLLoader;
      
      public function TextLoadClass(param1:String)
      {
         var _loc2_:URLRequest = null;
         this.url_loader = new URLLoader();
         super();
         this.url_loader.dataFormat = URLLoaderDataFormat.TEXT;
         this.urlText = param1;
         if(this.urlText == "Air_firstChara")
         {
            _loc2_ = new URLRequest("startup.txt");
         }
         else
         {
            _loc2_ = new URLRequest("http://pochi.eek.jp/joyful/img/" + this.urlText + ".txt");
         }
         this.url_loader.load(_loc2_);
         this.url_loader.addEventListener(Event.COMPLETE,this.LoaderInfoCompleteFunc);
         this.url_loader.addEventListener(IOErrorEvent.IO_ERROR,this.LoaderInfoIO_ERRORFunc);
         this.url_loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.LoaderInfoSECURITY_ERRORFunc);
      }
      
      private function LoaderInfoCompleteFunc(param1:Event) : void
      {
         var _loc2_:String = this.url_loader.data as String;
         Main.urlData = _loc2_;
         Main.fistCharaData = _loc2_;
         ++Main.loadCount;
      }
      
      private function LoaderInfoIO_ERRORFunc(param1:IOErrorEvent) : void
      {
         if(this.urlText != "Air_firstChara")
         {
            Main.urlData = "nodata";
            Main.fistCharaData = Chara_IEAllCharadata.IEAllCharaData[0];
         }
         ++Main.loadCount;
      }
      
      private function LoaderInfoSECURITY_ERRORFunc(param1:SecurityErrorEvent) : void
      {
         if(this.urlText != "Air_firstChara")
         {
            Main.urlData = "nodata";
            Main.fistCharaData = Chara_IEAllCharadata.IEAllCharaData[0];
         }
         ++Main.loadCount;
      }
   }
}
