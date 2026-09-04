package menu
{
   public class Emotion_EyeOption
   {
       
      
      public function Emotion_EyeOption(param1:int)
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaData[param1];
         var _loc3_:Object = MenuClass.charaAdd[param1];
         var _loc4_:int = _loc2_["EyeOption"]["_visible"].length;
         var _loc7_:Number;
         if((_loc7_ = _loc2_["NamidaSet"]["_meter"] - 20) <= 0)
         {
            _loc7_ = 0;
         }
         _loc5_ = 0;
         while(_loc5_ <= _loc4_)
         {
            if(_loc5_ == 0)
            {
               _loc6_ = 0;
               while(_loc6_ <= 1)
               {
                  if(_loc2_["EmotionManualAuto"]["_check"])
                  {
                     if(_loc2_["HeartPlus"]["_meter"] >= _loc7_)
                     {
                        _loc2_["EyeOption"]["_visible"][_loc5_] = true;
                     }
                     else
                     {
                        _loc2_["EyeOption"]["_visible"][_loc5_] = false;
                     }
                  }
                  if(_loc2_["EyeOption"]["_visible"][_loc5_])
                  {
                     if(_loc3_.head["eye" + _loc6_].eyeball.eyeLight.currentFrame == 1 && _loc2_["EmotionManualAuto"]["_flag"] == "stop")
                     {
                        _loc3_.head["eye" + _loc6_].eyeball.eyeLight.gotoAndPlay(2);
                     }
                     else if(_loc3_.head["eye" + _loc6_].eyeball.eyeLight.currentFrame != 1 && _loc2_["EmotionManualAuto"]["_flag"] != "stop")
                     {
                        _loc3_.head["eye" + _loc6_].eyeball.eyeLight.gotoAndStop(1);
                     }
                  }
                  else if(_loc3_.head["eye" + _loc6_].eyeball.eyeLight.currentFrame != 1)
                  {
                     _loc3_.head["eye" + _loc6_].eyeball.eyeLight.gotoAndStop(1);
                  }
                  _loc6_++;
               }
            }
            else if(_loc5_ == 1)
            {
               _loc6_ = 0;
               while(_loc6_ <= 1)
               {
                  if(_loc2_["EmotionManualAuto"]["_check"])
                  {
                     if(_loc2_["HeartPlus"]["_meter"] >= _loc2_["NamidaSet"]["_meter"])
                     {
                        _loc2_["EyeOption"]["_visible"][_loc5_] = true;
                     }
                     else
                     {
                        _loc2_["EyeOption"]["_visible"][_loc5_] = false;
                     }
                  }
                  if(_loc2_["EyeOption"]["_visible"][_loc5_])
                  {
                     if(!_loc3_.head["eye" + _loc6_].namida.visible)
                     {
                        _loc3_.head["eye" + _loc6_].namida.visible = true;
                        _loc3_.head["eye" + _loc6_].namida.gotoAndPlay(2);
                     }
                  }
                  else if(_loc3_.head["eye" + _loc6_].namida.visible)
                  {
                     _loc3_.head["eye" + _loc6_].namida.visible = false;
                     _loc3_.head["eye" + _loc6_].namida.gotoAndStop(1);
                  }
                  _loc6_++;
               }
            }
            else if(_loc5_ == 2)
            {
               _loc6_ = 0;
               while(_loc6_ <= 1)
               {
                  if(_loc2_["EyeOption"]["_visible"][_loc5_])
                  {
                     if(!_loc3_.head["eye" + _loc6_].eyeball.sennou0.visible)
                     {
                        _loc3_.head["eye" + _loc6_].eyeball.sennou0.visible = true;
                        _loc3_.head["eye" + _loc6_].eyeball.sennou0.gotoAndStop(2);
                     }
                  }
                  else if(_loc3_.head["eye" + _loc6_].eyeball.sennou0.visible)
                  {
                     _loc3_.head["eye" + _loc6_].eyeball.sennou0.visible = false;
                     _loc3_.head["eye" + _loc6_].eyeball.sennou0.gotoAndStop(1);
                  }
                  _loc6_++;
               }
            }
            else if(_loc5_ == 3)
            {
               _loc6_ = 0;
               while(_loc6_ <= 1)
               {
                  if(_loc2_["EyeOption"]["_visible"][_loc5_])
                  {
                     if(!_loc3_.head["eye" + _loc6_].eyeball.sennou1.visible)
                     {
                        _loc3_.head["eye" + _loc6_].eyeball.sennou1.visible = true;
                        _loc3_.head["eye" + _loc6_].eyeball.sennou1.gotoAndStop(2);
                     }
                  }
                  else if(_loc3_.head["eye" + _loc6_].eyeball.sennou1.visible)
                  {
                     _loc3_.head["eye" + _loc6_].eyeball.sennou1.visible = false;
                     _loc3_.head["eye" + _loc6_].eyeball.sennou1.gotoAndStop(1);
                  }
                  _loc6_++;
               }
            }
            else if(_loc5_ == 4)
            {
               if(_loc2_["EmotionManualAuto"]["_check"])
               {
                  if(_loc2_["HeartPlus"]["_meter"] >= _loc2_["ikiSet"]["_meter"])
                  {
                     _loc2_["EyeOption"]["_visible"][_loc5_] = true;
                  }
                  else
                  {
                     _loc2_["EyeOption"]["_visible"][_loc5_] = false;
                  }
               }
               try
               {
                  if(_loc2_["EyeOption"]["_visible"][_loc5_])
                  {
                     if(_loc2_["CharaFilterEmotion"]["_check"])
                     {
                        if(_loc3_.Emotion.iki.currentFrame == 1)
                        {
                           _loc3_.Emotion.iki.visible = true;
                           _loc3_.Emotion.iki.gotoAndPlay(2);
                        }
                     }
                     else if(MenuClass.charaAddDepth[param1].charaMae.Emotion.iki.currentFrame == 1)
                     {
                        MenuClass.charaAddDepth[param1].charaMae.Emotion.iki.visible = true;
                        MenuClass.charaAddDepth[param1].charaMae.Emotion.iki.gotoAndPlay(2);
                     }
                  }
                  else if(_loc2_["CharaFilterEmotion"]["_check"])
                  {
                     if(_loc3_.Emotion.iki.currentFrame != 1)
                     {
                        _loc3_.Emotion.iki.visible = false;
                        _loc3_.Emotion.iki.gotoAndStop(1);
                     }
                  }
                  else if(MenuClass.charaAddDepth[param1].charaMae.Emotion.iki.currentFrame != 1)
                  {
                     MenuClass.charaAddDepth[param1].charaMae.Emotion.iki.visible = false;
                     MenuClass.charaAddDepth[param1].charaMae.Emotion.iki.gotoAndStop(1);
                  }
               }
               catch(myError:Error)
               {
               }
            }
            else if(_loc5_ == 5)
            {
               _loc6_ = 0;
               while(_loc6_ <= 1)
               {
                  if(_loc2_["EyeOption"]["_visible"][_loc5_])
                  {
                     if(!_loc3_.head["eye" + _loc6_].eyeball.kira.visible)
                     {
                        _loc3_.head["eye" + _loc6_].eyeball.kira.visible = true;
                        _loc3_.head["eye" + _loc6_].eyeball.kira.gotoAndStop(2);
                     }
                  }
                  else if(_loc3_.head["eye" + _loc6_].eyeball.kira.visible)
                  {
                     _loc3_.head["eye" + _loc6_].eyeball.kira.visible = false;
                     _loc3_.head["eye" + _loc6_].eyeball.kira.gotoAndStop(1);
                  }
                  _loc6_++;
               }
            }
            _loc5_++;
         }
      }
   }
}
