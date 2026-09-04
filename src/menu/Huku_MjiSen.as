package menu
{
   import parameter.Dress_data;
   
   public class Huku_MjiSen
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_MjiSen(param1:int)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         var _loc2_:int = this.charaData["Bura"]["_menu"];
         var _loc5_:Array = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
         _loc4_ = Dress_data.menuCustom["Tights"].length - 1;
         _loc3_ = 0;
         while(_loc3_ <= _loc4_)
         {
            if(this.charaData["Tights"]["_menu"] == Dress_data.menuCustom["Tights"][_loc3_])
            {
               Dress_data.menuCustomNum[param1]["Tights"] = _loc3_;
               break;
            }
            _loc3_++;
         }
         this.charaData["Tights"]["_menu"] = Dress_data.menuCustom["Tights"][Dress_data.menuCustomNum[param1]["Tights"]];
         var _loc6_:int = this.charaData["Tights"]["_menu"];
         _loc3_ = 0;
         while(_loc3_ <= 1)
         {
            if(this.charaData["Tights"]["_visible"][0] && Dress_data.TightsData[_loc6_]["thighSen"] >= 1)
            {
               if(_loc5_[_loc3_] == 1 || _loc5_[_loc3_] == 2)
               {
                  if(Dress_data.TightsData[_loc6_]["thighSen"] == 1)
                  {
                     this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(2);
                  }
                  else if(Dress_data.TightsData[_loc6_]["thighSen"] == 2)
                  {
                     this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(4);
                  }
               }
            }
            else if(this.charaData["Pantu"]["_visible"][0] || this.charaData["Bura"]["_visible"][0] && Dress_data.BuraData[_loc2_]["link"] == 0)
            {
               if(_loc5_[_loc3_] == 1 || _loc5_[_loc3_] == 2)
               {
                  try
                  {
                     if(this.charaData["Bura"]["_visible"][0] && Dress_data.BuraData[_loc2_]["link"] == 0 && Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["Spantu"] >= 1)
                     {
                        if(Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["separate"] > 0 && this.charaData["Bura"]["_separate"] == 1)
                        {
                           this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(1);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if(this.charaData["Pantu"]["_visible"][0])
                     {
                        if(this.charaAdd["ashi" + _loc3_].thigh.thigh.Pantu.Pantu)
                        {
                           this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(2);
                        }
                        else
                        {
                           this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(3);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if(this.charaData["Bura"]["_visible"][0] && Dress_data.BuraData[_loc2_]["link"] == 0)
                     {
                        if(!(Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["separate"] > 0 && this.charaData["Bura"]["_separate"] == 1))
                        {
                           if(Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["Spantu"] >= 1)
                           {
                              this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(2);
                           }
                           else
                           {
                              this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(3);
                           }
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else if(this.charaAdd.dou.dou_Skirt.Skirt.visible || this.charaAdd.dou.TsyatuOnePiece.visible || this.charaAdd.dou.YsyatuOnePiece.visible || this.charaAdd.dou.VestOnePiece.visible)
               {
                  this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(3);
               }
               else
               {
                  this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(1);
               }
            }
            else if(this.charaAdd.dou.dou_Skirt.Skirt.visible || this.charaAdd.dou.TsyatuOnePiece.visible || this.charaAdd.dou.YsyatuOnePiece.visible || this.charaAdd.dou.VestOnePiece.visible)
            {
               this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(3);
            }
            else
            {
               this.charaAdd["ashi" + _loc3_].thigh.thigh.sen.gotoAndStop(1);
            }
            _loc3_++;
         }
      }
   }
}
