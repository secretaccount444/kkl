package menu
{
   public class SoundCharaFc
   {
       
      
      private var charaData:Object;
      
      public function SoundCharaFc(param1:int, param2:Object, param3:Number)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         super();
         if(MenuClass.systemData["SoundVolume"]["_meter"] != 0)
         {
            this.charaData = MenuClass.charaData[param1];
            _loc6_ = (this.charaData["Xmove"]["_meter"] / 500 - 1) * 1.5;
            if(param2 == "n")
            {
               _loc5_ = this.charaData["s"]["_sClick"] / 100 + Math.random() * 1 - 0.5;
               _loc4_ = Math.floor(Math.random() * 6);
               new SoundFc(param2 + _loc4_,_loc5_,_loc6_);
            }
            else if(param2 == "p")
            {
               _loc5_ = this.charaData["s"]["_sClick"] / 100 + Math.random() * 1 - 0.5;
               _loc4_ = Math.floor(Math.random() * 3);
               new SoundFc(param2 + _loc4_,_loc5_,_loc6_);
            }
            else if(param2 == "b0" || param2 == "b1")
            {
               new SoundFc(String(param2),param3,_loc6_);
            }
            else if(param2 == "k")
            {
               _loc5_ = Math.random() * 0.8 + 0.2;
               _loc4_ = Math.floor(Math.random() * 4);
               new SoundFc(param2 + _loc4_,_loc5_,_loc6_);
            }
            else if(param2 == "kr")
            {
               _loc5_ = Math.random() * 0.8 + 0.2;
               _loc4_ = Math.floor(Math.random() * 8);
               new SoundFc(param2 + _loc4_,_loc5_,_loc6_);
            }
         }
      }
   }
}
