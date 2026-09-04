package menu
{
   import parameter.Dress_data;
   
   public class Huku_Ysyatu
   {
       
      
      public function Huku_Ysyatu(param1:int, param2:String)
      {
         var charaData:Object = null;
         var i:int = 0;
         var charaNum:int = param1;
         var clickTarget:String = param2;
         super();
         var charaAdd:Object = MenuClass.charaAdd[charaNum];
         charaData = MenuClass.charaData[charaNum];
         var menuNum:int = charaData["Ysyatu"]["_menu"];
         var skirtMenuNum:int = charaData["YsyatuSkirt"]["_menu"];
         var douMenuNum:int = charaData["YsyatuDou"]["_menu"];
         if(charaData["Ysyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][skirtMenuNum]["skirt"] != 0)
         {
            charaAdd.dou.YsyatuOnePiece.visible = true;
            charaAdd.dou.YsyatuOnePiece.Skirt.gotoAndStop(Dress_data.ObjData["onePieceSkirt"][skirtMenuNum]["skirt"] + 1);
            new Huku_Skirt(charaNum,"Ysyatu");
         }
         else
         {
            charaAdd.dou.YsyatuOnePiece.visible = false;
            charaAdd.dou.YsyatuOnePiece.Skirt.gotoAndStop(1);
         }
         charaAdd.dou.YsyatuDou.visible = charaData["Ysyatu"]["_visible"][0];
         charaAdd.dou.ysyatuUeSen.visible = charaData["Ysyatu"]["_visible"][0];
         charaAdd.dou.ysyatuNakaSen.visible = charaData["Ysyatu"]["_visible"][0];
         if(charaData["Ysyatu"]["_visible"][0])
         {
            charaAdd.dou.YsyatuDou.gotoAndStop(Dress_data.YsyatuData[menuNum]["dou"] + 1);
         }
         else
         {
            charaAdd.dou.YsyatuDou.gotoAndStop(1);
         }
         charaAdd.mune.YsyatuMune.visible = charaData["Ysyatu"]["_visible"][0];
         charaAdd.mune.SodeYsyatuMune0_0.visible = charaData["Ysyatu"]["_visible"][0];
         charaAdd.mune.SodeYsyatuMune1_0.visible = charaData["Ysyatu"]["_visible"][0];
         charaAdd.mune.SodeYsyatuMune0_1.visible = charaData["Ysyatu"]["_visible"][0];
         charaAdd.mune.SodeYsyatuMune1_1.visible = charaData["Ysyatu"]["_visible"][0];
         if(Dress_data.YsyatuData[menuNum]["mune"] == 0)
         {
            charaAdd.mune.YsyatuMune.visible = false;
            charaAdd.mune.YsyatuMune.gotoAndStop(1);
            charaAdd.mune.SodeYsyatuMune0_0.gotoAndStop(1);
            charaAdd.mune.SodeYsyatuMune1_0.gotoAndStop(1);
            charaAdd.mune.SodeYsyatuMune0_1.gotoAndStop(1);
            charaAdd.mune.SodeYsyatuMune1_1.gotoAndStop(1);
         }
         else if(charaData["Ysyatu"]["_visible"][0])
         {
            charaAdd.mune.YsyatuMune.gotoAndStop(Dress_data.YsyatuData[menuNum]["mune"] + 1);
         }
         else
         {
            charaAdd.mune.YsyatuMune.gotoAndStop(1);
            charaAdd.mune.SodeYsyatuMune0_0.gotoAndStop(1);
            charaAdd.mune.SodeYsyatuMune1_0.gotoAndStop(1);
            charaAdd.mune.SodeYsyatuMune0_1.gotoAndStop(1);
            charaAdd.mune.SodeYsyatuMune1_1.gotoAndStop(1);
         }
         charaAdd.mune.YsyatuMune2.visible = charaData["Ysyatu"]["_visible"][0];
         if(Dress_data.YsyatuData[menuNum]["mune_top"] == 0 || Dress_data.ObjData["YsyatuDou"][douMenuNum]["eri"] == 0)
         {
            charaAdd.mune.YsyatuMune2.visible = false;
            charaAdd.mune.YsyatuMune2.gotoAndStop(1);
         }
         else if(charaData["Ysyatu"]["_visible"][0])
         {
            charaAdd.mune.YsyatuMune2.gotoAndStop(Dress_data.YsyatuData[menuNum]["mune_top"] + 1);
         }
         else
         {
            charaAdd.mune.YsyatuMune2.gotoAndStop(1);
         }
         if(!charaData["Ysyatu"]["_visible"][0] || clickTarget == "menu")
         {
            charaData["Ysyatu"]["_g0"] = 0;
            charaData["Ysyatu"]["_g1"] = 0;
         }
         try
         {
            charaAdd.dou.YsyatuDou.ysyatu.gotoAndStop(Dress_data.ObjData["onePieceSkirt"][skirtMenuNum]["dou"]);
         }
         catch(myError:Error)
         {
         }
         new Huku_YsyatuIn(charaNum);
         if(Dress_data.ObjData["onePieceSkirt"][skirtMenuNum]["dou"] == 0)
         {
            charaAdd.dou.YsyatuDou.visible = false;
            charaAdd.dou.ysyatuUeSen.visible = false;
            charaAdd.dou.ysyatuNakaSen.visible = false;
            charaAdd.dou.YsyatuDou.gotoAndStop(1);
         }
         try
         {
            charaAdd.dou.YsyatuDou.ysyatu.ysyatu.gotoAndStop(charaData["Ysyatu"]["_g0"] + 1);
         }
         catch(myError:Error)
         {
         }
         new Huku_CorsetDou(charaNum);
         try
         {
            charaAdd.mune.YsyatuMune2.ysyatu.gotoAndStop(charaData["Ysyatu"]["_g1"] + 1);
         }
         catch(myError:Error)
         {
         }
         if(charaData["Ysyatu"]["_visible"][0])
         {
            try
            {
               MenuClass.menuData["YsyatuOption"] = charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.totalFrames - 1;
               new Tab_TextInClass(1,"YsyatuOption",MenuClass.menuData["YsyatuOption"]);
            }
            catch(myError:Error)
            {
            }
            try
            {
               charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.gotoAndStop(charaData["YsyatuOption"]["_menu"] + 1);
               charaAdd.mune.YsyatuMune2.ysyatu.ysyatu1.option.gotoAndStop(charaData["YsyatuOption"]["_menu"] + 1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.gotoAndStop(charaData["YsyatuOption"]["_number"] + 1);
               charaAdd.mune.YsyatuMune2.ysyatu.ysyatu1.option.option.gotoAndStop(charaData["YsyatuOption"]["_number"] + 1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.totalFrames - 1 < charaData["YsyatuOption"]["_number"])
               {
                  charaData["YsyatuOption"]["_number"] = charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option.totalFrames - 1;
               }
            }
            catch(myError:Error)
            {
               charaData["YsyatuOption"]["_number"] = 0;
            }
         }
         i = 0;
         while(i <= 1)
         {
            try
            {
               charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.option["right" + i].visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               charaAdd.mune.YsyatuMune2.ysyatu.ysyatu1.option.option["left" + i].visible = false;
            }
            catch(myError:Error)
            {
            }
            i++;
         }
         new Chara_SetSize(charaNum,"BreastWidthY","move");
         if(Dress_data.YsyatuData[menuNum]["eri"] == 0)
         {
            charaAdd.mune.YsyatuEri.visible = false;
            charaAdd.mune.YsyatuEri.gotoAndStop(1);
         }
         else
         {
            charaAdd.mune.YsyatuEri.visible = true;
            charaAdd.mune.YsyatuEri.gotoAndStop(Dress_data.YsyatuData[menuNum]["eri"] + 1);
            if(charaData["Ysyatu"]["_g1"] == 0)
            {
               charaAdd.mune.YsyatuEri.eriUra.gotoAndStop(1);
            }
            else
            {
               charaAdd.mune.YsyatuEri.eriUra.gotoAndStop(2);
            }
            try
            {
               charaAdd.mune.YsyatuEri.eriUra.eriUra.gotoAndStop(charaData["YsyatuOption"]["_menu"] + 1);
            }
            catch(myError:Error)
            {
            }
         }
         if(!charaData["Ysyatu"]["_visible"][0])
         {
            charaAdd.mune.YsyatuEri.gotoAndStop(1);
         }
         var tabStr:Array = new Array(Math.round(49 * charaData["LeftArm"]["_meter"] / 100),Math.round(49 * charaData["RightArm"]["_meter"] / 100));
         i = 0;
         while(i <= 1)
         {
            charaAdd["handm0_" + i].kataYsyatu2Mask.gotoAndStop(tabStr[i] + 1);
            i++;
         }
         i = 0;
         while(i <= 2)
         {
            try
            {
               charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0["right" + i].visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               charaAdd.mune.YsyatuMune2.ysyatu.ysyatu1["left" + i].visible = false;
            }
            catch(myError:Error)
            {
            }
            i++;
         }
         i = 0;
         while(i <= 2)
         {
            try
            {
               charaAdd.mune.YsyatuMune.ysyatu0.ysyatu["m_right_color" + i + "_0"].visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               charaAdd.mune.YsyatuMune.ysyatu1.ysyatu["m_left_color" + i + "_0"].visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               charaAdd.mune.YsyatuMune.ysyatu0.ysyatu["m_right_kage" + i + "_0"].visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               charaAdd.mune.YsyatuMune.ysyatu1.ysyatu["m_left_kage" + i + "_0"].visible = false;
            }
            catch(myError:Error)
            {
            }
            i++;
         }
         i = 0;
         while(i <= 3)
         {
            try
            {
               charaAdd.mune.YsyatuMune.ysyatu0.ysyatu["right" + i].visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               charaAdd.mune.YsyatuMune.ysyatu1.ysyatu["left" + i].visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               charaAdd.mune.YsyatuMune.ysyatu0.ysyatu["right" + i].visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               charaAdd.mune.YsyatuMune.ysyatu1.ysyatu["left" + i].visible = false;
            }
            catch(myError:Error)
            {
            }
            i++;
         }
         new SetClass(charaNum,"YsyatuDouOption","tab");
         new SetClass(charaNum,"YsyatuBreastOption","tab");
         new Huku_YsyatuKata(charaNum);
         new Huku_MjiSen(charaNum);
         new Huku_Necktie(charaNum);
         new Huku_NippleGMask(charaNum,0);
         new Huku_NippleGMask(charaNum,1);
         i = 0;
         while(i <= 1)
         {
            new Huku_Ude("Ysyatu",charaNum,i);
            new Huku_Ude("Tsyatu",charaNum,i);
            i++;
         }
         try
         {
            charaAdd.dou.ysyatuNakaSen.mask = charaAdd.dou.YsyatuDou.ysyatu.ysyatu.ysyatu.maskMc;
            charaAdd.dou.ysyatuUeSen.ueSen.mask = charaAdd.dou.YsyatuDou.ysyatu.ysyatu.ysyatu.maskMcUe;
         }
         catch(myError:Error)
         {
         }
         new Chara_ColorClass(charaNum,"YsyatuDou");
         new Chara_ColorClass(charaNum,"YsyatuTop");
         new Chara_ColorClass(charaNum,"YsyatuArm1");
         new Chara_ColorClass(charaNum,"YsyatuArm2");
      }
   }
}
