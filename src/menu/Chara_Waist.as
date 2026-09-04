package menu
{
   import parameter.Dress_data;
   
   public class Chara_Waist
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Chara_Waist(param1:int)
      {
         var _loc3_:int = 0;
         super();
         this.charaData = MenuClass.charaData[param1];
         this.charaAdd = MenuClass.charaAdd[param1];
         var _loc2_:int = Dress_data.menuCustom["Waist"].length - 1;
         _loc3_ = 0;
         while(_loc3_ <= _loc2_)
         {
            if(this.charaData["Waist"]["_menu"] == Dress_data.menuCustom["Waist"][_loc3_])
            {
               Dress_data.menuCustomNum[param1]["Waist"] = _loc3_;
               break;
            }
            _loc3_++;
         }
         this.charaData["Waist"]["_menu"] = Dress_data.menuCustom["Waist"][Dress_data.menuCustomNum[param1]["Waist"]];
         var _loc4_:int = this.charaData["Waist"]["_menu"];
         var _loc5_:int = this.charaAdd.dou.getChildIndex(this.charaAdd.dou.dou_shitaHuku);
         var _loc6_:int = this.charaAdd.dou.getChildIndex(this.charaAdd.dou.dou_shitaHuku_swap);
         if(Dress_data.ObjData["Waist"][_loc4_]["harabote"] >= 1)
         {
            this.charaAdd.dou.harabote.visible = true;
            if(_loc5_ > _loc6_)
            {
               this.charaAdd.dou.swapChildren(this.charaAdd.dou.dou_shitaHuku,this.charaAdd.dou.dou_shitaHuku_swap);
            }
         }
         else
         {
            this.charaAdd.dou.harabote.visible = false;
            if(_loc5_ < _loc6_)
            {
               this.charaAdd.dou.swapChildren(this.charaAdd.dou.dou_shitaHuku,this.charaAdd.dou.dou_shitaHuku_swap);
            }
         }
         if(Dress_data.ObjData["Waist"][_loc4_]["hukin"] >= 1)
         {
            this.charaAdd.dou.hukin.visible = true;
            this.charaAdd.dou.hukin.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["hukin"] + 1);
         }
         else
         {
            this.charaAdd.dou.hukin.visible = false;
            this.charaAdd.dou.hukin.gotoAndStop(1);
         }
         this.charaAdd.dou.bodyMask.ueMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.bodyMask2.ueMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.color0.ueMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.ueSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.HesoSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.ueSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.nakaSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         new Chara_Harabote(param1);
         this.charaAdd.dou.seihukuMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.seihukuNakaSen.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.seihukuMask.ueMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.seihukuUeSen.ueSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.seihukuUeSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         try
         {
            this.charaAdd.dou.seihukuUeSen.ueSen.mask = this.charaAdd.dou.SeihukuDou.seihuku.seihuku.maskMcUe;
         }
         catch(myError:Error)
         {
         }
         this.charaAdd.dou.seihukuNakaSen.SenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         try
         {
            this.charaAdd.dou.seihukuNakaSen.mask = this.charaAdd.dou.SeihukuDou.seihuku.seihuku.maskMc;
         }
         catch(myError:Error)
         {
         }
         this.charaAdd.dou.ysyatuMask.ueMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.ysyatuUeSen.ueSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.ysyatuUeSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         try
         {
            this.charaAdd.dou.ysyatuUeSen.ueSen.mask = this.charaAdd.dou.YsyatuDou.ysyatu.ysyatu.ysyatu.maskMcUe;
         }
         catch(myError:Error)
         {
         }
         this.charaAdd.dou.ysyatuNakaSen.SenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         try
         {
            this.charaAdd.dou.ysyatuNakaSen.mask = this.charaAdd.dou.YsyatuDou.ysyatu.ysyatu.ysyatu.maskMc;
         }
         catch(myError:Error)
         {
         }
         this.charaAdd.dou.tsyatuMask.ueMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.tsyatuUeSen.ueSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.tsyatuUeSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         try
         {
            this.charaAdd.dou.tsyatuUeSen.ueSen.mask = this.charaAdd.dou.TsyatuDou.ysyatu.ysyatu.ysyatu.maskMcUe;
         }
         catch(myError:Error)
         {
         }
         this.charaAdd.dou.tsyatuNakaSen.SenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         try
         {
            this.charaAdd.dou.tsyatuNakaSen.mask = this.charaAdd.dou.TsyatuDou.ysyatu.ysyatu.ysyatu.maskMc;
         }
         catch(myError:Error)
         {
         }
         this.charaAdd.dou.vestMask.ueMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.vestUeSen.ueSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         this.charaAdd.dou.vestUeSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         try
         {
            this.charaAdd.dou.vestUeSen.ueSen.mask = this.charaAdd.dou.VestDou.ysyatu.ysyatu.ysyatu.maskMcUe;
         }
         catch(myError:Error)
         {
         }
         this.charaAdd.dou.vestNakaSen.SenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         try
         {
            this.charaAdd.dou.vestNakaSen.mask = this.charaAdd.dou.VestDou.ysyatu.ysyatu.ysyatu.maskMc;
         }
         catch(myError:Error)
         {
         }
         _loc3_ = 0;
         while(_loc3_ <= Main.hukusuuNum)
         {
            if(this.charaData["BeltPlus"]["_visible"][_loc3_] && this.charaData["Belt" + _loc3_]["_mask"] == 0)
            {
               new Huku_Belt(param1,_loc3_);
               new Chara_ColorClass(param1,"Belt" + _loc3_);
            }
            _loc3_++;
         }
         new Huku_PantuWaistSen(param1,"Spantu");
         new Huku_PantuMask(param1);
         new Huku_YsyatuIn(param1);
         new Huku_BuraHarabote(param1);
         new Huku_BuraHukin(param1);
         new Chara_ColorClass(param1,"Bura");
         new Chara_ColorClass(param1,"Nawa");
         new Chara_ColorClass(param1,"Body");
         new Chara_ColorClass(param1,"YsyatuDou");
         new Chara_ColorClass(param1,"TsyatuDou");
         new Chara_ColorClass(param1,"VestDou");
         new Chara_ColorClass(param1,"SehukuDou");
      }
   }
}
