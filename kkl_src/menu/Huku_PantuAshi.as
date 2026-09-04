package menu
{
   import parameter.Dress_data;
   
   public class Huku_PantuAshi
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_PantuAshi(param1:int, param2:String)
      {
         var _loc4_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         var _loc3_:int = this.charaData["Bura"]["_menu"];
         if(param2 == "Pantu")
         {
            _loc4_ = 0;
            for(; _loc4_ <= 1; _loc4_++)
            {
               this.charaAdd["ashi" + _loc4_].shiri.actual.shiri.Pantu.gotoAndStop(1);
               if(this.charaData["Pantu"]["_visible"][0] && Dress_data.PantuData[this.charaData["Pantu"]["_menu"]]["thigh"] != 0)
               {
                  this.charaAdd["ashi" + _loc4_].shiri.actual.shiri.Pantu.gotoAndStop(Dress_data.PantuData[this.charaData["Pantu"]["_menu"]]["thigh"] + 1);
               }
               else
               {
                  this.charaAdd["ashi" + _loc4_].shiri.actual.shiri.Pantu.gotoAndStop(1);
               }
               try
               {
                  this.charaAdd["ashi" + _loc4_].thigh.actual.thigh.Pantu.gotoAndStop(1);
                  this.charaAdd["ashi" + _loc4_].thigh.actual.thigh.Pantu.visible = this.charaData["Pantu"]["_visible"][0];
                  if(this.charaData["Pantu"]["_visible"][0] && Dress_data.PantuData[this.charaData["Pantu"]["_menu"]]["thigh"] != 0)
                  {
                     this.charaAdd["ashi" + _loc4_].thigh.actual.thigh.Pantu.gotoAndStop(Dress_data.PantuData[this.charaData["Pantu"]["_menu"]]["thigh"] + 1);
                  }
                  else
                  {
                     this.charaAdd["ashi" + _loc4_].thigh.actual.thigh.Pantu.gotoAndStop(1);
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         else
         {
            try
            {
               if(this.charaData["Bura"]["_visible"][0] && Dress_data.BuraData[_loc3_]["link"] == 0)
               {
                  _loc4_ = 0;
                  for(; _loc4_ <= 1; _loc4_++)
                  {
                     try
                     {
                        this.charaAdd["ashi" + _loc4_].thigh.actual.thigh.Spantu.gotoAndStop(1);
                        if(this.charaData["Bura"]["_visible"][0] && Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["separate"] > 0 && this.charaData["Bura"]["_separate"] == 1)
                        {
                           this.charaAdd["ashi" + _loc4_].thigh.actual.thigh.Spantu.visible = false;
                        }
                        else
                        {
                           this.charaAdd["ashi" + _loc4_].thigh.actual.thigh.Spantu.visible = true;
                           this.charaAdd["ashi" + _loc4_].thigh.actual.thigh.Spantu.gotoAndStop(Dress_data.BuraData[_loc3_]["Spantu"] + 1);
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  _loc4_ = 0;
                  while(_loc4_ <= 1)
                  {
                     try
                     {
                        this.charaAdd["ashi" + _loc4_].thigh.actual.thigh.Spantu.visible = false;
                        this.charaAdd["ashi" + _loc4_].thigh.actual.thigh.Spantu.gotoAndStop(1);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc4_++;
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         new Huku_MjiSen(param1);
      }
   }
}
