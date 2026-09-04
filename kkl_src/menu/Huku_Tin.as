package menu
{
   import system.MeterPersent;
   
   public class Huku_Tin
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_Tin(param1:int)
      {
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         if(this.charaData["TinBokki"]["_check"])
         {
            new MeterPersent(0,0.6,"TinEx",param1);
            _loc2_ = MeterPersent.MeterPersentNum;
            new MeterPersent(0,0.8,"TinEx",param1);
            _loc3_ = MeterPersent.MeterPersentNum;
         }
         new MeterPersent(0.7,1.4,"TinSize",param1);
         this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.scaleX = this.charaAdd.peni.peni.Peni.Tin.scaleX = MeterPersent.MeterPersentNum + _loc2_;
         this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.scaleY = this.charaAdd.peni.peni.Peni.Tin.scaleY = MeterPersent.MeterPersentNum + _loc3_;
      }
   }
}
