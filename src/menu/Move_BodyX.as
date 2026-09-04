package menu
{
   import parameter.Vibrator_data;
   import system.MeterPersent;
   
   public class Move_BodyX
   {
       
      
      public function Move_BodyX(param1:int)
      {
         var _loc5_:Number = NaN;
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc4_:int = 800;
         if(_loc3_["Rmove"]["_meter"] >= 90 && _loc3_["Rmove"]["_meter"] <= 270)
         {
            new MeterPersent(_loc4_ * -1,_loc4_,"Rmove",param1);
         }
         else if(_loc3_["Rmove"]["_meter"] <= 90)
         {
            new MeterPersent(0,_loc4_ * -2,"Rmove",param1);
         }
         else
         {
            new MeterPersent(_loc4_ * 2,0,"Rmove",param1);
         }
         if(_loc3_["VibratorMove"]["_turn2"] && _loc3_["Vibrator"]["_visible"][0])
         {
            _loc5_ = Math.sin(_loc2_.rotation * Math.PI / 180) * Vibrator_data.vibratorData[_loc3_["Vibrator"]["_menu"]][_loc3_["VibratorMove"]["_menu"]][_loc3_["VibratorMove"]["_count"]][10] * -1;
            if(!_loc3_["CharaFilterEmotion"]["_check"])
            {
               MenuClass.charaAddDepth[param1].charaMae.x = MeterPersent.MeterPersentNum + _loc5_;
            }
            _loc2_.x = MeterPersent.MeterPersentNum + _loc5_;
         }
         else
         {
            if(!_loc3_["CharaFilterEmotion"]["_check"])
            {
               MenuClass.charaAddDepth[param1].charaMae.x = MeterPersent.MeterPersentNum;
            }
            _loc2_.x = MeterPersent.MeterPersentNum;
         }
      }
   }
}
