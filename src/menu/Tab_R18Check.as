package menu
{
   import parameter.Dress_data;
   
   public class Tab_R18Check
   {
       
      
      public function Tab_R18Check(param1:String, param2:String, param3:int)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         super();
         if(param1 == "chara")
         {
            _loc6_ = false;
            try
            {
               if(Dress_data.menuCustom[param2][0] >= 0)
               {
                  _loc6_ = true;
               }
            }
            catch(myError:Error)
            {
            }
            if(_loc6_)
            {
               _loc5_ = Dress_data.menuCustom[param2].length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc5_)
               {
                  if(MenuClass.charaData[param3][param2]["_menu"] == Dress_data.menuCustom[param2][_loc4_])
                  {
                     Dress_data.menuCustomNum[param3][param2] = _loc4_;
                     break;
                  }
                  if(_loc4_ == _loc5_)
                  {
                     Dress_data.menuCustomNum[param3][param2] = 0;
                     MenuClass.charaData[param3][param2]["_menu"] = 0;
                     MenuClass.charaData[param3][param2]["_color0"][0] = Dress_data.DressData[param2][0]["_color0"][1];
                     Dress_data.DressCharaData[param3][param2][0]["_color0"][0] = Dress_data.DressData[param2][0]["_color1"][1];
                     try
                     {
                        MenuClass.charaData[param3][param2]["_color1"][0] = Dress_data.DressData[param2][0]["_color1"][1];
                        Dress_data.DressCharaData[param3][param2][0]["_color1"][0] = Dress_data.DressData[param2][0]["_color1"][1];
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        MenuClass.charaData[param3][param2]["_color2"][0] = Dress_data.DressData[param2][0]["_color2"][1];
                        Dress_data.DressCharaData[param3][param2][0]["_color2"][0] = Dress_data.DressData[param2][0]["_color2"][1];
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  _loc4_++;
               }
            }
         }
         else
         {
            _loc6_ = false;
            try
            {
               if(Dress_data.menuCustom[param2][0] >= 0)
               {
                  _loc6_ = true;
               }
            }
            catch(myError:Error)
            {
            }
            if(_loc6_)
            {
               _loc5_ = Dress_data.menuCustom[param2].length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc5_)
               {
                  if(MenuClass.systemData[param2]["_menu"] == Dress_data.menuCustom[param2][_loc4_])
                  {
                     Dress_data.menuCustomNum[0][param2] = _loc4_;
                     break;
                  }
                  if(_loc4_ == _loc5_)
                  {
                     Dress_data.menuCustomNum[0][param2] = 0;
                     MenuClass.systemData[param2]["_menu"] = 0;
                     MenuClass.systemData[param2]["_color0"][0] = Dress_data.DressData[param2][0]["_color0"][1];
                     Dress_data.DressCharaData[0][param2][0]["_color0"][0] = Dress_data.DressData[param2][0]["_color1"][1];
                     try
                     {
                        MenuClass.systemData[param2]["_color1"][0] = Dress_data.DressData[param2][0]["_color1"][1];
                        Dress_data.DressCharaData[0][param2][0]["_color1"][0] = Dress_data.DressData[param2][0]["_color1"][1];
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        MenuClass.systemData[param2]["_color2"][0] = Dress_data.DressData[param2][0]["_color2"][1];
                        Dress_data.DressCharaData[0][param2][0]["_color2"][0] = Dress_data.DressData[param2][0]["_color2"][1];
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  _loc4_++;
               }
            }
         }
      }
   }
}
