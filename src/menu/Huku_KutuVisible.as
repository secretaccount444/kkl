package menu
{
   import parameter.Dress_data;
   
   public class Huku_KutuVisible
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_KutuVisible(param1:int, param2:int)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         if(this.charaData["Kutu" + param2]["_visible"][0])
         {
            _loc6_ = Dress_data.menuCustom["Kutu" + param2].length - 1;
            _loc5_ = 0;
            while(_loc5_ <= _loc6_)
            {
               if(this.charaData["Kutu" + param2]["_menu"] == Dress_data.menuCustom["Kutu" + param2][_loc5_])
               {
                  Dress_data.menuCustomNum[param1]["Kutu" + param2] = _loc5_;
                  break;
               }
               _loc5_++;
            }
            this.charaData["Kutu" + param2]["_menu"] = Dress_data.menuCustom["Kutu" + param2][Dress_data.menuCustomNum[param1]["Kutu" + param2]];
            _loc3_ = this.charaData["Kutu" + param2]["_menu"];
            _loc4_ = this.charaData["Socks" + param2]["_menu"];
            if(this.charaData["Socks" + param2]["_visible"][0])
            {
               if(Dress_data.SocksData[_loc4_]["foot"])
               {
                  this.charaAdd["ashi" + param2].foot.foot.socks_sen.visible = Dress_data.KutuData[_loc3_]["footSen"];
                  this.charaAdd["ashi" + param2].foot.foot.Socks.visible = Dress_data.KutuData[_loc3_]["footSen"];
                  if(Dress_data.KutuData[_loc3_]["footSen"])
                  {
                     this.charaAdd["ashi" + param2].foot.foot.socks_sen.gotoAndStop(Dress_data.SocksData[this.charaData["Socks" + param2]["_menu"]]["footSen"] + 1);
                     this.charaAdd["ashi" + param2].foot.foot.Socks.gotoAndStop(Dress_data.SocksData[this.charaData["Socks" + param2]["_menu"]]["foot"] + 1);
                  }
                  else
                  {
                     this.charaAdd["ashi" + param2].foot.foot.socks_sen.gotoAndStop(1);
                     this.charaAdd["ashi" + param2].foot.foot.Socks.gotoAndStop(1);
                  }
               }
               new Chara_ColorClass(param1,"Socks" + param2);
            }
            _loc4_ = this.charaData["Tights"]["_menu"];
            if(this.charaData["Tights"]["_visible"][0] && Dress_data.TightsData[_loc4_]["foot"])
            {
               this.charaAdd["ashi" + param2].foot.foot.tights_sen.visible = Dress_data.KutuData[_loc3_]["footSen"];
               this.charaAdd["ashi" + param2].foot.foot.Tights.visible = Dress_data.KutuData[_loc3_]["footSen"];
               if(Dress_data.KutuData[_loc3_]["footSen"])
               {
                  this.charaAdd["ashi" + param2].foot.foot.tights_sen.gotoAndStop(Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["footSen"] + 1);
                  this.charaAdd["ashi" + param2].foot.foot.Tights.gotoAndStop(Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["foot"] + 1);
                  new Chara_ColorClass(param1,"Tights");
               }
               else
               {
                  this.charaAdd["ashi" + param2].foot.foot.tights_sen.gotoAndStop(1);
                  this.charaAdd["ashi" + param2].foot.foot.Tights.gotoAndStop(1);
               }
            }
            this.charaAdd["ashi" + param2].foot.foot.sen.visible = Dress_data.KutuData[_loc3_]["footSen"];
            this.charaAdd["ashi" + param2].foot.foot.kage0.visible = Dress_data.KutuData[_loc3_]["footSen"];
            this.charaAdd["ashi" + param2].foot.foot.color0.visible = Dress_data.KutuData[_loc3_]["footSen"];
         }
         else
         {
            _loc4_ = this.charaData["Socks" + param2]["_menu"];
            if(this.charaData["Socks" + param2]["_visible"][0])
            {
               if(Dress_data.SocksData[_loc4_]["foot"])
               {
                  this.charaAdd["ashi" + param2].foot.foot.Socks.visible = true;
                  this.charaAdd["ashi" + param2].foot.foot.socks_sen.visible = true;
                  this.charaAdd["ashi" + param2].foot.foot.Socks.gotoAndStop(Dress_data.SocksData[this.charaData["Socks" + param2]["_menu"]]["foot"] + 1);
                  this.charaAdd["ashi" + param2].foot.foot.socks_sen.gotoAndStop(Dress_data.SocksData[this.charaData["Socks" + param2]["_menu"]]["footSen"] + 1);
               }
               new Chara_ColorClass(param1,"Socks" + param2);
            }
            _loc4_ = this.charaData["Tights"]["_menu"];
            if(!this.charaData["Tights"]["_visible"][0] || !Dress_data.TightsData[_loc4_]["foot"])
            {
               this.charaAdd["ashi" + param2].foot.foot.Tights.visible = false;
               this.charaAdd["ashi" + param2].foot.foot.tights_sen.visible = false;
               this.charaAdd["ashi" + param2].foot.foot.Tights.gotoAndStop(1);
               this.charaAdd["ashi" + param2].foot.foot.tights_sen.gotoAndStop(1);
            }
            else
            {
               this.charaAdd["ashi" + param2].foot.foot.Tights.visible = true;
               this.charaAdd["ashi" + param2].foot.foot.tights_sen.visible = true;
               this.charaAdd["ashi" + param2].foot.foot.Tights.gotoAndStop(Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["foot"] + 1);
               this.charaAdd["ashi" + param2].foot.foot.tights_sen.gotoAndStop(Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["footSen"] + 1);
               new Chara_ColorClass(param1,"Tights");
            }
            this.charaAdd["ashi" + param2].foot.foot.sen.visible = true;
            this.charaAdd["ashi" + param2].foot.foot.kage0.visible = true;
            this.charaAdd["ashi" + param2].foot.foot.color0.visible = true;
         }
      }
   }
}
