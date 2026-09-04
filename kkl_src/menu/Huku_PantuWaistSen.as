package menu
{
   import parameter.Dress_data;
   
   public class Huku_PantuWaistSen
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_PantuWaistSen(param1:int, param2:String)
      {
         var _loc4_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         var _loc3_:int = this.charaData["Waist"]["_menu"];
         try
         {
            if(Dress_data.ObjData["Waist"][_loc3_]["dou"] != 1)
            {
               this.charaAdd.dou.dou_shitaHuku[param2].sideSen.visible = false;
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku[param2].sideSen.visible = true;
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
