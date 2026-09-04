package menu
{
   import parameter.Dress_data;
   import parameter.Emotion_data;
   import system.MeterPersent;
   
   public class Emotion_Eye
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Emotion_Eye(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Array = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:Number = NaN;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         new MeterPersent(0,Emotion_data.EyeData.length - 1,"EmotionEyeLeft",param1);
         var _loc4_:int = Math.floor(MeterPersent.MeterPersentNum);
         new MeterPersent(0,Emotion_data.EyeData.length - 1,"EmotionEyeRight",param1);
         _loc3_ = new Array(_loc4_,Math.floor(MeterPersent.MeterPersentNum));
         _loc2_ = 0;
         while(_loc2_ <= 1)
         {
            _loc5_ = "";
            if(_loc2_ == 1)
            {
               _loc5_ = "Right";
            }
            if(this.charaData["EyeOption"]["_visible"][1])
            {
               this.charaAdd.head["eye" + _loc2_].namida.y = Dress_data.EyeData[this.charaData["Eye"]["_menu"]]["namida" + Emotion_data.EyeData[_loc3_[_loc2_]][0]] - 1.2;
            }
            if(this.charaData["EyeballXMove"]["_reversal"])
            {
               if(MenuClass.systemData["LinkEyeballXMove"]["_flag"] || this.charaData["EmotionManualAuto"]["_check"])
               {
                  this.charaData["EyeballXMoveRight"]["_meter"] = this.charaData["EyeballXMove"]["_meter"];
               }
            }
            else if(MenuClass.systemData["LinkEyeballXMove"]["_flag"] || this.charaData["EmotionManualAuto"]["_check"])
            {
               this.charaData["EyeballXMoveRight"]["_meter"] = this.charaData["EyeballXMove"]["_meter"];
            }
            if(Emotion_data.EyeData[_loc3_[_loc2_]][0] == 1)
            {
               this.charaAdd.head["eye" + _loc2_].eye0.visible = true;
               this.charaAdd.head["eye" + _loc2_].eye1.visible = false;
               this.charaAdd.head["eye" + _loc2_].eye2.visible = false;
               if(this.charaData["Eyelib"]["_visible"][0])
               {
                  this.charaAdd.head["eye" + _loc2_].Eyelib0.visible = true;
                  this.charaAdd.head["eye" + _loc2_].Eyelib1.visible = false;
                  this.charaAdd.head["eye" + _loc2_].Eyelib2.visible = false;
               }
               if(MenuClass.systemData["LinkEyeballWidth"]["_flag"] || this.charaData["EmotionManualAuto"]["_check"])
               {
                  this.charaData["EyeballWidthRight"]["_meter"] = this.charaData["EyeballWidth"]["_meter"];
               }
               _loc6_ = 6 - this.charaData["EyeballWidth" + _loc5_]["_meter"] / 20;
               new MeterPersent(0.5,0,"EyeballWidth" + _loc5_,param1);
               _loc7_ = MeterPersent.MeterPersentNum;
               new MeterPersent(-0.5,0.5,"EyeballScale",param1);
               _loc8_ = MeterPersent.MeterPersentNum;
               new MeterPersent(-0.5,0.5,"EyeballScaleY",param1);
               _loc9_ = MeterPersent.MeterPersentNum;
               if(this.charaData["EyeballXMove"]["_reversal"])
               {
                  if(_loc2_ == 0)
                  {
                     new MeterPersent(1.5,-1.5,"EyeballXMove",param1);
                  }
                  else
                  {
                     new MeterPersent(1.5,-1.5,"EyeballXMoveRight",param1);
                  }
               }
               else if(_loc2_ == 0)
               {
                  new MeterPersent(0,1.5,"EyeballXMove",param1);
               }
               else
               {
                  new MeterPersent(0,1.5,"EyeballXMoveRight",param1);
               }
               _loc10_ = MeterPersent.MeterPersentNum;
               if(MenuClass.systemData["LinkEyeballYMove"]["_flag"] || this.charaData["EmotionManualAuto"]["_check"])
               {
                  this.charaData["EyeballYMoveRight"]["_meter"] = this.charaData["EyeballYMove"]["_meter"];
               }
               new MeterPersent(2,-2.5,"EyeballYMove" + _loc5_,param1);
               _loc11_ = MeterPersent.MeterPersentNum;
               _loc12_ = new Array();
               if(this.charaData["EyeballXMove"]["_reversal"])
               {
                  _loc12_[0] = -1;
                  _loc12_[1] = 1;
               }
               else
               {
                  _loc12_[0] = 1;
                  _loc12_[1] = 1;
               }
               _loc13_ = 0.3;
               new MeterPersent(-10,10,"EyeballX",param1);
               _loc14_ = MeterPersent.MeterPersentNum;
               new MeterPersent(-20,20,"EyeballY",param1);
               _loc15_ = MeterPersent.MeterPersentNum;
               this.charaAdd.head["eye" + _loc2_].eye0.scaleY = Emotion_data.EyeData[_loc3_[_loc2_]][2];
               if(this.charaData["Eyelib"]["_visible"][0])
               {
                  this.charaAdd.head["eye" + _loc2_].Eyelib0.scaleY = Emotion_data.EyeData[_loc3_[_loc2_]][2];
                  new MeterPersent(8.9,4.9,"EyeRotation",param1);
                  _loc16_ = MeterPersent.MeterPersentNum;
                  if(_loc2_ == 0)
                  {
                     new MeterPersent(-2.5,0.5,"EmotionEyeLeft",param1);
                  }
                  else
                  {
                     new MeterPersent(-2.5,0.5,"EmotionEyeRight",param1);
                  }
                  this.charaAdd.head["eye" + _loc2_].Eyelib0.y = _loc16_ + MeterPersent.MeterPersentNum;
               }
               this.charaAdd.head["eye" + _loc2_].eyeMask.visible = true;
               this.charaAdd.head["eye" + _loc2_].eyeWhite.visible = true;
               this.charaAdd.head["eye" + _loc2_].eyeball.visible = true;
               this.charaAdd.head["eye" + _loc2_].eyeMask.scaleY = Emotion_data.EyeData[_loc3_[_loc2_]][2];
               this.charaAdd.head["eye" + _loc2_].eyeWhite.scaleY = Emotion_data.EyeData[_loc3_[_loc2_]][2];
               this.charaAdd.head["eye" + _loc2_].eyeball.scaleX = 1 - _loc7_ + _loc8_;
               this.charaAdd.head["eye" + _loc2_].eyeball.scaleY = 1 - _loc7_ + _loc9_;
               this.charaAdd.head["eye" + _loc2_].eyeball.x = SizeDataClass.bodyDefault_y["defoEyeballX"] + _loc10_ * _loc12_[_loc2_] * (1 + _loc6_ * _loc13_) + _loc14_;
               this.charaAdd.head["eye" + _loc2_].eyeball.y = SizeDataClass.bodyDefault_y["defoEyeballY"] + Emotion_data.EyeData[_loc3_[_loc2_]][1] + _loc11_ * (1 + _loc6_ * _loc13_) + _loc15_;

               try {
                  if (this.charaAdd.head["eye" + _loc2_].underMarkAttachPoint) {
                     this.charaAdd.head["eye" + _loc2_].underMarkAttachPoint.visible = true;
                     this.charaAdd.head["eye" + _loc2_].underMarkAttachPoint.scaleY = Emotion_data.EyeData[_loc3_[_loc2_]][2];
                  }
               } catch (err) {
                  trace(err.getStackTrace());
               }

               try {
                  if (this.charaAdd.head["eye" + _loc2_].overMarkAttachPoint) {
                     this.charaAdd.head["eye" + _loc2_].overMarkAttachPoint.visible = true;
                     this.charaAdd.head["eye" + _loc2_].overMarkAttachPoint.scaleY = Emotion_data.EyeData[_loc3_[_loc2_]][2];
                  }
               } catch (err) {
                  trace(err.getStackTrace());
               }

               Huku_MarkSet.updateEyelid(param1, _loc2_);
            }
            else
            {
               if(Emotion_data.EyeData[_loc3_[_loc2_]][0] == 2)
               {
                  this.charaAdd.head["eye" + _loc2_].eye0.visible = false;
                  this.charaAdd.head["eye" + _loc2_].eye1.visible = true;
                  this.charaAdd.head["eye" + _loc2_].eye2.visible = false;
                  if(this.charaData["Eyelib"]["_visible"][0])
                  {
                     this.charaAdd.head["eye" + _loc2_].Eyelib0.visible = false;
                     this.charaAdd.head["eye" + _loc2_].Eyelib1.visible = true;
                     this.charaAdd.head["eye" + _loc2_].Eyelib2.visible = false;
                  }
               }
               else if(Emotion_data.EyeData[_loc3_[_loc2_]][0] == 3)
               {
                  this.charaAdd.head["eye" + _loc2_].eye0.visible = false;
                  this.charaAdd.head["eye" + _loc2_].eye1.visible = false;
                  this.charaAdd.head["eye" + _loc2_].eye2.visible = true;
                  if(this.charaData["Eyelib"]["_visible"][0])
                  {
                     this.charaAdd.head["eye" + _loc2_].Eyelib0.visible = false;
                     this.charaAdd.head["eye" + _loc2_].Eyelib1.visible = false;
                     this.charaAdd.head["eye" + _loc2_].Eyelib2.visible = true;
                  }
               }
               _loc17_ = Emotion_data.EyeData[_loc3_[_loc2_]][0] - 1;
               this.charaAdd.head["eye" + _loc2_]["eye" + _loc17_].scaleY = 1;
               new MeterPersent(15,-20,"EyeRotation",param1);
               _loc18_ = MeterPersent.MeterPersentNum;
               this.charaAdd.head["eye" + _loc2_]["eye" + _loc17_].rotation = Emotion_data.EyeData[_loc3_[_loc2_]][2] + _loc18_;
               if(this.charaData["Eyelib"]["_visible"][0])
               {
                  this.charaAdd.head["eye" + _loc2_]["Eyelib" + _loc17_].rotation = Emotion_data.EyeData[_loc3_[_loc2_]][2] + _loc18_;
                  this.charaAdd.head["eye" + _loc2_]["Eyelib" + _loc17_].scaleY = 1;
                  this.charaAdd.head["eye" + _loc2_]["Eyelib" + _loc17_].y = 6.9;
               }
               this.charaAdd.head["eye" + _loc2_].eyeMask.visible = false;
               this.charaAdd.head["eye" + _loc2_].eyeWhite.visible = false;
               this.charaAdd.head["eye" + _loc2_].eyeball.visible = false;

               try {
                  if (this.charaAdd.head["eye" + _loc2_].underMarkAttachPoint) {
                     this.charaAdd.head["eye" + _loc2_].underMarkAttachPoint.visible = false;
                  }
               } catch (err) {
                  trace(err.getStackTrace());
               }

               try {
                  if (this.charaAdd.head["eye" + _loc2_].overMarkAttachPoint) {
                     this.charaAdd.head["eye" + _loc2_].overMarkAttachPoint.visible = false;
                  }
               } catch (err) {
                  trace(err.getStackTrace());
               }
               
               Huku_MarkSet.updateEyelid(param1, _loc2_);
            }
            _loc2_++;
         }
      }
   }
}
