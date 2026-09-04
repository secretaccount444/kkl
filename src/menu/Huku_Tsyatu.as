package menu
{
   import parameter.Dress_data;
   
   public class Huku_Tsyatu
   {
       
      
      public function Huku_Tsyatu(param1:int, param2:String)
      {
         var _loc9_:int = 0;
         super();
         var _loc3_:Object = MenuClass.charaAdd[param1];
         var _loc4_:Object;
         var _loc5_:int = (_loc4_ = MenuClass.charaData[param1])["Tsyatu"]["_menu"];
         var _loc6_:int = _loc4_["TsyatuDou"]["_menu"];
         var _loc7_:int = _loc4_["TsyatuSkirt"]["_menu"];
         var _loc8_:int = Dress_data.TsyatuData[_loc5_]["onePiece"];
         if(_loc4_["Tsyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc7_]["skirt"] != 0)
         {
            _loc3_.dou.TsyatuOnePiece.visible = true;
            _loc3_.dou.TsyatuOnePiece.Skirt.gotoAndStop(Dress_data.ObjData["onePieceSkirt"][_loc7_]["skirt"] + 1);
            new Huku_Skirt(param1,"Tsyatu");
         }
         else
         {
            _loc3_.dou.TsyatuOnePiece.visible = false;
            _loc3_.dou.TsyatuOnePiece.Skirt.gotoAndStop(1);
         }
         _loc3_.dou.TsyatuDou.visible = _loc4_["Tsyatu"]["_visible"][0];
         _loc3_.dou.tsyatuUeSen.visible = _loc4_["Tsyatu"]["_visible"][0];
         _loc3_.dou.tsyatuNakaSen.visible = _loc4_["Tsyatu"]["_visible"][0];
         if(_loc4_["Tsyatu"]["_visible"][0])
         {
            _loc3_.dou.TsyatuDou.gotoAndStop(Dress_data.TsyatuData[_loc5_]["dou"] + 1);
         }
         else
         {
            _loc3_.dou.TsyatuDou.gotoAndStop(1);
         }
         _loc3_.mune.TsyatuMune.visible = _loc4_["Tsyatu"]["_visible"][0];
         _loc3_.mune.SodeTsyatuMune0_0.visible = _loc4_["Tsyatu"]["_visible"][0];
         _loc3_.mune.SodeTsyatuMune1_0.visible = _loc4_["Tsyatu"]["_visible"][0];
         _loc3_.mune.SodeTsyatuMune0_1.visible = _loc4_["Tsyatu"]["_visible"][0];
         _loc3_.mune.SodeTsyatuMune1_1.visible = _loc4_["Tsyatu"]["_visible"][0];
         if(Dress_data.TsyatuData[_loc5_]["mune"] == 0)
         {
            _loc3_.mune.TsyatuMune.visible = false;
            _loc3_.mune.SodeTsyatuMune0_0.visible = false;
            _loc3_.mune.SodeTsyatuMune1_0.visible = false;
            _loc3_.mune.SodeTsyatuMune0_1.visible = false;
            _loc3_.mune.SodeTsyatuMune1_1.visible = false;
            _loc3_.mune.TsyatuMune.gotoAndStop(1);
            _loc3_.mune.SodeTsyatuMune0_0.gotoAndStop(1);
            _loc3_.mune.SodeTsyatuMune1_0.gotoAndStop(1);
            _loc3_.mune.SodeTsyatuMune0_1.gotoAndStop(1);
            _loc3_.mune.SodeTsyatuMune1_1.gotoAndStop(1);
         }
         else if(_loc4_["Tsyatu"]["_visible"][0])
         {
            _loc3_.mune.TsyatuMune.gotoAndStop(Dress_data.TsyatuData[_loc5_]["mune"] + 1);
         }
         else
         {
            _loc3_.mune.TsyatuMune.gotoAndStop(1);
            _loc3_.mune.SodeTsyatuMune0_0.gotoAndStop(1);
            _loc3_.mune.SodeTsyatuMune1_0.gotoAndStop(1);
            _loc3_.mune.SodeTsyatuMune0_1.gotoAndStop(1);
            _loc3_.mune.SodeTsyatuMune1_1.gotoAndStop(1);
         }
         try
         {
            _loc3_.dou.TsyatuDou.ysyatu.gotoAndStop(Dress_data.ObjData["onePieceSkirt"][_loc7_]["dou"]);
         }
         catch(myError:Error)
         {
         }
         if(!_loc4_["Tsyatu"]["_visible"][0] || param2 == "menu")
         {
            _loc4_["Tsyatu"]["_g0"] = 0;
            _loc4_["Tsyatu"]["_g1"] = 0;
         }
         if(Dress_data.ObjData["onePieceSkirt"][_loc7_]["dou"] == 0)
         {
            _loc3_.dou.TsyatuDou.visible = false;
            _loc3_.dou.tsyatuUeSen.visible = false;
            _loc3_.dou.tsyatuNakaSen.visible = false;
            _loc3_.dou.TsyatuDou.gotoAndStop(1);
         }
         try
         {
            _loc3_.dou.TsyatuDou.ysyatu.ysyatu.gotoAndStop(_loc4_["Tsyatu"]["_g0"] + 1);
         }
         catch(myError:Error)
         {
         }
         new Huku_CorsetDou(param1);
         new SetClass(param1,"TsyatuDouOption","tab");
         new SetClass(param1,"TsyatuBreastOption","tab");
         new Chara_SetSize(param1,"BreastWidthY","move");
         new Huku_MjiSen(param1);
         new Huku_YsyatuIn(param1);
         new Chara_ColorClass(param1,"Necktie");
         new Huku_NippleGMask(param1,0);
         new Huku_NippleGMask(param1,1);
         _loc9_ = 0;
         while(_loc9_ <= 1)
         {
            new Huku_Ude("Tsyatu",param1,_loc9_);
            _loc9_++;
         }
         try
         {
            _loc3_.dou.tsyatuNakaSen.mask = _loc3_.dou.TsyatuDou.ysyatu.ysyatu.ysyatu.maskMc;
            _loc3_.dou.tsyatuUeSen.ueSen.mask = _loc3_.dou.TsyatuDou.ysyatu.ysyatu.ysyatu.maskMcUe;
         }
         catch(myError:Error)
         {
         }
         new Chara_ColorClass(param1,"TsyatuDou");
         new Chara_ColorClass(param1,"TsyatuTop");
         new Chara_ColorClass(param1,"TsyatuArm1");
         new Chara_ColorClass(param1,"TsyatuArm2");
      }
   }
}
