package menu
{
   import parameter.Dress_data;
   import parameter.Vibrator_data;
   
   public class Huku_VibratorSet
   {
       
      
      private var thinghNum:Array;
      
      public function Huku_VibratorSet(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc7_:int = 0;
         super();
         var _loc4_:Object = MenuClass.charaData[param1];
         var _loc5_:Object = MenuClass.charaAdd[param1];
         var _loc6_:Boolean = false;
         if(_loc4_["Vibrator"]["_visible"][0])
         {
            _loc3_ = Dress_data.menuCustom["Vibrator"].length - 1;
            _loc2_ = 0;
            while(_loc2_ <= _loc3_)
            {
               if(_loc4_["Vibrator"]["_menu"] == Dress_data.menuCustom["Vibrator"][_loc2_])
               {
                  Dress_data.menuCustomNum[param1]["Vibrator"] = _loc2_;
                  break;
               }
               _loc2_++;
            }
            _loc4_["Vibrator"]["_menu"] = Dress_data.menuCustom["Vibrator"][Dress_data.menuCustomNum[param1]["Vibrator"]];
            _loc5_.vibrator.gotoAndStop(_loc4_["Vibrator"]["_menu"] + 2);
            new Chara_ColorClass(param1,"Vibrator");
            new Huku_Vibrator(param1);
            if(_loc4_["VibratorSpeed"]["_menu"] != 0)
            {
               _loc4_["VibratorMove"]["_count"] = 1;
               _loc4_["VibratorMove"]["_return"] = 0;
               MenuClass.EmotionRandom[param1] = 1;
            }
            _loc4_["s"]["_hidaPlay"] = 0;
            _loc4_["s"]["_hidaCount"] = 0;
            if(Dress_data.VibratorData[_loc4_["Vibrator"]["_menu"]]["sen"] == 1)
            {
               _loc5_.vibrator.senMc.visible = true;
               _loc5_.vibrator.senMc.mask = _loc5_.vibrator.vibrator.item.senMask;
               _loc5_.vibrator.senMc.gotoAndStop(Vibrator_data.vibratorData[_loc4_["Vibrator"]["_menu"]][_loc4_["VibratorMove"]["_menu"]][_loc4_["VibratorMove"]["_count"]][7]);
            }
            else if(Dress_data.VibratorData[_loc4_["Vibrator"]["_menu"]]["sen"] == 0)
            {
               _loc5_.vibrator.senMc.mask = null;
               _loc5_.vibrator.senMc.visible = false;
            }
            _loc5_.vibrator.maskMc.gotoAndStop(Vibrator_data.vibratorData[_loc4_["Vibrator"]["_menu"]][_loc4_["VibratorMove"]["_menu"]][_loc4_["VibratorMove"]["_count"]][7]);
            try
            {
               _loc5_.vibrator.vibrator.item.mosaic.mosaic.gotoAndStop(MenuClass.systemData["Mosaic"]["_menu"] + 1);
               new Chara_ColorClass(param1,"Mosaic");
            }
            catch(myError:Error)
            {
            }
            _loc6_ = true;
            new SetClass(param1,"VibratorScale","tab");
            _loc5_.vibrator.visible = true;
         }
         else if(_loc5_.vibrator.visible)
         {
            _loc4_["s"]["_hidaPlay"] = 0;
            _loc4_["s"]["_hidaCount"] = 0;
            _loc5_.dou.dou_shitaHuku.s.b_s_main0_kage1.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_main0_kage2.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_main0_color1.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_main0_color2.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_main1_kage1.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_main1_kage2.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_main1_color1.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_main1_color2.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_hida0_color1.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_hida0_kage1.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_hida1_color1.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_hida1_kage1.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.b_s_kuri.gotoAndStop(1);
            _loc5_.dou.dou_shitaHuku.s.chitu.gotoAndStop(1);
            _loc5_.vibrator.visible = false;
            _loc5_.vibrator.gotoAndStop(1);
            _loc6_ = true;
            this.thinghNum = new Array(Move_DataClass.AshiFrameData[_loc4_["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[_loc4_["Ashi2"]["_menu"]]["depth"]);
            if(this.thinghNum[0] == 0 && this.thinghNum[1] == 0 || MenuClass.systemData["Mosaic"]["_menu"] != 0)
            {
               try
               {
                  _loc5_.mosaic.mosaic.color0_0.gotoAndStop(1);
                  _loc5_.mosaic.mosaic.color0_0.y = 0;
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  _loc5_.mosaic.mosaic.color0_0.gotoAndStop(2);
                  _loc5_.mosaic.mosaic.color0_0.y = 1.05;
               }
               catch(myError:Error)
               {
               }
            }
         }
         if(_loc6_)
         {
            if(_loc4_["Skirt"]["_visible"][0])
            {
               new Huku_Skirt(param1,"Skirt");
            }
            _loc7_ = _loc4_["TsyatuSkirt"]["_menu"];
            if(_loc4_["Tsyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc7_]["skirt"] != 0)
            {
               new Huku_Skirt(param1,"Tsyatu");
            }
            _loc7_ = _loc4_["YsyatuSkirt"]["_menu"];
            if(_loc4_["Ysyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc7_]["skirt"] != 0)
            {
               new Huku_Skirt(param1,"Ysyatu");
            }
            _loc7_ = _loc4_["VestSkirt"]["_menu"];
            if(_loc4_["Vest"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc7_]["skirt"] != 0)
            {
               new Huku_Skirt(param1,"Vest");
            }
            new Chara_s(param1,"tab");
         }
      }
   }
}
