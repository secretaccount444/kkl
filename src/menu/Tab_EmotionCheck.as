package menu
{
   import parameter.Emotion_data;
   
   public class Tab_EmotionCheck
   {
       
      
      private var charaData:Object;
      
      public function Tab_EmotionCheck(param1:int, param2:int)
      {
         super();
         this.charaData = MenuClass.charaData[param1];
         this.charaData["EmotionManualAuto"]["_count"] = 0;
         this.charaData["EKanjyou"]["_menu"] = param2;
         this.charaData["EmotionManualAuto"]["_flag"] = "play";
         this.charaData["EyeM"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][0];
         this.charaData["EyeM2"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][1];
         this.charaData["EyeM3"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][2];
         this.charaData["EyebrowM"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][3];
         this.charaData["EyebrowM2"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][4];
         this.charaData["EyebrowM3"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][5];
         this.charaData["MouthM"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][6];
         this.charaData["MouthM2"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][7];
         this.charaData["MouthM3"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][8];
      }
   }
}
