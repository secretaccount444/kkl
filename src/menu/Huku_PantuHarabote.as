package menu
{
   import parameter.Dress_data;
   
   public class Huku_PantuHarabote
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_PantuHarabote(param1:int)
      {
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         var _loc2_:int = this.charaData["Waist"]["_menu"];
         var _loc3_:Array = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
         var _loc4_:Boolean = false;
         if(Dress_data.ObjData["Waist"][_loc2_]["harabote"] >= 1)
         {
            if(this.charaAdd.dou.dou_Skirt.Zubon.visible)
            {
               _loc4_ = true;
            }
            if(this.charaAdd.dou.dou_Skirt.Skirt.visible)
            {
               _loc4_ = true;
            }
            if(this.charaAdd.dou.dou_Skirt.Skirt.visible)
            {
               _loc4_ = true;
            }
            if(this.charaAdd.dou.dou_shitaHuku.Tights.visible)
            {
               _loc4_ = true;
            }
            if(this.charaData["Bura"]["_visible"][0] && Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["link"] == 0)
            {
               _loc4_ = true;
            }
            if(this.charaData["Pantu"]["_visible"][0])
            {
               if(Dress_data.PantuData[this.charaData["Pantu"]["_menu"]]["harabote"] != 3)
               {
                  if(!(Dress_data.ObjData["Waist"][_loc2_]["harabote"] <= 2 && Dress_data.PantuData[this.charaData["Pantu"]["_menu"]]["harabote"] == 2))
                  {
                     if(!(Dress_data.ObjData["Waist"][_loc2_]["harabote"] == 1 && Dress_data.PantuData[this.charaData["Pantu"]["_menu"]]["harabote"] == 1))
                     {
                        _loc4_ = true;
                     }
                  }
               }
            }
         }
         if(_loc4_)
         {
            if(_loc3_[0] >= 1 || _loc3_[1] >= 1)
            {
               this.charaAdd.dou.nakaSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"] + 9);
               this.charaAdd.dou.bodyMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"] + 3);
               this.charaAdd.dou.bodyMask2.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"] + 3);
            }
            else
            {
               this.charaAdd.dou.nakaSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"] + 3);
               this.charaAdd.dou.bodyMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"]);
               this.charaAdd.dou.bodyMask2.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"]);
            }
         }
         else if(_loc3_[0] >= 1 || _loc3_[1] >= 1)
         {
            if(Dress_data.ObjData["Waist"][_loc2_]["dou"] == 1)
            {
               this.charaAdd.dou.nakaSen.gotoAndStop(1);
               this.charaAdd.dou.bodyMask.nakaMask.gotoAndStop(1);
               this.charaAdd.dou.bodyMask2.nakaMask.gotoAndStop(1);
            }
            else if(Dress_data.ObjData["Waist"][_loc2_]["dou"] == 2)
            {
               this.charaAdd.dou.nakaSen.gotoAndStop(16);
               this.charaAdd.dou.bodyMask.nakaMask.gotoAndStop(10);
               this.charaAdd.dou.bodyMask2.nakaMask.gotoAndStop(10);
            }
            else if(Dress_data.ObjData["Waist"][_loc2_]["dou"] == 3)
            {
               this.charaAdd.dou.nakaSen.gotoAndStop(17);
               this.charaAdd.dou.bodyMask.nakaMask.gotoAndStop(11);
               this.charaAdd.dou.bodyMask2.nakaMask.gotoAndStop(11);
            }
            else if(Dress_data.ObjData["Waist"][_loc2_]["harabote"] >= 1)
            {
               this.charaAdd.dou.nakaSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"] + 6);
               this.charaAdd.dou.bodyMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"] + 6);
               this.charaAdd.dou.bodyMask2.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"] + 6);
            }
            else
            {
               this.charaAdd.dou.nakaSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"]);
               this.charaAdd.dou.bodyMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"]);
               this.charaAdd.dou.bodyMask2.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"]);
            }
         }
         else
         {
            this.charaAdd.dou.nakaSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"]);
            this.charaAdd.dou.bodyMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"]);
            this.charaAdd.dou.bodyMask2.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc2_]["dou"]);
         }
      }
   }
}
