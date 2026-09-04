package menu
{
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class SetCharaData
   {
       
      
      private var charaData:Object;
      
      private var charaOldData:Object;
      
      private var DressCharaData:Object;
      
      public function SetCharaData(param1:int, param2:String, param3:int)
      {
         super();
         this.charaData = MenuClass.charaData[param1];
         if(param3 != 3)
         {
            this.charaOldData = MenuClass.charaOldData[param1];
         }
         this.DressCharaData = Dress_data.DressCharaData[param1];
      }

      public static function execute(param1:int, param2:String, param3:int)
      {
         var inst = new SetCharaData(param1, param2, param3);
         inst.execInternal(param1, param2, param3);
      }
      
      public function execInternal(param1:int, param2:String, param3:int)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = true;
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = true;
         var _loc30_:Boolean = true;
         var _loc31_:Boolean = true;
         var _loc32_:Boolean = true;
         var _loc33_:Boolean = true;
         var _loc34_:Boolean = true;
         var _loc35_:Boolean = true;
         var _loc36_:Boolean = true;
         var _loc37_:Boolean = true;
         var _loc38_:Boolean = true;
         var _loc39_:Boolean = true;
         var _loc40_:Boolean = true;
         var _loc41_:Boolean = true;
         var _loc42_:Boolean = true;
         var _loc43_:Boolean = true;
         var _loc44_:Boolean = true;
         var _loc45_:Boolean = true;
         var _loc46_:Boolean = true;
         var _loc47_:Boolean = true;
         var _loc48_:Boolean = true;
         var _loc49_:Boolean = true;
         var _loc50_:Boolean = true;
         var _loc51_:Boolean = true;
         var _loc52_:Boolean = true;
         var _loc53_:Boolean = true;
         var _loc54_:Boolean = true;
         var _loc55_:Boolean = true;
         var _loc56_:Boolean = true;
         var _loc57_:Boolean = true;
         var _loc58_:Boolean = true;
         var _loc59_:Boolean = true;
         var _loc60_:Boolean = true;
         var _loc61_:Boolean = true;
         var _loc62_:Boolean = true;
         var _loc63_:Boolean = true;
         var _loc64_:Boolean = true;
         var _loc65_:Boolean = true;
         var _loc66_:Boolean = true;
         var _loc67_:Boolean = true;
         var _loc68_:Boolean = true;
         var _loc69_:Boolean = true;
         var _loc70_:Boolean = true;
         var _loc71_:Boolean = true;
         var _loc72_:Boolean = true;
         var _loc73_:Boolean = true;
         var _loc74_:Boolean = true;
         var _loc75_:Boolean = true;
         var _loc76_:Boolean = true;
         var _loc77_:Boolean = true;
         var _loc78_:Boolean = true;
         var _loc79_:Boolean = true;
         var _loc80_:Boolean = true;
         var _loc81_:Boolean = true;
         var _loc82_:Boolean = true;
         var _loc83_:Boolean = true;
         var _loc84_:Boolean = true;
         var _loc85_:Boolean = true;
         var _loc86_:Boolean = true;
         var _loc87_:Boolean = true;
         var _loc88_:Boolean = true;
         var _loc89_:Boolean = true;
         var _loc90_:Boolean = true;
         var _loc91_:Boolean = true;
         var _loc92_:Boolean = true;
         var _loc93_:Boolean = true;
         var _loc94_:Boolean = true;
         var _loc95_:Boolean = true;
         var _loc96_:Boolean = true;
         var _loc97_:Boolean = true;
         var _loc98_:Boolean = true;
         var _loc99_:Boolean = true;
         var _loc100_:Boolean = true;
         var _loc101_:Boolean = true;
         var _loc102_:Boolean = true;
         var _loc103_:Boolean = true;
         var _loc104_:Boolean = true;
         var _loc105_:Boolean = true;
         var _loc106_:Boolean = true;
         var _loc107_:Boolean = true;
         var _loc108_:Boolean = true;
         var _loc109_:Boolean = true;
         var _loc110_:Boolean = true;
         var _loc111_:Boolean = true;
         var _loc112_:Boolean = true;
         var _loc113_:Boolean = true;
         var _loc114_:Boolean = true;
         var _loc115_:Boolean = true;
         var _loc116_:Boolean = true;
         var _loc117_:Boolean = true;
         var _loc118_:Boolean = true;
         var _loc119_:Boolean = true;
         var _loc120_:Boolean = true;
         var _loc121_:Boolean = true;
         var _loc122_:Boolean = true;
         var _loc123_:Boolean = true;
         var _loc124_:Boolean = true;
         var _loc125_:Boolean = true;
         var _loc126_:Boolean = true;
         var _loc127_:Boolean = true;
         var _loc128_:Boolean = true;
         var _loc129_:Boolean = true;
         var _loc130_:Boolean = true;
         var _loc131_:Boolean = true;
         var _loc132_:Boolean = true;
         var _loc133_:Boolean = true;
         var _loc134_:Boolean = true;
         var _loc135_:Boolean = true;
         var _loc136_:Boolean = true;
         var _loc137_:Boolean = true;
         var _loc138_:Boolean = true;
         var _loc139_:Boolean = true;
         var _loc140_:Boolean = true;
         var _loc141_:Boolean = true;
         var _loc142_:Boolean = true;
         var _loc143_:Boolean = true;
         var _loc144_:Boolean = true;
         var _loc145_:Boolean = true;
         var _loc146_:Boolean = true;
         var _loc147_:Boolean = true;
         var _loc148_:Boolean = true;
         var _loc149_:Boolean = true;
         var _loc150_:Boolean = true;
         var _loc151_:Boolean = true;
         if(param3 == 0 || param3 == 2)
         {
            try
            {
               if(this.charaOldData["Xmove"]["_meter"] == this.charaData["Xmove"]["_meter"])
               {
                  _loc6_ = false;
               }
               if(this.charaOldData["Ymove"]["_meter"] == this.charaData["Ymove"]["_meter"] && this.charaOldData["Ymove"]["_depth"] == this.charaData["Ymove"]["_depth"])
               {
                  _loc7_ = false;
               }
               if(this.charaOldData["Rmove"]["_meter"] == this.charaData["Rmove"]["_meter"])
               {
                  _loc8_ = false;
               }
               if(this.charaOldData["Jump"]["_meter"] == this.charaData["Jump"]["_meter"])
               {
                  _loc9_ = false;
               }
               if(this.charaOldData["Head"]["_meter"] == this.charaData["Head"]["_meter"])
               {
                  _loc11_ = false;
               }
               if(this.charaOldData["BodySize"]["_meter"] == this.charaData["BodySize"]["_meter"] && this.charaOldData["BodyYMove"]["_meter"] == this.charaData["BodyYMove"]["_meter"])
               {
                  _loc10_ = false;
               }
               if(this.charaOldData["BodyHeight"]["_meter"] == this.charaData["BodyHeight"]["_meter"] && this.charaOldData["AshiHeight"]["_meter"] == this.charaData["AshiHeight"]["_meter"] && this.charaOldData["douHeight"]["_meter"] == this.charaData["douHeight"]["_meter"] && this.charaOldData["BodySize"]["_meter"] == this.charaData["BodySize"]["_meter"])
               {
                  _loc12_ = false;
               }
               if(this.charaOldData["BodyWidth"]["_meter"] == this.charaData["BodyWidth"]["_meter"])
               {
                  _loc13_ = false;
               }
               if(this.charaOldData["ShoulderWidth"]["_meter"] == this.charaData["ShoulderWidth"]["_meter"] && this.charaOldData["LeftShoulderVisible"]["_visible"][0] == this.charaData["LeftShoulderVisible"]["_visible"][0] && this.charaOldData["RightShoulderVisible"]["_visible"][0] == this.charaData["RightShoulderVisible"]["_visible"][0])
               {
                  _loc14_ = false;
               }
               if(this.charaOldData["HipWidth"]["_meter"] == this.charaData["HipWidth"]["_meter"] && this.charaOldData["AshiWidth"]["_meter"] == this.charaData["AshiWidth"]["_meter"])
               {
                  _loc15_ = false;
               }
               if(this.charaOldData["ContourWidth"]["_meter"] == this.charaData["ContourWidth"]["_meter"])
               {
                  _loc42_ = false;
               }
               if(this.charaOldData["ContourHeight"]["_meter"] == this.charaData["ContourHeight"]["_meter"])
               {
                  _loc43_ = false;
               }
               if(this.charaOldData["HeadScale"]["_meter"] == this.charaData["HeadScale"]["_meter"])
               {
                  _loc16_ = false;
               }
               if(this.charaOldData["Heso"]["_menu"] == this.charaData["Heso"]["_menu"])
               {
                  _loc18_ = false;
               }
               if(this.charaOldData["Waist"]["_menu"] == this.charaData["Waist"]["_menu"] && this.charaOldData["WaistAlpha"]["_meter"] == this.charaData["WaistAlpha"]["_meter"])
               {
                  _loc17_ = false;
               }
               if(this.charaOldData["Breast"]["_menu"] == this.charaData["Breast"]["_menu"])
               {
                  _loc19_ = false;
               }
               if(
                  this.charaOldData["Ashi"]["_menu"] == this.charaData["Ashi"]["_menu"] &&
                  this.charaOldData["Ashi"]["_reversal"] == this.charaData["Ashi"]["_reversal"] &&
                  this.charaOldData["Ashi2"]["_menu"] == this.charaData["Ashi2"]["_menu"] &&
                  this.charaOldData["LeftThighRotation"]["_meter"] == this.charaData["LeftThighRotation"]["_meter"] &&
                  this.charaOldData["RightThighRotation"]["_meter"] == this.charaData["RightThighRotation"]["_meter"] &&
                  this.charaOldData["LeftLegRotation"]["_meter"] == this.charaData["LeftLegRotation"]["_meter"] &&
                  this.charaOldData["RightLegRotation"]["_meter"] == this.charaData["RightLegRotation"]["_meter"] &&
                  this.charaOldData["LeftFootRotation"]["_meter"] == this.charaData["LeftFootRotation"]["_meter"] &&
                  this.charaOldData["RightFootRotation"]["_meter"] == this.charaData["RightFootRotation"]["_meter"] &&
                  this.charaOldData["LeftThighScaleX"]["_meter"] == this.charaData["LeftThighScaleX"]["_meter"] &&
                  this.charaOldData["LeftThighScaleY"]["_meter"] == this.charaData["LeftThighScaleY"]["_meter"] &&
                  this.charaOldData["LeftThighOffsetX"]["_meter"] == this.charaData["LeftThighOffsetX"]["_meter"] &&
                  this.charaOldData["LeftThighOffsetY"]["_meter"] == this.charaData["LeftThighOffsetY"]["_meter"] &&
                  this.charaOldData["RightThighScaleX"]["_meter"] == this.charaData["RightThighScaleX"]["_meter"] &&
                  this.charaOldData["RightThighScaleY"]["_meter"] == this.charaData["RightThighScaleY"]["_meter"] &&
                  this.charaOldData["RightThighOffsetX"]["_meter"] == this.charaData["RightThighOffsetX"]["_meter"] &&
                  this.charaOldData["RightThighOffsetY"]["_meter"] == this.charaData["RightThighOffsetY"]["_meter"] &&
                  this.charaOldData["LeftLegScaleX"]["_meter"] == this.charaData["LeftLegScaleX"]["_meter"] &&
                  this.charaOldData["LeftLegScaleY"]["_meter"] == this.charaData["LeftLegScaleY"]["_meter"] &&
                  this.charaOldData["LeftLegOffsetX"]["_meter"] == this.charaData["LeftLegOffsetX"]["_meter"] &&
                  this.charaOldData["LeftLegOffsetY"]["_meter"] == this.charaData["LeftLegOffsetY"]["_meter"] &&
                  this.charaOldData["RightLegScaleX"]["_meter"] == this.charaData["RightLegScaleX"]["_meter"] &&
                  this.charaOldData["RightLegScaleY"]["_meter"] == this.charaData["RightLegScaleY"]["_meter"] &&
                  this.charaOldData["RightLegOffsetX"]["_meter"] == this.charaData["RightLegOffsetX"]["_meter"] &&
                  this.charaOldData["RightLegOffsetY"]["_meter"] == this.charaData["RightLegOffsetY"]["_meter"] &&
                  this.charaOldData["LeftFootScaleX"]["_meter"] == this.charaData["LeftFootScaleX"]["_meter"] &&
                  this.charaOldData["LeftFootScaleY"]["_meter"] == this.charaData["LeftFootScaleY"]["_meter"] &&
                  this.charaOldData["LeftFootOffsetX"]["_meter"] == this.charaData["LeftFootOffsetX"]["_meter"] &&
                  this.charaOldData["LeftFootOffsetY"]["_meter"] == this.charaData["LeftFootOffsetY"]["_meter"] &&
                  this.charaOldData["RightFootScaleX"]["_meter"] == this.charaData["RightFootScaleX"]["_meter"] &&
                  this.charaOldData["RightFootScaleY"]["_meter"] == this.charaData["RightFootScaleY"]["_meter"] &&
                  this.charaOldData["RightFootOffsetX"]["_meter"] == this.charaData["RightFootOffsetX"]["_meter"] &&
                  this.charaOldData["RightFootOffsetY"]["_meter"] == this.charaData["RightFootOffsetY"]["_meter"] &&
                  this.charaOldData["LeftThighVisible"]["_visible"][0] == this.charaData["LeftThighVisible"]["_visible"][0] &&
                  this.charaOldData["RightThighVisible"]["_visible"][0] == this.charaData["RightThighVisible"]["_visible"][0] &&
                  this.charaOldData["LeftLegVisible"]["_visible"][0] == this.charaData["LeftLegVisible"]["_visible"][0] &&
                  this.charaOldData["RightLegVisible"]["_visible"][0] == this.charaData["RightLegVisible"]["_visible"][0] &&
                  this.charaOldData["LeftFootVisible"]["_visible"][0] == this.charaData["LeftFootVisible"]["_visible"][0] &&
                  this.charaOldData["RightFootVisible"]["_visible"][0] == this.charaData["RightFootVisible"]["_visible"][0]
               )
               {
                  _loc20_ = false;
               }
               if(
                  this.charaOldData["LeftArm"]["_meter"] == this.charaData["LeftArm"]["_meter"] &&
                  this.charaOldData["LeftArm2"]["_meter"] == this.charaData["LeftArm2"]["_meter"] &&
                  this.charaOldData["LeftArm2"]["_depth"] == this.charaData["LeftArm2"]["_depth"] &&
                  this.charaOldData["LeftHand"]["_menu"] == this.charaData["LeftHand"]["_menu"] &&
                  this.charaOldData["LeftHand2"]["_meter"] == this.charaData["LeftHand2"]["_meter"] &&
                  this.charaOldData["RightArm"]["_meter"] == this.charaData["RightArm"]["_meter"] &&
                  this.charaOldData["RightArm2"]["_meter"] == this.charaData["RightArm2"]["_meter"] &&
                  this.charaOldData["RightArm2"]["_depth"] == this.charaData["RightArm2"]["_depth"] &&
                  this.charaOldData["RightHand"]["_menu"] == this.charaData["RightHand"]["_menu"] &&
                  this.charaOldData["RightHand2"]["_meter"] == this.charaData["RightHand2"]["_meter"] &&
                  this.charaOldData["HandWidth"]["_meter"] == this.charaData["HandWidth"]["_meter"] &&
                  this.charaOldData["LeftUpperArmScaleX"]["_meter"] == this.charaData["LeftUpperArmScaleX"]["_meter"] &&
                  this.charaOldData["LeftUpperArmScaleY"]["_meter"] == this.charaData["LeftUpperArmScaleY"]["_meter"] &&
                  this.charaOldData["LeftUpperArmOffsetX"]["_meter"] == this.charaData["LeftUpperArmOffsetX"]["_meter"] &&
                  this.charaOldData["LeftUpperArmOffsetY"]["_meter"] == this.charaData["LeftUpperArmOffsetY"]["_meter"] &&
                  this.charaOldData["RightUpperArmScaleX"]["_meter"] == this.charaData["RightUpperArmScaleX"]["_meter"] &&
                  this.charaOldData["RightUpperArmScaleY"]["_meter"] == this.charaData["RightUpperArmScaleY"]["_meter"] &&
                  this.charaOldData["RightUpperArmOffsetX"]["_meter"] == this.charaData["RightUpperArmOffsetX"]["_meter"] &&
                  this.charaOldData["RightUpperArmOffsetY"]["_meter"] == this.charaData["RightUpperArmOffsetY"]["_meter"] &&
                  this.charaOldData["LeftArmScaleX"]["_meter"] == this.charaData["LeftArmScaleX"]["_meter"] &&
                  this.charaOldData["LeftArmScaleY"]["_meter"] == this.charaData["LeftArmScaleY"]["_meter"] &&
                  this.charaOldData["LeftArmOffsetX"]["_meter"] == this.charaData["LeftArmOffsetX"]["_meter"] &&
                  this.charaOldData["LeftArmOffsetY"]["_meter"] == this.charaData["LeftArmOffsetY"]["_meter"] &&
                  this.charaOldData["RightArmScaleX"]["_meter"] == this.charaData["RightArmScaleX"]["_meter"] &&
                  this.charaOldData["RightArmScaleY"]["_meter"] == this.charaData["RightArmScaleY"]["_meter"] &&
                  this.charaOldData["RightArmOffsetX"]["_meter"] == this.charaData["RightArmOffsetX"]["_meter"] &&
                  this.charaOldData["RightArmOffsetY"]["_meter"] == this.charaData["RightArmOffsetY"]["_meter"] &&
                  this.charaOldData["LeftHandScaleX"]["_meter"] == this.charaData["LeftHandScaleX"]["_meter"] &&
                  this.charaOldData["LeftHandScaleY"]["_meter"] == this.charaData["LeftHandScaleY"]["_meter"] &&
                  this.charaOldData["RightHandScaleX"]["_meter"] == this.charaData["RightHandScaleX"]["_meter"] &&
                  this.charaOldData["RightHandScaleY"]["_meter"] == this.charaData["RightHandScaleY"]["_meter"] &&
                  this.charaOldData["LeftHandOffsetX"]["_meter"] == this.charaData["LeftHandOffsetX"]["_meter"] &&
                  this.charaOldData["LeftHandOffsetY"]["_meter"] == this.charaData["LeftHandOffsetY"]["_meter"] &&
                  this.charaOldData["RightHandOffsetX"]["_meter"] == this.charaData["RightHandOffsetX"]["_meter"] &&
                  this.charaOldData["LeftUpperArmVisible"]["_visible"][0] == this.charaData["LeftUpperArmVisible"]["_visible"][0] &&
                  this.charaOldData["RightUpperArmVisible"]["_visible"][0] == this.charaData["RightUpperArmVisible"]["_visible"][0] &&
                  this.charaOldData["LeftArmVisible"]["_visible"][0] == this.charaData["LeftArmVisible"]["_visible"][0] &&
                  this.charaOldData["RightArmVisible"]["_visible"][0] == this.charaData["RightArmVisible"]["_visible"][0] &&
                  this.charaOldData["LeftHandVisible"]["_visible"][0] == this.charaData["LeftHandVisible"]["_visible"][0] &&
                  this.charaOldData["RightHandVisible"]["_visible"][0] == this.charaData["RightHandVisible"]["_visible"][0] &&
                  this.charaOldData["LeftHandFlip"]["_check"] == this.charaData["LeftHandFlip"]["_check"] &&
                  this.charaOldData["RightHandFlip"]["_check"] == this.charaData["RightHandFlip"]["_check"] &&
                  this.charaOldData["LeftArmFlip"]["_check"] == this.charaData["LeftArmFlip"]["_check"] &&
                  this.charaOldData["RightArmFlip"]["_check"] == this.charaData["RightArmFlip"]["_check"] &&
                  this.charaOldData["RightArmFreeRotation"]["_check"] == this.charaData["RightArmFreeRotation"]["_check"] &&
                  this.charaOldData["LeftArmFreeRotation"]["_check"] == this.charaData["LeftArmFreeRotation"]["_check"]
               )
               {
                  _loc21_ = false;
               }
               if(this.charaOldData["Bura"]["_visible"][0] == this.charaData["Bura"]["_visible"][0] && this.charaOldData["Bura"]["_menu"] == this.charaData["Bura"]["_menu"] && String(this.charaOldData["Bura"]["_color0"][0]) == String(this.charaData["Bura"]["_color0"][0]) && String(this.charaOldData["Bura"]["_color1"][0]) == String(this.charaData["Bura"]["_color1"][0]) && String(this.charaOldData["Bura"]["_color2"][0]) == String(this.charaData["Bura"]["_color2"][0]) && this.charaOldData["Bura"]["_separate"] == this.charaData["Bura"]["_separate"])
               {
                  _loc22_ = false;
               }
               if(this.charaOldData["Pantu"]["_visible"][0] == this.charaData["Pantu"]["_visible"][0] && this.charaOldData["Pantu"]["_menu"] == this.charaData["Pantu"]["_menu"] && String(this.charaOldData["Pantu"]["_color0"][0]) == String(this.charaData["Pantu"]["_color0"][0]) && String(this.charaOldData["Pantu"]["_color1"][0]) == String(this.charaData["Pantu"]["_color1"][0]) && String(this.charaOldData["Pantu"]["_color2"][0]) == String(this.charaData["Pantu"]["_color2"][0]) && String(this.charaOldData["Pantu"]["_depth"]) == String(this.charaData["Pantu"]["_depth"]))
               {
                  _loc23_ = false;
               }
               if(this.charaOldData["Nawa"]["_visible"][0] == this.charaData["Nawa"]["_visible"][0] && this.charaOldData["Nawa"]["_menu"] == this.charaData["Nawa"]["_menu"] && String(this.charaOldData["Nawa"]["_color0"][0]) == String(this.charaData["Nawa"]["_color0"][0]) && String(this.charaOldData["Nawa"]["_color1"][0]) == String(this.charaData["Nawa"]["_color1"][0]) && String(this.charaOldData["Nawa"]["_color2"][0]) == String(this.charaData["Nawa"]["_color2"][0]))
               {
                  _loc24_ = false;
               }
               if(this.charaOldData["NippleGLeft"]["_visible"][0] == this.charaData["NippleGLeft"]["_visible"][0] && this.charaOldData["NippleGLeft"]["_menu"] == this.charaData["NippleGLeft"]["_menu"] && String(this.charaOldData["NippleGLeft"]["_color0"][0]) == String(this.charaData["NippleGLeft"]["_color0"][0]) && String(this.charaOldData["NippleGLeft"]["_color1"][0]) == String(this.charaData["NippleGLeft"]["_color1"][0]) && String(this.charaOldData["NippleGLeft"]["_color2"][0]) == String(this.charaData["NippleGLeft"]["_color2"][0]))
               {
                  _loc25_ = false;
               }
               if(this.charaOldData["NippleGLeftSize"]["_meter"] == this.charaData["NippleGLeftSize"]["_meter"])
               {
                  _loc26_ = false;
               }
               if(this.charaOldData["NippleGRight"]["_visible"][0] == this.charaData["NippleGRight"]["_visible"][0] && this.charaOldData["NippleGRight"]["_menu"] == this.charaData["NippleGRight"]["_menu"] && String(this.charaOldData["NippleGRight"]["_color0"][0]) == String(this.charaData["NippleGRight"]["_color0"][0]) && String(this.charaOldData["NippleGRight"]["_color1"][0]) == String(this.charaData["NippleGRight"]["_color1"][0]) && String(this.charaOldData["NippleGRight"]["_color2"][0]) == String(this.charaData["NippleGRight"]["_color2"][0]))
               {
                  _loc27_ = false;
               }
               if(this.charaOldData["NippleGRightSize"]["_meter"] == this.charaData["NippleGRightSize"]["_meter"])
               {
                  _loc28_ = false;
               }
               if(this.charaOldData["Vibrator"]["_visible"][0] == this.charaData["Vibrator"]["_visible"][0] && this.charaOldData["Vibrator"]["_menu"] == this.charaData["Vibrator"]["_menu"] && String(this.charaOldData["Vibrator"]["_color0"][0]) == String(this.charaData["Vibrator"]["_color0"][0]) && String(this.charaOldData["Vibrator"]["_color1"][0]) == String(this.charaData["Vibrator"]["_color1"][0]) && String(this.charaOldData["Vibrator"]["_color2"][0]) == String(this.charaData["Vibrator"]["_color2"][0]) && this.charaOldData["VibratorMove"]["_menu"] == this.charaData["VibratorMove"]["_menu"] && this.charaOldData["VibratorMove"]["_count"] == this.charaData["VibratorMove"]["_count"] && this.charaOldData["VibratorMove"]["_turn"] == this.charaData["VibratorMove"]["_turn"] && this.charaOldData["VibratorMove"]["_turn2"] == this.charaData["VibratorMove"]["_turn2"] && this.charaOldData["VibratorSpeed"]["_menu"] == this.charaData["VibratorSpeed"]["_menu"] && this.charaOldData["VibratorSpeed"]["_turn"] == this.charaData["VibratorSpeed"]["_turn"] && this.charaOldData["VibratorScale"]["_meter"] == this.charaData["VibratorScale"]["_meter"])
               {
                  _loc29_ = false;
               }
               if(this.charaOldData["SG"]["_visible"][0] == this.charaData["SG"]["_visible"][0] && this.charaOldData["SG"]["_menu"] == this.charaData["SG"]["_menu"] && String(this.charaOldData["SG"]["_color0"][0]) == String(this.charaData["SG"]["_color0"][0]) && String(this.charaOldData["SG"]["_color1"][0]) == String(this.charaData["SG"]["_color1"][0]) && String(this.charaOldData["SG"]["_color2"][0]) == String(this.charaData["SG"]["_color2"][0]))
               {
                  _loc30_ = false;
               }
               if(this.charaOldData["SGSize"]["_meter"] == this.charaData["SGSize"]["_meter"])
               {
                  _loc31_ = false;
               }
               if(this.charaOldData["Socks0"]["_visible"][0] == this.charaData["Socks0"]["_visible"][0] && this.charaOldData["Socks0"]["_menu"] == this.charaData["Socks0"]["_menu"] && String(this.charaOldData["Socks0"]["_color0"][0]) == String(this.charaData["Socks0"]["_color0"][0]) && String(this.charaOldData["Socks0"]["_color1"][0]) == String(this.charaData["Socks0"]["_color1"][0]) && String(this.charaOldData["Socks0"]["_color2"][0]) == String(this.charaData["Socks0"]["_color2"][0]))
               {
                  _loc32_ = false;
               }
               if(this.charaOldData["Socks1"]["_visible"][0] == this.charaData["Socks1"]["_visible"][0] && this.charaOldData["Socks1"]["_menu"] == this.charaData["Socks1"]["_menu"] && String(this.charaOldData["Socks1"]["_color0"][0]) == String(this.charaData["Socks1"]["_color0"][0]) && String(this.charaOldData["Socks1"]["_color1"][0]) == String(this.charaData["Socks1"]["_color1"][0]) && String(this.charaOldData["Socks1"]["_color2"][0]) == String(this.charaData["Socks1"]["_color2"][0]))
               {
                  _loc33_ = false;
               }
               if(this.charaOldData["Tights"]["_visible"][0] == this.charaData["Tights"]["_visible"][0] && this.charaOldData["Tights"]["_menu"] == this.charaData["Tights"]["_menu"] && String(this.charaOldData["Tights"]["_color0"][0]) == String(this.charaData["Tights"]["_color0"][0]) && String(this.charaOldData["Tights"]["_color1"][0]) == String(this.charaData["Tights"]["_color1"][0]) && String(this.charaOldData["Tights"]["_color2"][0]) == String(this.charaData["Tights"]["_color2"][0]) && String(this.charaOldData["Tights"]["_depth"]) == String(this.charaData["Tights"]["_depth"]))
               {
                  _loc34_ = false;
               }
               if(this.charaOldData["NippleSize"]["_meter"] == this.charaData["NippleSize"]["_meter"])
               {
                  _loc35_ = false;
               }
               if(this.charaOldData["NippleHeight"]["_meter"] == this.charaData["NippleHeight"]["_meter"])
               {
                  _loc36_ = false;
               }
               if(this.charaOldData["NippleWidth"]["_meter"] == this.charaData["NippleWidth"]["_meter"])
               {
                  _loc37_ = false;
               }
               if(this.charaOldData["Shadow"]["_visible"][0] == this.charaData["Shadow"]["_visible"][0])
               {
                  _loc38_ = false;
               }
               if(this.charaOldData["CharaDropShadow"]["_visible"][0] == this.charaData["CharaDropShadow"]["_visible"][0] && this.charaOldData["CharaDropShadow"]["_menu"] == this.charaData["CharaDropShadow"]["_menu"] && this.charaOldData["CharaDropShadow"]["_color0"][0] == this.charaData["CharaDropShadow"]["_color0"][0] && this.charaOldData["CharaDropShadowIn"]["_check"] == this.charaData["CharaDropShadowIn"]["_check"] && this.charaOldData["CharaDropShadowOut"]["_check"] == this.charaData["CharaDropShadowOut"]["_check"] && this.charaOldData["CharaDropShadowHide"]["_check"] == this.charaData["CharaDropShadowHide"]["_check"] && this.charaOldData["CharaDropShadowAlpha"]["_meter"] == this.charaData["CharaDropShadowAlpha"]["_meter"] && this.charaOldData["CharaDropShadowStr"]["_meter"] == this.charaData["CharaDropShadowStr"]["_meter"] && this.charaOldData["CharaDropShadowX"]["_meter"] == this.charaData["CharaDropShadowX"]["_meter"] && this.charaOldData["CharaDropShadowY"]["_meter"] == this.charaData["CharaDropShadowY"]["_meter"] && this.charaOldData["CharaDropShadowRotation"]["_meter"] == this.charaData["CharaDropShadowRotation"]["_meter"] && this.charaOldData["CharaDropShadowDistance"]["_meter"] == this.charaData["CharaDropShadowDistance"]["_meter"])
               {
                  _loc39_ = false;
               }
               if(this.charaOldData["CharaBlur"]["_visible"][0] == this.charaData["CharaBlur"]["_visible"][0] && this.charaOldData["CharaBlur"]["_menu"] == this.charaData["CharaBlur"]["_menu"] && this.charaOldData["CharaBlurX"]["_meter"] == this.charaData["CharaBlurX"]["_meter"] && this.charaOldData["CharaBlurY"]["_meter"] == this.charaData["CharaBlurY"]["_meter"])
               {
                  _loc40_ = false;
               }
               if(this.charaOldData["Contour"]["_menu"] == this.charaData["Contour"]["_menu"])
               {
                  _loc41_ = false;
               }
               if(this.charaOldData["Ear"]["_visible"][0] == this.charaData["Ear"]["_visible"][0] && this.charaOldData["Ear"]["_menu"] == this.charaData["Ear"]["_menu"] && String(this.charaOldData["Ear"]["_color0"][0]) == String(this.charaData["Ear"]["_color0"][0]) && String(this.charaOldData["Ear"]["_color1"][0]) == String(this.charaData["Ear"]["_color1"][0]) && String(this.charaOldData["Ear"]["_color2"][0]) == String(this.charaData["Ear"]["_color2"][0]) && this.charaOldData["Ear"]["_sen"] == this.charaData["Ear"]["_sen"] && this.charaOldData["Ear"]["_senColor"] == this.charaData["Ear"]["_senColor"])
               {
                  _loc44_ = false;
               }
               if(this.charaOldData["EarScale"]["_meter"] == this.charaData["EarScale"]["_meter"])
               {
                  _loc45_ = false;
               }
               if(this.charaOldData["EarRotation"]["_meter"] == this.charaData["EarRotation"]["_meter"])
               {
                  _loc46_ = false;
               }
               if(this.charaOldData["EarX"]["_meter"] == this.charaData["EarX"]["_meter"])
               {
                  _loc47_ = false;
               }
               if(this.charaOldData["EarY"]["_meter"] == this.charaData["EarY"]["_meter"])
               {
                  _loc48_ = false;
               }
               if(this.charaOldData["Nose"]["_visible"][0] == this.charaData["Nose"]["_visible"][0] && this.charaOldData["Nose"]["_menu"] == this.charaData["Nose"]["_menu"] && this.charaOldData["Nose"]["_reversal"] == this.charaData["Nose"]["_reversal"] && String(this.charaOldData["Nose"]["_color0"][0]) == String(this.charaData["Nose"]["_color0"][0]) && String(this.charaOldData["Nose"]["_color1"][0]) == String(this.charaData["Nose"]["_color1"][0]) && String(this.charaOldData["Nose"]["_color2"][0]) == String(this.charaData["Nose"]["_color2"][0]))
               {
                  _loc49_ = false;
               }
               if(this.charaOldData["NoseHeight"]["_meter"] == this.charaData["NoseHeight"]["_meter"])
               {
                  _loc50_ = false;
               }
               if(this.charaOldData["NoseScaleX"]["_meter"] == this.charaData["NoseScaleX"]["_meter"])
               {
                  _loc51_ = false;
               }
               if(this.charaOldData["NoseScaleY"]["_meter"] == this.charaData["NoseScaleY"]["_meter"])
               {
                  _loc52_ = false;
               }
               if(this.charaOldData["NoseShadow"]["_visible"][0] == this.charaData["NoseShadow"]["_visible"][0] && this.charaOldData["NoseShadow"]["_menu"] == this.charaData["NoseShadow"]["_menu"])
               {
                  _loc53_ = false;
               }
               if(this.charaOldData["NoseShadowAlpha"]["_meter"] == this.charaData["NoseShadowAlpha"]["_meter"])
               {
                  _loc54_ = false;
               }
               if(this.charaOldData["NoseShadowHeight"]["_meter"] == this.charaData["NoseShadowHeight"]["_meter"])
               {
                  _loc55_ = false;
               }
               if(this.charaOldData["NoseShadowScaleX"]["_meter"] == this.charaData["NoseShadowScaleX"]["_meter"])
               {
                  _loc56_ = false;
               }
               if(this.charaOldData["NoseShadowScaleY"]["_meter"] == this.charaData["NoseShadowScaleY"]["_meter"])
               {
                  _loc57_ = false;
               }
               if(String(this.charaOldData["Body"]["_color0"][0]) == String(this.charaData["Body"]["_color0"][0]))
               {
                  _loc58_ = false;
               }
               if(this.charaOldData["BodyPlus"]["_menu"] == this.charaData["BodyPlus"]["_menu"] && String(this.charaOldData["BodyPlus"]["_color0"][0]) == String(this.charaData["BodyPlus"]["_color0"][0]) && String(this.charaOldData["BodyPlusMeter"]["_meter"]) == String(this.charaData["BodyPlusMeter"]["_meter"]))
               {
                  _loc59_ = false;
               }
               if(this.charaOldData["BodyAlpha"]["_meter"] == this.charaData["BodyAlpha"]["_meter"])
               {
                  _loc60_ = false;
               }
               if(this.charaOldData["NeckHeight"]["_meter"] == this.charaData["NeckHeight"]["_meter"])
               {
                  _loc62_ = false;
               }
               if(this.charaOldData["Hiyake"]["_visible"][0] == this.charaData["Hiyake"]["_visible"][0] && this.charaOldData["Hiyake"]["_menu"] == this.charaData["Hiyake"]["_menu"] && String(this.charaOldData["Hiyake"]["_color0"][0]) == String(this.charaData["Hiyake"]["_color0"][0]))
               {
                  _loc61_ = false;
               }
               if(this.charaOldData["Nipple"]["_visible"][0] == this.charaData["Nipple"]["_visible"][0] && this.charaOldData["Nipple"]["_menu"] == this.charaData["Nipple"]["_menu"] && String(this.charaOldData["Nipple"]["_color0"][0]) == String(this.charaData["Nipple"]["_color0"][0]))
               {
                  _loc63_ = false;
               }
               if(
                  this.charaOldData["Tin"]["_visible"][0] == this.charaData["Tin"]["_visible"][0] &&
                  this.charaOldData["Tin"]["_menu"] == this.charaData["Tin"]["_menu"] &&
                  String(this.charaOldData["Tin"]["_color0"][0]) == String(this.charaData["Tin"]["_color0"][0]) &&
                  String(this.charaOldData["Tin"]["_color1"][0]) == String(this.charaData["Tin"]["_color1"][0]) &&
                  String(this.charaOldData["Tin"]["_color2"][0]) == String(this.charaData["Tin"]["_color2"][0]) &&
                  this.charaOldData["Tin"]["_tClick"] == this.charaData["Tin"]["_tClick"] &&
                  this.charaOldData["Tin"]["_depth"] == this.charaData["Tin"]["_depth"] &&
                  this.charaOldData["TinManualAuto"]["_check"] == this.charaData["TinManualAuto"]["_check"] &&
                  this.charaOldData["TinBokki"]["_check"] == this.charaData["TinBokki"]["_check"] &&
                  this.charaOldData["TinSwing"]["_meter"] == this.charaData["TinSwing"]["_meter"] &&
                  this.charaOldData["TinKawa"]["_menu"] == this.charaData["TinKawa"]["_menu"] &&
                  this.charaOldData["TinEx"]["_meter"] == this.charaData["TinEx"]["_meter"] &&
                  this.charaOldData["TinSize"]["_meter"] == this.charaData["TinSize"]["_meter"] &&
                  this.charaOldData["TinSizeAuto"]["_check"] == this.charaData["TinSizeAuto"]["_check"] &&
                  this.charaOldData["TinScaleX"]["_meter"] == this.charaData["TinScaleX"]["_meter"] &&
                  this.charaOldData["TinScaleY"]["_meter"] == this.charaData["TinScaleY"]["_meter"] &&
                  this.charaOldData["TinOffsetX"]["_meter"] == this.charaData["TinOffsetX"]["_meter"] &&
                  this.charaOldData["TinOffsetY"]["_meter"] == this.charaData["TinOffsetY"]["_meter"]
               )
               {
                  _loc64_ = false;
               }
               if(this.charaOldData["Tama"]["_visible"][0] == this.charaData["Tama"]["_visible"][0] && this.charaOldData["Tama"]["_menu"] == this.charaData["Tama"]["_menu"])
               {
                  _loc65_ = false;
               }
               if(this.charaOldData["TamaSize"]["_meter"] == this.charaData["TamaSize"]["_meter"])
               {
                  _loc66_ = false;
               }
               if(this.charaOldData["s"]["_visible"][0] == this.charaData["s"]["_visible"][0] && this.charaOldData["s"]["_menu"] == this.charaData["s"]["_menu"] && String(this.charaOldData["s"]["_color0"][0]) == String(this.charaData["s"]["_color0"][0]) && String(this.charaOldData["s"]["_color1"][0]) == String(this.charaData["s"]["_color1"][0]) && String(this.charaOldData["s"]["_color2"][0]) == String(this.charaData["s"]["_color2"][0]) && this.charaOldData["s"]["_sClick"] == this.charaData["s"]["_sClick"] && this.charaOldData["s"]["_hidaPlay"] == this.charaData["s"]["_hidaPlay"])
               {
                  _loc67_ = false;
               }
               if(this.charaOldData["Hair"]["_menu"] == this.charaData["Hair"]["_menu"] && String(this.charaOldData["Hair"]["_color0"][0]) == String(this.charaData["Hair"]["_color0"][0]) && String(this.charaOldData["Hair"]["_color1"][0]) == String(this.charaData["Hair"]["_color1"][0]) && String(this.charaOldData["Hair"]["_color2"][0]) == String(this.charaData["Hair"]["_color2"][0]) && this.charaOldData["Hair"]["_reversal"] == this.charaData["Hair"]["_reversal"] && this.charaOldData["Hair"]["_sen"] == this.charaData["Hair"]["_sen"])
               {
                  _loc68_ = false;
               }
               if(this.charaOldData["Bangs"]["_visible"][0] == this.charaData["Bangs"]["_visible"][0] && this.charaOldData["Bangs"]["_menu"] == this.charaData["Bangs"]["_menu"] && String(this.charaOldData["Bangs"]["_color0"][0]) == String(this.charaData["Bangs"]["_color0"][0]) && String(this.charaOldData["Bangs"]["_color1"][0]) == String(this.charaData["Bangs"]["_color1"][0]) && this.charaOldData["Bangs"]["_reversal"] == this.charaData["Bangs"]["_reversal"] && this.charaOldData["Bangs"]["_depth"] == this.charaData["Bangs"]["_depth"] && this.charaOldData["Bangs_Height"]["_meter"] == this.charaData["Bangs_Height"]["_meter"])
               {
                  _loc69_ = false;
               }
               if(this.charaOldData["HairBack"]["_visible"][0] == this.charaData["HairBack"]["_visible"][0] && this.charaOldData["HairBack"]["_menu"] == this.charaData["HairBack"]["_menu"] && String(this.charaOldData["HairBack"]["_color0"][0]) == String(this.charaData["HairBack"]["_color0"][0]) && String(this.charaOldData["HairBack"]["_color1"][0]) == String(this.charaData["HairBack"]["_color1"][0]) && String(this.charaOldData["HairBack"]["_color2"][0]) == String(this.charaData["HairBack"]["_color2"][0]) && this.charaOldData["HairBack_Height"]["_meter"] == this.charaData["HairBack_Height"]["_meter"])
               {
                  _loc70_ = false;
               }
               if(this.charaOldData["SideBurnLeft"]["_visible"][0] == this.charaData["SideBurnLeft"]["_visible"][0] && this.charaOldData["SideBurnLeft"]["_menu"] == this.charaData["SideBurnLeft"]["_menu"] && String(this.charaOldData["SideBurnLeft"]["_color0"][0]) == String(this.charaData["SideBurnLeft"]["_color0"][0]) && String(this.charaOldData["SideBurnLeft"]["_color1"][0]) == String(this.charaData["SideBurnLeft"]["_color1"][0]) && String(this.charaOldData["SideBurnLeft"]["_color2"][0]) == String(this.charaData["SideBurnLeft"]["_color2"][0]) && this.charaOldData["SideBurnLeft"]["_depth"] == this.charaData["SideBurnLeft"]["_depth"] && this.charaOldData["SideBurnLeft"]["_turn"] == this.charaData["SideBurnLeft"]["_turn"] && this.charaOldData["SideBurnLeft_Height"]["_meter"] == this.charaData["SideBurnLeft_Height"]["_meter"] && this.charaOldData["SideBurnLeft_x"]["_meter"] == this.charaData["SideBurnLeft_x"]["_meter"])
               {
                  _loc71_ = false;
               }
               if(this.charaOldData["SideBurnRight"]["_visible"][0] == this.charaData["SideBurnRight"]["_visible"][0] && this.charaOldData["SideBurnRight"]["_menu"] == this.charaData["SideBurnRight"]["_menu"] && String(this.charaOldData["SideBurnRight"]["_color0"][0]) == String(this.charaData["SideBurnRight"]["_color0"][0]) && String(this.charaOldData["SideBurnRight"]["_color1"][0]) == String(this.charaData["SideBurnRight"]["_color1"][0]) && String(this.charaOldData["SideBurnRight"]["_color2"][0]) == String(this.charaData["SideBurnRight"]["_color2"][0]) && this.charaOldData["SideBurnRight"]["_depth"] == this.charaData["SideBurnRight"]["_depth"] && this.charaOldData["SideBurnRight"]["_turn"] == this.charaData["SideBurnRight"]["_turn"] && this.charaOldData["SideBurnRight_Height"]["_meter"] == this.charaData["SideBurnRight_Height"]["_meter"] && this.charaOldData["SideBurnRight_x"]["_meter"] == this.charaData["SideBurnRight_x"]["_meter"])
               {
                  _loc72_ = false;
               }
               _loc4_ = 0;
               while(_loc4_ <= Main.hukusuuNum)
               {
                  if(!(this.charaOldData["HairExPlus"]["_visible"][_loc4_] == this.charaData["HairExPlus"]["_visible"][_loc4_] && this.charaOldData["HairEx" + _loc4_]["_menu"] == this.charaData["HairEx" + _loc4_]["_menu"] && this.charaOldData["HairEx" + _loc4_]["_reversal2"] == this.charaData["HairEx" + _loc4_]["_reversal2"] && String(this.charaOldData["HairEx" + _loc4_]["_color0"][0]) == String(this.charaData["HairEx" + _loc4_]["_color0"][0]) && String(this.charaOldData["HairEx" + _loc4_]["_color1"][0]) == String(this.charaData["HairEx" + _loc4_]["_color1"][0]) && String(this.charaOldData["HairEx" + _loc4_]["_color2"][0]) == String(this.charaData["HairEx" + _loc4_]["_color2"][0]) && this.charaOldData["HairEx" + _loc4_]["_turn"] == this.charaData["HairEx" + _loc4_]["_turn"] && this.charaOldData["HairExScaleX" + _loc4_]["_meter"] == this.charaData["HairExScaleX" + _loc4_]["_meter"] && this.charaOldData["HairExScaleY" + _loc4_]["_meter"] == this.charaData["HairExScaleY" + _loc4_]["_meter"] && this.charaOldData["HairExScaleB" + _loc4_]["_meter"] == this.charaData["HairExScaleB" + _loc4_]["_meter"] && this.charaOldData["HairExLine" + _loc4_]["_menu"] == this.charaData["HairExLine" + _loc4_]["_menu"] && this.charaOldData["HairExRotation" + _loc4_]["_meter"] == this.charaData["HairExRotation" + _loc4_]["_meter"] && this.charaOldData["HairExRotationPlus" + _loc4_]["_meter"] == this.charaData["HairExRotationPlus" + _loc4_]["_meter"] && this.charaOldData["HairExX" + _loc4_]["_meter"] == this.charaData["HairExX" + _loc4_]["_meter"] && this.charaOldData["HairExY" + _loc4_]["_meter"] == this.charaData["HairExY" + _loc4_]["_meter"] && this.charaOldData["HairEx" + _loc4_]["_shadow"] == this.charaData["HairEx" + _loc4_]["_shadow"] && this.charaOldData["HairExAdd" + _loc4_]["_add0"] == this.charaData["HairExAdd" + _loc4_]["_add0"] && this.charaOldData["HairExAlpha" + _loc4_]["_meter"] == this.charaData["HairExAlpha" + _loc4_]["_meter"]))
                  {
                     _loc73_ = true;
                     break;
                  }
                  _loc73_ = false;
                  _loc4_++;
               }
               _loc5_ = this.charaData["FaceOption"]["_visible"].length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc5_)
               {
                  if(this.charaOldData["FaceOption"]["_visible"][_loc4_] != this.charaData["FaceOption"]["_visible"][_loc4_])
                  {
                     _loc74_ = true;
                     break;
                  }
                  _loc74_ = false;
                  _loc4_++;
               }
               if(this.charaOldData["UnderHair"]["_visible"][0] == this.charaData["UnderHair"]["_visible"][0] && this.charaOldData["UnderHair"]["_menu"] == this.charaData["UnderHair"]["_menu"] && String(this.charaOldData["UnderHair"]["_color0"][0]) == String(this.charaData["UnderHair"]["_color0"][0]) && this.charaOldData["UnderHairAlpha"]["_meter"] == this.charaData["UnderHairAlpha"]["_meter"])
               {
                  _loc75_ = false;
               }
               if(this.charaOldData["Eyebrow"]["_menu"] == this.charaData["Eyebrow"]["_menu"] && String(this.charaOldData["Eyebrow"]["_color0"][0]) == String(this.charaData["Eyebrow"]["_color0"][0]) && String(this.charaOldData["Eyebrow"]["_color1"][0]) == String(this.charaData["Eyebrow"]["_color1"][0]) && this.charaOldData["Eyebrow"]["_depth"] == this.charaData["Eyebrow"]["_depth"])
               {
                  _loc76_ = false;
               }
               if(this.charaOldData["EyebrowY"]["_meter"] == this.charaData["EyebrowY"]["_meter"] && this.charaOldData["EyebrowRotation"]["_meter"] == this.charaData["EyebrowRotation"]["_meter"] && this.charaOldData["EyebrowX"]["_meter"] == this.charaData["EyebrowX"]["_meter"])
               {
                  _loc77_ = false;
               }
               if(this.charaOldData["EyeballLeft"]["_menu"] == this.charaData["EyeballLeft"]["_menu"] && String(this.charaOldData["EyeballLeft"]["_color0"][0]) == String(this.charaData["EyeballLeft"]["_color0"][0]) && String(this.charaOldData["EyeballLeft"]["_color1"][0]) == String(this.charaData["EyeballLeft"]["_color1"][0]) && String(this.charaOldData["EyeballLeft"]["_color2"][0]) == String(this.charaData["EyeballLeft"]["_color2"][0]))
               {
                  _loc78_ = false;
               }
               if(this.charaOldData["EyeballRight"]["_menu"] == this.charaData["EyeballRight"]["_menu"] && String(this.charaOldData["EyeballRight"]["_color0"][0]) == String(this.charaData["EyeballRight"]["_color0"][0]) && String(this.charaOldData["EyeballRight"]["_color1"][0]) == String(this.charaData["EyeballRight"]["_color1"][0]) && String(this.charaOldData["EyeballRight"]["_color2"][0]) == String(this.charaData["EyeballRight"]["_color2"][0]))
               {
                  _loc79_ = false;
               }
               if(this.charaOldData["EyeballScale"]["_meter"] == this.charaData["EyeballScale"]["_meter"] && this.charaOldData["EyeballScaleY"]["_meter"] == this.charaData["EyeballScaleY"]["_meter"] && this.charaOldData["EmotionEyeLeft"]["_meter"] == this.charaData["EmotionEyeLeft"]["_meter"] && this.charaOldData["EmotionEyeRight"]["_meter"] == this.charaData["EmotionEyeRight"]["_meter"])
               {
                  _loc80_ = false;
               }
               if(this.charaOldData["EyeballLight"]["_visible"][0] == this.charaData["EyeballLight"]["_visible"][0] && this.charaOldData["EyeballLight"]["_menu"] == this.charaData["EyeballLight"]["_menu"] && this.charaOldData["EyeballLight"]["_reversal"] == this.charaData["EyeballLight"]["_reversal"])
               {
                  _loc81_ = false;
               }
               if(this.charaOldData["EyeballLightRotation"]["_meter"] == this.charaData["EyeballLightRotation"]["_meter"])
               {
                  _loc82_ = false;
               }
               if(this.charaOldData["Eye"]["_menu"] == this.charaData["Eye"]["_menu"] && String(this.charaOldData["Eye"]["_color0"][0]) == String(this.charaData["Eye"]["_color0"][0]) && this.charaOldData["Eye"]["_depth"] == this.charaData["Eye"]["_depth"])
               {
                  _loc83_ = false;
               }
               if(this.charaOldData["EyeY"]["_meter"] == this.charaData["EyeY"]["_meter"])
               {
                  _loc84_ = false;
               }
               if(this.charaOldData["EyeX"]["_meter"] == this.charaData["EyeX"]["_meter"])
               {
                  _loc85_ = false;
               }
               if(this.charaOldData["EyeScaleX"]["_meter"] == this.charaData["EyeScaleX"]["_meter"] && this.charaOldData["EyeScaleY"]["_meter"] == this.charaData["EyeScaleY"]["_meter"])
               {
                  _loc86_ = false;
               }
               if(this.charaOldData["EyeRotation"]["_meter"] == this.charaData["EyeRotation"]["_meter"])
               {
                  _loc87_ = false;
               }
               if(this.charaOldData["Eyelib"]["_visible"][0] == this.charaData["Eyelib"]["_visible"][0] && this.charaOldData["Eyelib"]["_menu"] == this.charaData["Eyelib"]["_menu"])
               {
                  _loc88_ = false;
               }
               if(this.charaOldData["Eyelash"]["_visible"][0] == this.charaData["Eyelash"]["_visible"][0] && this.charaOldData["Eyelash"]["_menu"] == this.charaData["Eyelash"]["_menu"])
               {
                  _loc89_ = false;
               }
               if(this.charaOldData["Lowerlash"]["_visible"][0] == this.charaData["Lowerlash"]["_visible"][0] && this.charaOldData["Lowerlash"]["_menu"] == this.charaData["Lowerlash"]["_menu"])
               {
                  _loc90_ = false;
               }
               _loc5_ = this.charaData["EmotionOption"]["_visible"].length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc5_)
               {
                  if(!(this.charaOldData["EmotionOption"]["_visible"][_loc4_] == this.charaData["EmotionOption"]["_visible"][_loc4_] && this.charaOldData["EmotionOption"]["_reversal"] == this.charaData["EmotionOption"]["_reversal"]))
                  {
                     _loc91_ = true;
                     break;
                  }
                  _loc91_ = false;
                  _loc4_++;
               }
               _loc5_ = this.charaData["EyeOption"]["_visible"].length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc5_)
               {
                  if(this.charaOldData["EyeOption"]["_visible"][_loc4_] != this.charaData["EyeOption"]["_visible"][_loc4_])
                  {
                     _loc92_ = true;
                     break;
                  }
                  _loc92_ = false;
                  _loc4_++;
               }
               if(this.charaOldData["Hukidashi"]["_visible"][0] == this.charaData["Hukidashi"]["_visible"][0] && this.charaOldData["Hukidashi"]["_menu"] == this.charaData["Hukidashi"]["_menu"])
               {
                  _loc93_ = false;
               }
               if(this.charaOldData["defoEye"]["_visible"][0] == this.charaData["defoEye"]["_visible"][0] && this.charaOldData["defoEye"]["_menu"] == this.charaData["defoEye"]["_menu"] && String(this.charaOldData["defoEye"]["_color0"][0]) == String(this.charaData["defoEye"]["_color0"][0]) && this.charaOldData["defoEye"]["_reversal"] == this.charaData["defoEye"]["_reversal"])
               {
                  _loc94_ = false;
               }
               if(this.charaOldData["defoEyeScale"]["_meter"] == this.charaData["defoEyeScale"]["_meter"])
               {
                  _loc95_ = false;
               }
               if(this.charaOldData["defoEyeX"]["_meter"] == this.charaData["defoEyeX"]["_meter"])
               {
                  _loc96_ = false;
               }
               if(this.charaOldData["defoEyeY"]["_meter"] == this.charaData["defoEyeY"]["_meter"])
               {
                  _loc97_ = false;
               }
               if(this.charaOldData["Hoho"]["_menu"] == this.charaData["Hoho"]["_menu"])
               {
                  _loc98_ = false;
               }
               if(this.charaOldData["HeartPlus"]["_meter"] == this.charaData["HeartPlus"]["_meter"])
               {
                  _loc99_ = false;
               }
               if(this.charaOldData["HeartMinus"]["_meter"] == this.charaData["HeartMinus"]["_meter"])
               {
                  _loc100_ = false;
               }
               if(this.charaOldData["MouthY"]["_meter"] == this.charaData["MouthY"]["_meter"])
               {
                  _loc102_ = false;
               }
               if(this.charaOldData["MouthYMove"]["_meter"] == this.charaData["MouthYMove"]["_meter"] && this.charaOldData["MouthHeight"]["_meter"] == this.charaData["MouthHeight"]["_meter"] && this.charaOldData["MouthWidth"]["_meter"] == this.charaData["MouthWidth"]["_meter"] && this.charaOldData["MouthScale"]["_meter"] == this.charaData["MouthScale"]["_meter"] && this.charaOldData["MouthXMove"]["_meter"] == this.charaData["MouthXMove"]["_meter"] && this.charaOldData["MouthRotation"]["_meter"] == this.charaData["MouthRotation"]["_meter"])
               {
                  _loc101_ = false;
               }
               if(this.charaOldData["EmotionMouth"]["_menu"] == this.charaData["EmotionMouth"]["_menu"] && this.charaOldData["EmotionMouth"]["_reversal"] == this.charaData["EmotionMouth"]["_reversal"] && this.charaOldData["EmotionMouth"]["_visible"][0] == this.charaData["EmotionMouth"]["_visible"][0])
               {
                  _loc103_ = false;
               }
               if(this.charaOldData["EyeballXMove"]["_meter"] == this.charaData["EyeballXMove"]["_meter"] && this.charaOldData["EyeballXMove"]["_reversal"] == this.charaData["EyeballXMove"]["_reversal"] && this.charaOldData["EyeballYMove"]["_meter"] == this.charaData["EyeballYMove"]["_meter"] && this.charaOldData["EyeballWidth"]["_meter"] == this.charaData["EyeballWidth"]["_meter"])
               {
                  _loc104_ = false;
               }
               if(
                  this.charaOldData["EmotionEyebrowLeft"]["_menu"] == this.charaData["EmotionEyebrowLeft"]["_menu"] &&
                  this.charaOldData["EyebrowRotationLeft"]["_meter"] == this.charaData["EyebrowRotationLeft"]["_meter"] &&
                  this.charaOldData["EyebrowMoveLeft"]["_meter"] == this.charaData["EyebrowMoveLeft"]["_meter"] &&
                  this.charaOldData["EyebrowMoveHorizontalLeft"]["_meter"] == this.charaData["EyebrowMoveHorizontalLeft"]["_meter"]
               )
               {
                  _loc105_ = false;
               }
               if(
                  this.charaOldData["EmotionEyebrowRight"]["_menu"] == this.charaData["EmotionEyebrowRight"]["_menu"] &&
                  this.charaOldData["EyebrowRotationRight"]["_meter"] == this.charaData["EyebrowRotationRight"]["_meter"] &&
                  this.charaOldData["EyebrowMoveRight"]["_meter"] == this.charaData["EyebrowMoveRight"]["_meter"] &&
                  this.charaOldData["EyebrowMoveHorizontalRight"]["_meter"] == this.charaData["EyebrowMoveHorizontalRight"]["_meter"]
               )
               {
                  _loc106_ = false;
               }
               if(this.charaOldData["Seihuku"]["_visible"][0] == this.charaData["Seihuku"]["_visible"][0] && this.charaOldData["Seihuku"]["_menu"] == this.charaData["Seihuku"]["_menu"] && String(this.charaOldData["Seihuku"]["_color0"][0]) == String(this.charaData["Seihuku"]["_color0"][0]) && String(this.charaOldData["Seihuku"]["_color1"][0]) == String(this.charaData["Seihuku"]["_color1"][0]) && String(this.charaOldData["Seihuku"]["_color2"][0]) == String(this.charaData["Seihuku"]["_color2"][0]) && this.charaOldData["Seihuku"]["_g0"] == this.charaData["Seihuku"]["_g0"] && this.charaOldData["SeihukuLeftArm"]["_menu"] == this.charaData["SeihukuLeftArm"]["_menu"] && String(this.charaOldData["SeihukuLeftArm"]["_color0"][0]) == String(this.charaData["SeihukuLeftArm"]["_color0"][0]) && String(this.charaOldData["SeihukuLeftArm"]["_color1"][0]) == String(this.charaData["SeihukuLeftArm"]["_color1"][0]) && this.charaOldData["SeihukuRightArm"]["_menu"] == this.charaData["SeihukuRightArm"]["_menu"] && String(this.charaOldData["SeihukuRightArm"]["_color0"][0]) == String(this.charaData["SeihukuRightArm"]["_color0"][0]) && String(this.charaOldData["SeihukuRightArm"]["_color1"][0]) == String(this.charaData["SeihukuRightArm"]["_color1"][0]) && this.charaOldData["SeihukuBreastOption"]["_menu"] == this.charaData["SeihukuBreastOption"]["_menu"] && String(this.charaOldData["SeihukuBreastOption"]["_color0"][0]) == String(this.charaData["SeihukuBreastOption"]["_color0"][0]) && String(this.charaOldData["SeihukuBreastOption"]["_color1"][0]) == String(this.charaData["SeihukuBreastOption"]["_color1"][0]) && String(this.charaOldData["SeihukuBreastOption"]["_color2"][0]) == String(this.charaData["SeihukuBreastOption"]["_color2"][0]) && this.charaOldData["SeihukuBreastOption"]["_reversal2"] == this.charaData["SeihukuBreastOption"]["_reversal2"] && this.charaOldData["SeihukuDouOption"]["_menu"] == this.charaData["SeihukuDouOption"]["_menu"] && String(this.charaOldData["SeihukuDouOption"]["_color0"][0]) == String(this.charaData["SeihukuDouOption"]["_color0"][0]) && String(this.charaOldData["SeihukuDouOption"]["_color1"][0]) == String(this.charaData["SeihukuDouOption"]["_color1"][0]) && String(this.charaOldData["SeihukuDouOption"]["_color2"][0]) == String(this.charaData["SeihukuDouOption"]["_color2"][0]) && this.charaOldData["SeihukuDouOption"]["_number"] == this.charaData["SeihukuDouOption"]["_number"])
               {
                  _loc107_ = false;
               }
               if(this.charaOldData["Ysyatu"]["_visible"][0] == this.charaData["Ysyatu"]["_visible"][0] && this.charaOldData["Ysyatu"]["_menu"] == this.charaData["Ysyatu"]["_menu"] && String(this.charaOldData["Ysyatu"]["_color0"][0]) == String(this.charaData["Ysyatu"]["_color0"][0]) && String(this.charaOldData["Ysyatu"]["_color1"][0]) == String(this.charaData["Ysyatu"]["_color1"][0]) && String(this.charaOldData["Ysyatu"]["_color2"][0]) == String(this.charaData["Ysyatu"]["_color2"][0]) && this.charaOldData["Ysyatu"]["_g0"] == this.charaData["Ysyatu"]["_g0"] && this.charaOldData["Ysyatu"]["_g1"] == this.charaData["Ysyatu"]["_g1"] && this.charaOldData["Ysyatu"]["_g2"] == this.charaData["Ysyatu"]["_g2"] && this.charaOldData["YsyatuDou"]["_menu"] == this.charaData["YsyatuDou"]["_menu"] && this.charaOldData["YsyatuSkirt"]["_menu"] == this.charaData["YsyatuSkirt"]["_menu"] && this.charaOldData["YsyatuLeftArm"]["_menu"] == this.charaData["YsyatuLeftArm"]["_menu"] && String(this.charaOldData["YsyatuLeftArm"]["_color0"][0]) == String(this.charaData["YsyatuLeftArm"]["_color0"][0]) && String(this.charaOldData["YsyatuLeftArm"]["_color1"][0]) == String(this.charaData["YsyatuLeftArm"]["_color1"][0]) && this.charaOldData["YsyatuRightArm"]["_menu"] == this.charaData["YsyatuRightArm"]["_menu"] && String(this.charaOldData["YsyatuRightArm"]["_color0"][0]) == String(this.charaData["YsyatuRightArm"]["_color0"][0]) && String(this.charaOldData["YsyatuRightArm"]["_color1"][0]) == String(this.charaData["YsyatuRightArm"]["_color1"][0]) && this.charaOldData["YsyatuOption"]["_menu"] == this.charaData["YsyatuOption"]["_menu"] && this.charaOldData["YsyatuOption"]["_number"] == this.charaData["YsyatuOption"]["_number"] && this.charaOldData["YsyatuBreastOption"]["_menu"] == this.charaData["YsyatuBreastOption"]["_menu"] && String(this.charaOldData["YsyatuBreastOption"]["_color0"][0]) == String(this.charaData["YsyatuBreastOption"]["_color0"][0]) && String(this.charaOldData["YsyatuBreastOption"]["_color1"][0]) == String(this.charaData["YsyatuBreastOption"]["_color1"][0]) && String(this.charaOldData["YsyatuBreastOption"]["_color2"][0]) == String(this.charaData["YsyatuBreastOption"]["_color2"][0]) && this.charaOldData["YsyatuBreastOption"]["_reversal2"] == this.charaData["YsyatuBreastOption"]["_reversal2"] && this.charaOldData["YsyatuDouOption"]["_menu"] == this.charaData["YsyatuDouOption"]["_menu"] && String(this.charaOldData["YsyatuDouOption"]["_color0"][0]) == String(this.charaData["YsyatuDouOption"]["_color0"][0]) && String(this.charaOldData["YsyatuDouOption"]["_color1"][0]) == String(this.charaData["YsyatuDouOption"]["_color1"][0]) && String(this.charaOldData["YsyatuDouOption"]["_color2"][0]) == String(this.charaData["YsyatuDouOption"]["_color2"][0]) && this.charaOldData["YsyatuDouOption"]["_number"] == this.charaData["YsyatuDouOption"]["_number"])
               {
                  _loc108_ = false;
               }
               if(this.charaOldData["Tsyatu"]["_visible"][0] == this.charaData["Tsyatu"]["_visible"][0] && this.charaOldData["Tsyatu"]["_menu"] == this.charaData["Tsyatu"]["_menu"] && String(this.charaOldData["Tsyatu"]["_color0"][0]) == String(this.charaData["Tsyatu"]["_color0"][0]) && String(this.charaOldData["Tsyatu"]["_color1"][0]) == String(this.charaData["Tsyatu"]["_color1"][0]) && String(this.charaOldData["Tsyatu"]["_color2"][0]) == String(this.charaData["Tsyatu"]["_color2"][0]) && this.charaOldData["Tsyatu"]["_g0"] == this.charaData["Tsyatu"]["_g0"] && this.charaOldData["Tsyatu"]["_g1"] == this.charaData["Tsyatu"]["_g1"] && this.charaOldData["TsyatuDou"]["_menu"] == this.charaData["TsyatuDou"]["_menu"] && this.charaOldData["TsyatuSkirt"]["_menu"] == this.charaData["TsyatuSkirt"]["_menu"] && this.charaOldData["TsyatuLeftArm"]["_menu"] == this.charaData["TsyatuLeftArm"]["_menu"] && String(this.charaOldData["TsyatuLeftArm"]["_color0"][0]) == String(this.charaData["TsyatuLeftArm"]["_color0"][0]) && String(this.charaOldData["TsyatuLeftArm"]["_color1"][0]) == String(this.charaData["TsyatuLeftArm"]["_color1"][0]) && this.charaOldData["TsyatuRightArm"]["_menu"] == this.charaData["TsyatuRightArm"]["_menu"] && String(this.charaOldData["TsyatuRightArm"]["_color0"][0]) == String(this.charaData["TsyatuRightArm"]["_color0"][0]) && String(this.charaOldData["TsyatuRightArm"]["_color1"][0]) == String(this.charaData["TsyatuRightArm"]["_color1"][0]) && this.charaOldData["TsyatuBreastOption"]["_menu"] == this.charaData["TsyatuBreastOption"]["_menu"] && String(this.charaOldData["TsyatuBreastOption"]["_color0"][0]) == String(this.charaData["TsyatuBreastOption"]["_color0"][0]) && String(this.charaOldData["TsyatuBreastOption"]["_color1"][0]) == String(this.charaData["TsyatuBreastOption"]["_color1"][0]) && String(this.charaOldData["TsyatuBreastOption"]["_color2"][0]) == String(this.charaData["TsyatuBreastOption"]["_color2"][0]) && this.charaOldData["TsyatuBreastOption"]["_reversal2"] == this.charaData["TsyatuBreastOption"]["_reversal2"] && this.charaOldData["TsyatuDouOption"]["_menu"] == this.charaData["TsyatuDouOption"]["_menu"] && String(this.charaOldData["TsyatuDouOption"]["_color0"][0]) == String(this.charaData["TsyatuDouOption"]["_color0"][0]) && String(this.charaOldData["TsyatuDouOption"]["_color1"][0]) == String(this.charaData["TsyatuDouOption"]["_color1"][0]) && String(this.charaOldData["TsyatuDouOption"]["_color2"][0]) == String(this.charaData["TsyatuDouOption"]["_color2"][0]) && this.charaOldData["TsyatuDouOption"]["_number"] == this.charaData["TsyatuDouOption"]["_number"])
               {
                  _loc109_ = false;
               }
               if(this.charaOldData["Vest"]["_visible"][0] == this.charaData["Vest"]["_visible"][0] && this.charaOldData["Vest"]["_menu"] == this.charaData["Vest"]["_menu"] && String(this.charaOldData["Vest"]["_color0"][0]) == String(this.charaData["Vest"]["_color0"][0]) && String(this.charaOldData["Vest"]["_color1"][0]) == String(this.charaData["Vest"]["_color1"][0]) && String(this.charaOldData["Vest"]["_color2"][0]) == String(this.charaData["Vest"]["_color2"][0]) && this.charaOldData["Vest"]["_g0"] == this.charaData["Vest"]["_g0"] && this.charaOldData["Vest"]["_g1"] == this.charaData["Vest"]["_g1"] && this.charaOldData["VestDou"]["_menu"] == this.charaData["VestDou"]["_menu"] && this.charaOldData["VestSkirt"]["_menu"] == this.charaData["VestSkirt"]["_menu"] && this.charaOldData["VestLeftArm"]["_menu"] == this.charaData["VestLeftArm"]["_menu"] && String(this.charaOldData["VestLeftArm"]["_color0"][0]) == String(this.charaData["VestLeftArm"]["_color0"][0]) && String(this.charaOldData["VestLeftArm"]["_color1"][0]) == String(this.charaData["VestLeftArm"]["_color1"][0]) && this.charaOldData["VestRightArm"]["_menu"] == this.charaData["VestRightArm"]["_menu"] && String(this.charaOldData["VestRightArm"]["_color0"][0]) == String(this.charaData["VestRightArm"]["_color0"][0]) && String(this.charaOldData["VestRightArm"]["_color1"][0]) == String(this.charaData["VestRightArm"]["_color1"][0]) && this.charaOldData["VestBreastOption"]["_menu"] == this.charaData["VestBreastOption"]["_menu"] && String(this.charaOldData["VestBreastOption"]["_color0"][0]) == String(this.charaData["VestBreastOption"]["_color0"][0]) && String(this.charaOldData["VestBreastOption"]["_color1"][0]) == String(this.charaData["VestBreastOption"]["_color1"][0]) && String(this.charaOldData["VestBreastOption"]["_color2"][0]) == String(this.charaData["VestBreastOption"]["_color2"][0]) && this.charaOldData["VestBreastOption"]["_reversal2"] == this.charaData["VestBreastOption"]["_reversal2"] && this.charaOldData["VestDouOption"]["_menu"] == this.charaData["VestDouOption"]["_menu"] && String(this.charaOldData["VestDouOption"]["_color0"][0]) == String(this.charaData["VestDouOption"]["_color0"][0]) && String(this.charaOldData["VestDouOption"]["_color1"][0]) == String(this.charaData["VestDouOption"]["_color1"][0]) && String(this.charaOldData["VestDouOption"]["_color2"][0]) == String(this.charaData["VestDouOption"]["_color2"][0]) && this.charaOldData["VestDouOption"]["_number"] == this.charaData["VestDouOption"]["_number"])
               {
                  _loc110_ = false;
               }
               if(this.charaOldData["Item0"]["_visible"][0] == this.charaData["Item0"]["_visible"][0] && this.charaOldData["Item0"]["_menu"] == this.charaData["Item0"]["_menu"] && String(this.charaOldData["Item0"]["_color0"][0]) == String(this.charaData["Item0"]["_color0"][0]) && String(this.charaOldData["Item0"]["_color1"][0]) == String(this.charaData["Item0"]["_color1"][0]) && String(this.charaOldData["Item0"]["_color2"][0]) == String(this.charaData["Item0"]["_color2"][0]))
               {
                  _loc111_ = false;
               }
               if(this.charaOldData["Item1"]["_visible"][0] == this.charaData["Item1"]["_visible"][0] && this.charaOldData["Item1"]["_menu"] == this.charaData["Item1"]["_menu"] && String(this.charaOldData["Item1"]["_color0"][0]) == String(this.charaData["Item1"]["_color0"][0]) && String(this.charaOldData["Item1"]["_color1"][0]) == String(this.charaData["Item1"]["_color1"][0]) && String(this.charaOldData["Item1"]["_color2"][0]) == String(this.charaData["Item1"]["_color2"][0]))
               {
                  _loc112_ = false;
               }
               if(this.charaOldData["Skirt"]["_visible"][0] == this.charaData["Skirt"]["_visible"][0] && this.charaOldData["Skirt"]["_menu"] == this.charaData["Skirt"]["_menu"] && String(this.charaOldData["Skirt"]["_color0"][0]) == String(this.charaData["Skirt"]["_color0"][0]) && String(this.charaOldData["Skirt"]["_color1"][0]) == String(this.charaData["Skirt"]["_color1"][0]) && String(this.charaOldData["Skirt"]["_color2"][0]) == String(this.charaData["Skirt"]["_color2"][0]) && this.charaOldData["Skirt"]["_depth"] == this.charaData["Skirt"]["_depth"])
               {
                  _loc113_ = false;
               }
               if(this.charaOldData["Zubon"]["_visible"][0] == this.charaData["Zubon"]["_visible"][0] && this.charaOldData["Zubon"]["_menu"] == this.charaData["Zubon"]["_menu"] && String(this.charaOldData["Zubon"]["_color0"][0]) == String(this.charaData["Zubon"]["_color0"][0]) && String(this.charaOldData["Zubon"]["_color1"][0]) == String(this.charaData["Zubon"]["_color1"][0]) && String(this.charaOldData["Zubon"]["_color2"][0]) == String(this.charaData["Zubon"]["_color2"][0]) && this.charaOldData["Zubon"]["_depth"] == this.charaData["Zubon"]["_depth"])
               {
                  _loc114_ = false;
               }
               if(this.charaOldData["ZubonAshi0"]["_menu"] == this.charaData["ZubonAshi0"]["_menu"] && String(this.charaOldData["ZubonAshi0"]["_color0"][0]) == String(this.charaData["ZubonAshi0"]["_color0"][0]) && String(this.charaOldData["ZubonAshi0"]["_color1"][0]) == String(this.charaData["ZubonAshi0"]["_color1"][0]) && String(this.charaOldData["ZubonAshi0"]["_color2"][0]) == String(this.charaData["ZubonAshi0"]["_color2"][0]))
               {
                  _loc115_ = false;
               }
               if(this.charaOldData["ZubonAshi1"]["_menu"] == this.charaData["ZubonAshi1"]["_menu"] && String(this.charaOldData["ZubonAshi1"]["_color0"][0]) == String(this.charaData["ZubonAshi1"]["_color0"][0]) && String(this.charaOldData["ZubonAshi1"]["_color1"][0]) == String(this.charaData["ZubonAshi1"]["_color1"][0]) && String(this.charaOldData["ZubonAshi1"]["_color2"][0]) == String(this.charaData["ZubonAshi1"]["_color2"][0]))
               {
                  _loc116_ = false;
               }
               if(this.charaOldData["Megane"]["_visible"][0] == this.charaData["Megane"]["_visible"][0] && this.charaOldData["Megane"]["_menu"] == this.charaData["Megane"]["_menu"] && String(this.charaOldData["Megane"]["_color0"][0]) == String(this.charaData["Megane"]["_color0"][0]) && String(this.charaOldData["Megane"]["_color1"][0]) == String(this.charaData["Megane"]["_color1"][0]) && String(this.charaOldData["Megane"]["_color2"][0]) == String(this.charaData["Megane"]["_color2"][0]) && this.charaOldData["Megane"]["_reversal"] == this.charaData["Megane"]["_reversal"] && this.charaOldData["Megane"]["_g0"] == this.charaData["Megane"]["_g0"] && this.charaOldData["MeganeY"]["_meter"] == this.charaData["MeganeY"]["_meter"] && this.charaOldData["Megane"]["_depth"] == this.charaData["Megane"]["_depth"])
               {
                  _loc117_ = false;
               }
               if(this.charaOldData["Headband"]["_visible"][0] == this.charaData["Headband"]["_visible"][0] && this.charaOldData["Headband"]["_menu"] == this.charaData["Headband"]["_menu"] && String(this.charaOldData["Headband"]["_color0"][0]) == String(this.charaData["Headband"]["_color0"][0]) && String(this.charaOldData["Headband"]["_color1"][0]) == String(this.charaData["Headband"]["_color1"][0]) && String(this.charaOldData["Headband"]["_color2"][0]) == String(this.charaData["Headband"]["_color2"][0]) && this.charaOldData["Headband"]["_depth"] == this.charaData["Headband"]["_depth"])
               {
                  _loc118_ = false;
               }
               if(this.charaOldData["Hat"]["_visible"][0] == this.charaData["Hat"]["_visible"][0] && this.charaOldData["Hat"]["_menu"] == this.charaData["Hat"]["_menu"] && String(this.charaOldData["Hat"]["_color0"][0]) == String(this.charaData["Hat"]["_color0"][0]) && String(this.charaOldData["Hat"]["_color1"][0]) == String(this.charaData["Hat"]["_color1"][0]) && String(this.charaOldData["Hat"]["_color2"][0]) == String(this.charaData["Hat"]["_color2"][0]) && this.charaOldData["Hat"]["_reversal"] == this.charaData["Hat"]["_reversal"] && this.charaOldData["Hat"]["_hair0"] == this.charaData["Hat"]["_hair0"] && this.charaOldData["Hat"]["_hair1"] == this.charaData["Hat"]["_hair1"] && this.charaOldData["Hat"]["_hair2"] == this.charaData["Hat"]["_hair2"] && this.charaOldData["Hat"]["_hair3"] == this.charaData["Hat"]["_hair3"] && this.charaOldData["Hat"]["_hair4"] == this.charaData["Hat"]["_hair4"])
               {
                  _loc119_ = false;
               }
               _loc4_ = 0;
               while(_loc4_ <= Main.hukusuuNum)
               {
                  if(!(
                     this.charaOldData["MarkPlus"]["_visible"][_loc4_] == this.charaData["MarkPlus"]["_visible"][_loc4_] &&
                     this.charaOldData["Mark" + _loc4_]["_menu"] == this.charaData["Mark" + _loc4_]["_menu"] &&
                     this.charaOldData["Mark" + _loc4_]["_reversal2"] == this.charaData["Mark" + _loc4_]["_reversal2"] &&
                     String(this.charaOldData["Mark" + _loc4_]["_color0"][0]) == String(this.charaData["Mark" + _loc4_]["_color0"][0]) &&
                     String(this.charaOldData["Mark" + _loc4_]["_color1"][0]) == String(this.charaData["Mark" + _loc4_]["_color1"][0]) &&
                     String(this.charaOldData["Mark" + _loc4_]["_color2"][0]) == String(this.charaData["Mark" + _loc4_]["_color2"][0]) &&
                     this.charaOldData["MarkScaleX" + _loc4_]["_meter"] == this.charaData["MarkScaleX" + _loc4_]["_meter"] &&
                     this.charaOldData["MarkScaleY" + _loc4_]["_meter"] == this.charaData["MarkScaleY" + _loc4_]["_meter"] &&
                     this.charaOldData["MarkScaleB" + _loc4_]["_meter"] == this.charaData["MarkScaleB" + _loc4_]["_meter"] &&
                     this.charaOldData["MarkRotation" + _loc4_]["_meter"] == this.charaData["MarkRotation" + _loc4_]["_meter"] &&
                     this.charaOldData["MarkX" + _loc4_]["_meter"] == this.charaData["MarkX" + _loc4_]["_meter"] &&
                     this.charaOldData["MarkY" + _loc4_]["_meter"] == this.charaData["MarkY" + _loc4_]["_meter"] &&
                     this.charaOldData["MarkAlpha" + _loc4_]["_meter"] == this.charaData["MarkAlpha" + _loc4_]["_meter"] &&
                     this.charaOldData["Mark" + _loc4_]["_depth"] == this.charaData["Mark" + _loc4_]["_depth"] &&
                     this.charaOldData["MarkVary" + _loc4_]["_menu"] == this.charaData["MarkVary" + _loc4_]["_menu"] &&
                     this.charaOldData["MarkAdd" + _loc4_]["_add0"] == this.charaData["MarkAdd" + _loc4_]["_add0"]
                  )) {
                     _loc120_ = true;
                     break;
                  }
                  _loc120_ = false;
                  _loc4_++;
               }
               _loc4_ = 0;
               while(_loc4_ <= Main.RibonhukusuuNum)
               {
                  if(!(
                     this.charaOldData["RibonPlus"]["_visible"][_loc4_] == this.charaData["RibonPlus"]["_visible"][_loc4_] &&
                     this.charaOldData["Ribon" + _loc4_]["_menu"] == this.charaData["Ribon" + _loc4_]["_menu"] &&
                     this.charaOldData["Ribon" + _loc4_]["_reversal2"] == this.charaData["Ribon" + _loc4_]["_reversal2"] &&
                     this.charaOldData["Ribon" + _loc4_]["_depth"] == this.charaData["Ribon" + _loc4_]["_depth"] &&
                     String(this.charaOldData["Ribon" + _loc4_]["_color0"][0]) == String(this.charaData["Ribon" + _loc4_]["_color0"][0]) &&
                     String(this.charaOldData["Ribon" + _loc4_]["_color1"][0]) == String(this.charaData["Ribon" + _loc4_]["_color1"][0]) &&
                     String(this.charaOldData["Ribon" + _loc4_]["_color2"][0]) == String(this.charaData["Ribon" + _loc4_]["_color2"][0]) &&
                     this.charaOldData["RibonLine" + _loc4_]["_menu"] == this.charaData["RibonLine" + _loc4_]["_menu"] &&
                     String(this.charaOldData["RibonLine" + _loc4_]["_color0"]) == String(this.charaData["RibonLine" + _loc4_]["_color0"]) &&
                     this.charaOldData["RibonScale" + _loc4_]["_meter"] == this.charaData["RibonScale" + _loc4_]["_meter"] &&
                     this.charaOldData["RibonScaleY" + _loc4_]["_meter"] == this.charaData["RibonScaleY" + _loc4_]["_meter"] &&
                     this.charaOldData["RibonScaleB" + _loc4_]["_meter"] == this.charaData["RibonScaleB" + _loc4_]["_meter"] &&
                     this.charaOldData["RibonRotation" + _loc4_]["_meter"] == this.charaData["RibonRotation" + _loc4_]["_meter"] &&
                     this.charaOldData["RibonX" + _loc4_]["_meter"] == this.charaData["RibonX" + _loc4_]["_meter"] &&
                     this.charaOldData["RibonY" + _loc4_]["_meter"] == this.charaData["RibonY" + _loc4_]["_meter"] &&
                     this.charaOldData["RibonAdd" + _loc4_]["_add0"] == this.charaData["RibonAdd" + _loc4_]["_add0"] &&
                     this.charaOldData["Ribon" + _loc4_]["_reversal"] == this.charaData["Ribon" + _loc4_]["_reversal"] &&
                     this.charaOldData["Ribon" + _loc4_]["_shadow"] == this.charaData["Ribon" + _loc4_]["_shadow"] &&
                     this.charaOldData["RibonAlpha" + _loc4_]["_meter"] == this.charaData["RibonAlpha" + _loc4_]["_meter"] &&
                     this.charaOldData["RibonFineX" + _loc4_]["_meter"] == this.charaData["RibonFineX" + _loc4_]["_meter"] &&
                     this.charaOldData["RibonFineY" + _loc4_]["_meter"] == this.charaData["RibonFineY" + _loc4_]["_meter"]
                  ))
                  {
                     _loc121_ = true;
                     break;
                  }
                  _loc121_ = false;
                  _loc4_++;
               }
               _loc4_ = 0;
               while(_loc4_ <= Main.hukusuuNum)
               {
                  if(!(
                     this.charaOldData["BeltPlus"]["_visible"][_loc4_] == this.charaData["BeltPlus"]["_visible"][_loc4_] &&
                     this.charaOldData["Belt" + _loc4_]["_menu"] == this.charaData["Belt" + _loc4_]["_menu"] &&
                     this.charaOldData["Belt" + _loc4_]["_reversal2"] == this.charaData["Belt" + _loc4_]["_reversal2"] &&
                     this.charaOldData["Belt" + _loc4_]["_depth"] == this.charaData["Belt" + _loc4_]["_depth"] &&
                     this.charaOldData["Belt" + _loc4_]["_mask"] == this.charaData["Belt" + _loc4_]["_mask"] &&
                     String(this.charaOldData["Belt" + _loc4_]["_color0"][0]) == String(this.charaData["Belt" + _loc4_]["_color0"][0]) &&
                     String(this.charaOldData["Belt" + _loc4_]["_color1"][0]) == String(this.charaData["Belt" + _loc4_]["_color1"][0]) &&
                     String(this.charaOldData["Belt" + _loc4_]["_color2"][0]) == String(this.charaData["Belt" + _loc4_]["_color2"][0]) &&
                     this.charaOldData["BeltScale" + _loc4_]["_meter"] == this.charaData["BeltScale" + _loc4_]["_meter"] &&
                     this.charaOldData["BeltScaleY" + _loc4_]["_meter"] == this.charaData["BeltScaleY" + _loc4_]["_meter"] &&
                     this.charaOldData["BeltScaleB" + _loc4_]["_meter"] == this.charaData["BeltScaleB" + _loc4_]["_meter"] &&
                     this.charaOldData["BeltLine" + _loc4_]["_menu"] == this.charaData["BeltLine" + _loc4_]["_menu"] &&
                     String(this.charaOldData["BeltLine" + _loc4_]["_color0"]) == String(this.charaData["BeltLine" + _loc4_]["_color0"]) &&
                     this.charaOldData["BeltRotation" + _loc4_]["_meter"] == this.charaData["BeltRotation" + _loc4_]["_meter"] &&
                     this.charaOldData["BeltX" + _loc4_]["_meter"] == this.charaData["BeltX" + _loc4_]["_meter"] &&
                     this.charaOldData["BeltY" + _loc4_]["_meter"] == this.charaData["BeltY" + _loc4_]["_meter"] &&
                     this.charaOldData["BeltExtra" + _loc4_]["_menu"] == this.charaData["BeltExtra" + _loc4_]["_menu"] &&
                     this.charaOldData["BeltAlpha" + _loc4_]["_meter"] == this.charaData["BeltAlpha" + _loc4_]["_meter"] &&
                     this.charaOldData["BeltFineX" + _loc4_]["_meter"] == this.charaData["BeltFineX" + _loc4_]["_meter"] &&
                     this.charaOldData["BeltFineY" + _loc4_]["_meter"] == this.charaData["BeltFineY" + _loc4_]["_meter"]
                  ))
                  {
                     _loc123_ = true;
                     break;
                  }
                  _loc123_ = false;
                  _loc4_++;
               }
               _loc4_ = 0;
               while(_loc4_ <= Main.hukusuuNum)
               {
                  if(!(
                     this.charaOldData["CharaLoadPlus"]["_visible"][_loc4_] == this.charaData["CharaLoadPlus"]["_visible"][_loc4_] &&
                     this.charaOldData["CharaLoadReversalDepth" + _loc4_]["_reversal"] == this.charaData["CharaLoadReversalDepth" + _loc4_]["_reversal"] &&
                     this.charaOldData["CharaLoadReversalDepth" + _loc4_]["_depth"] == this.charaData["CharaLoadReversalDepth" + _loc4_]["_depth"] &&
                     this.charaOldData["CharaLoadAdd" + _loc4_]["_name"] == this.charaData["CharaLoadAdd" + _loc4_]["_name"] &&
                     this.charaOldData["CharaLoadScale" + _loc4_]["_meter"] == this.charaData["CharaLoadScale" + _loc4_]["_meter"] &&
                     this.charaOldData["CharaLoadScaleY" + _loc4_]["_meter"] == this.charaData["CharaLoadScaleY" + _loc4_]["_meter"] &&
                     this.charaOldData["CharaLoadScaleB" + _loc4_]["_meter"] == this.charaData["CharaLoadScaleB" + _loc4_]["_meter"] &&
                     this.charaOldData["CharaLoadRotation" + _loc4_]["_meter"] == this.charaData["CharaLoadRotation" + _loc4_]["_meter"] &&
                     this.charaOldData["CharaLoadX" + _loc4_]["_meter"] == this.charaData["CharaLoadX" + _loc4_]["_meter"] &&
                     this.charaOldData["CharaLoadY" + _loc4_]["_meter"] == this.charaData["CharaLoadY" + _loc4_]["_meter"] &&
                     this.charaOldData["CharaLoadAlpha" + _loc4_]["_meter"] == this.charaData["CharaLoadAlpha" + _loc4_]["_meter"] &&
                     this.charaOldData["CharaLoadAdd" + _loc4_]["_add0"] == this.charaData["CharaLoadAdd" + _loc4_]["_add0"] &&
                     this.charaOldData["CharaLoadSwfColor" + _loc4_]["_swfMenu"] == this.charaData["CharaLoadSwfColor" + _loc4_]["_swfMenu"] &&
                     this.charaOldData["CharaLoadSwfColor" + _loc4_]["_swfSen"] == this.charaData["CharaLoadSwfColor" + _loc4_]["_swfSen"] &&
                     this.charaOldData["CharaLoadFineX" + _loc4_]["_meter"] == this.charaData["CharaLoadFineX" + _loc4_]["_meter"] &&
                     this.charaOldData["CharaLoadFineY" + _loc4_]["_meter"] == this.charaData["CharaLoadFineY" + _loc4_]["_meter"]
                  ))
                  {
                     _loc124_ = true;
                     break;
                  }
                  _loc124_ = false;
                  _loc4_++;
               }
               if(this.charaOldData["Mimi"]["_visible"][0] == this.charaData["Mimi"]["_visible"][0] && this.charaOldData["Mimi"]["_menu"] == this.charaData["Mimi"]["_menu"] && String(this.charaOldData["Mimi"]["_color0"][0]) == String(this.charaData["Mimi"]["_color0"][0]) && String(this.charaOldData["Mimi"]["_color1"][0]) == String(this.charaData["Mimi"]["_color1"][0]) && String(this.charaOldData["Mimi"]["_color2"][0]) == String(this.charaData["Mimi"]["_color2"][0]) && String(this.charaOldData["Mimi"]["_mimihat"]) == String(this.charaData["Mimi"]["_mimihat"]))
               {
                  _loc125_ = false;
               }
               if(this.charaOldData["Hane"]["_visible"][0] == this.charaData["Hane"]["_visible"][0] && this.charaOldData["Hane"]["_menu"] == this.charaData["Hane"]["_menu"] && String(this.charaOldData["Hane"]["_color0"][0]) == String(this.charaData["Hane"]["_color0"][0]) && String(this.charaOldData["Hane"]["_color1"][0]) == String(this.charaData["Hane"]["_color1"][0]) && String(this.charaOldData["Hane"]["_color2"][0]) == String(this.charaData["Hane"]["_color2"][0]) && this.charaOldData["Hane"]["_posi0"] == this.charaData["Hane"]["_posi0"] && this.charaOldData["Hane"]["_posi1"] == this.charaData["Hane"]["_posi1"] && this.charaOldData["Hane"]["_reversal"] == this.charaData["Hane"]["_reversal"] && this.charaOldData["HaneScale"]["_meter"] == this.charaData["HaneScale"]["_meter"] && this.charaOldData["HaneY"]["_meter"] == this.charaData["HaneY"]["_meter"])
               {
                  _loc126_ = false;
               }
               if(this.charaOldData["Tail"]["_visible"][0] == this.charaData["Tail"]["_visible"][0] && this.charaOldData["Tail"]["_menu"] == this.charaData["Tail"]["_menu"] && String(this.charaOldData["Tail"]["_color0"][0]) == String(this.charaData["Tail"]["_color0"][0]) && String(this.charaOldData["Tail"]["_color1"][0]) == String(this.charaData["Tail"]["_color1"][0]) && String(this.charaOldData["Tail"]["_color2"][0]) == String(this.charaData["Tail"]["_color2"][0]) && this.charaOldData["Tail"]["_posi0"] == this.charaData["Tail"]["_posi0"] && this.charaOldData["Tail"]["_reversal"] == this.charaData["Tail"]["_reversal"] && this.charaOldData["TailScale"]["_meter"] == this.charaData["TailScale"]["_meter"])
               {
                  _loc127_ = false;
               }
               if(this.charaOldData["Horn"]["_visible"][0] == this.charaData["Horn"]["_visible"][0] && this.charaOldData["Horn"]["_menu"] == this.charaData["Horn"]["_menu"] && String(this.charaOldData["Horn"]["_color0"][0]) == String(this.charaData["Horn"]["_color0"][0]) && String(this.charaOldData["Horn"]["_color1"][0]) == String(this.charaData["Horn"]["_color1"][0]) && String(this.charaOldData["Horn"]["_color2"][0]) == String(this.charaData["Horn"]["_color2"][0]) && this.charaOldData["Horn"]["_depth"] == this.charaData["Horn"]["_depth"] && this.charaOldData["HornScale"]["_meter"] == this.charaData["HornScale"]["_meter"] && this.charaOldData["HornY"]["_meter"] == this.charaData["HornY"]["_meter"])
               {
                  _loc128_ = false;
               }
               if(this.charaOldData["Collar"]["_visible"][0] == this.charaData["Collar"]["_visible"][0] && this.charaOldData["Collar"]["_menu"] == this.charaData["Collar"]["_menu"] && String(this.charaOldData["Collar"]["_color0"][0]) == String(this.charaData["Collar"]["_color0"][0]) && String(this.charaOldData["Collar"]["_color1"][0]) == String(this.charaData["Collar"]["_color1"][0]) && String(this.charaOldData["Collar"]["_color2"][0]) == String(this.charaData["Collar"]["_color2"][0]) && this.charaOldData["Collar"]["_reversal"] == this.charaData["Collar"]["_reversal"] && this.charaOldData["Collar"]["_g0"] == this.charaData["Collar"]["_g0"])
               {
                  _loc129_ = false;
               }
               if(this.charaOldData["Necktie"]["_visible"][0] == this.charaData["Necktie"]["_visible"][0] && this.charaOldData["Necktie"]["_menu"] == this.charaData["Necktie"]["_menu"] && String(this.charaOldData["Necktie"]["_color0"][0]) == String(this.charaData["Necktie"]["_color0"][0]) && String(this.charaOldData["Necktie"]["_color1"][0]) == String(this.charaData["Necktie"]["_color1"][0]) && String(this.charaOldData["Necktie"]["_color2"][0]) == String(this.charaData["Necktie"]["_color2"][0]) && this.charaOldData["Necktie"]["_g0"] == this.charaData["Necktie"]["_g0"])
               {
                  _loc130_ = false;
               }
               if(this.charaOldData["Necklace"]["_visible"][0] == this.charaData["Necklace"]["_visible"][0] && this.charaOldData["Necklace"]["_menu"] == this.charaData["Necklace"]["_menu"] && String(this.charaOldData["Necklace"]["_color0"][0]) == String(this.charaData["Necklace"]["_color0"][0]) && String(this.charaOldData["Necklace"]["_color1"][0]) == String(this.charaData["Necklace"]["_color1"][0]) && String(this.charaOldData["Necklace"]["_color2"][0]) == String(this.charaData["Necklace"]["_color2"][0]))
               {
                  _loc131_ = false;
               }
               if(this.charaOldData["Gag"]["_visible"][0] == this.charaData["Gag"]["_visible"][0] && this.charaOldData["Gag"]["_menu"] == this.charaData["Gag"]["_menu"] && String(this.charaOldData["Gag"]["_color0"][0]) == String(this.charaData["Gag"]["_color0"][0]) && String(this.charaOldData["Gag"]["_color1"][0]) == String(this.charaData["Gag"]["_color1"][0]) && String(this.charaOldData["Gag"]["_color2"][0]) == String(this.charaData["Gag"]["_color2"][0]) && this.charaOldData["Gag"]["_reversal"] == this.charaData["Gag"]["_reversal"])
               {
                  _loc132_ = false;
               }
               if(this.charaOldData["Kutu0"]["_visible"][0] == this.charaData["Kutu0"]["_visible"][0] && this.charaOldData["Kutu0"]["_menu"] == this.charaData["Kutu0"]["_menu"] && String(this.charaOldData["Kutu0"]["_color0"][0]) == String(this.charaData["Kutu0"]["_color0"][0]) && String(this.charaOldData["Kutu0"]["_color1"][0]) == String(this.charaData["Kutu0"]["_color1"][0]) && String(this.charaOldData["Kutu0"]["_color2"][0]) == String(this.charaData["Kutu0"]["_color2"][0]) && this.charaOldData["KutuLong0"]["_menu"] == this.charaData["KutuLong0"]["_menu"] && String(this.charaOldData["KutuLong0"]["_color0"][0]) == String(this.charaData["KutuLong0"]["_color0"][0]) && String(this.charaOldData["KutuLong0"]["_color1"][0]) == String(this.charaData["KutuLong0"]["_color1"][0]) && String(this.charaOldData["KutuLong0"]["_color2"][0]) == String(this.charaData["KutuLong0"]["_color2"][0]))
               {
                  _loc133_ = false;
               }
               if(this.charaOldData["Kutu1"]["_visible"][0] == this.charaData["Kutu1"]["_visible"][0] && this.charaOldData["Kutu1"]["_menu"] == this.charaData["Kutu1"]["_menu"] && String(this.charaOldData["Kutu1"]["_color0"][0]) == String(this.charaData["Kutu1"]["_color0"][0]) && String(this.charaOldData["Kutu1"]["_color1"][0]) == String(this.charaData["Kutu1"]["_color1"][0]) && String(this.charaOldData["Kutu1"]["_color2"][0]) == String(this.charaData["Kutu1"]["_color2"][0]) && this.charaOldData["KutuLong1"]["_menu"] == this.charaData["KutuLong1"]["_menu"] && String(this.charaOldData["KutuLong1"]["_color0"][0]) == String(this.charaData["KutuLong1"]["_color0"][0]) && String(this.charaOldData["KutuLong1"]["_color1"][0]) == String(this.charaData["KutuLong1"]["_color1"][0]) && String(this.charaOldData["KutuLong1"]["_color2"][0]) == String(this.charaData["KutuLong1"]["_color2"][0]))
               {
                  _loc134_ = false;
               }
               if(this.charaOldData["LegBand0"]["_visible"][0] == this.charaData["LegBand0"]["_visible"][0] && this.charaOldData["LegBand0"]["_menu"] == this.charaData["LegBand0"]["_menu"] && String(this.charaOldData["LegBand0"]["_color0"][0]) == String(this.charaData["LegBand0"]["_color0"][0]) && String(this.charaOldData["LegBand0"]["_color1"][0]) == String(this.charaData["LegBand0"]["_color1"][0]) && String(this.charaOldData["LegBand0"]["_color2"][0]) == String(this.charaData["LegBand0"]["_color2"][0]))
               {
                  _loc135_ = false;
               }
               if(this.charaOldData["LegBand1"]["_visible"][0] == this.charaData["LegBand1"]["_visible"][0] && this.charaOldData["LegBand1"]["_menu"] == this.charaData["LegBand1"]["_menu"] && String(this.charaOldData["LegBand1"]["_color0"][0]) == String(this.charaData["LegBand1"]["_color0"][0]) && String(this.charaOldData["LegBand1"]["_color1"][0]) == String(this.charaData["LegBand1"]["_color1"][0]) && String(this.charaOldData["LegBand1"]["_color2"][0]) == String(this.charaData["LegBand1"]["_color2"][0]))
               {
                  _loc136_ = false;
               }
               if(this.charaOldData["Wristband0"]["_visible"][0] == this.charaData["Wristband0"]["_visible"][0] && this.charaOldData["Wristband0"]["_menu"] == this.charaData["Wristband0"]["_menu"] && String(this.charaOldData["Wristband0"]["_color0"][0]) == String(this.charaData["Wristband0"]["_color0"][0]) && String(this.charaOldData["Wristband0"]["_color1"][0]) == String(this.charaData["Wristband0"]["_color1"][0]) && String(this.charaOldData["Wristband0"]["_color2"][0]) == String(this.charaData["Wristband0"]["_color2"][0]))
               {
                  _loc137_ = false;
               }
               if(this.charaOldData["Wristband1"]["_visible"][0] == this.charaData["Wristband1"]["_visible"][0] && this.charaOldData["Wristband1"]["_menu"] == this.charaData["Wristband1"]["_menu"] && String(this.charaOldData["Wristband1"]["_color0"][0]) == String(this.charaData["Wristband1"]["_color0"][0]) && String(this.charaOldData["Wristband1"]["_color1"][0]) == String(this.charaData["Wristband1"]["_color1"][0]) && String(this.charaOldData["Wristband1"]["_color2"][0]) == String(this.charaData["Wristband1"]["_color2"][0]))
               {
                  _loc138_ = false;
               }
               if(this.charaOldData["Glove0"]["_visible"][0] == this.charaData["Glove0"]["_visible"][0] && this.charaOldData["Glove0"]["_menu"] == this.charaData["Glove0"]["_menu"] && String(this.charaOldData["Glove0"]["_color0"][0]) == String(this.charaData["Glove0"]["_color0"][0]) && String(this.charaOldData["Glove0"]["_color1"][0]) == String(this.charaData["Glove0"]["_color1"][0]) && String(this.charaOldData["Glove0"]["_color2"][0]) == String(this.charaData["Glove0"]["_color2"][0]) && this.charaOldData["GloveLength0"]["_menu"] == this.charaData["GloveLength0"]["_menu"])
               {
                  _loc139_ = false;
               }
               if(this.charaOldData["Glove1"]["_visible"][0] == this.charaData["Glove1"]["_visible"][0] && this.charaOldData["Glove1"]["_menu"] == this.charaData["Glove1"]["_menu"] && String(this.charaOldData["Glove1"]["_color0"][0]) == String(this.charaData["Glove1"]["_color0"][0]) && String(this.charaOldData["Glove1"]["_color1"][0]) == String(this.charaData["Glove1"]["_color1"][0]) && String(this.charaOldData["Glove1"]["_color2"][0]) == String(this.charaData["Glove1"]["_color2"][0]) && this.charaOldData["GloveLength1"]["_menu"] == this.charaData["GloveLength1"]["_menu"])
               {
                  _loc140_ = false;
               }
               if(this.charaOldData["Bracelet0"]["_visible"][0] == this.charaData["Bracelet0"]["_visible"][0] && this.charaOldData["Bracelet0"]["_menu"] == this.charaData["Bracelet0"]["_menu"] && String(this.charaOldData["Bracelet0"]["_color0"][0]) == String(this.charaData["Bracelet0"]["_color0"][0]) && String(this.charaOldData["Bracelet0"]["_color1"][0]) == String(this.charaData["Bracelet0"]["_color1"][0]) && String(this.charaOldData["Bracelet0"]["_color2"][0]) == String(this.charaData["Bracelet0"]["_color2"][0]))
               {
                  _loc141_ = false;
               }
               if(this.charaOldData["Bracelet1"]["_visible"][0] == this.charaData["Bracelet1"]["_visible"][0] && this.charaOldData["Bracelet1"]["_menu"] == this.charaData["Bracelet1"]["_menu"] && String(this.charaOldData["Bracelet1"]["_color0"][0]) == String(this.charaData["Bracelet1"]["_color0"][0]) && String(this.charaOldData["Bracelet1"]["_color1"][0]) == String(this.charaData["Bracelet1"]["_color1"][0]) && String(this.charaOldData["Bracelet1"]["_color2"][0]) == String(this.charaData["Bracelet1"]["_color2"][0]))
               {
                  _loc142_ = false;
               }
               if(this.charaOldData["ArmBracelet0"]["_visible"][0] == this.charaData["ArmBracelet0"]["_visible"][0] && this.charaOldData["ArmBracelet0"]["_menu"] == this.charaData["ArmBracelet0"]["_menu"] && String(this.charaOldData["ArmBracelet0"]["_color0"][0]) == String(this.charaData["ArmBracelet0"]["_color0"][0]) && String(this.charaOldData["ArmBracelet0"]["_color1"][0]) == String(this.charaData["ArmBracelet0"]["_color1"][0]) && String(this.charaOldData["ArmBracelet0"]["_color2"][0]) == String(this.charaData["ArmBracelet0"]["_color2"][0]))
               {
                  _loc143_ = false;
               }
               if(this.charaOldData["ArmBracelet1"]["_visible"][0] == this.charaData["ArmBracelet1"]["_visible"][0] && this.charaOldData["ArmBracelet1"]["_menu"] == this.charaData["ArmBracelet1"]["_menu"] && String(this.charaOldData["ArmBracelet1"]["_color0"][0]) == String(this.charaData["ArmBracelet1"]["_color0"][0]) && String(this.charaOldData["ArmBracelet1"]["_color1"][0]) == String(this.charaData["ArmBracelet1"]["_color1"][0]) && String(this.charaOldData["ArmBracelet1"]["_color2"][0]) == String(this.charaData["ArmBracelet1"]["_color2"][0]))
               {
                  _loc144_ = false;
               }
               if(this.charaOldData["Armband0"]["_visible"][0] == this.charaData["Armband0"]["_visible"][0] && this.charaOldData["Armband0"]["_menu"] == this.charaData["Armband0"]["_menu"] && String(this.charaOldData["Armband0"]["_color0"][0]) == String(this.charaData["Armband0"]["_color0"][0]) && String(this.charaOldData["Armband0"]["_color1"][0]) == String(this.charaData["Armband0"]["_color1"][0]) && String(this.charaOldData["Armband0"]["_color2"][0]) == String(this.charaData["Armband0"]["_color2"][0]))
               {
                  _loc145_ = false;
               }
               if(this.charaOldData["Armband1"]["_visible"][0] == this.charaData["Armband1"]["_visible"][0] && this.charaOldData["Armband1"]["_menu"] == this.charaData["Armband1"]["_menu"] && String(this.charaOldData["Armband1"]["_color0"][0]) == String(this.charaData["Armband1"]["_color0"][0]) && String(this.charaOldData["Armband1"]["_color1"][0]) == String(this.charaData["Armband1"]["_color1"][0]) && String(this.charaOldData["Armband1"]["_color2"][0]) == String(this.charaData["Armband1"]["_color2"][0]))
               {
                  _loc146_ = false;
               }
               if(this.charaOldData["Elbowpad0"]["_visible"][0] == this.charaData["Elbowpad0"]["_visible"][0] && this.charaOldData["Elbowpad0"]["_menu"] == this.charaData["Elbowpad0"]["_menu"] && String(this.charaOldData["Elbowpad0"]["_color0"][0]) == String(this.charaData["Elbowpad0"]["_color0"][0]) && String(this.charaOldData["Elbowpad0"]["_color1"][0]) == String(this.charaData["Elbowpad0"]["_color1"][0]) && String(this.charaOldData["Elbowpad0"]["_color2"][0]) == String(this.charaData["Elbowpad0"]["_color2"][0]))
               {
                  _loc147_ = false;
               }
               if(this.charaOldData["Elbowpad1"]["_visible"][0] == this.charaData["Elbowpad1"]["_visible"][0] && this.charaOldData["Elbowpad1"]["_menu"] == this.charaData["Elbowpad1"]["_menu"] && String(this.charaOldData["Elbowpad1"]["_color0"][0]) == String(this.charaData["Elbowpad1"]["_color0"][0]) && String(this.charaOldData["Elbowpad1"]["_color1"][0]) == String(this.charaData["Elbowpad1"]["_color1"][0]) && String(this.charaOldData["Elbowpad1"]["_color2"][0]) == String(this.charaData["Elbowpad1"]["_color2"][0]))
               {
                  _loc148_ = false;
               }
               if(this.charaOldData["Headphone"]["_visible"][0] == this.charaData["Headphone"]["_visible"][0] && this.charaOldData["Headphone"]["_menu"] == this.charaData["Headphone"]["_menu"] && String(this.charaOldData["Headphone"]["_color0"][0]) == String(this.charaData["Headphone"]["_color0"][0]) && String(this.charaOldData["Headphone"]["_color1"][0]) == String(this.charaData["Headphone"]["_color1"][0]) && String(this.charaOldData["Headphone"]["_color2"][0]) == String(this.charaData["Headphone"]["_color2"][0]) && this.charaOldData["Headphone"]["_g0"] == this.charaData["Headphone"]["_g0"])
               {
                  _loc149_ = false;
               }
               if(this.charaOldData["Earring0"]["_visible"][0] == this.charaData["Earring0"]["_visible"][0] && this.charaOldData["Earring0"]["_menu"] == this.charaData["Earring0"]["_menu"] && String(this.charaOldData["Earring0"]["_color0"][0]) == String(this.charaData["Earring0"]["_color0"][0]) && String(this.charaOldData["Earring0"]["_color1"][0]) == String(this.charaData["Earring0"]["_color1"][0]) && String(this.charaOldData["Earring0"]["_color2"][0]) == String(this.charaData["Earring0"]["_color2"][0]))
               {
                  _loc150_ = false;
               }
               if(this.charaOldData["Earring1"]["_visible"][0] == this.charaData["Earring1"]["_visible"][0] && this.charaOldData["Earring1"]["_menu"] == this.charaData["Earring1"]["_menu"] && String(this.charaOldData["Earring1"]["_color0"][0]) == String(this.charaData["Earring1"]["_color0"][0]) && String(this.charaOldData["Earring1"]["_color1"][0]) == String(this.charaData["Earring1"]["_color1"][0]) && String(this.charaOldData["Earring1"]["_color2"][0]) == String(this.charaData["Earring1"]["_color2"][0]))
               {
                  _loc151_ = false;
               }
            }
            catch(myError:Error)
            {
            }
            if(param2 == "tab" || param2 == "meter" || param2 == "reset")
            {
               // MenuClass.charaData[param1] = this.clone(MenuClass.charaMotoData[MenuClass.systemData["SelectCharacter"]["_menu"]]);
               // Dress_data.DressCharaData[param1] = this.clone(Dress_data.DressCharaMotoData[MenuClass.systemData["SelectCharacter"]["_menu"]]);
            }
         }
         if(param3 != 3)
         {
            new SetLinkData(param1);
            new SetClass(param1,"SelectCharacter_visible","move");
         }
         if(this.charaData["SelectCharacter"]["_visible"][0] || param3 == 1 || param3 == 2 || param3 == 3)
         {
            if(!(MenuClass._nowHeaderName == "SystemOption" && param2 == "paste"))
            {
               if(_loc6_)
               {
                  new SetClass(param1,"Xmove","move");
               }
            }
            if(_loc7_)
            {
               new SetClass(param1,"Ymove",param2);
            }
            if(_loc8_)
            {
               new SetClass(param1,"Rmove",param2);
            }
            if(_loc9_)
            {
               new SetClass(param1,"Jump",param2);
            }
            if(_loc10_)
            {
               new SetClass(param1,"BodyYMove",param2);
            }
            if(_loc11_)
            {
               new SetClass(param1,"Head","move");
            }
            if(_loc12_)
            {
               new SetClass(param1,"BodyHeight","move");
            }
            if(_loc13_)
            {
               new SetClass(param1,"BodyWidth","move");
            }
            if(_loc14_)
            {
               new SetClass(param1,"ShoulderWidth","move");
            }
            if(_loc15_)
            {
               new SetClass(param1,"HipWidth","move");
            }
            if(_loc42_)
            {
               new SetClass(param1,"ContourWidth","move");
            }
            if(_loc43_)
            {
               new SetClass(param1,"ContourHeight","move");
            }
            if(_loc16_)
            {
               new SetClass(param1,"HeadScale","move");
            }
            if(_loc17_)
            {
               new Chara_Waist(param1);
               new SetClass(param1,"WaistAlpha","move");
            }
            if(_loc18_)
            {
               new SetClass(param1,"Heso","move");
            }
            if(_loc19_)
            {
               new SetClass(param1,"Breast","move");
            }
            if(_loc20_)
            {
               new SetClass(param1,"Ashi","move");
            }
            if(_loc21_)
            {
               new SetClass(param1,"LeftArm","move");
            }
            if(_loc22_)
            {
               new SetClass(param1,"Bura","move");
            }
            if(_loc23_)
            {
               new SetClass(param1,"Pantu","move");
            }
            if(_loc24_)
            {
               new SetClass(param1,"Nawa","move");
            }
            if(_loc25_)
            {
               new SetClass(param1,"NippleGLeft","move");
            }
            if(_loc26_)
            {
               new SetClass(param1,"NippleGLeftSize","move");
            }
            if(_loc27_)
            {
               new SetClass(param1,"NippleGRight","move");
            }
            if(_loc28_)
            {
               new SetClass(param1,"NippleGRightSize","move");
            }
            if(_loc29_)
            {
               new SetClass(param1,"Vibrator","move");
            }
            if(_loc30_)
            {
               new SetClass(param1,"SG","move");
            }
            if(_loc31_)
            {
               new SetClass(param1,"SGSize","move");
            }
            if(_loc32_)
            {
               new SetClass(param1,"Socks0","huku");
            }
            if(_loc33_)
            {
               new SetClass(param1,"Socks1","huku");
            }
            if(_loc34_)
            {
               new SetClass(param1,"Tights","move");
            }
            if(_loc35_)
            {
               new SetClass(param1,"NippleSize","move");
            }
            if(_loc36_)
            {
               new SetClass(param1,"NippleHeight","move");
            }
            if(_loc37_)
            {
               new SetClass(param1,"NippleWidth","move");
            }
            if(_loc38_)
            {
               new SetClass(param1,"Shadow","move");
            }
            if(_loc39_)
            {
               new SetClass(param1,"CharaDropShadow","move");
            }
            if(_loc40_)
            {
               new SetClass(param1,"CharaBlur","move");
            }
            if(_loc41_)
            {
               new SetClass(param1,"Contour","move");
            }
            if(_loc44_)
            {
               new SetClass(param1,"Ear","move");
            }
            if(_loc45_)
            {
               new SetClass(param1,"EarScale","move");
            }
            if(_loc46_)
            {
               new SetClass(param1,"EarRotation","move");
            }
            if(_loc47_)
            {
               new SetClass(param1,"EarX","move");
            }
            if(_loc48_)
            {
               new SetClass(param1,"EarY","move");
            }
            if(_loc49_)
            {
               new SetClass(param1,"Nose","move");
            }
            if(_loc50_)
            {
               new SetClass(param1,"NoseHeight","move");
            }
            if(_loc51_)
            {
               new SetClass(param1,"NoseScaleX","move");
            }
            if(_loc52_)
            {
               new SetClass(param1,"NoseScaleY","move");
            }
            if(_loc53_)
            {
               new SetClass(param1,"NoseShadow","move");
            }
            if(_loc54_)
            {
               new SetClass(param1,"NoseShadowAlpha","move");
            }
            if(_loc55_)
            {
               new SetClass(param1,"NoseShadowHeight","move");
            }
            if(_loc56_)
            {
               new SetClass(param1,"NoseShadowScaleX","move");
            }
            if(_loc57_)
            {
               new SetClass(param1,"NoseShadowScaleY","move");
            }
            if(_loc58_)
            {
               new SetClass(param1,"Body",param2);
            }
            if(_loc59_)
            {
               new SetClass(param1,"BodyPlus","move");
            }
            if(_loc60_)
            {
               new SetClass(param1,"BodyAlpha","move");
            }
            if(_loc62_)
            {
               new SetClass(param1,"NeckHeight","move");
            }
            if(_loc61_)
            {
               new SetClass(param1,"Hiyake","move");
            }
            if(_loc63_)
            {
               new SetClass(param1,"Nipple","move");
            }
            if(_loc64_)
            {
               new SetClass(param1,"Tin","move");
               if(_loc65_ && !this.charaData["Tama"]["_visible"][0])
               {
                  new SetClass(param1,"Tama","move");
               }
            }
            if(_loc65_ && !_loc64_)
            {
               new SetClass(param1,"Tama","move");
            }
            if(_loc66_)
            {
               new SetClass(param1,"TamaSize","move");
            }
            if(_loc67_)
            {
               this.charaData["s"]["_hidaCount"] = 1;
               new Chara_s(param1,"move");
            }
            if(_loc68_)
            {
               new Hair_Class(param1);
            }
            if(_loc69_)
            {
               new SetClass(param1,"Bangs","move");
            }
            if(_loc70_)
            {
               new SetClass(param1,"HairBack","move");
            }
            if(_loc71_)
            {
               new SetClass(param1,"SideBurnLeft","move");
            }
            if(_loc72_)
            {
               new SetClass(param1,"SideBurnRight","move");
            }
            if(_loc73_)
            {
               new SetClass(param1,"HairExPlus","move");
            }
            if(_loc74_)
            {
               new SetClass(param1,"FaceOption","move");
            }
            if(_loc75_)
            {
               new SetClass(param1,"UnderHair","move");
               new SetClass(param1,"UnderHairAlpha","move");
            }
            if(_loc76_)
            {
               new SetClass(param1,"Eyebrow",param2);
            }
            if(_loc77_)
            {
               new SetClass(param1,"EyebrowY",param2);
            }
            if(_loc78_)
            {
               new SetClass(param1,"EyeballLeft","move");
            }
            if(_loc79_)
            {
               new SetClass(param1,"EyeballRight","move");
            }
            if(_loc80_)
            {
               new SetClass(param1,"EyeballScale","move");
            }
            if(_loc81_)
            {
               new SetClass(param1,"EyeballLight","move");
            }
            if(_loc82_)
            {
               new SetClass(param1,"EyeballLightRotation","move");
            }
            if(_loc83_)
            {
               new SetClass(param1,"Eye","move");
            }
            if(_loc84_)
            {
               new SetClass(param1,"EyeY","move");
            }
            if(_loc85_)
            {
               new SetClass(param1,"EyeX","move");
            }
            if(_loc86_)
            {
               new SetClass(param1,"EyeScaleX","move");
            }
            if(_loc87_)
            {
               new SetClass(param1,"EyeRotation","move");
            }
            if(_loc88_)
            {
               new SetClass(param1,"Eyelib","move");
            }
            if(_loc89_)
            {
               new SetClass(param1,"Eyelash","move");
            }
            if(_loc90_)
            {
               new SetClass(param1,"Lowerlash","move");
            }
            if(_loc91_)
            {
               new SetClass(param1,"EmotionOption","move");
            }
            if(_loc92_)
            {
               new SetClass(param1,"EyeOption","move");
            }
            if(_loc93_)
            {
               new SetClass(param1,"Hukidashi","move");
            }
            if(_loc94_)
            {
               new SetClass(param1,"defoEye","move");
            }
            if(_loc95_)
            {
               new SetClass(param1,"defoEyeScale","move");
            }
            if(_loc96_)
            {
               new SetClass(param1,"defoEyeX","move");
            }
            if(_loc97_)
            {
               new SetClass(param1,"defoEyeY","move");
            }
            if(_loc98_)
            {
               new SetClass(param1,"Hoho","move");
            }
            if(_loc99_)
            {
               new SetClass(param1,"HeartPlus","move");
            }
            if(_loc100_)
            {
               new SetClass(param1,"HeartMinus","move");
            }
            if(_loc101_)
            {
               new SetClass(param1,"MouthHeight","move");
            }
            if(_loc103_)
            {
               new SetClass(param1,"EmotionMouth","move");
            }
            if(_loc104_)
            {
               new SetClass(param1,"EyeballXMove","move");
            }
            if(_loc105_)
            {
               new SetClass(param1,"EmotionEyebrowLeft",param2);
            }
            if(_loc106_)
            {
               new SetClass(param1,"EmotionEyebrowRight",param2);
            }
            if(_loc102_)
            {
               new SetClass(param1,"MouthY","move");
            }
            if(_loc107_)
            {
               new SetClass(param1,"Seihuku","move");
            }
            if(_loc108_)
            {
               new SetClass(param1,"Ysyatu","move");
            }
            if(_loc109_)
            {
               new SetClass(param1,"Tsyatu","move");
            }
            if(_loc110_)
            {
               new SetClass(param1,"Vest","move");
            }
            if(_loc111_)
            {
               new SetClass(param1,"Item0","huku");
            }
            if(_loc112_)
            {
               new SetClass(param1,"Item1","huku");
            }
            if(_loc113_)
            {
               new SetClass(param1,"Skirt",param2);
            }
            if(_loc114_)
            {
               new SetClass(param1,"Zubon",param2);
            }
            if(_loc115_)
            {
               new SetClass(param1,"ZubonAshi0","move");
            }
            if(_loc116_)
            {
               new SetClass(param1,"ZubonAshi1","move");
            }
            if(_loc117_)
            {
               new SetClass(param1,"Megane","move");
            }
            if(_loc118_)
            {
               new SetClass(param1,"Headband","move");
            }
            if(_loc119_)
            {
               new SetClass(param1,"Hat","move");
            }
            if(_loc120_)
            {
               new SetClass(param1,"MarkPlus","move");
            }
            if(_loc121_)
            {
               new SetClass(param1,"RibonPlus","move");
            }
            if(_loc123_)
            {
               new SetClass(param1,"BeltPlus","move");
            }
            if(_loc124_)
            {
               _loc4_ = 0;
               while(_loc4_ <= Main.hukusuuNum)
               {
                  if(this.charaData["CharaLoadPlus"]["_visible"][_loc4_] && this.charaData["CharaLoadAdd" + _loc4_]["_name"] != null)
                  {
                     new Tab_LoadURL2("load",_loc4_,param1);
                  }
                  else
                  {
                     this.charaData["CharaLoadPlus"]["_visible"][_loc4_] = false;
                     try
                     {
                        MenuClass.charaAdd[param1]["loadObj" + _loc4_].visible = false;
                     }
                     catch(e:Error)
                     {
                     }
                  }
                  _loc4_++;
               }
            }
            if(_loc125_)
            {
               new SetClass(param1,"Mimi","move");
            }
            if(_loc126_)
            {
               new SetClass(param1,"Hane","move");
            }
            if(_loc127_)
            {
               new SetClass(param1,"Tail","move");
            }
            if(_loc128_)
            {
               new SetClass(param1,"Horn","move");
            }
            if(_loc129_)
            {
               new SetClass(param1,"Collar","move");
            }
            if(_loc130_)
            {
               new SetClass(param1,"Necktie","move");
            }
            if(_loc131_)
            {
               new SetClass(param1,"Necklace","move");
            }
            if(_loc132_)
            {
               new SetClass(param1,"Gag","move");
            }
            if(_loc133_)
            {
               new SetClass(param1,"Kutu0","huku");
            }
            if(_loc134_)
            {
               new SetClass(param1,"Kutu1","huku");
            }
            if(_loc135_)
            {
               new SetClass(param1,"LegBand0","huku");
            }
            if(_loc136_)
            {
               new SetClass(param1,"LegBand1","huku");
            }
            if(_loc137_)
            {
               new SetClass(param1,"Wristband0","huku");
            }
            if(_loc138_)
            {
               new SetClass(param1,"Wristband1","huku");
            }
            if(_loc139_)
            {
               new SetClass(param1,"Glove0","huku");
            }
            if(_loc140_)
            {
               new SetClass(param1,"Glove1","huku");
            }
            if(_loc141_)
            {
               new SetClass(param1,"Bracelet0","huku");
            }
            if(_loc142_)
            {
               new SetClass(param1,"Bracelet1","huku");
            }
            if(_loc143_)
            {
               new SetClass(param1,"ArmBracelet0","huku");
            }
            if(_loc144_)
            {
               new SetClass(param1,"ArmBracelet1","huku");
            }
            if(_loc145_)
            {
               new SetClass(param1,"Armband0","huku");
            }
            if(_loc146_)
            {
               new SetClass(param1,"Armband1","huku");
            }
            if(_loc147_)
            {
               new SetClass(param1,"Elbowpad0","huku");
            }
            if(_loc148_)
            {
               new SetClass(param1,"Elbowpad1","huku");
            }
            if(_loc149_)
            {
               new SetClass(param1,"Headphone","huku");
            }
            if(_loc150_)
            {
               new SetClass(param1,"Earring0","huku");
            }
            if(_loc151_)
            {
               new SetClass(param1,"Earring1","huku");
            }
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
