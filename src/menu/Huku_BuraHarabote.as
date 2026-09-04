package menu
{
   import parameter.Dress_data;
   
   public class Huku_BuraHarabote
   {
       
      
      public function Huku_BuraHarabote(param1:int)
      {
         var _loc2_:int = 0;
         super();
         var _loc3_:int = MenuClass.charaData[param1]["Waist"]["_menu"];
         try
         {
            _loc2_ = 0;
            for(; _loc2_ <= 1; _loc2_++)
            {
               try
               {
                  if(MenuClass.charaAdd[param1].mune.Bura.visible && Dress_data.ObjData["Waist"][_loc3_]["harabote"] >= 1)
                  {
                     MenuClass.charaAdd[param1].dou.Bura["Bura" + _loc2_].Bura.gotoAndStop(2);
                  }
                  else
                  {
                     MenuClass.charaAdd[param1].dou.Bura["Bura" + _loc2_].Bura.gotoAndStop(1);
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.charaAdd[param1].mune.Nawa.visible && Dress_data.ObjData["Waist"][_loc3_]["harabote"] >= 1)
                  {
                     MenuClass.charaAdd[param1].dou.Nawa["Nawa" + _loc2_].gotoAndStop(2);
                  }
                  else
                  {
                     MenuClass.charaAdd[param1].dou.Nawa["Nawa" + _loc2_].gotoAndStop(1);
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
