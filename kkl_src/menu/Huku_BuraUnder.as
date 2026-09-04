package menu
{
   public class Huku_BuraUnder
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_BuraUnder(param1:int)
      {
         var _loc2_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         try
         {
            _loc2_ = 0;
            while(_loc2_ <= 1)
            {
               if(this.charaData["BodyWidth"]["_meter"] >= 50 && this.charaAdd.mune.Bura.Bura["Bura" + _loc2_].buraUnder.currentFrame == 2)
               {
                  this.charaAdd.mune.Bura.Bura["Bura" + _loc2_].buraUnder.gotoAndStop(1);
                  new Chara_ColorClass(param1,"Bura");
               }
               else if(this.charaData["BodyWidth"]["_meter"] < 50 && this.charaAdd.mune.Bura.Bura["Bura" + _loc2_].buraUnder.currentFrame == 1)
               {
                  this.charaAdd.mune.Bura.Bura["Bura" + _loc2_].buraUnder.gotoAndStop(2);
                  new Chara_ColorClass(param1,"Bura");
               }
               _loc2_++;
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
