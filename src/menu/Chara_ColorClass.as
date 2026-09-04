package menu
{
   import flash.display.BlendMode;
   import flash.utils.ByteArray;
   import parameter.ColorMakeNew;
   import parameter.Color_data;
   import parameter.Dress_data;
   
   public class Chara_ColorClass
   {
       
      
      private var charaNum:int;
      
      private var colorNum:int;
      
      private var dressNum:int;
      
      private var dressKageNum:int;
      
      private var tabName:String;
      
      private var hukuName:String;
      
      private var colorMenuNum:int;
      
      private var colorCode:Array;
      
      private var colorCode0:String;
      
      private var colorCode1:String;
      
      private var colorCode2:String;
      
      private var colorCode3:String;
      
      private var charaAdd:Object;
      
      private var charaAddDepth:Object;
      
      private var charaData:Object;
      
      private var i:int;
      
      private var j:int;
      
      private var k:int;
      
      private var m:int;
      
      private var p:int;
      
      private var Obj:Object;
      
      private var normal_C:String;
      
      private var normal_kage:String;
      
      private var hiyake_C:String;
      
      private var hiyake_kage:String;
      
      private var all_C:String;
      
      private var all_kage:String;
      
      private var ccChange:String;
      
      private var kkChange:String;
      
      private var kkChange1:String;
      
      private var kkChange3:String;
      
      private var mune_C:String;
      
      private var mune_kage0:String;
      
      private var mune_kage1:String;
      
      private var thigh_C:String;
      
      private var thigh_kage:String;
      
      private var shiri_kage:String;
      
      private var dou_C:String;
      
      private var dou_kage:String;
      
      private var douKubi_C:String;
      
      private var douUe_C:String;
      
      private var douUe_kage:String;
      
      private var douShita_C:String;
      
      private var douShita_kage:String;
      
      private var douHeso_kage:String;
      
      public function Chara_ColorClass(param1:int, param2:String)
      {
         var _loc3_:String = null;
         super();
         this.charaNum = param1;
         this.tabName = param2;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaAddDepth = MenuClass.charaAddDepth[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(this.tabName == "Body" || this.tabName == "Hiyake")
         {
            this.BodyColorSet();
            this.HiyakeColor();
            this.BodyColor();
            this.i = 0;
            while(this.i <= 1)
            {
               this.GloveColor(this.i);
               this.HandArm1Color(this.i);
               this.HandArm2Color(this.i);
               ++this.i;
            }
            this.ContourColor();
            this.AshiColor();
            this.BreastColor();
            this.NoseColor();
            this.EarColor();
            this.EyebrowColor();
            this.GagColor();
            this.NoseShadowColor();
         }
         else if(this.tabName == "BodyPlus")
         {
            this.BodyPlusColor();
         }
         else if(this.tabName == "Breast")
         {
            this.BodyColorSet();
            this.HiyakeColor();
            this.BreastColor();
         }
         else if(this.tabName == "Nipple")
         {
            this.NippleColor(this.charaData["Nipple"]["_color0"][0]);
         }
         else if(this.tabName == "LeftArm")
         {
            this.BodyColorSet();
            this.HandArm2Color(0);
         }
         else if(this.tabName == "RightArm")
         {
            this.BodyColorSet();
            this.HandArm2Color(1);
         }
         else if(this.tabName == "LeftArm2")
         {
            this.BodyColorSet();
            this.HandArm1Color(0);
         }
         else if(this.tabName == "RightArm2")
         {
            this.BodyColorSet();
            this.HandArm1Color(1);
         }
         else if(this.tabName == "LeftHand")
         {
            this.BodyColorSet();
            this.GloveColor(0);
         }
         else if(this.tabName == "RightHand")
         {
            this.BodyColorSet();
            this.GloveColor(1);
         }
         else if(this.tabName == "Ashi")
         {
            this.BodyColorSet();
            this.HiyakeColor();
            this.AshiColor();
         }
         else if(this.tabName == "Contour")
         {
            this.BodyColorSet();
            this.ContourColor();
         }
         else if(this.tabName == "Nose")
         {
            this.BodyColorSet();
            this.NoseColor();
         }
         else if(this.tabName == "NoseShadow")
         {
            this.BodyColorSet();
            this.NoseShadowColor();
         }
         else if(this.tabName == "Ear")
         {
            this.BodyColorSet();
            this.EarColor();
         }
         else if(this.tabName == "Tin" || this.tabName == "Tama")
         {
            this.BodyColorSet();
            this.TinColor(this.charaData["Tin"]["_color0"][0]);
         }
         else if(this.tabName == "s")
         {
            this.BodyColorSet();
            this.sColor();
         }
         else if(this.tabName == "Heso")
         {
            this.BodyColorSet();
            this.HiyakeColor();
            this.HesoColor();
         }
         else if(this.tabName == "Hair")
         {
            this.HairColor();
         }
         else if(this.tabName == "Bangs")
         {
            this.BangsColor();
         }
         else if(this.tabName == "Eyebrow")
         {
            this.BodyColorSet();
            this.EyebrowColor();
         }
         else if(this.tabName == "HairBack")
         {
            this.HairBackColor();
         }
         else if(this.tabName == "SideBurnLeft")
         {
            this.SideBurnLeftColor();
         }
         else if(this.tabName == "SideBurnRight")
         {
            this.SideBurnRightColor();
         }
         else if(this.tabName == "UnderHair")
         {
            this.underHairColor();
         }
         else if(this.tabName.slice(0,6) == "HairEx")
         {
            _loc3_ = this.tabName.slice(6,8);
            this.HairExColor(_loc3_);
         }
         else if(this.tabName.slice(0,4) == "Mark")
         {
            _loc3_ = this.tabName.slice(4,6);
            this.MarkColor(_loc3_);
         }
         else if(this.tabName == "Hige")
         {
            this.HigeColor();
         }
         else if(this.tabName == "Eye")
         {
            this.EyeColor();
         }
         else if(this.tabName == "EyeballLeft")
         {
            this.EyeballColor(0);
         }
         else if(this.tabName == "EyeballRight")
         {
            this.EyeballColor(1);
         }
         else if(this.tabName == "Background")
         {
            this.BackgroundColor();
         }
         else if(this.tabName == "Mosaic")
         {
            this.MosaicColor();
         }
         else if(this.tabName == "defoEye")
         {
            this.defoEyeColor();
         }
         else if(this.tabName == "SeihukuMune")
         {
            this.SeihukuMuneColor();
         }
         else if(this.tabName == "SeihukuDou")
         {
            this.SeihukuDouColor();
         }
         else if(this.tabName == "YsyatuMune" || this.tabName == "TsyatuMune" || this.tabName == "VestMune")
         {
            this.hukuMuneColor();
         }
         else if(this.tabName == "YsyatuDou" || this.tabName == "TsyatuDou" || this.tabName == "VestDou")
         {
            this.hukuDouColor();
         }
         else if(this.tabName == "YsyatuOnePiece" || this.tabName == "TsyatuOnePiece" || this.tabName == "VestOnePiece")
         {
            this.hukuOnePieceColor();
         }
         else if(this.tabName == "YsyatuTop" || this.tabName == "VestTop")
         {
            this.hukuTopColor();
         }
         else if(this.tabName == "VestBreastOption" || this.tabName == "SeihukuBreastOption" || this.tabName == "YsyatuBreastOption" || this.tabName == "TsyatuBreastOption")
         {
            this.hukuBreastOptionColor();
         }
         else if(this.tabName == "VestDouOption" || this.tabName == "SeihukuDouOption" || this.tabName == "YsyatuDouOption" || this.tabName == "TsyatuDouOption")
         {
            this.hukuDouOptionColor();
         }
         else if(this.tabName == "SeihukuArm1" || this.tabName == "YsyatuArm1" || this.tabName == "TsyatuArm1" || this.tabName == "VestArm1")
         {
            this.hukuArm1Color();
         }
         else if(this.tabName == "SeihukuArm2" || this.tabName == "YsyatuArm2" || this.tabName == "TsyatuArm2" || this.tabName == "VestArm2")
         {
            this.hukuArm2Color();
         }
         else if(this.tabName == "Item0")
         {
            this.ItemColor("0","Item0");
         }
         else if(this.tabName == "Item1")
         {
            this.ItemColor("1","Item1");
         }
         else if(this.tabName == "Bura")
         {
            this.BuraColor();
            this.BuraHukin();
         }
         else if(this.tabName == "Spantu")
         {
            this.SpantuColor();
         }
         else if(this.tabName == "SpantuAshi")
         {
            this.SpantuAshiColor();
         }
         else if(this.tabName == "Pantu")
         {
            this.PantuColor();
         }
         else if(this.tabName == "PantuAshi")
         {
            this.PantuAshiColor();
         }
         else if(this.tabName == "Nawa")
         {
            this.NawaColor();
         }
         else if(this.tabName == "NippleGLeft")
         {
            this.NippleGLeftColor();
         }
         else if(this.tabName == "NippleGRight")
         {
            this.NippleGRightColor();
         }
         else if(this.tabName == "SG")
         {
            this.SGColor();
         }
         else if(this.tabName == "Vibrator")
         {
            this.vibratorColor();
         }
         else if(this.tabName == "Kutu0")
         {
            this.KutuColor(0);
         }
         else if(this.tabName == "Kutu1")
         {
            this.KutuColor(1);
         }
         else if(this.tabName == "LegBand0")
         {
            this.LegBandColor(0);
         }
         else if(this.tabName == "LegBand1")
         {
            this.LegBandColor(1);
         }
         else if(this.tabName == "Socks0")
         {
            this.SocksColor(0);
         }
         else if(this.tabName == "Socks1")
         {
            this.SocksColor(1);
         }
         else if(this.tabName == "Tights")
         {
            this.TightsColor();
         }
         else if(this.tabName == "Skirt")
         {
            this.SkirtColor();
         }
         else if(this.tabName == "ZubonAshi0")
         {
            this.ZubonAshiColor(0);
         }
         else if(this.tabName == "ZubonAshi1")
         {
            this.ZubonAshiColor(1);
         }
         else if(this.tabName == "Zubon")
         {
            this.ZubonColor();
         }
         else if(this.tabName == "ZubonSuso")
         {
            this.ZubonSusoColor();
         }
         else if(this.tabName == "Hat")
         {
            this.HatColor();
         }
         else if(this.tabName.slice(0,5) == "Ribon")
         {
            _loc3_ = this.tabName.slice(5,7);
            this.RibonColor(_loc3_);
         }
         else if(this.tabName.slice(0,4) == "Belt")
         {
            _loc3_ = this.tabName.slice(4,6);
            this.BeltColor(_loc3_);
            this.BeltLineColor(_loc3_);
         }
         else if(this.tabName == "Megane")
         {
            this.MeganeColor();
         }
         else if(this.tabName == "Headband")
         {
            this.HeadbandColor();
         }
         else if(this.tabName == "Mimi")
         {
            this.MimiColor();
         }
         else if(this.tabName == "Hane")
         {
            this.HaneColor();
         }
         else if(this.tabName == "Tail")
         {
            this.TailColor();
         }
         else if(this.tabName == "Horn")
         {
            this.HornColor();
         }
         else if(this.tabName == "Collar")
         {
            this.CollarColor();
         }
         else if(this.tabName == "Necklace")
         {
            this.NecklaceColor();
         }
         else if(this.tabName == "Necktie")
         {
            this.NecktieColor();
         }
         else if(this.tabName == "Wristband0")
         {
            this.WristbandColor("0","Wristband");
         }
         else if(this.tabName == "Wristband1")
         {
            this.WristbandColor("1","Wristband");
         }
         else if(this.tabName == "Glove0")
         {
            this.BodyColorSet();
            this.GloveColor(0);
         }
         else if(this.tabName == "Glove1")
         {
            this.BodyColorSet();
            this.GloveColor(1);
         }
         else if(this.tabName == "Bracelet0")
         {
            this.BraceletColor(0);
         }
         else if(this.tabName == "Bracelet1")
         {
            this.BraceletColor(1);
         }
         else if(this.tabName == "ArmBracelet0")
         {
            this.ArmBraceletColor(0);
         }
         else if(this.tabName == "ArmBracelet1")
         {
            this.ArmBraceletColor(1);
         }
         else if(this.tabName == "Armband0")
         {
            this.ArmbandColor(0);
         }
         else if(this.tabName == "Armband1")
         {
            this.ArmbandColor(1);
         }
         else if(this.tabName == "Elbowpad0")
         {
            this.ElbowpadColor(0);
         }
         else if(this.tabName == "Elbowpad1")
         {
            this.ElbowpadColor(1);
         }
         else if(this.tabName == "Headphone")
         {
            this.HeadphoneColor();
         }
         else if(this.tabName == "Earring0")
         {
            this.EarringColor(0);
         }
         else if(this.tabName == "Earring1")
         {
            this.EarringColor(1);
         }
         else if(this.tabName == "Gag")
         {
            this.BodyColorSet();
            this.GagColor();
         }
         else if(this.tabName.slice(0,8) == "FontType")
         {
            _loc3_ = this.tabName.slice(8,10);
            this.FontTypeColorSet(_loc3_);
         }
         else if(this.tabName.slice(0,9) == "FreeRibon")
         {
            _loc3_ = this.tabName.slice(9,11);
            this.FreeRibonColor(_loc3_);
         }
         else if(this.tabName.slice(0,8) == "FreeBelt")
         {
            _loc3_ = this.tabName.slice(8,10);
            this.FreeBeltColor(_loc3_);
         }
         else if(this.tabName.slice(0,9) == "FreeChair")
         {
            _loc3_ = this.tabName.slice(9,11);
            this.FreeChairColor(_loc3_);
         }
         else if(this.tabName.slice(0,13) == "FreeHukidashi")
         {
            _loc3_ = this.tabName.slice(13,15);
            this.FreeHukidashiColor(_loc3_);
         }
         else if(this.tabName.slice(0,12) == "FreeHandItem")
         {
            _loc3_ = this.tabName.slice(12,14);
            this.ItemColor(_loc3_,"FreeHandItem");
         }
         else if(this.tabName.slice(0,17) == "FreeHandWristband")
         {
            _loc3_ = this.tabName.slice(17,19);
            this.WristbandColor(_loc3_,"FreeHandWristband");
         }
         else if(this.tabName.slice(0,12) == "FreeHandVest")
         {
            _loc3_ = this.tabName.slice(12,14);
            this.FreeHandVestColor(_loc3_);
         }
         else if(this.tabName.slice(0,8) == "FreeHand")
         {
            _loc3_ = this.tabName.slice(8,10);
            this.FreeHandColor(_loc3_);
         }
      }
      
      private function codeCheck(param1:String, param2:int, param3:int, param4:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 == "chara")
         {
            _loc5_ = this.charaData;
            _loc6_ = this.charaNum;
         }
         else
         {
            _loc5_ = MenuClass.systemData;
            _loc6_ = 0;
         }
         if(Dress_data.DressData[param1].length == 1)
         {
            _loc7_ = 0;
         }
         else
         {
            _loc7_ = _loc5_[param1]["_menu"];
         }
         var _loc8_:String = _loc5_[param1]["_color" + param2][0];
         this.dressNum = Dress_data.DressData[param1][_loc7_]["_color" + param2][2];
         this.ccChange = String(_loc8_);
         if(this.ccChange.length >= 4)
         {
            new ColorMakeNew(this.ccChange,param3 - 1);
            this.kkChange = ColorMakeNew.colorStr;
            if(param1 == "EyeballLeft" || param1 == "EyeballRight")
            {
               new ColorMakeNew(this.ccChange,param3);
               this.kkChange1 = ColorMakeNew.colorStr;
            }
            else if(param1 == "Nipple")
            {
               new ColorMakeNew(this.ccChange,param3 + 2);
               this.kkChange3 = ColorMakeNew.colorStr;
            }
         }
         else
         {
            this.kkChange = Color_data.ColorData[Dress_data.DressData[param1][_loc7_]["_color" + param2][0]][_loc8_][param3];
            if(param1 == "EyeballLeft" || param1 == "EyeballRight")
            {
               this.kkChange1 = Color_data.ColorData[Dress_data.DressData[param1][_loc7_]["_color" + param2][0]][_loc8_][param3 + 1];
            }
            else if(param1 == "Nipple")
            {
               this.kkChange3 = Color_data.ColorData[Dress_data.DressData[param1][_loc7_]["_color" + param2][0]][_loc8_][param3 + 3];
            }
            this.ccChange = Color_data.ColorData[Dress_data.DressData[param1][_loc7_]["_color" + param2][0]][_loc8_][this.dressNum];
         }
      }
      
      private function BodyColorSet() : void
      {
         this.codeCheck("Body",0,3,"chara");
         this.normal_C = this.ccChange;
         this.normal_kage = this.kkChange;
         this.codeCheck("Hiyake",0,3,"chara");
         this.hiyake_C = this.ccChange;
         this.hiyake_kage = this.kkChange;
         if(this.charaData["Hiyake"]["_visible"][0])
         {
            this.all_C = this.hiyake_C;
            this.all_kage = this.hiyake_kage;
         }
         else
         {
            this.all_C = this.normal_C;
            this.all_kage = this.normal_kage;
         }
      }
      
      private function HiyakeColor() : void
      {
         var v:int = 0;
         this.mune_C = this.normal_C;
         this.mune_kage0 = this.normal_kage;
         this.mune_kage1 = this.normal_kage;
         this.thigh_C = this.normal_C;
         this.thigh_kage = this.normal_kage;
         this.shiri_kage = this.normal_kage;
         this.dou_C = this.normal_C;
         this.dou_kage = this.normal_kage;
         this.douKubi_C = this.normal_C;
         this.douUe_C = this.normal_C;
         this.douHeso_kage = this.normal_kage;
         this.douUe_kage = this.normal_kage;
         this.douShita_C = this.normal_C;
         this.douShita_kage = this.normal_kage;
         if(this.charaData["Hiyake"]["_visible"][0])
         {
            var muneSet:Function = function():void
            {
               mune_C = hiyake_C;
               mune_kage0 = hiyake_kage;
               mune_kage1 = hiyake_kage;
            };
            var thighSet:Function = function():void
            {
               thigh_C = hiyake_C;
               thigh_kage = hiyake_kage;
               shiri_kage = hiyake_kage;
            };
            var douSet:Function = function():void
            {
               dou_C = hiyake_C;
               dou_kage = hiyake_kage;
               douHeso_kage = hiyake_kage;
            };
            var kubiSet:Function = function():void
            {
               douKubi_C = hiyake_C;
               mune_kage1 = hiyake_kage;
            };
            var douShitaSet:Function = function():void
            {
               douShita_C = hiyake_C;
               douShita_kage = hiyake_kage;
            };
            v = this.charaData["Hiyake"]["_menu"];
            if(v == 0)
            {
               thighSet();
               kubiSet();
            }
            else if(v == 1)
            {
               thighSet();
            }
            else if(v == 2)
            {
               kubiSet();
               thighSet();
               douSet();
            }
            else if(v == 3)
            {
               thighSet();
               douSet();
            }
            else if(v == 4)
            {
               douSet();
               kubiSet();
            }
            else if(v == 5)
            {
               douSet();
            }
            else if(v == 6)
            {
               kubiSet();
            }
            else if(v != 7)
            {
               if(v == 8)
               {
                  thighSet();
                  kubiSet();
                  douShitaSet();
               }
               else if(v == 9)
               {
                  thighSet();
                  douShitaSet();
               }
               else if(v == 10)
               {
                  thighSet();
                  douSet();
                  kubiSet();
                  douShitaSet();
               }
               else if(v == 11)
               {
                  thighSet();
                  douSet();
                  douShitaSet();
               }
               else if(v == 12)
               {
                  muneSet();
                  thighSet();
                  douSet();
                  kubiSet();
                  this.douUe_C = this.hiyake_C;
                  this.douUe_kage = this.hiyake_kage;
               }
               else if(v == 13)
               {
                  muneSet();
                  douSet();
                  kubiSet();
                  this.douUe_C = this.hiyake_C;
               }
               else if(v == 14)
               {
                  muneSet();
                  thighSet();
                  douSet();
                  douShitaSet();
                  kubiSet();
                  this.douUe_C = this.hiyake_C;
               }
            }
         }
      }
      
      private function BodyPlusColor() : void
      {
         var _loc1_:Number = NaN;
         this.colorMenuNum = this.charaData[this.tabName]["_menu"];
         if(this.colorMenuNum == 0)
         {
            if(this.charaData["Megane"]["_visible"][0])
            {
               try
               {
                  this.charaAdd.head.Megane.megane0.blend_color0_0.visible = true;
                  this.charaAdd.head.Megane.megane0.blend_color0_0.blendMode = BlendMode.MULTIPLY;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane1.blend_color0_0.visible = true;
                  this.charaAdd.head.Megane.megane1.blend_color0_0.blendMode = BlendMode.MULTIPLY;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane0.blend_color0_1.visible = true;
                  this.charaAdd.head.Megane.megane0.blend_color0_1.blendMode = BlendMode.MULTIPLY;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane1.blend_color0_1.visible = true;
                  this.charaAdd.head.Megane.megane1.blend_color0_1.blendMode = BlendMode.MULTIPLY;
               }
               catch(myError:Error)
               {
               }
            }
            this.i = 0;
            while(this.i <= 1)
            {
               this.charaAdd.head["eyebrow" + this.i].visible = true;
               ++this.i;
            }
            new ColorChangeClearClass(this.charaAdd);
         }
         else if(this.colorMenuNum == 1 || this.colorMenuNum == 2 || this.colorMenuNum == 3 || this.colorMenuNum == 4)
         {
            if(this.charaData["Megane"]["_visible"][0])
            {
               try
               {
                  this.charaAdd.head.Megane.megane0.blend_color0_0.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane1.blend_color0_0.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane0.blend_color0_1.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane1.blend_color0_1.visible = false;
               }
               catch(myError:Error)
               {
               }
            }
            this.i = 0;
            while(this.i <= 1)
            {
               this.charaAdd.head["eyebrow" + this.i].visible = true;
               ++this.i;
            }
            this.codeCheck(this.tabName,0,5,"chara");
            _loc1_ = this.charaData["BodyPlusMeter"]["_meter"] * 0.01;
            new ColorChangeClass2(this.charaAdd,this.ccChange,_loc1_,this.colorMenuNum);
         }
      }
      
      private function BodyColor() : void
      {
         new ColorChangeClass(this.charaAdd.mune.ue.color0,this.douUe_C);
         new ColorChangeClass(this.charaAdd.mune.ue.color1,this.douUe_C);
         new ColorChangeClass(this.charaAdd.mune.ue.kage0,this.all_kage);
         new ColorChangeClass(this.charaAdd.mune.ue.kubi0,this.douKubi_C);
         new ColorChangeClass(this.charaAdd.mune.ue.kubi1,this.all_C);
         new ColorChangeClass(this.charaAdd.dou.dou_shita.color0,this.douShita_C);
         new ColorChangeClass(this.charaAdd.dou.dou_shita.kage0,this.douShita_kage);
         new ColorChangeClass(this.charaAdd.dou.dou_shita.haraboteKage,this.douShita_kage);
         new ColorChangeClass(this.charaAdd.dou.color0,this.dou_C);
         try
         {
            new ColorChangeClass(this.charaAdd.dou.hukin.kage0,this.dou_kage);
         }
         catch(myError:Error)
         {
         }
         new ColorChangeClass(this.charaAdd.dou.harabote.color0,this.dou_C);
         try
         {
            new ColorChangeClass(this.charaAdd.dou.harabote.haraboteKage,this.dou_kage);
         }
         catch(myError:Error)
         {
         }
         new ColorChangeClass(this.charaAdd.dou.MuneKage0,this.dou_kage);
         this.HesoColor();
         if(this.charaData["Vest"]["_visible"][0])
         {
            this.i = 0;
            for(; this.i <= 1; ++this.i)
            {
               try
               {
                  if(this.charaAdd.mune.VestMune["ysyatu" + this.i].ysyatu.breastOption["breastOption" + this.i].hada)
                  {
                     new ColorChangeClass(this.charaAdd.mune["VestMune"]["ysyatu" + this.i].ysyatu.breastOption["breastOption" + this.i].hada,this.all_C);
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         if(this.charaData["Ysyatu"]["_visible"][0])
         {
            this.i = 0;
            for(; this.i <= 1; ++this.i)
            {
               try
               {
                  if(this.charaAdd.mune.YsyatuMune["ysyatu" + this.i].ysyatu.breastOption["breastOption" + this.i].hada)
                  {
                     new ColorChangeClass(this.charaAdd.mune["YsyatuMune"]["ysyatu" + this.i].ysyatu.breastOption["breastOption" + this.i].hada,this.all_C);
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         if(this.charaData["Tsyatu"]["_visible"][0])
         {
            this.i = 0;
            for(; this.i <= 1; ++this.i)
            {
               try
               {
                  if(this.charaAdd.mune.TsyatuMune["ysyatu" + this.i].ysyatu.breastOption["breastOption" + this.i].hada)
                  {
                     new ColorChangeClass(this.charaAdd.mune["TsyatuMune"]["ysyatu" + this.i].ysyatu.breastOption["breastOption" + this.i].hada,this.all_C);
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         if(this.charaData["Seihuku"]["_visible"][0])
         {
            this.i = 0;
            for(; this.i <= 1; ++this.i)
            {
               try
               {
                  if(this.charaAdd.mune.SeihukuMune["ysyatu" + this.i].ysyatu.breastOption["breastOption" + this.i].hada)
                  {
                     new ColorChangeClass(this.charaAdd.mune["SeihukuMune"]["ysyatu" + this.i].ysyatu.breastOption["breastOption" + this.i].hada,this.all_C);
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         if(this.charaData["Necklace"]["_visible"][0])
         {
            try
            {
               if(this.charaAdd.mune.Necklace0.hada)
               {
                  new ColorChangeClass(this.charaAdd.mune.Necklace0.hada,this.all_C);
               }
            }
            catch(myError:Error)
            {
            }
         }
      }
      
      private function HandArm2Color(param1:int) : void
      {
         new ColorChangeClass(this.charaAdd["handm0_" + param1].shoulder.color0,this.all_C);
         new ColorChangeClass(this.charaAdd["handm0_" + param1].shoulder_back.color0,this.all_C);
         new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.color0,this.all_C);
      }
      
      private function HandArm1Color(param1:int) : void
      {
         new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.color0,this.all_C);
      }
      
      private function FreeHandColor(param1:String) : void
      {
         try
         {
            this.codeCheck("FreeHand" + param1,0,3,"system");
            new ColorChangeClass(Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.color0,this.ccChange);
            new ColorChangeClass(Chara_Class.chara_m["FreeHand" + param1].arm0.hand.color0,this.ccChange);
            new ColorChangeClass(Chara_Class.chara_m["FreeHand" + param1].arm0.hand.kage0,this.kkChange);
            try
            {
               new ColorChangeClass(Chara_Class.chara_m["FreeHand" + param1].arm0.hand.kage1,this.kkChange);
            }
            catch(myError:Error)
            {
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function AshiColor() : void
      {
         this.i = 0;
         while(this.i <= 1)
         {
            new ColorChangeClass(this.charaAdd["ashi" + this.i].shiri.shiri.kage0,this.shiri_kage);
            try
            {
               new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.color0,this.thigh_C);
            }
            catch(myError:Error)
            {
            }
            new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.kage0,this.thigh_kage);
            try
            {
               new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.kage1,this.all_kage);
            }
            catch(myError:Error)
            {
            }
            new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.color1,this.all_C);
            try
            {
               new ColorChangeClass(this.charaAdd["ashi" + this.i].leg.leg.color0,this.all_C);
            }
            catch(myError:Error)
            {
            }
            new ColorChangeClass(this.charaAdd["ashi" + this.i].foot.foot.color0,this.all_C);
            new ColorChangeClass(this.charaAdd["ashi" + this.i].foot.foot.kage0,this.all_kage);
            ++this.i;
         }
      }
      
      private function BreastColor() : void
      {
         this.i = 0;
         while(this.i <= 1)
         {
            new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.color0,this.mune_C);
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.kage0.color,this.mune_kage0);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.kage1.color,this.mune_kage1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.kage1_m,this.mune_kage1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.corset.kage1,this.mune_kage1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.corset.color0,this.mune_C);
            }
            catch(myError:Error)
            {
            }
            ++this.i;
         }
      }
      
      private function ContourColor() : void
      {
         new ColorChangeClass(this.charaAdd.head.face,this.all_C);
         this.i = 0;
         while(this.i <= 1)
         {
            try
            {
               new ColorChangeClass(this.charaAdd.head["sobakasu" + this.i].kage,this.all_kage);
            }
            catch(myError:Error)
            {
            }
            ++this.i;
         }
      }
      
      private function NoseColor() : void
      {
         try
         {
            try
            {
               new ColorChangeClass(this.charaAdd.head.nose.hada_kage0,this.all_kage);
            }
            catch(myError:Error)
            {
            }
            this.codeCheck("Nose",0,4,"chara");
            try
            {
               new ColorChangeClass(this.charaAdd.head.nose["color" + 0],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.head.nose["kage" + 0],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            this.codeCheck("Nose",1,4,"chara");
            try
            {
               new ColorChangeClass(this.charaAdd.head.nose["color" + 1],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            this.codeCheck("Nose",2,4,"chara");
            try
            {
               new ColorChangeClass(this.charaAdd.head.nose["color" + 2],this.ccChange);
            }
            catch(myError:Error)
            {
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function NoseShadowColor() : void
      {
         try
         {
            new ColorChangeClass(this.charaAdd.head.noseShadow.nose_kage["kage" + 0],this.all_kage);
         }
         catch(myError:Error)
         {
         }
      }
      
      private function EarColor() : void
      {
         this.i = 0;
         while(this.i <= 1)
         {
            this.Obj = this.charaAdd.head["ear" + this.i].ear;
            try
            {
               new ColorChangeClass(this.Obj.ear.hada0,this.all_C);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.Obj.ear.hada_kage0,this.all_kage);
            }
            catch(myError:Error)
            {
            }
            if(this.charaData["Ear"]["_senColor"] == 1)
            {
               this.codeCheck("Hair",2,4,"chara");
               try
               {
                  new ColorChangeClass(this.Obj.ear.senColor,this.ccChange);
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  new ColorChangeClass(this.Obj.ear.senColor,"000000");
               }
               catch(myError:Error)
               {
               }
            }
            this.j = 0;
            for(; this.j <= 2; ++this.j)
            {
               try
               {
                  this.codeCheck("Ear",this.j,4,"chara");
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.Obj.ear["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.ear["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
            ++this.i;
         }
      }
      
      private function NippleColor(param1:String) : void
      {
         this.codeCheck("Nipple",0,3,"chara");
         this.i = 0;
         while(this.i <= 1)
         {
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.Nipple.nipple.nipple.color0,this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.Nipple.nipple.nipple.color1,this.kkChange3);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.Nipple.nipple.nipple.color2,this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.Nipple.nipple.nipple.color2_1,this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.Nipple.nipple.nipple.color2_2,this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.Nipple.nipple.nipple.obj.color0,this.ccChange);
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.Nipple.nipple.nipple.obj.color1,this.kkChange3);
               new ColorChangeClass(this.charaAdd.mune["mune" + this.i].mune.Nipple.nipple.nipple.obj.color2,this.kkChange);
            }
            catch(myError:Error)
            {
            }
            ++this.i;
         }
      }
      
      private function TinColor(param1:String) : void
      {
         var _loc2_:Object = null;
         this.j = 0;
         while(this.j <= 1)
         {
            if(this.j == 0)
            {
               _loc2_ = this.charaAdd.peni.peni.Peni;
            }
            else
            {
               _loc2_ = this.charaAdd.dou.dou_shitaHuku.peni.Peni;
            }
            this.i = 0;
            while(this.i <= 2)
            {
               this.codeCheck("Tin",this.i,3,"chara");
               try
               {
                  new ColorChangeClass(_loc2_.Tin.Tin.peni["color" + this.i + "_0"],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(_loc2_.Tin.TinUp.peni["color" + this.i + "_0"],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(_loc2_.Tin.Tin.peni["kage" + this.i + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(_loc2_.Tin.TinUp.peni["kage" + this.i + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               ++this.i;
            }
            this.codeCheck("Tin",0,3,"chara");
            try
            {
               new ColorChangeClass(_loc2_.Tama.Tama.color0_0,this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(_loc2_.TamaIn.color0_0,this.ccChange);
            }
            catch(myError:Error)
            {
            }
            this.i = 0;
            while(this.i <= 1)
            {
               try
               {
                  new ColorChangeClass(_loc2_.Tama.Tama["kage" + this.i + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(_loc2_.TamaIn["kage" + this.i + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               ++this.i;
            }
            ++this.j;
         }
      }
      
      private function sColor() : void
      {
         var _loc1_:Object = this.charaAdd.dou.dou_shitaHuku.s;
         if(String(this.charaData["Body"]["_color0"][0]) == String(this.charaData["s"]["_color0"][0]))
         {
            _loc1_["color0_0"].visible = false;
         }
         else if(this.charaData["s"]["_visible"][0])
         {
            _loc1_["color0_0"].visible = true;
            this.codeCheck("s",0,5,"chara");
            new ColorChangeClass(_loc1_["color0_0"],this.ccChange);
         }
         this.codeCheck("s",1,5,"chara");
         this.i = 0;
         while(this.i <= 1)
         {
            try
            {
               new ColorChangeClass(_loc1_["b_s_hida" + this.i + "_color1"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(_loc1_["b_s_hida" + this.i + "_kage1"],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(_loc1_["b_s_main" + this.i + "_color1"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(_loc1_["b_s_main" + this.i + "_kage1"],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            ++this.i;
         }
         this.codeCheck("s",2,2,"chara");
         try
         {
            new ColorChangeClass(_loc1_.b_s_kuri.kuri["color2_0"],this.ccChange);
            new ColorChangeClass(_loc1_.b_s_kuri.kuri["kage2_0"],this.kkChange);
         }
         catch(myError:Error)
         {
         }
         this.i = 0;
         while(this.i <= 1)
         {
            try
            {
               new ColorChangeClass(_loc1_["b_s_main" + this.i + "_color2"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(_loc1_["b_s_main" + this.i + "_kage2"],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            ++this.i;
         }
         this.j = 0;
         while(this.j <= 1)
         {
            try
            {
               new ColorChangeClass(_loc1_.chitu["ana" + this.j]["kage2_1"],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            ++this.j;
         }
         this.codeCheck("s",2,5,"chara");
         this.j = 0;
         while(this.j <= 1)
         {
            try
            {
               new ColorChangeClass(_loc1_.chitu["ana" + this.j]["kage2_0"],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            ++this.j;
         }
      }
      
      private function HesoColor() : void
      {
         this.Obj = this.charaAdd.dou.HesoSen.heso;
         try
         {
            new ColorChangeClass(this.Obj.kage0_0,this.douHeso_kage);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.Obj.kage0_1,this.douHeso_kage);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.Obj.color0_0,this.all_C);
         }
         catch(myError:Error)
         {
         }
      }
      
      private function EyeColor() : void
      {
         this.codeCheck(this.tabName,0,5,"chara");
         this.colorMenuNum = this.charaData[this.tabName]["_menu"];
         this.j = 0;
         while(this.j <= 1)
         {
            new ColorChangeClass(this.charaAdd.head["eye" + this.j].eye0,this.ccChange);
            new ColorChangeClass(this.charaAdd.head["eye" + this.j].eye1,this.ccChange);
            new ColorChangeClass(this.charaAdd.head["eye" + this.j].eye2,this.ccChange);
            ++this.j;
         }
      }
      
      private function EyeballColor(param1:int) : void
      {
         this.codeCheck(this.tabName,0,5,"chara");
         this.colorMenuNum = this.charaData[this.tabName]["_menu"];
         if(this.colorMenuNum == 0 || this.colorMenuNum == 1)
         {
            new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.color0,this.ccChange);
            try
            {
               new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.eyeLight.eyeLight.color0,this.ccChange);
            }
            catch(myError:Error)
            {
            }
            new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.hitomi.color1_0,"000000");
            try
            {
               new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.hitomi.color1_1,"000000");
            }
            catch(myError:Error)
            {
            }
            new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.kage0,"000000");
            try
            {
               new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.eyeLight.eyeLight.color1,"000000");
            }
            catch(myError:Error)
            {
            }
         }
         else if(this.colorMenuNum >= 2)
         {
            new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.color0,this.kkChange1);
            try
            {
               new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.eyeLight.eyeLight.color0,this.kkChange1);
            }
            catch(myError:Error)
            {
            }
            new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.hitomi.color1_0,this.kkChange);
            try
            {
               new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.hitomi.color1_1,this.kkChange);
            }
            catch(myError:Error)
            {
            }
            new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.kage0,this.kkChange);
            try
            {
               new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.eyeLight.eyeLight.color1,this.kkChange);
            }
            catch(myError:Error)
            {
            }
         }
         this.codeCheck(this.tabName,1,5,"chara");
         new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeWhite,this.ccChange);
         this.codeCheck(this.tabName,2,5,"chara");
         try
         {
            new ColorChangeClass(this.charaAdd.head["eye" + param1].eyeball.hitomi.color2,this.ccChange);
         }
         catch(myError:Error)
         {
         }
      }
      
      private function HairColor() : void
      {
         if(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_option"] == 0)
         {
            if(String(this.charaData["Hair"]["_color0"][0]) == String(this.charaData["Hair"]["_color1"][0]))
            {
               try
               {
                  this.charaAdd.head.hair.color1_0.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.hair.kage1_0.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.HairUshiro.kage1_0.visible = false;
                  this.charaAdd.HairUshiro.kage0_0.visible = true;
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  this.charaAdd.head.hair.color1_0.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.hair.kage1_0.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.HairUshiro.kage1_0.visible = true;
                  this.charaAdd.HairUshiro.kage0_0.visible = false;
               }
               catch(myError:Error)
               {
               }
            }
         }
         this.codeCheck("Hair",0,4,"chara");
         try
         {
            new ColorChangeClass(this.charaAdd.head.hair.color0_0,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.hair.kage0_0,this.kkChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.hairUnder.mae_kage,this.kkChange);
            new ColorChangeClass(this.charaAdd.head.hairUnder.color0,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.HairUshiro.kage0_0,this.kkChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.faceSen.faceHair.color0_0,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         this.codeCheck("Hair",1,4,"chara");
         try
         {
            new ColorChangeClass(this.charaAdd.head.hairOption.color1_0,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.hair.color1_0,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.hair.kage1_0,this.kkChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.HairUshiro.kage1_0,this.kkChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.faceSen.faceHair.color1_0,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.kage,this.kkChange);
         }
         catch(myError:Error)
         {
         }
         this.codeCheck("Hair",2,4,"chara");
         try
         {
            new ColorChangeClass(this.charaAdd.head.hairOption.color2_0,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.hair.color2_0,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.hair.color2_1,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.HairUshiro.color2_0,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.hair.mae_sen,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.HairBaseSen,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.hairUnder.mae_sen,this.ccChange);
         }
         catch(myError:Error)
         {
         }
      }
      
      private function BangsColor() : void
      {
         if(String(this.charaData["Hair"]["_color0"][0]) == String(this.charaData["Bangs"]["_color0"][0]))
         {
            try
            {
               this.charaAdd.head.Bangs.bangs.color1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head.Bangs.bangs.kage1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               this.charaAdd.head.Bangs.bangs.color1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head.Bangs.bangs.kage1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
         }
         this.codeCheck("Hair",0,4,"chara");
         try
         {
            new ColorChangeClass(this.charaAdd.head.Bangs.bangs.color0_0,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.Bangs.bangs.kage0_0,this.kkChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new ColorChangeClass(this.charaAdd.head.Bangs.kage0_0,this.kkChange);
         }
         catch(myError:Error)
         {
         }
         this.j = 0;
         while(this.j <= 1)
         {
            this.codeCheck("Bangs",this.j,4,"chara");
            try
            {
               new ColorChangeClass(this.charaAdd.head.Bangs.bangs["color" + (this.j + 1) + "_0"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(this.j == 1)
               {
                  new ColorChangeClass(this.charaAdd.head.Bangs.color2_0,this.ccChange);
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.head.Bangs.bangs["kage" + (this.j + 1) + "_0"],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            ++this.j;
         }
      }
      
      private function EyebrowColor() : void
      {
         this.codeCheck("Eyebrow",0,3,"chara");
         try
         {
            this.i = 0;
            while(this.i <= 1)
            {
               new ColorChangeClass(this.charaAdd.head["eyebrow" + this.i].eyebrow.obj.kage0,this.ccChange);
               ++this.i;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.i = 0;
            while(this.i <= 1)
            {
               new ColorChangeClass(this.charaAdd.head["eyebrow" + this.i].eyebrow.obj.hada0,this.all_kage);
               ++this.i;
            }
         }
         catch(myError:Error)
         {
         }
         this.codeCheck("Eyebrow",1,3,"chara");
         try
         {
            this.i = 0;
            while(this.i <= 1)
            {
               new ColorChangeClass(this.charaAdd.head["eyebrow" + this.i].eyebrow.obj.color1,this.ccChange);
               ++this.i;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function HairBackColor() : void
      {
         if(String(this.charaData["HairBack"]["_color0"][0]) == String(this.charaData["HairBack"]["_color1"][0]))
         {
            try
            {
               this.charaAdd.HairBack.hairBack.hairBack.color1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.HairBack.hairBack.hairBack.kage1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               this.charaAdd.HairBack.hairBack.hairBack.color1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.HairBack.hairBack.hairBack.kage1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
         }
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("HairBack",this.j,5,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.HairBack.hairBack.hairBack["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.HairBack.hairBack.hairBack["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function SideBurnLeftColor() : void
      {
         if(String(this.charaData["SideBurnLeft"]["_color0"][0]) == String(this.charaData["SideBurnLeft"]["_color1"][0]))
         {
            try
            {
               this.charaAdd.head.SideBurnLeft.SideBurn.side.color1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head.SideBurnLeft.SideBurn.side.kage1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side.color1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side.kage1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               this.charaAdd.head.SideBurnLeft.SideBurn.side.color1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head.SideBurnLeft.SideBurn.side.kage1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side.color1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side.kage1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
         }
         this.j = 0;
         while(this.j <= 2)
         {
            this.codeCheck("SideBurnLeft",this.j,4,"chara");
            try
            {
               new ColorChangeClass(this.charaAdd.head.SideBurnLeft.SideBurn.side["color" + this.j + "_0"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.head.SideBurnLeft.SideBurn.side["kage" + this.j + "_0"],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side["color" + this.j + "_0"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side["kage" + this.j + "_0"],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            ++this.j;
         }
      }
      
      private function SideBurnRightColor() : void
      {
         if(String(this.charaData["SideBurnRight"]["_color0"][0]) == String(this.charaData["SideBurnRight"]["_color1"][0]))
         {
            try
            {
               this.charaAdd.head.SideBurnRight.SideBurn.side.color1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head.SideBurnRight.SideBurn.side.kage1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side.color1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side.kage1_0.visible = false;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               this.charaAdd.head.SideBurnRight.SideBurn.side.color1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head.SideBurnRight.SideBurn.side.kage1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side.color1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side.kage1_0.visible = true;
            }
            catch(myError:Error)
            {
            }
         }
         this.j = 0;
         while(this.j <= 2)
         {
            this.codeCheck("SideBurnRight",this.j,4,"chara");
            try
            {
               new ColorChangeClass(this.charaAdd.head.SideBurnRight.SideBurn.side["color" + this.j + "_0"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.head.SideBurnRight.SideBurn.side["kage" + this.j + "_0"],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side["color" + this.j + "_0"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side["kage" + this.j + "_0"],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            ++this.j;
         }
      }
      
      private function HairExColor(param1:String) : void
      {
         var _loc2_:int = 0;
         if(String(this.charaData["HairEx" + param1]["_color0"][0]) == String(this.charaData["HairEx" + param1]["_color1"][0]))
         {
            this.i = 0;
            while(this.i <= 1)
            {
               try
               {
                  this.charaAdd["HairEx" + param1 + "_" + this.i].HairEx0.color1_0.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["HairEx" + param1 + "_" + this.i].HairEx0.kage1_0.visible = false;
               }
               catch(myError:Error)
               {
               }
               ++this.i;
            }
         }
         else
         {
            this.i = 0;
            while(this.i <= 1)
            {
               try
               {
                  this.charaAdd["HairEx" + param1 + "_" + this.i].HairEx0.color1_0.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["HairEx" + param1 + "_" + this.i].HairEx0.kage1_0.visible = true;
               }
               catch(myError:Error)
               {
               }
               ++this.i;
            }
         }
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("HairEx" + param1,this.j,4,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        this.Obj = this.charaAdd["HairEx" + param1 + "_" + this.i].HairEx0;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function HigeColor() : void
      {
         this.codeCheck("Hair",0,4,"chara");
         this.i = 0;
         while(this.i <= 1)
         {
            try
            {
               new ColorChangeClass(this.charaAdd.head.Hige["hige" + this.i].color0,this.ccChange);
            }
            catch(myError:Error)
            {
            }
            ++this.i;
         }
         this.codeCheck("Hair",2,4,"chara");
         try
         {
            this.i = 0;
            while(this.i <= 1)
            {
               if(this.charaData["Ear"]["_senColor"] == 1)
               {
                  new ColorChangeClass(this.charaAdd.head.Hige["hige" + this.i].sen,this.ccChange);
               }
               else
               {
                  new ColorChangeClass(this.charaAdd.head.Hige["hige" + this.i].sen,"000000");
               }
               ++this.i;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function underHairColor() : void
      {
         this.codeCheck("UnderHair",0,4,"chara");
         new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.UnderHair.color0,this.ccChange);
         if(this.charaAdd.dou.dou_shitaHuku.UnderHair.color1)
         {
            new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.UnderHair.color1,this.ccChange);
         }
      }
      
      private function defoEyeColor() : void
      {
         try
         {
            this.codeCheck("defoEye",0,5,"chara");
            this.i = 0;
            while(this.i <= 1)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.head.defoEye["eye" + this.i].color0_0,this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.i;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function SeihukuMuneColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Seihuku",this.j,4,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.Obj = this.charaAdd.mune.SeihukuMune["ysyatu" + this.i].ysyatu;
                  try
                  {
                     new ColorChangeClass(this.Obj["sodeColor" + this.j],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj["vestColor" + this.j].color,this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.Obj["c_color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["m_color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k].color,this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     this.m = 0;
                     while(this.m <= 2)
                     {
                        try
                        {
                           new ColorChangeClass(this.Obj["right" + this.m]["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.Obj["left" + this.m]["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        ++this.m;
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.kage["kage" + this.j + "_" + this.k].kage,this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["m_kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kataColor" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.kata["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.obj["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function SeihukuDouColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Seihuku",this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.dou.SeihukuDou.seihuku.seihuku["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function hukuMuneColor() : void
      {
         if(this.tabName == "YsyatuMune")
         {
            this.hukuName = "Ysyatu";
         }
         else if(this.tabName == "TsyatuMune")
         {
            this.hukuName = "Tsyatu";
         }
         else if(this.tabName == "VestMune")
         {
            this.hukuName = "Vest";
         }
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck(this.hukuName,this.j,4,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.Obj = this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + this.i].ysyatu;
                  try
                  {
                     new ColorChangeClass(this.Obj["sodeColor" + this.j],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  if(this.hukuName == "Vest")
                  {
                     try
                     {
                        new ColorChangeClass(this.Obj["vestColor" + this.j].color,this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  this.k = 0;
                  while(this.k <= 2)
                  {
                     try
                     {
                        new ColorChangeClass(this.Obj["tsyatu_color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["vest_color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["c_color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["m_color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["m_kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k].color,this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.kage["kage" + this.j + "_" + this.k].kage,this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kataColor" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.kata["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.himo["color" + this.j + "_" + this.k].color,this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.himo.ribon["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.himo1.ribon["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     this.m = 0;
                     while(this.m <= 3)
                     {
                        try
                        {
                           new ColorChangeClass(this.Obj["obj" + this.m]["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.Obj["obj" + this.m]["kage" + this.j + "_" + this.k],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.Obj["right" + this.m]["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.Obj["right" + this.m]["kage" + this.j + "_" + this.k],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.Obj["left" + this.m]["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.Obj["left" + this.m]["kage" + this.j + "_" + this.k],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        ++this.m;
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.right_m["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.right_m["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.left_m["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.left_m["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.seihukuVisible["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj["m_right_color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj["m_right_kage" + this.j + "_0"],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj["m_left_color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj["m_left_kage" + this.j + "_0"],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj["vestRight_color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj["vestLeft_color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj["tsyatuRight_color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj["tsyatuLeft_color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function hukuBreastOptionColor() : void
      {
         if(this.tabName == "YsyatuBreastOption")
         {
            this.hukuName = "Ysyatu";
         }
         else if(this.tabName == "TsyatuBreastOption")
         {
            this.hukuName = "Tsyatu";
         }
         else if(this.tabName == "VestBreastOption")
         {
            this.hukuName = "Vest";
         }
         else if(this.tabName == "SeihukuBreastOption")
         {
            this.hukuName = "Seihuku";
         }
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck(this.tabName,this.j,4,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.Obj = this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + this.i].ysyatu.breastOption["breastOption" + this.i];
                  this.k = 0;
                  while(this.k <= 2)
                  {
                     try
                     {
                        new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         this.i = 0;
         for(; this.i <= 1; ++this.i)
         {
            try
            {
               if(this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + this.i].ysyatu.breastOption["breastOption" + this.i].hada)
               {
                  this.BodyColorSet();
                  this.HiyakeColor();
                  this.BodyColor();
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function hukuDouOptionColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck(this.tabName,this.j,4,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  if(this.tabName == "YsyatuDouOption")
                  {
                     this.hukuName = "Ysyatu";
                     this.Obj = this.charaAdd.dou[this.hukuName + "Dou"].ysyatu.ysyatu.ysyatu["douOption" + this.i]["douOption" + this.i];
                  }
                  else if(this.tabName == "TsyatuDouOption")
                  {
                     this.hukuName = "Tsyatu";
                     this.Obj = this.charaAdd.dou[this.hukuName + "Dou"].ysyatu.ysyatu.ysyatu["douOption" + this.i]["douOption" + this.i];
                  }
                  else if(this.tabName == "VestDouOption")
                  {
                     this.hukuName = "Vest";
                     this.Obj = this.charaAdd.dou[this.hukuName + "Dou"].ysyatu.ysyatu.ysyatu["douOption" + this.i]["douOption" + this.i];
                  }
                  else if(this.tabName == "SeihukuDouOption")
                  {
                     this.hukuName = "Seihuku";
                     this.Obj = this.charaAdd.dou[this.hukuName + "Dou"].seihuku.seihuku["douOption" + this.i]["douOption" + this.i];
                  }
                  this.k = 0;
                  while(this.k <= 2)
                  {
                     try
                     {
                        new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function hukuTopColor() : void
      {
         if(this.tabName == "YsyatuTop")
         {
            this.hukuName = "Ysyatu";
         }
         else if(this.tabName == "VestTop")
         {
            this.hukuName = "Vest";
         }
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck(this.hukuName,this.j,4,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.Obj = this.charaAdd.mune[this.hukuName + "Mune2"].ysyatu["ysyatu" + this.i];
                  this.k = 0;
                  for(; this.k <= 2; ++this.k)
                  {
                     try
                     {
                        new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.kata["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.kata["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     this.m = 0;
                     while(this.m <= 2)
                     {
                        try
                        {
                           new ColorChangeClass(this.Obj["right" + this.m]["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.Obj["left" + this.m]["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        ++this.m;
                     }
                     this.m = 0;
                     while(this.m <= 1)
                     {
                        try
                        {
                           new ColorChangeClass(this.Obj.option.option["right" + this.m]["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.Obj.option.option["left" + this.m]["kage" + this.j + "_" + this.k],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        ++this.m;
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.option.option["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj.option.option["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     if(this.hukuName == "Vest")
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd.mune.VestEri.eriUra["kage" + this.j + "_" + this.k],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else if(this.hukuName == "Ysyatu")
                     {
                        try
                        {
                           if(this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.totalFrames == 3)
                           {
                              if(this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.currentFrame == 1 && this.j == 0)
                              {
                                 new ColorChangeClass(this.charaAdd.mune.YsyatuEri.eriUra.eriUra.kage0_0,this.kkChange);
                              }
                              else if(this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.currentFrame == 2 && this.j == 1)
                              {
                                 new ColorChangeClass(this.charaAdd.mune.YsyatuEri.eriUra.eriUra.kage0_0,this.kkChange);
                              }
                              else if(this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.currentFrame == 3 && this.j == 2)
                              {
                                 new ColorChangeClass(this.charaAdd.mune.YsyatuEri.eriUra.eriUra.kage0_0,this.kkChange);
                              }
                           }
                           else if(this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.totalFrames == 6)
                           {
                              if((this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.currentFrame == 1 || this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.currentFrame == 2) && this.j == 0)
                              {
                                 new ColorChangeClass(this.charaAdd.mune.YsyatuEri.eriUra.eriUra.kage0_0,this.kkChange);
                              }
                              else if((this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.currentFrame == 3 || this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.currentFrame == 4) && this.j == 1)
                              {
                                 new ColorChangeClass(this.charaAdd.mune.YsyatuEri.eriUra.eriUra.kage0_0,this.kkChange);
                              }
                              else if((this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.currentFrame == 5 || this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.currentFrame == 6) && this.j == 0)
                              {
                                 new ColorChangeClass(this.charaAdd.mune.YsyatuEri.eriUra.eriUra.kage0_0,this.kkChange);
                              }
                           }
                        }
                        catch(myError:Error)
                        {
                           continue;
                        }
                     }
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function hukuDouColor() : void
      {
         if(this.tabName == "YsyatuDou")
         {
            this.hukuName = "Ysyatu";
         }
         else if(this.tabName == "TsyatuDou")
         {
            this.hukuName = "Tsyatu";
         }
         else if(this.tabName == "VestDou")
         {
            this.hukuName = "Vest";
         }
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck(this.hukuName,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 4)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.dou[this.hukuName + "Dou"].ysyatu.ysyatu.ysyatu["color" + this.j + "_" + this.k],this.ccChange);
                     new ColorChangeClass(this.charaAdd.dou[this.hukuName + "Dou"].ysyatu.ysyatu.ysyatu["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function hukuOnePieceColor() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         if(this.tabName == "YsyatuOnePiece")
         {
            this.hukuName = "Ysyatu";
            _loc1_ = this.charaData["YsyatuSkirt"]["_menu"];
            _loc2_ = this.charaData["Ysyatu"]["_menu"];
            _loc4_ = Dress_data.YsyatuData[_loc2_]["color"];
            if(this.charaData["Ysyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc1_]["skirt"] != 0)
            {
               _loc5_ = true;
            }
         }
         else if(this.tabName == "TsyatuOnePiece")
         {
            this.hukuName = "Tsyatu";
            _loc1_ = this.charaData["TsyatuSkirt"]["_menu"];
            _loc2_ = this.charaData["Tsyatu"]["_menu"];
            _loc4_ = Dress_data.TsyatuData[_loc2_]["color"];
            if(this.charaData["Tsyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc1_]["skirt"] != 0)
            {
               _loc5_ = true;
            }
         }
         else if(this.tabName == "VestOnePiece")
         {
            this.hukuName = "Vest";
            _loc1_ = this.charaData["VestSkirt"]["_menu"];
            _loc2_ = this.charaData["Vest"]["_menu"];
            _loc4_ = Dress_data.VestData[_loc2_]["color"];
            if(this.charaData["Vest"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc1_]["skirt"] != 0)
            {
               _loc5_ = true;
            }
         }
         if(_loc5_)
         {
            this.j = 0;
            for(; this.j <= 2; ++this.j)
            {
               try
               {
                  this.codeCheck(this.hukuName,this.j,4,"chara");
                  this.k = 0;
                  while(this.k <= 2)
                  {
                     this.i = 0;
                     while(this.i <= 1)
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd.dou[this.hukuName + "OnePiece"].Skirt["skirt" + this.i]["color" + (this.j - _loc4_) + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd.dou[this.hukuName + "OnePiece"].Skirt["skirt" + this.i]["kage" + (this.j - _loc4_) + "_" + this.k],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        this.m = 0;
                        while(this.m <= 2)
                        {
                           this.p = 0;
                           while(this.p <= 2)
                           {
                              try
                              {
                                 new ColorChangeClass(this.charaAdd.dou[this.hukuName + "OnePiece"].Skirt["skirt" + this.i]["right" + this.m + "_" + this.p]["color" + (this.j - _loc4_) + "_" + this.k],this.ccChange);
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 new ColorChangeClass(this.charaAdd.dou[this.hukuName + "OnePiece"].Skirt["skirt" + this.i]["right" + this.m + "_" + this.p]["kage" + (this.j - _loc4_) + "_" + this.k],this.kkChange);
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 new ColorChangeClass(this.charaAdd.dou[this.hukuName + "OnePiece"].Skirt["skirt" + this.i]["left" + this.m + "_" + this.p]["color" + (this.j - _loc4_) + "_" + this.k],this.ccChange);
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 new ColorChangeClass(this.charaAdd.dou[this.hukuName + "OnePiece"].Skirt["skirt" + this.i]["left" + this.m + "_" + this.p]["kage" + (this.j - _loc4_) + "_" + this.k],this.kkChange);
                              }
                              catch(myError:Error)
                              {
                              }
                              ++this.p;
                           }
                           ++this.m;
                        }
                        ++this.i;
                     }
                     ++this.k;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
      }
      
      private function hukuArm1Color() : void
      {
         if(this.tabName == "SeihukuArm1")
         {
            this.hukuName = "Seihuku";
         }
         else if(this.tabName == "YsyatuArm1")
         {
            this.hukuName = "Ysyatu";
         }
         else if(this.tabName == "TsyatuArm1")
         {
            this.hukuName = "Tsyatu";
         }
         else if(this.tabName == "VestArm1")
         {
            this.hukuName = "Vest";
         }
         try
         {
            this.codeCheck(this.hukuName,0,4,"chara");
            this.i = 0;
            while(this.i <= 1)
            {
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm1_" + this.i].hand.arm1.arm1.arm1[this.hukuName].Ysyatu["color0_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm1_" + this.i].hand.arm1.arm1.arm1[this.hukuName].Ysyatu["kage0_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
               ++this.i;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.codeCheck(this.hukuName + "LeftArm",0,4,"chara");
            this.k = 0;
            while(this.k <= 1)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.handm1_0.hand.arm1.arm1.arm1[this.hukuName].Ysyatu["color1_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm1_0.hand.arm1.arm1.arm1[this.hukuName].Ysyatu["kage1_" + this.k],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
            this.k = 0;
            while(this.k <= 3)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.mune["Sode" + this.hukuName + "Mune1_0"].sode0["color1_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["Sode" + this.hukuName + "Mune0_0"].sode0["color1_0"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.codeCheck(this.hukuName + "RightArm",0,4,"chara");
            this.k = 0;
            while(this.k <= 1)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.handm1_1.hand.arm1.arm1.arm1[this.hukuName].Ysyatu["color1_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm1_1.hand.arm1.arm1.arm1[this.hukuName].Ysyatu["kage1_" + this.k],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
            this.k = 0;
            while(this.k <= 3)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.mune["Sode" + this.hukuName + "Mune1_1"].sode0["color1_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["Sode" + this.hukuName + "Mune0_1"].sode0["color1_0"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.codeCheck(this.hukuName + "LeftArm",1,4,"chara");
            this.k = 0;
            while(this.k <= 1)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.handm1_0.hand.arm1.arm1.arm1[this.hukuName].Ysyatu["color2_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm1_0.hand.arm1.arm1.arm1[this.hukuName].Ysyatu["kage2_" + this.k],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
            this.k = 0;
            while(this.k <= 3)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.mune["Sode" + this.hukuName + "Mune1_0"].sode0["color2_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["Sode" + this.hukuName + "Mune0_0"].sode0["color2_0"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.codeCheck(this.hukuName + "RightArm",1,4,"chara");
            this.k = 0;
            while(this.k <= 1)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.handm1_1.hand.arm1.arm1.arm1[this.hukuName].Ysyatu["color2_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm1_1.hand.arm1.arm1.arm1[this.hukuName].Ysyatu["kage2_" + this.k],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
            this.k = 0;
            while(this.k <= 3)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.mune["Sode" + this.hukuName + "Mune1_1"].sode0["color2_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
            try
            {
               new ColorChangeClass(this.charaAdd.mune["Sode" + this.hukuName + "Mune0_1"].sode0["color2_0"],this.ccChange);
            }
            catch(myError:Error)
            {
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function FreeHandVestColor(param1:String) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("FreeHandVest" + param1,this.j,4,"system");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.Vest.Ysyatu["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(Chara_Class.chara_m["FreeHand" + param1].arm1.arm1.arm1.Vest.Ysyatu["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function hukuArm2Color() : void
      {
         if(this.tabName == "SeihukuArm2")
         {
            this.hukuName = "Seihuku";
         }
         else if(this.tabName == "YsyatuArm2")
         {
            this.hukuName = "Ysyatu";
         }
         else if(this.tabName == "TsyatuArm2")
         {
            this.hukuName = "Tsyatu";
         }
         else if(this.tabName == "VestArm2")
         {
            this.hukuName = "Vest";
         }
         try
         {
            this.codeCheck(this.hukuName,0,4,"chara");
            this.i = 0;
            while(this.i <= 1)
            {
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm0_" + this.i].hand.arm2.arm2[this.hukuName]["color0_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm0_" + this.i].hand.arm2.arm2[this.hukuName]["kage0_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm0_" + this.i].shoulder[this.hukuName]["color0_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm0_" + this.i].shoulder_back[this.hukuName]["color0_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
               ++this.i;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.codeCheck(this.hukuName + "LeftArm",0,4,"chara");
            this.k = 0;
            while(this.k <= 1)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_0.hand.arm2.arm2[this.hukuName]["color1_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_0.hand.arm2.arm2[this.hukuName]["kage1_" + this.k],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_0.shoulder[this.hukuName]["color1_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_0.shoulder_back[this.hukuName]["color1_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.codeCheck(this.hukuName + "RightArm",0,4,"chara");
            this.k = 0;
            while(this.k <= 1)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_1.hand.arm2.arm2[this.hukuName]["color1_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_1.hand.arm2.arm2[this.hukuName]["kage1_" + this.k],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_1.shoulder[this.hukuName]["color1_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_1.shoulder_back[this.hukuName]["color1_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.codeCheck(this.hukuName + "LeftArm",1,4,"chara");
            this.k = 0;
            while(this.k <= 1)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_0.hand.arm2.arm2[this.hukuName]["color2_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_0.hand.arm2.arm2[this.hukuName]["kage2_" + this.k],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_0.shoulder[this.hukuName]["color2_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_0.shoulder_back[this.hukuName]["color2_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.codeCheck(this.hukuName + "RightArm",1,4,"chara");
            this.k = 0;
            while(this.k <= 1)
            {
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_1.hand.arm2.arm2[this.hukuName]["color2_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_1.hand.arm2.arm2[this.hukuName]["kage2_" + this.k],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_1.shoulder[this.hukuName]["color12_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.handm0_1.shoulder_back[this.hukuName]["color2_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function SkirtColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Skirt",this.j,4,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.k = 0;
                  while(this.k <= 2)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Skirt["skirt" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Skirt["skirt" + this.i]["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     this.m = 0;
                     while(this.m <= 2)
                     {
                        this.p = 0;
                        while(this.p <= 2)
                        {
                           try
                           {
                              new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Skirt["skirt" + this.i]["right" + this.m + "_" + this.p]["color" + this.j + "_" + this.k],this.ccChange);
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Skirt["skirt" + this.i]["right" + this.m + "_" + this.p]["kage" + this.j + "_" + this.k],this.kkChange);
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Skirt["skirt" + this.i]["left" + this.m + "_" + this.p]["color" + this.j + "_" + this.k],this.ccChange);
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Skirt["skirt" + this.i]["left" + this.m + "_" + this.p]["kage" + this.j + "_" + this.k],this.kkChange);
                           }
                           catch(myError:Error)
                           {
                           }
                           ++this.p;
                        }
                        ++this.m;
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function ZubonColor() : void
      {
         this.j = 1;
         for(; this.j <= 3; ++this.j)
         {
            try
            {
               this.codeCheck("Zubon",this.j - 1,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  this.i = 0;
                  while(this.i <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + this.i].right["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + this.i].right["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + this.i]["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.i;
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function ZubonSusoColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.i = 0;
               while(this.i <= 1)
               {
                  this.codeCheck("ZubonAshi" + this.i,this.j,4,"chara");
                  if(this.j == 0)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + this.i]["color0_0"],this.ccChange);
                        new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + this.i]["kage0_0"],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + this.i]["mainColor" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function ZubonAshiColor(param1:int) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("ZubonAshi" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].thigh.thigh.Zubon["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg_huku.leg.Zubon["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg_huku.leg.Zubon["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].leg.leg.Zubon["kage" + this.j],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].shiri.shiri.Zubon["color" + this.j + "_0"],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].thigh.thigh.Zubon["kage" + this.j + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].shiri.shiri.Zubon["kage" + this.j + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function BuraColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Bura",this.j,5,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].Bura["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].Bura2["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.Bura["Bura" + this.i].Bura["color" + this.j + "_" + this.k].color,this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].himo["color" + this.j + "_" + this.k].color,this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].himo1["color" + this.j + "_" + this.k].color,this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].himo.ribon["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].himo1.ribon["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].Bura.left["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].Bura.right["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].Bura["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].Bura2["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].himo["color" + this.j],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].himo1["color" + this.j],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].himo["kage" + this.j],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].himo1["kage" + this.j],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i]["color" + this.j],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].buraUnder["color" + this.j],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i]["kage" + this.j],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i].Side["color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Bura.Bura["Bura" + this.i]["kage" + this.j + "_0"].kage,this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function BuraHukin() : void
      {
         this.codeCheck("Bura",0,5,"chara");
         try
         {
            new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Bura_hukin.kage0,this.kkChange);
         }
         catch(myError:Error)
         {
         }
      }
      
      private function SpantuColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Bura",this.j,5,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  this.i = 0;
                  while(this.i <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Spantu["Pantu" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Spantu["Pantu" + this.i].left["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Spantu["Pantu" + this.i].right["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Spantu["Pantu" + this.i]["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.i;
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function SpantuAshiColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Bura",this.j,5,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.Spantu.Pantu["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + this.i].shiri.shiri.Spantu["color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.Spantu.Pantu["kage" + this.j + "_0"],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + this.i].shiri.shiri.Spantu["kage" + this.j + "_0"],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function PantuColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Pantu",this.j,5,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  this.i = 0;
                  while(this.i <= 2)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Pantu["Pantu" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Pantu["Pantu" + this.i].left["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Pantu["Pantu" + this.i].right["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Pantu["Pantu" + this.i].left["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Pantu["Pantu" + this.i].right["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Pantu["Pantu" + this.i]["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.i;
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function PantuAshiColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Pantu",this.j,5,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.Pantu.Pantu["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + this.i].shiri.shiri.Pantu["color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.Pantu.Pantu["kage" + this.j + "_0"],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + this.i].shiri.shiri.Pantu["kage" + this.j + "_0"],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function NawaColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Nawa",this.j,5,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.k = 0;
                  while(this.k <= 4)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Nawa.Nawa["Nawa" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  this.k = 0;
                  while(this.k <= 7)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.Nawa["Nawa" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
               this.i = 0;
               while(this.i <= 2)
               {
                  this.k = 0;
                  while(this.k <= 2)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Nawa.Nawa["Nawa" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function NippleGLeftColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("NippleGLeft",this.j,5,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune["mune" + 0].mune.Nipple.nippleG["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune["mune" + 0].mune.Nipple.nippleG["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune["mune" + 0].mune.NippleG.nippleG["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune["mune" + 0].mune.NippleG.nippleG["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function NippleGRightColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("NippleGRight",this.j,5,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune["mune" + 1].mune.Nipple.nippleG["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune["mune" + 1].mune.Nipple.nippleG["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune["mune" + 1].mune.NippleG.nippleG["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune["mune" + 1].mune.NippleG.nippleG["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function SGColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("SG",this.j,5,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.SG.SG["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.SG.SG["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.SG.SG.suji["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function vibratorColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               if(Dress_data.VibratorData[MenuClass.charaData[this.charaNum]["Vibrator"]["_menu"]]["color"] == 0)
               {
                  this.codeCheck("Vibrator",this.j,5,"chara");
               }
               else
               {
                  this.codeCheck("Vibrator",this.j,3,"chara");
               }
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.vibrator.vibrator.item["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.vibrator.vibrator.item["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function SocksColor(param1:int) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Socks" + param1,this.j,5,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].thigh.thigh.SocksTop["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].thigh.thigh.Socks["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].thigh.thigh.Socks["kage" + this.j + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].leg.leg.Socks["color" + this.j + "_0"],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].leg.leg.Socks["kage" + this.j + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].leg.leg.Socks_under["color" + this.j + "_0"],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].leg.leg.Socks_under["kage" + this.j + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].leg_huku.leg.Socks["color" + this.j + "_0"],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].leg_huku.leg.Socks["kage" + this.j + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].foot.foot.Socks["color" + this.j + "_0"],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].foot.foot.Socks["kage" + this.j + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function TightsColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Tights",this.j,5,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Tights["Pantu" + this.i]["color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.Tights["Pantu" + this.i]["kage" + this.j + "_0"],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + this.i].shiri.shiri.Tights["color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.Tights["kage" + this.j + "_0"],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + this.i].foot.foot.Tights["color" + this.j + "_0"],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + this.i].foot.foot.Tights["kage" + this.j + "_0"],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd["ashi" + this.i].leg.leg.Tights["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.Tights["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["ashi" + this.i].thigh.thigh.Tights.line["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function HatColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Hat",this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.head.Hat["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.head.Hat["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.HatBack["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.HatBack["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function MarkColor(param1:String) : void
      {
         var _loc2_:int = 0;
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Mark" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  this.i = 0;
                  while(this.i <= 1)
                  {
                     _loc2_ = 0;
                     while(_loc2_ <= 1)
                     {
                        try
                        {
                           this.Obj = this.charaAdd.head["mark" + param1 + "_" + _loc2_].mark0;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc2_++;
                     }
                     ++this.i;
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function RibonColor(param1:String) : void
      {
         var _loc2_:int = 0;
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Ribon" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  this.i = 0;
                  for(; this.i <= 1; ++this.i)
                  {
                     try
                     {
                        if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 0)
                        {
                           this.Obj = this.charaAdd["Ribon" + param1 + "_" + this.i].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 1)
                        {
                           this.Obj = this.charaAdd.head["Ribon" + param1 + "_" + this.i].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 2)
                        {
                           this.Obj = this.charaAdd.mune["Ribon" + param1 + "_" + this.i].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 3)
                        {
                           this.Obj = this.charaAdd.dou["Ribon" + param1 + "_" + this.i].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 4)
                        {
                           this.Obj = this.charaAdd.HairBack.hairBack["Ribon" + param1 + "_" + this.i].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 5 && this.i == 0)
                        {
                           if(MenuClass.charaData[this.charaNum]["SideBurnLeft"]["_depth"] == 0)
                           {
                              this.Obj = this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn["Ribon" + param1 + "_" + 0].ribon0;
                           }
                           else
                           {
                              this.Obj = this.charaAdd.head.SideBurnLeft.SideBurn["Ribon" + param1 + "_" + 0].ribon0;
                           }
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 5 && this.i == 1)
                        {
                           if(MenuClass.charaData[this.charaNum]["SideBurnRight"]["_depth"] == 0)
                           {
                              this.Obj = this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn["Ribon" + param1 + "_" + 1].ribon0;
                           }
                           else
                           {
                              this.Obj = this.charaAdd.head.SideBurnRight.SideBurn["Ribon" + param1 + "_" + 1].ribon0;
                           }
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 6 && this.i == 0)
                        {
                           this.Obj = this.charaAdd["HairEx" + 0 + "_" + 0]["Ribon" + param1 + "_" + 0].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 6 && this.i == 1)
                        {
                           this.Obj = this.charaAdd["HairEx" + 0 + "_" + 1]["Ribon" + param1 + "_" + 1].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 7 && this.i == 0)
                        {
                           this.Obj = this.charaAdd["HairEx" + 1 + "_" + 0]["Ribon" + param1 + "_" + 0].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 7 && this.i == 1)
                        {
                           this.Obj = this.charaAdd["HairEx" + 1 + "_" + 1]["Ribon" + param1 + "_" + 1].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 8 && this.i == 0)
                        {
                           this.Obj = this.charaAdd["HairEx" + 2 + "_" + 0]["Ribon" + param1 + "_" + 0].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 8 && this.i == 1)
                        {
                           this.Obj = this.charaAdd["HairEx" + 2 + "_" + 1]["Ribon" + param1 + "_" + 1].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 9 && this.i == 0)
                        {
                           this.Obj = this.charaAdd["HairEx" + 3 + "_" + 0]["Ribon" + param1 + "_" + 0].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 9 && this.i == 1)
                        {
                           this.Obj = this.charaAdd["HairEx" + 3 + "_" + 1]["Ribon" + param1 + "_" + 1].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 10 && this.i == 0)
                        {
                           this.Obj = this.charaAdd["HairEx" + 4 + "_" + 0]["Ribon" + param1 + "_" + 0].ribon0;
                        }
                        else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 10 && this.i == 1)
                        {
                           this.Obj = this.charaAdd["HairEx" + 4 + "_" + 1]["Ribon" + param1 + "_" + 1].ribon0;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc2_ = 0;
                        while(_loc2_ <= 3)
                        {
                           new ColorChangeClass(this.Obj["ball" + _loc2_]["color" + this.j + "_" + this.k],this.ccChange);
                           _loc2_++;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc2_ = 0;
                        while(_loc2_ <= 3)
                        {
                           new ColorChangeClass(this.Obj["ball" + _loc2_]["kage" + this.j + "_" + this.k],this.kkChange);
                           _loc2_++;
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         try
         {
            this.codeCheck("RibonLine" + param1,0,4,"chara");
            this.i = 0;
            for(; this.i <= 1; ++this.i)
            {
               try
               {
                  if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 0)
                  {
                     this.Obj = this.charaAdd["Ribon" + param1 + "_" + this.i].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 1)
                  {
                     this.Obj = this.charaAdd.head["Ribon" + param1 + "_" + this.i].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 2)
                  {
                     this.Obj = this.charaAdd.mune["Ribon" + param1 + "_" + this.i].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 3)
                  {
                     this.Obj = this.charaAdd.dou["Ribon" + param1 + "_" + this.i].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 4)
                  {
                     this.Obj = this.charaAdd.HairBack.hairBack["Ribon" + param1 + "_" + this.i].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 5 && this.i == 0)
                  {
                     if(MenuClass.charaData[this.charaNum]["SideBurnLeft"]["_depth"] == 0)
                     {
                        this.Obj = this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn["Ribon" + param1 + "_" + 0].ribon0;
                     }
                     else
                     {
                        this.Obj = this.charaAdd.head.SideBurnLeft.SideBurn["Ribon" + param1 + "_" + 0].ribon0;
                     }
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 5 && this.i == 1)
                  {
                     if(MenuClass.charaData[this.charaNum]["SideBurnRight"]["_depth"] == 0)
                     {
                        this.Obj = this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn["Ribon" + param1 + "_" + 1].ribon0;
                     }
                     else
                     {
                        this.Obj = this.charaAdd.head.SideBurnRight.SideBurn["Ribon" + param1 + "_" + 1].ribon0;
                     }
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 6 && this.i == 0)
                  {
                     this.Obj = this.charaAdd["HairEx" + 0 + "_" + 0]["Ribon" + param1 + "_" + 0].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 6 && this.i == 1)
                  {
                     this.Obj = this.charaAdd["HairEx" + 0 + "_" + 1]["Ribon" + param1 + "_" + 1].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 7 && this.i == 0)
                  {
                     this.Obj = this.charaAdd["HairEx" + 1 + "_" + 0]["Ribon" + param1 + "_" + 0].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 7 && this.i == 1)
                  {
                     this.Obj = this.charaAdd["HairEx" + 1 + "_" + 1]["Ribon" + param1 + "_" + 1].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 8 && this.i == 0)
                  {
                     this.Obj = this.charaAdd["HairEx" + 2 + "_" + 0]["Ribon" + param1 + "_" + 0].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 8 && this.i == 1)
                  {
                     this.Obj = this.charaAdd["HairEx" + 2 + "_" + 1]["Ribon" + param1 + "_" + 1].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 9 && this.i == 0)
                  {
                     this.Obj = this.charaAdd["HairEx" + 3 + "_" + 0]["Ribon" + param1 + "_" + 0].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 9 && this.i == 1)
                  {
                     this.Obj = this.charaAdd["HairEx" + 3 + "_" + 1]["Ribon" + param1 + "_" + 1].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 10 && this.i == 0)
                  {
                     this.Obj = this.charaAdd["HairEx" + 4 + "_" + 0]["Ribon" + param1 + "_" + 0].ribon0;
                  }
                  else if(MenuClass.charaData[this.charaNum]["RibonAdd" + param1]["_add0"] == 10 && this.i == 1)
                  {
                     this.Obj = this.charaAdd["HairEx" + 4 + "_" + 1]["Ribon" + param1 + "_" + 1].ribon0;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.Obj.sen,this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc2_ = 0;
                  while(_loc2_ <= 3)
                  {
                     new ColorChangeClass(this.Obj["ball" + _loc2_].sen,this.ccChange);
                     _loc2_++;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function FreeRibonColor(param1:String) : void
      {
         var _loc2_:int = 0;
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("FreeRibon" + param1,this.j,4,"system");
               this.k = 0;
               for(; this.k <= 1; ++this.k)
               {
                  this.Obj = Chara_Class.chara_m["Ribon" + param1].ribon0;
                  try
                  {
                     new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc2_ = 0;
                     while(_loc2_ <= 3)
                     {
                        new ColorChangeClass(this.Obj["ball" + _loc2_]["color" + this.j + "_" + this.k],this.ccChange);
                        _loc2_++;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc2_ = 0;
                     while(_loc2_ <= 3)
                     {
                        new ColorChangeClass(this.Obj["ball" + _loc2_]["kage" + this.j + "_" + this.k],this.kkChange);
                        _loc2_++;
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         try
         {
            this.codeCheck("FreeRibonLine" + param1,0,4,"system");
            this.Obj = Chara_Class.chara_m["Ribon" + param1].ribon0;
            try
            {
               new ColorChangeClass(this.Obj.sen,this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               _loc2_ = 0;
               while(_loc2_ <= 3)
               {
                  new ColorChangeClass(this.Obj["ball" + _loc2_].sen,this.ccChange);
                  _loc2_++;
               }
            }
            catch(myError:Error)
            {
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function BeltColor(param1:String) : void
      {
         var _loc2_:int = 0;
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Belt" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 3)
               {
                  this.i = 0;
                  while(this.i <= 1)
                  {
                     try
                     {
                        if(this.charaData["Belt" + param1]["_depth"] >= 2)
                        {
                           this.Obj = this.charaAdd["belt" + param1 + "_" + this.i].beltDou.belt0;
                        }
                        else
                        {
                           this.Obj = this.charaAdd.dou["belt" + param1 + "_" + this.i].beltDou.belt0;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.i;
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         try
         {
            this.codeCheck("BeltLine" + param1,0,4,"chara");
            this.i = 0;
            for(; this.i <= 1; ++this.i)
            {
               try
               {
                  if(this.charaData["Belt" + param1]["_depth"] >= 2)
                  {
                     this.Obj = this.charaAdd["belt" + param1 + "_" + this.i].beltDou.belt0;
                  }
                  else
                  {
                     this.Obj = this.charaAdd.dou["belt" + param1 + "_" + this.i].beltDou.belt0;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.j = 0;
                  while(this.j <= 5)
                  {
                     new ColorChangeClass(this.Obj["sen" + this.j],this.ccChange);
                     ++this.j;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function BeltLineColor(param1:String) : void
      {
         try
         {
            this.codeCheck("BeltLine" + param1,0,4,"chara");
            this.i = 0;
            while(this.i <= 1)
            {
               try
               {
                  if(this.charaData["Belt" + param1]["_depth"] >= 2)
                  {
                     this.Obj = this.charaAdd["belt" + param1 + "_" + this.i];
                  }
                  else
                  {
                     this.Obj = this.charaAdd.dou["belt" + param1 + "_" + this.i];
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.Obj.beltNakaSen0.Sen.sen0,this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.Obj.beltNakaSen0.Sen.sen1,this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.Obj.beltUeSen0.ueSen.sen0,this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.Obj.beltUeSen0.ueSen.sen1,this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.i;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function FreeBeltColor(param1:String) : void
      {
         var _loc2_:int = 0;
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("FreeBelt" + param1,this.j,4,"system");
               this.k = 0;
               while(this.k <= 3)
               {
                  this.i = 0;
                  while(this.i <= 1)
                  {
                     this.Obj = Chara_Class.chara_m["Belt" + param1].belt0;
                     try
                     {
                        new ColorChangeClass(this.Obj["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.Obj["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.i;
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         try
         {
            this.codeCheck("FreeBeltLine" + param1,0,4,"system");
            this.i = 0;
            for(; this.i <= 1; ++this.i)
            {
               this.Obj = Chara_Class.chara_m["Belt" + param1].belt0;
               try
               {
                  this.j = 0;
                  while(this.j <= 5)
                  {
                     new ColorChangeClass(this.Obj["sen" + this.j],this.ccChange);
                     ++this.j;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function FreeChairColor(param1:String) : void
      {
         var _loc2_:int = 0;
         this.Obj = Chara_Class.chara_m["Chair" + param1];
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("FreeChair" + param1,this.j,4,"system");
               this.k = 0;
               while(this.k <= 3)
               {
                  try
                  {
                     new ColorChangeClass(this.Obj.chair["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj.chair["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         try
         {
            this.codeCheck("FreeChairLine" + param1,0,4,"system");
            this.k = 0;
            while(this.k <= 3)
            {
               try
               {
                  new ColorChangeClass(this.Obj.chair["sen" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
         }
         catch(myError:Error)
         {
         }
         this.Obj = Chara_Class.chara_m["ChairBack" + param1];
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("FreeChair" + param1,this.j,4,"system");
               this.k = 0;
               while(this.k <= 3)
               {
                  try
                  {
                     new ColorChangeClass(this.Obj.chair["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj.chair["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         try
         {
            this.codeCheck("FreeChairLine" + param1,0,4,"system");
            this.k = 0;
            while(this.k <= 3)
            {
               try
               {
                  new ColorChangeClass(this.Obj.chair["sen" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               ++this.k;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function FreeHukidashiColor(param1:String) : void
      {
         var _loc2_:int = 0;
         this.Obj = Chara_Class.chara_m["Hukidashi" + param1];
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("FreeHukidashi" + param1,this.j,4,"system");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.Obj.Hukidashi["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj.Hukidashi["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         try
         {
            this.codeCheck("FreeHukidashi" + param1,0,4,"system");
            new ColorChangeClass(this.Obj.tuno_color,this.ccChange);
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.codeCheck("FreeHukidashiLine" + param1,0,4,"system");
            try
            {
               new ColorChangeClass(this.Obj.Hukidashi_sen,this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.Obj.tuno_sen,this.ccChange);
            }
            catch(myError:Error)
            {
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function MeganeColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Megane",this.j,4,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.head.Megane["megane" + this.i]["blend_color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.head.Megane["megane" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.head.Megane["megane" + this.i]["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function HeadbandColor() : void
      {
         this.m = 0;
         while(this.m <= 2)
         {
            this.j = 0;
            for(; this.j <= 2; ++this.j)
            {
               try
               {
                  this.codeCheck("Headband",this.j,4,"chara");
                  this.i = 0;
                  while(this.i <= 1)
                  {
                     this.k = 0;
                     while(this.k <= 1)
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd.head["Headband" + this.m]["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd.head["Headband" + this.m]["kage" + this.j + "_" + this.k],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        ++this.k;
                     }
                     ++this.i;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
            ++this.m;
         }
      }
      
      private function MimiColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               if(this.charaData["Ear"]["_senColor"] == 1)
               {
                  this.codeCheck("Hair",2,4,"chara");
                  try
                  {
                     this.i = 0;
                     while(this.i <= 1)
                     {
                        new ColorChangeClass(this.charaAdd.head.Mimi["mimi" + this.i].mimi.senColor,this.ccChange);
                        ++this.i;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.i = 0;
                     while(this.i <= 1)
                     {
                        new ColorChangeClass(this.charaAdd.head.Mimi["mimi" + this.i].senColorTop,this.ccChange);
                        ++this.i;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  try
                  {
                     this.i = 0;
                     while(this.i <= 1)
                     {
                        new ColorChangeClass(this.charaAdd.head.Mimi["mimi" + this.i].mimi.senColor,"000000");
                        ++this.i;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.i = 0;
                     while(this.i <= 1)
                     {
                        new ColorChangeClass(this.charaAdd.head.Mimi["mimi" + this.i].senColorTop,"000000");
                        ++this.i;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
               this.codeCheck("Mimi",this.j,4,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.head.Mimi["mimi" + this.i].mimi["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.head.Mimi["mimi" + this.i].mimi["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function HaneColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Hane",this.j,4,"chara");
               if(Dress_data.HaneData[this.charaData["Hane"]["_menu"]]["colorType"] == 0)
               {
                  this.i = 0;
                  while(this.i <= 1)
                  {
                     this.k = 0;
                     while(this.k <= 2)
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd.hane["hane" + this.i]["hane" + this.k]["color" + this.j + "_0"],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd.hane["hane" + this.i]["hane" + this.k]["kage" + this.j + "_0"],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        ++this.k;
                     }
                     ++this.i;
                  }
               }
               else
               {
                  this.k = 0;
                  while(this.k <= 2)
                  {
                     if(this.j == 0)
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd.hane["hane" + 0]["hane" + this.k]["color" + 0 + "_0"],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd.hane["hane" + 0]["hane" + this.k]["kage" + 0 + "_0"],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else if(this.j == 1)
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd.hane["hane" + 1]["hane" + this.k]["color" + 0 + "_0"],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd.hane["hane" + 1]["hane" + this.k]["kage" + 0 + "_0"],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     ++this.k;
                  }
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function TailColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               if(this.charaData["Ear"]["_senColor"] == 1)
               {
                  this.codeCheck("Hair",2,4,"chara");
                  try
                  {
                     this.m = 0;
                     while(this.m <= 8)
                     {
                        new ColorChangeClass(this.charaAdd.Tail.tail["tail" + this.m].senColor,this.ccChange);
                        ++this.m;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  try
                  {
                     this.m = 0;
                     while(this.m <= 8)
                     {
                        new ColorChangeClass(this.charaAdd.Tail.tail["tail" + this.m].senColor,"000000");
                        ++this.m;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
               this.codeCheck("Tail",this.j,4,"chara");
               this.m = 0;
               while(this.m <= 8)
               {
                  this.k = 0;
                  while(this.k <= 2)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.Tail.tail["tail" + this.m]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.Tail.tail["tail" + this.m]["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.m;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function HornColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Horn",this.j,4,"chara");
               this.i = 0;
               while(this.i <= 1)
               {
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.head.Horn["Horn" + this.i].Horn.Horn["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.head.Horn["Horn" + this.i].Horn.Horn["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  ++this.i;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function CollarColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Collar",this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Collar0["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Collar0["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Collar1.Collar["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Collar1.Collar["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.Collar.Collar["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.Collar.Collar["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
               try
               {
                  if(this.charaAdd.Collar.chane != undefined)
                  {
                     this.k = 0;
                     while(this.k <= 1)
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd.Collar.chane["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd.Collar.chane["kage" + this.j + "_" + this.k],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        ++this.k;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(this.charaAdd.mune.Collar1.chane != undefined)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Collar1.chane["color" + this.j + "_0"],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune.Collar1.chane["kage" + this.j + "_0"],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(this.charaAdd.Collar.chane.chane0 != undefined)
                  {
                     this.k = 0;
                     while(this.k <= 8)
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd.Collar.chane["chane" + this.k]["color" + this.j + "_0"],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd.Collar.chane["chane" + this.k]["kage" + this.j + "_0"],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        ++this.k;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(this.charaAdd.mune.Collar1.chane.chane0 != undefined)
                  {
                     this.k = 0;
                     while(this.k <= 12)
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd.mune.Collar1.chane["chane" + this.k]["color" + this.j + "_0"],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd.mune.Collar1.chane["chane" + this.k]["kage" + this.j + "_0"],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        ++this.k;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function NecktieColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Necktie",this.j,4,"chara");
               this.k = 0;
               while(this.k <= 2)
               {
                  this.i = 0;
                  while(this.i <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune["Necktie" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.mune["Necktie" + this.i]["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.i;
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Necktie0.himo["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Necktie0.himo["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Necktie0.necktie["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Necktie0.necktie["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function NecklaceColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Necklace",this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Necklace0["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.mune.Necklace0["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
               try
               {
                  if(this.charaAdd.mune.Necklace0.hada)
                  {
                     this.BodyColorSet();
                     this.HiyakeColor();
                     this.BodyColor();
                  }
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function ItemColor(param1:String, param2:String) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               if(param2 == "Item0" || param2 == "Item1")
               {
                  this.Obj = this.charaAdd["handm1_" + param1].hand;
                  this.codeCheck("Item" + param1,this.j,4,"chara");
               }
               else if(param2 == "FreeHandItem")
               {
                  this.Obj = Chara_Class.chara_m["FreeHand" + param1];
                  this.codeCheck("FreeHandItem" + param1,this.j,4,"system");
               }
               this.k = 0;
               while(this.k <= 2)
               {
                  try
                  {
                     new ColorChangeClass(this.Obj.item.hand.hand.item["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj.item.hand.hand.item["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj.item.hand.hand.item2["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj.item.hand.hand.item2["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj.arm1.arm1.arm1.item.item["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj.arm1.arm1.arm1.item.item["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function KutuColor(param1:int) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Kutu" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].foot.foot.Kutu["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg_huku.leg.Kutu["main_color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg.leg.Kutu["main_color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].foot.foot.Kutu["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg_huku.leg.Kutu["main_kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg.leg.Kutu["main_kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].foot.foot.KutuUnder["color" + this.j + "_0"],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd["ashi" + param1].foot.foot.KutuUnder["kage" + this.j + "_0"],this.kkChange);
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.codeCheck("KutuLong" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg_huku.leg.Kutu["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg.leg.Kutu["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg_huku.leg.Kutu["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg.leg.Kutu["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function LegBandColor(param1:int) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("LegBand" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg_huku.leg.LegBand["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg.leg.LegBand["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].leg_huku.leg.LegBand["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].foot.foot.LegBand["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["ashi" + param1].foot.foot.LegBand["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function WristbandColor(param1:String, param2:String) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               if(param2 == "Wristband")
               {
                  this.Obj = this.charaAdd["handm1_" + param1].hand;
                  this.codeCheck("Wristband" + param1,this.j,4,"chara");
               }
               else if(param2 == "FreeHandWristband")
               {
                  this.Obj = Chara_Class.chara_m["FreeHand" + param1];
                  this.codeCheck("FreeHandWristband" + param1,this.j,4,"system");
               }
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.Obj.arm1.arm1.arm1.Wristband.Wristband["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.Obj.arm1.arm1.arm1.Wristband.Wristband["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  if(param2 == "Wristband")
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.Wristband["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.Wristband["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function BraceletColor(param1:int) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Bracelet" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Bracelet["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Bracelet["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function ArmBraceletColor(param1:int) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("ArmBracelet" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.ArmBracelet["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.ArmBracelet["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function ArmbandColor(param1:int) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Armband" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.Armband["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.Armband["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function ElbowpadColor(param1:int) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Elbowpad" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.Elbowpad["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.Elbowpad["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Elbowpad["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Elbowpad["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function GloveColor(param1:int) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               if(this.charaData["Glove" + param1]["_visible"][0])
               {
                  this.codeCheck("Glove" + param1,this.j,4,"chara");
                  this.k = 0;
                  while(this.k <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.Glove["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.Glove["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["handm0_" + param1].hand.arm2.arm2.Glove_mask["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Glove["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Glove["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Glove_mask["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.k;
                  }
                  if(this.j == 0 && Dress_data.GloveData[this.charaData["Glove" + param1]["_menu"]].length != 1)
                  {
                     new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.color0,this.ccChange);
                     new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.kage0,this.kkChange);
                     try
                     {
                        new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.kage1,this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     if(Dress_data.GloveData[this.charaData["Glove" + param1]["_menu"]][this.charaData["GloveLength" + param1]["_menu"]]["arm0"] != 0)
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.glove.color0_0,this.all_C);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.glove.color0_1,this.all_C);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.glove.kage0_0,this.all_kage);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.glove.kage0_1,this.all_kage);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                  }
                  else
                  {
                     if(Dress_data.GloveData[this.charaData["Glove" + param1]["_menu"]].length == 1)
                     {
                        new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.color0,this.all_C);
                        new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.kage0,this.all_kage);
                        try
                        {
                           new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.kage1,this.all_kage);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     this.k = 0;
                     while(this.k <= 1)
                     {
                        try
                        {
                           new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.glove["color" + this.j + "_" + this.k],this.ccChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.glove["kage" + this.j + "_" + this.k],this.kkChange);
                        }
                        catch(myError:Error)
                        {
                        }
                        ++this.k;
                     }
                  }
               }
               else
               {
                  new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.color0,this.all_C);
                  new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.kage0,this.all_kage);
                  try
                  {
                     new ColorChangeClass(this.charaAdd["handm1_" + param1].hand.arm0.hand.kage1,this.all_kage);
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function HeadphoneColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Headphone",this.j,4,"chara");
               try
               {
                  new ColorChangeClass(this.charaAdd.head.Headphone_Top["color" + this.j + "_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               this.k = 0;
               while(this.k <= 1)
               {
                  this.i = 0;
                  while(this.i <= 1)
                  {
                     try
                     {
                        new ColorChangeClass(this.charaAdd.head["Headphone" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd.head["Headphone" + this.i]["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["Headphone" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["Headphone" + this.i]["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["Headphone" + this.i].left["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["Headphone" + this.i].left["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["Headphone" + this.i].right["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["Headphone" + this.i].right["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["HeadphoneNeck" + this.i]["color" + this.j + "_" + this.k],this.ccChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(this.charaAdd["HeadphoneNeck" + this.i]["kage" + this.j + "_" + this.k],this.kkChange);
                     }
                     catch(myError:Error)
                     {
                     }
                     ++this.i;
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function EarringColor(param1:int) : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Earring" + param1,this.j,4,"chara");
               this.k = 0;
               while(this.k <= 1)
               {
                  try
                  {
                     new ColorChangeClass(this.charaAdd.head["ear" + param1].ear.Earring.Earring["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(this.charaAdd.head["ear" + param1].ear.Earring.Earring["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function GagColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Gag",this.j,4,"chara");
               try
               {
                  new ColorChangeClass(this.charaAdd.head.Gag["color" + this.j + "_" + this.k],this.ccChange);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(this.charaAdd.head.Gag["kage" + this.j + "_" + this.k],this.kkChange);
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function BackgroundColor() : void
      {
         this.j = 0;
         for(; this.j <= 2; ++this.j)
         {
            try
            {
               this.codeCheck("Background",this.j,5,"system");
               this.k = 0;
               while(this.k <= 2)
               {
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg.wall.wall["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg.wall.wall["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg.floor["hansya" + this.j],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.codeCheck("BgFloor",this.j,5,"system");
               this.k = 0;
               while(this.k <= 2)
               {
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg.floor["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg.floor["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg.floor.frontHuchi["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg.floor.frontHuchi["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.codeCheck("BgFront",this.j,5,"system");
               this.k = 0;
               while(this.k <= 2)
               {
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg.front["color" + this.j + "_" + this.k],this.ccChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     new ColorChangeClass(Main.mainWindow.bg.front["kage" + this.j + "_" + this.k],this.kkChange);
                  }
                  catch(myError:Error)
                  {
                  }
                  ++this.k;
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function MosaicColor() : void
      {
         try
         {
            this.codeCheck("Mosaic",0,5,"system");
            try
            {
               new ColorChangeClass(this.charaAdd.mosaic.mosaic["color" + 0 + "_" + 0],this.ccChange);
               new ColorChangeClass(this.charaAdd.mosaic.mosaic["kage" + 0 + "_" + 0],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic["color" + 0 + "_" + 0],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.mosaic.mosaic["color" + 0 + "_" + 0],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.peni.peni.Peni.Tin.Tin.mosaic.mosaic["color" + 0 + "_" + 0],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.peni.peni.Peni.Tin.TinUp.mosaic.mosaic["color" + 0 + "_" + 0],this.ccChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic["kage" + 0 + "_" + 0],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.mosaic.mosaic["kage" + 0 + "_" + 0],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.peni.peni.Peni.Tin.Tin.mosaic.mosaic["kage" + 0 + "_" + 0],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.peni.peni.Peni.Tin.TinUp.mosaic.mosaic["kage" + 0 + "_" + 0],this.kkChange);
            }
            catch(myError:Error)
            {
            }
            try
            {
               new ColorChangeClass(this.charaAdd.vibrator.vibrator.item.mosaic.mosaic["color" + 0 + "_" + 0],this.ccChange);
               new ColorChangeClass(this.charaAdd.vibrator.vibrator.item.mosaic.mosaic["kage" + 0 + "_" + 0],this.kkChange);
            }
            catch(myError:Error)
            {
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function FontTypeColorSet(param1:String) : void
      {
         try
         {
            this.codeCheck("FontType" + param1,0,5,"system");
            try
            {
               MenuClass.txtFieldAdd[param1].textColor = "0x" + this.ccChange;
               MenuClass.txtFieldAdd[param1].borderColor = "0x" + this.ccChange;
            }
            catch(myError:Error)
            {
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
