package menu
{
   import parameter.Dress_data;
   import system.MeterPersent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class Move_AshiClass
   {
      
      public static var mjiCheck:int = 1;
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Move_AshiClass(param1:int, param2:String)
      {
         var i:int = 0;
         var j:int = 0;
         var menu_num:int = 0;
         var menu_num2:int = 0;
         var ashiSwapChild0:int = 0;
         var ashiSwapChild1:int = 0;
         var ashiChild:int = 0;
         var CharaNum:int = param1;
         var clickTarget:String = param2;
         super();
         this.charaNum = CharaNum;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(MenuClass.systemData["LinkAshi"]["_flag"] && (clickTarget == "menu" || clickTarget == "tab" || clickTarget == "random"))
         {
            this.charaData["Ashi2"]["_menu"] = this.charaData["Ashi"]["_menu"];
         }
         if(clickTarget == "tab")
         {
            menu_num = this.charaData["Ashi2"]["_menu"];
            menu_num2 = this.charaData["Ashi"]["_menu"];
            this.charaData["Ashi"]["_menu"] = menu_num;
            this.charaData["Ashi2"]["_menu"] = menu_num2;
         }
         else
         {
            menu_num = this.charaData["Ashi"]["_menu"];
            menu_num2 = this.charaData["Ashi2"]["_menu"];
         }
         var ashi0Child:int = this.charaAdd.getChildIndex(this.charaAdd.ashi0);
         var ashi1Child:int = this.charaAdd.getChildIndex(this.charaAdd.ashi1);
         this.charaAdd.ashi0.gotoAndStop(menu_num + 1);
         this.charaAdd.ashi1.gotoAndStop(menu_num2 + 1);
         var thinghNum:Array = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
         i = 0;
         while(i <= 1)
         {
            ashiSwapChild0 = this.charaAdd.getChildIndex(this.charaAdd["ashi0_swap" + i]);
            ashiSwapChild1 = this.charaAdd.getChildIndex(this.charaAdd["ashi1_swap" + i]);
            ashiChild = this.charaAdd.getChildIndex(this.charaAdd["ashi" + i]);
            if(thinghNum[i] == 2)
            {
               if(ashiSwapChild0 > ashiChild)
               {
                  this.charaAdd.swapChildren(this.charaAdd["ashi" + i],this.charaAdd["ashi0_swap" + i]);
               }
               ashiSwapChild1 = this.charaAdd.getChildIndex(this.charaAdd["ashi1_swap" + i]);
               ashiChild = this.charaAdd.getChildIndex(this.charaAdd["ashi" + i]);
               if(ashiSwapChild1 > ashiChild)
               {
                  this.charaAdd.swapChildren(this.charaAdd["ashi" + i],this.charaAdd["ashi1_swap" + i]);
               }
               this.charaAdd.dou.thighMask["thighMask" + i].gotoAndStop(2);
            }
            else if(thinghNum[i] == 1)
            {
               if(ashiSwapChild0 > ashiChild)
               {
                  this.charaAdd.swapChildren(this.charaAdd["ashi" + i],this.charaAdd["ashi0_swap" + i]);
               }
               ashiSwapChild1 = this.charaAdd.getChildIndex(this.charaAdd["ashi1_swap" + i]);
               ashiChild = this.charaAdd.getChildIndex(this.charaAdd["ashi" + i]);
               if(ashiSwapChild1 < ashiChild)
               {
                  this.charaAdd.swapChildren(this.charaAdd["ashi" + i],this.charaAdd["ashi1_swap" + i]);
               }
               this.charaAdd.dou.thighMask["thighMask" + i].gotoAndStop(2);
            }
            else
            {
               if(ashiSwapChild0 < ashiChild)
               {
                  this.charaAdd.swapChildren(this.charaAdd["ashi" + i],this.charaAdd["ashi0_swap" + i]);
               }
               ashiSwapChild1 = this.charaAdd.getChildIndex(this.charaAdd["ashi1_swap" + i]);
               ashiChild = this.charaAdd.getChildIndex(this.charaAdd["ashi" + i]);
               if(ashiSwapChild1 < ashiChild)
               {
                  this.charaAdd.swapChildren(this.charaAdd["ashi" + i],this.charaAdd["ashi1_swap" + i]);
               }
               this.charaAdd.dou.thighMask["thighMask" + i].gotoAndStop(1);
            }
            i++;
         }
         var peniSwapChild:int = this.charaAdd.getChildIndex(this.charaAdd.peni_swap);
         var peniChild:int = this.charaAdd.getChildIndex(this.charaAdd.peni);
         new Chara_Harabote(this.charaNum);
         if(thinghNum[0] >= 1 && thinghNum[1] >= 1)
         {
            this.charaAdd.dou.dou_shita.gotoAndStop(3);
            this.charaAdd.dou.VestDou.scaleY = 0.95;
            this.charaAdd.dou.YsyatuDou.scaleY = 0.95;
            this.charaAdd.dou.TsyatuDou.scaleY = 0.95;
            this.charaAdd.dou.SeihukuDou.scaleY = 0.95;
            this.charaAdd.dou.VestDou.y = -570.15;
            this.charaAdd.dou.YsyatuDou.y = -570.15;
            this.charaAdd.dou.TsyatuDou.y = -570.15;
            this.charaAdd.dou.dou_Skirt.y = -8;
            this.charaAdd.dou.dou_Skirt.Zubon.y = -385.8;
            if(thinghNum[0] == 1 && thinghNum[1] == 1)
            {
               this.charaAdd.dou.dou_shitaHuku.Pantu.y = -372;
               this.charaAdd.dou.dou_shitaHuku.Pantu.scaleY = 1.25;
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku.Pantu.y = -360;
               this.charaAdd.dou.dou_shitaHuku.Pantu.scaleY = 1;
            }
            this.charaAdd.dou.dou_shitaHuku.Bura_hukin.scaleY = 0.95;
            this.charaAdd.dou.hukin.scaleY = 0.95;
            this.charaAdd.dou.dou_shitaHuku.Bura_hukin.y = -485;
            this.charaAdd.dou.hukin.y = -485;
            new Huku_Pantu(this.charaNum,"Pantu");
            new Huku_Pantu(this.charaNum,"Spantu");
            new Chara_ColorClass(this.charaNum,"Spantu");
            new Chara_ColorClass(this.charaNum,"Pantu");
            new Huku_TightsMask(this.charaNum);
            if(peniSwapChild > peniChild)
            {
               this.charaAdd.swapChildren(this.charaAdd.peni,this.charaAdd.peni_swap);
            }
            new Chara_ColorClass(this.charaNum,"Body");
            try
            {
               this.charaAdd.dou.dou_shitaHuku.SG.SG.y = 7;
            }
            catch(myError:Error)
            {
            }
            this.charaAdd.dou.dou_shitaHuku.SG.sen.gotoAndStop(2);
            this.charaAdd.dou.dou_shitaHuku.SG.maskMc.gotoAndStop(2);
         }
         else if(thinghNum[0] >= 1 || thinghNum[1] >= 1)
         {
            this.charaAdd.dou.dou_shita.gotoAndStop(2);
            this.charaAdd.dou.VestDou.scaleY = 0.96;
            this.charaAdd.dou.YsyatuDou.scaleY = 0.96;
            this.charaAdd.dou.TsyatuDou.scaleY = 0.96;
            this.charaAdd.dou.SeihukuDou.scaleY = 0.96;
            this.charaAdd.dou.VestDou.y = -570.15;
            this.charaAdd.dou.YsyatuDou.y = -570.15;
            this.charaAdd.dou.TsyatuDou.y = -570.15;
            this.charaAdd.dou.dou_Skirt.y = -4;
            this.charaAdd.dou.dou_Skirt.Zubon.y = -382.8;
            this.charaAdd.dou.dou_shitaHuku.Pantu.y = -360;
            this.charaAdd.dou.dou_shitaHuku.Pantu.scaleY = 1;
            this.charaAdd.dou.dou_shitaHuku.Bura_hukin.scaleY = 0.96;
            this.charaAdd.dou.dou_shitaHuku.Bura_hukin.scaleY = 0.96;
            this.charaAdd.dou.hukin.scaleY = 0.96;
            this.charaAdd.dou.dou_shitaHuku.Bura_hukin.y = -485;
            this.charaAdd.dou.hukin.y = -485;
            new Huku_Pantu(this.charaNum,"Pantu");
            new Huku_Pantu(this.charaNum,"Spantu");
            new Chara_ColorClass(this.charaNum,"Spantu");
            new Chara_ColorClass(this.charaNum,"Pantu");
            new Huku_TightsMask(this.charaNum);
            if(peniSwapChild > peniChild)
            {
               this.charaAdd.swapChildren(this.charaAdd.peni,this.charaAdd.peni_swap);
            }
            new Chara_ColorClass(this.charaNum,"Body");
            try
            {
               this.charaAdd.dou.dou_shitaHuku.SG.SG.y = 9;
            }
            catch(myError:Error)
            {
            }
            this.charaAdd.dou.dou_shitaHuku.SG.sen.gotoAndStop(2);
            this.charaAdd.dou.dou_shitaHuku.SG.maskMc.gotoAndStop(2);
         }
         else
         {
            this.charaAdd.dou.dou_shita.gotoAndStop(1);
            this.charaAdd.dou.VestDou.scaleY = 1;
            this.charaAdd.dou.YsyatuDou.scaleY = 1;
            this.charaAdd.dou.TsyatuDou.scaleY = 1;
            this.charaAdd.dou.SeihukuDou.scaleY = 1;
            this.charaAdd.dou.VestDou.y = -575.15;
            this.charaAdd.dou.YsyatuDou.y = -575.15;
            this.charaAdd.dou.TsyatuDou.y = -575.15;
            this.charaAdd.dou.dou_Skirt.y = 1.25;
            this.charaAdd.dou.dou_Skirt.Zubon.y = -385.8;
            this.charaAdd.dou.dou_shitaHuku.Pantu.y = -360;
            this.charaAdd.dou.dou_shitaHuku.Pantu.scaleY = 1;
            this.charaAdd.dou.dou_shitaHuku.Bura_hukin.scaleY = 1;
            this.charaAdd.dou.hukin.scaleY = 1;
            this.charaAdd.dou.dou_shitaHuku.Bura_hukin.y = -482;
            this.charaAdd.dou.hukin.y = -482;
            new Huku_Pantu(this.charaNum,"Pantu");
            new Huku_Pantu(this.charaNum,"Spantu");
            new Chara_ColorClass(this.charaNum,"Spantu");
            new Chara_ColorClass(this.charaNum,"Pantu");
            new Huku_TightsMask(this.charaNum);
            if(peniSwapChild < peniChild)
            {
               this.charaAdd.swapChildren(this.charaAdd.peni,this.charaAdd.peni_swap);
            }
            new Chara_ColorClass(this.charaNum,"Body");
            try
            {
               this.charaAdd.dou.dou_shitaHuku.SG.SG.y = 24;
            }
            catch(myError:Error)
            {
            }
            this.charaAdd.dou.dou_shitaHuku.SG.sen.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.SG.maskMc.gotoAndStop(1);
         }
         new Move_BodyYClass(this.charaNum);
         new Move_HeadYClass(this.charaNum);
         new Huku_PantuAlpha(this.charaNum);
         if(thinghNum[0] == 0 && thinghNum[1] == 0)
         {
            if(this.charaData["Ashi"]["_reversal"])
            {
               if(ashi0Child > ashi1Child)
               {
                  this.charaAdd.swapChildren(this.charaAdd.ashi0,this.charaAdd.ashi1);
               }
            }
            else if(ashi0Child < ashi1Child)
            {
               this.charaAdd.swapChildren(this.charaAdd.ashi0,this.charaAdd.ashi1);
            }
         }
         i = 0;
         while(i <= 1)
         {
            try
            {
               this.charaAdd["ashi" + i].thigh.actual.thigh.sen.mask = this.charaAdd["ashi" + i].leg.actual.leg.maskMc0;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.actual.foot.sen.mask = this.charaAdd["ashi" + i].leg.actual.leg.maskMc;
               this.charaAdd["ashi" + i].foot.actual.foot.LegBand_sen.mask = this.charaAdd["ashi" + i].leg.actual.leg.maskMcLegBand;
               this.charaAdd["ashi" + i].foot.actual.foot.socks_sen.mask = this.charaAdd["ashi" + i].leg.actual.leg.maskMcSocks;
               this.charaAdd["ashi" + i].foot.actual.foot.tights_sen.mask = this.charaAdd["ashi" + i].leg.actual.leg.maskMcTights;
            }
            catch(myError:Error)
            {
               try
               {
                  charaAdd["ashi" + i].foot.actual.foot.sen.mask = null;
                  charaAdd["ashi" + i].foot.actual.foot.LegBand_sen.mask = null;
                  charaAdd["ashi" + i].foot.actual.foot.socks_sen.mask = null;
                  charaAdd["ashi" + i].foot.actual.foot.tights_sen.mask = null;
               }
               catch(myError:Error)
               {
               }
            }
            i++;
         }
         new Huku_ZubonAshi(this.charaNum,0);
         new Huku_ZubonAshi(this.charaNum,1);
         new Huku_PantuAshi(this.charaNum,"Pantu");
         new Huku_PantuAshi(this.charaNum,"Spantu");
         new Chara_SetSize(this.charaNum,"HipWidth",clickTarget);
         new Chara_SetSize(this.charaNum,"AshiWidth",clickTarget);
         new Chara_SetSize(this.charaNum,"BodyHeight",clickTarget);
         new Move_Head(this.charaNum);
         new Huku_TightsClick(this.charaNum);
         i = 0;
         while(i <= 1)
         {
            this.charaAdd["ashi" + i].thigh.actual.thigh.Tights.num = i;
            this.charaAdd["ashi" + i].thigh.actual.thigh.Tights.mouseChildren = false;
            this.charaAdd["ashi" + i].shiri.actual.shiri.Tights.num = i;
            this.charaAdd["ashi" + i].shiri.actual.shiri.Tights.mouseChildren = false;
            this.charaAdd["ashi" + i].foot.actual.foot.Tights.num = i;
            this.charaAdd["ashi" + i].foot.actual.foot.Tights.mouseChildren = false;
            try
            {
               this.charaAdd["ashi" + i].leg.actual.leg.Tights.num = i;
               this.charaAdd["ashi" + i].leg.actual.leg.Tights.mouseChildren = false;
            }
            catch(myError:Error)
            {
            }
            this.charaAdd["ashi" + i].thigh.actual.thigh.Zubon.num = i;
            this.charaAdd["ashi" + i].thigh.actual.thigh.Zubon.mouseChildren = false;
            this.charaAdd["ashi" + i].thigh.actual.thigh.Zubon.buttonMode = true;
            this.charaAdd["ashi" + i].thigh.actual.thigh.Socks.num = i;
            this.charaAdd["ashi" + i].thigh.actual.thigh.Socks.mouseChildren = false;
            this.charaAdd["ashi" + i].thigh.actual.thigh.Socks.buttonMode = true;
            this.charaAdd["ashi" + i].thigh.actual.thigh.SocksTop.num = i;
            this.charaAdd["ashi" + i].thigh.actual.thigh.SocksTop.mouseChildren = false;
            this.charaAdd["ashi" + i].thigh.actual.thigh.SocksTop.buttonMode = true;
            try
            {
               this.charaAdd["ashi" + i].thigh.actual.thigh.Pantu.num = i;
               this.charaAdd["ashi" + i].thigh.actual.thigh.Pantu.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.actual.thigh.Pantu.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            this.charaAdd["ashi" + i].foot.actual.foot.Kutu.num = i;
            this.charaAdd["ashi" + i].foot.actual.foot.Kutu.mouseChildren = false;
            this.charaAdd["ashi" + i].foot.actual.foot.Kutu.buttonMode = true;
            this.charaAdd["ashi" + i].foot.actual.foot.KutuUnder.num = i;
            this.charaAdd["ashi" + i].foot.actual.foot.KutuUnder.mouseChildren = false;
            this.charaAdd["ashi" + i].foot.actual.foot.KutuUnder.buttonMode = true;
            this.charaAdd["ashi" + i].foot.actual.foot.Socks.num = i;
            this.charaAdd["ashi" + i].foot.actual.foot.Socks.mouseChildren = false;
            this.charaAdd["ashi" + i].foot.actual.foot.Socks.buttonMode = true;
            try
            {
               this.charaAdd["ashi" + i].leg.actual.leg.Socks.num = i;
               this.charaAdd["ashi" + i].leg.actual.leg.Socks.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.actual.leg.Socks.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg_huku.actual.leg.Socks.num = i;
               this.charaAdd["ashi" + i].leg_huku.actual.leg.Socks.mouseChildren = false;
               this.charaAdd["ashi" + i].leg_huku.actual.leg.Socks.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg_huku.actual.leg.Kutu.num = i;
               this.charaAdd["ashi" + i].leg_huku.actual.leg.Kutu.mouseChildren = false;
               this.charaAdd["ashi" + i].leg_huku.actual.leg.Kutu.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.actual.leg.Kutu.num = i;
               this.charaAdd["ashi" + i].leg.actual.leg.Kutu.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.actual.leg.Kutu.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg_huku.actual.leg.LegBand.num = i;
               this.charaAdd["ashi" + i].leg_huku.actual.leg.LegBand.mouseChildren = false;
               this.charaAdd["ashi" + i].leg_huku.actual.leg.LegBand.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.actual.leg.LegBand.num = i;
               this.charaAdd["ashi" + i].leg.actual.leg.LegBand.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.actual.leg.LegBand.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.actual.foot.LegBand.num = i;
               this.charaAdd["ashi" + i].foot.actual.foot.LegBand.mouseChildren = false;
               this.charaAdd["ashi" + i].foot.actual.foot.LegBand.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg_huku.actual.leg.Zubon.num = i;
               this.charaAdd["ashi" + i].leg_huku.actual.leg.Zubon.mouseChildren = false;
               this.charaAdd["ashi" + i].leg_huku.actual.leg.Zubon.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            i++;
         }
         new Chara_ColorClass(this.charaNum,"Ashi");
         new Chara_ColorClass(this.charaNum,"PantuAshi");
         new Chara_ColorClass(this.charaNum,"SpantuAshi");
         new Chara_ColorClass(this.charaNum,"Zubon");
         new SetClass(this.charaNum,"Socks0","huku");
         new SetClass(this.charaNum,"Socks1","huku");
         new SetClass(this.charaNum,"Tights","tab");
         new SetClass(this.charaNum,"Kutu0","huku");
         new SetClass(this.charaNum,"Kutu1","huku");
         new SetClass(this.charaNum,"LegBand0","huku");
         new SetClass(this.charaNum,"LegBand1","huku");
         new SetClass(this.charaNum,"VibratorMove","huku");
         Hair_HairExSet.updateLegs(this.charaNum);
         Huku_RibonSet.updateLegs(this.charaNum);
         Add_LoadURL2.updateLegs(this.charaNum);

         PartLayering.fixup(this.charaNum, ["thigh", "leg", "foot"]);

         if(this.charaData["Skirt"]["_visible"][0])
         {
            new Huku_Skirt(this.charaNum,"Skirt");
         }
         var douMenuNum:int = this.charaData["TsyatuSkirt"]["_menu"];
         if(this.charaData["Tsyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][douMenuNum]["skirt"] != 0)
         {
            new Huku_Skirt(this.charaNum,"Tsyatu");
         }
         douMenuNum = this.charaData["YsyatuSkirt"]["_menu"];
         if(this.charaData["Ysyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][douMenuNum]["skirt"] != 0)
         {
            new Huku_Skirt(this.charaNum,"Ysyatu");
         }
         douMenuNum = this.charaData["VestSkirt"]["_menu"];
         if(this.charaData["Vest"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][douMenuNum]["skirt"] != 0)
         {
            new Huku_Skirt(this.charaNum,"Vest");
         }
         new Chara_s(this.charaNum,"tab");

         updateLegRotation(this.charaNum);

         i = 0;
         while(i <= 1)
         {
            try
            {
               this.charaAdd["ashi" + i].thigh.actual.thigh.hitTest.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.actual.thigh.hitTest.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.actual.thigh.color1.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.actual.thigh.color1.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.actual.thigh.kage1.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.actual.thigh.kage1.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.actual.thigh.color0.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.actual.thigh.color0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.actual.thigh.kage0.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.actual.thigh.kage0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.actual.thigh.Tights_Swap.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.actual.thigh.Tights_Swap.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.actual.thigh.sen.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.actual.thigh.sen.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.actual.leg.color0.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.actual.leg.color0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.actual.leg.maskMc.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.actual.leg.maskMc.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.actual.leg.maskMcTights.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.actual.leg.maskMcTights.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.actual.leg.maskMcSocks.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.actual.leg.maskMcSocks.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.actual.leg.maskMcLegBand.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.actual.leg.maskMcLegBand.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.actual.foot.hitTest.mouseChildren = false;
               this.charaAdd["ashi" + i].foot.actual.foot.hitTest.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.actual.foot.color0.mouseChildren = false;
               this.charaAdd["ashi" + i].foot.actual.foot.color0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.actual.foot.kage0.mouseChildren = false;
               this.charaAdd["ashi" + i].foot.actual.foot.kage0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.actual.foot.sen.mouseChildren = false;
               this.charaAdd["ashi" + i].foot.actual.foot.sen.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].shiri.actual.shiri.kage0.mouseChildren = false;
               this.charaAdd["ashi" + i].shiri.actual.shiri.kage0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            i++;
         }
      }

      public static var thighDims = {
         886:  [63.85,  206.85],
         892:  [63.45,  207.65],
         1457: [63.25,  212.60],
         1495: [63.70,  211.25],
         1688: [66.45,  190.60],
         1818: [70.25,  178.30],
         1881: [69.10,  128.85],
         2122: [111.50, 360.95],
         2145: [0, 0]
      };

      /* pose = raw _menu number from charaData */
      public static function resolveThighType(pose: uint) : uint {
         if ((pose <= 1) || (pose >= 6 && pose <= 12) || (pose >= 43 && pose <= 49)) {
            return 886;
         } else if (pose >= 2 && pose <= 5) {
            return 892;
         } else if (pose >= 13 && pose <= 42) {
            return 1457;
         } else if (pose >= 50 && pose <= 59) {
            return 1495;
         } else if (pose >= 60 && pose <= 71) {
            return 1688;
         } else if (pose >= 72 && pose <= 79) {
            return 1818;
         } else if ((pose >= 80 && pose <= 87) || (pose == 99)) {
            return 1881;
         } else if ((pose >= 88 && pose <= 98)) {
            return 2122;
         } else if ((pose >= 100 && pose <= 102)) {
            return 2145;
         } else {
            return 0;
         }
      }

      public static function rotationMatrix(deg: Number) : Matrix {
         var rad = deg * (Math.PI / 180.0);
         return new Matrix(Math.cos(rad), Math.sin(rad), -Math.sin(rad), Math.cos(rad), 0, 0);
      }

      public static function rotateSpriteOffsetVector(target, source, rotation: Number, offset: Point, scale: Point): Point {
         var alignOffset = new Point(target.x - source.x, target.y - source.y);
         var len2 = new Point(alignOffset.x * scale.x, alignOffset.y * scale.y);
         return rotationMatrix(rotation).transformPoint(len2.add(offset)).subtract(alignOffset);
      }

      public static function getOffsetDataVector(character: int, side: String, part: String) : Point {
         new MeterPersent(-25, 25, side + part + "OffsetX", character);
         var x = MeterPersent.MeterPersentNum;
         new MeterPersent(-25, 25, side + part + "OffsetY", character);
         var y = MeterPersent.MeterPersentNum;
         return new Point(x, y);
      }

      public static function getScaleVector(character: int, side: String, part: String) : Point {
         new MeterPersent(0.75, 1.25, side + part + "ScaleX", character);
         var x = MeterPersent.MeterPersentNum;
         new MeterPersent(0.75, 1.25, side + part + "ScaleY", character);
         var y = MeterPersent.MeterPersentNum;
         return new Point(x, y);
      }

      public static function getScaleAdjustmentVector(character: int, side: String, part: String) : Point {
         var scaleVec = getScaleVector(character, side, part);
         if (part == "Thigh") {
            return new Point((scaleVec.x - 1) * 3.25, (scaleVec.y - 1) * 15);
         } else if (part == "Leg") {
            return new Point(0, (scaleVec.y - 1) * 15);
            // return new Point((scaleVec.x - 1) * -0.65, (scaleVec.y - 1) * 15);
         }

         return null;
      }

      public static function updateSingleLegRotation(character: int, side: int) {
         var sideName = "";
         var ashi = null;
         var charaData = MenuClass.charaData[character];

         if (side == 0) {
            sideName = "Left";
            ashi = MenuClass.charaAdd[character].ashi0;
         } else {
            sideName = "Right";
            ashi = MenuClass.charaAdd[character].ashi1;
         }

         var thighRot = charaData[sideName + "ThighRotation"]["_meter"];
         var legRot = charaData[sideName + "LegRotation"]["_meter"];
         var footRot = charaData[sideName + "FootRotation"]["_meter"];

         var thighOffset = getOffsetDataVector(character, sideName, "Thigh");
         var thighScale = getScaleVector(character, sideName, "Thigh");
         var thighScaleOffset = getScaleAdjustmentVector(character, sideName, "Thigh");
         if (thighScaleOffset) {
            thighOffset = thighOffset.add(thighScaleOffset);
         } else {
            trace("Could not compute " + sideName + " thigh scale offset vector?")
         }

         ashi.thigh.actual.x = thighOffset.x;
         ashi.thigh.actual.y = thighOffset.y;
         ashi.thigh.actual.scaleX = thighScale.x;
         ashi.thigh.actual.scaleY = thighScale.y;
         ashi.thigh.actual.rotation = thighRot;
         ashi.thigh.actual.visible = charaData[sideName + "ThighVisible"]["_visible"][0];
         ashi.shiri.actual.visible = charaData[sideName + "ThighVisible"]["_visible"][0];

         if (ashi.leg) {
            var legOffset = getOffsetDataVector(character, sideName, "Leg");
            var legScale = getScaleVector(character, sideName, "Leg");
            var legScaleOffset = getScaleAdjustmentVector(character, sideName, "Thigh");
            if (legScaleOffset) {
               legOffset = legOffset.add(legScaleOffset);
            } else {
               trace("Could not compute " + sideName + " leg scale offset vector?")
            }

            var legPos = rotateSpriteOffsetVector(ashi.leg, ashi.thigh, thighRot, legOffset, thighScale).add(thighOffset);

            ashi.leg.actual.x = legPos.x;
            ashi.leg.actual.y = legPos.y;
            ashi.leg.actual.scaleX = legScale.x;
            ashi.leg.actual.scaleY = legScale.y;
            ashi.leg.actual.rotation = thighRot + legRot;
            ashi.leg.actual.visible = charaData[sideName + "LegVisible"]["_visible"][0];

            if (ashi.leg_huku) {
               var legHukuPos = rotateSpriteOffsetVector(ashi.leg_huku, ashi.thigh, thighRot, legOffset, thighScale).add(thighOffset);
               ashi.leg_huku.actual.x = legHukuPos.x;
               ashi.leg_huku.actual.y = legHukuPos.y;
               ashi.leg_huku.actual.scaleX = legScale.x;
               ashi.leg_huku.actual.scaleY = legScale.y;
               ashi.leg_huku.actual.rotation = thighRot + legRot;
               ashi.leg_huku.actual.visible = charaData[sideName + "LegVisible"]["_visible"][0];
            }

            if (ashi.foot) {
               var footScale = getScaleVector(character, sideName, "Foot");
               var footPos = rotateSpriteOffsetVector(ashi.foot, ashi.leg, thighRot + legRot, getOffsetDataVector(character, sideName, "Foot"), legScale).add(legPos);
               ashi.foot.actual.x = footPos.x;
               ashi.foot.actual.y = footPos.y;
               ashi.foot.actual.scaleX = footScale.x;
               ashi.foot.actual.scaleY = footScale.y;
               ashi.foot.actual.rotation = thighRot + legRot + footRot;
            }
         } else if (ashi.foot) {
            var footScale = getScaleVector(character, sideName, "Foot");
            var footPos = rotateSpriteOffsetVector(ashi.foot, ashi.thigh, thighRot, getOffsetDataVector(character, sideName, "Foot"), thighScale).add(thighOffset);
            ashi.foot.actual.x = footPos.x;
            ashi.foot.actual.y = footPos.y;
            ashi.foot.actual.scaleX = footScale.x;
            ashi.foot.actual.scaleY = footScale.y;
            ashi.foot.actual.rotation = thighRot + footRot;
         }

         if (ashi.foot) {
            ashi.foot.actual.visible = charaData[sideName + "FootVisible"]["_visible"][0];
         }
      }

      public static function updateLegRotation(character: int) {
         updateSingleLegRotation(character, 0);
         updateSingleLegRotation(character, 1);
      }
   }
}
