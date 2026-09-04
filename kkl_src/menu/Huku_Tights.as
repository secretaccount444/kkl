package menu
{
   import parameter.Dress_data;
   
   public class Huku_Tights
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_Tights(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         if(this.charaData["Tights"]["_visible"][0])
         {
            _loc3_ = Dress_data.menuCustom["Tights"].length - 1;
            _loc2_ = 0;
            while(_loc2_ <= _loc3_)
            {
               if(this.charaData["Tights"]["_menu"] == Dress_data.menuCustom["Tights"][_loc2_])
               {
                  Dress_data.menuCustomNum[param1]["Tights"] = _loc2_;
                  break;
               }
               _loc2_++;
            }
            this.charaData["Tights"]["_menu"] = Dress_data.menuCustom["Tights"][Dress_data.menuCustomNum[param1]["Tights"]];
            _loc6_ = this.charaData["Tights"]["_menu"];
            if(!Dress_data.TightsData[_loc6_]["Dou"])
            {
               this.charaAdd.dou.dou_shitaHuku.Tights.visible = false;
               this.charaAdd.dou.dou_shitaHuku.Tights.gotoAndStop(1);
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku.Tights.visible = true;
               this.charaAdd.dou.dou_shitaHuku.Tights.gotoAndStop(Dress_data.TightsData[_loc6_]["Dou"] + 1);
            }
            try
            {
               if(this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap0) > this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap1))
               {
                  this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Tights_swap0,this.charaAdd.dou.dou_shitaHuku.Tights_swap1);
               }
               if(this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap0) > this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap2))
               {
                  this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Tights_swap0,this.charaAdd.dou.dou_shitaHuku.Tights_swap2);
               }
               if(this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap1) > this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap2))
               {
                  this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Tights_swap1,this.charaAdd.dou.dou_shitaHuku.Tights_swap2);
               }
               if(this.charaData["Tights"]["_depth"] == 0)
               {
                  if(this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights) > this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap0))
                  {
                     this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Tights_swap0,this.charaAdd.dou.dou_shitaHuku.Tights);
                  }
               }
               else if(this.charaData["Tights"]["_depth"] == 1)
               {
                  if(this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights) < this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap0))
                  {
                     this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Tights_swap0,this.charaAdd.dou.dou_shitaHuku.Tights);
                  }
                  if(this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights) > this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap2))
                  {
                     this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Tights_swap2,this.charaAdd.dou.dou_shitaHuku.Tights);
                  }
                  if(this.charaData["Pantu"]["_depth"] == 0)
                  {
                     if(this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights) > this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap1))
                     {
                        this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Tights_swap1,this.charaAdd.dou.dou_shitaHuku.Tights);
                     }
                  }
                  else if(this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights) < this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap1))
                  {
                     this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Tights_swap1,this.charaAdd.dou.dou_shitaHuku.Tights);
                  }
               }
               else if(this.charaData["Tights"]["_depth"] == 2)
               {
                  if(this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights) < this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Tights_swap2))
                  {
                     this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Tights_swap2,this.charaAdd.dou.dou_shitaHuku.Tights);
                  }
               }
            }
            catch(myError:Error)
            {
            }
            _loc2_ = 0;
            for(; _loc2_ <= 1; _loc2_++)
            {
               this.charaAdd["ashi" + _loc2_].shiri.actual.shiri.Tights.gotoAndStop(1);
               this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights.gotoAndStop(1);
               this.charaAdd["ashi" + _loc2_].foot.actual.foot.Tights.gotoAndStop(1);
               this.charaAdd["ashi" + _loc2_].foot.actual.foot.tights_sen.gotoAndStop(1);

               if(!Dress_data.TightsData[_loc6_]["Shiri"])
               {
                  this.charaAdd["ashi" + _loc2_].shiri.actual.shiri.Tights.visible = false;
                  this.charaAdd["ashi" + _loc2_].shiri.actual.shiri.Tights.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["ashi" + _loc2_].shiri.actual.shiri.Tights.visible = true;
                  this.charaAdd["ashi" + _loc2_].shiri.actual.shiri.Tights.gotoAndStop(2);
               }

               if(!Dress_data.TightsData[_loc6_]["thigh"])
               {
                  this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights.visible = false;
                  this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights.visible = true;
                  this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights.gotoAndStop(Dress_data.TightsData[_loc6_]["thigh"] + 1);
               }

               if(!Dress_data.TightsData[_loc6_]["foot"])
               {
                  this.charaAdd["ashi" + _loc2_].foot.actual.foot.Tights.visible = false;
                  this.charaAdd["ashi" + _loc2_].foot.actual.foot.tights_sen.visible = false;
                  this.charaAdd["ashi" + _loc2_].foot.actual.foot.Tights.gotoAndStop(1);
                  this.charaAdd["ashi" + _loc2_].foot.actual.foot.tights_sen.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["ashi" + _loc2_].foot.actual.foot.Tights.visible = true;
                  this.charaAdd["ashi" + _loc2_].foot.actual.foot.tights_sen.visible = true;
                  this.charaAdd["ashi" + _loc2_].foot.actual.foot.Tights.gotoAndStop(Dress_data.TightsData[_loc6_]["foot"] + 1);
                  this.charaAdd["ashi" + _loc2_].foot.actual.foot.tights_sen.gotoAndStop(Dress_data.TightsData[_loc6_]["footSen"] + 1);
               }

               try
               {
                  this.charaAdd["ashi" + _loc2_].leg.actual.leg.Tights.gotoAndStop(1);
                  if(!Dress_data.TightsData[_loc6_]["leg"])
                  {
                     this.charaAdd["ashi" + _loc2_].leg.actual.leg.Tights.visible = false;
                     this.charaAdd["ashi" + _loc2_].leg.actual.leg.Tights.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd["ashi" + _loc2_].leg.actual.leg.Tights.visible = true;
                     this.charaAdd["ashi" + _loc2_].leg.actual.leg.Tights.gotoAndStop(Dress_data.TightsData[_loc6_]["leg"] + 1);
                  }
               }
               catch(myError:Error)
               {
               }
               
               try
               {
                  _loc4_ = this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.getChildIndex(this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights_Swap);
                  _loc5_ = this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.getChildIndex(this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights);
                  if(Dress_data.TightsData[_loc6_]["Dou"] == 0)
                  {
                     if(_loc4_ < _loc5_)
                     {
                        this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.swapChildren(this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights_Swap,this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights);
                     }
                  }
                  else if(this.charaData["Tights"]["_depth"] == 0)
                  {
                     if(_loc4_ < _loc5_)
                     {
                        this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.swapChildren(this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights_Swap,this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights);
                     }
                  }
                  else if(this.charaData["Tights"]["_depth"] == 2)
                  {
                     if(_loc4_ > _loc5_)
                     {
                        this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.swapChildren(this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights_Swap,this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights);
                     }
                  }
                  else if(this.charaData["Tights"]["_depth"] == 1 && this.charaData["Pantu"]["_depth"] == 0)
                  {
                     if(_loc4_ > _loc5_)
                     {
                        this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.swapChildren(this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights_Swap,this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights);
                     }
                  }
                  else if(this.charaData["Tights"]["_depth"] == 1 && this.charaData["Pantu"]["_depth"] == 1)
                  {
                     if(_loc4_ < _loc5_)
                     {
                        this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.swapChildren(this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights_Swap,this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.Tights);
                     }
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ <= 1)
            {
               this.fc_false(_loc2_);
               _loc2_++;
            }
         }
         new Huku_TightsGarter(param1);
         new Huku_MjiSen(param1);
         new Huku_Vibrator(param1);
         new Tab_SetClass();
         new Huku_TightsClick(param1);
         new Huku_KutuVisible(param1,0);
         new Huku_KutuVisible(param1,1);
         new Huku_PantuMask(param1);
         new Huku_PantuHarabote(param1);
         new Huku_TightsMask(param1);
         new Chara_ColorClass(param1,"Tights");
         new Huku_Mosaic(param1);
      }
      
      private function fc_false(param1:int) : void
      {
         this.charaAdd.dou.dou_shitaHuku.Tights.visible = false;
         this.charaAdd["ashi" + param1].foot.actual.foot.Tights.visible = false;
         this.charaAdd["ashi" + param1].foot.actual.foot.tights_sen.visible = false;
         try
         {
            this.charaAdd["ashi" + param1].leg.actual.leg.Tights.visible = false;
         }
         catch(myError:Error)
         {
         }
         this.charaAdd["ashi" + param1].thigh.actual.thigh.Tights.visible = false;
         this.charaAdd["ashi" + param1].shiri.actual.shiri.Tights.visible = false;
         this.charaAdd.dou.dou_shitaHuku.Tights.gotoAndStop(1);
         this.charaAdd["ashi" + param1].foot.actual.foot.Tights.gotoAndStop(1);
         this.charaAdd["ashi" + param1].foot.actual.foot.tights_sen.gotoAndStop(1);
         try
         {
            this.charaAdd["ashi" + param1].leg.actual.leg.Tights.gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         this.charaAdd["ashi" + param1].thigh.actual.thigh.Tights.gotoAndStop(1);
         this.charaAdd["ashi" + param1].shiri.actual.shiri.Tights.gotoAndStop(1);
      }
   }
}
