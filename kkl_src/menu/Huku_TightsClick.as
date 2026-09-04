package menu
{
   import parameter.Dress_data;
   
   public class Huku_TightsClick
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_TightsClick(param1:int)
      {
         var _loc2_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         if(this.charaData["Tights"]["_visible"][0])
         {
            _loc2_ = 0;
            while(_loc2_ <= 1)
            {
               if(Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["_click"])
               {
                  this.charaAdd["ashi" + _loc2_].thigh.thigh.Tights.buttonMode = true;
                  this.charaAdd["ashi" + _loc2_].shiri.shiri.Tights.buttonMode = true;
                  this.charaAdd["ashi" + _loc2_].foot.foot.Tights.buttonMode = true;
                  try
                  {
                     this.charaAdd["ashi" + _loc2_].leg.leg.Tights.buttonMode = true;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  this.charaAdd["ashi" + _loc2_].thigh.thigh.Tights.buttonMode = false;
                  this.charaAdd["ashi" + _loc2_].shiri.shiri.Tights.buttonMode = false;
                  this.charaAdd["ashi" + _loc2_].foot.foot.Tights.buttonMode = false;
                  try
                  {
                     this.charaAdd["ashi" + _loc2_].leg.leg.Tights.buttonMode = false;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               _loc2_++;
            }
         }
      }
   }
}
