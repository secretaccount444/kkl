package menu
{
   import parameter.Dress_data;
   
   public class Huku_ZubonLeg
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_ZubonLeg(param1:int, param2:int)
      {
         var _loc3_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         _loc3_ = this.charaData["ZubonAshi" + param2]["_menu"];
         try
         {
            this.charaAdd["ashi" + param2].leg.actual.leg.Zubon.gotoAndStop(1);
            if(!Dress_data.KutuData[this.charaData["Kutu" + param2]["_menu"]]["footSen"] && this.charaData["Kutu" + param2]["_visible"][0])
            {
               try
               {
                  this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.mask = this.charaAdd["ashi" + param2].leg_huku.actual.leg.Kutu.legMask;
               }
               catch(myError:Error)
               {
               }
               this.charaAdd["ashi" + param2].leg.actual.leg.Zubon.visible = false;
               this.charaAdd["ashi" + param2].leg.actual.leg.Zubon.gotoAndStop(1);
            }
            else
            {
               this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.mask = null;
               try
               {
                  this.charaAdd["ashi" + param2].leg_huku.actual.leg.Kutu.legMask.visible = false;
               }
               catch(myError:Error)
               {
               }
               
               if(Dress_data.ZubonAshiData[_loc3_]["legUnder"] == 0)
               {
                  this.charaAdd["ashi" + param2].leg.actual.leg.Zubon.visible = false;
                  this.charaAdd["ashi" + param2].leg.actual.leg.Zubon.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["ashi" + param2].leg.actual.leg.Zubon.visible = this.charaData["Zubon"]["_visible"][0];
                  this.charaAdd["ashi" + param2].leg.actual.leg.Zubon.gotoAndStop(Dress_data.ZubonAshiData[_loc3_]["legUnder"] + 1);
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
