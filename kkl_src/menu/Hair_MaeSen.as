package menu
{
   import parameter.Dress_data;
   
   public class Hair_MaeSen
   {
       
      
      public function Hair_MaeSen(param1:int)
      {
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc4_:int = _loc3_["Bangs"]["_menu"];
         try
         {
            if(Dress_data.BangsData[_loc4_]["mae"] == 1 || !_loc3_["Bangs"]["_visible"][0])
            {
               _loc2_.head.hairUnder.mae_kage.visible = false;
               _loc2_.head.hairUnder.mae_sen.visible = true;
            }
            else if(Dress_data.BangsData[_loc4_]["mae"] == 0)
            {
               _loc2_.head.hairUnder.mae_kage.visible = false;
               _loc2_.head.hairUnder.mae_sen.visible = false;
            }
            else if(Dress_data.BangsData[_loc4_]["mae"] == 2)
            {
               _loc2_.head.hairUnder.mae_kage.visible = true;
               _loc2_.head.hairUnder.mae_sen.visible = true;
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
