package menu
{
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class Huku_Socks
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_Socks(param1:int, param2:int, param3:String)
      {
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(param2 == 0)
         {
            this.SetFc(0);
            if(MenuClass.systemData["LinkSocks"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
            {
               this.LinkFc();
            }
         }
         else if(MenuClass.systemData["LinkSocks"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
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
         this.charaData["Socks1"]["_menu"] = this.charaData["Socks0"]["_menu"];
         this.charaData["Socks1"]["_visible"][0] = this.charaData["Socks0"]["_visible"][0];
         _loc1_ = 0;
         while(_loc1_ <= 2)
         {
            try
            {
               this.charaData["Socks1"]["_color" + _loc1_][0] = this.charaData["Socks0"]["_color" + _loc1_][0];
               Dress_data.DressCharaData[this.charaNum]["Socks1"][this.charaData["Socks0"]["_menu"]]["_color" + _loc1_] = this.clone(Dress_data.DressCharaData[this.charaNum]["Socks0"][this.charaData["Socks0"]["_menu"]]["_color" + _loc1_]);
               Dress_data.DressCharaData[this.charaNum]["Socks1"][this.charaData["Socks0"]["_menu"]]["_color" + _loc1_][1] = Dress_data.DressCharaData[this.charaNum]["Socks0"][this.charaData["Socks0"]["_menu"]]["_color" + _loc1_][1];
            }
            catch(myError:Error)
            {
            }
            _loc1_++;
         }
         this.SetFc(1);
      }
      
      private function SetFc(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         try
         {
            _loc3_ = Dress_data.menuCustom["Socks" + param1].length - 1;
            _loc2_ = 0;
            while(_loc2_ <= _loc3_)
            {
               if(this.charaData["Socks" + param1]["_menu"] == Dress_data.menuCustom["Socks" + param1][_loc2_])
               {
                  Dress_data.menuCustomNum[this.charaNum]["Socks" + param1] = _loc2_;
                  break;
               }
               _loc2_++;
            }
            this.charaData["Socks" + param1]["_menu"] = Dress_data.menuCustom["Socks" + param1][Dress_data.menuCustomNum[this.charaNum]["Socks" + param1]];
            _loc4_ = this.charaData["Socks" + param1]["_menu"];
            if(this.charaData["Socks" + param1]["_visible"][0])
            {
               if(!Dress_data.SocksData[_loc4_]["thigh"])
               {
                  this.charaAdd["ashi" + param1].thigh.thigh.Socks.visible = false;
                  this.charaAdd["ashi" + param1].thigh.thigh.Socks.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["ashi" + param1].thigh.thigh.Socks.visible = true;
                  this.charaAdd["ashi" + param1].thigh.thigh.Socks.gotoAndStop(Dress_data.SocksData[_loc4_]["thigh"] + 1);
               }
               if(!Dress_data.SocksData[_loc4_]["foot"])
               {
                  this.charaAdd["ashi" + param1].foot.foot.Socks.visible = false;
                  this.charaAdd["ashi" + param1].foot.foot.Socks.gotoAndStop(1);
                  this.charaAdd["ashi" + param1].foot.foot.socks_sen.visible = false;
                  this.charaAdd["ashi" + param1].foot.foot.socks_sen.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["ashi" + param1].foot.foot.Socks.visible = true;
                  this.charaAdd["ashi" + param1].foot.foot.socks_sen.visible = true;
                  this.charaAdd["ashi" + param1].foot.foot.Socks.gotoAndStop(Dress_data.SocksData[_loc4_]["foot"] + 1);
                  this.charaAdd["ashi" + param1].foot.foot.socks_sen.gotoAndStop(Dress_data.SocksData[_loc4_]["footSen"] + 1);
               }
               try
               {
                  if(!Dress_data.SocksData[_loc4_]["leg"])
                  {
                     this.charaAdd["ashi" + param1].leg.leg.Socks.visible = false;
                     this.charaAdd["ashi" + param1].leg.leg.Socks.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd["ashi" + param1].leg.leg.Socks.visible = true;
                     this.charaAdd["ashi" + param1].leg.leg.Socks.gotoAndStop(Dress_data.SocksData[_loc4_]["leg"] + 1);
                  }
               }
               catch(myError:Error)
               {
               }
               if(!Dress_data.SocksData[_loc4_]["SocksTop"])
               {
                  this.charaAdd["ashi" + param1].thigh.thigh.SocksTop.visible = false;
                  this.charaAdd["ashi" + param1].thigh.thigh.SocksTop.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["ashi" + param1].thigh.thigh.SocksTop.visible = true;
                  this.charaAdd["ashi" + param1].thigh.thigh.SocksTop.gotoAndStop(Dress_data.SocksData[_loc4_]["SocksTop"] + 1);
               }
               try
               {
                  if(!Dress_data.SocksData[_loc4_]["legTop"])
                  {
                     this.charaAdd["ashi" + param1].leg_huku.leg.Socks.visible = false;
                     this.charaAdd["ashi" + param1].leg_huku.leg.Socks.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd["ashi" + param1].leg_huku.leg.Socks.visible = true;
                     this.charaAdd["ashi" + param1].leg_huku.leg.Socks.gotoAndStop(Dress_data.SocksData[_loc4_]["legTop"] + 1);
                  }
                  if(!Dress_data.SocksData[_loc4_]["legUnder"])
                  {
                     this.charaAdd["ashi" + param1].leg.leg.Socks_under.visible = false;
                     this.charaAdd["ashi" + param1].leg.leg.Socks_under.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd["ashi" + param1].leg.leg.Socks_under.visible = true;
                     this.charaAdd["ashi" + param1].leg.leg.Socks_under.gotoAndStop(Dress_data.SocksData[_loc4_]["legUnder"] + 1);
                  }
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               this.charaAdd["ashi" + param1].foot.foot.Socks.visible = false;
               this.charaAdd["ashi" + param1].foot.foot.Socks.gotoAndStop(1);
               this.charaAdd["ashi" + param1].foot.foot.socks_sen.visible = false;
               this.charaAdd["ashi" + param1].foot.foot.socks_sen.gotoAndStop(1);
               try
               {
                  this.charaAdd["ashi" + param1].leg_huku.leg.Socks.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["ashi" + param1].leg.leg.Socks_under.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["ashi" + param1].leg.leg.Socks.visible = false;
                  this.charaAdd["ashi" + param1].leg.leg.Socks.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
               this.charaAdd["ashi" + param1].thigh.thigh.Socks.visible = false;
               this.charaAdd["ashi" + param1].thigh.thigh.Socks.gotoAndStop(1);
               this.charaAdd["ashi" + param1].thigh.thigh.SocksTop.visible = false;
               this.charaAdd["ashi" + param1].thigh.thigh.SocksTop.gotoAndStop(1);
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            new Huku_KutuVisible(this.charaNum,0);
            new Huku_KutuVisible(this.charaNum,1);
         }
         catch(myError:Error)
         {
         }
         try
         {
            new Chara_ColorClass(this.charaNum,"Socks" + param1);
         }
         catch(myError:Error)
         {
         }
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
