package
{
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.net.LocalConnection;
   import flash.net.SharedObject;
   import flash.system.Security;
   import flash.text.TextField;
   import flash.ui.ContextMenu;
   import menu.Menu_Load;
   import menu.Tab_OpenAgeClass;
   import net.Stats;
   import parameter.Chara_IEAllCharadata;
   import parameter.Chara_IECharadata;
   import parameter.Chara_IESeihukudata;
   import parameter.Chara_IEdata;
   import system.TextLoadClass;
   
   public class Main extends MovieClip
   {
      
      public static var version:int = 105;
      
      public static var saveAllVersion:int = 1;
      
      public static var accessVersion:int = 0;
      
      public static var colorVersion:int = 0;
      
      public static var EmotionCheck:Boolean = false;
      
      public static var publishMode:String = "download";
      
      public static var r18Check:Boolean = false;
      
      public static var loadName:Array = new Array("tail2","hane1","bura21","mune31","dou63","hand0_10","hand1_45","ashi31","head63","peni7","mune_m32","ysyatu30","hairEx17","belt15","background13","mob5","character7","mark13","ribon22","sideburn3","hairBack3","bangs2","horn","bodyDress11","mouth4","hair","breastOption2","hat3","megane3","eye","hukidashi6");
      
      public static var loadItemName:Array = new Array("flag0","","chair20","charaSet11","allCharaSet5","allHukuSet6");
      
      public static var passData:Array = new Array("sg15d","abu7d","iyd89","8ghe7","po58q","tua9t","qwet15","ko87a","jn5t5","aue58","ptq5b","wqn8p","s56mx","pt94a","wefi5","rgk7v","qzb8i","wrt2j","58hig","rt54t","mn7qt","rabh5","kjhb1","puy01","vcx7d","ade9j","bgt6a","iuyk6","w3t7k","pom7a","peqw3","10jmv","36qec","tg8y9","vxzr5","95hbv","3badn","jht32","xzqr9","gewm4","t5n7j","a7iun","it45r","mk5qt","vd1hi","zgr58","keyf9","7gyte","4huyd","pmn7a","fer1a","wed3a","wrqb1","itvg5","jhg4a","weqb9","9g8ac","caqw5","54dgt","ddm1a","tq4dh","8her1","qe9ed","nh5ae","iu82d","qby59","cr3da","twe3k","xcrt9","jiir1","lkpb7","reg8q","d2dnb","4hupq","3drbk","98jde","32wec","4rgt5","t7km8","ecgtr","qrtg3","erz4t","qwv4h","hqrt3","ghj23","5hjk8","4ty7j","yt32a","tyi9n","qtrt7","bnmj9","cfr4t","rew5y","qwer7","n8vp9","deqi4","rcx67","xax45","htx3x","tij9m","4rt8i","qrew3","mkv9i","wecv7","65ghy","3dfdx","xder5","zaw34","zxcb8","98ijh","dauy6","aeh3t","iu7tr","rew5t","pkm8r","wer3w","qera2","pj8ty","2fre2","k8zx4","7bg2e","pljr3","uyc5r","13dcs","vcf90","0iu5d","bq23f","jurt6","hgt1d","zw78y","reb7y","98ujh","38hgt","hbzxr","ttxew","qweqg","khbvr","emklh","qr5tg","evu7k","qtvr3","mnmb7","vcxr5","yh8h8","jqr54","qdvgw","exct4","jnby6","er1aa","4rey6","xctr4","jjht6","86ybv","qazx7","abd13","puye1","juy7d","eran4","7ytdd","caqet","qw7tn","inbv3","zxdt7","1yndq","zvby3","iklnn","daqw4","2caef","3nadz","xntn2","4nazt","u5wdt","bhut6","wef8a","cdat9","ewr4n","kjhu8","rer5n","ava3n","pouy6","adnet","9jnhu","hu7nb","cvfe4","tyji9","chue3","dn3na","tynd2","u8tna","dd8un","knnd3","enrn8","ygi9i","eri2a","cfw8e","hji9n","hgt3n","ghtn5","qrnfn","ggvi8","4andi","wenai","8uytn","d4nad","6gnn8","7hia4","weni8","qedni","w33in","tdn4n","ytgb7","a6gn9","ybbvd","wenu4","dna3n","aeni8","dn2na","qweip","mnd7a","nmwd7","3nai6","cxae3","dau8a","gb3na","yt7w8","qed8n","cdwe3","da3na","iuyt7","cgu3a","aedna","ijin2","ibgy6","itu3a","kjny6","dn8da","jbj8u","cvc8c","de3ad","ytr6r","bnada","terqe","8u7hd","nb65t","dneid","xexna","43nha","7mnja","poiun","iuyn7","er7bv","webz4","tnue8","dwe8a","xcian","dne5a","aen1a","dtnt2","dn2id","kutne","weunt","uy7th","s3nat","de7td","adian","1naid","den4n","dtu3n","5h5ii","adin3","din5n","uybza","zin7n","mceri","dtn4n","tgni9","9nind","de4n4","ae2da","deghn","gyun3","gbaui","dene7","1nai2","d3n3n","aden8","ga9c9","diuti","dntna","tnt53","3nai4","adci5","6d2da","bbcia","dii8a","4n5na","den6n","3na4n","ada3n","dn3ai","dae7a","iopd4","nyt6a","ewer5","gga4a","vaixi","ga3n8","32nai","0anid","50adw","nbv7a","ad4i0","wein4","acn1a","nht9u","knhrj","de50i");
      
      public static var urlTextData:Array = new Array("1804item1.swf","1804item2.swf","1804item3.swf","1805item1.swf","1805item2.swf","1805item3.swf","1806item1.swf","1806item2.swf","1806item3.swf","1807item1.swf","1807item2.swf","1807item3.swf","1808item1.swf","1808item2.swf","1808item3.swf","1808item4.swf","1809item1.swf","1809item2.swf","1809item3.swf","1809item4.swf","1810item1.swf","1810item2.swf","1810item3.swf","1811item1.swf","1811item2.swf","1811item3.swf","1812item1.swf","1812item2.swf","1812item3.swf","1901item1.swf","1901item2.swf","1901item3.swf","1902item1.swf","1902item2.swf","1902item3.swf","1903item1.swf","1903item2.swf","1903item3.swf","1904item1.swf","1904item2.swf","1904item3.swf","1905item1.swf","1905item2.swf","1905item3.swf","1906item1.swf","1906item2.swf","1906item3.swf","1907item1.swf","1907item2.swf","1907item3.swf","1908item1.swf","1908item2.swf","1908item3.swf","1909item1.swf","1909item2.swf","1909item3.swf","1910item1.swf","1910item2.swf","1910item3.swf","1911item1.swf","1911item2.swf","1911item3.swf","1911item4.swf","1912item1.swf","1912item2.swf","1912item3.swf","2001item1.swf","2001item2.swf","2001item3.swf","2002item1.swf","2002item2.swf","2002item3.swf","2003item1.swf","2003item2.swf","2003item3.swf","2004item1.swf","2004item2.swf","2004item3.swf","2005item1.swf","2005item2.swf","2005item3.swf","2006item1.swf","2006item2.swf","2006item3.swf","2007item1.swf","2007item2.swf","2007item3.swf","2008item1.swf","2008item2.swf","2008item3.swf","2009item1.swf","2009item2.swf","2009item3.swf","2010item1.swf","2010item2.swf","2010item3.swf","2011item1.swf","2011item2.swf","2011item3.swf","2012item1.swf","2012item2.swf","2012item3.swf","2101item1.swf","2101item2.swf","2101item3.swf","2102item1.swf","2102item2.swf","2102item3.swf","2103item1.swf","2103item2.swf","2103item3.swf","2104item1.swf","2104item2.swf","2104item3.swf","2105item1.swf","2105item2.swf","2105item3.swf","2106item1.swf","2106item2.swf","2106item3.swf","2107item1.swf","2107item2.swf","2107item3.swf","2108item1.swf","2108item2.swf","2108item3.swf","2109item1.swf","2109item2.swf","2109item3.swf","2110item1.swf","2110item2.swf","2110item3.swf","2111item1.swf","2111item2.swf","2111item3.swf","2112item1.swf","2112item2.swf","2112item3.swf","2201item1.swf","2201item2.swf","2201item3.swf","2202item1.swf","2202item2.swf","2202item3.swf","2203item1.swf","2203item2.swf","2203item3.swf","2204item1.swf","2204item2.swf","2204item3.swf","2205item1.swf");
      
      public static var userUrlTextData:Array = new Array("","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
      
      public static var allLoadFlag:Boolean = false;
      
      public static var allCharaLoadFlag:Boolean = false;
      
      public static var test:int = 10;
      
      public static var stageVar:Stage;
      
      public static var mainWindow:MovieClip;
      
      public static var mainMask:MovieClip;
      
      public static var mob:MovieClip;
      
      public static var loadObj:MovieClip;
      
      public static var loadBar:MovieClip;
      
      public static var _stageWidth:uint = 800;
      
      public static var _stageHeight:uint = 600;
      
      public static var _stageResizeY:Number = 0;
      
      public static var _stageResizeX:Number = 0;
      
      public static var cameraCheck:Boolean = false;
      
      public static var openingBg:Sprite = new Sprite();
      
      public static var accessObj:Object;
      
      public static var so_access:SharedObject;
      
      public static var loadCount:int = 0;
      
      public static var textField:TextField = new TextField();
      
      public static var textFieldAddCheck:Boolean = false;
      
      public static var urlData:String = "";
      
      public static var domainName:String;
      
      public static var fistCharaData:String;
      
      public static var statsOn:String = "first";
      
      public static var statsMov:MovieClip = new MovieClip();
      
      public static var storyBtn:Sprite = new Sprite();
      
      public static var hukusuuNum:int = 29;
      
      public static var RibonhukusuuNum:int = 59;
      
      public static var kuroBg:Sprite;
      
      public static var HtmlWindowFlag:Boolean = true;
      
      public static var openAgeFlag:Boolean = true;
      
      public static var hukuset:int = 1;
       
      
      private var swfWindow:Boolean = true;
      
      private var menuName:String = "menuData3";
      
      private var loadName:String = "loadData";
      
      private var count:int = 0;
      
      private var loadItemCheck:Boolean = true;
      
      public function Main()
      {
         super();
         if(publishMode == "web")
         {
            Security.allowDomain("pochi.lix.jp");
            Security.allowDomain("pochi.x.fc2.com");
            Security.allowDomain("pochi.eek.jp");
         }
         if(publishMode == "all_age")
         {
            r18Check = true;
         }
         else if(publishMode == "18_age")
         {
            r18Check = false;
         }
         stage.stageFocusRect = false;
         stageVar = stage;
         openingBg.graphics.beginFill(0,1);
         openingBg.graphics.drawRect(-2500,-2500,5800,5600);
         openingBg.graphics.endFill();
         openingBg.cacheAsBitmap = true;
         stage.addChild(openingBg);
         openingBg.addEventListener(Event.ENTER_FRAME,this.loadItemEnterFrame);
         new Menu_Load(this.loadName);
      }
      
      private function airFc() : void
      {
         if(publishMode == "download")
         {
            new Air_HtmlLoader();
         }
         new Air_UmekomiFont();
         new Air_StageSize();
         new Air_Context();
      }
      
      private function loadItemEnterFrame(param1:Event) : void
      {
         if(Menu_Load.LoadCheck[0] == "comp" && this.loadItemCheck)
         {
            this.loadItemCheck = false;
            loadObj = new Menu_Load.LoadObjClass();
            loadBar = new Menu_Load.LoadBarClass();
            stage.addChild(loadObj);
            stage.addChild(loadBar);
            loadBar.x = 596;
            loadBar.y = 577;
            loadBar.scaleX = 0;
            loadObj.x = 546;
            loadObj.y = 543;
            new Menu_Load(this.menuName);
         }
         else if(Menu_Load.LoadCheck[1] == "comp")
         {
            openingBg.removeEventListener(Event.ENTER_FRAME,this.loadItemEnterFrame);
            addEventListener(Event.ENTER_FRAME,this._initialHandler);
         }
      }
      
      private function _initialHandler(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(loadCount == 0)
         {
            ++loadCount;
         }
         else if(loadCount == 1 && openAgeFlag)
         {
            so_access = SharedObject.getLocal("my_data2");
            if(so_access)
            {
               accessObj = so_access.data;
               if(accessObj.version != Main.accessVersion)
               {
                  so_access.clear();
                  accessObj = so_access.data;
                  accessObj.accessCount = 0;
                  accessObj.menuMode = "easy";
                  accessObj.version = Main.accessVersion;
                  accessObj.soundVolume = 100;
                  accessObj.soundPan = true;
                  accessObj.DeformerRealData = 0;
                  accessObj.HairTypeData = 0;
                  accessObj.AllHukuNumData = 0;
                  accessObj.BodyTypeData = 0;
                  trace("初期化　version",accessObj.version);
               }
               else
               {
                  accessObj.accessCount += 1;
               }
            }
            if(accessObj.accessCount == 0 && accessObj.menuMode == undefined)
            {
               accessObj.menuMode = "easy";
            }
            if(accessObj.soundVolume == undefined)
            {
               accessObj.soundVolume = 100;
            }
            if(accessObj.soundPan == undefined)
            {
               accessObj.soundPan = true;
            }
            if(accessObj.DeformerRealData == undefined)
            {
               accessObj.DeformerRealData = 0;
            }
            if(accessObj.HairTypeData == undefined)
            {
               accessObj.HairTypeData = 0;
            }
            if(accessObj.BodyTypeData == undefined)
            {
               accessObj.BodyTypeData = 0;
            }
            if(accessObj.AllHukuNumData == undefined)
            {
               accessObj.AllHukuNumData = 0;
            }
            if(!accessObj.pass)
            {
               accessObj.pass = new Array();
               trace("passの初期設定");
            }
            try
            {
               so_access.flush();
            }
            catch(myError:Error)
            {
            }
            new Tab_OpenAgeClass();
            if(publishMode == "download" || publishMode == "download_test")
            {
               if(!accessObj.age)
               {
                  trace("ageの初期設定");
                  openAgeFlag = false;
                  --loadCount;
                  Tab_OpenAgeClass.setFc("first");
               }
            }
            _loc2_ = LoaderInfo(this.root.loaderInfo).parameters.pagenum;
            new Chara_IEdata();
            new Chara_IESeihukudata();
            new Chara_IECharadata();
            new Chara_IEAllCharadata();
            if(_loc2_ == null || _loc2_ == "")
            {
               urlData = "nodata";
               Main.fistCharaData = Chara_IECharadata.IEdefoData;
               ++loadCount;
            }
            else
            {
               urlData = String(_loc2_);
               urlData = urlData.substring(1,urlData.length);
               new TextLoadClass(urlData);
            }
            if(publishMode == "all_age" || publishMode == "18_age" || publishMode == "download" || publishMode == "download_test")
            {
               new TextLoadClass("Air_firstChara");
            }
            else
            {
               ++loadCount;
            }
         }
         else if(loadCount != 2)
         {
            if(loadCount == 3)
            {
               ++loadCount;
               _loc2_ = LoaderInfo(this.root.loaderInfo).parameters.r18flag;
               if(_loc2_ == null || _loc2_ == "")
               {
                  if(publishMode == "web")
                  {
                     this.swfWindow = false;
                     stage.addChild(textField);
                     textField.width = 600;
                     textField.height = 30;
                     textField.x = 10;
                     textField.y = 10;
                     textField.textColor = 0;
                     textField.text = "FileLoadError.";
                     textFieldAddCheck = true;
                  }
                  if(publishMode == "download" || publishMode == "download_test")
                  {
                     if(accessObj.age == "r18")
                     {
                        r18Check = false;
                     }
                     else if(accessObj.age == "all")
                     {
                        r18Check = true;
                     }
                  }
               }
               else if(_loc2_ == 2)
               {
                  r18Check = false;
               }
               else if(_loc2_ == 1)
               {
                  r18Check = true;
               }
               if(!r18Check)
               {
                  accessObj.BodyTypeData = 0;
               }
            }
            else if(loadCount >= 4)
            {
               if(this.count == 2)
               {
                  this.initialize();
                  ++loadCount;
               }
               ++this.count;
               loadBar.scaleX = loadCount / 61;
               if(allLoadFlag)
               {
                  stage.removeChild(loadBar);
                  stage.removeChild(loadObj);
                  removeEventListener(Event.ENTER_FRAME,this._initialHandler);
                  gotoAndStop(3);
                  Main.openingBg.width = 1;
                  Main.openingBg.height = 1;
                  Main.openingBg.x = -500;
                  Main.openingBg.y = -500;
                  Main.openingBg.alpha = 0;
                  Main.stageVar.setChildIndex(Main.openingBg,Main.stageVar.getChildIndex(Main.mainWindow) + 1);
                  this.airFc();
               }
            }
         }
      }
      
      private function initialize() : void
      {
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.builtInItems.zoom = true;
         _loc1_.builtInItems.print = true;
         this.contextMenu = _loc1_;
         mainMask = new Menu_Load.MainMaskClass();
         stage.addChild(mainMask);
         mainMask.visible = false;
         var _loc2_:LocalConnection = new LocalConnection();
         domainName = _loc2_.domain;
         if(_loc2_.domain == "pochi.x.fc2.com" || _loc2_.domain == "pochi.lix.jp" || _loc2_.domain == "pochi.eek.jp" || publishMode != "web")
         {
            if(this.swfWindow)
            {
               new MenuClass();
            }
         }
         if(publishMode == "test" || publishMode == "download_test")
         {
            Main.stageVar.addChild(new Stats());
            Main.textFieldAddCheck = true;
            stage.addChild(textField);
            textField.width = 600;
            textField.height = 30;
            textField.x = 80;
            textField.textColor = 16777215;
         }
      }
   }
}
