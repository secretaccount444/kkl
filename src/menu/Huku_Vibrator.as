package menu
{
   import parameter.Dress_data;
   import parameter.Vibrator_data;
   
   public class Huku_Vibrator
   {
       
      
      public function Huku_Vibrator(param1:int)
      {
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         super();
         var _loc2_:Object = MenuClass.charaData[param1];
         var _loc3_:Object = MenuClass.charaAdd[param1];
         var _loc4_:Boolean = false;
         if(_loc2_["Bura"]["_visible"][0] && Dress_data.BuraData[_loc2_["Bura"]["_menu"]]["Pantu"] != 0 && (_loc2_["Bura"]["_separate"] == 0 || _loc2_["Bura"]["_separate"] == 2))
         {
            _loc4_ = true;
         }
         if(_loc2_["VibratorThrough"]["_check"] || !_loc2_["Nawa"]["_visible"][0] && !_loc2_["SG"]["_visible"][0] && (!_loc2_["Pantu"]["_visible"][0] || Dress_data.PantuData[_loc2_["Pantu"]["_menu"]]["vibrator"] == 1) && !_loc2_["Zubon"]["_visible"][0] && (!_loc2_["Tights"]["_visible"][0] || Dress_data.TightsData[_loc2_["Tights"]["_menu"]]["vibrator"] == 1) && !_loc4_)
         {
            MenuClass.menuData["VibratorMove"] = Vibrator_data.vibratorData[_loc2_["Vibrator"]["_menu"]].length - 1;
         }
         else
         {
            _loc6_ = -1;
            _loc5_ = 0;
            while(_loc5_ < Vibrator_data.vibratorData[_loc2_["Vibrator"]["_menu"]].length)
            {
               if(Vibrator_data.vibratorData[_loc2_["Vibrator"]["_menu"]][_loc5_][0][1] != 1)
               {
                  break;
               }
               _loc6_ += 1;
               _loc5_++;
            }
            MenuClass.menuData["VibratorMove"] = _loc6_;
            if(_loc2_["VibratorMove"]["_menu"] > MenuClass.menuData["VibratorMove"])
            {
               _loc2_["VibratorMove"]["_menu"] = MenuClass.menuData["VibratorMove"];
               _loc2_["VibratorMove"]["_count"] = 1;
            }
         }
         new Tab_TextInClass(1,"VibratorMove",MenuClass.menuData["VibratorMove"]);
      }
   }
}
