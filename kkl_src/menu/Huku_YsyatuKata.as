package menu
{
   public class Huku_YsyatuKata
   {
       
      
      public function Huku_YsyatuKata(param1:int)
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc4_:Array = new Array(Math.round(49 * _loc3_["LeftArm"]["_meter"] / 100),Math.round(49 * _loc3_["RightArm"]["_meter"] / 100));
         if(_loc3_["ShoulderWidth"]["_meter"] <= 30)
         {
            _loc5_ = 0;
         }
         else if(_loc3_["ShoulderWidth"]["_meter"] <= 60)
         {
            _loc5_ = 1;
         }
         else if(_loc3_["ShoulderWidth"]["_meter"] <= 100)
         {
            _loc5_ = 2;
         }
         try
         {
            _loc6_ = 0;
            while(_loc6_ <= 1)
            {
               _loc2_.mune.YsyatuMune2.ysyatu["ysyatu" + _loc6_].gotoAndStop(Move_DataClass.SailorKataAr[_loc5_][_loc4_[_loc6_]]);
               _loc2_.mune.YsyatuMune2.ysyatu["ysyatu" + _loc6_].seraMask.gotoAndStop(Move_DataClass.SailorKataAr[_loc5_][_loc4_[_loc6_]]);
               _loc6_++;
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
