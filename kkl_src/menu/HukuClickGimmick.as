package menu
{
   import parameter.Dress_data;
   
   public class HukuClickGimmick
   {
       
      
      private var charaData:Object;
      
      private var charaAdd:Object;
      
      public function HukuClickGimmick(param1:int, param2:int, param3:String)
      {
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         super();
         this.charaData = MenuClass.charaData[param1];
         this.charaAdd = MenuClass.charaAdd[param1];
         var _loc4_:Array = new Array(0,0);
         var _loc5_:Array = new Array(0,0);
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         if(this.charaData["VestDou"]["_menu"] != 1 && this.charaData["VestSkirt"]["_menu"] != 0)
         {
            _loc7_ = true;
         }
         if(this.charaData["YsyatuDou"]["_menu"] != 1 && this.charaData["YsyatuSkirt"]["_menu"] != 0)
         {
            _loc6_ = true;
         }
         if(param3 == "Ysyatu")
         {
            try
            {
               if(this.charaData["YsyatuDou"]["_menu"] == 1 && _loc7_ || this.charaData["YsyatuDou"]["_menu"] == 1 && this.charaData["YsyatuSkirt"]["_menu"] == 0)
               {
                  _loc8_ = 4;
               }
               else
               {
                  _loc8_ = Dress_data.ObjData["YsyatuDou"][this.charaData["YsyatuDou"]["_menu"]]["mune"] - 1;
               }
            }
            catch(myError:Error)
            {
            }
            _loc4_[1] = this.charaData["Ysyatu"]["_g1"] + 1;
            try
            {
               _loc5_[1] = Dress_data.YsyatuData[this.charaData["Ysyatu"]["_menu"]]["data"][_loc8_][0].length;
            }
            catch(myError:Error)
            {
            }
         }
         if(param3 == "Tsyatu")
         {
            try
            {
               if(this.charaData["TsyatuDou"]["_menu"] == 1 && _loc7_ || this.charaData["TsyatuDou"]["_menu"] == 1 && _loc6_ || this.charaData["TsyatuDou"]["_menu"] == 1 && this.charaData["TsyatuSkirt"]["_menu"] == 0)
               {
                  _loc8_ = 2;
               }
               else
               {
                  _loc8_ = Dress_data.ObjData["TsyatuDou"][this.charaData["TsyatuDou"]["_menu"]]["mune"] - 1;
               }
            }
            catch(myError:Error)
            {
            }
            _loc4_[1] = this.charaData["Tsyatu"]["_g1"] + 1;
            try
            {
               _loc5_[1] = Dress_data.TsyatuData[this.charaData["Tsyatu"]["_menu"]]["data"][_loc8_][0].length;
            }
            catch(myError:Error)
            {
            }
         }
         if(param3 == "Vest")
         {
            try
            {
               if(this.charaData["VestDou"]["_menu"] == 1 && this.charaData["VestSkirt"]["_menu"] == 0)
               {
                  _loc8_ = 2;
               }
               else
               {
                  _loc8_ = Dress_data.ObjData["VestDou"][this.charaData["VestDou"]["_menu"]]["mune"] - 1;
               }
            }
            catch(myError:Error)
            {
            }
            _loc4_[1] = this.charaData["Vest"]["_g1"] + 1;
            try
            {
               _loc5_[1] = Dress_data.VestData[this.charaData["Vest"]["_menu"]]["data"][_loc8_][0].length;
            }
            catch(myError:Error)
            {
            }
         }
         if(this.charaAdd.dou[param3 + "Dou"].currentFrame != 1)
         {
            _loc4_[0] = this.charaAdd.dou[param3 + "Dou"].ysyatu.ysyatu.currentFrame;
            _loc5_[0] = this.charaAdd.dou[param3 + "Dou"].ysyatu.ysyatu.totalFrames;
         }
         if(MenuClass.spaceKeyPress)
         {
            this.charaData[param3]["_visible"][0] = false;
         }
         else
         {
            _loc10_ = "flag0";
            try
            {
               _loc10_ = this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.currentLabel;
            }
            catch(myError:Error)
            {
            }
            if(param3 == "Ysyatu" && (param2 == 1 || param2 == 0 && this.charaData[param3]["_g0"] == _loc5_[0] - 2) && _loc10_ == "flag1")
            {
               this.charaData[param3]["_visible"][0] = false;
            }
            else if(_loc4_[param2] == _loc5_[param2])
            {
               this.charaData[param3]["_visible"][0] = false;
            }
            else if(_loc4_[param2] == _loc5_[param2] - 1)
            {
               if(this.charaData[param3 + "Dou"]["_menu"] != 1 || this.charaData[param3 + "Skirt"]["_menu"] == 0)
               {
                  ++this.charaData[param3]["_g" + param2];
               }
               else if(HukuClickClass.gimmickCheck == 1 && _loc4_[0] == _loc5_[0])
               {
                  this.charaData[param3]["_visible"][0] = false;
               }
               else
               {
                  this.charaData[param3]["_g0"] = _loc5_[0] - 1;
                  this.charaData[param3]["_g1"] = _loc5_[1] - 1;
               }
            }
            else
            {
               ++this.charaData[param3]["_g" + param2];
            }
         }
      }
   }
}
