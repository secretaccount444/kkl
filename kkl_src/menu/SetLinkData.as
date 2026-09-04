package menu
{
   import parameter.Dress_data;
   
   public class SetLinkData
   {
       
      
      private var charaData:Object;
      
      public function SetLinkData(param1:int)
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         super();
         this.charaData = MenuClass.charaData[param1];
         if(this.charaData["BodyHeight"]["_meter"] == this.charaData["AshiHeight"]["_meter"])
         {
            MenuClass.systemData["LinkBodyHeight"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkBodyHeight"]["_flag"] = false;
         }
         if(this.charaData["Ashi"]["_menu"] == this.charaData["Ashi2"]["_menu"])
         {
            MenuClass.systemData["LinkAshi"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkAshi"]["_flag"] = false;
         }
         if(this.charaData["CharaDropShadowX"]["_meter"] == this.charaData["CharaDropShadowY"]["_meter"])
         {
            MenuClass.systemData["LinkCharaDropShadow"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkCharaDropShadow"]["_flag"] = false;
         }
         if(this.charaData["CharaBlurX"]["_meter"] == this.charaData["CharaBlurY"]["_meter"])
         {
            MenuClass.systemData["LinkCharaBlur"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkCharaBlur"]["_flag"] = false;
         }
         if(this.charaData["LeftArm"]["_meter"] == this.charaData["RightArm"]["_meter"] && this.charaData["LeftArm2"]["_meter"] == this.charaData["RightArm2"]["_meter"] && this.charaData["LeftArm2"]["_depth"] == this.charaData["RightArm2"]["_depth"] && this.charaData["LeftHand"]["_menu"] == this.charaData["RightHand"]["_menu"] && this.charaData["LeftHand2"]["_meter"] == this.charaData["RightHand2"]["_meter"])
         {
            MenuClass.systemData["LinkHand"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkHand"]["_flag"] = false;
         }
         if(this.charaData["NippleGLeft"]["_menu"] == this.charaData["NippleGRight"]["_menu"] && String(this.charaData["NippleGLeft"]["_color0"][0]) == String(this.charaData["NippleGRight"]["_color0"][0]) && String(this.charaData["NippleGLeft"]["_color1"][0]) == String(this.charaData["NippleGRight"]["_color1"][0]) && String(this.charaData["NippleGLeft"]["_color2"][0]) == String(this.charaData["NippleGRight"]["_color2"][0]) && this.charaData["NippleGLeftSize"]["_meter"] == this.charaData["NippleGRightSize"]["_meter"])
         {
            MenuClass.systemData["LinkNippleG"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkNippleG"]["_flag"] = false;
         }
         if(this.charaData["Socks0"]["_menu"] == this.charaData["Socks1"]["_menu"] && String(this.charaData["Socks0"]["_color0"][0]) == String(this.charaData["Socks1"]["_color0"][0]) && String(this.charaData["Socks0"]["_color1"][0]) == String(this.charaData["Socks1"]["_color1"][0]) && String(this.charaData["Socks0"]["_color2"][0]) == String(this.charaData["Socks1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkSocks"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkSocks"]["_flag"] = false;
         }
         if(this.charaData["NoseScaleX"]["_meter"] == this.charaData["NoseScaleY"]["_meter"])
         {
            MenuClass.systemData["LinkNoseScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkNoseScale"]["_flag"] = false;
         }
         if(this.charaData["NoseShadowScaleX"]["_meter"] == this.charaData["NoseShadowScaleY"]["_meter"])
         {
            MenuClass.systemData["LinkNoseShadowScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkNoseShadowScale"]["_flag"] = false;
         }
         if(this.charaData["SideBurnLeft"]["_menu"] == this.charaData["SideBurnRight"]["_menu"] && String(this.charaData["SideBurnLeft"]["_color0"][0]) == String(this.charaData["SideBurnRight"]["_color0"][0]) && String(this.charaData["SideBurnLeft"]["_color1"][0]) == String(this.charaData["SideBurnRight"]["_color1"][0]) && String(this.charaData["SideBurnLeft"]["_color2"][0]) == String(this.charaData["SideBurnRight"]["_color2"][0]) && this.charaData["SideBurnLeft"]["_depth"] == this.charaData["SideBurnRight"]["_depth"] && this.charaData["SideBurnLeft"]["_turn"] == this.charaData["SideBurnRight"]["_turn"] && this.charaData["SideBurnLeft_Height"]["_meter"] == this.charaData["SideBurnRight_Height"]["_meter"] && this.charaData["SideBurnLeft_x"]["_meter"] == this.charaData["SideBurnRight_x"]["_meter"])
         {
            MenuClass.systemData["LinkSideBurn"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkSideBurn"]["_flag"] = false;
         }
         _loc2_ = MenuClass.systemData["HairExPlus"]["_menu"];
         if(this.charaData["HairExScaleX" + _loc2_]["_meter"] == this.charaData["HairExScaleY" + _loc2_]["_meter"])
         {
            MenuClass.systemData["LinkHairExScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkHairExScale"]["_flag"] = false;
         }
         if(this.charaData["HairExScaleX" + _loc2_]["_meter"] == this.charaData["HairExScaleY" + _loc2_]["_meter"] && (this.charaData["HairExScaleX" + _loc2_]["_meter"] >= 70 && this.charaData["HairExLine" + _loc2_]["_menu"] == 1 || this.charaData["HairExScaleX" + _loc2_]["_meter"] < 70 && this.charaData["HairExScaleX" + _loc2_]["_meter"] >= 50 && this.charaData["HairExLine" + _loc2_]["_menu"] == 2 || this.charaData["HairExScaleX" + _loc2_]["_meter"] < 50 && this.charaData["HairExScaleX" + _loc2_]["_meter"] >= 30 && this.charaData["HairExLine" + _loc2_]["_menu"] == 3 || this.charaData["HairExScaleX" + _loc2_]["_meter"] < 30 && this.charaData["HairExScaleX" + _loc2_]["_meter"] >= 10 && this.charaData["HairExLine" + _loc2_]["_menu"] == 4 || this.charaData["HairExScaleX" + _loc2_]["_meter"] < 10 && this.charaData["HairExScaleX" + _loc2_]["_meter"] >= 0 && this.charaData["HairExLine" + _loc2_]["_menu"] == 5))
         {
            MenuClass.systemData["LinkHairExLine"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkHairExLine"]["_flag"] = false;
         }
         if(this.charaData["EyeballLeft"]["_menu"] == this.charaData["EyeballRight"]["_menu"] && String(this.charaData["EyeballLeft"]["_color0"][0]) == String(this.charaData["EyeballRight"]["_color0"][0]) && String(this.charaData["EyeballLeft"]["_color1"][0]) == String(this.charaData["EyeballRight"]["_color1"][0]) && String(this.charaData["EyeballLeft"]["_color2"][0]) == String(this.charaData["EyeballRight"]["_color2"][0]))
         {
            MenuClass.systemData["LinkEyeball"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkEyeball"]["_flag"] = false;
         }
         if(this.charaData["EyeballScale"]["_meter"] == this.charaData["EyeballScaleY"]["_meter"])
         {
            MenuClass.systemData["LinkEyeballScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkEyeballScale"]["_flag"] = false;
         }
         if(this.charaData["EmotionEyeLeft"]["_meter"] == this.charaData["EmotionEyeRight"]["_meter"])
         {
            MenuClass.systemData["LinkEmotionEye"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkEmotionEye"]["_flag"] = false;
         }
         if(this.charaData["EyeballWidth"]["_meter"] == this.charaData["EyeballWidthRight"]["_meter"])
         {
            MenuClass.systemData["LinkEyeballWidth"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkEyeballWidth"]["_flag"] = false;
         }
         if(this.charaData["EyeballXMove"]["_meter"] == this.charaData["EyeballXMoveRight"]["_meter"])
         {
            MenuClass.systemData["LinkEyeballXMove"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkEyeballXMove"]["_flag"] = false;
         }
         if(this.charaData["EyeballYMove"]["_meter"] == this.charaData["EyeballYMoveRight"]["_meter"])
         {
            MenuClass.systemData["LinkEyeballYMove"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkEyeballYMove"]["_flag"] = false;
         }
         if(this.charaData["MouthWidth"]["_meter"] == this.charaData["MouthHeight"]["_meter"])
         {
            MenuClass.systemData["LinkMouthWidth"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkMouthWidth"]["_flag"] = false;
         }
         if(this.charaData["EmotionEyebrowLeft"]["_menu"] == this.charaData["EmotionEyebrowRight"]["_menu"] && this.charaData["EyebrowRotationLeft"]["_meter"] == this.charaData["EyebrowRotationRight"]["_meter"] && this.charaData["EyebrowMoveLeft"]["_meter"] == this.charaData["EyebrowMoveRight"]["_meter"])
         {
            MenuClass.systemData["LinkEmotionEyebrow"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkEmotionEyebrow"]["_flag"] = false;
         }
         if(this.charaData["SeihukuLeftArm"]["_menu"] == this.charaData["SeihukuRightArm"]["_menu"] && String(this.charaData["SeihukuLeftArm"]["_color0"][0]) == String(this.charaData["SeihukuRightArm"]["_color0"][0]) && String(this.charaData["SeihukuLeftArm"]["_color1"][0]) == String(this.charaData["SeihukuRightArm"]["_color1"][0]))
         {
            MenuClass.systemData["LinkSeihukuArm"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkSeihukuArm"]["_flag"] = false;
         }
         if(this.charaData["YsyatuLeftArm"]["_menu"] == this.charaData["YsyatuRightArm"]["_menu"] && String(this.charaData["YsyatuLeftArm"]["_color0"][0]) == String(this.charaData["YsyatuRightArm"]["_color0"][0]) && String(this.charaData["YsyatuLeftArm"]["_color1"][0]) == String(this.charaData["YsyatuRightArm"]["_color1"][0]))
         {
            MenuClass.systemData["LinkYsyatuArm"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkYsyatuArm"]["_flag"] = false;
         }
         if(this.charaData["TsyatuLeftArm"]["_menu"] == this.charaData["TsyatuRightArm"]["_menu"] && String(this.charaData["TsyatuLeftArm"]["_color0"][0]) == String(this.charaData["TsyatuRightArm"]["_color0"][0]) && String(this.charaData["TsyatuLeftArm"]["_color1"][0]) == String(this.charaData["TsyatuRightArm"]["_color1"][0]))
         {
            MenuClass.systemData["LinkTsyatuArm"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkTsyatuArm"]["_flag"] = false;
         }
         if(this.charaData["VestLeftArm"]["_menu"] == this.charaData["VestRightArm"]["_menu"] && String(this.charaData["VestLeftArm"]["_color0"][0]) == String(this.charaData["VestRightArm"]["_color0"][0]) && String(this.charaData["VestLeftArm"]["_color1"][0]) == String(this.charaData["VestRightArm"]["_color1"][0]))
         {
            MenuClass.systemData["LinkVestArm"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkVestArm"]["_flag"] = false;
         }
         if(this.charaData["Item0"]["_menu"] == this.charaData["Item1"]["_menu"] && String(this.charaData["Item0"]["_color0"][0]) == String(this.charaData["Item1"]["_color0"][0]) && String(this.charaData["Item0"]["_color1"][0]) == String(this.charaData["Item1"]["_color1"][0]) && String(this.charaData["Item0"]["_color2"][0]) == String(this.charaData["Item1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkItem"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkItem"]["_flag"] = false;
         }
         if(this.charaData["ZubonAshi0"]["_menu"] == this.charaData["ZubonAshi1"]["_menu"] && String(this.charaData["ZubonAshi0"]["_color0"][0]) == String(this.charaData["ZubonAshi1"]["_color0"][0]) && String(this.charaData["ZubonAshi0"]["_color1"][0]) == String(this.charaData["ZubonAshi1"]["_color1"][0]) && String(this.charaData["ZubonAshi0"]["_color2"][0]) == String(this.charaData["ZubonAshi1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkZubon"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkZubon"]["_flag"] = false;
         }
         if(this.charaData["MarkScaleX" + MenuClass.systemData["MarkPlus"]["_menu"]]["_meter"] == this.charaData["MarkScaleY" + MenuClass.systemData["MarkPlus"]["_menu"]]["_meter"])
         {
            MenuClass.systemData["LinkMark"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkMark"]["_flag"] = false;
         }
         _loc2_ = MenuClass.systemData["RibonPlus"]["_menu"];
         if(this.charaData["RibonScale" + _loc2_]["_meter"] == this.charaData["RibonScaleY" + _loc2_]["_meter"])
         {
            MenuClass.systemData["LinkRibonScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkRibonScale"]["_flag"] = false;
         }
         if(this.charaData["RibonScale" + _loc2_]["_meter"] == this.charaData["RibonScaleY" + _loc2_]["_meter"] && (this.charaData["RibonScale" + _loc2_]["_meter"] >= 70 && this.charaData["RibonLine" + _loc2_]["_menu"] == 1 || this.charaData["RibonScale" + _loc2_]["_meter"] < 70 && this.charaData["RibonScale" + _loc2_]["_meter"] >= 50 && this.charaData["RibonLine" + _loc2_]["_menu"] == 2 || this.charaData["RibonScale" + _loc2_]["_meter"] < 50 && this.charaData["RibonScale" + _loc2_]["_meter"] >= 30 && this.charaData["RibonLine" + _loc2_]["_menu"] == 3 || this.charaData["RibonScale" + _loc2_]["_meter"] < 30 && this.charaData["RibonScale" + _loc2_]["_meter"] >= 10 && this.charaData["RibonLine" + _loc2_]["_menu"] == 4 || this.charaData["RibonScale" + _loc2_]["_meter"] < 10 && this.charaData["RibonScale" + _loc2_]["_meter"] >= 0 && this.charaData["RibonLine" + _loc2_]["_menu"] == 5) && this.charaData["RibonLine" + _loc2_]["_color0"][0] == 61)
         {
            MenuClass.systemData["LinkRibonLine"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkRibonLine"]["_flag"] = false;
         }
         _loc2_ = MenuClass.systemData["BeltPlus"]["_menu"];
         if(this.charaData["BeltScale" + _loc2_]["_meter"] == this.charaData["BeltScaleY" + _loc2_]["_meter"])
         {
            MenuClass.systemData["LinkBeltScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkBeltScale"]["_flag"] = false;
         }
         if(this.charaData["BeltScale" + _loc2_]["_meter"] == this.charaData["BeltScaleY" + _loc2_]["_meter"] && (this.charaData["BeltScale" + _loc2_]["_meter"] >= 80 && this.charaData["BeltLine" + _loc2_]["_menu"] == 1 || this.charaData["BeltScale" + _loc2_]["_meter"] < 80 && this.charaData["BeltScale" + _loc2_]["_meter"] >= 60 && this.charaData["BeltLine" + _loc2_]["_menu"] == 2 || this.charaData["BeltScale" + _loc2_]["_meter"] < 60 && this.charaData["BeltScale" + _loc2_]["_meter"] >= 40 && this.charaData["BeltLine" + _loc2_]["_menu"] == 3 || this.charaData["BeltScale" + _loc2_]["_meter"] < 40 && this.charaData["BeltScale" + _loc2_]["_meter"] >= 20 && this.charaData["BeltLine" + _loc2_]["_menu"] == 4 || this.charaData["BeltScale" + _loc2_]["_meter"] < 20 && this.charaData["BeltScale" + _loc2_]["_meter"] >= 0 && this.charaData["BeltLine" + _loc2_]["_menu"] == 5) && this.charaData["BeltLine" + _loc2_]["_color0"][0] == 61)
         {
            MenuClass.systemData["LinkBeltLine"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkBeltLine"]["_flag"] = false;
         }
         var _loc5_:Number = this.charaData["Bura"]["_menu"];
         var _loc6_:Number = this.charaData["Pantu"]["_menu"];
         if(this.charaData["Bura"]["_visible"][0] && !this.charaData["Pantu"]["_visible"][0] && Dress_data.BuraData[_loc5_]["Pantu"] != 0 || this.charaData["Bura"]["_visible"][0] && this.charaData["Pantu"]["_visible"][0] && Dress_data.BuraData[_loc5_]["link"] == Dress_data.PantuData[_loc6_]["link"] && String(this.charaData["Bura"]["_color0"][0]) == String(this.charaData["Pantu"]["_color0"][0]) && String(this.charaData["Bura"]["_color1"][0]) == String(this.charaData["Pantu"]["_color1"][0]) && String(this.charaData["Bura"]["_color2"][0]) == String(this.charaData["Pantu"]["_color2"][0]))
         {
            MenuClass.systemData["LinkBura"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkBura"]["_flag"] = false;
         }
         if(this.charaData["Kutu0"]["_menu"] == this.charaData["Kutu1"]["_menu"] && String(this.charaData["Kutu0"]["_color0"][0]) == String(this.charaData["Kutu1"]["_color0"][0]) && String(this.charaData["Kutu0"]["_color1"][0]) == String(this.charaData["Kutu1"]["_color1"][0]) && String(this.charaData["Kutu0"]["_color2"][0]) == String(this.charaData["Kutu1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkKutu"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkKutu"]["_flag"] = false;
         }
         if(this.charaData["LegBand0"]["_menu"] == this.charaData["LegBand1"]["_menu"] && String(this.charaData["LegBand0"]["_color0"][0]) == String(this.charaData["LegBand1"]["_color0"][0]) && String(this.charaData["LegBand0"]["_color1"][0]) == String(this.charaData["LegBand1"]["_color1"][0]) && String(this.charaData["LegBand0"]["_color2"][0]) == String(this.charaData["LegBand1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkLegBand"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkLegBand"]["_flag"] = false;
         }
         if(this.charaData["Wristband0"]["_menu"] == this.charaData["Wristband1"]["_menu"] && String(this.charaData["Wristband0"]["_color0"][0]) == String(this.charaData["Wristband1"]["_color0"][0]) && String(this.charaData["Wristband0"]["_color1"][0]) == String(this.charaData["Wristband1"]["_color1"][0]) && String(this.charaData["Wristband0"]["_color2"][0]) == String(this.charaData["Wristband1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkWristband"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkWristband"]["_flag"] = false;
         }
         if(this.charaData["Glove0"]["_menu"] == this.charaData["Glove1"]["_menu"] && String(this.charaData["Glove0"]["_color0"][0]) == String(this.charaData["Glove1"]["_color0"][0]) && String(this.charaData["Glove0"]["_color1"][0]) == String(this.charaData["Glove1"]["_color1"][0]) && String(this.charaData["Glove0"]["_color2"][0]) == String(this.charaData["Glove1"]["_color2"][0]) && this.charaData["GloveLength0"]["_menu"] == this.charaData["GloveLength1"]["_menu"])
         {
            MenuClass.systemData["LinkGlove"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkGlove"]["_flag"] = false;
         }
         if(this.charaData["Bracelet0"]["_menu"] == this.charaData["Bracelet1"]["_menu"] && String(this.charaData["Bracelet0"]["_color0"][0]) == String(this.charaData["Bracelet1"]["_color0"][0]) && String(this.charaData["Bracelet0"]["_color1"][0]) == String(this.charaData["Bracelet1"]["_color1"][0]) && String(this.charaData["Bracelet0"]["_color2"][0]) == String(this.charaData["Bracelet1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkBracelet"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkBracelet"]["_flag"] = false;
         }
         if(this.charaData["ArmBracelet0"]["_menu"] == this.charaData["ArmBracelet1"]["_menu"] && String(this.charaData["ArmBracelet0"]["_color0"][0]) == String(this.charaData["ArmBracelet1"]["_color0"][0]) && String(this.charaData["ArmBracelet0"]["_color1"][0]) == String(this.charaData["ArmBracelet1"]["_color1"][0]) && String(this.charaData["ArmBracelet0"]["_color2"][0]) == String(this.charaData["ArmBracelet1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkArmBracelet"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkArmBracelet"]["_flag"] = false;
         }
         if(this.charaData["Armband0"]["_menu"] == this.charaData["Armband1"]["_menu"] && String(this.charaData["Armband0"]["_color0"][0]) == String(this.charaData["Armband1"]["_color0"][0]) && String(this.charaData["Armband0"]["_color1"][0]) == String(this.charaData["Armband1"]["_color1"][0]) && String(this.charaData["Armband0"]["_color2"][0]) == String(this.charaData["Armband1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkArmband"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkArmband"]["_flag"] = false;
         }
         if(this.charaData["Elbowpad0"]["_menu"] == this.charaData["Elbowpad1"]["_menu"] && String(this.charaData["Elbowpad0"]["_color0"][0]) == String(this.charaData["Elbowpad1"]["_color0"][0]) && String(this.charaData["Elbowpad0"]["_color1"][0]) == String(this.charaData["Elbowpad1"]["_color1"][0]) && String(this.charaData["Elbowpad0"]["_color2"][0]) == String(this.charaData["Elbowpad1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkElbowpad"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkElbowpad"]["_flag"] = false;
         }
         if(this.charaData["Earring0"]["_menu"] == this.charaData["Earring1"]["_menu"] && String(this.charaData["Earring0"]["_color0"][0]) == String(this.charaData["Earring1"]["_color0"][0]) && String(this.charaData["Earring0"]["_color1"][0]) == String(this.charaData["Earring1"]["_color1"][0]) && String(this.charaData["Earring0"]["_color2"][0]) == String(this.charaData["Earring1"]["_color2"][0]))
         {
            MenuClass.systemData["LinkEarring"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkEarring"]["_flag"] = false;
         }
         if(this.charaData["CharaLoadScaleY" + _loc2_]["_meter"] == this.charaData["CharaLoadScale" + _loc2_]["_meter"])
         {
            MenuClass.systemData["CharaLinkLoadScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["CharaLinkLoadScale"]["_flag"] = false;
         }
      }
   }
}
