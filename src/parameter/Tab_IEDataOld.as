package parameter
{
   public class Tab_IEDataOld
   {
      
      public static var IEData:Array = new Array();
      
      public static var IEGroup:Array = new Array();
       
      
      private var i:int;
      
      private var n:int;
      
      public function Tab_IEDataOld()
      {
         super();
         IEGroup[0] = ["!","aa","ab","ac"];
         IEGroup[1] = ["!","ba","bb","bc","bd","be"];
         IEGroup[2] = ["!","ca","cb"];
         IEGroup[3] = ["!","da","db","dd","dh","di"];
         IEGroup[4] = ["!","qa","qb","dc","eh"];
         IEGroup[5] = ["!","ea","ec","ed","ef","eg","r0","r1","r2","r3","r4","r5","r6","r7","r8","r9"];
         IEGroup[6] = ["!","fa","fb","fc","fd","fe","ff","fg"];
         IEGroup[7] = ["!","pa","pb","pc","pd","pe"];
         IEGroup[8] = ["!","ga","gb","gc","gd","ge","gf","gg"];
         IEGroup[9] = ["!","ha","hb","hc","hd"];
         IEGroup[10] = ["!","ia","ib","id","if"];
         IEGroup[11] = ["!","ic","jc","ie"];
         IEGroup[12] = ["!","ja","jb","jd","je","jf","jg"];
         IEGroup[13] = ["!","ka","kb","kc","kd","ke","kf"];
         IEGroup[14] = ["!","la","lb","m0","m1","m2","m3","m4","m5","m6","m7","m8","m9","n0","n1","n2","n3","n4","n5","n6","n7","n8","n9","lc"];
         IEGroup[15] = ["!","oa","os","ob","oc","od","oe","of","s0","s1","s2","s3","s4","s5","s6","s7","s8","s9"];
         IEGroup[16] = ["!","og","oh","oo","op","oq","or"];
         IEGroup[17] = ["!","om","on","ok","ol","oi","oj"];
         IEGroup[18] = ["!","t0","t1","t2","t3","t4","t5","t6","t7","t8","t9"];
         IEData["aa"] = [["LeftArm","_meter"],["LeftArm2","_meter"],["LeftArm2","_depth"],["LeftHand","_menu"],["LeftHand2","_meter"],["RightArm","_meter"],["RightArm2","_meter"],["RightArm2","_depth"],["RightHand","_menu"],["RightHand2","_meter"]];
         IEData["ab"] = [["Item0","_menu"],["Item0","_color0"],["Item0","_color1"],["Item0","_color2"]];
         IEData["ac"] = [["Item1","_menu"],["Item1","_color0"],["Item1","_color1"],["Item1","_color2"]];
         IEData["ba"] = [["Head","_meter"]];
         IEData["bb"] = [["Ashi","_menu"],["Ashi","_reversal"]];
         IEData["bd"] = [["Ashi2","_menu"]];
         IEData["bc"] = [["Xmove","_meter"],["Ymove","_meter"],["Ymove","_depth"],["Jump","_meter"],["Shadow","_visible"]];
         IEData["be"] = [["Rmove","_meter"]];
         IEData["ca"] = [["BodyHeight","_meter"],["Waist","_menu"],["douHeight","_meter"],["AshiHeight","_meter"],["BodyWidth","_meter"],["HipWidth","_meter"],["HandWidth","_meter"],["AshiWidth","_meter"],["ShoulderWidth","_meter"]];
         IEData["cb"] = [["Kobito","_check"]];
         IEData["da"] = [["Body","_color0"],["BodyPlus","_menu"],["BodyPlus","_color0"],["BodyAlpha","_meter"]];
         IEData["db"] = [["Hiyake","_menu"],["Hiyake","_color0"]];
         IEData["dd"] = [["Hoho","_menu"],["Contour","_menu"],["ContourWidth","_meter"],["ContourHeight","_meter"],["HeadScale","_meter"]];
         IEData["dh"] = [["Nipple","_color0"],["NippleSize","_meter"],["NippleHeight","_meter"],["NippleWidth","_meter"],["Nipple","_menu"]];
         IEData["di"] = [["Breast","_menu"]];
         IEData["qa"] = [["Tin","_menu"],["Tin","_color0"],["Tin","_color1"],["TinSize","_meter"],["TinEx","_menu"],["Tin","_color2"],["Tin","_depth"],["TinManualAuto","_check"],["TinBokki","_check"],["TinSwing","_meter"],["TinKawa","_menu"]];
         IEData["qb"] = [["Tama","_menu"],["TamaSize","_meter"]];
         IEData["dc"] = [["s","_sClick"],["s","_menu"],["s","_color0"],["s","_color1"],["s","_color2"]];
         IEData["eh"] = [["UnderHair","_menu"],["UnderHair","_color0"]];
         IEData["ea"] = [["Hair","_menu"],["Hair","_color0"],["Hair","_color1"],["Hair","_color2"],["Hair","_reversal"],["Hair","_sen"]];
         IEData["ec"] = [["HairBack","_menu"],["HairBack_Height","_meter"],["HairBack","_color0"],["HairBack","_color1"],["HairBack","_color2"]];
         IEData["ed"] = [["Bangs","_menu"],["Bangs_Height","_meter"],["Bangs","_reversal"],["Bangs","_depth"],["Bangs","_color0"],["Bangs","_color1"]];
         IEData["ef"] = [["SideBurnLeft","_menu"],["SideBurnLeft","_depth"],["SideBurnLeft_Height","_meter"],["SideBurnLeft","_color0"],["SideBurnLeft","_color1"],["SideBurnLeft","_color2"]];
         IEData["eg"] = [["SideBurnRight","_menu"],["SideBurnRight","_depth"],["SideBurnRight_Height","_meter"],["SideBurnRight","_color0"],["SideBurnRight","_color1"],["SideBurnRight","_color2"]];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            IEData["r" + this.i] = [["HairEx" + this.i,"_menu"],["HairEx" + this.i,"_color0"],["HairEx" + this.i,"_color1"],["HairEx" + this.i,"_color2"],["HairEx" + this.i,"_reversal2"],["HairEx" + this.i,"_depth"],["HairExScaleX" + this.i,"_meter"],["HairExScaleY" + this.i,"_meter"],["HairExRotation" + this.i,"_meter"],["HairExX" + this.i,"_meter"],["HairExY" + this.i,"_meter"],["HairEx" + this.i,"_turn"]];
            ++this.i;
         }
         IEData["fa"] = [["Eye","_menu"],["EyeX","_meter"],["EyeY","_meter"],["EyeScaleX","_meter"],["EyeScaleY","_meter"],["EyeRotation","_meter"],["Eye","_color0"]];
         IEData["fb"] = [["Eyelib","_visible"]];
         IEData["fc"] = [["EyeballLeft","_menu"],["EyeballLeft","_color0"],["EyeballLeft","_color1"],["EyeballRight","_menu"],["EyeballRight","_color0"],["EyeballRight","_color1"],["EyeballScale","_meter"],["EyeballLeft","_color2"],["EyeballRight","_color2"]];
         IEData["fd"] = [["Eyebrow","_menu"],["Eyebrow","_depth"],["EyebrowY","_meter"],["Eyebrow","_color0"],["Eyebrow","_color1"]];
         IEData["fe"] = [["MouthScale","_meter"],["MouthY","_meter"]];
         IEData["ff"] = [["FaceOption","_visible"]];
         IEData["fg"] = [["Nose","_menu"],["NoseHeight","_meter"]];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            IEData["t" + this.i] = [["Mark" + this.i,"_menu"],["Mark" + this.i,"_color0"],["Mark" + this.i,"_color1"],["Mark" + this.i,"_color2"],["MarkScaleX" + this.i,"_meter"],["MarkScaleY" + this.i,"_meter"],["MarkRotation" + this.i,"_meter"],["MarkX" + this.i,"_meter"],["MarkY" + this.i,"_meter"],["Mark" + this.i,"_reversal"]];
            ++this.i;
         }
         IEData["pa"] = [["Ear","_menu"],["Ear","_color0"],["Ear","_color1"],["Ear","_color2"],["EarScale","_meter"],["EarRotation","_meter"],["EarX","_meter"],["EarY","_meter"],["Ear","_sen"],["Ear","_senColor"]];
         IEData["pb"] = [["Mimi","_menu"],["Mimi","_color0"],["Mimi","_color1"],["Mimi","_color2"]];
         IEData["pc"] = [["Horn","_menu"],["Horn","_color0"],["Horn","_color1"],["Horn","_color2"],["Horn","_depth"],["HornScale","_meter"],["HornY","_meter"]];
         IEData["pd"] = [["Hane","_menu"],["Hane","_color0"],["Hane","_color1"],["Hane","_color2"],["Hane","_posi0"],["Hane","_posi1"],["HaneScale","_meter"],["Hane","_reversal"],["HaneY","_meter"]];
         IEData["pe"] = [["Tail","_menu"],["Tail","_color0"],["Tail","_color1"],["Tail","_color2"],["Tail","_posi0"],["Tail","_reversal"],["TailScale","_meter"]];
         IEData["ga"] = [["EmotionManualAuto","_check"]];
         IEData["gb"] = [["Ahegao","_check"]];
         IEData["gc"] = [["HeartPlus","_meter"],["HeartMinus","_meter"]];
         IEData["gd"] = [["EyeOption","_visible"]];
         IEData["ge"] = [["EmotionOption","_visible"]];
         IEData["gf"] = [["Hukidashi","_menu"]];
         IEData["gg"] = [["defoEye","_menu"],["defoEye","_color0"],["defoEyeScale","_meter"],["defoEyeX","_meter"],["defoEyeY","_meter"],["defoEye","_reversal"]];
         IEData["ha"] = [["EmotionEyeLeft","_meter"],["EmotionEyeRight","_meter"]];
         IEData["hb"] = [["EyeballXMove","_meter"],["EyeballXMove","_reversal"],["EyeballYMove","_meter"],["EyeballWidth","_meter"]];
         IEData["hc"] = [["EmotionEyebrowLeft","_menu"],["EyebrowRotationLeft","_meter"],["EyebrowMoveLeft","_meter"],["EmotionEyebrowRight","_menu"],["EyebrowRotationRight","_meter"],["EyebrowMoveRight","_meter"]];
         IEData["hd"] = [["EmotionMouth","_menu"],["EmotionMouth","_reversal"],["MouthWidth","_meter"],["MouthHeight","_meter"]];
         IEData["ia"] = [["Seihuku","_menu"],["Seihuku","_color0"],["Seihuku","_color1"],["Seihuku","_color2"],["Seihuku","_g0"]];
         IEData["ib"] = [["Ysyatu","_menu"],["Ysyatu","_color0"],["Ysyatu","_color1"],["Ysyatu","_color2"],["Ysyatu","_g0"],["Ysyatu","_g1"],["Ysyatu","_g2"],["YsyatuDou","_menu"],["YsyatuLeftArm","_menu"],["YsyatuLeftArm","_color0"],["YsyatuLeftArm","_color1"],["YsyatuRightArm","_menu"],["YsyatuRightArm","_color0"],["YsyatuRightArm","_color1"]];
         IEData["id"] = [["Tsyatu","_menu"],["Tsyatu","_color0"],["Tsyatu","_color1"],["Tsyatu","_color2"],["Tsyatu","_g0"],["Tsyatu","_g1"],["TsyatuDou","_menu"],["TsyatuLeftArm","_menu"],["TsyatuLeftArm","_color0"],["TsyatuLeftArm","_color1"],["TsyatuRightArm","_menu"],["TsyatuRightArm","_color0"],["TsyatuRightArm","_color1"]];
         IEData["if"] = [["Vest","_menu"],["Vest","_color0"],["Vest","_color1"],["Vest","_color2"],["VestDou","_menu"],["VestLeftArm","_menu"],["VestLeftArm","_color0"],["VestLeftArm","_color1"],["VestRightArm","_menu"],["VestRightArm","_color0"],["VestRightArm","_color1"],["Vest","_g0"],["Vest","_g1"]];
         IEData["ic"] = [["Skirt","_menu"],["Skirt","_color0"],["Skirt","_color1"],["Skirt","_color2"],["Skirt","_depth"]];
         IEData["jc"] = [["Tights","_menu"],["Tights","_color0"],["Tights","_color1"],["Tights","_color2"]];
         IEData["ie"] = [["Zubon","_menu"],["Zubon","_color0"],["Zubon","_color1"],["Zubon","_color2"],["ZubonAshi0","_menu"],["ZubonAshi0","_color0"],["ZubonAshi0","_color1"],["ZubonAshi0","_color2"],["ZubonAshi1","_menu"],["ZubonAshi1","_color0"],["ZubonAshi1","_color1"],["ZubonAshi1","_color2"],["Zubon","_depth"]];
         IEData["ja"] = [["Socks0","_menu"],["Socks0","_color0"],["Socks0","_color1"],["Socks0","_color2"]];
         IEData["jb"] = [["Socks1","_menu"],["Socks1","_color0"],["Socks1","_color1"],["Socks1","_color2"]];
         IEData["jd"] = [["Kutu0","_menu"],["Kutu0","_color0"],["Kutu0","_color1"],["Kutu0","_color2"]];
         IEData["je"] = [["Kutu1","_menu"],["Kutu1","_color0"],["Kutu1","_color1"],["Kutu1","_color2"]];
         IEData["jf"] = [["LegBand0","_menu"],["LegBand0","_color0"],["LegBand0","_color1"],["LegBand0","_color2"]];
         IEData["jg"] = [["LegBand1","_menu"],["LegBand1","_color0"],["LegBand1","_color1"],["LegBand1","_color2"]];
         IEData["ka"] = [["Bura","_menu"],["Bura","_color0"],["Bura","_color1"],["Bura","_color2"]];
         IEData["kb"] = [["Pantu","_menu"],["Pantu","_color0"],["Pantu","_color1"],["Pantu","_color2"]];
         IEData["kf"] = [["Nawa","_menu"],["Nawa","_color0"],["Nawa","_color1"],["Nawa","_color2"]];
         IEData["kc"] = [["NippleGLeft","_menu"],["NippleGLeft","_color0"],["NippleGLeft","_color1"],["NippleGLeftSize","_meter"],["NippleGLeft","_color2"]];
         IEData["kd"] = [["NippleGRight","_menu"],["NippleGRight","_color0"],["NippleGRight","_color1"],["NippleGRightSize","_meter"],["NippleGRight","_color2"]];
         IEData["ke"] = [["SG","_menu"],["SG","_color0"],["SG","_color1"],["SGSize","_meter"],["SG","_color2"]];
         IEData["la"] = [["Hat","_menu"],["Hat","_color0"],["Hat","_color1"],["Hat","_color2"],["Hat","_reversal"]];
         IEData["lb"] = [["Megane","_menu"],["Megane","_color0"],["Megane","_color1"],["Megane","_color2"],["Megane","_reversal"],["Megane","_g0"]];
         IEData["lc"] = [["Headband","_menu"],["Headband","_color0"],["Headband","_color1"],["Headband","_color2"],["Headband","_depth"]];
         this.i = 0;
         while(this.i <= Main.RibonhukusuuNum)
         {
            IEData["m" + this.i] = [["Ribon" + this.i,"_menu"],["Ribon" + this.i,"_color0"],["Ribon" + this.i,"_color1"],["Ribon" + this.i,"_color2"],["Ribon" + this.i,"_reversal2"],["Ribon" + this.i,"_depth"],["RibonScale" + this.i,"_meter"],["RibonRotation" + this.i,"_meter"],["RibonX" + this.i,"_meter"],["RibonY" + this.i,"_meter"]];
            ++this.i;
         }
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            IEData["n" + this.i] = [["Hairpin" + this.i,"_menu"],["Hairpin" + this.i,"_color0"],["Hairpin" + this.i,"_color1"],["Hairpin" + this.i,"_color2"],["Hairpin" + this.i,"_reversal2"],["HairpinScale" + this.i,"_meter"],["HairpinRotation" + this.i,"_meter"],["HairpinX" + this.i,"_meter"],["HairpinY" + this.i,"_meter"]];
            ++this.i;
         }
         IEData["oa"] = [["Gag","_menu"],["Gag","_color0"],["Gag","_color1"],["Gag","_color2"]];
         IEData["os"] = [["Headphone","_menu"],["Headphone","_color0"],["Headphone","_color1"],["Headphone","_color2"],["Headphone","_g0"]];
         IEData["ob"] = [["Earring0","_menu"],["Earring0","_color0"],["Earring0","_color1"],["Earring0","_color2"]];
         IEData["oc"] = [["Earring1","_menu"],["Earring1","_color0"],["Earring1","_color1"],["Earring1","_color2"]];
         IEData["od"] = [["Collar","_menu"],["Collar","_color0"],["Collar","_color1"],["Collar","_color2"],["Collar","_g0"]];
         IEData["oe"] = [["Necklace","_menu"],["Necklace","_color0"],["Necklace","_color1"],["Necklace","_color2"]];
         IEData["of"] = [["Necktie","_menu"],["Necktie","_color0"],["Necktie","_color1"],["Necktie","_color2"],["Necktie","_g0"]];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            IEData["s" + this.i] = [["Belt" + this.i,"_menu"],["Belt" + this.i,"_color0"],["Belt" + this.i,"_color1"],["Belt" + this.i,"_color2"],["Belt" + this.i,"_reversal"],["BeltScale" + this.i,"_meter"],["BeltRotation" + this.i,"_meter"],["BeltX" + this.i,"_meter"],["BeltY" + this.i,"_meter"],["Belt" + this.i,"_depth"],["BeltExtra" + this.i,"_menu"],["Belt" + this.i,"_mask"],["BeltScaleY" + this.i,"_meter"]];
            ++this.i;
         }
         IEData["og"] = [["Wristband0","_menu"],["Wristband0","_color0"],["Wristband0","_color1"],["Wristband0","_color2"]];
         IEData["oh"] = [["Wristband1","_menu"],["Wristband1","_color0"],["Wristband1","_color1"],["Wristband1","_color2"]];
         IEData["oo"] = [["Armband0","_menu"],["Armband0","_color0"],["Armband0","_color1"],["Armband0","_color2"]];
         IEData["op"] = [["Armband1","_menu"],["Armband1","_color0"],["Armband1","_color1"],["Armband1","_color2"]];
         IEData["oq"] = [["Bracelet0","_menu"],["Bracelet0","_color0"],["Bracelet0","_color1"],["Bracelet0","_color2"]];
         IEData["or"] = [["Bracelet1","_menu"],["Bracelet1","_color0"],["Bracelet1","_color1"],["Bracelet1","_color2"]];
         IEData["om"] = [["ArmBracelet0","_menu"],["ArmBracelet0","_color0"],["ArmBracelet0","_color1"],["ArmBracelet0","_color2"]];
         IEData["on"] = [["ArmBracelet1","_menu"],["ArmBracelet1","_color0"],["ArmBracelet1","_color1"],["ArmBracelet1","_color2"]];
         IEData["ok"] = [["Elbowpad0","_menu"],["Elbowpad0","_color0"],["Elbowpad0","_color1"],["Elbowpad0","_color2"]];
         IEData["ol"] = [["Elbowpad1","_menu"],["Elbowpad1","_color0"],["Elbowpad1","_color1"],["Elbowpad1","_color2"]];
         IEData["oi"] = [["Glove0","_menu"],["Glove0","_color0"],["Glove0","_color1"],["Glove0","_color2"],["GloveLength0","_menu"]];
         IEData["oj"] = [["Glove1","_menu"],["Glove1","_color0"],["Glove1","_color1"],["Glove1","_color2"],["GloveLength1","_menu"]];
         IEData["ua"] = [["Glove1","_menu"],["Glove1","_color0"],["Glove1","_color1"],["Glove1","_color2"],["GloveLength1","_menu"]];
         IEData["ub"] = [["Glove1","_menu"],["Glove1","_color0"],["Glove1","_color1"],["Glove1","_color2"],["GloveLength1","_menu"]];
         IEData["uc"] = [["Glove1","_menu"],["Glove1","_color0"],["Glove1","_color1"],["Glove1","_color2"],["GloveLength1","_menu"]];
      }
   }
}
