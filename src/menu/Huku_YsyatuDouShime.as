package menu
{
   import parameter.Dress_data;
   
   public class Huku_YsyatuDouShime
   {
       
      
      public function Huku_YsyatuDouShime(param1:int)
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc4_:int = _loc3_["Waist"]["_menu"];
         _loc2_.dou.vestUeSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         _loc2_.dou.vestMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         _loc2_.dou.vestNakaSen.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         _loc5_ = 0;
         while(_loc5_ <= Main.hukusuuNum)
         {
            if(_loc3_["BeltPlus"]["_visible"][_loc5_] && _loc3_["Belt" + _loc5_]["_mask"] == 0)
            {
               if(_loc3_["Belt" + _loc5_]["_depth"] >= 2)
               {
                  _loc6_ = 0;
                  for(; _loc6_ <= 1; _loc6_++)
                  {
                     try
                     {
                        _loc2_["belt" + _loc5_ + "_" + _loc6_].beltMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
                        _loc2_["belt" + _loc5_ + "_" + _loc6_].beltUeSenMask0.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
                        _loc2_["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
                        if(_loc3_["BeltLine" + _loc5_]["_menu"] == 0)
                        {
                           _loc2_["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen0.gotoAndStop(6);
                           _loc2_["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen1.gotoAndStop(6);
                        }
                        else
                        {
                           _loc2_["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen0.gotoAndStop(_loc3_["BeltLine" + _loc5_]["_menu"]);
                           _loc2_["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen1.gotoAndStop(_loc3_["BeltLine" + _loc5_]["_menu"]);
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  _loc6_ = 0;
                  for(; _loc6_ <= 1; _loc6_++)
                  {
                     try
                     {
                        _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
                        _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltUeSenMask0.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
                        _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
                        if(_loc3_["BeltLine" + _loc5_]["_menu"] == 0)
                        {
                           _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen0.gotoAndStop(6);
                           _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen1.gotoAndStop(6);
                        }
                        else
                        {
                           _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen0.gotoAndStop(_loc3_["BeltLine" + _loc5_]["_menu"]);
                           _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen1.gotoAndStop(_loc3_["BeltLine" + _loc5_]["_menu"]);
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
            }
            _loc5_++;
         }
         _loc2_.dou.ysyatuUeSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         _loc2_.dou.ysyatuMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         _loc2_.dou.ysyatuNakaSen.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         _loc2_.dou.tsyatuUeSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         _loc2_.dou.tsyatuMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         _loc2_.dou.tsyatuNakaSen.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"]);
         var _loc7_:int = _loc3_["TsyatuSkirt"]["_menu"];
         var _loc8_:Boolean = false;
         if(_loc3_["Tsyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc7_]["skirt"] != 0)
         {
            _loc8_ = true;
         }
         _loc7_ = _loc3_["YsyatuSkirt"]["_menu"];
         var _loc9_:Boolean = false;
         if(_loc3_["Ysyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc7_]["skirt"] != 0)
         {
            _loc9_ = true;
         }
         if(Dress_data.ObjData["Waist"][_loc4_]["harabote"] == 0)
         {
            if((_loc3_["Skirt"]["_visible"][0] || _loc3_["Zubon"]["_visible"][0]) && !_loc8_ && !_loc9_)
            {
               if(_loc3_["Skirt"]["_depth"] >= 1)
               {
                  _loc2_.dou.tsyatuUeSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"] + 6);
                  _loc2_.dou.tsyatuMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"] + 6);
                  _loc2_.dou.tsyatuNakaSen.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"] + 6);
               }
               if(_loc3_["Skirt"]["_depth"] == 2)
               {
                  _loc2_.dou.ysyatuUeSenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"] + 6);
                  _loc2_.dou.ysyatuMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"] + 6);
                  _loc2_.dou.ysyatuNakaSen.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"] + 6);
               }
               _loc5_ = 0;
               while(_loc5_ <= Main.hukusuuNum)
               {
                  if(_loc3_["Skirt"]["_depth"] >= 1 && _loc3_["Belt" + _loc5_]["_depth"] == 0)
                  {
                     _loc6_ = 0;
                     for(; _loc6_ <= 1; _loc6_++)
                     {
                        try
                        {
                           _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"] + 6);
                           _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltUeSenMask0.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"] + 6);
                           _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc4_]["dou"] + 6);
                           if(_loc3_["BeltLine" + _loc5_ + "_" + _loc6_]["_menu"] == 0)
                           {
                              _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen0.gotoAndStop(6);
                              _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen1.gotoAndStop(6);
                           }
                           else
                           {
                              _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen0.gotoAndStop(_loc3_["BeltLine" + _loc5_]["_menu"]);
                              _loc2_.dou["belt" + _loc5_ + "_" + _loc6_].beltNakaSen0.Sen.sen1.gotoAndStop(_loc3_["BeltLine" + _loc5_]["_menu"]);
                           }
                        }
                        catch(myError:Error)
                        {
                           continue;
                        }
                     }
                  }
                  _loc5_++;
               }
            }
         }
      }
   }
}
