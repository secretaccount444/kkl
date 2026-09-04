package menu
{
   import parameter.Dress_data;
   import system.MeterPersent;
   
   public class Chara_SetSize
   {
       
      
      private var charaNum:int;
      
      private var charaAdd:Object;
      
      private var charaAddDepth:Object;
      
      private var charaData:Object;
      
      private var tabName:String;
      
      private var clickTarget:String;
      
      private var i:int;
      
      private var j:int;
      
      public function Chara_SetSize(param1:int, param2:String, param3:String)
      {
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaAddDepth = MenuClass.charaAddDepth[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         this.tabName = param2;
         this.clickTarget = param3;
         if(this.tabName == "BodyY")
         {
            this.BodyYFc();
         }
         else if(this.tabName == "BodyHeight")
         {
            this.BodyHeightFc();
            this.BodyYFc();
         }
         else if(this.tabName == "BreastWidthY")
         {
            this.BreastWidthY();
         }
         else if(this.tabName == "BreastWidth")
         {
            this.BreastWidthFc();
            this.BreastWidthY();
         }
         else if(this.tabName == "BodyAllWidth")
         {
            this.BodyAllWidth();
         }
         else if(this.tabName == "HipWidth")
         {
            this.haraboteWidthFc();
            this.HipWidthFc();
         }
         else if(this.tabName == "beltWidth")
         {
            this.BodyHeightFc();
         }
         else if(this.tabName == "ContourWidth")
         {
            this.ContourWidthFc();
         }
         else if(this.tabName == "ContourHeight")
         {
            this.ContourHeightFc();
         }
         else if(this.tabName == "Megane")
         {
            this.MeganeWidthFc();
            this.MeganeHeightFc();
         }
         else if(this.tabName == "MouthY")
         {
            this.MouthYFc();
         }
         else if(this.tabName == "AshiWidth")
         {
            this.AshiWidthFc();
         }
         else if(this.tabName == "HandWidth")
         {
            this.HandWidthFc();
         }
         else if(this.tabName == "NippleSize")
         {
            this.nippleFc();
         }
         else if(this.tabName == "NippleHeight")
         {
            this.nippleHeightFc();
         }
         else if(this.tabName == "NippleWidth")
         {
            this.nippleWidthFc();
         }
         else if(this.tabName == "ShoulderWidth")
         {
            this.BreastWidthFc();
         }
         else if(this.tabName == "HeadScale")
         {
            this.HeadScaleFc();
         }
         else if(this.tabName == "EyeScale")
         {
            this.EyeScaleFc();
         }
      }
      
      private function nippleFc() : void
      {
         new MeterPersent(0.5,1.8,"NippleSize",this.charaNum);
         var _loc1_:int = 0;
         while(_loc1_ <= 1)
         {
            this.charaAdd.mune["mune" + _loc1_].mune.Nipple.nipple.scaleX = MeterPersent.MeterPersentNum;
            this.charaAdd.mune["mune" + _loc1_].mune.Nipple.nipple.scaleY = MeterPersent.MeterPersentNum;
            _loc1_++;
         }
         new MeterPersent(1,2,"NippleSize",this.charaNum);
      }
      
      private function nippleHeightFc() : void
      {
         new MeterPersent(-13,13,"NippleHeight",this.charaNum);
         var _loc1_:int = 0;
         while(_loc1_ <= 1)
         {
            this.charaAdd.mune["mune" + _loc1_].mune.Nipple.nipple.y = MeterPersent.MeterPersentNum;
            this.charaAdd.mune["mune" + _loc1_].mune.Nipple.nippleG.y = MeterPersent.MeterPersentNum;
            this.charaAdd.mune["mune" + _loc1_].mune.NippleG.nippleG.y = MeterPersent.MeterPersentNum;
            _loc1_++;
         }
      }
      
      private function nippleWidthFc() : void
      {
         var _loc1_:int = 0;
         new MeterPersent(-6,10,"NippleWidth",this.charaNum);
         _loc1_ = 0;
         while(_loc1_ <= 1)
         {
            this.charaAdd.mune["mune" + _loc1_].mune.Nipple.nipple.x = MeterPersent.MeterPersentNum;
            this.charaAdd.mune["mune" + _loc1_].mune.NippleG.nippleG.x = MeterPersent.MeterPersentNum;
            _loc1_++;
         }
         new MeterPersent(-7,9,"NippleWidth",this.charaNum);
         _loc1_ = 0;
         while(_loc1_ <= 1)
         {
            this.charaAdd.mune["mune" + _loc1_].mune.Nipple.nippleG.x = MeterPersent.MeterPersentNum;
            _loc1_++;
         }
      }
      
      private function HandWidthFc() : void
      {
         var _loc1_:int = 0;
         this.i = 0;
         while(this.i <= 1)
         {
            this.charaAdd["handm0_" + this.i].hand.arm2.gotoAndStop(Math.floor(this.charaData["HandWidth"]["_meter"] * 0.1));
            this.charaAdd["handm1_" + this.i].hand.arm1.arm1.gotoAndStop(Math.floor(this.charaData["HandWidth"]["_meter"] * 0.1));
            ++this.i;
         }
      }
      
      private function AshiWidthFc() : void
      {
         new MeterPersent(SizeDataClass.legSize[0],SizeDataClass.legSize[1],"HipWidth",this.charaNum);
         var _loc1_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(SizeDataClass.footSize[0],SizeDataClass.footSize[1],"HipWidth",this.charaNum);
         var _loc2_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(0,0.2,"AshiWidth",this.charaNum);
         var _loc3_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(0,0.25,"AshiWidth",this.charaNum);
         this.i = 0;
         while(this.i <= 1)
         {
            try
            {
               this.charaAdd["ashi" + this.i].leg.leg.scaleX = _loc1_ + MeterPersent.MeterPersentNum;
               this.charaAdd["ashi" + this.i].leg_huku.leg.scaleX = _loc1_ + MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
            this.charaAdd["ashi" + this.i].foot.foot.scaleX = _loc2_ + _loc3_;
            ++this.i;
         }
      }
      
      private function HipWidthFc() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.i = 0;
         while(this.i <= 1)
         {
            _loc1_ = this.charaAdd["ashi" + this.i].currentFrame - 1;
            if(Move_DataClass.AshiFrameData[_loc1_]["depth"] == 2)
            {
               _loc2_ = 1.095;
            }
            else
            {
               _loc2_ = SizeDataClass.thighScaleX[1];
            }
            new MeterPersent(SizeDataClass.thighScaleX[0],_loc2_,"HipWidth",this.charaNum);
            this.charaAdd["ashi" + this.i].thigh.thigh.scaleX = MeterPersent.MeterPersentNum;
            new MeterPersent(Move_DataClass.AshiFrameData[_loc1_]["thigthX_Y"] / 10,Move_DataClass.AshiFrameData[_loc1_]["thigthX_H"] / 10,"HipWidth",this.charaNum);
            this.charaAdd["ashi" + this.i].thigh.thigh.x = MeterPersent.MeterPersentNum;
            new MeterPersent(Move_DataClass.AshiFrameData[_loc1_]["legX_Y"] / 10,Move_DataClass.AshiFrameData[_loc1_]["legX_H"] / 10,"HipWidth",this.charaNum);
            _loc3_ = MeterPersent.MeterPersentNum;
            new MeterPersent(0,Move_DataClass.AshiFrameData[_loc1_]["legX_WH"] / 10,"AshiWidth",this.charaNum);
            try
            {
               this.charaAdd["ashi" + this.i].leg.leg.x = _loc3_ + MeterPersent.MeterPersentNum;
               this.charaAdd["ashi" + this.i].leg_huku.leg.x = _loc3_ + MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
            new MeterPersent(Move_DataClass.AshiFrameData[_loc1_]["legY_Y"] / 10,Move_DataClass.AshiFrameData[_loc1_]["legY_H"] / 10,"HipWidth",this.charaNum);
            _loc4_ = MeterPersent.MeterPersentNum;
            try
            {
               this.charaAdd["ashi" + this.i].leg.leg.y = _loc4_;
               this.charaAdd["ashi" + this.i].leg_huku.leg.y = _loc4_;
            }
            catch(myError:Error)
            {
            }
            new MeterPersent(Move_DataClass.AshiFrameData[_loc1_]["fX_Y"] / 10,Move_DataClass.AshiFrameData[_loc1_]["fX_H"] / 10,"AshiWidth",this.charaNum);
            _loc5_ = MeterPersent.MeterPersentNum;
            new MeterPersent(Move_DataClass.AshiFrameData[_loc1_]["fHip_Y"] / 10,Move_DataClass.AshiFrameData[_loc1_]["fHip_H"] / 10,"HipWidth",this.charaNum);
            _loc6_ = MeterPersent.MeterPersentNum;
            try
            {
               this.charaAdd["ashi" + this.i].foot.foot.x = _loc5_ + _loc6_;
            }
            catch(myError:Error)
            {
            }
            new Huku_TightsGarter(this.charaNum);
            ++this.i;
         }
         this.skirtFc();
      }
      
      private function haraboteWidthFc() : void
      {
         var _loc3_:int = 0;
         new MeterPersent(0.96,1.18,"HipWidth",this.charaNum);
         var _loc1_:Number = MeterPersent.MeterPersentNum;
         this.charaAdd.dou.bodyMask.nakaMask.scaleX = _loc1_;
         this.charaAdd.dou.bodyMask2.nakaMask.scaleX = _loc1_;
         this.charaAdd.dou.color0.nakaMask.scaleX = _loc1_;
         this.charaAdd.dou.ueSenMask.scaleX = _loc1_;
         this.charaAdd.dou.nakaSen.scaleX = _loc1_;
         this.charaAdd.dou.dou_shita.scaleX = _loc1_;
         this.charaAdd.peni.peni.scaleX = _loc1_;
         this.charaAdd.dou.dou_shitaHuku.scaleX = _loc1_;
         var _loc2_:Array = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
         if(_loc2_[0] >= 1 && _loc2_[1] >= 1)
         {
            this.charaAdd.dou.dou_Skirt.scaleX = _loc1_ - 0.04;
         }
         else if(_loc2_[0] >= 1 || _loc2_[1] >= 1)
         {
            this.charaAdd.dou.dou_Skirt.scaleX = _loc1_ - 0.02;
         }
         else
         {
            this.charaAdd.dou.dou_Skirt.scaleX = _loc1_;
         }
         this.charaAdd.dou.VestOnePiece.scaleX = _loc1_;
         this.charaAdd.dou.TsyatuOnePiece.scaleX = _loc1_;
         this.charaAdd.dou.YsyatuOnePiece.scaleX = _loc1_;
         this.charaAdd.dou.thighMask.scaleX = _loc1_;
         this.charaAdd.dou.harabote.scaleX = _loc1_;
         this.charaAdd.dou.sen2.scaleX = _loc1_;
         this.charaAdd.dou.seihukuNakaSen.Sen.scaleX = _loc1_;
         this.charaAdd.dou.seihukuUeSenMask.scaleX = _loc1_;
         this.charaAdd.dou.seihukuMask.nakaMask.scaleX = _loc1_;
         this.charaAdd.dou.ysyatuMask.nakaMask.scaleX = _loc1_;
         this.charaAdd.dou.ysyatuUeSenMask.scaleX = _loc1_;
         this.charaAdd.dou.ysyatuNakaSen.Sen.scaleX = _loc1_;
         this.charaAdd.dou.tsyatuMask.nakaMask.scaleX = _loc1_;
         this.charaAdd.dou.tsyatuUeSenMask.scaleX = _loc1_;
         this.charaAdd.dou.tsyatuNakaSen.Sen.scaleX = _loc1_;
         this.charaAdd.dou.vestMask.nakaMask.scaleX = _loc1_;
         this.charaAdd.dou.vestUeSenMask.scaleX = _loc1_;
         this.charaAdd.dou.vestNakaSen.Sen.scaleX = _loc1_;
         _loc3_ = 0;
         while(_loc3_ <= Main.hukusuuNum)
         {
            if(this.charaData["BeltPlus"]["_visible"][_loc3_])
            {
               this.j = 0;
               for(; this.j <= 1; ++this.j)
               {
                  try
                  {
                     this.charaAdd["belt" + _loc3_ + "_" + this.j].beltMask.nakaMask.scaleX = _loc1_;
                     if(this.charaData["Belt" + _loc3_ + "_" + this.j]["_depth"] >= 2)
                     {
                        this.charaAdd["belt" + _loc3_ + "_" + this.j]["beltUeSenMask" + 0].scaleX = _loc1_;
                        this.charaAdd["belt" + _loc3_ + "_" + this.j]["beltNakaSen" + 0].Sen.scaleX = _loc1_;
                     }
                     else
                     {
                        this.charaAdd.dou["belt" + _loc3_ + "_" + this.j]["beltMask" + 0].nakaMask.scaleX = _loc1_;
                        this.charaAdd.dou["belt" + _loc3_ + "_" + this.j]["beltUeSenMask" + 0].scaleX = _loc1_;
                        this.charaAdd.dou["belt" + _loc3_ + "_" + this.j]["beltNakaSen" + 0].Sen.scaleX = _loc1_;
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            _loc3_++;
         }
         new MeterPersent(1.18,0.96,"HipWidth",this.charaNum);
         try
         {
            this.charaAdd.dou.dou_shitaHuku.Nawa.Nawa.scaleX = MeterPersent.MeterPersentNum;
         }
         catch(myError:Error)
         {
         }
      }
      
      private function BreastWidthY() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc6_:int = 0;
         var _loc3_:int = this.charaData["VestDou"]["_menu"];
         var _loc4_:int = this.charaData["YsyatuDou"]["_menu"];
         var _loc5_:int = this.charaData["TsyatuDou"]["_menu"];
         if(!this.charaData["Seihuku"]["_visible"][0] && (!this.charaData["Vest"]["_visible"][0] || this.charaData["Vest"]["_visible"][0] && _loc3_ == 0) && (!this.charaData["Tsyatu"]["_visible"][0] || this.charaData["Tsyatu"]["_visible"][0] && _loc5_ == 0) && (!this.charaData["Ysyatu"]["_visible"][0] || this.charaData["Ysyatu"]["_visible"][0] && (_loc4_ == 3 || _loc4_ == 4 || _loc4_ == 0)))
         {
            new MeterPersent(0.93,1.15,"BodyWidth",this.charaNum);
            _loc1_ = MeterPersent.MeterPersentNum;
            new MeterPersent(-550,-555,"BodyWidth",this.charaNum);
            _loc2_ = MeterPersent.MeterPersentNum;
         }
         else
         {
            _loc1_ = this.charaAdd.mune.SeihukuMune.scaleY;
            _loc2_ = this.charaAdd.mune.SeihukuMune.y;
         }
         this.charaAdd.mune.Bura.scaleY = _loc1_;
         this.charaAdd.mune.Bura.y = _loc2_;
         this.charaAdd.mune.Nawa.scaleY = _loc1_;
         this.charaAdd.mune.Nawa.y = _loc2_;
         _loc6_ = 0;
         while(_loc6_ <= 1)
         {
            this.charaAdd.mune["mune" + _loc6_].scaleY = _loc1_;
            this.charaAdd.mune["mune" + _loc6_].y = _loc2_;
            _loc6_++;
         }
      }
      
      private function BreastWidthFc() : void
      {
         var _loc3_:int = 0;
         new MeterPersent(0.907,1.17,"BodyWidth",this.charaNum);
         var _loc1_:Number = MeterPersent.MeterPersentNum;
         this.charaAdd.dou.seihukuUeSen.scaleX = _loc1_;
         this.charaAdd.dou.seihukuNakaSen.SenMask.scaleX = _loc1_;
         this.charaAdd.dou.seihukuMask.ueMask.scaleX = _loc1_;
         this.charaAdd.dou.SeihukuDou.scaleX = _loc1_;
         this.charaAdd.dou.ysyatuUeSen.scaleX = _loc1_;
         this.charaAdd.dou.ysyatuNakaSen.SenMask.scaleX = _loc1_;
         this.charaAdd.dou.ysyatuMask.ueMask.scaleX = _loc1_;
         this.charaAdd.dou.YsyatuDou.scaleX = _loc1_;
         this.charaAdd.dou.tsyatuUeSen.scaleX = _loc1_;
         this.charaAdd.dou.tsyatuNakaSen.SenMask.scaleX = _loc1_;
         this.charaAdd.dou.tsyatuMask.ueMask.scaleX = _loc1_;
         this.charaAdd.dou.TsyatuDou.scaleX = _loc1_;
         this.charaAdd.dou.vestUeSen.scaleX = _loc1_;
         this.charaAdd.dou.vestNakaSen.SenMask.scaleX = _loc1_;
         this.charaAdd.dou.vestMask.ueMask.scaleX = _loc1_;
         this.charaAdd.dou.VestDou.scaleX = _loc1_;
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.charaData["BeltPlus"]["_visible"][this.i])
            {
               if(this.charaData["Belt" + this.i]["_depth"] >= 2)
               {
                  _loc3_ = 0;
                  while(_loc3_ <= 1)
                  {
                     try
                     {
                        this.charaAdd["belt" + this.i + "_" + _loc3_].beltMask.ueMask.scaleX = _loc1_;
                        this.charaAdd["belt" + this.i + "_" + _loc3_].beltUeSen0.scaleX = _loc1_;
                        this.charaAdd["belt" + this.i + "_" + _loc3_].beltNakaSen0.SenMask.scaleX = _loc1_;
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ <= 1)
                  {
                     try
                     {
                        this.charaAdd.dou["belt" + this.i + "_" + _loc3_].beltMask.ueMask.scaleX = _loc1_;
                        this.charaAdd.dou["belt" + this.i + "_" + _loc3_].beltUeSen0.scaleX = _loc1_;
                        this.charaAdd.dou["belt" + this.i + "_" + _loc3_].beltNakaSen0.SenMask.scaleX = _loc1_;
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc3_++;
                  }
               }
            }
            ++this.i;
         }
         this.charaAdd.dou.ueSen.scaleX = _loc1_;
         this.charaAdd.dou.nakaSenMask.scaleX = _loc1_;
         this.charaAdd.dou.bodyMask.ueMask.scaleX = _loc1_;
         this.charaAdd.dou.bodyMask2.ueMask.scaleX = _loc1_;
         this.charaAdd.dou.Bura.scaleX = _loc1_;
         new Huku_BuraUnder(this.charaNum);
         this.charaAdd.dou.MuneKage0.scaleX = _loc1_;
         this.charaAdd.dou.color0.ueMask.scaleX = _loc1_;
         this.charaAdd.mune.scaleX = _loc1_;
         new MeterPersent(0,6,"ShoulderWidth",this.charaNum);
         var _loc2_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(20,28,"BodyWidth",this.charaNum);
         this.i = 0;
         while(this.i <= 1)
         {
            this.charaAdd["handm" + this.i + "_0"].x = (MeterPersent.MeterPersentNum + _loc2_) * -1;
            this.charaAdd["handm" + this.i + "_1"].x = MeterPersent.MeterPersentNum + _loc2_;
            ++this.i;
         }
         new Move_UdeClass(this.charaNum);
         new MeterPersent(-2,0,"BodyWidth",this.charaNum);
         this.i = 0;
         while(this.i <= 1)
         {
            _loc3_ = 0;
            while(_loc3_ <= 1)
            {
               this.charaAdd["handm0_" + this.i].kataSeihukuMask["kata" + _loc3_].scaleX = _loc1_;
               this.charaAdd["handm0_" + this.i].kataYsyatuMask["kata" + _loc3_].scaleX = _loc1_;
               this.charaAdd["handm0_" + this.i].kataTsyatuMask["kata" + _loc3_].scaleX = _loc1_;
               this.charaAdd["handm0_" + this.i].kataVestMask["kata" + _loc3_].scaleX = _loc1_;
               this.charaAdd["handm0_" + this.i].kataMask["kata" + _loc3_].scaleX = _loc1_;
               this.charaAdd["handm0_" + this.i].kataBuraMask["kata" + _loc3_].scaleX = _loc1_;
               this.charaAdd["handm0_" + this.i].kataSeihukuMask["kata" + _loc3_].x = MeterPersent.MeterPersentNum - _loc2_;
               this.charaAdd["handm0_" + this.i].kataYsyatuMask["kata" + _loc3_].x = MeterPersent.MeterPersentNum - _loc2_;
               this.charaAdd["handm0_" + this.i].kataTsyatuMask["kata" + _loc3_].x = MeterPersent.MeterPersentNum - _loc2_;
               this.charaAdd["handm0_" + this.i].kataVestMask["kata" + _loc3_].x = MeterPersent.MeterPersentNum - _loc2_;
               this.charaAdd["handm0_" + this.i].kataMask["kata" + _loc3_].x = MeterPersent.MeterPersentNum - _loc2_;
               this.charaAdd["handm0_" + this.i].kataBuraMask["kata" + _loc3_].x = MeterPersent.MeterPersentNum - _loc2_;
               _loc3_++;
            }
            ++this.i;
         }
      }
      
      private function BodyAllWidth() : void
      {
         new MeterPersent(0,99,"BodyAllWidth",this.charaNum);
         var _loc1_:Number = Math.floor(MeterPersent.MeterPersentNum);
         this.charaData["BodyWidth"]["_meter"] = _loc1_;
         this.charaData["HandWidth"]["_meter"] = _loc1_;
         this.charaData["AshiWidth"]["_meter"] = _loc1_;
         this.charaData["HipWidth"]["_meter"] = _loc1_;
         new MeterPersent(0,30,"BodyAllWidth",this.charaNum);
         this.charaData["ShoulderWidth"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         this.BreastWidthFc();
         this.BreastWidthY();
         this.haraboteWidthFc();
         this.HipWidthFc();
         this.AshiWidthFc();
         this.HandWidthFc();
         new MeterPersent(20,80,"BodyAllWidth",this.charaNum);
         this.charaData["ContourWidth"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         this.ContourWidthFc();
      }
      
      private function BodyHeightFc() : void
      {
         var _loc5_:Number = NaN;
         new MeterPersent(0.7,1.1,"AshiHeight",this.charaNum);
         var _loc1_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(0.97,1,"BodyHeight",this.charaNum);
         var _loc2_:Number = MeterPersent.MeterPersentNum;
         this.i = 0;
         while(this.i <= 1)
         {
            this.charaAdd["ashi" + this.i].scaleY = _loc1_;
            if(this.i == 0 && this.charaData["Ashi"]["_menu"] >= 88 || this.i == 1 && this.charaData["Ashi2"]["_menu"] >= 88)
            {
               this.charaAdd["ashi" + this.i].thigh.scaleY = 1 + (1 - _loc1_);
               new MeterPersent(200,160,"AshiHeight",this.charaNum);
               _loc5_ = MeterPersent.MeterPersentNum;
               this.charaAdd["ashi" + this.i].thigh.y = _loc5_;
            }
            this.charaAdd["handm0_" + this.i].scaleY = _loc2_;
            this.charaAdd["handm1_" + this.i].scaleY = _loc2_;
            ++this.i;
         }
         new MeterPersent(1,-1,"BodyHeight",this.charaNum);
         var _loc3_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(5,-5,"EyeY",this.charaNum);
         var _loc4_:Number = MeterPersent.MeterPersentNum;
         this.charaAdd.head.eye0.y = this.charaAdd.head.eye1.y = -5.3 + _loc3_ + _loc4_;
         this.EyeScaleFc();
         this.HeadScaleFc();
         this.ContourHeightFc();
         new Move_BodyYClass(this.charaNum);
         new Chara_ColorClass(this.charaNum,"BodyHeight");
         this.skirtFc();
      }
      
      private function skirtFc() : void
      {
         var _loc1_:int = 0;
         if(this.clickTarget == "tab")
         {
            if(this.charaData["Skirt"]["_visible"][0])
            {
               new Huku_Skirt(this.charaNum,"Skirt");
            }
            _loc1_ = this.charaData["TsyatuSkirt"]["_menu"];
            if(this.charaData["Tsyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc1_]["skirt"] != 0)
            {
               new Huku_Skirt(this.charaNum,"Tsyatu");
            }
            _loc1_ = this.charaData["YsyatuSkirt"]["_menu"];
            if(this.charaData["Ysyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc1_]["skirt"] != 0)
            {
               new Huku_Skirt(this.charaNum,"Ysyatu");
            }
            _loc1_ = this.charaData["VestSkirt"]["_menu"];
            if(this.charaData["Vest"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc1_]["skirt"] != 0)
            {
               new Huku_Skirt(this.charaNum,"Vest");
            }
         }
      }
      
      private function EyeScaleFc() : void
      {
         new MeterPersent(-0.3,0.3,"EyeScaleX",this.charaNum);
         var _loc1_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(-0.3,0.3,"EyeScaleY",this.charaNum);
         var _loc2_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(1.05,1,"BodyHeight",this.charaNum);
         this.charaAdd.head["eye" + 0].scaleX = MeterPersent.MeterPersentNum + _loc1_;
         this.charaAdd.head["eye" + 1].scaleX = (MeterPersent.MeterPersentNum + _loc1_) * -1;
         this.i = 0;
         while(this.i <= 1)
         {
            this.charaAdd.head["eye" + this.i].scaleY = MeterPersent.MeterPersentNum + _loc2_;
            ++this.i;
         }
      }
      
      private function ContourWidthFc() : void
      {
         new MeterPersent(0.92,1.1,"ContourWidth",this.charaNum);
         this.charaAdd.head["Headband" + 0].scaleX = MeterPersent.MeterPersentNum;
         this.charaAdd.head.face.scaleX = this.charaAdd.head.faceSen.scaleX = MeterPersent.MeterPersentNum;
         try
         {
            this.charaAdd.head.Gag.faceMask.scaleX = this.charaAdd.head.Gag.faceSen.scaleX = MeterPersent.MeterPersentNum;
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.charaAdd.head.Megane.faceMask.scaleX = this.charaAdd.head.Megane.faceSen.scaleX = MeterPersent.MeterPersentNum;
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.charaAdd.head.kandoMinus.faceMask.scaleX = MeterPersent.MeterPersentNum;
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.charaAdd.head.kandoPlus.faceMask.scaleX = MeterPersent.MeterPersentNum;
         }
         catch(myError:Error)
         {
         }
         this.MeganeWidthFc();
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            try
            {
               this.charaAdd.head["mark" + this.i + "_0"].faceMask.scaleX = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head["mark" + this.i + "_1"].faceMask.scaleX = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
            ++this.i;
         }
      }
      
      private function ContourHeightFc() : void
      {
         new MeterPersent(-0.03,0.02,"BodyHeight",this.charaNum);
         var _loc1_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(0.96,1.04,"ContourHeight",this.charaNum);
         if(this.charaData["ContourHeight"]["_meter"] < 0)
         {
            this.charaAdd.head.kage.visible = false;
            this.charaAdd.head.HairBaseSen.visible = false;
            if(this.charaAdd.head.kage.currentFrame != 1)
            {
               this.charaAdd.head.kage.gotoAndStop(1);
               this.charaAdd.head.HairBaseSen.gotoAndStop(1);
            }
         }
         else if(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hage"] == 0)
         {
            this.charaAdd.head.kage.visible = true;
            this.charaAdd.head.HairBaseSen.visible = true;
            if(this.charaAdd.head.kage.currentFrame != 2)
            {
               this.charaAdd.head.kage.gotoAndStop(2);
               this.charaAdd.head.HairBaseSen.gotoAndStop(2);
            }
         }
         this.charaAdd.head.face.scaleY = this.charaAdd.head.faceSen.scaleY = MeterPersent.MeterPersentNum + _loc1_;
         try
         {
            this.charaAdd.head.Gag.faceMask.scaleY = this.charaAdd.head.Gag.faceSen.scaleY = MeterPersent.MeterPersentNum + _loc1_;
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.charaAdd.head.Megane.faceMask.scaleY = this.charaAdd.head.Megane.faceSen.scaleY = MeterPersent.MeterPersentNum + _loc1_;
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.charaAdd.head.kandoPlus.faceMask.scaleY = MeterPersent.MeterPersentNum + _loc1_;
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.charaAdd.head.kandoMinus.faceMask.scaleY = MeterPersent.MeterPersentNum + _loc1_;
         }
         catch(myError:Error)
         {
         }
         this.MeganeHeightFc();
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            try
            {
               this.charaAdd.head["mark" + this.i + "_" + 0].faceMask.scaleY = MeterPersent.MeterPersentNum + _loc1_;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head["mark" + this.i + "_" + 1].faceMask.scaleY = MeterPersent.MeterPersentNum + _loc1_;
            }
            catch(myError:Error)
            {
            }
            ++this.i;
         }
         this.MouthYFc();
      }
      
      private function MeganeWidthFc() : void
      {
         if(this.charaData["Megane"]["_visible"][0])
         {
            new MeterPersent(0.92,1.1,"ContourWidth",this.charaNum);
            try
            {
               this.charaAdd.head.Megane.faceMask.scaleX = this.charaAdd.head.Megane.faceSen.scaleX = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
         }
      }
      
      private function MeganeHeightFc() : void
      {
         var _loc1_:Number = NaN;
         if(this.charaData["Megane"]["_visible"][0])
         {
            new MeterPersent(-0.03,0.02,"BodyHeight",this.charaNum);
            _loc1_ = MeterPersent.MeterPersentNum;
            new MeterPersent(0.96,1.04,"ContourHeight",this.charaNum);
            try
            {
               this.charaAdd.head.Megane.faceMask.scaleY = this.charaAdd.head.Megane.faceSen.scaleY = MeterPersent.MeterPersentNum + _loc1_;
            }
            catch(myError:Error)
            {
            }
         }
      }
      
      private function MouthYFc() : void
      {
         new MeterPersent(-3,1,"BodyHeight",this.charaNum);
         var _loc1_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(12,-8,"MouthY",this.charaNum);
         var _loc2_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(12,-8,"MouthYMove",this.charaNum);
         this.charaAdd.head.mouth.y = SizeDataClass.bodyDefault_y["mouth"] + _loc1_ + _loc2_ + MeterPersent.MeterPersentNum;
         this.charaAdd.head.Gag.y = SizeDataClass.bodyDefault_y["Gag"] + _loc1_ + _loc2_;
         try
         {
            this.charaAdd.head.Gag.faceMask.y = this.charaAdd.head.Gag.faceSen.y = SizeDataClass.bodyDefault_y["GagFaceMask"] + (_loc1_ + _loc2_) * -1;
         }
         catch(myError:Error)
         {
         }
      }
      
      private function HeadScaleFc() : void
      {
         new MeterPersent(-0.16,0.16,"HeadScale",this.charaNum);
         var _loc1_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(1.38,0.85,"BodyHeight",this.charaNum);
         this.charaAdd.head.scaleX = this.charaAdd.head.scaleY = this.charaAdd.SideBurnMiddle.scaleX = this.charaAdd.SideBurnMiddle.scaleY = this.charaAddDepth.charaSelect.scaleX = this.charaAddDepth.charaSelect.scaleY = this.charaAdd.HairBack.scaleX = this.charaAdd.HairBack.scaleY = this.charaAdd.HairUshiro.scaleX = this.charaAdd.HairUshiro.scaleY = MeterPersent.MeterPersentNum + _loc1_;
         if(!this.charaData["CharaFilterEmotion"]["_check"])
         {
            MenuClass.charaAddDepth[this.charaNum].charaMae.Hukidashi.scaleX = MenuClass.charaAddDepth[this.charaNum].charaMae.Hukidashi.scaleY = MeterPersent.MeterPersentNum + _loc1_;
         }
         else
         {
            this.charaAdd.Hukidashi.scaleX = this.charaAdd.Hukidashi.scaleY = MeterPersent.MeterPersentNum + _loc1_;
         }
         this.charaAdd.HatBack.scaleY = MeterPersent.MeterPersentNum + _loc1_ + Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hatScale"];
         if(this.charaData["Hat"]["_reversal"])
         {
            this.charaAdd.HatBack.scaleX = MeterPersent.MeterPersentNum + _loc1_ + Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hatScale"];
         }
         else
         {
            this.charaAdd.HatBack.scaleX = (MeterPersent.MeterPersentNum + _loc1_ + Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hatScale"]) * -1;
         }
         this.i = 0;
         while(this.i <= Main.RibonhukusuuNum)
         {
            if(this.charaData["RibonPlus"]["_visible"][this.i])
            {
               try
               {
                  this.charaAdd["Ribon" + this.i + "_0"].scaleX = this.charaAdd["Ribon" + this.i + "_0"].scaleY = MeterPersent.MeterPersentNum + _loc1_;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["Ribon" + this.i + "_1"].scaleX = this.charaAdd["Ribon" + this.i + "_1"].scaleY = MeterPersent.MeterPersentNum + _loc1_;
               }
               catch(myError:Error)
               {
               }
            }
            ++this.i;
         }
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.charaData["HairExPlus"]["_visible"][this.i])
            {
               if(this.charaData["HairExAdd" + this.i]["_add0"] == 0)
               {
                  try
                  {
                     this.charaAdd["HairEx" + this.i + "_" + 0].scaleX = this.charaAdd["HairEx" + this.i + "_" + 0].scaleY = MeterPersent.MeterPersentNum + _loc1_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd["HairEx" + this.i + "_" + 1].scaleX = this.charaAdd["HairEx" + this.i + "_" + 1].scaleY = MeterPersent.MeterPersentNum + _loc1_;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  try
                  {
                     this.charaAdd["HairEx" + this.i + "_" + 0].scaleX = this.charaAdd["HairEx" + this.i + "_" + 0].scaleY = 1;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd["HairEx" + this.i + "_" + 1].scaleX = this.charaAdd["HairEx" + this.i + "_" + 1].scaleY = 1;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            ++this.i;
         }
         new Move_HeadYClass(this.charaNum);
      }
      
      private function BodyYFc() : void
      {
         var _loc7_:Number = NaN;
         new MeterPersent(0.65,1.35,"BodyHeight",this.charaNum);
         var _loc1_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(0,-0.5,"Jump",this.charaNum);
         var _loc2_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(1,0.5,"Jump",this.charaNum);
         var _loc3_:Number = MeterPersent.MeterPersentNum;
         var _loc4_:Number = 0;
         new MeterPersent(-0.6,6.9,"BodySize",this.charaNum);
         var _loc5_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(0.1,0,"BodyHeight",this.charaNum);
         new MeterPersent(-0.15 + MeterPersent.MeterPersentNum,0.05,"Ymove",this.charaNum);
         var _loc6_:Number;
         if((_loc6_ = MeterPersent.MeterPersentNum + _loc1_ + _loc4_ + _loc5_) <= 0.05)
         {
            _loc6_ = 0.05;
         }
         this.charaAddDepth.scaleX = this.charaAddDepth.scaleY = _loc6_;
         new MeterPersent(-55,95,"Ymove",this.charaNum);
         _loc7_ = MeterPersent.MeterPersentNum;
         new MeterPersent(0,6000,"BodyYMove",this.charaNum);
         MenuClass.shadowAdd[this.charaNum].y = _loc7_ + MeterPersent.MeterPersentNum;
         if(this.charaData["Jump"]["_meter"] > 15 || this.charaData["Rmove"]["_meter"] < 115 || this.charaData["Rmove"]["_meter"] > 245)
         {
            this.charaAdd.dou.dou_shitaHuku.s.tare.mask = null;
         }
         else
         {
            this.charaAdd.dou.dou_shitaHuku.s.tare.mask = MenuClass.shadowAdd[this.charaNum].EkiMask;
         }
         this.charaAddDepth.y = _loc7_ + MeterPersent.MeterPersentNum;
      }
   }
}
