package menu
{
   import parameter.Dress_data;
   
   public class Huku_TinMosaic
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_TinMosaic(param1:int)
      {
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         var _loc2_:int = this.charaData["Tin"]["_menu"];
         var _loc3_:int = MenuClass.systemData["Mosaic"]["_menu"];
         try
         {
            if(_loc2_ == 0 || _loc2_ == 5)
            {
               if(Dress_data.MosaicData[_loc3_]["TinPosition"] == 1)
               {
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.y = 10;
               }
               else if(Dress_data.MosaicData[_loc3_]["TinPosition"] == 2)
               {
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.y = 23;
               }
               else if(Dress_data.MosaicData[_loc3_]["TinPosition"] == 3)
               {
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.y = 30;
               }
               else
               {
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.y = 0;
               }
            }
            else if(_loc2_ == 1 || _loc2_ == 6)
            {
               if(Dress_data.MosaicData[_loc3_]["TinPosition"] == 2)
               {
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.y = 5;
               }
               else if(Dress_data.MosaicData[_loc3_]["TinPosition"] == 3)
               {
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.y = 15;
               }
               else
               {
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.y = 0;
               }
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.y = 0;
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
