package menu
{
   import flash.display.MovieClip;
   import flash.filters.BlurFilter;
   import system.MeterPersent;
   
   public class FilterBlurFc
   {
       
      
      public function FilterBlurFc(param1:MovieClip, param2:String, param3:int, param4:Boolean, param5:String)
      {
         var _loc6_:BlurFilter = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Array = null;
         var _loc10_:int = 0;
         super();
         if(param4)
         {
            _loc6_ = new BlurFilter();
            if(param2 == "CharaBlur")
            {
               _loc6_.quality = MenuClass.charaData[param3]["CharaBlur"]["_menu"] + 1;
            }
            new MeterPersent(1,5,"Zoom",0);
            _loc7_ = 0;
            if(param5 == "camera")
            {
               _loc9_ = [0.5,1,1.5,2,2.5];
               _loc10_ = MenuClass.systemData["CameraKaizoudo"]["_menu"];
               _loc7_ = _loc9_[_loc10_] * MeterPersent.MeterPersentNum;
            }
            else
            {
               _loc7_ = MeterPersent.MeterPersentNum;
            }
            if(param2 == "CharaBlurX" || param2 == "CharaBlur")
            {
               _loc8_ = 50 * (_loc7_ * 2);
               new MeterPersent(0,_loc8_,"CharaBlurX",param3);
               _loc6_.blurX = MeterPersent.MeterPersentNum;
               if(param5 != "tab")
               {
                  new SetLinkData(param3);
               }
               if(MenuClass.systemData["LinkCharaBlur"]["_flag"])
               {
                  MenuClass.charaData[param3]["CharaBlurY"]["_meter"] = MenuClass.charaData[param3]["CharaBlurX"]["_meter"];
               }
            }
            if(param2 == "CharaBlurY" || param2 == "CharaBlur")
            {
               _loc8_ = 50 * (_loc7_ * 2);
               new MeterPersent(0,_loc8_,"CharaBlurY",param3);
               _loc6_.blurY = MeterPersent.MeterPersentNum;
            }
            param1.filters = [_loc6_];
         }
         else
         {
            param1.filters = null;
         }
      }
   }
}
