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
               _loc4_ = Math.floor(Math.random() * 45) + 45;
               _loc3_["BodyHeight"]["_meter"] = _loc4_;
               new MeterPersent(30,80,"BodyHeight",param1);
            }
            else if(param2 == "tab")
            {
               new MeterPersent(30,80,"AllBodyHeightSet",param1);
            }
            _loc3_["BodyHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         }
         else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
         {
            if(param2 == "random")
            {
               _loc4_ = Math.floor(Math.random() * 40) + 15;
               _loc3_["BodyHeight"]["_meter"] = _loc4_;
               new MeterPersent(0,50,"BodyHeight",param1);
            }
            else if(param2 == "tab")
            {
               new MeterPersent(0,50,"AllBodyHeightSet",param1);
            }
            _loc3_["BodyHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         }
         if(MenuClass.systemData["DeformerReal"]["_menu"] == 0)
         {
            _loc3_["BodySize"]["_meter"] = 80;
            new SetClass(param1,"BodySize","tab");
            _loc3_["Heso"]["_menu"] = 0;
            new SetClass(param1,"Heso","tab");
            _loc3_["douHeight"]["_meter"] = 30;
            if(MenuClass.systemData["BodyType"]["_menu"] == 0)
            {
               new MeterPersent(50,40,"BodyHeight",param1);
            }
            else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
            {
               new MeterPersent(90,-60,"BodyHeight",param1);
            }
            _loc3_["HeadScale"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
            new SetClass(param1,"HeadScale","tab");
            new MeterPersent(50,55,"BodyHeight",param1);
            _loc3_["NeckHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
            new SetClass(param1,"NeckHeight","tab");
            new MeterPersent(50,70,"BodyHeight",param1);
            _loc3_["AshiHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         }
         else if(MenuClass.systemData["DeformerReal"]["_menu"] == 1)
         {
            _loc3_["BodySize"]["_meter"] = 87;
            new SetClass(param1,"BodySize","tab");
            _loc3_["Heso"]["_menu"] = 2;
            new SetClass(param1,"Heso","tab");
            _loc3_["douHeight"]["_meter"] = 10;
            if(MenuClass.systemData["BodyType"]["_menu"] == 0)
            {
               new MeterPersent(10,5,"BodyHeight",param1);
            }
            else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
            {
               new MeterPersent(25,-45,"BodyHeight",param1);
            }
            _loc3_["HeadScale"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
            new SetClass(param1,"HeadScale","tab");
            new MeterPersent(35,40,"BodyHeight",param1);
            _loc3_["NeckHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
            new SetClass(param1,"NeckHeight","tab");
            new MeterPersent(50,75,"BodyHeight",param1);
            _loc3_["AshiHeight"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
         }
         if(MenuClass.systemData["DeformerReal"]["_menu"] == 0)
         {
            if(MenuClass.systemData["BodyType"]["_menu"] == 0)
            {
               new MeterPersent(30,15,"BodyHeight",param1);
            }
            else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
            {
               new MeterPersent(50,35,"BodyHeight",param1);
            }
            _loc3_["BodyWidth"]["_meter"] = Math.floor(MeterPersent.MeterPersentNum);
            new MeterPersent(40,10,"BodyHeight",param1);
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
               _loc3_["BodyWidth"]["_meter"] = 25;
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
