package menu
{
   import parameter.Dress_data;
   
   public class Huku_TinSet
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_TinSet(param1:int)
      {
         var _loc2_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         if(!this.charaData["TinBokki"]["_check"])
         {
            _loc2_ = Dress_data.TinData[this.charaData["Tin"]["_menu"]]["Kawa"] + Dress_data.TinKawaData[this.charaData["TinKawa"]["_menu"]]["Kawa"][0];
         }
         else
         {
            _loc2_ = Dress_data.TinData[this.charaData["Tin"]["_menu"]]["Kawa"] + Dress_data.TinKawaData[this.charaData["TinKawa"]["_menu"]]["Kawa"][1];
         }
         if(this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.visible)
         {
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.gotoAndStop(_loc2_ + 1);
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.gotoAndStop(MenuClass.systemData["Mosaic"]["_menu"] + 1);
         }
         if(this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.visible)
         {
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.gotoAndStop(_loc2_ + 1);
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.mosaic.mosaic.gotoAndStop(MenuClass.systemData["Mosaic"]["_menu"] + 1);
         }
         if(this.charaAdd.peni.peni.Peni.Tin.Tin.visible)
         {
            this.charaAdd.peni.peni.Peni.Tin.Tin.gotoAndStop(_loc2_ + 1);
            this.charaAdd.peni.peni.Peni.Tin.Tin.mosaic.mosaic.gotoAndStop(MenuClass.systemData["Mosaic"]["_menu"] + 1);
            this.charaAdd.peni.peni.Peni.Tin.Tin.mosaic.visible = false;
         }
         if(this.charaAdd.peni.peni.Peni.Tin.TinUp.visible)
         {
            this.charaAdd.peni.peni.Peni.Tin.TinUp.gotoAndStop(_loc2_ + 1);
            this.charaAdd.peni.peni.Peni.Tin.TinUp.mosaic.mosaic.gotoAndStop(MenuClass.systemData["Mosaic"]["_menu"] + 1);
            this.charaAdd.peni.peni.Peni.Tin.TinUp.mosaic.visible = false;
         }
         try
         {
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.TinSen.visible = false;
         }
         catch(myError:Error)
         {
         }
         try
         {
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.sen.visible = false;
         }
         catch(myError:Error)
         {
         }
         new Huku_TinMosaic(param1);
         new Chara_ColorClass(param1,"Mosaic");
         new Chara_ColorClass(param1,"Tin");
      }
   }
}
