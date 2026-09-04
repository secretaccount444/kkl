package menu
{
   public class Emotion_Option
   {
       
      
      public function Emotion_Option(param1:int)
      {
         var _loc3_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaData[param1];
         var _loc4_:int = _loc2_["EmotionOption"]["_visible"].length;
         if(_loc2_["CharaFilterEmotion"]["_check"])
         {
            MenuClass.charaAddDepth[param1].charaMae.Emotion.gotoAndStop(1);
            MenuClass.charaAdd[param1].Emotion.gotoAndStop(2);
            _loc3_ = MenuClass.charaAdd[param1];
         }
         else
         {
            MenuClass.charaAddDepth[param1].charaMae.Emotion.gotoAndStop(2);
            MenuClass.charaAdd[param1].Emotion.gotoAndStop(1);
            _loc3_ = MenuClass.charaAddDepth[param1].charaMae;
         }
         if(_loc2_["EmotionOption"]["_reversal"])
         {
            _loc3_.Emotion.scaleX = 1;
         }
         else
         {
            _loc3_.Emotion.scaleX = -1;
         }
         _loc5_ = 0;
         while(_loc5_ <= _loc4_)
         {
            if(_loc5_ == 0)
            {
               if(_loc2_["EmotionOption"]["_visible"][_loc5_])
               {
                  _loc3_.Emotion.ase.visible = true;
                  if(_loc3_.Emotion.ase.currentFrame == 1)
                  {
                     _loc3_.Emotion.ase.gotoAndPlay(2);
                  }
               }
               else
               {
                  _loc3_.Emotion.ase.visible = false;
                  _loc3_.Emotion.ase.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 1)
            {
               if(_loc2_["EmotionOption"]["_visible"][_loc5_])
               {
                  _loc3_.Emotion.ikari.visible = true;
                  if(_loc3_.Emotion.ikari.currentFrame == 1)
                  {
                     _loc3_.Emotion.ikari.gotoAndPlay(2);
                  }
               }
               else
               {
                  _loc3_.Emotion.ikari.visible = false;
                  _loc3_.Emotion.ikari.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 2)
            {
               if(_loc2_["EmotionOption"]["_visible"][_loc5_])
               {
                  _loc3_.Emotion.bikkuri.visible = true;
                  if(_loc3_.Emotion.bikkuri.currentFrame == 1)
                  {
                     _loc3_.Emotion.bikkuri.gotoAndPlay(2);
                  }
               }
               else
               {
                  _loc3_.Emotion.bikkuri.visible = false;
                  _loc3_.Emotion.bikkuri.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 3)
            {
               if(_loc2_["EmotionOption"]["_visible"][_loc5_])
               {
                  _loc3_.Emotion.kizuku.visible = true;
                  if(_loc3_.Emotion.kizuku.currentFrame == 1)
                  {
                     _loc3_.Emotion.kizuku.gotoAndPlay(2);
                  }
               }
               else
               {
                  _loc3_.Emotion.kizuku.visible = false;
                  _loc3_.Emotion.kizuku.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 4)
            {
               if(_loc2_["EmotionOption"]["_visible"][_loc5_])
               {
                  _loc3_.Emotion.warai.visible = true;
                  if(_loc3_.Emotion.warai.currentFrame == 1)
                  {
                     _loc3_.Emotion.warai.gotoAndPlay(2);
                  }
               }
               else
               {
                  _loc3_.Emotion.warai.visible = false;
                  _loc3_.Emotion.warai.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 5)
            {
               if(_loc2_["EmotionOption"]["_visible"][_loc5_])
               {
                  _loc3_.Emotion.ase2.visible = true;
                  if(_loc3_.Emotion.ase2.currentFrame == 1)
                  {
                     _loc3_.Emotion.ase2.gotoAndPlay(2);
                  }
               }
               else
               {
                  _loc3_.Emotion.ase2.visible = false;
                  _loc3_.Emotion.ase2.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 6)
            {
               if(_loc2_["EmotionOption"]["_visible"][_loc5_])
               {
                  _loc3_.Emotion.shock.visible = true;
                  if(_loc3_.Emotion.shock.currentFrame == 1)
                  {
                     _loc3_.Emotion.shock.gotoAndPlay(2);
                  }
               }
               else
               {
                  _loc3_.Emotion.shock.visible = false;
                  _loc3_.Emotion.shock.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 7)
            {
               if(_loc2_["EmotionOption"]["_visible"][_loc5_])
               {
                  _loc3_.Emotion.ase3.visible = true;
                  if(_loc3_.Emotion.ase3.currentFrame == 1)
                  {
                     _loc3_.Emotion.ase3.gotoAndPlay(2);
                  }
               }
               else
               {
                  _loc3_.Emotion.ase3.visible = false;
                  _loc3_.Emotion.ase3.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 8)
            {
               if(_loc2_["EmotionOption"]["_visible"][_loc5_])
               {
                  _loc3_.Emotion.kirari.visible = true;
                  if(_loc3_.Emotion.kirari.currentFrame == 1)
                  {
                     _loc3_.Emotion.kirari.gotoAndPlay(2);
                  }
               }
               else
               {
                  _loc3_.Emotion.kirari.visible = false;
                  _loc3_.Emotion.kirari.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 9)
            {
               if(_loc2_["EmotionOption"]["_visible"][_loc5_])
               {
                  _loc3_.Emotion.howa.visible = true;
                  if(_loc3_.Emotion.howa.currentFrame == 1)
                  {
                     _loc3_.Emotion.howa.gotoAndPlay(2);
                  }
               }
               else
               {
                  _loc3_.Emotion.howa.visible = false;
                  _loc3_.Emotion.howa.gotoAndStop(1);
               }
            }
            _loc5_++;
         }
      }
   }
}
