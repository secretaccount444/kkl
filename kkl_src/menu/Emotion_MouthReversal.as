package menu
{
   public class Emotion_MouthReversal
   {
       
      
      public function Emotion_MouthReversal(param1:int)
      {
         super();
         if(MenuClass.charaData[param1]["EmotionMouth"]["_reversal"])
         {
            if(MenuClass.charaAdd[param1].head.mouth.scaleX < 0)
            {
               MenuClass.charaAdd[param1].head.mouth.scaleX *= -1;
            }
         }
         else if(MenuClass.charaAdd[param1].head.mouth.scaleX > 0)
         {
            MenuClass.charaAdd[param1].head.mouth.scaleX *= -1;
         }
      }
   }
}
