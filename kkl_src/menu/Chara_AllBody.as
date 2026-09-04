package menu
{
   import parameter.Chara_IEdata;
   import parameter.Dress_data;
   
   public class Chara_AllBody
   {
       
      
      public function Chara_AllBody(param1:int, param2:String)
      {
         super();
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc4_:int = 0;
         if(param2 == "AllBody" || param2 == "random")
         {
            if(param2 == "random")
            {
               if(MenuClass.systemData["BodyType"]["_menu"] == 0)
               {
                  _loc4_ = Math.floor(Math.random() * 40) + 8;
               }
               else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
               {
                  _loc4_ = Math.floor(Math.random() * 18);
               }
               if(MenuClass._nowTargetMode == "Select")
               {
                  new Tab_IEInOut("allBodySet",Chara_IEdata.AllBodySetMotoData[_loc4_][0],MenuClass._nowCharaNum);
               }
               else if(MenuClass._nowTargetMode == "SelectPlus")
               {
                  if(_loc3_["SelectCharacter"]["_visible"][0])
                  {
                     if(MenuClass._nowSelectChara[param1])
                     {
                        new Tab_IEInOut("allBodySet",Chara_IEdata.AllBodySetMotoData[_loc4_][0],param1);
                     }
                  }
               }
               else if(MenuClass._nowTargetMode == "All")
               {
                  if(_loc3_["SelectCharacter"]["_visible"][0])
                  {
                     new Tab_IEInOut("allBodySet",Chara_IEdata.AllBodySetMotoData[_loc4_][0],param1);
                  }
               }
            }
            if(MenuClass.systemData["DeformerReal"]["_menu"] == 0)
            {
               _loc3_["HandWidth"]["_meter"] = 34;
               _loc3_["Nipple"]["_menu"] = 0;
               if(MenuClass.systemData["BodyType"]["_menu"] == 0)
               {
                  _loc3_["HipWidth"]["_meter"] = 34;
                  _loc3_["Waist"]["_menu"] = 0;
                  if((_loc4_ = Math.floor(Math.random() * 2)) == 0)
                  {
                     _loc3_["Contour"]["_menu"] = 0;
                  }
                  else
                  {
                     _loc3_["Contour"]["_menu"] = 3;
                  }
                  _loc3_["ContourWidth"]["_meter"] = 34;
                  _loc3_["ContourHeight"]["_meter"] = 50;
                  _loc3_["AshiWidth"]["_meter"] = 25;
               }
               else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
               {
                  if((_loc4_ = Math.floor(Math.random() * 3)) == 0)
                  {
                     _loc3_["HipWidth"]["_meter"] = 60;
                     _loc3_["Waist"]["_menu"] = 2;
                  }
                  else if(_loc4_ == 1)
                  {
                     _loc3_["HipWidth"]["_meter"] = 50;
                     _loc3_["Waist"]["_menu"] = 2;
                  }
                  else if(_loc4_ == 2)
                  {
                     _loc3_["HipWidth"]["_meter"] = 40;
                     _loc3_["Waist"]["_menu"] = 1;
                  }
                  if((_loc4_ = Math.floor(Math.random() * 2)) == 0)
                  {
                     _loc3_["Contour"]["_menu"] = 0;
                     _loc3_["ContourHeight"]["_meter"] = 25;
                  }
                  else
                  {
                     _loc3_["Contour"]["_menu"] = 2;
                     _loc3_["ContourHeight"]["_meter"] = 10;
                  }
                  _loc3_["ContourWidth"]["_meter"] = 50;
                  _loc3_["AshiWidth"]["_meter"] = 20;
                  _loc3_["UnderHair"]["_visible"][0] = false;
                  new SetClass(param1,"UnderHair","tab");
               }
            }
            else if(MenuClass.systemData["DeformerReal"]["_menu"] == 1)
            {
               _loc3_["AshiWidth"]["_meter"] = 0;
               _loc3_["HandWidth"]["_meter"] = 0;
               _loc3_["Nipple"]["_menu"] = 3;
               if(MenuClass.systemData["BodyType"]["_menu"] == 0)
               {
                  _loc3_["HipWidth"]["_meter"] = 15;
                  if((_loc4_ = Math.floor(Math.random() * 2)) == 0)
                  {
                     _loc3_["Contour"]["_menu"] = 0;
                  }
                  else
                  {
                     _loc3_["Contour"]["_menu"] = 3;
                  }
                  _loc3_["Waist"]["_menu"] = 0;
                  if((_loc4_ = Math.floor(Math.random() * 40)) == 0 || _loc4_ == 1 || _loc4_ == 2)
                  {
                     _loc3_["Waist"]["_menu"] = 15;
                  }
                  else if(_loc4_ == 3 || _loc4_ == 4)
                  {
                     _loc3_["Waist"]["_menu"] = 3;
                  }
                  else if(_loc4_ == 5)
                  {
                     _loc3_["Waist"]["_menu"] = 9;
                  }
                  else if(_loc4_ == 6 || _loc4_ == 7 || _loc4_ == 8)
                  {
                     _loc3_["Waist"]["_menu"] = 1;
                     _loc3_["HipWidth"]["_meter"] = 40;
                     _loc3_["HandWidth"]["_meter"] = 25;
                  }
                  else if(_loc4_ == 9 || _loc4_ == 10 || _loc4_ == 11 || _loc4_ == 12)
                  {
                     _loc3_["Waist"]["_menu"] = 1;
                     _loc3_["HipWidth"]["_meter"] = 25;
                     _loc3_["HandWidth"]["_meter"] = 15;
                  }
                  else if(_loc4_ == 13 || _loc4_ == 14 || _loc4_ == 15 || _loc4_ == 16 || _loc4_ == 17)
                  {
                     _loc3_["Waist"]["_menu"] = 1;
                     _loc3_["HipWidth"]["_meter"] = 10;
                     _loc3_["HandWidth"]["_meter"] = 5;
                  }
                  if(_loc4_ == 0 || _loc4_ == 1 || _loc4_ == 2 || _loc4_ == 4 || _loc4_ == 5)
                  {
                     _loc3_["Nipple"]["_menu"] = 4;
                  }
                  _loc3_["ContourWidth"]["_meter"] = 20;
                  _loc3_["ContourHeight"]["_meter"] = 40;
               }
               else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
               {
                  if((_loc4_ = Math.floor(Math.random() * 3)) == 0)
                  {
                     _loc3_["HipWidth"]["_meter"] = 40;
                     _loc3_["Waist"]["_menu"] = 2;
                  }
                  else if(_loc4_ == 1)
                  {
                     _loc3_["HipWidth"]["_meter"] = 30;
                     _loc3_["Waist"]["_menu"] = 2;
                  }
                  else if(_loc4_ == 2)
                  {
                     _loc3_["HipWidth"]["_meter"] = 20;
                     _loc3_["Waist"]["_menu"] = 1;
                  }
                  if((_loc4_ = Math.floor(Math.random() * 2)) == 0)
                  {
                     _loc3_["Contour"]["_menu"] = 0;
                     _loc3_["ContourHeight"]["_meter"] = 25;
                  }
                  else
                  {
                     _loc3_["Contour"]["_menu"] = 2;
                     _loc3_["ContourHeight"]["_meter"] = 10;
                  }
                  _loc3_["ContourWidth"]["_meter"] = 40;
                  _loc3_["UnderHair"]["_visible"][0] = false;
                  new SetClass(param1,"UnderHair","tab");
               }
            }
            if(MenuClass.systemData["BodyType"]["_menu"] == 0)
            {
               if((_loc4_ = Math.floor(Math.random() * 80)) <= 2)
               {
                  _loc3_["s"]["_menu"] = 0;
               }
               else if(_loc4_ <= 5)
               {
                  _loc3_["s"]["_menu"] = 3;
               }
               else if(_loc4_ <= 15)
               {
                  _loc3_["s"]["_menu"] = 1;
               }
               else if(_loc4_ <= 25)
               {
                  _loc3_["s"]["_menu"] = 4;
               }
               else if(_loc4_ <= 50)
               {
                  _loc3_["s"]["_menu"] = 5;
               }
               else
               {
                  _loc3_["s"]["_menu"] = 2;
               }
            }
            else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
            {
               if((_loc4_ = Math.floor(Math.random() * 2)) == 0)
               {
                  _loc3_["s"]["_menu"] = 2;
               }
               else if(_loc4_ == 1)
               {
                  _loc3_["s"]["_menu"] = 5;
               }
            }
            new Chara_s(param1,"tab");
            new SetClass(param1,"HandWidth","tab");
            new SetClass(param1,"AshiWidth","tab");
            new SetClass(param1,"ContourWidth","tab");
            new SetClass(param1,"ContourHeight","tab");
            new SetClass(param1,"Contour","tab");
            new SetClass(param1,"Nipple","tab");
            new SetClass(param1,"Waist","tab");
         }
         else
         {
            _loc4_ = MenuClass.systemData["AllBodySet"]["_menu"];
            if(MenuClass._nowTargetMode == "Select")
            {
               new Tab_IEInOut("allBodySet",Chara_IEdata.AllBodySetMotoData[_loc4_][0],MenuClass._nowCharaNum);
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               if(_loc3_["SelectCharacter"]["_visible"][0])
               {
                  if(MenuClass._nowSelectChara[param1])
                  {
                     new Tab_IEInOut("allBodySet",Chara_IEdata.AllBodySetMotoData[_loc4_][0],param1);
                  }
               }
            }
            else if(MenuClass._nowTargetMode == "All")
            {
               if(_loc3_["SelectCharacter"]["_visible"][0])
               {
                  new Tab_IEInOut("allBodySet",Chara_IEdata.AllBodySetMotoData[_loc4_][0],param1);
               }
            }
         }
         _loc3_["UnderHair"]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
         Dress_data.DressCharaData[param1]["UnderHair"][0]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
         new Chara_ColorClass(param1,"UnderHair");
      }
   }
}
