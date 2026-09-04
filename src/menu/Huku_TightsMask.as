package menu
{
   import parameter.Dress_data;
   
   public class Huku_TightsMask
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_TightsMask(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         if(this.charaData["Tights"]["_visible"][0])
         {
            _loc3_ = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
            if(_loc3_[0] >= 1 || _loc3_[1] >= 1)
            {
               try
               {
                  this.charaAdd.dou.dou_shitaHuku.Tights.tightsMask.gotoAndStop(4);
                  this.charaAdd.dou.dou_shitaHuku.Tights.sen.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  if(this.charaData["Pantu"]["_visible"][0] && Dress_data.PantuData[this.charaData["Pantu"]["_menu"]]["Tights"] != 0 && this.charaData["Tights"]["_depth"] != 2 && (this.charaData["Pantu"]["_depth"] == 1 || this.charaData["Tights"]["_depth"] == 0))
                  {
                     this.charaAdd.dou.dou_shitaHuku.Tights.tightsMask.gotoAndStop(5);
                  }
                  else
                  {
                     this.charaAdd.dou.dou_shitaHuku.Tights.tightsMask.gotoAndStop(2);
                  }
                  this.charaAdd.dou.dou_shitaHuku.Tights.sen.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
            }
            new Huku_Pantu(param1,"Tights");
         }
      }
   }
}
