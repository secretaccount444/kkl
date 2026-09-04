package menu
{
   public class Move_HandAngleClass
   {
       
      
      public function Move_HandAngleClass(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         super();
         _loc2_ = 0;
         while(_loc2_ <= 1)
         {
            if(_loc2_ == 0)
            {
               _loc3_ = "Left";
            }
            else
            {
               _loc3_ = "Right";
            }
            new Move_UdeSenClass(param1,_loc3_ + "Hand");
            MenuClass.charaAdd[param1]["handm1_" + _loc2_].hand.arm0.gotoAndStop(Math.round(99 * MenuClass.charaData[param1][_loc3_ + "Hand2"]["_meter"] / 100) + 1);
            MenuClass.charaAdd[param1]["handm1_" + _loc2_].hand.item.gotoAndStop(Math.round(99 * MenuClass.charaData[param1][_loc3_ + "Hand2"]["_meter"] / 100) + 1);
            _loc2_++;
         }
      }
   }
}
