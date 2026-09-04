package menu
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.text.Font;
   import flash.utils.ByteArray;
   
   public class Chara_Loading_text
   {
      
      public static var FontJpLightClass:Class;
      
      public static var FontJpMediumClass:Class;
      
      public static var FontJpBlackClass:Class;
      
      public static var FontEn1Class:Class;
      
      public static var FontEn2Class:Class;
      
      public static var FontJpLight:Font;
      
      public static var FontJpMedium:Font;
      
      public static var FontJpBlack:Font;
      
      public static var FontEn1:Font;
      
      public static var FontEn2:Font;
       
      
      private var fontName:String;
      
      private var loader:Loader;
      
      private var byteArrayLoader:Loader;
      
      private var request:URLRequest;
      
      private var num:Number;
      
      public function Chara_Loading_text(param1:String, param2:Number)
      {
         var _loc3_:URLLoader = null;
         super();
         this.num = param2;
         this.fontName = param1;
         if(this.fontName == "font_jpLight" && MenuClass.UmekomiFontFlag[0] == 0 || this.fontName == "font_jpMedium" && MenuClass.UmekomiFontFlag[1] == 0 || this.fontName == "font_jpBlack" && MenuClass.UmekomiFontFlag[2] == 0 || this.fontName == "font_en1" && MenuClass.UmekomiFontFlag[3] == 0 || this.fontName == "font_en2" && MenuClass.UmekomiFontFlag[4] == 0)
         {
            if(Main.publishMode != "download")
            {
               this.request = new URLRequest("http://pochi.eek.jp/k_kisekae2_swf/" + param1 + ".swf");
               try
               {
                  MenuClass.tabMenuAdd["FontType"].loadIcon.gotoAndPlay(2);
               }
               catch(myError:Error)
               {
               }
               new Chara_ColorClass(0,"FontType" + this.num);
               _loc3_ = new URLLoader();
               _loc3_.dataFormat = URLLoaderDataFormat.BINARY;
               _loc3_.addEventListener(Event.COMPLETE,this.swfLoadComplete);
               _loc3_.load(this.request);
            }
         }
         else if(this.fontName == "font_jpLight")
         {
            this.FcFormat(FontJpLight);
         }
         else if(this.fontName == "font_jpMedium")
         {
            this.FcFormat(FontJpMedium);
         }
         else if(this.fontName == "font_jpBlack")
         {
            this.FcFormat(FontJpBlack);
         }
         else if(this.fontName == "font_en1")
         {
            this.FcFormat(FontEn1);
         }
         else if(this.fontName == "font_en2")
         {
            this.FcFormat(FontEn2);
         }
      }
      
      private function swfLoadComplete(param1:Event) : void
      {
         var _loc2_:ByteArray = param1.target.data;
         this.byteArrayLoader = new Loader();
         this.byteArrayLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.bvteArrayLoaderComplete);
         this.byteArrayLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.swfLoadComplete);
         this.byteArrayLoader.loadBytes(_loc2_);
      }
      
      private function bvteArrayLoaderComplete(param1:Event) : void
      {
         try
         {
            MenuClass.tabMenuAdd["FontType"].loadIcon.gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         new Chara_ColorClass(0,"FontType" + this.num);
         if(this.fontName == "font_jpLight")
         {
            MenuClass.UmekomiFontFlag[0] = 1;
            FontJpLightClass = this.byteArrayLoader.contentLoaderInfo.applicationDomain.getDefinition("fontJpLight") as Class;
            Font.registerFont(FontJpLightClass);
            FontJpLight = new FontJpLightClass();
            this.FcFormat(FontJpLight);
         }
         else if(this.fontName == "font_jpMedium")
         {
            MenuClass.UmekomiFontFlag[1] = 1;
            FontJpMediumClass = this.byteArrayLoader.contentLoaderInfo.applicationDomain.getDefinition("fontJpMedium") as Class;
            Font.registerFont(FontJpMediumClass);
            FontJpMedium = new FontJpMediumClass();
            this.FcFormat(FontJpMedium);
         }
         else if(this.fontName == "font_jpBlack")
         {
            MenuClass.UmekomiFontFlag[2] = 1;
            FontJpBlackClass = this.byteArrayLoader.contentLoaderInfo.applicationDomain.getDefinition("fontJpBlack") as Class;
            Font.registerFont(FontJpBlackClass);
            FontJpBlack = new FontJpBlackClass();
            this.FcFormat(FontJpBlack);
         }
         else if(this.fontName == "font_en1")
         {
            MenuClass.UmekomiFontFlag[3] = 1;
            FontEn1Class = this.byteArrayLoader.contentLoaderInfo.applicationDomain.getDefinition("fontEn1") as Class;
            Font.registerFont(FontEn1Class);
            FontEn1 = new FontEn1Class();
            this.FcFormat(FontEn1);
         }
         else if(this.fontName == "font_en2")
         {
            MenuClass.UmekomiFontFlag[4] = 1;
            FontEn2Class = this.byteArrayLoader.contentLoaderInfo.applicationDomain.getDefinition("fontEn2") as Class;
            Font.registerFont(FontEn2Class);
            FontEn2 = new FontEn2Class();
            this.FcFormat(FontEn2);
         }
         this.byteArrayLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.bvteArrayLoaderComplete);
      }
      
      private function FcFormat(param1:Font) : void
      {
         try
         {
            MenuClass.txtFieldAdd[this.num].embedFonts = true;
            SystemText2.txtFieldFc(this.num,param1.fontName,"Load");
         }
         catch(myError:Error)
         {
         }
      }
   }
}
