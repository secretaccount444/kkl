package menu
{
   import system.MeterPersent;
   
   public class Chara_AllBodyHeight
   {
       
      
      public function Chara_AllBodyHeight(param1:int, param2:String)
      {
         var _loc4_:int = 0;
         super();
         var _loc3_:Object = MenuClass.charaData[param1];
         if(MenuClass.systemData["BodyType"]["_menu"] == 0)
         {
            if(param2 == "random")
            {
               _loc4_ = Math.floor(Math.random() * 450) + 450;
               _loc3_["BodyHeight"]["_meter"] = _loc4_;
               new MeterPersent(300,800,"BodyHeight",param1);
            }
            else if(param2 == "tab")
            {
               new MeterPersent(300,800,"AllBodyHeightSet",param1);
            }
            _loc3_["BodyHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         }
         else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
         {
            if(param2 == "random")
            {
               _loc4_ = Math.floor(Math.random() * 400) + 150;
               _loc3_["BodyHeight"]["_meter"] = _loc4_;
               new MeterPersent(0,500,"BodyHeight",param1);
            }
            else if(param2 == "tab")
            {
               new MeterPersent(0,500,"AllBodyHeightSet",param1);
            }
            _loc3_["BodyHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         }
         if(MenuClass.systemData["DeformerReal"]["_menu"] == 0)
         {
            _loc3_["BodySize"]["_meter"] = 80;
            new SetClass(param1,"BodySize","tab");
            _loc3_["Heso"]["_menu"] = 0;
            new SetClass(param1,"Heso","tab");
            _loc3_["douHeight"]["_meter"] = 300;
            if(MenuClass.systemData["BodyType"]["_menu"] == 0)
            {
               new MeterPersent(500,400,"BodyHeight",param1);
            }
            else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
            {
               new MeterPersent(900,-600,"BodyHeight",param1);
            }
            _loc3_["HeadScale"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
            new SetClass(param1,"HeadScale","tab");
            new MeterPersent(500,550,"BodyHeight",param1);
            _loc3_["NeckHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
            new SetClass(param1,"NeckHeight","tab");
            new MeterPersent(500,700,"BodyHeight",param1);
            _loc3_["AshiHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         }
         else if(MenuClass.systemData["DeformerReal"]["_menu"] == 1)
         {
            _loc3_["BodySize"]["_meter"] = 870;
            new SetClass(param1,"BodySize","tab");
            _loc3_["Heso"]["_menu"] = 2;
            new SetClass(param1,"Heso","tab");
            _loc3_["douHeight"]["_meter"] = 100;
            if(MenuClass.systemData["BodyType"]["_menu"] == 0)
            {
               new MeterPersent(100,50,"BodyHeight",param1);
            }
            else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
            {
               new MeterPersent(250,-450,"BodyHeight",param1);
            }
            _loc3_["HeadScale"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
            new SetClass(param1,"HeadScale","tab");
            new MeterPersent(350,400,"BodyHeight",param1);
            _loc3_["NeckHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
            new SetClass(param1,"NeckHeight","tab");
            new MeterPersent(500,750,"BodyHeight",param1);
            _loc3_["AshiHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         }
         if(MenuClass.systemData["DeformerReal"]["_menu"] == 0)
         {
            if(MenuClass.systemData["BodyType"]["_menu"] == 0)
            {
               new MeterPersent(300,150,"BodyHeight",param1);
            }
            else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
            {
               new MeterPersent(500,350,"BodyHeight",param1);
            }
            _loc3_["BodyWidth"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
            new MeterPersent(400,100,"BodyHeight",param1);
            _loc3_["ShoulderWidth"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         }
         else if(MenuClass.systemData["DeformerReal"]["_menu"] == 1)
         {
            if(MenuClass.systemData["BodyType"]["_menu"] == 0)
            {
               _loc3_["BodyWidth"]["_meter"] = 0;
            }
            else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
            {
               _loc3_["BodyWidth"]["_meter"] = 250;
            }
            _loc3_["ShoulderWidth"]["_meter"] = 0;
         }
         new Chara_SetSize(param1,"BodyHeight",param2);
         new Chara_SetSize(param1,"BreastWidth",param2);
         new Huku_YsyatuKata(param1);
         new Chara_SetSize(param1,"ShoulderWidth",param2);
         new Move_HitLine(param1);
      }
   }
}
