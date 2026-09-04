package menu
{
   import parameter.Dress_data;
   
   public class Huku_Seihuku
   {
       
      
      public function Huku_Seihuku(param1:int)
      {
         var _loc4_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc5_:int = _loc3_["Seihuku"]["_menu"];
         _loc2_.dou.SeihukuDou.visible = _loc3_["Seihuku"]["_visible"][0];
         _loc2_.dou.seihukuUeSen.visible = _loc3_["Seihuku"]["_visible"][0];
         _loc2_.dou.seihukuNakaSen.Sen.visible = _loc3_["Seihuku"]["_visible"][0];
         if(Dress_data.SeihukuData[_loc5_]["dou"] == 0)
         {
            _loc2_.dou.SeihukuDou.visible = false;
            _loc2_.dou.seihukuUeSen.visible = false;
            _loc2_.dou.seihukuNakaSen.Sen.visible = false;
            _loc2_.dou.SeihukuDou.gotoAndStop(1);
         }
         else if(_loc3_["Seihuku"]["_visible"][0])
         {
            _loc2_.dou.SeihukuDou.gotoAndStop(Dress_data.SeihukuData[_loc5_]["dou"] + 1);
         }
         else
         {
            _loc2_.dou.SeihukuDou.gotoAndStop(1);
         }
         _loc2_.mune.SeihukuMune.visible = _loc3_["Seihuku"]["_visible"][0];
         _loc2_.mune.SodeSeihukuMune0_0.visible = _loc3_["Seihuku"]["_visible"][0];
         _loc2_.mune.SodeSeihukuMune1_0.visible = _loc3_["Seihuku"]["_visible"][0];
         _loc2_.mune.SodeSeihukuMune0_1.visible = _loc3_["Seihuku"]["_visible"][0];
         _loc2_.mune.SodeSeihukuMune1_1.visible = _loc3_["Seihuku"]["_visible"][0];
         if(Dress_data.SeihukuData[_loc5_]["mune"] == 0)
         {
            _loc2_.mune.SeihukuMune.visible = false;
            _loc2_.mune.SodeSeihukuMune0_0.visible = false;
            _loc2_.mune.SodeSeihukuMune1_0.visible = false;
            _loc2_.mune.SodeSeihukuMune0_1.visible = false;
            _loc2_.mune.SodeSeihukuMune1_1.visible = false;
            _loc2_.mune.SeihukuMune.gotoAndStop(1);
            _loc2_.mune.SodeSeihukuMune0_0.gotoAndStop(1);
            _loc2_.mune.SodeSeihukuMune1_0.gotoAndStop(1);
            _loc2_.mune.SodeSeihukuMune0_1.gotoAndStop(1);
            _loc2_.mune.SodeSeihukuMune1_1.gotoAndStop(1);
         }
         else if(_loc3_["Seihuku"]["_visible"][0])
         {
            _loc2_.mune.SeihukuMune.gotoAndStop(Dress_data.SeihukuData[_loc5_]["mune"] + 1);
         }
         else
         {
            _loc2_.mune.SeihukuMune.gotoAndStop(1);
            _loc2_.mune.SodeSeihukuMune0_0.gotoAndStop(1);
            _loc2_.mune.SodeSeihukuMune1_0.gotoAndStop(1);
            _loc2_.mune.SodeSeihukuMune0_1.gotoAndStop(1);
            _loc2_.mune.SodeSeihukuMune1_1.gotoAndStop(1);
         }
         if(!_loc3_["Seihuku"]["_visible"][0])
         {
            _loc3_["Seihuku"]["_g0"] = 0;
         }
         new Chara_SetSize(param1,"BreastWidthY","move");
         try
         {
            _loc2_.dou.SeihukuDou.seihuku.gotoAndStop(_loc3_["Seihuku"]["_g0"] + 1);
         }
         catch(myError:Error)
         {
         }
         new Huku_CorsetDou(param1);
         if(_loc3_["Seihuku"]["_visible"][0])
         {
            try
            {
               _loc2_.dou.seihukuNakaSen.mask = _loc2_.dou.SeihukuDou.seihuku.seihuku.maskMc;
            }
            catch(myError:Error)
            {
            }
            _loc4_ = 0;
            while(_loc4_ <= 3)
            {
               try
               {
                  _loc2_.mune.SeihukuMune.ysyatu0.ysyatu["right" + _loc4_].visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc2_.mune.SeihukuMune.ysyatu1.ysyatu["left" + _loc4_].visible = false;
               }
               catch(myError:Error)
               {
               }
               _loc4_++;
            }
            try
            {
               _loc2_.dou.seihukuUeSen.ueSen.mask = _loc2_.dou.SeihukuDou.seihuku.seihuku.maskMcUe;
            }
            catch(myError:Error)
            {
            }
         }
         new SetClass(param1,"SeihukuDouOption","tab");
         new SetClass(param1,"SeihukuBreastOption","tab");
         new Huku_NecktieCut(param1);
         new Huku_NippleGMask(param1,0);
         new Huku_NippleGMask(param1,1);
         _loc4_ = 0;
         while(_loc4_ <= 1)
         {
            new Huku_Ude("Seihuku",param1,_loc4_);
            new Huku_Ude("Vest",param1,_loc4_);
            new Huku_Ude("Ysyatu",param1,_loc4_);
            new Huku_Ude("Tsyatu",param1,_loc4_);
            _loc4_++;
         }
         if(_loc3_["Seihuku"]["_visible"][0])
         {
            new Chara_ColorClass(param1,"SeihukuDou");
            new Chara_ColorClass(param1,"SeihukuArm1");
            new Chara_ColorClass(param1,"SeihukuArm2");
         }
      }
   }
}
