package menu
{
   public class Chara_Class_First
   {
       
      
      public function Chara_Class_First(param1:int)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super();
         _loc2_ = MenuClass.charaAdd[param1];
         _loc3_ = MenuClass.charaAddDepth[param1];
         _loc2_.dou.dou_shitaHuku.s.tare.mask = MenuClass.shadowAdd[param1].EkiMask;
         MenuClass.shadowAdd[param1].EkiMask.visible = false;
         _loc4_ = 0;
         while(_loc4_ <= 1)
         {
            _loc2_["handm0_" + _loc4_].hand.arm2.arm2.maskMc0.visible = false;
            _loc2_["handm0_" + _loc4_].kataSeihukuMask.visible = false;
            _loc2_["handm0_" + _loc4_].kataYsyatuMask.visible = false;
            _loc2_["handm0_" + _loc4_].kataYsyatu2Mask.visible = false;
            _loc2_["handm0_" + _loc4_].kataTsyatuMask.visible = false;
            _loc2_["handm0_" + _loc4_].kataBuraMask.visible = false;
            _loc2_["handm0_" + _loc4_].kataMask.visible = false;
            _loc2_.dou.thighMask["thighMask" + _loc4_].visible = false;
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ <= 1)
         {
            _loc2_.head["eye" + _loc4_].mouseChildren = false;
            _loc2_.head["eye" + _loc4_].buttonMode = true;
            _loc2_.mune["mune" + _loc4_].buttonMode = true;
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ <= 1)
         {
            _loc2_.mune["senNeck" + _loc4_].mouseChildren = false;
            _loc2_.mune["senNeck" + _loc4_].mouseEnabled = false;
            _loc2_.mune["senTop" + _loc4_].mouseChildren = false;
            _loc2_.mune["senTop" + _loc4_].mouseEnabled = false;
            _loc2_.mune["mune_swap" + _loc4_].mouseChildren = false;
            _loc2_.mune["mune_swap" + _loc4_].mouseEnabled = false;
            _loc2_.mune.ue["corsetMask" + _loc4_].visible = false;
            _loc2_.mune.ue["corsetMask" + _loc4_].mouseChildren = false;
            _loc2_.mune.ue["corsetMask" + _loc4_].mouseEnabled = false;
            _loc2_.mune.ue["corsetMask" + _loc4_].buttonMode = false;
            _loc4_++;
         }
         _loc2_.mune.ue.mouseChildren = false;
         _loc2_.mune.ue.mouseEnabled = false;
         _loc2_.mune.necktie_swap0.mouseChildren = false;
         _loc2_.mune.necktie_swap0.mouseEnabled = false;
         _loc2_.mune.collar_swap0.mouseChildren = false;
         _loc2_.mune.collar_swap0.mouseEnabled = false;
         _loc2_.dou.dou_shita.mouseChildren = false;
         _loc2_.dou.dou_shita.mouseEnabled = false;
         _loc2_.dou.thighMask.mouseChildren = false;
         _loc2_.dou.thighMask.mouseEnabled = false;
         _loc2_.dou.color0.mouseChildren = false;
         _loc2_.dou.color0.mouseEnabled = false;
         _loc2_.dou.hukin.mouseChildren = false;
         _loc2_.dou.hukin.mouseEnabled = false;
         _loc2_.dou.dou_shitaHuku_swap.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku_swap.mouseEnabled = false;
         _loc4_ = 0;
         while(_loc4_ <= 2)
         {
            _loc2_.dou["dou_Skirt_swap" + _loc4_].mouseChildren = false;
            _loc2_.dou["dou_Skirt_swap" + _loc4_].mouseEnabled = false;
            _loc4_++;
         }
         _loc2_.dou.harabote.mouseChildren = false;
         _loc2_.dou.harabote.mouseEnabled = false;
         _loc2_.dou.MuneKage0.mouseChildren = false;
         _loc2_.dou.MuneKage0.mouseEnabled = false;
         _loc2_.dou.HesoSen.mouseChildren = false;
         _loc2_.dou.HesoSen.mouseEnabled = false;
         _loc2_.dou.bodyMask.mouseChildren = false;
         _loc2_.dou.bodyMask.mouseEnabled = false;
         _loc2_.dou.bodyMask2.mouseChildren = false;
         _loc2_.dou.bodyMask2.mouseEnabled = false;
         _loc2_.dou.nakaSen.mouseChildren = false;
         _loc2_.dou.nakaSen.mouseEnabled = false;
         _loc2_.dou.nakaSenMask.mouseChildren = false;
         _loc2_.dou.nakaSenMask.mouseEnabled = false;
         _loc2_.dou.ueSen.mouseChildren = false;
         _loc2_.dou.ueSen.mouseEnabled = false;
         _loc2_.dou.ueSenMask.mouseChildren = false;
         _loc2_.dou.ueSenMask.mouseEnabled = false;
         _loc2_.dou.tsyatuMask.mouseChildren = false;
         _loc2_.dou.tsyatuMask.mouseEnabled = false;
         _loc2_.dou.tsyatuNakaSen.mouseChildren = false;
         _loc2_.dou.tsyatuNakaSen.mouseEnabled = false;
         _loc2_.dou.tsyatuUeSen.mouseChildren = false;
         _loc2_.dou.tsyatuUeSen.mouseEnabled = false;
         _loc2_.dou.tsyatuUeSenMask.mouseChildren = false;
         _loc2_.dou.tsyatuUeSenMask.mouseEnabled = false;
         _loc2_.dou.ysyatuMask.mouseChildren = false;
         _loc2_.dou.ysyatuMask.mouseEnabled = false;
         _loc2_.dou.ysyatuNakaSen.mouseChildren = false;
         _loc2_.dou.ysyatuNakaSen.mouseEnabled = false;
         _loc2_.dou.ysyatuUeSen.mouseChildren = false;
         _loc2_.dou.ysyatuUeSen.mouseEnabled = false;
         _loc2_.dou.ysyatuUeSenMask.mouseChildren = false;
         _loc2_.dou.ysyatuUeSenMask.mouseEnabled = false;
         _loc2_.dou.vestMask.mouseChildren = false;
         _loc2_.dou.vestMask.mouseEnabled = false;
         _loc2_.dou.vestNakaSen.mouseChildren = false;
         _loc2_.dou.vestNakaSen.mouseEnabled = false;
         _loc2_.dou.vestUeSenMask.mouseChildren = false;
         _loc2_.dou.vestUeSenMask.mouseEnabled = false;
         _loc2_.dou.seihukuMask.mouseChildren = false;
         _loc2_.dou.seihukuMask.mouseEnabled = false;
         _loc2_.dou.seihukuNakaSen.mouseChildren = false;
         _loc2_.dou.seihukuNakaSen.mouseEnabled = false;
         _loc2_.dou.seihukuUeSen.mouseChildren = false;
         _loc2_.dou.seihukuUeSen.mouseEnabled = false;
         _loc2_.dou.seihukuUeSenMask.mouseChildren = false;
         _loc2_.dou.seihukuUeSenMask.mouseEnabled = false;
         _loc2_.dou.dou_shitaHuku.s_swap.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.s_swap.mouseEnabled = false;
         _loc2_.dou.dou_shitaHuku.Peni_swap.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.Peni_swap.mouseEnabled = false;
         _loc2_.dou.dou_shitaHuku.Tights_swap0.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.Tights_swap1.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.Pantu_swap.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.Pantu_swap.mouseEnabled = false;
         _loc4_ = 0;
         while(_loc4_ <= 1)
         {
            _loc2_["handm1_" + _loc4_].hand.itemSwapMc.mouseChildren = false;
            _loc2_["handm1_" + _loc4_].hand.itemSwapMc.mouseEnabled = false;
            _loc2_["handm1_" + _loc4_].hand.arm0.hand.Num = _loc4_;
            _loc2_["handm0_" + _loc4_].kataBuraMask.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].kataBuraMask.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].kataMask.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].kataMask.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].kataTsyatuMask.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].kataTsyatuMask.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].kataTsyatuMask.visible = false;
            _loc2_["handm0_" + _loc4_].kataYsyatuMask.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].kataYsyatuMask.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].kataYsyatuMask.visible = false;
            _loc2_["handm0_" + _loc4_].kataYsyatu2Mask.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].kataYsyatu2Mask.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].kataYsyatu2Mask.visible = false;
            _loc2_["handm0_" + _loc4_].kataVestMask.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].kataVestMask.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].kataVestMask.visible = false;
            _loc2_["handm0_" + _loc4_].kataSeihukuMask.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].kataSeihukuMask.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].kataSeihukuMask.visible = false;
            _loc2_["handm0_" + _loc4_].shoulder_back.color0.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].shoulder_back.color0.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].shoulder_back.sen.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].shoulder_back.sen.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].shoulder.color0.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].shoulder.color0.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].shoulder.sen.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].shoulder.sen.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].hand.arm2.arm2.color0.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].hand.arm2.arm2.color0.mouseEnabled = false;
            _loc2_["handm0_" + _loc4_].hand.arm2.arm2.maskMc0.mouseChildren = false;
            _loc2_["handm0_" + _loc4_].hand.arm2.arm2.maskMc0.mouseEnabled = false;
            _loc4_++;
         }
         _loc2_.head.hoho.mouseChildren = false;
         _loc2_.head.hoho.mouseEnabled = false;
         _loc2_.head.kandoPlus.mouseChildren = false;
         _loc2_.head.kandoPlus.mouseEnabled = false;
         _loc2_.head.kandoMinus.mouseChildren = false;
         _loc2_.head.kandoMinus.mouseEnabled = false;
         _loc2_.head.faceKage0.mouseChildren = false;
         _loc2_.head.faceKage0.mouseEnabled = false;
         _loc2_.head.faceKage1.mouseChildren = false;
         _loc2_.head.faceKage1.mouseEnabled = false;
         _loc2_.head.nose.mouseChildren = false;
         _loc2_.head.nose.mouseEnabled = false;
         _loc2_.head.Hige.mouseChildren = false;
         _loc2_.head.Hige.mouseEnabled = false;
         _loc4_ = 0;
         while(_loc4_ <= 4)
         {
            _loc2_.head["hokuro" + _loc4_].mouseChildren = false;
            _loc2_.head["hokuro" + _loc4_].mouseEnabled = false;
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ <= 1)
         {
            _loc2_.head["sobakasu" + _loc4_].mouseChildren = false;
            _loc2_.head["sobakasu" + _loc4_].mouseEnabled = false;
            _loc4_++;
         }
         _loc2_.head.mouth.mouseChildren = false;
         _loc2_.head.mouth.buttonMode = true;
         _loc2_.mosaic.mouseChildren = false;
         _loc2_.mosaic.mouseEnabled = false;
         _loc2_.dou.dou_shitaHuku.UnderHair.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.UnderHair.mouseEnabled = false;
         MenuClass.charaAddDepth[param1].charaMae.Hukidashi.mouseChildren = false;
         _loc2_.Hukidashi.mouseChildren = false;
         _loc2_.head.hokuro0.mouseChildren = false;
         _loc2_.head.hokuro1.mouseChildren = false;
         _loc2_.head.hokuro2.mouseChildren = false;
         _loc2_.head.hokuro3.mouseChildren = false;
         _loc2_.head.hokuro4.mouseChildren = false;
         _loc2_.head.sobakasu0.mouseChildren = false;
         _loc2_.head.sobakasu1.mouseChildren = false;
         _loc2_.head.Hige.mouseChildren = false;
         _loc2_.head.faceKage0.mouseChildren = false;
         _loc2_.head.faceKage1.mouseChildren = false;
         _loc2_.peni.peni.Peni.Tin.mouseChildren = false;
         _loc2_.peni.peni.Peni.Tin.buttonMode = true;
         _loc2_.peni.peni.Peni.Tama.mouseChildren = false;
         _loc2_.peni.peni.Peni.Tama.buttonMode = true;
         _loc2_.dou.dou_shitaHuku.peni.Peni.Tin.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.peni.Peni.Tin.buttonMode = true;
         _loc2_.dou.dou_shitaHuku.peni.Peni.Tama.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.peni.Peni.Tama.buttonMode = true;
         _loc2_.vibrator.visible = false;
         _loc2_.vibrator.mouseChildren = false;
         _loc2_.vibrator.buttonMode = true;
         _loc2_.dou.SeihukuDou.mouseChildren = false;
         _loc2_.dou.SeihukuDou.buttonMode = true;
         _loc2_.mune.SeihukuMune.mouseChildren = false;
         _loc2_.mune.SeihukuMune.buttonMode = true;
         _loc2_.dou.YsyatuOnePiece.mouseChildren = false;
         _loc2_.dou.YsyatuOnePiece.buttonMode = true;
         _loc2_.dou.YsyatuDou.mouseChildren = false;
         _loc2_.dou.YsyatuDou.buttonMode = true;
         _loc2_.mune.YsyatuMune.mouseChildren = false;
         _loc2_.mune.YsyatuMune.buttonMode = true;
         _loc2_.mune.YsyatuMune2.mouseChildren = false;
         _loc2_.mune.YsyatuMune2.buttonMode = true;
         _loc2_.mune.YsyatuEri.mouseChildren = false;
         _loc2_.mune.YsyatuEri.buttonMode = true;
         _loc2_.dou.TsyatuOnePiece.mouseChildren = false;
         _loc2_.dou.TsyatuOnePiece.buttonMode = true;
         _loc2_.dou.TsyatuDou.mouseChildren = false;
         _loc2_.dou.TsyatuDou.buttonMode = true;
         _loc2_.mune.TsyatuMune.mouseChildren = false;
         _loc2_.mune.TsyatuMune.buttonMode = true;
         _loc2_.mune.TsyatuMune.scaleY = 0.99;
         _loc2_.dou.VestOnePiece.mouseChildren = false;
         _loc2_.dou.VestOnePiece.buttonMode = true;
         _loc2_.dou.VestDou.mouseChildren = false;
         _loc2_.dou.VestDou.buttonMode = true;
         _loc2_.mune.VestMune.mouseChildren = false;
         _loc2_.mune.VestMune.buttonMode = true;
         _loc2_.mune.VestMune2.mouseChildren = false;
         _loc2_.mune.VestMune2.buttonMode = true;
         _loc2_.mune.VestEri.mouseChildren = false;
         _loc2_.mune.VestEri.buttonMode = true;
         _loc2_.mune.SodeYsyatuMune0_0.mouseChildren = false;
         _loc2_.mune.SodeYsyatuMune0_0.buttonMode = true;
         _loc2_.mune.SodeYsyatuMune1_0.mouseChildren = false;
         _loc2_.mune.SodeYsyatuMune1_0.buttonMode = true;
         _loc2_.mune.SodeYsyatuMune0_1.mouseChildren = false;
         _loc2_.mune.SodeYsyatuMune0_1.buttonMode = true;
         _loc2_.mune.SodeYsyatuMune1_1.mouseChildren = false;
         _loc2_.mune.SodeYsyatuMune1_1.buttonMode = true;
         _loc2_.mune.SodeYsyatuMuneSwap0.mouseChildren = false;
         _loc2_.mune.SodeYsyatuMuneSwap1.mouseEnabled = false;
         _loc2_.mune.SodeVestMune0_0.mouseChildren = false;
         _loc2_.mune.SodeVestMune0_0.buttonMode = true;
         _loc2_.mune.SodeVestMune1_0.mouseChildren = false;
         _loc2_.mune.SodeVestMune1_0.buttonMode = true;
         _loc2_.mune.SodeVestMune0_1.mouseChildren = false;
         _loc2_.mune.SodeVestMune0_1.buttonMode = true;
         _loc2_.mune.SodeVestMune1_1.mouseChildren = false;
         _loc2_.mune.SodeVestMune1_1.buttonMode = true;
         _loc2_.mune.SodeVestMuneSwap0.mouseChildren = false;
         _loc2_.mune.SodeVestMuneSwap1.mouseEnabled = false;
         _loc2_.mune.SodeTsyatuMune0_0.mouseChildren = false;
         _loc2_.mune.SodeTsyatuMune0_0.buttonMode = true;
         _loc2_.mune.SodeTsyatuMune1_0.mouseChildren = false;
         _loc2_.mune.SodeTsyatuMune1_0.buttonMode = true;
         _loc2_.mune.SodeTsyatuMune0_1.mouseChildren = false;
         _loc2_.mune.SodeTsyatuMune0_1.buttonMode = true;
         _loc2_.mune.SodeTsyatuMune1_1.mouseChildren = false;
         _loc2_.mune.SodeTsyatuMune1_1.buttonMode = true;
         _loc2_.mune.SodeTsyatuMuneSwap0.mouseChildren = false;
         _loc2_.mune.SodeTsyatuMuneSwap1.mouseEnabled = false;
         _loc2_.mune.SodeSeihukuMune0_0.mouseChildren = false;
         _loc2_.mune.SodeSeihukuMune0_0.buttonMode = true;
         _loc2_.mune.SodeSeihukuMune1_0.mouseChildren = false;
         _loc2_.mune.SodeSeihukuMune1_0.buttonMode = true;
         _loc2_.mune.SodeSeihukuMune0_1.mouseChildren = false;
         _loc2_.mune.SodeSeihukuMune0_1.buttonMode = true;
         _loc2_.mune.SodeSeihukuMune1_1.mouseChildren = false;
         _loc2_.mune.SodeSeihukuMune1_1.buttonMode = true;
         _loc2_.dou.dou_Skirt.Skirt.mouseChildren = false;
         _loc2_.dou.dou_Skirt.Skirt.buttonMode = true;
         _loc2_.dou.dou_Skirt.Zubon.mouseChildren = false;
         _loc2_.dou.dou_Skirt.Zubon.buttonMode = true;
         _loc2_.dou.dou_shitaHuku.Tights.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.Tights.buttonMode = true;
         _loc2_.mune.Bura.Bura.mouseChildren = false;
         _loc2_.mune.Bura.Bura.buttonMode = true;
         _loc2_.dou.Bura.mouseChildren = false;
         _loc2_.dou.Bura.buttonMode = true;
         _loc2_.dou.dou_shitaHuku.Bura_hukin.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.Bura_hukin.buttonMode = true;
         _loc2_.dou.dou_shitaHuku.Bura_HesoSen.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.Bura_HesoSen.buttonMode = true;
         _loc2_.dou.dou_shitaHuku.Spantu.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.Spantu.buttonMode = true;
         _loc2_.dou.dou_shitaHuku.Pantu.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.Pantu.buttonMode = true;
         _loc2_.mune.Nawa.Nawa.mouseChildren = false;
         _loc2_.mune.Nawa.Nawa.buttonMode = true;
         _loc2_.dou.Nawa.mouseChildren = false;
         _loc2_.dou.Nawa.buttonMode = true;
         _loc2_.dou.dou_shitaHuku.Nawa.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.Nawa.buttonMode = true;
         _loc2_.dou.dou_shitaHuku.SG.mouseChildren = false;
         _loc2_.dou.dou_shitaHuku.SG.buttonMode = true;
         _loc2_.head.Hat.mouseChildren = false;
         _loc2_.head.Hat.buttonMode = true;
         _loc2_.HatBack.mouseChildren = false;
         _loc2_.HatBack.buttonMode = true;
         _loc2_.head.Mimi.mouseChildren = false;
         _loc2_.head.Horn.mouseChildren = false;
         _loc2_.mune.Collar0.mouseChildren = false;
         _loc2_.mune.Collar0.buttonMode = true;
         _loc4_ = 0;
         while(_loc4_ <= 1)
         {
            _loc2_.mune["Necktie" + _loc4_].mouseChildren = false;
            _loc2_.mune["Necktie" + _loc4_].buttonMode = true;
            _loc4_++;
         }
         _loc2_.mune.Necklace0.mouseChildren = false;
         _loc2_.mune.Necklace0.buttonMode = true;
         _loc2_.head.Gag.mouseChildren = false;
         _loc2_.head.Gag.buttonMode = true;
         _loc2_.head.Megane.mouseChildren = false;
         _loc2_.head.Megane.buttonMode = true;
         _loc4_ = 0;
         while(_loc4_ <= 2)
         {
            _loc2_.head["Headband" + _loc4_].mouseChildren = false;
            _loc2_.head["Headband" + _loc4_].buttonMode = true;
            _loc4_++;
         }
         _loc2_.head.Headphone_Top.mouseChildren = false;
         _loc2_.head.Headphone_Top.buttonMode = true;
         _loc4_ = 0;
         while(_loc4_ <= 1)
         {
            _loc2_.head["Headphone" + _loc4_].mouseChildren = false;
            _loc2_.head["Headphone" + _loc4_].buttonMode = true;
            _loc2_["Headphone" + _loc4_].mouseChildren = false;
            _loc2_["Headphone" + _loc4_].buttonMode = true;
            _loc2_["HeadphoneNeck" + _loc4_].mouseChildren = false;
            _loc2_["HeadphoneNeck" + _loc4_].buttonMode = true;
            _loc4_++;
         }
         new HukuClickClass(_loc2_);
      }
   }
}
