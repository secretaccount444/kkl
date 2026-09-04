package menu
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class Chara_Loading_item
   {
      
      public static var FlagClass:Class;
      
      public static var HukidashiClass:Class;
      
      public static var ChairClass:Class;
      
      public static var ChairBackClass:Class;
      
      public static var charaSetClass:Class;
      
      public static var allCharaSetClass:Class;
      
      public static var allHukuSetClass:Class;
      
      public static var LoadCheck:Array = new Array("nashi","nashi","nashi","nashi","nashi","nashi");
       
      
      private var itemName:String;
      
      private var loader:Loader;
      
      private var byteArrayLoader:Loader;
      
      private var request:URLRequest;
      
      private var Num:int;
      
      private var ClickTarget:String;
      
      public function Chara_Loading_item(param1:String, param2:int, param3:String)
      {
         super();
         this.ClickTarget = param3;
         this.itemName = param1;
         this.Num = param2;
         var _loc4_:Boolean = true;
         if(this.itemName == Main.loadItemName[0] && MenuClass.UmekomiItemFlag[0] == 0 || this.itemName == Main.loadItemName[2] && MenuClass.UmekomiItemFlag[2] == 0 || this.itemName == Main.loadItemName[3] && MenuClass.UmekomiItemFlag[3] == 0 || this.itemName == Main.loadItemName[4] && MenuClass.UmekomiItemFlag[4] == 0 || this.itemName == Main.loadItemName[5] && MenuClass.UmekomiItemFlag[5] == 0)
         {
            if(this.itemName == Main.loadItemName[0])
            {
               LoadCheck[0] = "start";
            }
            else if(this.itemName == Main.loadItemName[2])
            {
               LoadCheck[2] = "start";
            }
            else if(this.itemName == Main.loadItemName[3])
            {
               LoadCheck[3] = "start";
            }
            else if(this.itemName == Main.loadItemName[4])
            {
               LoadCheck[4] = "start";
            }
            else if(this.itemName == Main.loadItemName[5])
            {
               LoadCheck[5] = "start";
            }
            
               this.request = new URLRequest("k_kisekae2_swf/" + param1 + ".swf");
            this.loader = new Loader();
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.drawParts);
            this.loader.load(this.request);
         }
      }
      
      private function drawParts(param1:Event) : void
      {
         if(this.itemName == Main.loadItemName[0])
         {
            FlagClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("flagMc") as Class;
            MenuClass.UmekomiItemFlag[0] = 1;
            LoadCheck[0] = "comp";
            new Free_FlagSet(this.Num,this.ClickTarget);
         }
         else if(this.itemName == Main.loadItemName[2])
         {
            ChairClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("chairMc") as Class;
            ChairBackClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("chairMc_back") as Class;
            MenuClass.UmekomiItemFlag[2] = 1;
            LoadCheck[2] = "comp";
            new Free_ChairSet(this.Num,this.ClickTarget);
         }
         else if(this.itemName == Main.loadItemName[3])
         {
            charaSetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("charaSetMc") as Class;
            MenuClass.UmekomiItemFlag[3] = 1;
            LoadCheck[3] = "comp";
            Tab_CharaWindow.setFc("start");
         }
         else if(this.itemName == Main.loadItemName[4])
         {
            allCharaSetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("allCharaSetMc") as Class;
            MenuClass.UmekomiItemFlag[4] = 1;
            LoadCheck[4] = "comp";
            Tab_AllCharaWindow.setFc();
         }
         else if(this.itemName == Main.loadItemName[5])
         {
            allHukuSetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("allHukuSetMc") as Class;
            MenuClass.UmekomiItemFlag[5] = 1;
            LoadCheck[5] = "comp";
            Tab_AllHukuSet.setFc();
         }
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.drawParts);
      }
   }
}
