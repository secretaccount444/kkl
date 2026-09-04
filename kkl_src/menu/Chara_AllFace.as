package menu
{
   import parameter.Chara_IEdata;
   import parameter.Color_data;
   import parameter.Dress_data;
   import system.MeterPersent;
   
   public class Chara_AllFace
   {
       
      
      public function Chara_AllFace(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:Array = null;
         super();
         var _loc5_:Object = MenuClass.charaData[param1];
         if(param2 == "AllFace")
         {
            if(MenuClass.systemData["DeformerReal"]["_menu"] == 0)
            {
               _loc5_["Hoho"]["_menu"] = 0;
               _loc5_["EyeballLight"]["_menu"] = 0;
               _loc5_["NoseShadow"]["_visible"][0] = false;
            }
            else if(MenuClass.systemData["DeformerReal"]["_menu"] == 1)
            {
               _loc5_["Hoho"]["_menu"] = 16;
               _loc4_ = Math.floor(Math.random() * 10) + 20;
               _loc5_["EyeballLight"]["_menu"] = 1;
               _loc5_["NoseShadow"]["_visible"][0] = true;
               if(_loc5_["Hiyake"]["_visible"][0])
               {
                  _loc5_["NoseShadowAlpha"]["_meter"] = 20;
               }
               else if(_loc5_["Body"]["_color0"][0] == 7)
               {
                  _loc5_["NoseShadowAlpha"]["_meter"] = 15;
               }
               else if(_loc5_["Body"]["_color0"][0] == 6)
               {
                  _loc5_["NoseShadowAlpha"]["_meter"] = 20;
               }
               else if(_loc5_["Body"]["_color0"][0] == 5)
               {
                  _loc5_["NoseShadowAlpha"]["_meter"] = 25;
               }
               else if(_loc5_["Body"]["_color0"][0] == 4)
               {
                  _loc5_["NoseShadowAlpha"]["_meter"] = 30;
               }
               else if(_loc5_["Body"]["_color0"][0] == 3)
               {
                  _loc5_["NoseShadowAlpha"]["_meter"] = 35;
               }
               else if(_loc5_["Body"]["_color0"][0] == 2)
               {
                  _loc5_["NoseShadowAlpha"]["_meter"] = 40;
               }
               else if(_loc5_["Body"]["_color0"][0] == 1)
               {
                  _loc5_["NoseShadowAlpha"]["_meter"] = 45;
               }
               else if(_loc5_["Body"]["_color0"][0] == 0)
               {
                  _loc5_["NoseShadowAlpha"]["_meter"] = 50;
               }
               _loc5_["NoseShadow"]["_menu"] = 14;
               _loc5_["NoseShadowHeight"]["_meter"] = 20;
               _loc5_["NoseShadowScaleX"]["_meter"] = 20;
               _loc5_["NoseShadowScaleY"]["_meter"] = 30;
            }
            new SetClass(param1,"Hoho","tab");
            new SetClass(param1,"EyeballLight","tab");
            new SetClass(param1,"NoseShadow","tab");
            new SetClass(param1,"NoseShadowAlpha","tab");
            new SetClass(param1,"NoseShadowHeight","tab");
            new SetClass(param1,"NoseShadowScaleX","tab");
            new SetClass(param1,"NoseShadowScaleX","tab");
            _loc6_ = new Array(0,1,2,5,6,7,8,9,11,12,14,15,16,17,18,19,20,22,23,24,25,26,27,28,32,33,34,36,37,38);
            _loc4_ = Math.floor(Math.random() * _loc6_.length);
            _loc5_["AllFaceSet"]["_color0"][0] = _loc6_[_loc4_];
         }
         else if(MenuClass._nowTargetMode == "Select")
         {
            new Tab_IEInOut("allFaceSet",Chara_IEdata.AllFaceSetData[_loc5_["AllFaceSet"]["_menu"]],MenuClass._nowCharaNum);
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            if(_loc5_["SelectCharacter"]["_visible"][0])
            {
               if(MenuClass._nowSelectChara[param1])
               {
                  new Tab_IEInOut("allFaceSet",Chara_IEdata.AllFaceSetData[_loc5_["AllFaceSet"]["_menu"]],param1);
               }
            }
         }
         else if(MenuClass._nowTargetMode == "All")
         {
            if(_loc5_["SelectCharacter"]["_visible"][0])
            {
               new Tab_IEInOut("allFaceSet",Chara_IEdata.AllFaceSetData[_loc5_["AllFaceSet"]["_menu"]],param1);
            }
         }
         _loc4_ = Math.floor(Math.random() * 60) + 40;
         _loc5_["EyebrowRotation"]["_meter"] = _loc4_;
         new MeterPersent(20,60,"EyebrowRotation",param1);
         _loc5_["EyebrowY"]["_meter"] = MeterPersent.MeterPersentNum;
         new Emotion_Eyebrow(param1);
         _loc4_ = Math.floor(Math.random() * 20) + 40;
         _loc5_["MouthScale"]["_meter"] = _loc4_;
         new SetClass(param1,"MouthScale","tab");
         if(MenuClass.systemData["BodyType"]["_menu"] == 0)
         {
            _loc5_["MouthY"]["_meter"] = 61;
         }
         else if(MenuClass.systemData["BodyType"]["_menu"] == 1)
         {
            _loc5_["MouthY"]["_meter"] = 66;
         }
         new SetClass(param1,"MouthY","tab");
         if(MenuClass.systemData["DeformerReal"]["_menu"] == 0)
         {
            _loc5_["EyeScaleX"]["_meter"] = _loc5_["EyeScaleY"]["_meter"] = 50;
         }
         else if(MenuClass.systemData["DeformerReal"]["_menu"] == 1)
         {
            if(param2 == "AllFace")
            {
               _loc4_ = Math.floor(Math.random() * 5) + 20;
            }
            else
            {
               _loc4_ = 20;
            }
            _loc5_["EyeScaleX"]["_meter"] = _loc5_["EyeScaleY"]["_meter"] = _loc4_;
         }
         if((_loc4_ = Math.floor(Math.random() * 10)) == 0)
         {
            _loc5_["EyeballScale"]["_meter"] = 45;
            _loc5_["EyeballScaleY"]["_meter"] = 45;
            _loc5_["EyeballY"]["_meter"] = 49;
         }
         else if(_loc4_ == 1)
         {
            _loc5_["EyeballScale"]["_meter"] = 40;
            _loc5_["EyeballScaleY"]["_meter"] = 40;
            _loc5_["EyeballY"]["_meter"] = 48;
         }
         else if(_loc4_ == 2)
         {
            _loc5_["EyeballScale"]["_meter"] = 35;
            _loc5_["EyeballScaleY"]["_meter"] = 35;
            _loc5_["EyeballY"]["_meter"] = 47;
         }
         else if(_loc4_ == 3)
         {
            _loc5_["EyeballScale"]["_meter"] = 45;
            _loc5_["EyeballScaleY"]["_meter"] = 45;
         }
         else if(_loc4_ == 4)
         {
            _loc5_["EyeballScale"]["_meter"] = 40;
            _loc5_["EyeballScaleY"]["_meter"] = 40;
            _loc5_["EyeballY"]["_meter"] = 49;
         }
         else
         {
            _loc5_["EyeballScale"]["_meter"] = 50;
            _loc5_["EyeballScaleY"]["_meter"] = 50;
            _loc5_["EyeballY"]["_meter"] = 50;
         }
         new SetClass(param1,"EyeballScale","tab");
         new SetClass(param1,"EyeScaleX","tab");
         if(String(_loc5_["AllFaceSet"]["_color0"][0]).length > 2)
         {
            _loc5_["EyeballRight"]["_color0"][0] = _loc5_["AllFaceSet"]["_color0"][0];
            _loc5_["EyeballLeft"]["_color0"][0] = _loc5_["AllFaceSet"]["_color0"][0];
            Dress_data.DressCharaData[param1]["EyeballRight"][0]["_color0"][0] = _loc5_["AllFaceSet"]["_color0"][0];
            Dress_data.DressCharaData[param1]["EyeballLeft"][0]["_color0"][0] = _loc5_["AllFaceSet"]["_color0"][0];
         }
         else
         {
            _loc3_ = 0;
            while(_loc3_ < Color_data.ColorData[0].length)
            {
               if(Color_data.ColorData[0][_loc3_][0]["_code"] == Color_data.ColorData[8][_loc5_["AllFaceSet"]["_color0"][0]][0]["_code"])
               {
                  _loc5_["EyeballRight"]["_color0"][0] = _loc3_;
                  _loc5_["EyeballLeft"]["_color0"][0] = _loc3_;
                  Dress_data.DressCharaData[param1]["EyeballRight"][0]["_color0"][0] = _loc3_;
                  Dress_data.DressCharaData[param1]["EyeballLeft"][0]["_color0"][0] = _loc3_;
               }
               _loc3_++;
            }
         }
         new Chara_ColorClass(param1,"EyeballRight");
         new Chara_ColorClass(param1,"EyeballLeft");
      }
   }
}
