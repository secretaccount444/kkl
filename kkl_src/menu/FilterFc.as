package menu
{
   import flash.display.MovieClip;
   import flash.filters.DropShadowFilter;
   import parameter.Color_data;
   import parameter.Dress_data;
   import system.MeterPersent;
   
   public class FilterFc
   {
       
      
      public function FilterFc(param1:MovieClip, param2:String, param3:int, param4:Boolean, param5:String)
      {
         var _loc6_:DropShadowFilter = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:Array = null;
         var _loc11_:int = 0;
         super();
         if(param4)
         {
            _loc6_ = new DropShadowFilter();
            if(param2 == "CharaDropShadow")
            {
               _loc6_.quality = MenuClass.charaData[param3]["CharaDropShadow"]["_menu"] + 1;
               if((_loc9_ = String(MenuClass.charaData[param3]["CharaDropShadow"]["_color0"][0])).length >= 4)
               {
                  _loc6_.color = uint("0x" + MenuClass.charaData[param3]["CharaDropShadow"]["_color0"][0]);
               }
               else
               {
                  _loc6_.color = uint("0x" + Color_data.ColorData[Dress_data.DressData["CharaDropShadow"][0]["_color0"][0]][MenuClass.charaData[param3]["CharaDropShadow"]["_color0"][0]][1]);
               }
            }
            if(param2 == "CharaDropShadowIn" || param2 == "CharaDropShadow")
            {
               _loc6_.inner = MenuClass.charaData[param3]["CharaDropShadowIn"]["_check"];
            }
            if(param2 == "CharaDropShadowOut" || param2 == "CharaDropShadow")
            {
               _loc6_.knockout = MenuClass.charaData[param3]["CharaDropShadowOut"]["_check"];
            }
            if(param2 == "CharaDropShadowHide" || param2 == "CharaDropShadow")
            {
               _loc6_.hideObject = MenuClass.charaData[param3]["CharaDropShadowHide"]["_check"];
            }
            if(param2 == "CharaDropShadowAlpha" || param2 == "CharaDropShadow")
            {
               new MeterPersent(0,1,"CharaDropShadowAlpha",param3);
               _loc6_.alpha = MeterPersent.MeterPersentNum;
            }
            if(param2 == "CharaDropShadowStr" || param2 == "CharaDropShadow")
            {
               new MeterPersent(0,30,"CharaDropShadowStr",param3);
               _loc6_.strength = MeterPersent.MeterPersentNum;
            }
            new MeterPersent(1,5,"Zoom",0);
            _loc7_ = 0;
            if(param5 == "camera")
            {
               _loc10_ = [0.5,1,1.5,2,2.5];
               _loc11_ = MenuClass.systemData["CameraKaizoudo"]["_menu"];
               _loc7_ = _loc10_[_loc11_] * MeterPersent.MeterPersentNum;
            }
            else
            {
               _loc7_ = MeterPersent.MeterPersentNum;
            }
            if(param2 == "CharaDropShadowX" || param2 == "CharaDropShadow")
            {
               _loc8_ = 50 * (_loc7_ * 2);
               new MeterPersent(0,_loc8_,"CharaDropShadowX",param3);
               _loc6_.blurX = MeterPersent.MeterPersentNum;
               if(param5 != "tab")
               {
                  new SetLinkData(param3);
               }
               if(MenuClass.systemData["LinkCharaDropShadow"]["_flag"])
               {
                  MenuClass.charaData[param3]["CharaDropShadowY"]["_meter"] = MenuClass.charaData[param3]["CharaDropShadowX"]["_meter"];
               }
            }
            if(param2 == "CharaDropShadowY" || param2 == "CharaDropShadow")
            {
               _loc8_ = 50 * (_loc7_ * 2);
               new MeterPersent(0,_loc8_,"CharaDropShadowY",param3);
               _loc6_.blurY = MeterPersent.MeterPersentNum;
            }
            if(param2 == "CharaDropShadowRotation" || param2 == "CharaDropShadow")
            {
               new MeterPersent(0,360,"CharaDropShadowRotation",param3);
               _loc6_.angle = MeterPersent.MeterPersentNum;
            }
            if(param2 == "CharaDropShadowDistance" || param2 == "CharaDropShadow")
            {
               _loc8_ = 25 * (_loc7_ * 2);
               new MeterPersent(0,_loc8_,"CharaDropShadowDistance",param3);
               _loc6_.distance = MeterPersent.MeterPersentNum;
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
