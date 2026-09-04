package menu
{
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class Huku_Kutu
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_Kutu(param1:int, param2:int, param3:String)
      {
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(param2 == 0)
         {
            this.SetFc(0);
            if(MenuClass.systemData["LinkKutu"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
            {
               this.LinkFc();
            }
         }
         else if(MenuClass.systemData["LinkKutu"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
         {
            this.LinkFc();
         }
         else
         {
            this.SetFc(1);
         }
      }
      
      private function LinkFc() : void
      {
         var _loc1_:int = 0;
         this.charaData["Kutu1"]["_menu"] = this.charaData["Kutu0"]["_menu"];
         this.charaData["KutuLong1"]["_menu"] = this.charaData["KutuLong0"]["_menu"];
         this.charaData["Kutu1"]["_visible"][0] = this.charaData["Kutu0"]["_visible"][0];
         _loc1_ = 0;
         for(; _loc1_ <= 2; _loc1_++)
         {
            try
            {
               this.charaData["Kutu1"]["_color" + _loc1_][0] = this.charaData["Kutu0"]["_color" + _loc1_][0];
               this.charaData["KutuLong1"]["_color" + _loc1_][0] = this.charaData["KutuLong0"]["_color" + _loc1_][0];
               Dress_data.DressCharaData[this.charaNum]["Kutu1"][this.charaData["Kutu0"]["_menu"]]["_color" + _loc1_] = this.clone(Dress_data.DressCharaData[this.charaNum]["Kutu0"][this.charaData["Kutu0"]["_menu"]]["_color" + _loc1_]);
               Dress_data.DressCharaData[this.charaNum]["Kutu1"][this.charaData["Kutu0"]["_menu"]]["_color" + _loc1_][1] = Dress_data.DressCharaData[this.charaNum]["Kutu0"][this.charaData["Kutu0"]["_menu"]]["_color" + _loc1_][1];
               try
               {
                  Dress_data.DressCharaData[this.charaNum]["KutuLong1"][this.charaData["KutuLong0"]["_menu"]]["_color" + _loc1_] = this.clone(Dress_data.DressCharaData[this.charaNum]["KutuLong0"][this.charaData["KutuLong0"]["_menu"]]["_color" + _loc1_]);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  Dress_data.DressCharaData[this.charaNum]["KutuLong1"][this.charaData["KutuLong0"]["_menu"]]["_color" + _loc1_][1] = Dress_data.DressCharaData[this.charaNum]["KutuLong0"][this.charaData["KutuLong0"]["_menu"]]["_color" + _loc1_][1];
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         this.SetFc(1);
      }
      
      private function SetFc(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.charaData["Kutu" + param1]["_visible"][0])
         {
            _loc3_ = Dress_data.menuCustom["Kutu" + param1].length - 1;
            _loc2_ = 0;
            while(_loc2_ <= _loc3_)
            {
               if(this.charaData["Kutu" + param1]["_menu"] == Dress_data.menuCustom["Kutu" + param1][_loc2_])
               {
                  Dress_data.menuCustomNum[this.charaNum]["Kutu" + param1] = _loc2_;
                  break;
               }
               _loc2_++;
            }
            this.charaData["Kutu" + param1]["_menu"] = Dress_data.menuCustom["Kutu" + param1][Dress_data.menuCustomNum[this.charaNum]["Kutu" + param1]];
            _loc3_ = Dress_data.menuCustom["KutuLong" + param1].length - 1;
            _loc2_ = 0;
            while(_loc2_ <= _loc3_)
            {
               if(this.charaData["KutuLong" + param1]["_menu"] == Dress_data.menuCustom["KutuLong" + param1][_loc2_])
               {
                  Dress_data.menuCustomNum[this.charaNum]["KutuLong" + param1] = _loc2_;
                  break;
               }
               _loc2_++;
            }
            this.charaData["KutuLong" + param1]["_menu"] = Dress_data.menuCustom["KutuLong" + param1][Dress_data.menuCustomNum[this.charaNum]["KutuLong" + param1]];
            if(Dress_data.KutuData[this.charaData["Kutu" + param1]["_menu"]]["footSen"])
            {
               try
               {
                  this.charaAdd["ashi" + param1].leg.leg.Kutu.visible = false;
                  this.charaAdd["ashi" + param1].leg.leg.Kutu.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["ashi" + param1].leg_huku.leg.Kutu.visible = false;
                  this.charaAdd["ashi" + param1].leg_huku.leg.Kutu.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  if(Dress_data.KutuLongData[this.charaData["KutuLong" + param1]["_menu"]]["legUnder"] == 0)
                  {
                     this.charaAdd["ashi" + param1].leg.leg.Kutu.visible = false;
                     this.charaAdd["ashi" + param1].leg.leg.Kutu.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd["ashi" + param1].leg.leg.Kutu.visible = true;
                     this.charaAdd["ashi" + param1].leg.leg.Kutu.gotoAndStop(Dress_data.KutuLongData[this.charaData["KutuLong" + param1]["_menu"]]["legUnder"] + 1);
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["ashi" + param1].leg_huku.leg.Kutu.visible = true;
                  this.charaAdd["ashi" + param1].leg_huku.leg.Kutu.gotoAndStop(this.charaData["KutuLong" + param1]["_menu"] + 2);
               }
               catch(myError:Error)
               {
               }
            }
            this.charaAdd["ashi" + param1].foot.foot.Kutu.gotoAndStop(this.charaData["Kutu" + param1]["_menu"] + 2);
            this.charaAdd["ashi" + param1].foot.foot.Kutu.visible = true;
            this.charaAdd["ashi" + param1].foot.foot.KutuUnder.gotoAndStop(Dress_data.KutuData[this.charaData["Kutu" + param1]["_menu"]]["footUnder"] + 1);
            if(Dress_data.KutuData[this.charaData["Kutu" + param1]["_menu"]]["footUnder"] == 0)
            {
               this.charaAdd["ashi" + param1].foot.foot.KutuUnder.visible = false;
               this.charaAdd["ashi" + param1].foot.foot.KutuUnder.gotoAndStop(1);
            }
            else
            {
               this.charaAdd["ashi" + param1].foot.foot.KutuUnder.visible = true;
            }
            try
            {
               this.charaAdd["ashi" + param1].foot.foot.Kutu.footMask.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + param1].leg_huku.leg.Kutu.sen.mask = this.charaAdd["ashi" + param1].foot.foot.Kutu.footMask;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               this.charaAdd["ashi" + param1].leg.leg.Kutu.visible = false;
               this.charaAdd["ashi" + param1].leg.leg.Kutu.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + param1].leg_huku.leg.Kutu.visible = false;
               this.charaAdd["ashi" + param1].leg_huku.leg.Kutu.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            this.charaAdd["ashi" + param1].foot.foot.Kutu.visible = false;
            this.charaAdd["ashi" + param1].foot.foot.Kutu.gotoAndStop(1);
            this.charaAdd["ashi" + param1].foot.foot.KutuUnder.visible = false;
            this.charaAdd["ashi" + param1].foot.foot.KutuUnder.gotoAndStop(1);
            if(this.charaData["Socks" + param1]["_visible"][0])
            {
               this.charaAdd["ashi" + param1].foot.foot.socks_sen.visible = true;
               this.charaAdd["ashi" + param1].foot.foot.socks_sen.gotoAndStop(Dress_data.SocksData[this.charaData["Socks" + param1]["_menu"]]["footSen"] + 1);
            }
            if(this.charaData["Tights"]["_visible"][0])
            {
               this.charaAdd["ashi" + param1].foot.foot.tights_sen.visible = true;
               this.charaAdd["ashi" + param1].foot.foot.tights_sen.gotoAndStop(Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["footSen"] + 1);
            }
            else
            {
               this.charaAdd["ashi" + param1].foot.foot.tights_sen.visible = false;
               this.charaAdd["ashi" + param1].foot.foot.tights_sen.gotoAndStop(1);
            }
            this.charaAdd["ashi" + param1].foot.foot.sen.visible = true;
         }
         new Huku_KutuVisible(this.charaNum,param1);
         new Huku_ZubonLeg(this.charaNum,param1);
         new Chara_ColorClass(this.charaNum,"Kutu" + param1);
      }
      
      private function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
