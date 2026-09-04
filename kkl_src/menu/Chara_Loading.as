package menu
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class Chara_Loading
   {
      
      public static var MarkClass:Class;
      
      public static var TailClass:Class;
      
      public static var HaneClass:Class;
      
      public static var BuraClass:Class;
      
      public static var NawaClass:Class;
      
      public static var MuneClass:Class;
      
      public static var DouClass:Class;
      
      public static var Handm0Class:Class;
      
      public static var Handm1Class:Class;
      
      public static var Handm1FreeClass:Class;
      
      public static var AshiClass:Class;
      
      public static var HeadClass:Class;
      
      public static var MouthClass:Class;
      
      public static var HairClass:Class;
      
      public static var HairUnderClass:Class;
      
      public static var hairOptionClass:Class;
      
      public static var HairUshiroClass:Class;
      
      public static var PeniClass:Class;
      
      public static var VibratorClass:Class;
      
      public static var MosaicClass:Class;
      
      public static var MuneMClass:Class;
      
      public static var Collar0Class:Class;
      
      public static var Collar1Class:Class;
      
      public static var Necktie0Class:Class;
      
      public static var Necktie1Class:Class;
      
      public static var Necklace0Class:Class;
      
      public static var YsyatuMuneClass:Class;
      
      public static var YsyatuMune2Class:Class;
      
      public static var YsyatuEriClass:Class;
      
      public static var HairExClass:Class;
      
      public static var SwapClass:Class;
      
      public static var BeltClass:Class;
      
      public static var douBeltClass:Class;
      
      public static var RibonClass:Class;
      
      public static var MimiClass:Class;
      
      public static var EarClass:Class;
      
      public static var bgClass:Class;
      
      public static var MobClass:Class;
      
      public static var CharacterClass:Class;
      
      public static var SideBurnMiddleClass:Class;
      
      public static var SideBurnClass:Class;
      
      public static var HairBackClass:Class;
      
      public static var BangsClass:Class;
      
      public static var HornClass:Class;
      
      public static var douYsyatuClass:Class;
      
      public static var douTsyatuClass:Class;
      
      public static var douSeihukuClass:Class;
      
      public static var breastOptionClass:Class;
      
      public static var ballClass:Class;
      
      public static var blockrodClass:Class;
      
      public static var blockBreakClass:Class;
      
      public static var blockHeartClass:Class;
      
      public static var HatClass:Class;
      
      public static var HatBackClass:Class;
      
      public static var MeganeClass:Class;
      
      public static var EyeClass:Class;
      
      public static var HukidashiClass:Class;
       
      
      private var count:int = 0;
      
      private var loader:Loader;
      
      private var request:URLRequest;
      
      private var Flag:String;
      
      public function Chara_Loading(param1:String)
      {
         super();
         this.Flag = param1;
         this.requestClass(Main.loadName[this.count]);
      }
      
      private function requestClass(param1:String) : void
      {
            this.request = new URLRequest("k_kisekae2_swf/" + param1 + ".swf");
         this.loader = new Loader();
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.drawParts);
         this.loader.load(this.request);
      }
      
      private function loadFc(param1:String) : void
      {
         this.request = new URLRequest("k_kisekae2_swf/" + param1 + ".swf");
      }
      
      private function drawParts(param1:Event) : void
      {
         var i:int = 0;
         var event:Event = param1;
         if(Main.loadName[this.count] == Main.loadName[0])
         {
            TailClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("tailClass") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[1])
         {
            HaneClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("hane") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[2])
         {
            BuraClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("bura") as Class;
            NawaClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("nawa") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[3])
         {
            MuneClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("mune") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[4])
         {
            DouClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("dou") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[5])
         {
            Handm0Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("hand0") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[6])
         {
            Handm1Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("hand1") as Class;
            Handm1FreeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("hand1Free") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[7])
         {
            AshiClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("ashi") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[8])
         {
            HeadClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("head") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[9])
         {
            PeniClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("peniClass") as Class;
            MosaicClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Mosaic") as Class;
            VibratorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("vibratorClass") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[10])
         {
            MuneMClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("mune_m") as Class;
            Collar0Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Collar0") as Class;
            Collar1Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Collar1") as Class;
            Necktie0Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Necktie0") as Class;
            Necktie1Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Necktie1") as Class;
            Necklace0Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Necklace0") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[11])
         {
            YsyatuMuneClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("YsyatuMune") as Class;
            YsyatuMune2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("YsyatuMune2") as Class;
            YsyatuEriClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("YsyatuEri") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[12])
         {
            HairExClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("HairEx") as Class;
            SwapClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("swapMc") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[13])
         {
            douBeltClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("douBelt") as Class;
            BeltClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("belt") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[14])
         {
            bgClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("bg") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[15])
         {
            MobClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("mob") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[16])
         {
            CharacterClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("chara_obj") as Class;
            ballClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("ball") as Class;
            blockrodClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("blockrod") as Class;
            blockBreakClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("blockBreak") as Class;
            blockHeartClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("blockHeart") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[17])
         {
            MarkClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("markClass") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[18])
         {
            RibonClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("ribon") as Class;
            EarClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("earClass") as Class;
            MimiClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Mimi") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[19])
         {
            SideBurnMiddleClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("SideBurnMiddle") as Class;
            SideBurnClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("SideBurn_m") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[20])
         {
            HairBackClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("HairBack_m") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[21])
         {
            BangsClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("bangs_m") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[22])
         {
            HornClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("horn_m") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[23])
         {
            douYsyatuClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("douYsyatu_m") as Class;
            douTsyatuClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("douTsyatu_m") as Class;
            douSeihukuClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("douSeihuku_m") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[24])
         {
            MouthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("mouth") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[25])
         {
            HairClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Hair") as Class;
            HairUnderClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("hairUnder") as Class;
            hairOptionClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("hairOption") as Class;
            HairUshiroClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("HairUshiro_m") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[26])
         {
            breastOptionClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("breastOption") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[27])
         {
            HatClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Hat") as Class;
            HatBackClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("HatBack") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[28])
         {
            MeganeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Megane") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[29])
         {
            EyeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("Eye") as Class;
         }
         else if(Main.loadName[this.count] == Main.loadName[30])
         {
            HukidashiClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("hukidashiMc") as Class;
         }
         ++Main.loadCount;
         ++this.count;
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.drawParts);
         if(Main.loadName.length == this.count)
         {
            try
            {
               if(this.Flag == "main")
               {
                  new Chara_Class();
               }
               else
               {
                  i = MenuClass._nowCharaNum;
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.Eye0_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.Eye1_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.mouth_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.hair_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.hairOption_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.hairUnder_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.mune_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.mune0_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.mune1_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.YsyatuMune_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.YsyatuMune2_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.YsyatuEri_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.Necktie0_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.Necktie1_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.Necklace0_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.Collar0_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.Collar1_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.Bura_ar[i]);
                  MenuClass.charaAdd[i].mune.removeChild(Chara_Class_Load.Nawa_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.Hat_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.HatBack_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.HairBack_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.HairUshiro_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.SideBurnMiddle_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.dou_ar[i]);
                  MenuClass.charaAdd[i].dou.removeChild(Chara_Class_Load.YsyatuDou_ar[i]);
                  MenuClass.charaAdd[i].dou.removeChild(Chara_Class_Load.TsyatuDou_ar[i]);
                  MenuClass.charaAdd[i].dou.removeChild(Chara_Class_Load.VestDou_ar[i]);
                  MenuClass.charaAdd[i].dou.removeChild(Chara_Class_Load.SeihukuDou_ar[i]);
                  MenuClass.charaAdd[i].peni.removeChild(Chara_Class_Load.peni_ar[i]);
                  MenuClass.charaAdd[i].dou.dou_shitaHuku.removeChild(Chara_Class_Load.peni2_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.mosaic_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.vibrator_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.Collar_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.ashi0_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.ashi1_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.handm1_0_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.handm1_1_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.handm0_0_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.handm0_1_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.Horn_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.Bangs_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.SideBurnLeft_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.SideBurnRight_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.Mimi_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.ear0_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.ear1_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.hane_ar[i]);
                  MenuClass.charaAdd[i].removeChild(Chara_Class_Load.Tail_ar[i]);
                  MenuClass.charaAdd[i].head.removeChild(Chara_Class_Load.Megane_ar[i]);
                  new Chara_Class_Load(i);
                  SetCharaData.execute(i,"move",3);
                  new Chara_Class_First(i);
               }
            }
            catch(myError:Error)
            {
               trace("MenuClass Chara_Class Error    ",myError);
               trace(myError.getStackTrace());
            }
         }
         else
         {
            this.requestClass(Main.loadName[this.count]);
         }
      }
   }
}
