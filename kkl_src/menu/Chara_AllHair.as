package menu
{
   import parameter.Chara_IEdata;
   import parameter.Dress_data;
   
   public class Chara_AllHair
   {
       
      
      public function Chara_AllHair(param1:int, param2:String)
      {
         var _loc5_:Array = null;
         super();
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc4_:int = 0;
         if(MenuClass.systemData["HairType"]["_menu"] == 0)
         {
            _loc5_ = new Array(19,20,24,25,26,27,28,29,30,31,33,34,36,37,38,39,40,41,42,44,45,46,47,48,52,53,"59A59A","A5A657","805DA1","9E5F5F","9D6174","A53852","5A8AA4","445682","684F78","4C865C","9E5F5F","576C3A","646F47","657699","93819E","866A77","634E58","524149","7E6C5C","594D42","DAB369","CB937A","D6AD89","C59794","804D4D","603939","84674A","EDDBC2","BED5BD","C5CAD8","CBC1D0","DBC1C2","7D7E9B","5A5B74","B68796","835061","6D4351","842D43","692336","7E7556","534E37","8A8A8A","676767","B0A3B8","524060","C4C58F","898B49","676837","4B4D28","3A6546","42512D","323E22","9ECBC6","9CB9C9","324061","333C51");
         }
         else if(MenuClass.systemData["HairType"]["_menu"] == 1)
         {
            _loc5_ = [[19,"2A4248","21221D",0],[20,"262A25","16120C",0],[24,"AEA482","322F25",0],[25,"A4926F","2E281F",0],[26,"846C47","251E13",0],[27,"694D21","1F1609",0],[28,"5C4524","19130A",0],[29,"3B2702","150E00",0],[30,"BF9F46","2F2711",0],[31,"AD714C","2D1E14",0],[33,"A4845E","2F261B",0],[34,"A5665D","2C1B19",0],[36,"392420","170E0D",0],[37,"6B382F","1B0E0C",0],[38,"653522","22120B",0],[39,"3D2517","180F09",0],[40,"462C1B","1C120A",0],[41,"5E3F21","1B1209",0],[42,"1F1716","100B0B",0],[44,"35291E","140F0B",0],[45,"736559","201C18",0],[46,"736169","201B1D",0],[47,"302C20","13110D",0],[48,"2E2E2E","0F0F0F",0],[52,"73717D","1B1B1C",1],[53,"2E2E3B","0D0D11",0],["A5A657","7E7F42","212111",1],["9E5F5F","6C4141","201313",0],["9D6174","5F3A46","1F1317",0],["5A8AA4","3D5E70","121C21",1],["445682","27324B","0C1319",0],["684F78","3A2C43","151018",0],["646F47","343A24","14160E",0],["657699","3C465C","14171F",1],["866A77","614D56","1B1518",0],["634E58","271F23","140F11",0],["524149","382C32","100D0E",0],["7E6C5C","3F362E","191512",0],["594D42","3B332C","120F0D",0],["DAB369","B59457","2C2415",0],["CB937A","8E6755","291D18",0],["D6AD89","93765E","2B231B",0],["C59794","8A6A68","332727",1],["804D4D","523131","1A0F0F",0],["603939","301C1C","130B0B",0],["84674A","55422F","1A140F",0],["EDDBC2","A69988","302C27",0],["C5CAD8","8A8E97","38393B",1],["CBC1D0","8E8792","29272A",1],["DBC1C2","998788","333030",1],["7D7E9B","48495A","19191F",1],["5A5B74","2D2D3A","121217",1],["B68796","886570","241B1E",1],["835061","4F303A","1A1013",0],["6D4351","442932","160D10",0],["7E7556","4B4633","191711",0],["534E37","3A3726","100F0B",0],["8A8A8A","535353","1C1C1C",1],["676767","333333","141414",1],["B0A3B8","7B7281","38343B",1],["524060","3D3048","1E1824",0],["C4C58F","898A64","27281D",1],["898B49","5B5C30","1B1C0E",1],["676837","424323","14150B",1],["42512D","2E391F","0D1009",0],["324061","212A40","0A0D13",0]];
         }
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         if(param2 == "random" && MenuClass.tabData["Character"][4][2]["_menu"])
         {
            _loc8_ = true;
         }
         if((param2 == "random" || param2 == "AllHair") && MenuClass.tabData["Character"][4][2]["_color0"])
         {
            _loc7_ = true;
         }
         if(param2 == "tab")
         {
            _loc6_ = true;
         }
         if(param2 == "menu")
         {
            _loc8_ = true;
         }
         if(_loc8_)
         {
            if(MenuClass._nowTargetMode == "Select")
            {
               Tab_IEInOut.execute("allHairSet",Chara_IEdata.AllHairSetData[_loc3_["AllHairSet"]["_menu"]][0],MenuClass._nowCharaNum);
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               if(_loc3_["SelectCharacter"]["_visible"][0])
               {
                  if(MenuClass._nowSelectChara[param1])
                  {
                     Tab_IEInOut.execute("allHairSet",Chara_IEdata.AllHairSetData[_loc3_["AllHairSet"]["_menu"]][0],param1);
                  }
               }
            }
            else if(MenuClass._nowTargetMode == "All")
            {
               if(_loc3_["SelectCharacter"]["_visible"][0])
               {
                  Tab_IEInOut.execute("allHairSet",Chara_IEdata.AllHairSetData[_loc3_["AllHairSet"]["_menu"]][0],param1);
               }
            }
         }
         if(_loc7_)
         {
            if(MenuClass.systemData["HairType"]["_menu"] == 0)
            {
               _loc4_ = Math.floor(Math.random() * _loc5_.length);
               _loc3_["Hair"]["_color0"][0] = _loc5_[_loc4_];
               _loc3_["Hair"]["_color1"][0] = _loc5_[_loc4_];
               _loc3_["Hair"]["_color2"][0] = "56";
               Dress_data.DressCharaData[param1]["Hair"][0]["_color0"][0] = _loc5_[_loc4_];
               Dress_data.DressCharaData[param1]["Hair"][0]["_color1"][0] = _loc5_[_loc4_];
               Dress_data.DressCharaData[param1]["Hair"][0]["_color2"][0] = "56";
            }
            else if(MenuClass.systemData["HairType"]["_menu"] == 1)
            {
               _loc4_ = Math.floor(Math.random() * _loc5_.length);
               _loc3_["Hair"]["_color0"][0] = _loc5_[_loc4_][0];
               _loc3_["Hair"]["_color1"][0] = _loc5_[_loc4_][1];
               _loc3_["Hair"]["_color2"][0] = _loc5_[_loc4_][2];
               Dress_data.DressCharaData[param1]["Hair"][0]["_color0"][0] = _loc5_[_loc4_][0];
               Dress_data.DressCharaData[param1]["Hair"][0]["_color1"][0] = _loc5_[_loc4_][1];
               Dress_data.DressCharaData[param1]["Hair"][0]["_color2"][0] = _loc5_[_loc4_][2];
            }
         }
         else if(_loc6_)
         {
            _loc3_["Hair"]["_color0"][0] = _loc3_["AllHairSet"]["_color0"][0];
            _loc3_["Hair"]["_color1"][0] = _loc3_["AllHairSet"]["_color0"][0];
            _loc3_["Hair"]["_color2"][0] = 56;
            Dress_data.DressCharaData[param1]["Hair"][0]["_color0"][0] = _loc3_["AllHairSet"]["_color0"][0];
            Dress_data.DressCharaData[param1]["Hair"][0]["_color1"][0] = _loc3_["AllHairSet"]["_color0"][0];
            Dress_data.DressCharaData[param1]["Hair"][0]["_color2"][0] = 56;
         }
         if(Chara_IEdata.AllHairSetData[_loc3_["AllHairSet"]["_menu"]][2][0] == 0)
         {
            _loc3_["Bangs"]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
         }
         else
         {
            _loc3_["Bangs"]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
         }
         _loc3_["Bangs"]["_color1"][0] = _loc3_["Hair"]["_color2"][0];
         Dress_data.DressCharaData[param1]["Bangs"][0]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
         Dress_data.DressCharaData[param1]["Bangs"][0]["_color1"][0] = _loc3_["Hair"]["_color2"][0];
         if(Chara_IEdata.AllHairSetData[_loc3_["AllHairSet"]["_menu"]][2][1] == 0)
         {
            _loc3_["HairBack"]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
            _loc3_["HairBack"]["_color1"][0] = _loc3_["Hair"]["_color1"][0];
            Dress_data.DressCharaData[param1]["HairBack"][0]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
            Dress_data.DressCharaData[param1]["HairBack"][0]["_color1"][0] = _loc3_["Hair"]["_color1"][0];
         }
         else
         {
            _loc3_["HairBack"]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
            _loc3_["HairBack"]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
            Dress_data.DressCharaData[param1]["HairBack"][0]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
            Dress_data.DressCharaData[param1]["HairBack"][0]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
         }
         _loc3_["HairBack"]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         Dress_data.DressCharaData[param1]["HairBack"][0]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         _loc3_["SideBurnLeft"]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
         _loc3_["SideBurnLeft"]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
         _loc3_["SideBurnLeft"]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         Dress_data.DressCharaData[param1]["SideBurnLeft"][0]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
         Dress_data.DressCharaData[param1]["SideBurnLeft"][0]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
         Dress_data.DressCharaData[param1]["SideBurnLeft"][0]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         _loc3_["SideBurnRight"]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
         _loc3_["SideBurnRight"]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
         _loc3_["SideBurnRight"]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         Dress_data.DressCharaData[param1]["SideBurnRight"][0]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
         Dress_data.DressCharaData[param1]["SideBurnRight"][0]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
         Dress_data.DressCharaData[param1]["SideBurnRight"][0]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         _loc3_["Eyebrow"]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
         _loc3_["Eyebrow"]["_color1"][0] = _loc3_["Hair"]["_color2"][0];
         Dress_data.DressCharaData[param1]["Eyebrow"][0]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
         Dress_data.DressCharaData[param1]["Eyebrow"][0]["_color1"][0] = _loc3_["Hair"]["_color2"][0];
         _loc3_["UnderHair"]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
         Dress_data.DressCharaData[param1]["UnderHair"][0]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
         if(Chara_IEdata.AllHairSetData[_loc3_["AllHairSet"]["_menu"]][2][2] == 0)
         {
            _loc3_["HairEx" + 0]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
            _loc3_["HairEx" + 0]["_color1"][0] = _loc3_["Hair"]["_color1"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 0][0]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 0][0]["_color1"][0] = _loc3_["Hair"]["_color1"][0];
         }
         else
         {
            _loc3_["HairEx" + 0]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
            _loc3_["HairEx" + 0]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 0][0]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 0][0]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
         }
         _loc3_["HairEx" + 0]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         Dress_data.DressCharaData[param1]["HairEx" + 0][0]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         if(Chara_IEdata.AllHairSetData[_loc3_["AllHairSet"]["_menu"]][2][3] == 0)
         {
            _loc3_["HairEx" + 1]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
            _loc3_["HairEx" + 1]["_color1"][0] = _loc3_["Hair"]["_color1"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 1][0]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 1][0]["_color1"][0] = _loc3_["Hair"]["_color1"][0];
         }
         else
         {
            _loc3_["HairEx" + 1]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
            _loc3_["HairEx" + 1]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 1][0]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 1][0]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
         }
         _loc3_["HairEx" + 1]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         Dress_data.DressCharaData[param1]["HairEx" + 1][0]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         if(Chara_IEdata.AllHairSetData[_loc3_["AllHairSet"]["_menu"]][2][4] == 0)
         {
            _loc3_["HairEx" + 2]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
            _loc3_["HairEx" + 2]["_color1"][0] = _loc3_["Hair"]["_color1"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 2][0]["_color0"][0] = _loc3_["Hair"]["_color0"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 2][0]["_color1"][0] = _loc3_["Hair"]["_color1"][0];
         }
         else
         {
            _loc3_["HairEx" + 2]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
            _loc3_["HairEx" + 2]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 2][0]["_color0"][0] = _loc3_["Hair"]["_color1"][0];
            Dress_data.DressCharaData[param1]["HairEx" + 2][0]["_color1"][0] = _loc3_["Hair"]["_color0"][0];
         }
         _loc3_["HairEx" + 2]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         Dress_data.DressCharaData[param1]["HairEx" + 2][0]["_color2"][0] = _loc3_["Hair"]["_color2"][0];
         new Chara_ColorClass(param1,"Hair");
         new Chara_ColorClass(param1,"Bangs");
         new Chara_ColorClass(param1,"HairBack");
         new Chara_ColorClass(param1,"SideBurnLeft");
         new Chara_ColorClass(param1,"SideBurnRight");
         new Chara_ColorClass(param1,"Eyebrow");
         new Chara_ColorClass(param1,"UnderHair");
         new Chara_ColorClass(param1,"HairEx" + 0);
         new Chara_ColorClass(param1,"HairEx" + 1);
         new Chara_ColorClass(param1,"HairEx" + 2);
      }
   }
}
