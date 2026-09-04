package menu
{
   import parameter.Dress_data;
   
   public class Chara_SelectIcon
   {
       
      
      public function Chara_SelectIcon(param1:int)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         super();
         if(!MenuClass.ClickRock && !MenuClass.HukuRock)
         {
            if(MenuClass._nowHeaderName != null)
            {
               if(MenuClass._nowTargetMode == "Select")
               {
                  MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.visible = false;
                  MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.gotoAndStop(1);
                  MenuClass._nowCharaNum = param1;
                  MenuClass.systemData["SelectCharacter"]["_menu"] = param1;
                  if(MenuClass.charaData[param1]["SelectCharacter"]["_visible"][0])
                  {
                     MenuClass.charaAddDepth[param1].charaSelect.visible = true;
                     MenuClass.charaAddDepth[param1].charaSelect.gotoAndPlay(2);
                  }
               }
               else if(MenuClass._nowTargetMode == "SelectPlus")
               {
                  if(MenuClass._nowSelectChara[param1] && MenuClass._nowCharaNum == param1)
                  {
                     _loc2_ = false;
                     _loc3_ = 1;
                     _loc4_ = 0;
                     while(_loc4_ <= MenuClass._characterNum)
                     {
                        _loc3_ = param1 - _loc4_;
                        if(MenuClass._nowSelectChara[_loc4_] && _loc4_ != param1)
                        {
                           MenuClass._nowCharaNum = _loc4_;
                           _loc2_ = true;
                           break;
                        }
                        _loc4_++;
                     }
                     if(_loc2_)
                     {
                        MenuClass._nowSelectChara[param1] = false;
                     }
                  }
                  else
                  {
                     MenuClass._nowSelectChara[param1] = true;
                     MenuClass._nowCharaNum = param1;
                  }
                  _loc4_ = 0;
                  while(_loc4_ <= MenuClass._characterNum)
                  {
                     MenuClass.charaAddDepth[_loc4_].charaSelect.visible = MenuClass._nowSelectChara[_loc4_];
                     if(MenuClass._nowSelectChara[_loc4_])
                     {
                        MenuClass.charaAddDepth[_loc4_].charaSelect.gotoAndStop(2);
                        MenuClass.charaAddDepth[_loc4_].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[_loc4_].charaSelect.obj.obj.scaleY = 0.5;
                     }
                     else
                     {
                        MenuClass.charaAddDepth[_loc4_].charaSelect.gotoAndStop(1);
                     }
                     _loc4_++;
                  }
                  MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.obj.obj.scaleY = 0.9;
                  MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.gotoAndPlay(2);
                  MenuClass.systemData["SelectCharacter"]["_menu"] = MenuClass._nowCharaNum;
               }
               else
               {
                  _loc4_ = 0;
                  while(_loc4_ <= MenuClass._characterNum)
                  {
                     try
                     {
                        MenuClass.charaAddDepth[_loc4_].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[_loc4_].charaSelect.obj.obj.scaleY = 0.5;
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc4_++;
                  }
                  try
                  {
                     MenuClass.charaAddDepth[param1].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[param1].charaSelect.obj.obj.scaleY = 0.9;
                  }
                  catch(myError:Error)
                  {
                  }
                  MenuClass._nowCharaNum = param1;
                  MenuClass.systemData["SelectCharacter"]["_menu"] = param1;
                  if(MenuClass.charaData[param1]["SelectCharacter"]["_visible"][0])
                  {
                     MenuClass.charaAddDepth[param1].charaSelect.visible = true;
                     MenuClass.charaAddDepth[param1].charaSelect.gotoAndPlay(2);
                  }
               }
            }
            else
            {
               MenuClass._nowCharaNum = param1;
            }
         }
         if(!MenuClass.ClickRock && !MenuClass.HukuRock)
         {
            new Chara_Depth2(param1,"select","Click");
            if(MenuClass._nowHeaderName == "Hair")
            {
               MenuClass.systemData["HairAll"]["_color0"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color0"][0];
               Dress_data.DressCharaData[0]["HairAll"][0]["_color0"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color0"][0];
               MenuClass.systemData["HairAll"]["_color1"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color1"][0];
               Dress_data.DressCharaData[0]["HairAll"][0]["_color1"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color1"][0];
               MenuClass.systemData["HairAll"]["_color2"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color2"][0];
               Dress_data.DressCharaData[0]["HairAll"][0]["_color2"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color2"][0];
            }
            new Huku_Vibrator(param1);
            new Tab_SetClass();
         }
      }
   }
}
