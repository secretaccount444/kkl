package menu
{
   import system.MeterPersent;
   
   public class Emotion_Mouth
   {
       
      
      public function Emotion_Mouth(param1:int)
      {
         super();
         var _loc2_:Object = MenuClass.charaData[param1];
         var _loc3_:Object = MenuClass.charaAdd[param1];
         new MeterPersent(-0.5,0.5,"MouthScale",param1);
         var _loc4_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(0.5,1.5,"MouthWidth",param1);
         _loc3_.head.mouth.scaleX = MeterPersent.MeterPersentNum + _loc4_;
         if(MenuClass.systemData["LinkMouthWidth"]["_flag"])
         {
            _loc2_["MouthHeight"]["_meter"] = _loc2_["MouthWidth"]["_meter"];
         }
         new MeterPersent(0.5,1.5,"MouthHeight",param1);
         _loc3_.head.mouth.scaleY = MeterPersent.MeterPersentNum + _loc4_;
         new Emotion_MouthReversal(param1);
         new MeterPersent(-3,1,"BodyHeight",param1);
         var _loc5_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(12,-8,"MouthY",param1);
         var _loc6_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(12,-8,"MouthYMove",param1);
         _loc3_.head.mouth.y = SizeDataClass.bodyDefault_y["mouth"] + _loc5_ + _loc6_ + MeterPersent.MeterPersentNum;
         new MeterPersent(-30,30,"MouthRotation",param1);
         _loc3_.head.mouth.rotation = MeterPersent.MeterPersentNum;
         new MeterPersent(-10,10,"MouthXMove",param1);
         _loc3_.head.mouth.x = MeterPersent.MeterPersentNum;
      }
   }
}
