package menu
{
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class Huku_LegBand
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_LegBand(param1:int, param2:int, param3:String)
      {
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(param2 == 0)
         {
            this.SetFc(0);
            if(MenuClass.systemData["LinkLegBand"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
            {
               this.LinkFc();
            }
         }
         else if(MenuClass.systemData["LinkLegBand"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
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
         this.charaData["LegBand1"]["_menu"] = this.charaData["LegBand0"]["_menu"];
         this.charaData["LegBand1"]["_visible"][0] = this.charaData["LegBand0"]["_visible"][0];
         _loc1_ = 0;
         while(_loc1_ <= 2)
         {
            try
            {
               this.charaData["LegBand1"]["_color" + _loc1_][0] = this.charaData["LegBand0"]["_color" + _loc1_][0];
               Dress_data.DressCharaData[this.charaNum]["LegBand1"][this.charaData["LegBand0"]["_menu"]]["_color" + _loc1_] = this.clone(Dress_data.DressCharaData[this.charaNum]["LegBand0"][this.charaData["LegBand0"]["_menu"]]["_color" + _loc1_]);
               Dress_data.DressCharaData[this.charaNum]["LegBand1"][this.charaData["LegBand0"]["_menu"]]["_color" + _loc1_][1] = Dress_data.DressCharaData[this.charaNum]["LegBand0"][this.charaData["LegBand0"]["_menu"]]["_color" + _loc1_][1];
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
         if(this.charaData["LegBand" + param1]["_visible"][0])
         {
            _loc2_ = this.charaData["LegBand" + param1]["_menu"];
            try
            {
               this.charaAdd["ashi" + param1].leg_huku.actual.leg.LegBand.gotoAndStop(1);
               this.charaAdd["ashi" + param1].leg_huku.actual.leg.LegBand.gotoAndStop(Dress_data.LegBandData[_loc2_]["leg"] + 1);
               if(Dress_data.LegBandData[_loc2_]["leg"] == 0)
               {
                  this.charaAdd["ashi" + param1].leg_huku.actual.leg.LegBand.visible = false;
                  this.charaAdd["ashi" + param1].leg_huku.actual.leg.LegBand.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["ashi" + param1].leg_huku.actual.leg.LegBand.visible = true;
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + param1].leg.actual.leg.LegBand.gotoAndStop(1);
               this.charaAdd["ashi" + param1].leg.actual.leg.LegBand.gotoAndStop(Dress_data.LegBandData[_loc2_]["leg_under"] + 1);
               if(Dress_data.LegBandData[_loc2_]["leg_under"] == 0)
               {
                  this.charaAdd["ashi" + param1].leg.actual.leg.LegBand.visible = false;
                  this.charaAdd["ashi" + param1].leg.actual.leg.LegBand.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["ashi" + param1].leg.actual.leg.LegBand.visible = true;
               }
            }
            catch(myError:Error)
            {
            }
            this.charaAdd["ashi" + param1].foot.actual.foot.LegBand.gotoAndStop(1);
            this.charaAdd["ashi" + param1].foot.actual.foot.LegBand_sen.gotoAndStop(1);
            this.charaAdd["ashi" + param1].foot.actual.foot.LegBand.gotoAndStop(Dress_data.LegBandData[_loc2_]["foot"] + 1);
            this.charaAdd["ashi" + param1].foot.actual.foot.LegBand_sen.gotoAndStop(Dress_data.LegBandData[_loc2_]["foot"] + 1);
            if(Dress_data.LegBandData[_loc2_]["foot"] == 0)
            {
               this.charaAdd["ashi" + param1].foot.actual.foot.LegBand.visible = false;
               this.charaAdd["ashi" + param1].foot.actual.foot.LegBand_sen.visible = false;
               this.charaAdd["ashi" + param1].foot.actual.foot.LegBand.gotoAndStop(1);
               this.charaAdd["ashi" + param1].foot.actual.foot.LegBand_sen.gotoAndStop(1);
            }
            else
            {
               this.charaAdd["ashi" + param1].foot.actual.foot.LegBand.visible = true;
               this.charaAdd["ashi" + param1].foot.actual.foot.LegBand_sen.visible = true;
            }
         }
         else
         {
            try
            {
               this.charaAdd["ashi" + param1].leg_huku.actual.leg.LegBand.visible = false;
               this.charaAdd["ashi" + param1].leg_huku.actual.leg.LegBand.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + param1].leg.actual.leg.LegBand.visible = false;
               this.charaAdd["ashi" + param1].leg.actual.leg.LegBand.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + param1].foot.actual.foot.LegBand.visible = false;
               this.charaAdd["ashi" + param1].foot.actual.foot.LegBand_sen.visible = false;
               this.charaAdd["ashi" + param1].foot.actual.foot.LegBand.gotoAndStop(1);
               this.charaAdd["ashi" + param1].foot.actual.foot.LegBand_sen.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
         }
         new Chara_ColorClass(this.charaNum,"LegBand" + param1);
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
