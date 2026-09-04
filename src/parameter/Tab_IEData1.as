package parameter
{
   public class Tab_IEData1
   {
      
      public static var IEData:Array = new Array();
      
      public static var IEGroup:Array = new Array();
       
      
      private var i:int;
      
      private var n:int;
      
      private var str:String;
      
      public function Tab_IEData1()
      {
         super();
         IEGroup[0] = ["aa","ab","ac"];
         IEGroup[1] = ["ba","bb","bc","bd","be"];
         IEGroup[2] = ["bi","bf","bg","bh"];
         IEGroup[3] = ["ca"];
         if(Main.r18Check)
         {
            IEGroup[4] = ["da","db","dd","di"];
         }
         else
         {
            IEGroup[4] = ["da","db","dd","dh","di"];
         }
         IEGroup[5] = ["qa","qb","dc","eh"];
         IEGroup[6] = ["ea","ec","ed","ef","eg"];
         IEGroup[7] = [];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.i <= 9)
            {
               IEGroup[7].push("r0" + this.i);
            }
            else
            {
               IEGroup[7].push("r" + this.i);
            }
            ++this.i;
         }
         IEGroup[8] = ["fa","fb","fh","fk","fc","fj"];
         IEGroup[9] = ["fd","fe","ff","fg","fi","pa"];
         IEGroup[10] = [];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.i <= 9)
            {
               IEGroup[10].push("t0" + this.i);
            }
            else
            {
               IEGroup[10].push("t" + this.i);
            }
            ++this.i;
         }
         IEGroup[11] = ["pb","pc","pd","pe"];
         if(Main.r18Check)
         {
            IEGroup[12] = ["ga","gc","ge","gh","gf","gg","gd"];
         }
         else
         {
            IEGroup[12] = ["ga","gb","gc","ge","gh","gf","gg","gd"];
         }
         IEGroup[13] = ["ha","hb","hc","hd"];
         IEGroup[14] = ["ad","ae"];
         IEGroup[15] = ["ia","if"];
         IEGroup[16] = ["ib","id"];
         IEGroup[17] = ["ic","jc","ie"];
         IEGroup[18] = ["ja","jb","jf","jg"];
         IEGroup[19] = ["jd","je"];
         if(Main.r18Check)
         {
            IEGroup[20] = ["ka","kb"];
         }
         else
         {
            IEGroup[20] = ["ka","kb","kc","kd","ke","kf"];
         }
         IEGroup[21] = ["kg"];
         IEGroup[22] = ["la","lb","oa","os","ob","oc","od","oe","of","lc"];
         IEGroup[23] = [];
         this.i = 0;
         while(this.i <= Main.RibonhukusuuNum)
         {
            if(this.i <= 9)
            {
               IEGroup[23].push("m0" + this.i);
            }
            else
            {
               IEGroup[23].push("m" + this.i);
            }
            ++this.i;
         }
         IEGroup[24] = [];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.i <= 9)
            {
               IEGroup[24].push("s0" + this.i);
            }
            else
            {
               IEGroup[24].push("s" + this.i);
            }
            ++this.i;
         }
         IEGroup[25] = ["og","oh","oo","op","oq","or"];
         IEGroup[26] = ["om","on","ok","ol","oi","oj"];
         IEGroup[27] = [];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.i <= 9)
            {
               IEGroup[27].push("f0" + this.i);
            }
            else
            {
               IEGroup[27].push("f" + this.i);
            }
            ++this.i;
         }
         IEGroup[28] = [];
         this.n = MenuClass.systemData["FreeHandPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               IEGroup[28].push("a0" + this.i);
            }
            else
            {
               IEGroup[28].push("a" + this.i);
            }
            ++this.i;
         }
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               IEGroup[28].push("b0" + this.i);
            }
            else
            {
               IEGroup[28].push("b" + this.i);
            }
            ++this.i;
         }
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               IEGroup[28].push("c0" + this.i);
            }
            else
            {
               IEGroup[28].push("c" + this.i);
            }
            ++this.i;
         }
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               IEGroup[28].push("d0" + this.i);
            }
            else
            {
               IEGroup[28].push("d" + this.i);
            }
            ++this.i;
         }
         IEGroup[29] = [];
         this.n = MenuClass.systemData["FreeRibonPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               IEGroup[29].push("w0" + this.i);
            }
            else
            {
               IEGroup[29].push("w" + this.i);
            }
            ++this.i;
         }
         IEGroup[30] = [];
         this.n = MenuClass.systemData["FreeBeltPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               IEGroup[30].push("x0" + this.i);
            }
            else
            {
               IEGroup[30].push("x" + this.i);
            }
            ++this.i;
         }
         IEGroup[31] = [];
         this.n = MenuClass.systemData["FreeChairPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               IEGroup[31].push("e0" + this.i);
            }
            else
            {
               IEGroup[31].push("e" + this.i);
            }
            ++this.i;
         }
         IEGroup[32] = [];
         this.n = MenuClass.systemData["FreeFlagPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               IEGroup[32].push("y0" + this.i);
            }
            else
            {
               IEGroup[32].push("y" + this.i);
            }
            ++this.i;
         }
         IEGroup[33] = [];
         this.n = MenuClass.systemData["FreeHukidashiPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               IEGroup[33].push("z0" + this.i);
            }
            else
            {
               IEGroup[33].push("z" + this.i);
            }
            ++this.i;
         }
         IEGroup[34] = ["ua","uf","ue","ub"];
         IEGroup[35] = ["u0","u1","u2","u3","u4","u5","u6","u7","u8","u9"];
         IEGroup[36] = [];
         this.n = MenuClass.systemData["LoadPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               IEGroup[36].push("v0" + this.i);
            }
            else
            {
               IEGroup[36].push("v" + this.i);
            }
            ++this.i;
         }
         IEGroup[37] = ["ud","ug"];
         IEGroup[38] = ["uc"];
         IEData["aa"] = [["LeftArm","_meter"],["LeftArm2","_meter"],["LeftArm2","_depth"],["LeftHand","_menu"],["LeftHand2","_meter"],["RightArm","_meter"],["RightArm2","_meter"],["RightArm2","_depth"],["RightHand","_menu"],["RightHand2","_meter"]];
         IEData["ab"] = [["Item0","_menu"],["Item0","_color0"],["Item0","_color1"],["Item0","_color2"]];
         IEData["ac"] = [["Item1","_menu"],["Item1","_color0"],["Item1","_color1"],["Item1","_color2"]];
         IEData["ba"] = [["Head","_meter"]];
         IEData["bb"] = [["Ashi","_menu"],["Ashi","_reversal"]];
         IEData["bd"] = [["Ashi2","_menu"]];
         IEData["bc"] = [["Xmove","_meter"],["Ymove","_meter"],["Ymove","_depth"],["Jump","_meter"],["Shadow","_visible"],["BodyYMove","_meter"]];
         IEData["bf"] = [["CharaDropShadow","_menu"],["CharaDropShadow","_color0"],["CharaDropShadowIn","_check"],["CharaDropShadowOut","_check"],["CharaDropShadowHide","_check"],["CharaDropShadowAlpha","_meter"],["CharaDropShadowStr","_meter"],["CharaDropShadowX","_meter"],["CharaDropShadowY","_meter"],["CharaDropShadowRotation","_meter"],["CharaDropShadowDistance","_meter"]];
         IEData["bg"] = [["CharaBlur","_menu"],["CharaBlurX","_meter"],["CharaBlurY","_meter"]];
         IEData["bi"] = [["BodyPlus","_menu"],["BodyPlus","_color0"],["BodyAlpha","_meter"],["BodyPlusMeter","_meter"]];
         IEData["bh"] = [["CharaFilterEmotion","_check"]];
         IEData["be"] = [["Rmove","_meter"]];
         IEData["ca"] = [["BodyHeight","_meter"],["Waist","_menu"],["douHeight","_meter"],["AshiHeight","_meter"],["BodyWidth","_meter"],["HipWidth","_meter"],["HandWidth","_meter"],["AshiWidth","_meter"],["ShoulderWidth","_meter"],["Heso","_menu"],["WaistAlpha","_meter"],["BodySize","_meter"]];
         IEData["da"] = [["Body","_color0"]];
         IEData["db"] = [["Hiyake","_menu"],["Hiyake","_color0"]];
         IEData["dd"] = [["Hoho","_menu"],["Contour","_menu"],["ContourWidth","_meter"],["ContourHeight","_meter"],["HeadScale","_meter"],["NeckHeight","_meter"]];
         IEData["dh"] = [["Nipple","_color0"],["NippleSize","_meter"],["NippleHeight","_meter"],["NippleWidth","_meter"],["Nipple","_menu"]];
         IEData["di"] = [["Breast","_menu"]];
         IEData["qa"] = [["Tin","_menu"],["Tin","_color0"],["Tin","_color1"],["TinSize","_meter"],["TinEx","_meter"],["Tin","_color2"],["Tin","_depth"],["TinManualAuto","_check"],["TinBokki","_check"],["TinSwing","_meter"],["TinKawa","_menu"],["Tin","_tClick"]];
         IEData["qb"] = [["Tama","_menu"],["TamaSize","_meter"]];
         IEData["dc"] = [["s","_sClick"],["s","_menu"],["s","_color0"],["s","_color1"],["s","_color2"],["s","_hidaPlay"]];
         IEData["eh"] = [["UnderHair","_menu"],["UnderHair","_color0"],["UnderHairAlpha","_meter"]];
         IEData["ea"] = [["Hair","_menu"],["Hair","_color0"],["Hair","_color1"],["Hair","_color2"],["Hair","_reversal"],["Hair","_sen"]];
         IEData["ec"] = [["HairBack","_menu"],["HairBack_Height","_meter"],["HairBack","_color0"],["HairBack","_color1"],["HairBack","_color2"],["HairBack_Width","_meter"],["HairBack_Y","_meter"],["HairBack","_turn"]];
         IEData["ed"] = [["Bangs","_menu"],["Bangs_Height","_meter"],["Bangs","_reversal"],["Bangs","_depth"],["Bangs","_color0"],["Bangs","_color1"]];
         IEData["ef"] = [["SideBurnLeft","_menu"],["SideBurnLeft","_depth"],["SideBurnLeft_Height","_meter"],["SideBurnLeft","_color0"],["SideBurnLeft","_color1"],["SideBurnLeft","_color2"],["SideBurnLeft_x","_meter"],["SideBurnLeft","_turn"]];
         IEData["eg"] = [["SideBurnRight","_menu"],["SideBurnRight","_depth"],["SideBurnRight_Height","_meter"],["SideBurnRight","_color0"],["SideBurnRight","_color1"],["SideBurnRight","_color2"],["SideBurnRight_x","_meter"],["SideBurnRight","_turn"]];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["r" + this.str] = [["HairEx" + this.i,"_menu"],["HairEx" + this.i,"_color0"],["HairEx" + this.i,"_color1"],["HairEx" + this.i,"_color2"],["HairEx" + this.i,"_reversal2"],["HairEx" + this.i,"_depth"],["HairExScaleX" + this.i,"_meter"],["HairExScaleY" + this.i,"_meter"],["HairExRotation" + this.i,"_meter"],["HairExX" + this.i,"_meter"],["HairExY" + this.i,"_meter"],["HairEx" + this.i,"_turn"],["HairExLine" + this.i,"_menu"],["HairExScaleB" + this.i,"_meter"],["HairEx" + this.i,"_shadow"],["HairExRotationPlus" + this.i,"_meter"],["HairExAdd" + this.i,"_add0"]];
            ++this.i;
         }
         IEData["fa"] = [["Eye","_menu"],["EyeX","_meter"],["EyeY","_meter"],["EyeScaleX","_meter"],["EyeScaleY","_meter"],["EyeRotation","_meter"],["Eye","_color0"],["Eye","_depth"]];
         IEData["fb"] = [["Eyelib","_menu"]];
         IEData["fh"] = [["Lowerlash","_menu"]];
         IEData["fk"] = [["Eyelash","_menu"]];
         IEData["fc"] = [["EyeballLeft","_menu"],["EyeballLeft","_color0"],["EyeballLeft","_color1"],["EyeballRight","_menu"],["EyeballRight","_color0"],["EyeballRight","_color1"],["EyeballScale","_meter"],["EyeballLeft","_color2"],["EyeballRight","_color2"],["EyeballScaleY","_meter"],["EyeballX","_meter"],["EyeballY","_meter"]];
         IEData["fj"] = [["EyeballLight","_menu"],["EyeballLight","_reversal"],["EyeballLightRotation","_meter"]];
         IEData["fd"] = [["Eyebrow","_menu"],["Eyebrow","_depth"],["EyebrowY","_meter"],["Eyebrow","_color0"],["Eyebrow","_color1"],["EyebrowRotation","_meter"]];
         IEData["fe"] = [["MouthScale","_meter"],["MouthY","_meter"]];
         IEData["ff"] = [["FaceOption","_visible"]];
         IEData["fg"] = [["Nose","_menu"],["NoseHeight","_meter"],["Nose","_color0"],["Nose","_color1"],["Nose","_color2"],["Nose","_reversal"],["NoseScaleX","_meter"],["NoseScaleY","_meter"]];
         IEData["fi"] = [["NoseShadow","_menu"],["NoseShadowAlpha","_meter"],["NoseShadowHeight","_meter"],["NoseShadowScaleX","_meter"],["NoseShadowScaleY","_meter"]];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["t" + this.str] = [["Mark" + this.i,"_menu"],["Mark" + this.i,"_color0"],["Mark" + this.i,"_color1"],["Mark" + this.i,"_color2"],["MarkScaleX" + this.i,"_meter"],["MarkScaleY" + this.i,"_meter"],["MarkRotation" + this.i,"_meter"],["MarkX" + this.i,"_meter"],["MarkY" + this.i,"_meter"],["Mark" + this.i,"_reversal2"],["MarkScaleB" + this.i,"_meter"],["Mark" + this.i,"_depth"],["MarkAlpha" + this.i,"_meter"]];
            ++this.i;
         }
         IEData["pa"] = [["Ear","_menu"],["Ear","_color0"],["Ear","_color1"],["Ear","_color2"],["EarScale","_meter"],["EarRotation","_meter"],["EarX","_meter"],["EarY","_meter"],["Ear","_sen"],["Ear","_senColor"]];
         IEData["pb"] = [["Mimi","_menu"],["Mimi","_color0"],["Mimi","_color1"],["Mimi","_color2"],["Mimi","_mimihat"]];
         IEData["pc"] = [["Horn","_menu"],["Horn","_color0"],["Horn","_color1"],["Horn","_color2"],["Horn","_depth"],["HornScale","_meter"],["HornY","_meter"]];
         IEData["pd"] = [["Hane","_menu"],["Hane","_color0"],["Hane","_color1"],["Hane","_color2"],["Hane","_posi0"],["Hane","_posi1"],["HaneScale","_meter"],["Hane","_reversal"],["HaneY","_meter"]];
         IEData["pe"] = [["Tail","_menu"],["Tail","_color0"],["Tail","_color1"],["Tail","_color2"],["Tail","_posi0"],["Tail","_reversal"],["TailScale","_meter"]];
         IEData["ga"] = [["EmotionManualAuto","_check"]];
         IEData["gb"] = [["Ahegao","_check"],["ESituation","_menu"],["KandoSet","_meter"],["NamidaSet","_meter"],["ikiSet","_meter"]];
         IEData["gc"] = [["HeartPlus","_meter"],["HeartMinus","_meter"]];
         IEData["gd"] = [["EyeOption","_visible"]];
         IEData["ge"] = [["EmotionOption","_visible"]];
         IEData["gh"] = [["EmotionOption","_reversal"]];
         IEData["gf"] = [["Hukidashi","_menu"]];
         IEData["gg"] = [["defoEye","_menu"],["defoEye","_color0"],["defoEyeScale","_meter"],["defoEyeX","_meter"],["defoEyeY","_meter"],["defoEye","_reversal"]];
         IEData["ha"] = [["EmotionEyeLeft","_meter"],["EmotionEyeRight","_meter"]];
         IEData["hb"] = [["EyeballXMove","_meter"],["EyeballXMove","_reversal"],["EyeballYMove","_meter"],["EyeballWidth","_meter"],["EyeballWidthRight","_meter"],["EyeballXMoveRight","_meter"],["EyeballYMoveRight","_meter"]];
         IEData["hc"] = [["EmotionEyebrowLeft","_menu"],["EyebrowRotationLeft","_meter"],["EyebrowMoveLeft","_meter"],["EmotionEyebrowRight","_menu"],["EyebrowRotationRight","_meter"],["EyebrowMoveRight","_meter"]];
         IEData["hd"] = [["EmotionMouth","_menu"],["EmotionMouth","_reversal"],["MouthWidth","_meter"],["MouthHeight","_meter"],["MouthSen","_menu"],["MouthYMove","_meter"],["MouthXMove","_meter"],["MouthRotation","_meter"]];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["f" + this.str] = [["CharaLoadScale" + this.i,"_meter"],["CharaLoadReversalDepth" + this.i,"_depth"],["CharaLoadRotation" + this.i,"_meter"],["CharaLoadX" + this.i,"_meter"],["CharaLoadY" + this.i,"_meter"],["CharaLoadScaleY" + this.i,"_meter"],["CharaLoadSwfColor" + this.i,"_swfMenu"],["CharaLoadSwfColor" + this.i,"_swfSen"],["CharaLoadSwfColor" + this.i,"_swfColor"],["CharaLoadScaleB" + this.i,"_meter"],["CharaLoadAlpha" + this.i,"_meter"],["CharaLoadAdd" + this.i,"_add0"],["CharaLoadReversalDepth" + this.i,"_reversal"]];
            ++this.i;
         }
         IEData["ia"] = [["Seihuku","_menu"],["Seihuku","_color0"],["Seihuku","_color1"],["Seihuku","_color2"],["Seihuku","_g0"],["SeihukuLeftArm","_menu"],["SeihukuLeftArm","_color0"],["SeihukuLeftArm","_color1"],["SeihukuRightArm","_menu"],["SeihukuRightArm","_color0"],["SeihukuRightArm","_color1"],["SeihukuBreastOption","_menu"],["SeihukuBreastOption","_color0"],["SeihukuBreastOption","_color1"],["SeihukuBreastOption","_color2"],["SeihukuBreastOption","_reversal2"],["SeihukuDouOption","_menu"],["SeihukuDouOption","_color0"],["SeihukuDouOption","_color1"],["SeihukuDouOption","_color2"],["SeihukuDouOption","_number"]];
         IEData["ib"] = [["Ysyatu","_menu"],["Ysyatu","_color0"],["Ysyatu","_color1"],["Ysyatu","_color2"],["Ysyatu","_g0"],["Ysyatu","_g1"],["Ysyatu","_g2"],["YsyatuDou","_menu"],["YsyatuLeftArm","_menu"],["YsyatuLeftArm","_color0"],["YsyatuLeftArm","_color1"],["YsyatuRightArm","_menu"],["YsyatuRightArm","_color0"],["YsyatuRightArm","_color1"],["YsyatuSkirt","_menu"],["YsyatuBreastOption","_menu"],["YsyatuBreastOption","_color0"],["YsyatuBreastOption","_color1"],["YsyatuBreastOption","_color2"],["YsyatuBreastOption","_reversal2"],["YsyatuOption","_menu"],["YsyatuOption","_number"],["YsyatuDouOption","_menu"],["YsyatuDouOption","_color0"],["YsyatuDouOption","_color1"],["YsyatuDouOption","_color2"],["YsyatuDouOption","_number"]];
         IEData["id"] = [["Tsyatu","_menu"],["Tsyatu","_color0"],["Tsyatu","_color1"],["Tsyatu","_color2"],["Tsyatu","_g0"],["Tsyatu","_g1"],["TsyatuDou","_menu"],["TsyatuLeftArm","_menu"],["TsyatuLeftArm","_color0"],["TsyatuLeftArm","_color1"],["TsyatuRightArm","_menu"],["TsyatuRightArm","_color0"],["TsyatuRightArm","_color1"],["TsyatuSkirt","_menu"],["TsyatuBreastOption","_menu"],["TsyatuBreastOption","_color0"],["TsyatuBreastOption","_color1"],["TsyatuBreastOption","_color2"],["TsyatuBreastOption","_reversal2"],["TsyatuDouOption","_menu"],["TsyatuDouOption","_color0"],["TsyatuDouOption","_color1"],["TsyatuDouOption","_color2"],["TsyatuDouOption","_number"]];
         IEData["if"] = [["Vest","_menu"],["Vest","_color0"],["Vest","_color1"],["Vest","_color2"],["VestDou","_menu"],["VestLeftArm","_menu"],["VestLeftArm","_color0"],["VestLeftArm","_color1"],["VestRightArm","_menu"],["VestRightArm","_color0"],["VestRightArm","_color1"],["Vest","_g0"],["Vest","_g1"],["VestSkirt","_menu"],["VestBreastOption","_menu"],["VestBreastOption","_color0"],["VestBreastOption","_color1"],["VestBreastOption","_color2"],["VestBreastOption","_reversal2"],["VestDouOption","_menu"],["VestDouOption","_color0"],["VestDouOption","_color1"],["VestDouOption","_color2"],["VestDouOption","_number"]];
         IEData["ic"] = [["Skirt","_menu"],["Skirt","_color0"],["Skirt","_color1"],["Skirt","_color2"],["Skirt","_depth"]];
         IEData["jc"] = [["Tights","_menu"],["Tights","_color0"],["Tights","_color1"],["Tights","_color2"],["Tights","_depth"]];
         IEData["ie"] = [["Zubon","_menu"],["Zubon","_color0"],["Zubon","_color1"],["Zubon","_color2"],["ZubonAshi0","_menu"],["ZubonAshi0","_color0"],["ZubonAshi0","_color1"],["ZubonAshi0","_color2"],["ZubonAshi1","_menu"],["ZubonAshi1","_color0"],["ZubonAshi1","_color1"],["ZubonAshi1","_color2"],["Zubon","_depth"]];
         IEData["ja"] = [["Socks0","_menu"],["Socks0","_color0"],["Socks0","_color1"],["Socks0","_color2"]];
         IEData["jb"] = [["Socks1","_menu"],["Socks1","_color0"],["Socks1","_color1"],["Socks1","_color2"]];
         IEData["jf"] = [["LegBand0","_menu"],["LegBand0","_color0"],["LegBand0","_color1"],["LegBand0","_color2"]];
         IEData["jg"] = [["LegBand1","_menu"],["LegBand1","_color0"],["LegBand1","_color1"],["LegBand1","_color2"]];
         IEData["jd"] = [["Kutu0","_menu"],["Kutu0","_color0"],["Kutu0","_color1"],["Kutu0","_color2"],["KutuLong0","_menu"],["KutuLong0","_color0"],["KutuLong0","_color1"],["KutuLong0","_color2"]];
         IEData["je"] = [["Kutu1","_menu"],["Kutu1","_color0"],["Kutu1","_color1"],["Kutu1","_color2"],["KutuLong1","_menu"],["KutuLong1","_color0"],["KutuLong1","_color1"],["KutuLong1","_color2"]];
         IEData["ka"] = [["Bura","_menu"],["Bura","_color0"],["Bura","_color1"],["Bura","_color2"],["Bura","_separate"]];
         IEData["kb"] = [["Pantu","_menu"],["Pantu","_color0"],["Pantu","_color1"],["Pantu","_color2"],["Pantu","_depth"]];
         IEData["kf"] = [["Nawa","_menu"],["Nawa","_color0"],["Nawa","_color1"],["Nawa","_color2"]];
         IEData["kg"] = [["Vibrator","_menu"],["Vibrator","_color0"],["Vibrator","_color1"],["Vibrator","_color2"],["VibratorMove","_menu"],["VibratorSpeed","_menu"],["VibratorMove","_count"],["VibratorMove","_turn"],["VibratorSpeed","_turn"],["VibratorMove","_turn2"],["VibratorScale","_meter"],["VibratorThrough","_check"]];
         IEData["kc"] = [["NippleGLeft","_menu"],["NippleGLeft","_color0"],["NippleGLeft","_color1"],["NippleGLeftSize","_meter"],["NippleGLeft","_color2"]];
         IEData["kd"] = [["NippleGRight","_menu"],["NippleGRight","_color0"],["NippleGRight","_color1"],["NippleGRightSize","_meter"],["NippleGRight","_color2"]];
         IEData["ke"] = [["SG","_menu"],["SG","_color0"],["SG","_color1"],["SGSize","_meter"],["SG","_color2"]];
         IEData["la"] = [["Hat","_menu"],["Hat","_color0"],["Hat","_color1"],["Hat","_color2"],["Hat","_reversal"],["Hat","_hair0"],["Hat","_hair1"],["Hat","_hair2"],["Hat","_hair3"],["Hat","_hair4"]];
         IEData["lb"] = [["Megane","_menu"],["Megane","_color0"],["Megane","_color1"],["Megane","_color2"],["Megane","_reversal"],["Megane","_g0"],["MeganeY","_meter"],["Megane","_depth"]];
         IEData["lc"] = [["Headband","_menu"],["Headband","_color0"],["Headband","_color1"],["Headband","_color2"],["Headband","_depth"]];
         this.i = 0;
         while(this.i <= Main.RibonhukusuuNum)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["m" + this.str] = [["Ribon" + this.i,"_menu"],["Ribon" + this.i,"_color0"],["Ribon" + this.i,"_color1"],["Ribon" + this.i,"_color2"],["Ribon" + this.i,"_reversal2"],["Ribon" + this.i,"_depth"],["RibonScale" + this.i,"_meter"],["RibonRotation" + this.i,"_meter"],["RibonX" + this.i,"_meter"],["RibonY" + this.i,"_meter"],["RibonLine" + this.i,"_menu"],["RibonLine" + this.i,"_color0"],["RibonScaleY" + this.i,"_meter"],["RibonScaleB" + this.i,"_meter"],["Ribon" + this.i,"_reversal"],["RibonAdd" + this.i,"_add0"],["Ribon" + this.i,"_shadow"]];
            ++this.i;
         }
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["n" + this.str] = [["Hairpin" + this.i,"_menu"],["Hairpin" + this.i,"_color0"],["Hairpin" + this.i,"_color1"],["Hairpin" + this.i,"_color2"],["Hairpin" + this.i,"_reversal2"],["HairpinScale" + this.i,"_meter"],["HairpinRotation" + this.i,"_meter"],["HairpinX" + this.i,"_meter"],["HairpinY" + this.i,"_meter"],["HairpinLine" + this.i,"_menu"],["HairpinLine" + this.i,"_color0"],["HairpinScaleY" + this.i,"_meter"],["HairpinScaleB" + this.i,"_meter"]];
            ++this.i;
         }
         IEData["oa"] = [["Gag","_menu"],["Gag","_color0"],["Gag","_color1"],["Gag","_color2"]];
         IEData["os"] = [["Headphone","_menu"],["Headphone","_color0"],["Headphone","_color1"],["Headphone","_color2"],["Headphone","_g0"]];
         IEData["ob"] = [["Earring0","_menu"],["Earring0","_color0"],["Earring0","_color1"],["Earring0","_color2"]];
         IEData["oc"] = [["Earring1","_menu"],["Earring1","_color0"],["Earring1","_color1"],["Earring1","_color2"]];
         IEData["od"] = [["Collar","_menu"],["Collar","_color0"],["Collar","_color1"],["Collar","_color2"],["Collar","_g0"],["Collar","_depth"]];
         IEData["oe"] = [["Necklace","_menu"],["Necklace","_color0"],["Necklace","_color1"],["Necklace","_color2"],["Necklace","_depth"]];
         IEData["of"] = [["Necktie","_menu"],["Necktie","_color0"],["Necktie","_color1"],["Necktie","_color2"],["Necktie","_g0"]];
         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["s" + this.str] = [["Belt" + this.i,"_menu"],["Belt" + this.i,"_color0"],["Belt" + this.i,"_color1"],["Belt" + this.i,"_color2"],["Belt" + this.i,"_reversal2"],["BeltScale" + this.i,"_meter"],["BeltRotation" + this.i,"_meter"],["BeltX" + this.i,"_meter"],["BeltY" + this.i,"_meter"],["Belt" + this.i,"_depth"],["BeltExtra" + this.i,"_menu"],["Belt" + this.i,"_mask"],["BeltScaleY" + this.i,"_meter"],["BeltLine" + this.i,"_menu"],["BeltLine" + this.i,"_color0"],["BeltScaleB" + this.i,"_meter"]];
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
         IEData["ad"] = [["Breast_Left_Up","_check"],["Breast_Right_Up","_check"],["Breast_Left_Sayuu","_check"],["Breast_Right_Sayuu","_check"],["Nipple_Left_Up","_check"],["Nipple_Right_Up","_check"],["Nipple_Left_Sayuu","_check"],["Nipple_Right_Sayuu","_check"],["sClick","_check"],["Kiss","_check"]];
         IEData["ae"] = [["BreastManualAuto","_check"],["BreastLeft","_menu"],["BreastRight","_menu"],["NippleLeft","_menu"],["NippleRight","_menu"]];
         this.n = MenuClass.systemData["FreeHandPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["a" + this.str] = [["FreeHand" + this.i,"_menu"],["FreeHand" + this.i,"_reversal"],["FreeHand" + this.i,"_color0"],["FreeHand" + this.i,"_depth"],["FreeHandAlpha" + this.i,"_meter"],["FreeHandScale" + this.i,"_meter"],["FreeHandRotation" + this.i,"_meter"],["FreeHandX" + this.i,"_meter"],["FreeHandY" + this.i,"_meter"],["FreeHandDepth" + this.i,"_meter"],["FreeHandWrist" + this.i,"_menu"],["FreeHandWristRotation" + this.i,"_meter"],["FreeHandWidth" + this.i,"_meter"]];
            ++this.i;
         }
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["b" + this.str] = [["FreeHandItem" + this.i,"_menu"],["FreeHandItem" + this.i,"_color0"],["FreeHandItem" + this.i,"_color1"],["FreeHandItem" + this.i,"_color2"]];
            ++this.i;
         }
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["c" + this.str] = [["FreeHandVest" + this.i,"_menu"],["FreeHandVest" + this.i,"_color0"],["FreeHandVest" + this.i,"_color1"],["FreeHandVest" + this.i,"_color2"]];
            ++this.i;
         }
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["d" + this.str] = [["FreeHandWristband" + this.i,"_menu"],["FreeHandWristband" + this.i,"_color0"],["FreeHandWristband" + this.i,"_color1"],["FreeHandWristband" + this.i,"_color2"]];
            ++this.i;
         }
         this.n = MenuClass.systemData["FreeRibonPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["w" + this.str] = [["FreeRibon" + this.i,"_menu"],["FreeRibon" + this.i,"_reversal"],["FreeRibon" + this.i,"_color0"],["FreeRibon" + this.i,"_color1"],["FreeRibon" + this.i,"_color2"],["FreeRibon" + this.i,"_depth"],["FreeRibonScale" + this.i,"_meter"],["FreeRibonLine" + this.i,"_menu"],["FreeRibonLine" + this.i,"_color0"],["FreeRibonRotation" + this.i,"_meter"],["FreeRibonX" + this.i,"_meter"],["FreeRibonY" + this.i,"_meter"],["FreeRibonDepth" + this.i,"_meter"],["FreeRibonScaleY" + this.i,"_meter"],["FreeRibonScaleB" + this.i,"_meter"],["FreeRibon" + this.i,"_shadow"]];
            ++this.i;
         }
         this.n = MenuClass.systemData["FreeBeltPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["x" + this.str] = [["FreeBelt" + this.i,"_menu"],["FreeBelt" + this.i,"_reversal"],["FreeBelt" + this.i,"_color0"],["FreeBelt" + this.i,"_color1"],["FreeBelt" + this.i,"_color2"],["FreeBelt" + this.i,"_depth"],["FreeBeltScale" + this.i,"_meter"],["FreeBeltScaleY" + this.i,"_meter"],["FreeBeltLine" + this.i,"_menu"],["FreeBeltLine" + this.i,"_color0"],["FreeBeltRotation" + this.i,"_meter"],["FreeBeltX" + this.i,"_meter"],["FreeBeltY" + this.i,"_meter"],["FreeBeltDepth" + this.i,"_meter"],["FreeBeltExtra" + this.i,"_menu"],["FreeBeltScaleB" + this.i,"_meter"]];
            ++this.i;
         }
         this.n = MenuClass.systemData["FreeChairPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["e" + this.str] = [["FreeChair" + this.i,"_menu"],["FreeChair" + this.i,"_reversal"],["FreeChair" + this.i,"_color0"],["FreeChair" + this.i,"_color1"],["FreeChair" + this.i,"_color2"],["FreeChair" + this.i,"_depth"],["FreeChair" + this.i,"_depth2"],["FreeChairLine" + this.i,"_menu"],["FreeChairLine" + this.i,"_color0"],["FreeChairScale" + this.i,"_meter"],["FreeChairRotation" + this.i,"_meter"],["FreeChairX" + this.i,"_meter"],["FreeChairY" + this.i,"_meter"],["FreeChairDepth" + this.i,"_meter"],["FreeChairExtra" + this.i,"_menu"]];
            ++this.i;
         }
         this.n = MenuClass.systemData["FreeFlagPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["y" + this.str] = [["FreeFlag" + this.i,"_menu"],["FreeFlag" + this.i,"_depth"],["FreeFlagScale" + this.i,"_meter"],["FreeFlagScaleY" + this.i,"_meter"],["FreeFlagRotation" + this.i,"_meter"],["FreeFlagX" + this.i,"_meter"],["FreeFlagY" + this.i,"_meter"],["FreeFlagDepth" + this.i,"_meter"],["FreeFlagExtra" + this.i,"_menu"],["FreeFlagScaleB" + this.i,"_meter"]];
            ++this.i;
         }
         this.n = MenuClass.systemData["FreeHukidashiPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["z" + this.str] = [["FreeHukidashi" + this.i,"_menu"],["FreeHukidashi" + this.i,"_reversal"],["FreeHukidashi" + this.i,"_color0"],["FreeHukidashi" + this.i,"_color1"],["FreeHukidashi" + this.i,"_color2"],["FreeHukidashi" + this.i,"_depth"],["FreeHukidashiScale" + this.i,"_meter"],["FreeHukidashiScaleY" + this.i,"_meter"],["FreeHukidashiLine" + this.i,"_menu"],["FreeHukidashiLine" + this.i,"_color0"],["FreeHukidashiRotation" + this.i,"_meter"],["FreeHukidashiX" + this.i,"_meter"],["FreeHukidashiY" + this.i,"_meter"],["FreeHukidashiDepth" + this.i,"_meter"],["FreeHukidashiAlpha" + this.i,"_meter"],["FreeHukidashiBlend" + this.i,"_menu"],["FreeHukidashiScaleB" + this.i,"_meter"],["FreeHukidashiExtra" + this.i,"_visible"],["FreeHukidashiExtra" + this.i,"_menu"],["FreeHukidashiExtra" + this.i,"_reversal"],["FreeHukidashiExtraLine" + this.i,"_menu"],["FreeHukidashiExtraScale" + this.i,"_meter"],["FreeHukidashiExtraScaleY" + this.i,"_meter"],["FreeHukidashiExtraRotation" + this.i,"_meter"],["FreeHukidashiExtraX" + this.i,"_meter"],["FreeHukidashiExtraY" + this.i,"_meter"]];
            ++this.i;
         }
         IEData["ua"] = [["Background","_menu"],["Background","_color0"],["Background","_color1"],["Background","_color2"],["BgY","_meter"]];
         IEData["uf"] = [["BgFloor","_menu"],["BgFloor","_color0"],["BgFloor","_color1"],["BgFloor","_color2"]];
         IEData["ue"] = [["BgFront","_menu"],["BgFront","_color0"],["BgFront","_color1"],["BgFront","_color2"]];
         IEData["ub"] = [["Mob","_menu"]];
         this.n = MenuClass.systemData["txtFieldmenu"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            IEData["u" + this.i] = [["FontType" + this.i,"_color0"],["txtFieldScale" + this.i,"_meter"],["txtFieldX" + this.i,"_meter"],["txtFieldY" + this.i,"_meter"],["txtFieldLeading" + this.i,"_meter"],["txtFieldLetter" + this.i,"_meter"],["txtFieldTateYoko" + this.i,"_menu"],["txtFieldFormatAlign" + this.i,"_menu"],["txtFieldAlpha" + this.i,"_meter"],["txtFieldBoxScaleX" + this.i,"_meter"],["txtFieldBoxScaleY" + this.i,"_meter"],["txtFieldWidth" + this.i,"_meter"],["txtFieldScaleB" + this.i,"_meter"],["txtFieldRotation" + this.i,"_meter"],["txtFieldAdd" + this.i,"_add0"],["txtFieldDepth" + this.i,"_depth"]];
            ++this.i;
         }
         this.n = MenuClass.systemData["LoadPlus"]["_visible"].length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.i <= 9)
            {
               this.str = "0" + this.i;
            }
            else
            {
               this.str = String(this.i);
            }
            IEData["v" + this.str] = [["LoadScale" + this.i,"_meter"],["LoadReversalDepth" + this.i,"_depth"],["LoadRotation" + this.i,"_meter"],["LoadX" + this.i,"_meter"],["LoadY" + this.i,"_meter"],["LoadSize" + this.i,"_check"],["LoadScaleY" + this.i,"_meter"],["LoadSwfColor" + this.i,"_swfMenu"],["LoadSwfColor" + this.i,"_swfSen"],["LoadSwfColor" + this.i,"_swfColor"],["LoadScaleB" + this.i,"_meter"],["LoadAlpha" + this.i,"_meter"],["LoadAdd" + this.i,"_add0"],["LoadReversalDepth" + this.i,"_reversal"]];
            ++this.i;
         }
         IEData["ud"] = [["Mosaic","_menu"],["Mosaic","_color0"]];
         IEData["ug"] = [["SoundVolume","_meter"],["SoundPan","_check"]];
         IEData["uc"] = [["Zoom","_meter"],["Zoom","_x"],["Zoom","_y"]];
      }
   }
}
