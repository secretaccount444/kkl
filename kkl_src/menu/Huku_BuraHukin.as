package menu
{
   import parameter.Dress_data;
   
   public class Huku_BuraHukin
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_BuraHukin(param1:int)
      {
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         var _loc2_:int = this.charaData["Bura"]["_menu"];
         if(this.charaData["Bura"]["_visible"][0])
         {
            if(Dress_data.BuraData[_loc2_]["hukin"] == 0 || this.charaData["Bura"]["_separate"] == 1 || Dress_data.ObjData["Waist"][this.charaData["Waist"]["_menu"]]["hukin"] == 0)
            {
               this.charaAdd.dou.dou_shitaHuku.Bura_hukin.visible = false;
               this.charaAdd.dou.dou_shitaHuku.Bura_hukin.gotoAndStop(1);
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku.Bura_hukin.visible = true;
               this.charaAdd.dou.dou_shitaHuku.Bura_hukin.gotoAndStop(Dress_data.ObjData["Waist"][this.charaData["Waist"]["_menu"]]["hukin"] + 1);
            }
            if(Dress_data.BuraData[_loc2_]["hukin"] == 0 || this.charaData["Bura"]["_separate"] == 1)
            {
               this.charaAdd.dou.dou_shitaHuku.Bura_HesoSen.visible = false;
               this.charaAdd.dou.dou_shitaHuku.Bura_HesoSen.heso.gotoAndStop(1);
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku.Bura_HesoSen.visible = true;
               this.charaAdd.dou.dou_shitaHuku.Bura_HesoSen.heso.gotoAndStop(2);
            }
         }
         else
         {
            this.charaAdd.dou.dou_shitaHuku.Bura_hukin.visible = false;
            this.charaAdd.dou.dou_shitaHuku.Bura_HesoSen.visible = false;
            this.charaAdd.dou.dou_shitaHuku.Bura_hukin.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.Bura_HesoSen.heso.gotoAndStop(1);
         }
      }
   }
}
