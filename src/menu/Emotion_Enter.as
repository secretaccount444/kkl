package menu
{
   import parameter.Emotion_data;
   
   public class Emotion_Enter
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Emotion_Enter(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(this.charaData["EmotionManualAuto"]["_flag"] == "play" || this.charaData["EmotionManualAuto"]["_flag"] == "testPlay")
         {
            _loc2_ = this.charaData["EmotionManualAuto"]["_count"];
            _loc3_ = this.charaData["EyeM"]["_menu"];
            _loc4_ = this.charaData["EyeM2"]["_menu"];
            _loc5_ = this.charaData["EyeM3"]["_menu"];
            _loc6_ = this.charaData["EyebrowM"]["_menu"];
            _loc7_ = this.charaData["EyebrowM2"]["_menu"];
            _loc8_ = this.charaData["EyebrowM3"]["_menu"];
            _loc9_ = this.charaData["MouthM"]["_menu"];
            _loc10_ = this.charaData["MouthM2"]["_menu"];
            _loc11_ = this.charaData["MouthM3"]["_menu"];
            try
            {
               if(Emotion_data.EmotionEyeData[_loc4_][_loc2_] == 1)
               {
                  if(_loc2_ == 1)
                  {
                     this.FcEmotion(Emotion_data.EmotionEyeTopData[_loc3_][0][0],Emotion_data.EmotionEyeTopData[_loc3_][2][0],"EmotionEyeLeft","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeTopData[_loc3_][0][1],Emotion_data.EmotionEyeTopData[_loc3_][2][1],"EmotionEyeRight","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeTopData[_loc3_][0][2],Emotion_data.EmotionEyeTopData[_loc3_][2][2],"EyeballXMove","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeTopData[_loc3_][0][4],Emotion_data.EmotionEyeTopData[_loc3_][2][4],"EyeballYMove","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeTopData[_loc3_][0][5],Emotion_data.EmotionEyeTopData[_loc3_][2][5],"EyeballWidth","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeTopData[_loc3_][0][6],Emotion_data.EmotionEyeTopData[_loc3_][2][6],"EyebrowMoveLeft","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeTopData[_loc3_][0][7],Emotion_data.EmotionEyeTopData[_loc3_][2][7],"EyebrowMoveRight","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyebrowTopData[_loc6_][0][1],Emotion_data.EmotionEyebrowTopData[_loc6_][2][1],"EyebrowRotationLeft","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyebrowTopData[_loc6_][0][3],Emotion_data.EmotionEyebrowTopData[_loc6_][2][3],"EyebrowRotationRight","_meter");
                     this.FcEmotion(Emotion_data.EmotionMouthTopData[_loc9_][0][1],Emotion_data.EmotionMouthTopData[_loc9_][2][1],"MouthWidth","_meter");
                     this.FcEmotion(Emotion_data.EmotionMouthTopData[_loc9_][0][2],Emotion_data.EmotionMouthTopData[_loc9_][2][2],"MouthHeight","_meter");
                     this.FcEmotion(Emotion_data.EmotionMouthTopData[_loc9_][0][3],Emotion_data.EmotionMouthTopData[_loc9_][2][3],"MouthYMove","_meter");
                  }
                  else if(_loc2_ == Emotion_data.EmotionEyeData[_loc4_].length - 2)
                  {
                     this.FcEmotion(Emotion_data.EmotionEyeLastData[_loc5_][0][0],Emotion_data.EmotionEyeLastData[_loc5_][2][0],"EmotionEyeLeft","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeLastData[_loc5_][0][1],Emotion_data.EmotionEyeLastData[_loc5_][2][1],"EmotionEyeRight","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeLastData[_loc5_][0][2],Emotion_data.EmotionEyeLastData[_loc5_][2][2],"EyeballXMove","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeLastData[_loc5_][0][4],Emotion_data.EmotionEyeLastData[_loc5_][2][4],"EyeballYMove","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeLastData[_loc5_][0][5],Emotion_data.EmotionEyeLastData[_loc5_][2][5],"EyeballWidth","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeLastData[_loc5_][0][6],Emotion_data.EmotionEyeLastData[_loc5_][2][6],"EyebrowMoveLeft","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeLastData[_loc5_][0][7],Emotion_data.EmotionEyeLastData[_loc5_][2][7],"EyebrowMoveRight","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyebrowLastData[_loc8_][0][1],Emotion_data.EmotionEyebrowLastData[_loc8_][2][1],"EyebrowRotationLeft","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyebrowLastData[_loc8_][0][3],Emotion_data.EmotionEyebrowLastData[_loc8_][2][3],"EyebrowRotationRight","_meter");
                     this.FcEmotion(Emotion_data.EmotionMouthLastData[_loc11_][0][1],Emotion_data.EmotionMouthLastData[_loc11_][2][1],"MouthWidth","_meter");
                     this.FcEmotion(Emotion_data.EmotionMouthLastData[_loc11_][0][2],Emotion_data.EmotionMouthLastData[_loc11_][2][2],"MouthHeight","_meter");
                     this.FcEmotion(Emotion_data.EmotionMouthLastData[_loc11_][0][3],Emotion_data.EmotionMouthLastData[_loc11_][2][3],"MouthYMove","_meter");
                  }
                  else
                  {
                     this.FcEmotion(Emotion_data.EmotionEyeData[_loc4_][_loc2_ - 1][0],Emotion_data.EmotionEyeData[_loc4_][_loc2_ + 1][0],"EmotionEyeLeft","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeData[_loc4_][_loc2_ - 1][1],Emotion_data.EmotionEyeData[_loc4_][_loc2_ + 1][1],"EmotionEyeRight","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeData[_loc4_][_loc2_ - 1][2],Emotion_data.EmotionEyeData[_loc4_][_loc2_ + 1][2],"EyeballXMove","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeData[_loc4_][_loc2_ - 1][4],Emotion_data.EmotionEyeData[_loc4_][_loc2_ + 1][4],"EyeballYMove","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeData[_loc4_][_loc2_ - 1][5],Emotion_data.EmotionEyeData[_loc4_][_loc2_ + 1][5],"EyeballWidth","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeData[_loc4_][_loc2_ - 1][6],Emotion_data.EmotionEyeData[_loc4_][_loc2_ + 1][6],"EyebrowMoveLeft","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyeData[_loc4_][_loc2_ - 1][7],Emotion_data.EmotionEyeData[_loc4_][_loc2_ + 1][7],"EyebrowMoveRight","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyebrowData[_loc7_][_loc2_ - 1][1],Emotion_data.EmotionEyebrowData[_loc7_][_loc2_ + 1][1],"EyebrowRotationLeft","_meter");
                     this.FcEmotion(Emotion_data.EmotionEyebrowData[_loc7_][_loc2_ - 1][3],Emotion_data.EmotionEyebrowData[_loc7_][_loc2_ + 1][3],"EyebrowRotationRight","_meter");
                     this.FcEmotion(Emotion_data.EmotionMouthData[_loc10_][_loc2_ - 1][1],Emotion_data.EmotionMouthData[_loc10_][_loc2_ + 1][1],"MouthWidth","_meter");
                     this.FcEmotion(Emotion_data.EmotionMouthData[_loc10_][_loc2_ - 1][2],Emotion_data.EmotionMouthData[_loc10_][_loc2_ + 1][2],"MouthHeight","_meter");
                     this.FcEmotion(Emotion_data.EmotionMouthData[_loc10_][_loc2_ - 1][3],Emotion_data.EmotionMouthData[_loc10_][_loc2_ + 1][3],"MouthYMove","_meter");
                  }
                  this.FcEmotion2();
               }
               else if(Emotion_data.EmotionEyeData[_loc4_][_loc2_] != 0)
               {
                  if(_loc2_ == 0 || _loc2_ == 2)
                  {
                     this.charaData["EmotionEyeLeft"]["_meter"] = Emotion_data.EmotionEyeTopData[_loc3_][_loc2_][0];
                     this.charaData["EmotionEyeRight"]["_meter"] = Emotion_data.EmotionEyeTopData[_loc3_][_loc2_][1];
                     this.charaData["EyeballXMove"]["_meter"] = Emotion_data.EmotionEyeTopData[_loc3_][_loc2_][2];
                     this.charaData["EyeballXMove"]["_reversal"] = Emotion_data.EmotionEyeTopData[_loc3_][_loc2_][3];
                     this.charaData["EyeballYMove"]["_meter"] = Emotion_data.EmotionEyeTopData[_loc3_][_loc2_][4];
                     this.charaData["EyeballWidth"]["_meter"] = Emotion_data.EmotionEyeTopData[_loc3_][_loc2_][5];
                     this.charaData["EyebrowMoveLeft"]["_meter"] = Emotion_data.EmotionEyeTopData[_loc3_][_loc2_][6];
                     this.charaData["EyebrowMoveRight"]["_meter"] = Emotion_data.EmotionEyeTopData[_loc3_][_loc2_][7];
                     this.charaData["EmotionEyebrowLeft"]["_menu"] = Emotion_data.EmotionEyebrowTopData[_loc6_][_loc2_][0];
                     this.charaData["EyebrowRotationLeft"]["_meter"] = Emotion_data.EmotionEyebrowTopData[_loc6_][_loc2_][1];
                     this.charaData["EmotionEyebrowRight"]["_menu"] = Emotion_data.EmotionEyebrowTopData[_loc6_][_loc2_][2];
                     this.charaData["EyebrowRotationRight"]["_meter"] = Emotion_data.EmotionEyebrowTopData[_loc6_][_loc2_][3];
                     this.charaData["EmotionMouth"]["_menu"] = Emotion_data.EmotionMouthTopData[_loc9_][_loc2_][0];
                     this.charaData["MouthWidth"]["_meter"] = Emotion_data.EmotionMouthTopData[_loc9_][_loc2_][1];
                     this.charaData["MouthHeight"]["_meter"] = Emotion_data.EmotionMouthTopData[_loc9_][_loc2_][2];
                     this.charaData["MouthYMove"]["_meter"] = Emotion_data.EmotionMouthTopData[_loc9_][_loc2_][3];
                  }
                  else if(_loc2_ == Emotion_data.EmotionEyeData[_loc4_].length - 1)
                  {
                     this.charaData["EmotionEyeLeft"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][2][0];
                     this.charaData["EmotionEyeRight"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][2][1];
                     this.charaData["EyeballXMove"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][2][2];
                     this.charaData["EyeballXMove"]["_reversal"] = Emotion_data.EmotionEyeLastData[_loc5_][2][3];
                     this.charaData["EyeballYMove"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][2][4];
                     this.charaData["EyeballWidth"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][2][5];
                     this.charaData["EyebrowMoveLeft"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][2][6];
                     this.charaData["EyebrowMoveRight"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][2][7];
                     this.charaData["EmotionEyebrowLeft"]["_menu"] = Emotion_data.EmotionEyebrowLastData[_loc8_][2][0];
                     this.charaData["EyebrowRotationLeft"]["_meter"] = Emotion_data.EmotionEyebrowLastData[_loc8_][2][1];
                     this.charaData["EmotionEyebrowRight"]["_menu"] = Emotion_data.EmotionEyebrowLastData[_loc8_][2][2];
                     this.charaData["EyebrowRotationRight"]["_meter"] = Emotion_data.EmotionEyebrowLastData[_loc8_][2][3];
                     this.charaData["EmotionMouth"]["_menu"] = Emotion_data.EmotionMouthLastData[_loc11_][2][0];
                     this.charaData["MouthWidth"]["_meter"] = Emotion_data.EmotionMouthLastData[_loc11_][2][1];
                     this.charaData["MouthHeight"]["_meter"] = Emotion_data.EmotionMouthLastData[_loc11_][2][2];
                     this.charaData["MouthYMove"]["_meter"] = Emotion_data.EmotionMouthLastData[_loc11_][2][3];
                  }
                  else if(_loc2_ == Emotion_data.EmotionEyeData[_loc4_].length - 3)
                  {
                     this.charaData["EmotionEyeLeft"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][0][0];
                     this.charaData["EmotionEyeRight"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][0][1];
                     this.charaData["EyeballXMove"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][0][2];
                     this.charaData["EyeballXMove"]["_reversal"] = Emotion_data.EmotionEyeLastData[_loc5_][0][3];
                     this.charaData["EyeballYMove"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][0][4];
                     this.charaData["EyeballWidth"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][0][5];
                     this.charaData["EyebrowMoveLeft"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][0][6];
                     this.charaData["EyebrowMoveRight"]["_meter"] = Emotion_data.EmotionEyeLastData[_loc5_][0][7];
                     this.charaData["EmotionEyebrowLeft"]["_menu"] = Emotion_data.EmotionEyebrowLastData[_loc8_][0][0];
                     this.charaData["EyebrowRotationLeft"]["_meter"] = Emotion_data.EmotionEyebrowLastData[_loc8_][0][1];
                     this.charaData["EmotionEyebrowRight"]["_menu"] = Emotion_data.EmotionEyebrowLastData[_loc8_][0][2];
                     this.charaData["EyebrowRotationRight"]["_meter"] = Emotion_data.EmotionEyebrowLastData[_loc8_][0][3];
                     this.charaData["EmotionMouth"]["_menu"] = Emotion_data.EmotionMouthLastData[_loc11_][0][0];
                     this.charaData["MouthWidth"]["_meter"] = Emotion_data.EmotionMouthLastData[_loc11_][0][1];
                     this.charaData["MouthHeight"]["_meter"] = Emotion_data.EmotionMouthLastData[_loc11_][0][2];
                     this.charaData["MouthYMove"]["_meter"] = Emotion_data.EmotionMouthLastData[_loc11_][0][3];
                  }
                  else
                  {
                     this.charaData["EmotionEyeLeft"]["_meter"] = Emotion_data.EmotionEyeData[_loc4_][_loc2_][0];
                     this.charaData["EmotionEyeRight"]["_meter"] = Emotion_data.EmotionEyeData[_loc4_][_loc2_][1];
                     this.charaData["EyeballXMove"]["_meter"] = Emotion_data.EmotionEyeData[_loc4_][_loc2_][2];
                     this.charaData["EyeballXMove"]["_reversal"] = Emotion_data.EmotionEyeData[_loc4_][_loc2_][3];
                     this.charaData["EyeballYMove"]["_meter"] = Emotion_data.EmotionEyeData[_loc4_][_loc2_][4];
                     this.charaData["EyeballWidth"]["_meter"] = Emotion_data.EmotionEyeData[_loc4_][_loc2_][5];
                     this.charaData["EyebrowMoveLeft"]["_meter"] = Emotion_data.EmotionEyeData[_loc4_][_loc2_][6];
                     this.charaData["EyebrowMoveRight"]["_meter"] = Emotion_data.EmotionEyeData[_loc4_][_loc2_][7];
                     this.charaData["EmotionEyebrowLeft"]["_menu"] = Emotion_data.EmotionEyebrowData[_loc7_][_loc2_][0];
                     this.charaData["EyebrowRotationLeft"]["_meter"] = Emotion_data.EmotionEyebrowData[_loc7_][_loc2_][1];
                     this.charaData["EmotionEyebrowRight"]["_menu"] = Emotion_data.EmotionEyebrowData[_loc7_][_loc2_][2];
                     this.charaData["EyebrowRotationRight"]["_meter"] = Emotion_data.EmotionEyebrowData[_loc7_][_loc2_][3];
                     this.charaData["EmotionMouth"]["_menu"] = Emotion_data.EmotionMouthData[_loc10_][_loc2_][0];
                     this.charaData["MouthWidth"]["_meter"] = Emotion_data.EmotionMouthData[_loc10_][_loc2_][1];
                     this.charaData["MouthHeight"]["_meter"] = Emotion_data.EmotionMouthData[_loc10_][_loc2_][2];
                     this.charaData["MouthYMove"]["_meter"] = Emotion_data.EmotionMouthData[_loc10_][_loc2_][3];
                  }
                  this.FcEmotion2();
               }
               if(_loc2_ == Emotion_data.EmotionEyeData[_loc4_].length - 1)
               {
                  this.charaData["EmotionManualAuto"]["_flag"] = "stop";
               }
               else if(this.charaData["EmotionManualAuto"]["_flag"] == "play")
               {
                  ++this.charaData["EmotionManualAuto"]["_count"];
                  if(MenuClass._nowHeaderName == "Emotion")
                  {
                     new Tab_SetClass();
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
      }
      
      private function FcEmotion(param1:int, param2:int, param3:String, param4:String) : void
      {
         if(param1 > param2)
         {
            this.charaData[param3][param4] = param2 + Math.floor((param1 - param2) / 2);
         }
         else
         {
            this.charaData[param3][param4] = param1 + Math.floor((param2 - param1) / 2);
         }
      }
      
      private function FcEmotion2() : void
      {
         new Emotion_Eye(this.charaNum);
         new Emotion_Eyebrow(this.charaNum);
         if(this.charaData["EmotionMouth"]["_menu"] + 1 != this.charaAdd.head.mouth.currentFrame)
         {
            this.charaAdd.head.mouth.gotoAndStop(this.charaData["EmotionMouth"]["_menu"] + 1);
         }
         try
         {
            this.charaAdd.head.mouth.shita_mc.gotoAndPlay(2);
         }
         catch(myError:Error)
         {
         }
         if(this.charaData["MouthSen"]["_menu"] + 1 != this.charaAdd.head.mouth.sen0.currentFrame)
         {
            this.charaAdd.head.mouth.sen0.gotoAndStop(this.charaData["MouthSen"]["_menu"] + 1);
         }
         try
         {
            if(this.charaData["MouthSen"]["_menu"] + 1 != this.charaAdd.head.mouth.shita_mc.shita0.currentFrame)
            {
               this.charaAdd.head.mouth.shita_mc.shita0.gotoAndStop(this.charaData["MouthSen"]["_menu"] + 1);
               this.charaAdd.head.mouth.shita_mc.shita1.gotoAndStop(this.charaData["MouthSen"]["_menu"] + 1);
            }
         }
         catch(myError:Error)
         {
         }
         new SetClass(this.charaNum,"MouthHeight","tab");
      }
   }
}
