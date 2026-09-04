package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_NumberClass
   {
       
      
      public function Tab_NumberClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:int, param3:String, param4:String) : void
      {
         param1.tabName = param4;
         param1.headerName = param3;
         param1.targetJ = param2;
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc7_:int = 0;
         MenuClass._nowTabName = param1.currentTarget.tabName;
         param1.currentTarget.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_menu"])
         {
            _loc4_ = MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_menu"];
         }
         else if(MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_meter"])
         {
            _loc4_ = MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_meter"];
         }
         if(_loc4_ == "charaPlus" || _loc4_ == "systemPlus")
         {
            _loc2_ = MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_data"];
            _loc3_ = MenuClass.systemData[_loc2_]["_menu"];
            _loc5_ = param1.currentTarget.tabName + _loc3_;
         }
         else if(_loc4_ == "chara" || _loc4_ == "system")
         {
            _loc5_ = param1.currentTarget.tabName;
         }
         new Tab_VC(param1.currentTarget.headerName,param1.currentTarget.targetJ,_loc5_);
         var _loc6_:int = 0;
         if(_loc4_ == "chara" || _loc4_ == "charaPlus")
         {
            if(MenuClass._nowTargetMode == "All")
            {
               _loc7_ = 0;
               for(; _loc7_ <= MenuClass._characterNum; new SetClass(_loc7_,_loc5_,"tab"),_loc7_++)
               {
                  if(_loc5_ == "YsyatuOption")
                  {
                     try
                     {
                        _loc6_ = MenuClass.charaAdd[_loc7_].mune.YsyatuMune2.ysyatu.ysyatu0.option.option.totalFrames - 1;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(_loc5_ == "TsyatuDouOption" || _loc5_ == "YsyatuDouOption" || _loc5_ == "SeihukuDouOption" || _loc5_ == "VestDouOption")
                  {
                     _loc6_ = 14;
                  }
                  if(_loc6_ < MenuClass.charaData[_loc7_][_loc5_]["_number"] + 1)
                  {
                     MenuClass.charaData[_loc7_][_loc5_]["_number"] = 0;
                  }
                  else
                  {
                     MenuClass.charaData[_loc7_][_loc5_]["_number"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_number"] + 1;
                  }
                  try
                  {
                     if(MenuClass.charaData[_loc7_][_loc5_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc7_][_loc5_]["_visible"].length == 1)
                     {
                        MenuClass.charaData[_loc7_][_loc5_]["_visible"][Tab_VC.menuNum] = true;
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc7_ = 0;
               while(_loc7_ <= MenuClass._characterNum)
               {
                  if(_loc5_ == "YsyatuOption")
                  {
                     try
                     {
                        _loc6_ = MenuClass.charaAdd[_loc7_].mune.YsyatuMune2.ysyatu.ysyatu0.option.option.totalFrames - 1;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(_loc5_ == "TsyatuDouOption" || _loc5_ == "YsyatuDouOption" || _loc5_ == "SeihukuDouOption" || _loc5_ == "VestDouOption")
                  {
                     _loc6_ = 14;
                  }
                  if(MenuClass._nowSelectChara[_loc7_])
                  {
                     if(_loc6_ < MenuClass.charaData[_loc7_][_loc5_]["_number"] + 1)
                     {
                        MenuClass.charaData[_loc7_][_loc5_]["_number"] = 0;
                     }
                     else
                     {
                        MenuClass.charaData[_loc7_][_loc5_]["_number"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_number"] + 1;
                     }
                     try
                     {
                        if(MenuClass.charaData[_loc7_][_loc5_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc7_][_loc5_]["_visible"].length == 1)
                        {
                           MenuClass.charaData[_loc7_][_loc5_]["_visible"][Tab_VC.menuNum] = true;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     new SetClass(_loc7_,_loc5_,"tab");
                  }
                  _loc7_++;
               }
            }
            else
            {
               if(_loc5_ == "YsyatuOption")
               {
                  try
                  {
                     _loc6_ = MenuClass.charaAdd[MenuClass._nowCharaNum].mune.YsyatuMune2.ysyatu.ysyatu0.option.option.totalFrames - 1;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else if(_loc5_ == "TsyatuDouOption" || _loc5_ == "YsyatuDouOption" || _loc5_ == "SeihukuDouOption" || _loc5_ == "VestDouOption")
               {
                  _loc6_ = 14;
               }
               if(_loc6_ < MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_number"] + 1)
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_number"] = 0;
               }
               else
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_number"] += 1;
               }
               try
               {
                  if(MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_visible"].length == 1)
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_visible"][Tab_VC.menuNum] = true;
                  }
               }
               catch(myError:Error)
               {
               }
               new SetClass(MenuClass._nowCharaNum,_loc5_,"tab");
            }
            param1.currentTarget.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_number"] + 61);
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         new Tab_SetClass();
         param1.currentTarget.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
