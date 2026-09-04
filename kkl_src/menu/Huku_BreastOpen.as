package menu
{
   import parameter.Dress_data;
   
   public class Huku_BreastOpen
   {
      
      public static var muneOpen:Boolean;
      
      public static var buraOpen:Boolean;
       
      
      public function Huku_BreastOpen(param1:int)
      {
         var _loc4_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         muneOpen = false;
         buraOpen = false;
         var _loc5_:int = _loc3_["VestDou"]["_menu"];
         var _loc6_:int = _loc3_["YsyatuDou"]["_menu"];
         var _loc7_:int = _loc3_["TsyatuDou"]["_menu"];
         if(!_loc3_["Seihuku"]["_visible"][0] && (!_loc3_["Vest"]["_visible"][0] || _loc3_["Vest"]["_visible"][0] && _loc5_ == 0) && (!_loc3_["Tsyatu"]["_visible"][0] || _loc3_["Tsyatu"]["_visible"][0] && _loc7_ == 0) && (!_loc3_["Ysyatu"]["_visible"][0] || _loc3_["Ysyatu"]["_visible"][0] && (_loc6_ == 3 || _loc6_ == 4 || _loc6_ == 0)))
         {
            if(!_loc3_["Bura"]["_visible"][0] && !_loc3_["Nawa"]["_visible"][0])
            {
               muneOpen = true;
            }
            else
            {
               if(_loc3_["Bura"]["_visible"][0] && Dress_data.BuraData[_loc3_["Bura"]["_menu"]]["separate"] > 0 && _loc3_["Bura"]["_separate"] == 2 && !_loc3_["Nawa"]["_visible"][0])
               {
                  muneOpen = true;
               }
               buraOpen = true;
            }
         }
      }
   }
}
