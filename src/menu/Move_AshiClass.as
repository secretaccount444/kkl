package menu
{
   import parameter.Dress_data;
   
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
               this.charaAdd["ashi" + i].thigh.thigh.sen.mask = this.charaAdd["ashi" + i].leg.leg.maskMc0;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.foot.sen.mask = this.charaAdd["ashi" + i].leg.leg.maskMc;
               this.charaAdd["ashi" + i].foot.foot.LegBand_sen.mask = this.charaAdd["ashi" + i].leg.leg.maskMcLegBand;
               this.charaAdd["ashi" + i].foot.foot.socks_sen.mask = this.charaAdd["ashi" + i].leg.leg.maskMcSocks;
               this.charaAdd["ashi" + i].foot.foot.tights_sen.mask = this.charaAdd["ashi" + i].leg.leg.maskMcTights;
            }
            catch(myError:Error)
            {
               try
               {
                  charaAdd["ashi" + i].foot.foot.sen.mask = null;
                  charaAdd["ashi" + i].foot.foot.LegBand_sen.mask = null;
                  charaAdd["ashi" + i].foot.foot.socks_sen.mask = null;
                  charaAdd["ashi" + i].foot.foot.tights_sen.mask = null;
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
            this.charaAdd["ashi" + i].thigh.thigh.Tights.num = i;
            this.charaAdd["ashi" + i].thigh.thigh.Tights.mouseChildren = false;
            this.charaAdd["ashi" + i].shiri.shiri.Tights.num = i;
            this.charaAdd["ashi" + i].shiri.shiri.Tights.mouseChildren = false;
            this.charaAdd["ashi" + i].foot.foot.Tights.num = i;
            this.charaAdd["ashi" + i].foot.foot.Tights.mouseChildren = false;
            try
            {
               this.charaAdd["ashi" + i].leg.leg.Tights.num = i;
               this.charaAdd["ashi" + i].leg.leg.Tights.mouseChildren = false;
            }
            catch(myError:Error)
            {
            }
            this.charaAdd["ashi" + i].thigh.thigh.Zubon.num = i;
            this.charaAdd["ashi" + i].thigh.thigh.Zubon.mouseChildren = false;
            this.charaAdd["ashi" + i].thigh.thigh.Zubon.buttonMode = true;
            this.charaAdd["ashi" + i].thigh.thigh.Socks.num = i;
            this.charaAdd["ashi" + i].thigh.thigh.Socks.mouseChildren = false;
            this.charaAdd["ashi" + i].thigh.thigh.Socks.buttonMode = true;
            this.charaAdd["ashi" + i].thigh.thigh.SocksTop.num = i;
            this.charaAdd["ashi" + i].thigh.thigh.SocksTop.mouseChildren = false;
            this.charaAdd["ashi" + i].thigh.thigh.SocksTop.buttonMode = true;
            try
            {
               this.charaAdd["ashi" + i].thigh.thigh.Pantu.num = i;
               this.charaAdd["ashi" + i].thigh.thigh.Pantu.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.thigh.Pantu.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            this.charaAdd["ashi" + i].foot.foot.Kutu.num = i;
            this.charaAdd["ashi" + i].foot.foot.Kutu.mouseChildren = false;
            this.charaAdd["ashi" + i].foot.foot.Kutu.buttonMode = true;
            this.charaAdd["ashi" + i].foot.foot.KutuUnder.num = i;
            this.charaAdd["ashi" + i].foot.foot.KutuUnder.mouseChildren = false;
            this.charaAdd["ashi" + i].foot.foot.KutuUnder.buttonMode = true;
            this.charaAdd["ashi" + i].foot.foot.Socks.num = i;
            this.charaAdd["ashi" + i].foot.foot.Socks.mouseChildren = false;
            this.charaAdd["ashi" + i].foot.foot.Socks.buttonMode = true;
            try
            {
               this.charaAdd["ashi" + i].leg.leg.Socks.num = i;
               this.charaAdd["ashi" + i].leg.leg.Socks.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.leg.Socks.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg_huku.leg.Socks.num = i;
               this.charaAdd["ashi" + i].leg_huku.leg.Socks.mouseChildren = false;
               this.charaAdd["ashi" + i].leg_huku.leg.Socks.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg_huku.leg.Kutu.num = i;
               this.charaAdd["ashi" + i].leg_huku.leg.Kutu.mouseChildren = false;
               this.charaAdd["ashi" + i].leg_huku.leg.Kutu.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.leg.Kutu.num = i;
               this.charaAdd["ashi" + i].leg.leg.Kutu.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.leg.Kutu.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg_huku.leg.LegBand.num = i;
               this.charaAdd["ashi" + i].leg_huku.leg.LegBand.mouseChildren = false;
               this.charaAdd["ashi" + i].leg_huku.leg.LegBand.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.leg.LegBand.num = i;
               this.charaAdd["ashi" + i].leg.leg.LegBand.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.leg.LegBand.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.foot.LegBand.num = i;
               this.charaAdd["ashi" + i].foot.foot.LegBand.mouseChildren = false;
               this.charaAdd["ashi" + i].foot.foot.LegBand.buttonMode = true;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg_huku.leg.Zubon.num = i;
               this.charaAdd["ashi" + i].leg_huku.leg.Zubon.mouseChildren = false;
               this.charaAdd["ashi" + i].leg_huku.leg.Zubon.buttonMode = true;
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
         i = 0;
         while(i <= 1)
         {
            try
            {
               this.charaAdd["ashi" + i].thigh.thigh.hitTest.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.thigh.hitTest.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.thigh.color1.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.thigh.color1.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.thigh.kage1.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.thigh.kage1.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.thigh.color0.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.thigh.color0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.thigh.kage0.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.thigh.kage0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.thigh.Tights_Swap.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.thigh.Tights_Swap.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].thigh.thigh.sen.mouseChildren = false;
               this.charaAdd["ashi" + i].thigh.thigh.sen.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.leg.color0.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.leg.color0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.leg.maskMc.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.leg.maskMc.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.leg.maskMcTights.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.leg.maskMcTights.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.leg.maskMcSocks.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.leg.maskMcSocks.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].leg.leg.maskMcLegBand.mouseChildren = false;
               this.charaAdd["ashi" + i].leg.leg.maskMcLegBand.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.foot.hitTest.mouseChildren = false;
               this.charaAdd["ashi" + i].foot.foot.hitTest.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.foot.color0.mouseChildren = false;
               this.charaAdd["ashi" + i].foot.foot.color0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.foot.kage0.mouseChildren = false;
               this.charaAdd["ashi" + i].foot.foot.kage0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].foot.foot.sen.mouseChildren = false;
               this.charaAdd["ashi" + i].foot.foot.sen.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + i].shiri.shiri.kage0.mouseChildren = false;
               this.charaAdd["ashi" + i].shiri.shiri.kage0.mouseEnabled = false;
            }
            catch(myError:Error)
            {
            }
            i++;
         }
      }
   }
}
