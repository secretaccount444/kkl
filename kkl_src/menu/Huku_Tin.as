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
         var tinSizeX = 1.0;
         var tinSizeY = 1.0;

         if (this.charaData["TinSizeAuto"]["_check"]) {
            new MeterPersent(0.7,1.4,"TinSize",param1);
            tinSizeX = tinSizeY = MeterPersent.MeterPersentNum;

            if(this.charaData["TinBokki"]["_check"])
            {
               new MeterPersent(0,0.6,"TinEx",param1);
               tinSizeX += MeterPersent.MeterPersentNum;
               new MeterPersent(0,0.8,"TinEx",param1);
               tinSizeY += MeterPersent.MeterPersentNum;
            }

            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.x = this.charaAdd.peni.peni.Peni.Tin.x = 0;
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.y = this.charaAdd.peni.peni.Peni.Tin.y = 0;
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.x = this.charaAdd.peni.peni.Peni.Tama.x = 0;

            if(this.charaData["TinBokki"]["_check"]) {
               this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.y = this.charaAdd.peni.peni.Peni.Tama.y = 3;
            } else {
               this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.y = this.charaAdd.peni.peni.Peni.Tama.y = 7;
            }

            new MeterPersent(0.96, 1.18, "HipWidth", param1);
            this.charaAdd.peni.peni.scaleX = MeterPersent.MeterPersentNum;

            new Move_BodyYClass(param1);
            new Chara_s(param1, "tab");
            new Chara_SetSize(param1, "HipWidth", "tab");
         } else {
            new MeterPersent(0.75, 1.25, "TinScaleX", param1);
            tinSizeX = MeterPersent.MeterPersentNum;

            new MeterPersent(0.75, 1.25, "TinScaleY", param1);
            tinSizeY = MeterPersent.MeterPersentNum;

            if(this.charaData["TinBokki"]["_check"])
            {
               new MeterPersent(0,0.6,"TinEx",param1);
               tinSizeX += MeterPersent.MeterPersentNum;
               new MeterPersent(0,0.8,"TinEx",param1);
               tinSizeY += MeterPersent.MeterPersentNum;
            }

            new MeterPersent(-25,25,"TinOffsetX",param1);
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.x = this.charaAdd.peni.peni.Peni.Tin.x = MeterPersent.MeterPersentNum;
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.x = this.charaAdd.peni.peni.Peni.Tama.x = MeterPersent.MeterPersentNum;

            new MeterPersent(25,-25,"TinOffsetY",param1);
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.y = this.charaAdd.peni.peni.Peni.Tin.y = MeterPersent.MeterPersentNum;
            
            if(this.charaData["TinBokki"]["_check"]) {
               this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.y = this.charaAdd.peni.peni.Peni.Tama.y = 3 + MeterPersent.MeterPersentNum;
            } else {
               this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.y = this.charaAdd.peni.peni.Peni.Tama.y = 7 + MeterPersent.MeterPersentNum;
            }

            this.charaAdd.peni.scaleX = this.charaAdd.peni.scaleY = 1.0;
            this.charaAdd.peni.y = 0;
            this.charaAdd.dou.dou_shitaHuku.peni.y = 0;
            this.charaAdd.peni.peni.y = 0;
         }

         this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.scaleX = this.charaAdd.peni.peni.Peni.Tin.scaleX = tinSizeX;
         this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.scaleY = this.charaAdd.peni.peni.Peni.Tin.scaleY = tinSizeY;
      }
   }
}
