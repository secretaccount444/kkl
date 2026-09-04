package menu
{
   import parameter.Emotion_data;
   
   public class Move_S_Enter
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Move_S_Enter(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         super();
         this.charaData = MenuClass.charaData[param1];
         this.charaAdd = MenuClass.charaAdd[param1];
         if(this.charaData["s"]["_hidaCount"] != 0)
         {
            _loc2_ = this.charaData["s"]["_hidaPlay"];
            _loc3_ = false;
            if(this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.currentFrame != Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][0] || this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.currentFrame != Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][1])
            {
               _loc3_ = true;
            }
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][0]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][0]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][0]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][0]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][1]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][1]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][1]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][1]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][0]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][0]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][1]);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][1]);
            if(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][0] > Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][1])
            {
               this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][0]);
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][1]);
            }
            try
            {
               this.charaAdd.dou.dou_shitaHuku.s.chitu.gotoAndStop(Emotion_data.playData[_loc2_][this.charaData["s"]["_hidaCount"]][9]);
            }
            catch(myError:Error)
            {
            }
            if(_loc3_)
            {
               new Chara_ColorClass(param1,"s");
            }
            if(this.charaData["s"]["_hidaCount"] < Emotion_data.playData[_loc2_].length - 1)
            {
               this.charaData["s"]["_hidaCount"] += 1;
            }
            else if(this.charaData["s"]["_hidaCount"] == Emotion_data.playData[_loc2_].length - 1)
            {
               this.charaData["s"]["_hidaCount"] = 0;
               if(_loc2_ == 8 || _loc2_ == 9)
               {
                  this.charaData["s"]["_hidaPlay"] = 2;
               }
               if(_loc2_ == 10)
               {
                  this.charaData["s"]["_hidaPlay"] = 6;
               }
               if(_loc2_ == 11)
               {
                  this.charaData["s"]["_hidaPlay"] = 4;
               }
               if(_loc2_ == 3)
               {
                  this.charaData["s"]["_hidaPlay"] = 0;
               }
               if(_loc2_ == 5)
               {
                  this.charaData["s"]["_hidaPlay"] = 0;
               }
               if(_loc2_ == 7)
               {
                  this.charaData["s"]["_hidaPlay"] = 0;
               }
            }
         }
         else if(this.charaData["s"]["_hidaCount"] == 0)
         {
            if(this.charaData["s"]["_hidaPlay"] == 2 && this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.currentFrame != 24)
            {
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.chitu.gotoAndStop(1);
               new Chara_ColorClass(param1,"s");
            }
            else if(this.charaData["s"]["_hidaPlay"] == 4 && this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.currentFrame != 24)
            {
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.chitu.gotoAndStop(1);
               new Chara_ColorClass(param1,"s");
            }
            else if(this.charaData["s"]["_hidaPlay"] == 6 && this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.currentFrame != 24)
            {
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.gotoAndStop(24);
               this.charaAdd.dou.dou_shitaHuku.s.chitu.gotoAndStop(1);
               new Chara_ColorClass(param1,"s");
            }
         }
      }
   }
}
