package menu
{
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   import parameter.Tab_IEData1;
   
   public class Tab_SaveUpdate
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var DressCharaData:Object;
      
      public function Tab_SaveUpdate(param1:int, param2:int, param3:String)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc52_:Array = null;
         var _loc53_:Array = null;
         var _loc54_:Array = null;
         var _loc55_:Array = null;
         var _loc56_:Array = null;
         var _loc57_:Object = null;
         var _loc58_:Object = null;
         var _loc59_:int = 0;
         var _loc60_:int = 0;
         var _loc61_:Array = null;
         var _loc62_:int = 0;
         var _loc63_:String = null;
         var _loc64_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         this.DressCharaData = Dress_data.DressCharaData[param1];
         _loc7_ = Tab_IEInOut.SaveUpdateTabName.length;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = false;
         var ribbonModified:Boolean = false;
         var faceMarkModified:Boolean = false;
         var beltModified:Boolean = false;
         var hairExModified:Boolean = false;
         var _loc27_:Boolean = false;
         var charaImageModified:Boolean = false;
         var _loc29_:Boolean = false;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:Boolean = false;
         var _loc33_:Boolean = false;
         var _loc34_:Boolean = false;
         var _loc35_:Boolean = false;
         var _loc36_:Boolean = false;
         var _loc37_:Boolean = false;
         var _loc38_:Boolean = false;
         var _loc39_:Boolean = false;
         var _loc40_:Boolean = false;
         var _loc41_:Boolean = false;
         var _loc42_:Boolean = false;
         var _loc43_:Boolean = false;
         var _loc44_:Boolean = false;
         var _loc45_:Boolean = false;
         var _loc46_:Boolean = false;
         var _loc47_:Boolean = false;
         var _loc48_:Boolean = false;
         var _loc49_:Boolean = false;
         var armTabModified:Boolean = false;
         var _loc51_:Boolean = false;
         var eyebrowEmotionModified: Boolean = false;
         var eyebrowTabModified: Boolean = false;
         var penisModified: Boolean = false;

         _loc4_ = 0;
         while(_loc4_ < _loc7_)
         {
            if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Tin")
            {
               penisModified = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "EmotionEyebrowLeft")
            {
               eyebrowEmotionModified = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Eyebrow")
            {
               eyebrowTabModified = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "LeftArm")
            {
               armTabModified = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Seihuku")
            {
               _loc8_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Ysyatu")
            {
               _loc9_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Vest")
            {
               _loc10_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Tsyatu")
            {
               _loc11_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "HairBack")
            {
               _loc12_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Skirt")
            {
               _loc13_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Eyelib" || Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Lowerlash")
            {
               _loc14_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Nose")
            {
               _loc16_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Collar")
            {
               _loc17_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Bangs")
            {
               _loc18_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "SideBurnLeft")
            {
               _loc19_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "SideBurnRight")
            {
               _loc20_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "YmoveCheck")
            {
               _loc21_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "CharaDropShadow")
            {
               _loc22_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_].substring(0,5) == "Ribon")
            {
               ribbonModified = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_].substring(0,4) == "Mark")
            {
               faceMarkModified = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_].substring(0,4) == "Belt")
            {
               beltModified = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_].substring(0,6) == "HairEx")
            {
               hairExModified = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_].substring(0,7) == "Hairpin")
            {
               _loc27_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_].substring(0,14) == "CharaLoadScale")
            {
               charaImageModified = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "BreastManualAuto")
            {
               _loc29_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "EmotionMouth")
            {
               _loc30_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "EyeballXMove")
            {
               _loc31_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Ahegao")
            {
               _loc32_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Vibrator")
            {
               _loc33_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Kutu0")
            {
               _loc34_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Kutu1")
            {
               _loc35_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "CharaFilterEmotion")
            {
               _loc36_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Bracelet0")
            {
               _loc37_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Bracelet1")
            {
               _loc38_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "ArmBracelet0")
            {
               _loc39_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "ArmBracelet1")
            {
               _loc40_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Socks0")
            {
               _loc41_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Socks1")
            {
               _loc42_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Hoho")
            {
               _loc43_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Megane")
            {
               _loc44_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Hat")
            {
               _loc45_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Eye")
            {
               _loc46_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Mimi")
            {
               _loc47_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Tights")
            {
               _loc48_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Pantu")
            {
               _loc49_ = true;
            }
            else if(Tab_IEInOut.SaveUpdateTabName[_loc4_] == "Lowerlash")
            {
               _loc15_ = true;
            }
            _loc4_++;
         }
         if(param2 <= 19)
         {
            try
            {
               _loc4_ = 0;
               while(_loc4_ <= 9)
               {
                  if(Dress_data.DressData["HairEx" + _loc4_][0]["_color2"] == undefined)
                  {
                     this.charaData["HairEx" + _loc4_]["_color1"][0] = 56;
                     this.DressCharaData["HairEx" + _loc4_][0]["_color1"][0] = 56;
                  }
                  else
                  {
                     this.charaData["HairEx" + _loc4_]["_color2"][0] = 56;
                     this.DressCharaData["HairEx" + _loc4_][0]["_color2"][0] = 56;
                  }
                  if(!this.charaData["HairExPlus"]["_visible"][_loc4_])
                  {
                     this.DressCharaData["HairEx" + _loc4_][0]["_color0"][1] = 2;
                     if(Dress_data.DressData["HairEx" + _loc4_][0]["_color2"] != undefined)
                     {
                        this.DressCharaData["HairEx" + _loc4_][0]["_color1"][1] = 2;
                     }
                  }
                  _loc4_++;
               }
               if(this.charaData["HairBack"]["_visible"][0])
               {
                  this.DressCharaData["HairBack"][0]["_color0"][1] = 2;
                  this.DressCharaData["HairBack"][0]["_color1"][1] = 2;
                  this.charaData["HairBack"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
                  this.DressCharaData["HairBack"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
                  this.charaData["HairBack"]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
                  this.DressCharaData["HairBack"][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
                  this.charaData["HairBack"]["_color2"][0] = 56;
                  this.DressCharaData["HairBack"][0]["_color2"][0] = 56;
               }
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 20)
         {
            try
            {
               this.DressCharaData["Hair"][0]["_color1"][1] = 2;
               this.charaData["Hair"]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["Hair"][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 21)
         {
            try
            {
               this.DressCharaData["Bangs"][0]["_color0"][1] = 2;
               this.charaData["Bangs"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["Bangs"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
               this.charaData["Bangs"]["_color1"][0] = 56;
               this.DressCharaData["Bangs"][0]["_color1"][0] = 56;
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 22)
         {
            try
            {
               this.DressCharaData["SideBurnLeft"][0]["_color0"][1] = 2;
               this.charaData["SideBurnLeft"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["SideBurnLeft"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["SideBurnLeft"][0]["_color1"][1] = 2;
               this.charaData["SideBurnLeft"]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["SideBurnLeft"][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
               this.charaData["SideBurnLeft"]["_color2"][0] = 56;
               this.DressCharaData["SideBurnLeft"][0]["_color2"][0] = 56;
               this.DressCharaData["SideBurnRight"][0]["_color0"][1] = 2;
               this.charaData["SideBurnRight"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["SideBurnRight"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["SideBurnRight"][0]["_color1"][1] = 2;
               this.charaData["SideBurnRight"]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["SideBurnRight"][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
               this.charaData["SideBurnRight"]["_color2"][0] = 56;
               this.DressCharaData["SideBurnRight"][0]["_color2"][0] = 56;
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 23)
         {
            try
            {
               if(this.charaData["Tsyatu"]["_visible"][0] && _loc11_)
               {
                  if(this.charaData["TsyatuDou"]["_menu"] >= 22)
                  {
                     this.charaData["TsyatuDou"]["_menu"] += 4;
                  }
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(this.charaData["Ysyatu"]["_visible"][0] && _loc9_)
               {
                  if(this.charaData["YsyatuDou"]["_menu"] >= 24)
                  {
                     this.charaData["YsyatuDou"]["_menu"] += 4;
                  }
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(this.charaData["Vest"]["_visible"][0] && _loc10_)
               {
                  if(this.charaData["VestDou"]["_menu"] >= 22)
                  {
                     this.charaData["VestDou"]["_menu"] += 4;
                  }
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(this.charaData["Skirt"]["_visible"][0] && _loc13_)
               {
                  if(this.charaData["Skirt"]["_menu"] >= 27)
                  {
                     this.charaData["Skirt"]["_menu"] += 4;
                     this.DressCharaData["Skirt"][this.charaData["Skirt"]["_menu"] - 4]["_color0"][0] = this.DressCharaData["Skirt"][this.charaData["Skirt"]["_menu"]]["_color0"][0];
                     this.DressCharaData["Skirt"][this.charaData["Skirt"]["_menu"] - 4]["_color1"][0] = this.DressCharaData["Skirt"][this.charaData["Skirt"]["_menu"]]["_color1"][0];
                     this.DressCharaData["Skirt"][this.charaData["Skirt"]["_menu"] - 4]["_color2"][0] = this.DressCharaData["Skirt"][this.charaData["Skirt"]["_menu"]]["_color2"][0];
                     this.DressCharaData["Skirt"][this.charaData["Skirt"]["_menu"]]["_color0"][0] = this.charaData["Skirt"]["_color0"][0];
                     this.DressCharaData["Skirt"][this.charaData["Skirt"]["_menu"]]["_color1"][0] = this.charaData["Skirt"]["_color1"][0];
                     this.DressCharaData["Skirt"][this.charaData["Skirt"]["_menu"]]["_color2"][0] = this.charaData["Skirt"]["_color2"][0];
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 24)
         {
            this.charaData["EyeRotation"]["_meter"] = 65;
         }
         if(param2 <= 25)
         {
            if(this.charaData["s"]["_menu"] == 0)
            {
               this.charaData["s"]["_menu"] = 1;
            }
            else if(this.charaData["s"]["_menu"] == 1)
            {
               this.charaData["s"]["_menu"] = 2;
            }
            else if(this.charaData["s"]["_menu"] == 2)
            {
               this.charaData["s"]["_menu"] = 4;
            }
            else if(this.charaData["s"]["_menu"] == 3)
            {
               this.charaData["s"]["_menu"] = 5;
            }
            this.charaData["s"]["_hidaCount"] = 0;
            this.charaData["s"]["hidaPlay"] = 0;
            this.charaData["s"]["_color1"][0] = 1;
            this.DressCharaData["s"][0]["_color1"][0] = 1;
            this.charaData["s"]["_color2"][0] = 1;
            this.DressCharaData["s"][0]["_color2"][0] = 1;
         }
         if(param2 <= 26)
         {
            _loc4_ = 0;
            while(_loc4_ <= 9)
            {
               if(this.charaData["BeltPlus"]["_visible"][_loc4_])
               {
                  this.charaData["BeltY" + _loc4_]["_meter"] *= 10;
                  this.charaData["BeltX" + _loc4_]["_meter"] *= 10;
               }
               _loc4_++;
            }
         }
         if(param2 <= 26)
         {
            this.charaData["Eye"]["_color0"][0] = 56;
            this.DressCharaData["Eye"][0]["_color0"][0] = 56;
         }
         if(param2 <= 28)
         {
            _loc4_ = 0;
            while(_loc4_ <= 9)
            {
               if(this.charaData["Ribon" + _loc4_]["_menu"] == 0)
               {
                  this.charaData["Ribon" + _loc4_]["_color1"][0] = this.charaData["Ribon" + _loc4_]["_color0"][0];
                  this.DressCharaData["Ribon" + _loc4_][0]["_color1"][0] = this.charaData["Ribon" + _loc4_]["_color0"][0];
               }
               else if(this.charaData["Ribon" + _loc4_]["_menu"] == 8)
               {
                  this.charaData["Ribon" + _loc4_]["_color1"][0] = this.charaData["Ribon" + _loc4_]["_color0"][0];
                  this.DressCharaData["Ribon" + _loc4_][8]["_color1"][0] = this.charaData["Ribon" + _loc4_]["_color0"][0];
               }
               else if(this.charaData["Ribon" + _loc4_]["_menu"] == 9)
               {
                  this.charaData["Ribon" + _loc4_]["_color1"][0] = this.charaData["Ribon" + _loc4_]["_color0"][0];
                  this.DressCharaData["Ribon" + _loc4_][9]["_color1"][0] = this.charaData["Ribon" + _loc4_]["_color0"][0];
               }
               else if(this.charaData["Ribon" + _loc4_]["_menu"] == 24)
               {
                  this.charaData["Ribon" + _loc4_]["_color1"][0] = this.charaData["Ribon" + _loc4_]["_color0"][0];
                  this.DressCharaData["Ribon" + _loc4_][24]["_color1"][0] = this.charaData["Ribon" + _loc4_]["_color0"][0];
               }
               _loc4_++;
            }
         }
         if(param2 <= 29)
         {
            _loc7_ = Tab_IEInOut.INNameCharaAr.length;
            _loc4_ = 0;
            while(_loc4_ < _loc7_)
            {
               if(Tab_IEInOut.INNameCharaAr[_loc4_] == "Ymove" && param3 == "Xmove")
               {
                  this.charaData["Ymove"]["_meter"] *= 10;
                  break;
               }
               _loc4_++;
            }
         }
         if(param2 <= 33)
         {
            if(this.charaData["Vest"]["_visible"][0] && _loc10_)
            {
               if((this.charaData["Vest"]["_menu"] == 3 || this.charaData["Vest"]["_menu"] == 6 || this.charaData["Vest"]["_menu"] == 7) && this.charaData["VestDou"]["_menu"] == 2)
               {
                  this.charaData["VestDou"]["_menu"] = 33;
               }
            }
            if(this.charaData["Tsyatu"]["_visible"][0] && _loc11_)
            {
               if((this.charaData["Tsyatu"]["_menu"] == 9 || this.charaData["Tsyatu"]["_menu"] == 12) && this.charaData["TsyatuDou"]["_menu"] == 2)
               {
                  this.charaData["TsyatuDou"]["_menu"] = 33;
               }
            }
         }
         if(param2 <= 34)
         {
            if(this.charaData["Ysyatu"]["_visible"][0] && _loc9_)
            {
               if(this.charaData["YsyatuDou"]["_menu"] == 4)
               {
                  this.charaData["YsyatuRightArm"]["_menu"] = 0;
                  this.charaData["YsyatuLeftArm"]["_menu"] = 0;
               }
            }
         }
         if(param2 <= 35)
         {
            if(this.charaData["Ysyatu"]["_visible"][0] && _loc9_)
            {
               if(this.charaData["YsyatuDou"]["_menu"] == 0)
               {
                  this.charaData["YsyatuDou"]["_menu"] = 1;
                  this.charaData["YsyatuSkirt"]["_menu"] = 2;
               }
               else if(this.charaData["YsyatuDou"]["_menu"] == 1)
               {
                  this.charaData["YsyatuDou"]["_menu"] = 1;
                  this.charaData["YsyatuSkirt"]["_menu"] = 1;
               }
               else if(this.charaData["YsyatuDou"]["_menu"] == 5)
               {
                  this.charaData["YsyatuDou"]["_menu"] = 1;
                  this.charaData["YsyatuSkirt"]["_menu"] = 3;
               }
               else if(this.charaData["YsyatuDou"]["_menu"] == 35)
               {
                  this.charaData["YsyatuDou"]["_menu"] = 1;
                  this.charaData["YsyatuSkirt"]["_menu"] = 0;
               }
               else if(this.charaData["YsyatuDou"]["_menu"] == 2)
               {
                  this.charaData["YsyatuDou"]["_menu"] = 2;
                  this.charaData["YsyatuSkirt"]["_menu"] = 0;
               }
               else if(this.charaData["YsyatuDou"]["_menu"] == 3)
               {
                  this.charaData["YsyatuDou"]["_menu"] = 3;
                  this.charaData["YsyatuSkirt"]["_menu"] = 0;
               }
               else if(this.charaData["YsyatuDou"]["_menu"] == 4)
               {
                  this.charaData["YsyatuDou"]["_menu"] = 4;
                  this.charaData["YsyatuSkirt"]["_menu"] = 0;
               }
               else if(this.charaData["YsyatuDou"]["_menu"] >= 6)
               {
                  this.charaData["YsyatuSkirt"]["_menu"] = int(this.charaData["YsyatuDou"]["_menu"]) - 2;
                  this.charaData["YsyatuDou"]["_menu"] = 1;
               }
            }
            if(this.charaData["Vest"]["_visible"][0] && _loc10_)
            {
               if(this.charaData["VestDou"]["_menu"] == 0)
               {
                  this.charaData["VestDou"]["_menu"] = 1;
                  this.charaData["VestSkirt"]["_menu"] = 2;
               }
               else if(this.charaData["VestDou"]["_menu"] == 3)
               {
                  this.charaData["VestDou"]["_menu"] = 1;
                  this.charaData["VestSkirt"]["_menu"] = 3;
               }
               else if(this.charaData["VestDou"]["_menu"] == 1)
               {
                  this.charaData["VestDou"]["_menu"] = 1;
                  this.charaData["VestSkirt"]["_menu"] = 1;
               }
               else if(this.charaData["VestDou"]["_menu"] == 33)
               {
                  this.charaData["VestDou"]["_menu"] = 1;
                  this.charaData["VestSkirt"]["_menu"] = 0;
               }
               else if(this.charaData["VestDou"]["_menu"] == 2)
               {
                  this.charaData["VestDou"]["_menu"] = 2;
                  this.charaData["VestSkirt"]["_menu"] = 0;
               }
               else if(this.charaData["VestDou"]["_menu"] >= 4)
               {
                  this.charaData["VestSkirt"]["_menu"] = this.charaData["VestDou"]["_menu"];
                  this.charaData["VestDou"]["_menu"] = 1;
               }
            }
            if(this.charaData["Tsyatu"]["_visible"][0] && _loc11_)
            {
               if(this.charaData["TsyatuDou"]["_menu"] == 0)
               {
                  this.charaData["TsyatuDou"]["_menu"] = 1;
                  this.charaData["TsyatuSkirt"]["_menu"] = 2;
               }
               else if(this.charaData["TsyatuDou"]["_menu"] == 3)
               {
                  this.charaData["TsyatuDou"]["_menu"] = 1;
                  this.charaData["TsyatuSkirt"]["_menu"] = 3;
               }
               else if(this.charaData["TsyatuDou"]["_menu"] == 1)
               {
                  this.charaData["TsyatuDou"]["_menu"] = 1;
                  this.charaData["TsyatuSkirt"]["_menu"] = 1;
               }
               else if(this.charaData["TsyatuDou"]["_menu"] == 33)
               {
                  this.charaData["TsyatuDou"]["_menu"] = 1;
                  this.charaData["TsyatuSkirt"]["_menu"] = 0;
               }
               else if(this.charaData["TsyatuDou"]["_menu"] == 2)
               {
                  this.charaData["TsyatuDou"]["_menu"] = 2;
                  this.charaData["TsyatuSkirt"]["_menu"] = 0;
               }
               else if(this.charaData["TsyatuDou"]["_menu"] >= 4)
               {
                  this.charaData["TsyatuSkirt"]["_menu"] = this.charaData["TsyatuDou"]["_menu"];
                  this.charaData["TsyatuDou"]["_menu"] = 1;
               }
            }
         }
         if(param2 <= 36)
         {
            if(this.charaData["HairBack"]["_visible"][0] && _loc12_)
            {
               this.charaData["HairBack"]["_turn"] = Dress_data.HairBackData[this.charaData["HairBack"]["_menu"]]["rotationMode"];
               this.charaData["HairBack_Height"]["_meter"] = Dress_data.HairBackData[this.charaData["HairBack"]["_menu"]]["height_DOWN"] + (Dress_data.HairBackData[this.charaData["HairBack"]["_menu"]]["height_UP"] - Dress_data.HairBackData[this.charaData["HairBack"]["_menu"]]["height_DOWN"]) * (this.charaData["HairBack_Height"]["_meter"] / 100);
               this.charaData["HairBack_Width"]["_meter"] = Dress_data.HairBackData[this.charaData["HairBack"]["_menu"]]["width_DOWN"] + (Dress_data.HairBackData[this.charaData["HairBack"]["_menu"]]["width_UP"] - Dress_data.HairBackData[this.charaData["HairBack"]["_menu"]]["width_DOWN"]) * (this.charaData["HairBack_Width"]["_meter"] / 100);
               this.charaData["HairBack_Y"]["_meter"] = Dress_data.HairBackData[this.charaData["HairBack"]["_menu"]]["_y"];
            }
         }
         if(param2 <= 37)
         {
            _loc52_ = [[7],[7],[7],[6],[7],[8],[6],[6],[7],[7],[7],[7],[6],[6],[6],[7],[6],[7],[6],[7],[6],[6],[6],[6],[6]];
            if(this.charaData["Eyelib"]["_visible"][1] == undefined)
            {
               if(this.charaData["Eyelib"]["_menu"] == 11)
               {
                  this.charaData["Eyelib"]["_visible"][0] = true;
                  this.charaData["Lowerlash"]["_visible"][0] = true;
               }
               else if(this.charaData["Eyelib"]["_menu"] == 10)
               {
                  this.charaData["Eyelib"]["_visible"][0] = true;
                  this.charaData["Lowerlash"]["_visible"][0] = false;
               }
               else if(this.charaData["Eyelib"]["_menu"] == 0)
               {
                  this.charaData["Eyelib"]["_visible"][0] = false;
                  this.charaData["Lowerlash"]["_visible"][0] = false;
               }
               else if(this.charaData["Eyelib"]["_menu"] == 1)
               {
                  this.charaData["Eyelib"]["_visible"][0] = false;
                  this.charaData["Lowerlash"]["_visible"][0] = true;
               }
               if(this.charaData["Eyelib"]["_visible"][0])
               {
                  this.charaData["Eyelib"]["_menu"] = int(_loc52_[this.charaData["Eye"]["_menu"]]);
               }
            }
            else
            {
               if(this.charaData["Eyelib"]["_visible"][0])
               {
                  this.charaData["Eyelib"]["_menu"] = int(_loc52_[this.charaData["Eye"]["_menu"]]);
               }
               if(this.charaData["Eyelib"]["_visible"][1] == 0)
               {
                  this.charaData["Lowerlash"]["_visible"][0] = false;
               }
               else if(this.charaData["Eyelib"]["_visible"][1] == 1)
               {
                  this.charaData["Lowerlash"]["_visible"][0] = true;
               }
            }
         }
         if(param2 <= 38)
         {
            if(this.charaData["Lowerlash"]["_visible"][0] && _loc14_)
            {
               _loc53_ = [[4],[4],[2],[2],[2],[0],[2],[4],[2],[2],[2],[2],[0],[0],[4],[0],[4],[2],[4],[2],[2],[0],[0],[0],[0]];
               this.charaData["Lowerlash"]["_menu"] = int(_loc53_[this.charaData["Eye"]["_menu"]]);
            }
         }
         if(param2 <= 45)
         {
            _loc54_ = new Array();
            _loc55_ = new Array();
            _loc56_ = new Array();
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(this.charaData["BeltPlus"]["_visible"][_loc4_])
               {
                  if(this.charaData["Belt" + _loc4_]["_depth"] == 0)
                  {
                     _loc54_.push(_loc4_);
                  }
               }
               if(this.charaData["HairExPlus"]["_visible"][_loc4_])
               {
                  _loc55_.push(_loc4_);
               }
               if(this.charaData["MarkPlus"]["_visible"][_loc4_])
               {
                  _loc56_.push(_loc4_);
               }
               _loc4_++;
            }
            if(_loc54_.length > 1 || _loc55_.length > 1 || _loc56_.length > 1)
            {
               _loc57_ = this.clone(this.DressCharaData);
               _loc58_ = this.clone(this.charaData);
               _loc60_ = 0;
               if(_loc54_.length > 1 && Tab_IEInOut.BeltCheck)
               {
                  _loc4_ = 0;
                  while(_loc4_ <= Main.hukusuuNum)
                  {
                     _loc59_ = Main.hukusuuNum - _loc4_;
                     if(this.charaData["BeltPlus"]["_visible"][_loc59_] && this.charaData["Belt" + _loc59_]["_depth"] == 0 && _loc59_ != _loc54_[_loc60_])
                     {
                        this.charaData["Belt" + _loc59_] = this.clone(_loc58_["Belt" + _loc54_[_loc60_]]);
                        this.charaData["BeltScale" + _loc59_] = this.clone(_loc58_["BeltScale" + _loc54_[_loc60_]]);
                        this.charaData["BeltScaleY" + _loc59_] = this.clone(_loc58_["BeltScaleY" + _loc54_[_loc60_]]);
                        this.charaData["BeltLine" + _loc59_] = this.clone(_loc58_["BeltLine" + _loc54_[_loc60_]]);
                        this.charaData["BeltRotation" + _loc59_] = this.clone(_loc58_["BeltRotation" + _loc54_[_loc60_]]);
                        this.charaData["BeltX" + _loc59_] = this.clone(_loc58_["BeltX" + _loc54_[_loc60_]]);
                        this.charaData["BeltY" + _loc59_] = this.clone(_loc58_["BeltY" + _loc54_[_loc60_]]);
                        this.charaData["BeltExtra" + _loc59_] = this.clone(_loc58_["BeltExtra" + _loc54_[_loc60_]]);
                        this.DressCharaData["Belt" + _loc59_] = this.clone(_loc57_["Belt" + _loc54_[_loc60_]]);
                        this.DressCharaData["BeltLine" + _loc59_] = this.clone(_loc57_["BeltLine" + _loc54_[_loc60_]]);
                        _loc60_++;
                     }
                     else if(this.charaData["BeltPlus"]["_visible"][_loc59_] && this.charaData["Belt" + _loc59_]["_depth"] == 0)
                     {
                        _loc60_++;
                     }
                     _loc4_++;
                  }
               }
               if(_loc55_.length > 1 && Tab_IEInOut.HairExCheck)
               {
                  _loc60_ = 0;
                  _loc4_ = 0;
                  while(_loc4_ <= Main.hukusuuNum)
                  {
                     _loc59_ = Main.hukusuuNum - _loc4_;
                     if(this.charaData["HairExPlus"]["_visible"][_loc59_] && _loc59_ != _loc55_[_loc60_])
                     {
                        if(param3 == "hairSet")
                        {
                           this.charaData["HairEx" + _loc59_]["_menu"] = _loc58_["HairEx" + _loc55_[_loc60_]]["_menu"];
                           this.charaData["HairEx" + _loc59_]["_reversal2"] = _loc58_["HairEx" + _loc55_[_loc60_]]["_reversal2"];
                           this.charaData["HairEx" + _loc59_]["_depth"] = _loc58_["HairEx" + _loc55_[_loc60_]]["_depth"];
                           this.charaData["HairEx" + _loc59_]["_turn"] = _loc58_["HairEx" + _loc55_[_loc60_]]["_turn"];
                        }
                        else
                        {
                           this.charaData["HairEx" + _loc59_] = this.clone(_loc58_["HairEx" + _loc55_[_loc60_]]);
                           this.DressCharaData["HairEx" + _loc59_] = this.clone(_loc57_["HairEx" + _loc55_[_loc60_]]);
                        }
                        this.charaData["HairExScaleX" + _loc59_] = this.clone(_loc58_["HairExScaleX" + _loc55_[_loc60_]]);
                        this.charaData["HairExScaleY" + _loc59_] = this.clone(_loc58_["HairExScaleY" + _loc55_[_loc60_]]);
                        this.charaData["HairExRotation" + _loc59_] = this.clone(_loc58_["HairExRotation" + _loc55_[_loc60_]]);
                        this.charaData["HairExX" + _loc59_] = this.clone(_loc58_["HairExX" + _loc55_[_loc60_]]);
                        this.charaData["HairExY" + _loc59_] = this.clone(_loc58_["HairExY" + _loc55_[_loc60_]]);
                        _loc60_++;
                     }
                     else if(this.charaData["HairExPlus"]["_visible"][_loc59_])
                     {
                        _loc60_++;
                     }
                     _loc4_++;
                  }
               }
               if(_loc56_.length > 1 && Tab_IEInOut.MarkCheck)
               {
                  _loc60_ = 0;
                  _loc4_ = 0;
                  while(_loc4_ <= Main.hukusuuNum)
                  {
                     _loc59_ = Main.hukusuuNum - _loc4_;
                     if(this.charaData["MarkPlus"]["_visible"][_loc59_] && _loc59_ != _loc56_[_loc60_])
                     {
                        this.charaData["Mark" + _loc59_] = this.clone(_loc58_["Mark" + _loc56_[_loc60_]]);
                        this.charaData["MarkScaleX" + _loc59_] = this.clone(_loc58_["MarkScaleX" + _loc56_[_loc60_]]);
                        this.charaData["MarkScaleY" + _loc59_] = this.clone(_loc58_["MarkScaleY" + _loc56_[_loc60_]]);
                        this.charaData["MarkRotation" + _loc59_] = this.clone(_loc58_["MarkRotation" + _loc56_[_loc60_]]);
                        this.charaData["MarkX" + _loc59_] = this.clone(_loc58_["MarkX" + _loc56_[_loc60_]]);
                        this.charaData["MarkY" + _loc59_] = this.clone(_loc58_["MarkY" + _loc56_[_loc60_]]);
                        this.DressCharaData["Mark" + _loc59_] = this.clone(_loc57_["Mark" + _loc56_[_loc60_]]);
                        _loc60_++;
                     }
                     else if(this.charaData["MarkPlus"]["_visible"][_loc59_])
                     {
                        _loc60_++;
                     }
                     _loc4_++;
                  }
               }
            }
         }
         if(param2 <= 46)
         {
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(this.charaData["BeltPlus"]["_visible"][_loc4_] && this.charaData["Belt" + _loc4_]["_depth"] == 2)
               {
                  this.charaData["Belt" + _loc4_]["_depth"] = 3;
               }
               _loc4_++;
            }
         }
         if(param2 <= 47)
         {
            if(_loc16_)
            {
               if(this.charaData["Nose"]["_menu"] == 9)
               {
                  this.charaData["Nose"]["_visible"][0] = false;
                  this.charaData["NoseShadow"]["_visible"][0] = false;
               }
               else if(this.charaData["Nose"]["_menu"] == 8)
               {
                  this.charaData["Nose"]["_visible"][0] = true;
                  this.charaData["Nose"]["_color0"][0] = 56;
                  this.DressCharaData["Nose"][0]["_color0"][0] = 56;
                  this.charaData["NoseScaleX"]["_meter"] = 0;
                  this.charaData["NoseScaleY"]["_meter"] = 0;
                  this.charaData["NoseShadow"]["_visible"][0] = false;
               }
               else if(this.charaData["Nose"]["_menu"] == 7)
               {
                  this.charaData["Nose"]["_visible"][0] = true;
                  this.charaData["Nose"]["_color0"][0] = 56;
                  this.DressCharaData["Nose"][0]["_color0"][0] = 56;
                  this.charaData["Nose"]["_reversal"] = 1;
                  this.charaData["NoseScaleX"]["_meter"] = 0;
                  this.charaData["NoseScaleY"]["_meter"] = 0;
                  this.charaData["NoseShadow"]["_visible"][0] = true;
                  this.charaData["NoseShadow"]["_menu"] = 0;
                  this.charaData["NoseShadowAlpha"]["_meter"] = 70;
                  this.charaData["NoseShadowHeight"]["_meter"] = 20;
                  this.charaData["NoseShadowScaleX"]["_meter"] = 60;
                  this.charaData["NoseShadowScaleY"]["_meter"] = 60;
               }
               else if(this.charaData["Nose"]["_menu"] == 6)
               {
                  this.charaData["Nose"]["_visible"][0] = true;
                  this.charaData["Nose"]["_color0"][0] = 56;
                  this.DressCharaData["Nose"][0]["_color0"][0] = 56;
                  this.charaData["Nose"]["_reversal"] = 1;
                  this.charaData["NoseScaleX"]["_meter"] = 0;
                  this.charaData["NoseScaleY"]["_meter"] = 0;
                  this.charaData["NoseShadow"]["_visible"][0] = true;
                  this.charaData["NoseShadow"]["_menu"] = 0;
                  this.charaData["NoseShadowAlpha"]["_meter"] = 70;
                  this.charaData["NoseShadowHeight"]["_meter"] = 20;
                  this.charaData["NoseShadowScaleX"]["_meter"] = 50;
                  this.charaData["NoseShadowScaleY"]["_meter"] = 50;
               }
               else if(this.charaData["Nose"]["_menu"] == 5)
               {
                  this.charaData["Nose"]["_visible"][0] = true;
                  this.charaData["Nose"]["_color0"][0] = 56;
                  this.DressCharaData["Nose"][0]["_color0"][0] = 56;
                  this.charaData["Nose"]["_reversal"] = 1;
                  this.charaData["NoseScaleX"]["_meter"] = 0;
                  this.charaData["NoseScaleY"]["_meter"] = 0;
                  this.charaData["NoseShadow"]["_visible"][0] = true;
                  this.charaData["NoseShadow"]["_menu"] = 0;
                  this.charaData["NoseShadowAlpha"]["_meter"] = 70;
                  this.charaData["NoseShadowHeight"]["_meter"] = 20;
                  this.charaData["NoseShadowScaleX"]["_meter"] = 40;
                  this.charaData["NoseShadowScaleY"]["_meter"] = 40;
               }
               else if(this.charaData["Nose"]["_menu"] == 4)
               {
                  this.charaData["Nose"]["_visible"][0] = true;
                  this.charaData["Nose"]["_color0"][0] = 56;
                  this.DressCharaData["Nose"][0]["_color0"][0] = 56;
                  this.charaData["Nose"]["_reversal"] = 1;
                  this.charaData["NoseScaleX"]["_meter"] = 0;
                  this.charaData["NoseScaleY"]["_meter"] = 0;
                  this.charaData["NoseShadow"]["_visible"][0] = true;
                  this.charaData["NoseShadow"]["_menu"] = 0;
                  this.charaData["NoseShadowAlpha"]["_meter"] = 70;
                  this.charaData["NoseShadowHeight"]["_meter"] = 20;
                  this.charaData["NoseShadowScaleX"]["_meter"] = 30;
                  this.charaData["NoseShadowScaleY"]["_meter"] = 30;
               }
               else if(this.charaData["Nose"]["_menu"] == 3)
               {
                  this.charaData["Nose"]["_visible"][0] = true;
                  this.charaData["Nose"]["_color0"][0] = 56;
                  this.DressCharaData["Nose"][0]["_color0"][0] = 56;
                  this.charaData["Nose"]["_reversal"] = 1;
                  this.charaData["NoseScaleX"]["_meter"] = 0;
                  this.charaData["NoseScaleY"]["_meter"] = 0;
                  this.charaData["NoseShadow"]["_visible"][0] = true;
                  this.charaData["NoseShadow"]["_menu"] = 0;
                  this.charaData["NoseShadowAlpha"]["_meter"] = 70;
                  this.charaData["NoseShadowHeight"]["_meter"] = 20;
                  this.charaData["NoseShadowScaleX"]["_meter"] = 20;
                  this.charaData["NoseShadowScaleY"]["_meter"] = 20;
               }
               else if(this.charaData["Nose"]["_menu"] <= 2)
               {
                  this.charaData["Nose"]["_visible"][0] = true;
                  this.charaData["Nose"]["_color0"][0] = 56;
                  this.DressCharaData["Nose"][0]["_color0"][0] = 56;
                  this.charaData["Nose"]["_reversal"] = 1;
                  this.charaData["NoseScaleX"]["_meter"] = 0;
                  this.charaData["NoseScaleY"]["_meter"] = 0;
                  this.charaData["NoseShadow"]["_visible"][0] = false;
               }
            }
         }
         if(param2 <= 48)
         {
            if(Tab_IEInOut.HairExCheck)
            {
               _loc4_ = 0;
               while(_loc4_ <= Main.hukusuuNum)
               {
                  if(this.charaData["HairExPlus"]["_visible"][_loc4_] && this.charaData["HairEx" + _loc4_]["_menu"] >= 15 && this.charaData["HairEx" + _loc4_]["_menu"] <= 23)
                  {
                     this.charaData["HairEx" + _loc4_]["_color2"][0] = this.charaData["HairEx" + _loc4_]["_color1"][0];
                     this.charaData["HairEx" + _loc4_]["_color1"][0] = this.charaData["HairEx" + _loc4_]["_color0"][0];
                     this.charaData["HairEx" + _loc4_]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
                     this.DressCharaData["HairEx" + _loc4_][0]["_color0"][0] = this.charaData["HairEx" + _loc4_]["_color0"][0];
                     this.DressCharaData["HairEx" + _loc4_][0]["_color1"][0] = this.charaData["HairEx" + _loc4_]["_color1"][0];
                     this.DressCharaData["HairEx" + _loc4_][0]["_color2"][0] = this.charaData["HairEx" + _loc4_]["_color2"][0];
                  }
                  _loc4_++;
               }
            }
         }
         if(param2 <= 49)
         {
            if(Tab_IEInOut.EyeOptionCheck)
            {
               if(this.charaData["EyeOption"]["_visible"][0])
               {
                  this.charaData["EyeballLight"]["_visible"][0] = true;
               }
               else
               {
                  this.charaData["EyeballLight"]["_visible"][0] = false;
               }
               if(this.charaData["EyeOption"]["_visible"][1])
               {
                  this.charaData["EyeballLight"]["_menu"] = 1;
               }
               else
               {
                  this.charaData["EyeballLight"]["_menu"] = 0;
               }
               if(this.charaData["EyeOption"]["_visible"][2])
               {
                  this.charaData["EyeOption"]["_visible"][0] = true;
               }
               else
               {
                  this.charaData["EyeOption"]["_visible"][0] = false;
               }
               if(this.charaData["EyeOption"]["_visible"][3])
               {
                  this.charaData["EyeOption"]["_visible"][1] = true;
               }
               else
               {
                  this.charaData["EyeOption"]["_visible"][1] = false;
               }
               if(this.charaData["EyeOption"]["_visible"][4])
               {
                  this.charaData["EyeOption"]["_visible"][2] = true;
               }
               else
               {
                  this.charaData["EyeOption"]["_visible"][2] = false;
               }
               if(this.charaData["EyeOption"]["_visible"][5])
               {
                  this.charaData["EyeOption"]["_visible"][3] = true;
               }
               else
               {
                  this.charaData["EyeOption"]["_visible"][3] = false;
               }
               if(this.charaData["EyeOption"]["_visible"][6])
               {
                  this.charaData["EyeOption"]["_visible"][4] = true;
               }
               else
               {
                  this.charaData["EyeOption"]["_visible"][4] = false;
               }
               if(this.charaData["EyeOption"]["_visible"][7])
               {
                  this.charaData["EyeOption"]["_visible"][5] = true;
               }
               else
               {
                  this.charaData["EyeOption"]["_visible"][5] = false;
               }
               if(this.charaData["EyeOption"]["_visible"][8])
               {
                  this.charaData["EyeOption"]["_visible"][6] = true;
               }
               else
               {
                  this.charaData["EyeOption"]["_visible"][6] = false;
               }
               this.charaData["EyeballLightRotation"]["_meter"] = 0;
            }
         }
         if(param2 <= 50)
         {
            if(Tab_IEInOut.kobitoCheck2)
            {
               if(Tab_IEInOut.kobitoCheck)
               {
                  this.charaData["BodySize"]["_meter"] = 0;
               }
               else
               {
                  this.charaData["BodySize"]["_meter"] = 80;
               }
            }
            if(_loc21_)
            {
               this.charaData["BodyYMove"]["_meter"] = 0;
            }
         }
         if(param2 <= 51)
         {
            if(_loc17_)
            {
               if(this.charaData["Collar"]["_menu"] == 8 || this.charaData["Collar"]["_menu"] == 11 || this.charaData["Collar"]["_menu"] == 12 || this.charaData["Collar"]["_menu"] == 13 || this.charaData["Collar"]["_menu"] == 14 || this.charaData["Collar"]["_menu"] == 15 || this.charaData["Collar"]["_menu"] == 18)
               {
                  this.charaData["Collar"]["_depth"] = 1;
               }
               else
               {
                  this.charaData["Collar"]["_depth"] = 0;
               }
            }
         }
         if(param2 <= 52)
         {
            if(_loc18_)
            {
               if(this.charaData["Bangs"]["_visible"][0])
               {
                  if(this.charaData["Bangs_Height"]["_meter"] <= 5)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 0;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 10)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 6;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 15)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 11;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 21)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 16;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 26)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 22;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 31)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 27;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 36)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 32;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 42)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 37;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 47)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 43;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 52)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 48;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 57)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 53;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 63)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 58;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 68)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 64;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 73)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 69;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 78)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 74;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 84)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 79;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 89)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 85;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 94)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 90;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] <= 99)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 95;
                  }
                  else if(this.charaData["Bangs_Height"]["_meter"] == 100)
                  {
                     this.charaData["Bangs_Height"]["_meter"] = 100;
                  }
               }
            }
            if(_loc19_)
            {
               if(this.charaData["SideBurnLeft"]["_visible"][0])
               {
                  this.charaData["SideBurnLeft_x"]["_meter"] = 0;
                  if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 5)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 0;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 10)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 6;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 15)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 11;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 21)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 16;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 26)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 22;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 31)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 27;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 36)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 32;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 42)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 37;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 47)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 43;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 52)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 48;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 57)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 53;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 63)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 58;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 68)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 64;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 73)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 69;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 78)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 74;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 84)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 79;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 89)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 85;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 94)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 90;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] <= 99)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 95;
                  }
                  else if(this.charaData["SideBurnLeft_Height"]["_meter"] == 100)
                  {
                     this.charaData["SideBurnLeft_Height"]["_meter"] = 100;
                  }
               }
            }
            if(_loc20_)
            {
               if(this.charaData["SideBurnRight"]["_visible"][0])
               {
                  this.charaData["SideBurnRight_x"]["_meter"] = 0;
                  if(this.charaData["SideBurnRight_Height"]["_meter"] <= 5)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 0;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 10)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 6;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 15)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 11;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 21)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 16;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 26)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 22;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 31)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 27;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 36)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 32;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 42)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 37;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 47)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 43;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 52)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 48;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 57)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 53;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 63)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 58;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 68)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 64;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 73)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 69;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 78)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 74;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 84)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 79;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 89)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 85;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 94)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 90;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] <= 99)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 95;
                  }
                  else if(this.charaData["SideBurnRight_Height"]["_meter"] == 100)
                  {
                     this.charaData["SideBurnRight_Height"]["_meter"] = 100;
                  }
               }
            }
         }
         if(param2 <= 53)
         {
            if(_loc8_)
            {
               if(this.charaData["Seihuku"]["_visible"][0])
               {
                  this.charaData["SeihukuRightArm"]["_menu"] = 8;
                  this.charaData["SeihukuLeftArm"]["_menu"] = 8;
               }
            }
         }
         if(param2 <= 54)
         {
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(this.charaData["RibonPlus"]["_visible"][_loc4_])
               {
                  this.charaData["RibonScaleY" + _loc4_]["_meter"] = this.charaData["RibonScale" + _loc4_]["_meter"];
               }
               if(this.charaData["HairpinPlus"]["_visible"][_loc4_])
               {
                  this.charaData["HairpinScaleY" + _loc4_]["_meter"] = this.charaData["HairpinScale" + _loc4_]["_meter"];
               }
               _loc4_++;
            }
            _loc7_ = MenuClass.systemData["FreeRibonPlus"]["_visible"].length - 1;
            _loc4_ = 0;
            for(; _loc4_ <= _loc7_; _loc4_++)
            {
               try
               {
                  if(MenuClass.systemData["FreeRibonPlus"]["_visible"][_loc4_])
                  {
                     MenuClass.systemData["FreeRibonScaleY" + _loc4_]["_meter"] = this.charaData["FreeRibonScale" + _loc4_]["_meter"];
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
            if(this.charaData["SideBurnLeft"]["_visible"][0])
            {
               this.charaData["SideBurnLeft"]["_turn"] = 1;
            }
            if(this.charaData["SideBurnRight"]["_visible"][0])
            {
               this.charaData["SideBurnRight"]["_turn"] = 1;
            }
            if(_loc15_)
            {
               if(this.charaData["Lowerlash"]["_visible"][0])
               {
                  _loc61_ = [2,5,3,6,4,7];
                  this.charaData["Lowerlash"]["_menu"] = int(_loc61_[this.charaData["Lowerlash"]["_menu"]]);
               }
               else
               {
                  this.charaData["Lowerlash"]["_menu"] = 0;
               }
            }
         }
         if(param2 <= 55)
         {
            if(!_loc22_)
            {
               this.charaData["CharaDropShadow"]["_visible"][0] = false;
            }
         }
         if(param2 <= 56)
         {
            if(!_loc22_)
            {
               this.charaData["CharaBlur"]["_visible"][0] = false;
            }
         }
         if(param2 <= 57)
         {
            if(Tab_IEInOut.HairExCheck)
            {
               _loc6_ = 0;
               while(_loc6_ <= Main.hukusuuNum)
               {
                  if(this.charaData["HairExPlus"]["_visible"][_loc6_])
                  {
                     this.charaData["HairExLine" + _loc6_]["_menu"] = 1;
                  }
                  _loc6_++;
               }
            }
         }
         if(param2 <= 58)
         {
            if(Tab_IEInOut.MarkCheck)
            {
               _loc6_ = 0;
               while(_loc6_ <= Main.hukusuuNum)
               {
                  if(this.charaData["MarkPlus"]["_visible"][_loc6_])
                  {
                     if(this.charaData["Mark" + _loc6_]["_reversal2"] == 0)
                     {
                        this.charaData["Mark" + _loc6_]["_reversal2"] = 1;
                     }
                     else if(this.charaData["Mark" + _loc6_]["_reversal2"] == 1)
                     {
                        this.charaData["Mark" + _loc6_]["_reversal2"] = 2;
                        this.charaData["MarkX" + _loc6_]["_meter"] = 1000 - this.charaData["MarkX" + _loc6_]["_meter"];
                        this.charaData["MarkRotation" + _loc6_]["_meter"] = 360 - this.charaData["MarkRotation" + _loc6_]["_meter"];
                     }
                  }
                  _loc6_++;
               }
            }
            if(Tab_IEInOut.BeltCheck)
            {
               _loc6_ = 0;
               while(_loc6_ <= Main.hukusuuNum)
               {
                  if(this.charaData["BeltPlus"]["_visible"][_loc6_])
                  {
                     if(this.charaData["Belt" + _loc6_]["_reversal2"] == 1)
                     {
                        this.charaData["Belt" + _loc6_]["_reversal2"] = 1;
                        this.charaData["BeltX" + _loc6_]["_meter"] = 1000 - this.charaData["BeltX" + _loc6_]["_meter"];
                     }
                     else if(this.charaData["Belt" + _loc6_]["_reversal2"] == 0)
                     {
                        this.charaData["Belt" + _loc6_]["_reversal2"] = 2;
                        this.charaData["BeltX" + _loc6_]["_meter"] = 1000 - this.charaData["BeltX" + _loc6_]["_meter"];
                     }
                  }
                  _loc6_++;
               }
            }
         }
         if(param2 <= 60)
         {
            this.charaData["MouthSen"]["_menu"] = 2;
         }
         if(param2 <= 64)
         {
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(this.charaData["RibonPlus"]["_visible"][_loc4_] && ribbonModified)
               {
                  this.charaData["RibonScaleB" + _loc4_]["_meter"] = 500;
               }
               if(this.charaData["HairpinPlus"]["_visible"][_loc4_] && _loc27_)
               {
                  this.charaData["HairpinScaleB" + _loc4_]["_meter"] = 500;
               }
               if(this.charaData["MarkPlus"]["_visible"][_loc4_] && faceMarkModified)
               {
                  this.charaData["MarkScaleB" + _loc4_]["_meter"] = 500;
               }
               if(this.charaData["HairExPlus"]["_visible"][_loc4_] && hairExModified)
               {
                  this.charaData["HairExScaleB" + _loc4_]["_meter"] = 500;
               }
               if(this.charaData["BeltPlus"]["_visible"][_loc4_] && beltModified)
               {
                  this.charaData["BeltScaleB" + _loc4_]["_meter"] = 500;
               }
               _loc4_++;
            }
         }
         if(param2 <= 66)
         {
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(!charaImageModified)
               {
                  this.charaData["CharaLoadPlus"]["_visible"][_loc4_] = false;
               }
               _loc4_++;
            }
         }
         if(param2 <= 67)
         {
            _loc7_ = Tab_IEData1.IEGroup.length;
            _loc5_ = 0;
            while(_loc5_ < _loc7_)
            {
               if(MenuClass.importCheck[_loc5_])
               {
                  if(MenuClass.MY_MENUNAME[_loc5_ + 3][0] == "Hand" && _loc29_)
                  {
                     this.charaData["BreastManualAuto"]["_check"] = true;
                  }
               }
               _loc5_++;
            }
         }
         if(param2 <= 68)
         {
            if(_loc30_)
            {
               this.charaData["MouthYMove"]["_meter"] = 60;
            }
         }
         if(param2 == 69)
         {
            if(_loc30_)
            {
               if(this.charaData["MouthYMove"]["_meter"] == 0)
               {
                  this.charaData["MouthYMove"]["_meter"] = 60;
               }
            }
         }
         if(param2 <= 70)
         {
            if(_loc32_)
            {
               this.charaData["ESituation"]["_menu"] = 0;
            }
         }
         if(param2 <= 71)
         {
            if(!_loc33_)
            {
               this.charaData["Vibrator"]["_visible"][0] = false;
            }
         }
         if(param2 <= 72)
         {
            if(this.charaData["EmotionManualAuto"]["_check"])
            {
               this.charaData["EyeOption"]["_visible"][0] = false;
               this.charaData["EyeOption"]["_visible"][1] = false;
               this.charaData["EyeOption"]["_visible"][4] = false;
            }
         }
         if(param2 <= 73)
         {
            if(Tab_IEInOut.LoadCheck)
            {
               this.charaData["CharaLoadY" + _loc6_]["_meter"] = 1000 - this.charaData["CharaLoadY" + _loc6_]["_meter"];
            }
         }
         if(param2 <= 74)
         {
            if(_loc33_)
            {
               this.charaData["VibratorMove"]["_turn2"] = 0;
               if(this.charaData["Vibrator"]["_menu"] == 0 || this.charaData["Vibrator"]["_menu"] == 1 || this.charaData["Vibrator"]["_menu"] == 2)
               {
                  this.charaData["VibratorScale"]["_meter"] = 0;
               }
               else if(this.charaData["Vibrator"]["_menu"] == 3)
               {
                  this.charaData["Vibrator"]["_menu"] = 0;
                  this.charaData["VibratorScale"]["_meter"] = 100;
               }
               else if(this.charaData["Vibrator"]["_menu"] == 4)
               {
                  this.charaData["Vibrator"]["_menu"] = 1;
                  this.charaData["VibratorScale"]["_meter"] = 100;
               }
               else if(this.charaData["Vibrator"]["_menu"] == 5)
               {
                  this.charaData["Vibrator"]["_menu"] = 2;
                  this.charaData["VibratorScale"]["_meter"] = 100;
               }
            }
         }
         if(param2 <= 75)
         {
            if(_loc33_)
            {
               this.charaData["VibratorThrough"]["_check"] = false;
            }
         }
         if(param2 <= 76)
         {
            if(_loc34_)
            {
               this.Version76Fc(0);
            }
            if(_loc35_)
            {
               this.Version76Fc(1);
            }
         }
         if(param2 <= 77)
         {
            if(!_loc36_)
            {
               this.charaData["CharaFilterEmotion"]["_check"] = true;
               try
               {
                  MenuClass.charaAddDepth[param1].charaMae.Hukidashi.visible = false;
                  MenuClass.charaAddDepth[param1].charaMae.Hukidashi.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
            }
         }
         if(param2 <= 78)
         {
            if(_loc37_)
            {
               if(this.charaData["Bracelet0"]["_menu"] == 9 || this.charaData["Bracelet0"]["_menu"] == 10)
               {
                  this.charaData["Bracelet0"]["_color1"][0] = this.charaData["Bracelet0"]["_color0"][0];
                  this.charaData["Bracelet0"]["_color2"][0] = this.charaData["Bracelet0"]["_color0"][0];
                  this.DressCharaData["Bracelet0"][this.charaData["Bracelet0"]["_menu"]]["_color1"][0] = this.clone(this.DressCharaData["Bracelet0"][this.charaData["Bracelet0"]["_menu"]]["_color0"][0]);
                  this.DressCharaData["Bracelet0"][this.charaData["Bracelet0"]["_menu"]]["_color2"][0] = this.clone(this.DressCharaData["Bracelet0"][this.charaData["Bracelet0"]["_menu"]]["_color0"][0]);
               }
            }
            if(_loc38_)
            {
               if(this.charaData["Bracelet1"]["_menu"] == 9 || this.charaData["Bracelet0"]["_menu"] == 10)
               {
                  this.charaData["Bracelet1"]["_color1"][0] = this.charaData["Bracelet1"]["_color0"][0];
                  this.charaData["Bracelet1"]["_color2"][0] = this.charaData["Bracelet1"]["_color0"][0];
                  this.DressCharaData["Bracelet1"][this.charaData["Bracelet1"]["_menu"]]["_color1"][0] = this.clone(this.DressCharaData["Bracelet1"][this.charaData["Bracelet1"]["_menu"]]["_color0"][0]);
                  this.DressCharaData["Bracelet1"][this.charaData["Bracelet1"]["_menu"]]["_color2"][0] = this.clone(this.DressCharaData["Bracelet1"][this.charaData["Bracelet1"]["_menu"]]["_color0"][0]);
               }
            }
            if(_loc39_)
            {
               if(this.charaData["ArmBracelet0"]["_menu"] == 9 || this.charaData["ArmBracelet0"]["_menu"] == 10)
               {
                  this.charaData["ArmBracelet0"]["_color1"][0] = this.charaData["ArmBracelet0"]["_color0"][0];
                  this.charaData["ArmBracelet0"]["_color2"][0] = this.charaData["ArmBracelet0"]["_color0"][0];
                  this.DressCharaData["ArmBracelet0"][this.charaData["ArmBracelet0"]["_menu"]]["_color1"][0] = this.clone(this.DressCharaData["ArmBracelet0"][this.charaData["ArmBracelet0"]["_menu"]]["_color0"][0]);
                  this.DressCharaData["ArmBracelet0"][this.charaData["ArmBracelet0"]["_menu"]]["_color2"][0] = this.clone(this.DressCharaData["ArmBracelet0"][this.charaData["ArmBracelet0"]["_menu"]]["_color0"][0]);
               }
            }
            if(_loc40_)
            {
               if(this.charaData["ArmBracelet1"]["_menu"] == 9 || this.charaData["ArmBracelet1"]["_menu"] == 10)
               {
                  this.charaData["ArmBracelet1"]["_color1"][0] = this.charaData["ArmBracelet1"]["_color0"][0];
                  this.charaData["ArmBracelet1"]["_color2"][0] = this.charaData["ArmBracelet1"]["_color0"][0];
                  this.DressCharaData["ArmBracelet1"][this.charaData["ArmBracelet1"]["_menu"]]["_color1"][0] = this.clone(this.DressCharaData["ArmBracelet1"][this.charaData["ArmBracelet1"]["_menu"]]["_color0"][0]);
                  this.DressCharaData["ArmBracelet1"][this.charaData["ArmBracelet1"]["_menu"]]["_color2"][0] = this.clone(this.DressCharaData["ArmBracelet1"][this.charaData["ArmBracelet1"]["_menu"]]["_color0"][0]);
               }
            }
            if(_loc41_)
            {
               if(this.charaData["Socks0"]["_menu"] == 30 || this.charaData["Socks0"]["_menu"] == 31)
               {
                  this.charaData["Socks0"]["_color1"][0] = this.charaData["Socks0"]["_color0"][0];
                  this.charaData["Socks0"]["_color2"][0] = this.charaData["Socks0"]["_color0"][0];
                  this.DressCharaData["Socks0"][this.charaData["Socks0"]["_menu"]]["_color1"][0] = this.clone(this.DressCharaData["Socks0"][this.charaData["Socks0"]["_menu"]]["_color0"][0]);
                  this.DressCharaData["Socks0"][this.charaData["Socks0"]["_menu"]]["_color2"][0] = this.clone(this.DressCharaData["Socks0"][this.charaData["Socks0"]["_menu"]]["_color0"][0]);
               }
            }
            if(_loc42_)
            {
               if(this.charaData["Socks1"]["_menu"] == 30 || this.charaData["Socks1"]["_menu"] == 31)
               {
                  this.charaData["Socks1"]["_color1"][0] = this.charaData["Socks1"]["_color0"][0];
                  this.charaData["Socks1"]["_color2"][0] = this.charaData["Socks1"]["_color0"][0];
                  this.DressCharaData["Socks1"][this.charaData["Socks1"]["_menu"]]["_color1"][0] = this.clone(this.DressCharaData["Socks1"][this.charaData["Socks1"]["_menu"]]["_color0"][0]);
                  this.DressCharaData["Socks1"][this.charaData["Socks1"]["_menu"]]["_color2"][0] = this.clone(this.DressCharaData["Socks1"][this.charaData["Socks1"]["_menu"]]["_color0"][0]);
               }
            }
         }
         if(param2 <= 79)
         {
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(this.charaData["RibonPlus"]["_visible"][_loc4_] && ribbonModified)
               {
                  this.charaData["RibonAdd" + _loc4_]["_add0"] = 0;
                  this.charaData["RibonRotation" + _loc4_]["_meter"] = Math.floor(this.charaData["RibonRotation" + _loc4_]["_meter"] * 3.6);
                  this.charaData["RibonX" + _loc4_]["_meter"] = Math.floor(this.charaData["RibonX" + _loc4_]["_meter"] * 10);
                  this.charaData["RibonY" + _loc4_]["_meter"] = Math.floor(this.charaData["RibonY" + _loc4_]["_meter"] * 10);
                  this.charaData["Ribon" + _loc4_]["_reversal"] = 0;
               }
               _loc4_++;
            }
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(this.charaData["HairpinPlus"]["_visible"][_loc4_] && _loc27_)
               {
                  _loc6_ = 30 + _loc4_;
                  this.charaData["RibonPlus"]["_visible"][_loc6_] = true;
                  this.charaData["Ribon" + _loc6_]["_reversal"] = 0;
                  if(this.charaData["Hairpin" + _loc4_]["_menu"] == 0)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 71;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 1)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 72;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 2)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 73;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 3)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 74;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 4)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 75;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 5)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 76;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 6)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 20;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 7)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 77;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 8)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 78;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 9)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 28;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 10)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 23;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 11)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 79;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 12)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 80;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 13)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 29;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 14)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 81;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 15)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 30;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 16)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 31;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 17)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 82;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 18)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 83;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 19)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 66;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 20)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 84;
                  }
                  else if(this.charaData["Hairpin" + _loc4_]["_menu"] == 21)
                  {
                     this.charaData["Ribon" + _loc6_]["_menu"] = 85;
                  }
                  this.charaData["RibonAdd" + _loc6_]["_add0"] = 1;
                  this.charaData["Ribon" + _loc6_]["_reversal2"] = this.charaData["Hairpin" + _loc4_]["_reversal2"];
                  this.charaData["Ribon" + _loc6_]["_color0"] = this.charaData["Hairpin" + _loc4_]["_color0"];
                  this.DressCharaData["Ribon" + _loc6_][this.charaData["Ribon" + _loc6_]["_menu"]]["_color0"][0] = this.clone(this.charaData["Ribon" + _loc6_]["_color0"]);
                  try
                  {
                     this.charaData["Ribon" + _loc6_]["_color1"] = this.charaData["Hairpin" + _loc4_]["_color1"];
                     this.DressCharaData["Ribon" + _loc6_][this.charaData["Ribon" + _loc6_]["_menu"]]["_color1"][0] = this.clone(this.charaData["Ribon" + _loc6_]["_color1"]);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaData["Ribon" + _loc6_]["_color2"] = this.charaData["Hairpin" + _loc4_]["_color2"];
                     this.DressCharaData["Ribon" + _loc6_][this.charaData["Ribon" + _loc6_]["_menu"]]["_color2"][0] = this.clone(this.charaData["Ribon" + _loc6_]["_color2"]);
                  }
                  catch(myError:Error)
                  {
                  }
                  this.charaData["RibonLine" + _loc6_]["_menu"] = this.charaData["HairpinLine" + _loc4_]["_menu"];
                  this.charaData["RibonLine" + _loc6_]["_color0"] = this.charaData["HairpinLine" + _loc4_]["_color0"];
                  this.DressCharaData["RibonLine" + _loc6_][0]["_color0"][0] = this.clone(this.charaData["RibonLine" + _loc6_]["_color0"]);
                  this.charaData["RibonScale" + _loc6_]["_meter"] = this.charaData["HairpinScale" + _loc4_]["_meter"];
                  this.charaData["RibonScaleY" + _loc6_]["_meter"] = this.charaData["HairpinScaleY" + _loc4_]["_meter"];
                  this.charaData["RibonScaleB" + _loc6_]["_meter"] = this.charaData["HairpinScaleB" + _loc4_]["_meter"];
                  this.charaData["RibonRotation" + _loc6_]["_meter"] = Math.floor(this.charaData["HairpinRotation" + _loc4_]["_meter"] * 3.6);
                  this.charaData["RibonX" + _loc6_]["_meter"] = Math.floor(this.charaData["HairpinX" + _loc4_]["_meter"] * 10);
                  this.charaData["RibonY" + _loc6_]["_meter"] = Math.floor(this.charaData["HairpinY" + _loc4_]["_meter"] * 10);
                  this.charaData["HairpinPlus"]["_visible"][_loc4_] = false;
               }
               _loc4_++;
            }
         }
         if(param2 <= 81)
         {
            _loc4_ = 0;
            while(_loc4_ <= Main.RibonhukusuuNum)
            {
               if(this.charaData["RibonPlus"]["_visible"][_loc4_] && ribbonModified)
               {
                  this.charaData["Ribon" + _loc4_]["_shadow"] = 1;
               }
               _loc4_++;
            }
         }
         if(param2 <= 82)
         {
            if(_loc30_)
            {
               this.charaData["MouthXMove"]["_meter"] = 50;
               this.charaData["MouthRotation"]["_meter"] = 50;
            }
            if(_loc31_)
            {
               this.charaData["EyeballWidthRight"]["_meter"] = this.charaData["EyeballWidth"]["_meter"];
               this.charaData["EyeballXMoveRight"]["_meter"] = this.charaData["EyeballXMove"]["_meter"];
               this.charaData["EyeballYMoveRight"]["_meter"] = this.charaData["EyeballYMove"]["_meter"];
            }
         }
         if(param2 <= 83)
         {
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(this.charaData["HairExPlus"]["_visible"][_loc4_] && hairExModified)
               {
                  this.charaData["HairEx" + _loc4_]["_shadow"] = 1;
               }
               _loc4_++;
            }
         }
         if(param2 <= 84)
         {
            if(_loc43_)
            {
               if(this.charaData["HeadScale"]["_meter"] >= 50)
               {
                  _loc62_ = 50 + (this.charaData["HeadScale"]["_meter"] - 50) / 2;
               }
               else
               {
                  _loc62_ = 50 - (50 - this.charaData["HeadScale"]["_meter"]) / 2;
               }
               this.charaData["HeadScale"]["_meter"] = _loc62_;
            }
         }
         if(param2 <= 85)
         {
            try
            {
               if(this.charaData["Ysyatu"]["_visible"][0] && _loc9_)
               {
                  if(this.charaData["Ysyatu"]["_menu"] == 1)
                  {
                     this.charaData["YsyatuBreastOption"]["_menu"] = 9;
                     this.DressCharaData["YsyatuBreastOption"][this.charaData["YsyatuBreastOption"]["_menu"]]["_color0"][1] = 0;
                     this.charaData["YsyatuBreastOption"]["_color0"][0] = this.charaData["Ysyatu"]["_color2"][0];
                     this.charaData["YsyatuBreastOption"]["_color1"][0] = this.charaData["Ysyatu"]["_color2"][0];
                     this.charaData["YsyatuBreastOption"]["_color2"][0] = 56;
                     this.DressCharaData["YsyatuBreastOption"][this.charaData["YsyatuBreastOption"]["_menu"]]["_color0"][0] = this.clone(this.charaData["Ysyatu"]["_color2"][0]);
                     this.DressCharaData["YsyatuBreastOption"][this.charaData["YsyatuBreastOption"]["_menu"]]["_color1"][0] = this.clone(this.charaData["Ysyatu"]["_color2"][0]);
                     this.DressCharaData["YsyatuBreastOption"][this.charaData["YsyatuBreastOption"]["_menu"]]["_color2"][0] = 56;
                     this.charaData["Ysyatu"]["_color2"][0] = this.charaData["Ysyatu"]["_color1"][0];
                     this.DressCharaData["Ysyatu"][this.charaData["Ysyatu"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Ysyatu"]["_color1"]);
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 8)
                  {
                     this.charaData["YsyatuBreastOption"]["_menu"] = 7;
                     this.DressCharaData["YsyatuBreastOption"][this.charaData["YsyatuBreastOption"]["_menu"]]["_color0"][1] = 0;
                     this.charaData["YsyatuBreastOption"]["_color0"][0] = this.charaData["Ysyatu"]["_color2"][0];
                     this.charaData["YsyatuBreastOption"]["_color1"][0] = this.charaData["Ysyatu"]["_color2"][0];
                     this.DressCharaData["YsyatuBreastOption"][this.charaData["YsyatuBreastOption"]["_menu"]]["_color0"][0] = this.clone(this.charaData["Ysyatu"]["_color2"][0]);
                     this.DressCharaData["YsyatuBreastOption"][this.charaData["YsyatuBreastOption"]["_menu"]]["_color1"][0] = this.clone(this.charaData["Ysyatu"]["_color2"][0]);
                  }
                  else
                  {
                     this.charaData["YsyatuBreastOption"]["_menu"] = 0;
                  }
               }
               if(this.charaData["Seihuku"]["_visible"][0] && _loc8_)
               {
                  if(this.charaData["Seihuku"]["_menu"] == 0)
                  {
                     this.charaData["SeihukuBreastOption"]["_menu"] = 0;
                     this.charaData["Seihuku"]["_color2"][0] = this.charaData["Seihuku"]["_color0"][0];
                     this.charaData["Seihuku"]["_color2"][0] = this.charaData["Seihuku"]["_color0"][0];
                     this.DressCharaData["Seihuku"][this.charaData["Seihuku"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Seihuku"]["_color0"][0]);
                     this.DressCharaData["Seihuku"][this.charaData["Seihuku"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Seihuku"]["_color0"][0]);
                  }
                  else if(this.charaData["Seihuku"]["_menu"] == 0)
                  {
                     this.charaData["SeihukuBreastOption"]["_menu"] = 0;
                  }
                  else if(this.charaData["Seihuku"]["_menu"] == 2)
                  {
                     this.charaData["SeihukuBreastOption"]["_menu"] = 7;
                     this.charaData["SeihukuBreastOption"]["_color0"][0] = this.charaData["Seihuku"]["_color1"][0];
                     this.charaData["SeihukuBreastOption"]["_color1"][0] = this.charaData["Seihuku"]["_color1"][0];
                     this.DressCharaData["SeihukuBreastOption"][this.charaData["SeihukuBreastOption"]["_menu"]]["_color0"][0] = this.clone(this.charaData["Seihuku"]["_color1"][0]);
                     this.DressCharaData["SeihukuBreastOption"][this.charaData["SeihukuBreastOption"]["_menu"]]["_color1"][0] = this.clone(this.charaData["Seihuku"]["_color1"][0]);
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 86)
         {
            try
            {
               if(this.charaData["Megane"]["_visible"][0] && _loc44_)
               {
                  if(this.charaData["Megane"]["_menu"] == 8 || this.charaData["Megane"]["_menu"] == 9 || this.charaData["Megane"]["_menu"] == 15 || this.charaData["Megane"]["_menu"] == 16 || this.charaData["Megane"]["_menu"] == 21 || this.charaData["Megane"]["_menu"] == 24 || this.charaData["Megane"]["_menu"] == 25)
                  {
                     this.charaData["Megane"]["_depth"] = 2;
                  }
                  else if(this.charaData["Megane"]["_menu"] == 0 || this.charaData["Megane"]["_menu"] == 1 || this.charaData["Megane"]["_menu"] == 2 || this.charaData["Megane"]["_menu"] == 3 || this.charaData["Megane"]["_menu"] == 4 || this.charaData["Megane"]["_menu"] == 5 || this.charaData["Megane"]["_menu"] == 6 || this.charaData["Megane"]["_menu"] == 7 || this.charaData["Megane"]["_menu"] == 17 || this.charaData["Megane"]["_menu"] == 18 || this.charaData["Megane"]["_menu"] == 19 || this.charaData["Megane"]["_menu"] == 22 || this.charaData["Megane"]["_menu"] == 23 || this.charaData["Megane"]["_menu"] == 28 || this.charaData["Megane"]["_menu"] == 29)
                  {
                     this.charaData["Megane"]["_depth"] = 1;
                  }
                  else if(this.charaData["Megane"]["_menu"] == 26 || this.charaData["Megane"]["_menu"] == 27 || this.charaData["Megane"]["_menu"] == 30)
                  {
                     this.charaData["Megane"]["_depth"] = 1;
                  }
                  if(this.charaData["Megane"]["_menu"] == 9)
                  {
                     this.charaData["Megane"]["_g0"] = 1;
                     this.charaData["Megane"]["_color2"][0] = this.charaData["Megane"]["_color1"][0];
                     this.DressCharaData["Megane"][this.charaData["Megane"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Megane"]["_color1"][0]);
                     this.charaData["Megane"]["_color1"][0] = this.charaData["Megane"]["_color0"][0];
                     this.DressCharaData["Megane"][this.charaData["Megane"]["_menu"]]["_color1"][0] = this.clone(this.charaData["Megane"]["_color0"][0]);
                     this.charaData["Megane"]["_color0"][0] = 55;
                     this.DressCharaData["Megane"][this.charaData["Megane"]["_menu"]]["_color0"][0] = 55;
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 87)
         {
            try
            {
               if(this.charaData["Hat"]["_visible"][0] && _loc45_)
               {
                  if(this.charaData["Hat"]["_menu"] == 42)
                  {
                     this.charaData["Hat"]["_color2"][0] = this.charaData["Hat"]["_color0"][0];
                     this.DressCharaData["Hat"][this.charaData["Hat"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Hat"]["_color0"][0]);
                     this.charaData["Hat"]["_color1"][0] = this.charaData["Hat"]["_color0"][0];
                     this.DressCharaData["Hat"][this.charaData["Hat"]["_menu"]]["_color1"][0] = this.clone(this.charaData["Hat"]["_color0"][0]);
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 88)
         {
            try
            {
               if(_loc46_)
               {
                  this.charaData["Eye"]["_depth"] = 0;
                  if(this.charaData["Eye"]["_menu"] == 1)
                  {
                     this.charaData["Eyelash"]["_visible"][0] = true;
                     this.charaData["Eyelash"]["_menu"] = 136;
                  }
                  else if(this.charaData["Eye"]["_menu"] == 2)
                  {
                     this.charaData["Eyelash"]["_visible"][0] = true;
                     this.charaData["Eyelash"]["_menu"] = 136;
                  }
                  else if(this.charaData["Eye"]["_menu"] == 4)
                  {
                     this.charaData["Eyelash"]["_visible"][0] = true;
                     this.charaData["Eyelash"]["_menu"] = 136;
                  }
                  else if(this.charaData["Eye"]["_menu"] == 14)
                  {
                     this.charaData["Eyelash"]["_visible"][0] = true;
                     this.charaData["Eyelash"]["_menu"] = 64;
                  }
                  else
                  {
                     this.charaData["Eyelash"]["_visible"][0] = false;
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 89)
         {
            try
            {
               if(hairExModified)
               {
                  _loc4_ = 0;
                  while(_loc4_ <= Main.hukusuuNum)
                  {
                     if(this.charaData["HairExPlus"]["_visible"][_loc4_])
                     {
                        this.charaData["HairExRotationPlus" + _loc4_]["_meter"] = 0;
                     }
                     _loc4_++;
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 90)
         {
            try
            {
               if(this.charaData["Ysyatu"]["_visible"][0] && _loc9_)
               {
                  if(this.charaData["Ysyatu"]["_menu"] == 0)
                  {
                     this.charaData["Ysyatu"]["_color2"][0] = this.charaData["Ysyatu"]["_color0"][0];
                     this.DressCharaData["Ysyatu"][this.charaData["Ysyatu"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Ysyatu"]["_color0"][0]);
                     this.charaData["YsyatuOption"]["_menu"] = 0;
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 1)
                  {
                     this.charaData["YsyatuOption"]["_menu"] = 34;
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 2)
                  {
                     this.charaData["YsyatuOption"]["_menu"] = 0;
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 3)
                  {
                     if(this.charaData["Ysyatu"]["_g1"] == 0)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 1;
                     }
                     else if(this.charaData["Ysyatu"]["_g1"] == 1)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 19;
                     }
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 4)
                  {
                     if(this.charaData["Ysyatu"]["_g1"] == 0)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 3;
                     }
                     else if(this.charaData["Ysyatu"]["_g1"] == 1)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 19;
                     }
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 5)
                  {
                     if(this.charaData["Ysyatu"]["_g1"] == 0)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 1;
                     }
                     else if(this.charaData["Ysyatu"]["_g1"] == 1)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 19;
                     }
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 6)
                  {
                     this.charaData["YsyatuOption"]["_menu"] = 19;
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 7)
                  {
                     this.charaData["YsyatuOption"]["_menu"] = 48;
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 8)
                  {
                     if(this.charaData["Ysyatu"]["_g1"] == 0)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 1;
                     }
                     else if(this.charaData["Ysyatu"]["_g1"] == 1)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 3;
                     }
                     else if(this.charaData["Ysyatu"]["_g1"] == 2)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 30;
                     }
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 9 || this.charaData["Ysyatu"]["_menu"] == 10)
                  {
                     if(this.charaData["Ysyatu"]["_g1"] == 0)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 14;
                     }
                     else if(this.charaData["Ysyatu"]["_g1"] == 1)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 5;
                     }
                     else if(this.charaData["Ysyatu"]["_g1"] == 2)
                     {
                        this.charaData["YsyatuOption"]["_menu"] = 19;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 91)
         {
            try
            {
               if(this.charaData["Tsyatu"]["_visible"][0] && _loc11_)
               {
                  try
                  {
                     if(this.charaData["Tsyatu"]["_menu"] == 10)
                     {
                        this.charaData["TsyatuDouOption"]["_menu"] = 7;
                        this.charaData["TsyatuDouOption"]["_number"] = 4;
                        this.charaData["TsyatuDouOption"]["_color0"][0] = this.charaData["Tsyatu"]["_color0"][0];
                        this.DressCharaData["TsyatuDouOption"][125]["_color0"][0] = this.clone(this.charaData["Tsyatu"]["_color0"][0]);
                        this.DressCharaData["TsyatuDouOption"][125]["_color0"][1] = 1;
                        this.charaData["TsyatuDouOption"]["_color1"][0] = this.charaData["Tsyatu"]["_color0"][0];
                        this.DressCharaData["TsyatuDouOption"][125]["_color1"][0] = this.clone(this.charaData["Tsyatu"]["_color0"][0]);
                        this.DressCharaData["TsyatuDouOption"][125]["_color1"][1] = 1;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
               if(this.charaData["Vest"]["_visible"][0] && _loc10_)
               {
                  try
                  {
                     if(this.charaData["Vest"]["_menu"] == 4)
                     {
                        this.charaData["VestDouOption"]["_menu"] = 7;
                        this.charaData["VestDouOption"]["_number"] = 4;
                        this.charaData["VestDouOption"]["_color0"][0] = this.charaData["Vest"]["_color0"][0];
                        this.DressCharaData["VestDouOption"][125]["_color0"][0] = this.clone(this.charaData["Vest"]["_color0"][0]);
                        this.DressCharaData["VestDouOption"][125]["_color0"][1] = 1;
                        this.charaData["VestDouOption"]["_color1"][0] = this.charaData["Vest"]["_color0"][0];
                        this.DressCharaData["VestDouOption"][125]["_color1"][0] = this.clone(this.charaData["Vest"]["_color0"][0]);
                        this.DressCharaData["VestDouOption"][125]["_color1"][1] = 1;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
               if(this.charaData["Seihuku"]["_visible"][0] && _loc8_)
               {
                  try
                  {
                     if(this.charaData["Seihuku"]["_menu"] == 0)
                     {
                        this.charaData["SeihukuDouOption"]["_menu"] = 125;
                        this.charaData["SeihukuDouOption"]["_number"] = 3;
                        this.charaData["SeihukuDouOption"]["_color0"][0] = this.charaData["Seihuku"]["_color0"][0];
                        this.DressCharaData["SeihukuDouOption"][125]["_color0"][0] = this.clone(this.charaData["Seihuku"]["_color0"][0]);
                        this.DressCharaData["SeihukuDouOption"][125]["_color0"][1] = 1;
                        this.charaData["SeihukuDouOption"]["_color1"][0] = this.charaData["Seihuku"]["_color0"][0];
                        this.DressCharaData["SeihukuDouOption"][125]["_color1"][0] = this.clone(this.charaData["Seihuku"]["_color0"][0]);
                        this.DressCharaData["SeihukuDouOption"][125]["_color1"][1] = 1;
                        this.charaData["SeihukuDouOption"]["_color2"][0] = this.charaData["Seihuku"]["_color0"][0];
                        this.DressCharaData["SeihukuDouOption"][125]["_color2"][0] = this.clone(this.charaData["Seihuku"]["_color0"][0]);
                        this.DressCharaData["SeihukuDouOption"][125]["_color2"][1] = 1;
                     }
                     else if(this.charaData["Seihuku"]["_menu"] == 1)
                     {
                        this.charaData["SeihukuDouOption"]["_menu"] = 7;
                        this.charaData["SeihukuDouOption"]["_number"] = 5;
                        this.charaData["SeihukuDouOption"]["_color0"][0] = this.charaData["Seihuku"]["_color2"][0];
                        this.DressCharaData["SeihukuDouOption"][7]["_color0"][0] = this.clone(this.charaData["Seihuku"]["_color2"][0]);
                        this.DressCharaData["SeihukuDouOption"][7]["_color0"][1] = 1;
                        this.charaData["SeihukuDouOption"]["_color1"][0] = this.charaData["Seihuku"]["_color2"][0];
                        this.DressCharaData["SeihukuDouOption"][7]["_color1"][0] = this.clone(this.charaData["Seihuku"]["_color2"][0]);
                        this.DressCharaData["SeihukuDouOption"][7]["_color1"][1] = 1;
                        this.charaData["SeihukuDouOption"]["_color2"][0] = this.charaData["Seihuku"]["_color2"][0];
                        this.DressCharaData["SeihukuDouOption"][7]["_color2"][0] = this.clone(this.charaData["Seihuku"]["_color2"][0]);
                        this.DressCharaData["SeihukuDouOption"][7]["_color2"][1] = 1;
                     }
                     else if(this.charaData["Seihuku"]["_menu"] == 2)
                     {
                        this.charaData["SeihukuDouOption"]["_menu"] = 7;
                        this.charaData["SeihukuDouOption"]["_number"] = 5;
                        this.charaData["SeihukuDouOption"]["_color0"][0] = this.charaData["Seihuku"]["_color1"][0];
                        this.DressCharaData["SeihukuDouOption"][7]["_color0"][0] = this.clone(this.charaData["Seihuku"]["_color1"][0]);
                        this.DressCharaData["SeihukuDouOption"][7]["_color0"][1] = 1;
                        this.charaData["SeihukuDouOption"]["_color1"][0] = this.charaData["Seihuku"]["_color1"][0];
                        this.DressCharaData["SeihukuDouOption"][7]["_color1"][0] = this.clone(this.charaData["Seihuku"]["_color1"][0]);
                        this.DressCharaData["SeihukuDouOption"][7]["_color1"][1] = 1;
                        this.charaData["SeihukuDouOption"]["_color2"][0] = this.charaData["Seihuku"]["_color1"][0];
                        this.DressCharaData["SeihukuDouOption"][7]["_color2"][0] = this.clone(this.charaData["Seihuku"]["_color1"][0]);
                        this.DressCharaData["SeihukuDouOption"][7]["_color2"][1] = 1;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
               if(this.charaData["Ysyatu"]["_visible"][0] && _loc9_)
               {
                  try
                  {
                     if(this.charaData["Ysyatu"]["_menu"] == 3)
                     {
                        if(this.charaData["YsyatuOption"]["_menu"] == 0)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 0;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 1)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 0;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 2)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 3;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 3)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 0;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 4)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 0;
                           this.charaData["YsyatuOption"]["_number"] = 3;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 5)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 3;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 6)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 0;
                           this.charaData["YsyatuOption"]["_number"] = 4;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 7)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 0;
                           this.charaData["YsyatuOption"]["_number"] = 5;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 8)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 3;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 9)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 18;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 10)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 19;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 11)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 9;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 12)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 20;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 13)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 21;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 14)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 9;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 15)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 22;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 16)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 23;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 17)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 9;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 18)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 12;
                           this.charaData["YsyatuOption"]["_number"] = 3;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 19)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 15;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                     }
                     else if(this.charaData["Ysyatu"]["_menu"] == 4)
                     {
                        if(this.charaData["YsyatuOption"]["_menu"] == 0)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 1)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 2)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 4;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 3)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 4)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 3;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 5)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 4;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 6)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 4;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 7)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 5;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 8)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 4;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 9)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 18;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 10)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 19;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 11)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 10;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 12)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 20;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 13)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 21;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 14)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 10;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 15)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 22;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 16)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 23;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 17)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 10;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 18)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 13;
                           this.charaData["YsyatuOption"]["_number"] = 3;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 19)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 15;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                     }
                     else if(this.charaData["Ysyatu"]["_menu"] == 5)
                     {
                        if(this.charaData["YsyatuOption"]["_menu"] == 0)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 1)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 2)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 5;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 3)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 4)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 3;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 5)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 5;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 6)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 4;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 7)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 5;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 8)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 5;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 9)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 8;
                           this.charaData["YsyatuOption"]["_number"] = 18;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 10)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 8;
                           this.charaData["YsyatuOption"]["_number"] = 19;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 11)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 11;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 12)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 8;
                           this.charaData["YsyatuOption"]["_number"] = 20;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 13)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 8;
                           this.charaData["YsyatuOption"]["_number"] = 21;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 14)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 11;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 15)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 8;
                           this.charaData["YsyatuOption"]["_number"] = 22;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 16)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 8;
                           this.charaData["YsyatuOption"]["_number"] = 23;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 17)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 11;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 18)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 14;
                           this.charaData["YsyatuOption"]["_number"] = 3;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 19)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 15;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                     }
                     else if(this.charaData["Ysyatu"]["_menu"] == 6)
                     {
                        this.Version91Fc2();
                     }
                     else if(this.charaData["Ysyatu"]["_menu"] == 8)
                     {
                        if(this.charaData["YsyatuOption"]["_menu"] == 0)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 1)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 2)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 3)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 4)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 4;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 5)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 6)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 3;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 7)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 8)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 3;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 9)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 4;
                           this.charaData["YsyatuOption"]["_number"] = 1;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 10)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 4;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 11)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 1;
                           this.charaData["YsyatuOption"]["_number"] = 5;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 12)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 4;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 13)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 2;
                           this.charaData["YsyatuOption"]["_number"] = 5;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 14)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 4;
                           this.charaData["YsyatuOption"]["_number"] = 2;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 15)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 18;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 16)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 19;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 17)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 18;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 18)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 19;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 19)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 9;
                           this.charaData["YsyatuOption"]["_number"] = 9;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 20)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 20;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 21)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 21;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 22)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 20;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 23)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 21;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 24)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 9;
                           this.charaData["YsyatuOption"]["_number"] = 10;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 25)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 22;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 26)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 6;
                           this.charaData["YsyatuOption"]["_number"] = 23;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 27)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 22;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 28)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 7;
                           this.charaData["YsyatuOption"]["_number"] = 23;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 29)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 10;
                           this.charaData["YsyatuOption"]["_number"] = 3;
                        }
                        else if(this.charaData["YsyatuOption"]["_menu"] == 30)
                        {
                           this.charaData["YsyatuOption"]["_menu"] = 11;
                           this.charaData["YsyatuOption"]["_number"] = 0;
                        }
                     }
                     else if(this.charaData["Ysyatu"]["_menu"] == 9 || this.charaData["Ysyatu"]["_menu"] == 10)
                     {
                        this.Version91Fc2();
                     }
                     else if(this.charaData["Ysyatu"]["_menu"] == 0 || this.charaData["Ysyatu"]["_menu"] == 1 || this.charaData["Ysyatu"]["_menu"] == 7 || this.charaData["Ysyatu"]["_menu"] == 11 || this.charaData["Ysyatu"]["_menu"] == 12 || this.charaData["Ysyatu"]["_menu"] == 13 || this.charaData["Ysyatu"]["_menu"] == 14 || this.charaData["Ysyatu"]["_menu"] == 15)
                     {
                        this.Version91Fc();
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         if(param2 <= 93)
         {
            if(this.charaData["Hat"]["_visible"][0] && _loc45_)
            {
               this.charaData["Hat"]["_hair0"] = 1;
               this.charaData["Hat"]["_hair1"] = 1;
               this.charaData["Hat"]["_hair2"] = 1;
               this.charaData["Hat"]["_hair3"] = 1;
            }
         }
         if(param2 <= 94)
         {
            if(this.charaData["Hat"]["_visible"][0] && _loc45_)
            {
               this.charaData["Hat"]["_hair4"] = 1;
            }
         }
         if(param2 <= 95)
         {
            _loc4_ = 0;
            while(_loc4_ <= Main.hukusuuNum)
            {
               if(this.charaData["MarkPlus"]["_visible"][_loc4_] && faceMarkModified)
               {
                  this.charaData["MarkAlpha" + _loc4_]["_meter"] = 100;
                  this.charaData["Mark" + _loc4_]["_depth"] = 0;
               }
               _loc4_++;
            }
         }
         if(param2 <= 96)
         {
            if(this.charaData["Seihuku"]["_visible"][0] && _loc8_)
            {
               if(this.charaData["Seihuku"]["_menu"] == 2)
               {
                  this.charaData["Seihuku"]["_color1"][0] = this.charaData["Seihuku"]["_color2"][0];
                  this.charaData["Seihuku"]["_color2"][0] = this.charaData["Seihuku"]["_color0"][0];
                  this.DressCharaData["Seihuku"][this.charaData["Seihuku"]["_menu"]]["_color1"][0] = this.clone(this.charaData["Seihuku"]["_color1"][0]);
                  this.DressCharaData["Seihuku"][this.charaData["Seihuku"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Seihuku"]["_color2"][0]);
               }
            }
            this.charaData["EyebrowRotation"]["_meter"] = 75;
            if(armTabModified)
            {
               _loc4_ = 0;
               while(_loc4_ <= 1)
               {
                  if(_loc4_ == 0)
                  {
                     _loc63_ = "Left";
                  }
                  else
                  {
                     _loc63_ = "Right";
                  }
                  if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 1)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 0;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 4)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 10;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 6)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 20;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 9)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 30;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 12)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 40;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 15)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 50;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 18)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 60;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 20)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 70;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 23)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 80;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 26)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 90;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 29)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 100;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 31)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 110;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 34)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 120;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 37)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 130;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 40)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 140;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 43)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 150;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 45)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 160;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 48)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 170;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 51)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 180;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 54)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 190;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 56)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 200;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 59)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 210;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 62)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 220;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 65)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 230;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 68)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 240;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 70)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 250;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 73)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 260;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 76)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 270;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 79)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 280;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 81)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 290;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 84)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 300;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 87)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 310;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 90)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 320;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 93)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 330;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 95)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 340;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 98)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 350;
                  }
                  else if(this.charaData[_loc63_ + "Arm2"]["_meter"] <= 100)
                  {
                     this.charaData[_loc63_ + "Arm2"]["_meter"] = 360;
                  }
                  _loc4_++;
               }
            }
         }
         if(param2 <= 99)
         {
            if(_loc47_)
            {
               this.charaData["Mimi"]["_mimihat"] = 0;
            }
         }
         if(param2 <= 100)
         {
            if(_loc48_)
            {
               _loc64_ = this.charaData["Bura"]["_menu"];
               if(Dress_data.BuraData[_loc64_]["Pantu"] != 0 && this.charaData["Bura"]["_visible"][0])
               {
                  this.charaData["Tights"]["_depth"] = 0;
               }
               else
               {
                  this.charaData["Tights"]["_depth"] = 1;
               }
            }
            if(_loc49_)
            {
               if(Dress_data.BuraData[_loc64_]["Pantu"] != 0 && this.charaData["Bura"]["_visible"][0])
               {
                  this.charaData["Pantu"]["_depth"] = 1;
               }
               else
               {
                  this.charaData["Pantu"]["_depth"] = 0;
               }
            }
         }
         if(param2 <= 101)
         {
            if(this.charaData["Socks0"]["_visible"][0] && _loc41_)
            {
               if(this.charaData["Socks0"]["_menu"] == 4 || this.charaData["Socks0"]["_menu"] == 8 || this.charaData["Socks0"]["_menu"] == 11 || this.charaData["Socks0"]["_menu"] == 13 || this.charaData["Socks0"]["_menu"] == 18 || this.charaData["Socks0"]["_menu"] == 32)
               {
                  this.charaData["Socks0"]["_color1"][0] = this.charaData["Socks0"]["_color0"][0];
                  this.charaData["Socks0"]["_color2"][0] = this.charaData["Socks0"]["_color0"][0];
                  this.DressCharaData["Socks0"][this.charaData["Socks0"]["_menu"]]["_color1"][0] = this.clone(this.charaData["Socks0"]["_color0"][0]);
                  this.DressCharaData["Socks0"][this.charaData["Socks0"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Socks0"]["_color0"][0]);
               }
               else if(this.charaData["Socks0"]["_menu"] == 33)
               {
                  this.charaData["Socks0"]["_color2"][0] = this.charaData["Socks0"]["_color0"][0];
                  this.DressCharaData["Socks0"][this.charaData["Socks0"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Socks0"]["_color0"][0]);
               }
               else if(this.charaData["Socks0"]["_menu"] == 17)
               {
                  this.charaData["Socks0"]["_color2"][0] = this.charaData["Socks0"]["_color1"][0];
                  this.DressCharaData["Socks0"][this.charaData["Socks0"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Socks0"]["_color1"][0]);
               }
            }
            if(this.charaData["Socks1"]["_visible"][0] && _loc42_)
            {
               if(this.charaData["Socks1"]["_menu"] == 4 || this.charaData["Socks1"]["_menu"] == 8 || this.charaData["Socks1"]["_menu"] == 11 || this.charaData["Socks1"]["_menu"] == 13 || this.charaData["Socks1"]["_menu"] == 18 || this.charaData["Socks1"]["_menu"] == 32)
               {
                  this.charaData["Socks1"]["_color1"][0] = this.charaData["Socks1"]["_color0"][0];
                  this.charaData["Socks1"]["_color2"][0] = this.charaData["Socks1"]["_color0"][0];
                  this.DressCharaData["Socks1"][this.charaData["Socks1"]["_menu"]]["_color1"][0] = this.clone(this.charaData["Socks1"]["_color0"][0]);
                  this.DressCharaData["Socks1"][this.charaData["Socks1"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Socks1"]["_color0"][0]);
               }
               else if(this.charaData["Socks1"]["_menu"] == 33)
               {
                  this.charaData["Socks1"]["_color2"][0] = this.charaData["Socks1"]["_color0"][0];
                  this.DressCharaData["Socks1"][this.charaData["Socks1"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Socks1"]["_color0"][0]);
               }
               else if(this.charaData["Socks1"]["_menu"] == 17)
               {
                  this.charaData["Socks1"]["_color2"][0] = this.charaData["Socks1"]["_color1"][0];
                  this.DressCharaData["Socks1"][this.charaData["Socks1"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Socks1"]["_color1"][0]);
               }
            }
         }
         if(param2 <= 102)
         {
            if(this.charaData["Tsyatu"]["_visible"][0] && _loc11_)
            {
               try
               {
                  if(this.charaData["Tsyatu"]["_menu"] == 4 || this.charaData["Tsyatu"]["_menu"] == 5 || this.charaData["Tsyatu"]["_menu"] == 12 || this.charaData["Tsyatu"]["_menu"] == 17)
                  {
                     if(this.charaData["TsyatuSkirt"]["_menu"] == 2)
                     {
                        this.charaData["TsyatuSkirt"]["_menu"] = 34;
                     }
                  }
                  else if(this.charaData["Tsyatu"]["_menu"] == 0 || this.charaData["Tsyatu"]["_menu"] == 1 || this.charaData["Tsyatu"]["_menu"] == 2 || this.charaData["Tsyatu"]["_menu"] == 3 || this.charaData["Tsyatu"]["_menu"] == 6 || this.charaData["Tsyatu"]["_menu"] == 7 || this.charaData["Tsyatu"]["_menu"] == 8 || this.charaData["Tsyatu"]["_menu"] == 9 || this.charaData["Tsyatu"]["_menu"] == 10 || this.charaData["Tsyatu"]["_menu"] == 11 || this.charaData["Tsyatu"]["_menu"] == 13 || this.charaData["Tsyatu"]["_menu"] == 14 || this.charaData["Tsyatu"]["_menu"] == 15 || this.charaData["Tsyatu"]["_menu"] == 16)
                  {
                     if(this.charaData["TsyatuSkirt"]["_menu"] == 2)
                     {
                        this.charaData["TsyatuSkirt"]["_menu"] = 33;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
            }
            if(this.charaData["Vest"]["_visible"][0] && _loc10_)
            {
               try
               {
                  if(this.charaData["Vest"]["_menu"] == 7 || this.charaData["Vest"]["_menu"] == 12)
                  {
                     if(this.charaData["VestSkirt"]["_menu"] == 2)
                     {
                        this.charaData["VestSkirt"]["_menu"] = 34;
                     }
                  }
                  else if(this.charaData["Vest"]["_menu"] == 0 || this.charaData["Vest"]["_menu"] == 1 || this.charaData["Vest"]["_menu"] == 2 || this.charaData["Vest"]["_menu"] == 3 || this.charaData["Vest"]["_menu"] == 4 || this.charaData["Vest"]["_menu"] == 5 || this.charaData["Vest"]["_menu"] == 6 || this.charaData["Vest"]["_menu"] == 8 || this.charaData["Vest"]["_menu"] == 9 || this.charaData["Vest"]["_menu"] == 10 || this.charaData["Vest"]["_menu"] == 10 || this.charaData["Vest"]["_menu"] == 11)
                  {
                     if(this.charaData["VestSkirt"]["_menu"] == 2)
                     {
                        this.charaData["VestSkirt"]["_menu"] = 33;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
            }
            if(this.charaData["Ysyatu"]["_visible"][0] && _loc9_)
            {
               try
               {
                  if(this.charaData["Ysyatu"]["_menu"] == 6 || this.charaData["Ysyatu"]["_menu"] == 9)
                  {
                     if(this.charaData["YsyatuSkirt"]["_menu"] == 2)
                     {
                        this.charaData["YsyatuSkirt"]["_menu"] = 34;
                     }
                  }
                  else if(this.charaData["Ysyatu"]["_menu"] == 0 || this.charaData["Ysyatu"]["_menu"] == 1 || this.charaData["Ysyatu"]["_menu"] == 2 || this.charaData["Ysyatu"]["_menu"] == 3 || this.charaData["Ysyatu"]["_menu"] == 4 || this.charaData["Ysyatu"]["_menu"] == 5 || this.charaData["Ysyatu"]["_menu"] == 7 || this.charaData["Ysyatu"]["_menu"] == 8 || this.charaData["Ysyatu"]["_menu"] == 10 || this.charaData["Ysyatu"]["_menu"] == 11 || this.charaData["Ysyatu"]["_menu"] == 12 || this.charaData["Ysyatu"]["_menu"] == 13 || this.charaData["Ysyatu"]["_menu"] == 14 || this.charaData["Ysyatu"]["_menu"] == 15 || this.charaData["Ysyatu"]["_menu"] == 16)
                  {
                     if(this.charaData["YsyatuSkirt"]["_menu"] == 2)
                     {
                        this.charaData["YsyatuSkirt"]["_menu"] = 33;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
            }
         }
         if(param2 <= 103)
         {
            if(this.charaData["Hat"]["_visible"][0] && _loc45_)
            {
               if(this.charaData["Hat"]["_menu"] == 8)
               {
                  this.charaData["Hat"]["_color1"][0] = this.charaData["Hat"]["_color0"][0];
                  this.DressCharaData["Hat"][this.charaData["Hat"]["_menu"]]["_color1"][0] = this.clone(this.charaData["Hat"]["_color0"][0]);
               }
               else if(this.charaData["Hat"]["_menu"] == 9)
               {
                  this.charaData["Hat"]["_color2"][0] = this.charaData["Hat"]["_color0"][0];
                  this.DressCharaData["Hat"][this.charaData["Hat"]["_menu"]]["_color2"][0] = this.clone(this.charaData["Hat"]["_color0"][0]);
               }
            }
         }
         if(param2 <= 104)
         {
            if (hairExModified || ribbonModified || beltModified)
            {
               for (var i = 0; i <= Main.hukusuuNum; i++) {
                  if (hairExModified && this.charaData["HairExPlus"]["_visible"][i]) {
                     this.charaData["HairExAdd" + i]["_add0"] = 0;
                     this.charaData["HairExAlpha" + i]["_meter"] = 100;
                  }

                  if(ribbonModified && this.charaData["RibonPlus"]["_visible"][i])
                  {
                     this.charaData["RibonAlpha" + i]["_meter"] = 100;
                  }

                  if(beltModified && this.charaData["BeltPlus"]["_visible"][i])
                  {
                     this.charaData["BeltAlpha" + i]["_meter"] = 100;
                  }
               }
            }
         }
         if(param2 <= 105)
         {
            if (ribbonModified || beltModified || faceMarkModified || charaImageModified) {
               for (var i = 0; i <= Main.hukusuuNum; i++) {
                  if (charaImageModified && this.charaData["CharaLoadPlus"]["_visible"][i]) {
                     this.charaData["CharaLoadFineX" + i]["_meter"] = 50;
                     this.charaData["CharaLoadFineY" + i]["_meter"] = 50;
                  }

                  if(ribbonModified && this.charaData["RibonPlus"]["_visible"][i]) {
                     this.charaData["RibonFineX" + i]["_meter"] = 50;
                     this.charaData["RibonFineY" + i]["_meter"] = 50;
                  }

                  if(beltModified && this.charaData["BeltPlus"]["_visible"][i]) {
                     this.charaData["BeltFineX" + i]["_meter"] = 50;
                     this.charaData["BeltFineY" + i]["_meter"] = 50;
                  }

                  if(faceMarkModified && this.charaData["MarkPlus"]["_visible"][i]) {
                     this.charaData["MarkVary" + i]["_menu"] = 0;
                     this.charaData["MarkAdd" + i]["_add0"] = 0;
                  }
               }
            }

            if (penisModified) {
               this.charaData["TinSizeAuto"]["_check"] = true;
               this.charaData["TinScaleX"]["_meter"] = 50;
               this.charaData["TinScaleY"]["_meter"] = 50;
               this.charaData["TinOffsetX"]["_meter"] = 50;
               this.charaData["TinOffsetY"]["_meter"] = 50;
            }

            if (eyebrowTabModified) {
               this.charaData["EyebrowX"]["_meter"] = 50;
            }

            if (eyebrowEmotionModified) {
               this.charaData["EyebrowMoveHorizontalLeft"]["_meter"] = 50;
               this.charaData["EyebrowMoveHorizontalRight"]["_meter"] = 50;
            }

            if (armTabModified) {
               this.charaData["LeftArmFreeRotation"]["_check"] = false;
               this.charaData["RightArmFreeRotation"]["_check"] = false;
            }
         }
      }
      
      private function Version91Fc2() : void
      {
         if(this.charaData["YsyatuOption"]["_menu"] == 0)
         {
            this.charaData["YsyatuOption"]["_menu"] = 0;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 1)
         {
            this.charaData["YsyatuOption"]["_menu"] = 0;
            this.charaData["YsyatuOption"]["_number"] = 1;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 2)
         {
            this.charaData["YsyatuOption"]["_menu"] = 3;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 3)
         {
            this.charaData["YsyatuOption"]["_menu"] = 0;
            this.charaData["YsyatuOption"]["_number"] = 2;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 4)
         {
            this.charaData["YsyatuOption"]["_menu"] = 0;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 5)
         {
            this.charaData["YsyatuOption"]["_menu"] = 3;
            this.charaData["YsyatuOption"]["_number"] = 1;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 6)
         {
            this.charaData["YsyatuOption"]["_menu"] = 0;
            this.charaData["YsyatuOption"]["_number"] = 4;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 7)
         {
            this.charaData["YsyatuOption"]["_menu"] = 0;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 8)
         {
            this.charaData["YsyatuOption"]["_menu"] = 3;
            this.charaData["YsyatuOption"]["_number"] = 2;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 9)
         {
            this.charaData["YsyatuOption"]["_menu"] = 5;
            this.charaData["YsyatuOption"]["_number"] = 18;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 10)
         {
            this.charaData["YsyatuOption"]["_menu"] = 5;
            this.charaData["YsyatuOption"]["_number"] = 19;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 11)
         {
            this.charaData["YsyatuOption"]["_menu"] = 8;
            this.charaData["YsyatuOption"]["_number"] = 9;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 12)
         {
            this.charaData["YsyatuOption"]["_menu"] = 5;
            this.charaData["YsyatuOption"]["_number"] = 20;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 13)
         {
            this.charaData["YsyatuOption"]["_menu"] = 5;
            this.charaData["YsyatuOption"]["_number"] = 21;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 14)
         {
            this.charaData["YsyatuOption"]["_menu"] = 8;
            this.charaData["YsyatuOption"]["_number"] = 10;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 15)
         {
            this.charaData["YsyatuOption"]["_menu"] = 5;
            this.charaData["YsyatuOption"]["_number"] = 22;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 16)
         {
            this.charaData["YsyatuOption"]["_menu"] = 5;
            this.charaData["YsyatuOption"]["_number"] = 23;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 17)
         {
            this.charaData["YsyatuOption"]["_menu"] = 8;
            this.charaData["YsyatuOption"]["_number"] = 11;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 18)
         {
            this.charaData["YsyatuOption"]["_menu"] = 10;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 19)
         {
            this.charaData["YsyatuOption"]["_menu"] = 11;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
      }
      
      private function Version91Fc() : void
      {
         if(this.charaData["YsyatuOption"]["_menu"] == 0)
         {
            this.charaData["YsyatuOption"]["_number"] = 1;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 1)
         {
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 2)
         {
            this.charaData["YsyatuOption"]["_menu"] = 1;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 3)
         {
            this.charaData["YsyatuOption"]["_menu"] = 1;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 4)
         {
            this.charaData["YsyatuOption"]["_menu"] = 2;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 5)
         {
            this.charaData["YsyatuOption"]["_menu"] = 3;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 6)
         {
            this.charaData["YsyatuOption"]["_menu"] = 3;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 7)
         {
            this.charaData["YsyatuOption"]["_menu"] = 4;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 8)
         {
            this.charaData["YsyatuOption"]["_menu"] = 4;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 9)
         {
            this.charaData["YsyatuOption"]["_menu"] = 4;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 10)
         {
            this.charaData["YsyatuOption"]["_menu"] = 5;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 11)
         {
            this.charaData["YsyatuOption"]["_menu"] = 5;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 12)
         {
            this.charaData["YsyatuOption"]["_menu"] = 5;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 13)
         {
            this.charaData["YsyatuOption"]["_menu"] = 6;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 14)
         {
            this.charaData["YsyatuOption"]["_menu"] = 6;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 15)
         {
            this.charaData["YsyatuOption"]["_menu"] = 6;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 16)
         {
            this.charaData["YsyatuOption"]["_menu"] = 7;
            this.charaData["YsyatuOption"]["_number"] = 1;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 17)
         {
            this.charaData["YsyatuOption"]["_menu"] = 8;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 18)
         {
            this.charaData["YsyatuOption"]["_menu"] = 8;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 19)
         {
            this.charaData["YsyatuOption"]["_menu"] = 8;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 20)
         {
            this.charaData["YsyatuOption"]["_menu"] = 9;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 21)
         {
            this.charaData["YsyatuOption"]["_menu"] = 10;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 22)
         {
            this.charaData["YsyatuOption"]["_menu"] = 10;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 23)
         {
            this.charaData["YsyatuOption"]["_menu"] = 11;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 24)
         {
            this.charaData["YsyatuOption"]["_menu"] = 11;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 25)
         {
            this.charaData["YsyatuOption"]["_menu"] = 11;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 26)
         {
            this.charaData["YsyatuOption"]["_menu"] = 12;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 27)
         {
            this.charaData["YsyatuOption"]["_menu"] = 12;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 28)
         {
            this.charaData["YsyatuOption"]["_menu"] = 12;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 29)
         {
            this.charaData["YsyatuOption"]["_menu"] = 13;
            this.charaData["YsyatuOption"]["_number"] = 1;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 30)
         {
            this.charaData["YsyatuOption"]["_menu"] = 14;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 31)
         {
            this.charaData["YsyatuOption"]["_menu"] = 14;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 32)
         {
            this.charaData["YsyatuOption"]["_menu"] = 14;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 33)
         {
            this.charaData["YsyatuOption"]["_menu"] = 15;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 34)
         {
            this.charaData["YsyatuOption"]["_menu"] = 16;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 35)
         {
            this.charaData["YsyatuOption"]["_menu"] = 16;
            this.charaData["YsyatuOption"]["_number"] = 2;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 36)
         {
            this.charaData["YsyatuOption"]["_menu"] = 17;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 37)
         {
            this.charaData["YsyatuOption"]["_menu"] = 17;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 38)
         {
            this.charaData["YsyatuOption"]["_menu"] = 17;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 39)
         {
            this.charaData["YsyatuOption"]["_menu"] = 18;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 40)
         {
            this.charaData["YsyatuOption"]["_menu"] = 18;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 41)
         {
            this.charaData["YsyatuOption"]["_menu"] = 18;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 42)
         {
            this.charaData["YsyatuOption"]["_menu"] = 19;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 43)
         {
            this.charaData["YsyatuOption"]["_menu"] = 19;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 44)
         {
            this.charaData["YsyatuOption"]["_menu"] = 19;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 45)
         {
            this.charaData["YsyatuOption"]["_menu"] = 20;
            this.charaData["YsyatuOption"]["_number"] = 1;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 46)
         {
            this.charaData["YsyatuOption"]["_menu"] = 21;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 47)
         {
            this.charaData["YsyatuOption"]["_menu"] = 21;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 48)
         {
            this.charaData["YsyatuOption"]["_menu"] = 21;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 49)
         {
            this.charaData["YsyatuOption"]["_menu"] = 22;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 50)
         {
            this.charaData["YsyatuOption"]["_menu"] = 23;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 51)
         {
            this.charaData["YsyatuOption"]["_menu"] = 23;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 52)
         {
            this.charaData["YsyatuOption"]["_menu"] = 24;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 53)
         {
            this.charaData["YsyatuOption"]["_menu"] = 24;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 54)
         {
            this.charaData["YsyatuOption"]["_menu"] = 24;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 55)
         {
            this.charaData["YsyatuOption"]["_menu"] = 25;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 56)
         {
            this.charaData["YsyatuOption"]["_menu"] = 25;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 57)
         {
            this.charaData["YsyatuOption"]["_menu"] = 25;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 58)
         {
            this.charaData["YsyatuOption"]["_menu"] = 26;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 59)
         {
            this.charaData["YsyatuOption"]["_menu"] = 26;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 60)
         {
            this.charaData["YsyatuOption"]["_menu"] = 26;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 61)
         {
            this.charaData["YsyatuOption"]["_menu"] = 27;
            this.charaData["YsyatuOption"]["_number"] = 0;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 62)
         {
            this.charaData["YsyatuOption"]["_menu"] = 27;
            this.charaData["YsyatuOption"]["_number"] = 3;
         }
         else if(this.charaData["YsyatuOption"]["_menu"] == 63)
         {
            this.charaData["YsyatuOption"]["_menu"] = 27;
            this.charaData["YsyatuOption"]["_number"] = 5;
         }
      }
      
      private function Version76Fc(param1:int) : void
      {
         if(this.charaData["Kutu" + param1]["_visible"][0])
         {
            if(this.charaData["Kutu" + param1]["_menu"] == 0)
            {
               this.charaData["KutuLong" + param1]["_menu"] = 0;
               this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
               this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
               this.charaData["KutuLong" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
            }
            else if(this.charaData["Kutu" + param1]["_menu"] == 1)
            {
               this.charaData["KutuLong" + param1]["_menu"] = 1;
               this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
               this.charaData["KutuLong" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
               this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
            }
            else if(this.charaData["Kutu" + param1]["_menu"] == 2)
            {
               this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
            }
            else if(this.charaData["Kutu" + param1]["_menu"] == 3)
            {
               this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
            }
            else if(this.charaData["Kutu" + param1]["_menu"] == 4)
            {
               this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color2"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
            }
            else if(this.charaData["Kutu" + param1]["_menu"] == 5)
            {
               this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
               this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
            }
            else if(this.charaData["Kutu" + param1]["_menu"] == 6)
            {
               this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
               this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
            }
            else if(this.charaData["Kutu" + param1]["_menu"] == 7)
            {
               this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
               this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
            }
            else if(this.charaData["Kutu" + param1]["_menu"] != 8)
            {
               if(this.charaData["Kutu" + param1]["_menu"] == 9)
               {
                  this.charaData["Kutu" + param1]["_color2"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color2"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 10)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 1;
                  this.charaData["KutuLong" + param1]["_menu"] = 2;
                  this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.charaData["KutuLong" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 11)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 1;
                  this.charaData["KutuLong" + param1]["_menu"] = 3;
                  this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.charaData["KutuLong" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 12)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 10;
                  this.charaData["KutuLong" + param1]["_menu"] = 4;
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 13)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 11;
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color2"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 14)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 12;
                  this.charaData["Kutu" + param1]["_color2"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color2"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 15)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 13;
                  this.charaData["KutuLong" + param1]["_menu"] = 5;
                  this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.charaData["Kutu" + param1]["_color2"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.charaData["KutuLong" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color2"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 16)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 1;
                  this.charaData["KutuLong" + param1]["_menu"] = 6;
                  this.charaData["Kutu" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
                  this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.charaData["KutuLong" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 17)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 14;
                  this.charaData["KutuLong" + param1]["_menu"] = 7;
                  this.charaData["Kutu" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
                  this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.charaData["KutuLong" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
                  this.charaData["KutuLong" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
                  this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 18)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 14;
                  this.charaData["KutuLong" + param1]["_menu"] = 8;
                  this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.charaData["KutuLong" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
                  this.charaData["KutuLong" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
                  this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 19)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 15;
                  this.charaData["KutuLong" + param1]["_menu"] = 9;
                  this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.charaData["KutuLong" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 20)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 16;
                  this.charaData["KutuLong" + param1]["_menu"] = 10;
                  this.charaData["KutuLong" + param1]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["KutuLong" + param1][this.charaData["KutuLong" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
               }
               else if(this.charaData["Kutu" + param1]["_menu"] == 21)
               {
                  this.charaData["Kutu" + param1]["_menu"] = 17;
                  this.charaData["Kutu" + param1]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.charaData["Kutu" + param1]["_color2"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color1"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color1"];
                  this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color2"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color2"];
               }
            }
            this.DressCharaData["Kutu" + param1][this.charaData["Kutu" + param1]["_menu"]]["_color0"][0] = Tab_IEInOut.KutuOldData["Kutu" + param1]["_color0"];
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
