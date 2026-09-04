package menu
{
   import parameter.Dress_data;
   
   public class Huku_Vest
   {
       
      
      public function Huku_Vest(param1:int, param2:String)
      {
         var _loc8_:int = 0;
         super();
         var _loc3_:Object = MenuClass.charaAdd[param1];
         var _loc4_:Object;
         var _loc5_:int = (_loc4_ = MenuClass.charaData[param1])["Vest"]["_menu"];
         var _loc6_:int = _loc4_["VestDou"]["_menu"];
         var _loc7_:int = _loc4_["VestSkirt"]["_menu"];
         _loc3_.dou.VestDou.visible = _loc4_["Vest"]["_visible"][0];
         _loc3_.dou.vestUeSen.visible = _loc4_["Vest"]["_visible"][0];
         _loc3_.dou.vestNakaSen.visible = _loc4_["Vest"]["_visible"][0];
         if(_loc4_["Vest"]["_visible"][0])
         {
            _loc3_.dou.VestDou.gotoAndStop(Dress_data.VestData[_loc5_]["dou"] + 1);
         }
         else
         {
            _loc3_.dou.VestDou.gotoAndStop(1);
         }
         if(_loc4_["Vest"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc7_]["skirt"] != 0)
         {
            _loc3_.dou.VestOnePiece.visible = true;
            _loc3_.dou.VestOnePiece.Skirt.gotoAndStop(Dress_data.ObjData["onePieceSkirt"][_loc7_]["skirt"] + 1);
            new Huku_Skirt(param1,"Vest");
         }
         else
         {
            _loc3_.dou.VestOnePiece.visible = false;
            _loc3_.dou.VestOnePiece.Skirt.gotoAndStop(1);
         }
         _loc3_.mune.VestMune2.visible = _loc4_["Vest"]["_visible"][0];
         if(Dress_data.VestData[_loc5_]["mune_top"] == 0)
         {
            _loc3_.mune.VestMune2.visible = false;
            _loc3_.mune.VestMune2.gotoAndStop(1);
         }
         else if(_loc4_["Vest"]["_visible"][0])
         {
            _loc3_.mune.VestMune2.gotoAndStop(Dress_data.VestData[_loc5_]["mune_top"] + 1);
         }
         else
         {
            _loc3_.mune.VestMune2.gotoAndStop(1);
         }
         _loc3_.mune.VestMune.visible = _loc4_["Vest"]["_visible"][0];
         _loc3_.mune.SodeVestMune0_0.visible = _loc4_["Vest"]["_visible"][0];
         _loc3_.mune.SodeVestMune1_0.visible = _loc4_["Vest"]["_visible"][0];
         _loc3_.mune.SodeVestMune0_1.visible = _loc4_["Vest"]["_visible"][0];
         _loc3_.mune.SodeVestMune1_1.visible = _loc4_["Vest"]["_visible"][0];
         if(Dress_data.VestData[_loc5_]["mune"] == 0)
         {
            _loc3_.mune.VestMune.visible = false;
            _loc3_.mune.SodeVestMune0_0.visible = false;
            _loc3_.mune.SodeVestMune1_0.visible = false;
            _loc3_.mune.SodeVestMune0_1.visible = false;
            _loc3_.mune.SodeVestMune1_1.visible = false;
            _loc3_.mune.VestMune.gotoAndStop(1);
            _loc3_.mune.SodeVestMune0_0.gotoAndStop(1);
            _loc3_.mune.SodeVestMune1_0.gotoAndStop(1);
            _loc3_.mune.SodeVestMune0_1.gotoAndStop(1);
            _loc3_.mune.SodeVestMune1_1.gotoAndStop(1);
         }
         else if(_loc4_["Vest"]["_visible"][0])
         {
            _loc3_.mune.VestMune.gotoAndStop(Dress_data.VestData[_loc5_]["mune"] + 1);
         }
         else
         {
            _loc3_.mune.VestMune.gotoAndStop(1);
            _loc3_.mune.SodeVestMune0_0.gotoAndStop(1);
            _loc3_.mune.SodeVestMune1_0.gotoAndStop(1);
            _loc3_.mune.SodeVestMune0_1.gotoAndStop(1);
            _loc3_.mune.SodeVestMune1_1.gotoAndStop(1);
         }
         _loc3_.mune.VestEri.visible = _loc4_["Vest"]["_visible"][0];
         if(Dress_data.VestData[_loc5_]["eri"] == 0)
         {
            _loc3_.mune.VestEri.visible = false;
            _loc3_.mune.VestEri.gotoAndStop(1);
         }
         else if(_loc4_["Vest"]["_visible"][0])
         {
            _loc3_.mune.VestEri.gotoAndStop(Dress_data.VestData[_loc5_]["eri"] + 1);
         }
         else
         {
            _loc3_.mune.VestEri.gotoAndStop(1);
         }
         try
         {
            _loc3_.dou.VestDou.ysyatu.gotoAndStop(Dress_data.ObjData["onePieceSkirt"][_loc7_]["dou"]);
         }
         catch(myError:Error)
         {
         }
         if(!_loc4_["Vest"]["_visible"][0] || param2 == "menu")
         {
            _loc4_["Vest"]["_g0"] = 0;
            _loc4_["Vest"]["_g1"] = 0;
         }
         if(Dress_data.ObjData["onePieceSkirt"][_loc7_]["dou"] == 0)
         {
            _loc3_.dou.VestDou.visible = false;
            _loc3_.dou.vestUeSen.visible = false;
            _loc3_.dou.vestNakaSen.visible = false;
            _loc3_.dou.VestDou.gotoAndStop(1);
         }
         try
         {
            _loc3_.dou.VestDou.ysyatu.ysyatu.gotoAndStop(_loc4_["Vest"]["_g0"] + 1);
         }
         catch(myError:Error)
         {
         }
         new Huku_CorsetDou(param1);
         new SetClass(param1,"VestDouOption","tab");
         new SetClass(param1,"VestBreastOption","tab");
         new Chara_SetSize(param1,"BreastWidthY","move");
         new Huku_MjiSen(param1);
         new Huku_NecktieCut(param1);
         new Chara_ColorClass(param1,"Necktie");
         new Huku_NippleGMask(param1,0);
         new Huku_NippleGMask(param1,1);
         _loc8_ = 0;
         while(_loc8_ <= 1)
         {
            new Huku_Ude("Vest",param1,_loc8_);
            new Huku_Ude("Ysyatu",param1,_loc8_);
            new Huku_Ude("Tsyatu",param1,_loc8_);
            _loc8_++;
         }
         try
         {
            _loc3_.dou.vestNakaSen.mask = _loc3_.dou.VestDou.ysyatu.ysyatu.ysyatu.maskMc;
            _loc3_.dou.vestUeSen.ueSen.mask = _loc3_.dou.VestDou.ysyatu.ysyatu.ysyatu.maskMcUe;
         }
         catch(myError:Error)
         {
         }
         new Chara_ColorClass(param1,"VestDou");
         new Chara_ColorClass(param1,"VestTop");
         new Chara_ColorClass(param1,"VestArm1");
         new Chara_ColorClass(param1,"VestArm2");
      }
   }
}
