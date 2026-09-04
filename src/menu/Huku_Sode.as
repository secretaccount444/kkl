package menu
{
   import parameter.Dress_data;
   
   public class Huku_Sode
   {
       
      
      public function Huku_Sode(param1:int)
      {
         var _loc4_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc5_:Array = new Array(false,false);
         var _loc6_:Array = new Array(false,false);
         var _loc7_:Array = new Array(false,false);
         if(Dress_data.ArmData[_loc3_["SeihukuLeftArm"]["_menu"]]["sode"] != 0)
         {
            _loc5_[0] = true;
         }
         if(Dress_data.ArmData[_loc3_["SeihukuRightArm"]["_menu"]]["sode"] != 0)
         {
            _loc5_[1] = true;
         }
         if(Dress_data.ArmData[_loc3_["YsyatuLeftArm"]["_menu"]]["sode"] != 0)
         {
            _loc6_[0] = true;
         }
         if(Dress_data.ArmData[_loc3_["YsyatuRightArm"]["_menu"]]["sode"] != 0)
         {
            _loc6_[1] = true;
         }
         if(Dress_data.ArmData[_loc3_["VestLeftArm"]["_menu"]]["sode"] != 0)
         {
            _loc7_[0] = true;
         }
         if(Dress_data.ArmData[_loc3_["VestRightArm"]["_menu"]]["sode"] != 0)
         {
            _loc7_[1] = true;
         }
         _loc4_ = 0;
         while(_loc4_ <= 1)
         {
            try
            {
               if(_loc2_.mune.SeihukuMune["ysyatu" + _loc4_].ysyatu.sodeColor0)
               {
                  _loc5_[_loc4_] = true;
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(_loc2_.mune.YsyatuMune["ysyatu" + _loc4_].ysyatu.sodeColor0)
               {
                  _loc6_[_loc4_] = true;
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(_loc2_.mune.VestMune["ysyatu" + _loc4_].ysyatu.sodeColor0)
               {
                  _loc7_[_loc4_] = true;
               }
            }
            catch(myError:Error)
            {
            }
            if(_loc3_["Tsyatu"]["_visible"][0])
            {
               if(_loc3_["Vest"]["_visible"][0] && _loc7_[_loc4_] || _loc3_["Ysyatu"]["_visible"][0] && _loc6_[_loc4_] || _loc3_["Seihuku"]["_visible"][0] && _loc5_[_loc4_])
               {
                  try
                  {
                     _loc2_.mune.TsyatuMune["ysyatu" + _loc4_].ysyatu.sodeColor0.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc2_.mune.TsyatuMune["ysyatu" + _loc4_].ysyatu.kata.color0_1.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  try
                  {
                     _loc2_.mune.TsyatuMune["ysyatu" + _loc4_].ysyatu.sodeColor0.visible = true;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc2_.mune.TsyatuMune["ysyatu" + _loc4_].ysyatu.kata.color0_1.visible = true;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            if(_loc3_["Ysyatu"]["_visible"][0])
            {
               if(_loc3_["Vest"]["_visible"][0] && _loc7_[_loc4_] || _loc3_["Seihuku"]["_visible"][0] && _loc5_[_loc4_])
               {
                  try
                  {
                     _loc2_.mune.YsyatuMune["ysyatu" + _loc4_].ysyatu.sodeColor0.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc2_.mune.YsyatuMune["ysyatu" + _loc4_].ysyatu.kata.color0_1.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  try
                  {
                     _loc2_.mune.YsyatuMune["ysyatu" + _loc4_].ysyatu.sodeColor0.visible = true;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc2_.mune.YsyatuMune["ysyatu" + _loc4_].ysyatu.kata.color0_1.visible = true;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            if(_loc3_["Vest"]["_visible"][0])
            {
               if(_loc3_["Seihuku"]["_visible"][0] && _loc5_[_loc4_])
               {
                  try
                  {
                     _loc2_.mune.VestMune["ysyatu" + _loc4_].ysyatu.sodeColor0.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc2_.mune.VestMune["ysyatu" + _loc4_].ysyatu.kata.color0_1.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  try
                  {
                     _loc2_.mune.VestMune["ysyatu" + _loc4_].ysyatu.sodeColor0.visible = true;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc2_.mune.VestMune["ysyatu" + _loc4_].ysyatu.kata.color0_1.visible = true;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            _loc4_++;
         }
      }
   }
}
