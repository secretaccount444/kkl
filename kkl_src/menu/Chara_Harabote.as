package menu
{
   import parameter.Dress_data;
   
   public class Chara_Harabote
   {
       
      
      public function Chara_Harabote(param1:int)
      {
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc4_:Array = new Array(Move_DataClass.AshiFrameData[_loc3_["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[_loc3_["Ashi2"]["_menu"]]["depth"]);
         var _loc5_:int = _loc3_["Waist"]["_menu"];
         _loc2_.dou.dou_shitaHuku.Bura_HesoSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc5_]["dou"] + 1);
         if(_loc4_[0] >= 1 || _loc4_[1] >= 1)
         {
            if(Dress_data.ObjData["Waist"][_loc5_]["harabote"] >= 1)
            {
               _loc2_.dou.harabote.gotoAndStop(Dress_data.ObjData["Waist"][_loc5_]["harabote"] + 3);
               _loc2_.dou.color0.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc5_]["dou"] + 3);
               _loc2_.dou.dou_shita.haraboteKage.gotoAndStop(1);
               _loc2_.dou.dou_shitaHuku.Bura_HesoSen.y = -505.05;
               _loc2_.dou.HesoSen.y = -503.9;
            }
            else
            {
               if(Dress_data.ObjData["Waist"][_loc5_]["dou"] == 1)
               {
                  _loc2_.dou.color0.nakaMask.gotoAndStop(1);
               }
               else if(Dress_data.ObjData["Waist"][_loc5_]["dou"] == 2)
               {
                  _loc2_.dou.color0.nakaMask.gotoAndStop(10);
               }
               else if(Dress_data.ObjData["Waist"][_loc5_]["dou"] == 3)
               {
                  _loc2_.dou.color0.nakaMask.gotoAndStop(11);
               }
               if(Dress_data.ObjData["Waist"][_loc5_]["dou"] <= 3)
               {
                  _loc2_.dou.color0.nakaMask.obj.gotoAndStop(2);
               }
               else
               {
                  _loc2_.dou.color0.nakaMask.obj.gotoAndStop(1);
               }
               _loc2_.dou.dou_shitaHuku.Bura_HesoSen.y = -495.05;
               _loc2_.dou.HesoSen.y = -493.9;
            }
         }
         else
         {
            _loc2_.dou.dou_shita.haraboteKage.gotoAndStop(Dress_data.ObjData["Waist"][_loc5_]["dou"]);
            _loc2_.dou.harabote.gotoAndStop(Dress_data.ObjData["Waist"][_loc5_]["harabote"]);
            _loc2_.dou.color0.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc5_]["dou"]);
            if(Dress_data.ObjData["Waist"][_loc5_]["dou"] <= 3)
            {
               _loc2_.dou.color0.nakaMask.obj.gotoAndStop(1);
            }
            _loc2_.dou.dou_shitaHuku.Bura_HesoSen.y = -485.05;
            _loc2_.dou.HesoSen.y = -483.9;
         }
         new Huku_PantuHarabote(param1);
      }
   }
}
