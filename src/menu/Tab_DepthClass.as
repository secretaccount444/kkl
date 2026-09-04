package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_DepthClass
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_DepthClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:int, param3:String, param4:String) : void
      {
         param1.tabName = param4;
         param1.targetJ = param2;
         param1.headerName = param3;
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         targetMC = param1.currentTarget as MovieClip;
         MenuClass._nowTabName = targetMC.tabName;
         targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         if(MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_menu"])
         {
            _loc3_ = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_menu"];
         }
         else if(MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_meter"])
         {
            _loc3_ = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_meter"];
         }
         if(_loc3_ == "charaPlus" || _loc3_ == "systemPlus")
         {
            _loc4_ = MenuClass.tabData[targetMC.headerName][targetMC.targetJ][2]["_data"];
            _loc5_ = MenuClass.systemData[_loc4_]["_menu"];
            _loc6_ = targetMC.tabName + _loc5_;
         }
         else if(_loc3_ == "chara" || _loc3_ == "system")
         {
            _loc6_ = targetMC.tabName;
         }
         new Tab_VC(targetMC.headerName,targetMC.targetJ,_loc6_);
         if(_loc3_ == "charaPlus" || _loc3_ == "chara")
         {
            if(MenuClass._nowTargetMode == "All")
            {
               _loc2_ = 0;
               for(; _loc2_ <= MenuClass._characterNum; DepthChange(_loc2_,targetMC.targetJ,targetMC.headerName,targetMC.tabName,_loc6_),_loc2_++)
               {
                  try
                  {
                     if(MenuClass.charaData[_loc2_][_loc6_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc2_][_loc6_]["_visible"].length == 1)
                     {
                        MenuClass.charaData[_loc2_][_loc6_]["_visible"][Tab_VC.menuNum] = true;
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
               DepthChange(MenuClass._nowCharaNum,targetMC.targetJ,targetMC.headerName,targetMC.tabName,_loc6_);
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc2_])
                  {
                     try
                     {
                        if(MenuClass.charaData[_loc2_][_loc6_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc2_][_loc6_]["_visible"].length == 1)
                        {
                           MenuClass.charaData[_loc2_][_loc6_]["_visible"][Tab_VC.menuNum] = true;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     MenuClass.charaData[_loc2_][_loc6_]["_depth"] = int(MenuClass.charaData[MenuClass._nowCharaNum][_loc6_]["_depth"]);
                     new SetClass(_loc2_,targetMC.tabName,"depth");
                  }
                  _loc2_++;
               }
            }
            else
            {
               try
               {
                  if(MenuClass.charaData[MenuClass._nowCharaNum][_loc6_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[MenuClass._nowCharaNum][_loc6_]["_visible"].length == 1)
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum][_loc6_]["_visible"][Tab_VC.menuNum] = true;
                  }
               }
               catch(myError:Error)
               {
               }
               DepthChange(MenuClass._nowCharaNum,targetMC.targetJ,targetMC.headerName,targetMC.tabName,_loc6_);
            }
            if(MenuClass.charaData[MenuClass._nowCharaNum][_loc6_]["_depth"] == 0)
            {
               targetMC.gotoAndStop(5);
            }
            else if(MenuClass.charaData[MenuClass._nowCharaNum][_loc6_]["_depth"] == 1)
            {
               targetMC.gotoAndStop(6);
            }
            else if(MenuClass.charaData[MenuClass._nowCharaNum][_loc6_]["_depth"] == 2)
            {
               targetMC.gotoAndStop(7);
            }
            else if(MenuClass.charaData[MenuClass._nowCharaNum][_loc6_]["_depth"] == 3)
            {
               targetMC.gotoAndStop(8);
            }
         }
         else
         {
            DepthChange2(targetMC.targetJ,targetMC.headerName,targetMC.tabName,_loc6_);
            if(MenuClass.systemData[_loc6_]["_depth"] == 0)
            {
               targetMC.gotoAndStop(5);
            }
            else if(MenuClass.systemData[_loc6_]["_depth"] == 1)
            {
               targetMC.gotoAndStop(6);
            }
            else if(MenuClass.systemData[_loc6_]["_depth"] == 2)
            {
               targetMC.gotoAndStop(7);
            }
            else if(MenuClass.systemData[_loc6_]["_depth"] == 3)
            {
               targetMC.gotoAndStop(8);
            }
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         new Tab_SetClass();
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function DepthChange(param1:int, param2:int, param3:String, param4:String, param5:String) : void
      {
         var _loc6_:String = null;
         if(param3 == "HairEx")
         {
            _loc6_ = param5.replace("HairEx","");
            if(MenuClass.charaData[param1]["HairExAdd" + _loc6_]["_add0"] == 2 || MenuClass.charaData[param1]["HairExAdd" + _loc6_]["_add0"] == 3)
            {
               if(MenuClass.charaData[param1][param5]["_depth"] == 0)
               {
                  MenuClass.charaData[param1][param5]["_depth"] = 1;
               }
               else
               {
                  MenuClass.charaData[param1][param5]["_depth"] = 0;
               }
            }
            else if(MenuClass.charaData[param1][param5]["_depth"] < 2)
            {
               MenuClass.charaData[param1][param5]["_depth"] += 1;
            }
            else
            {
               MenuClass.charaData[param1][param5]["_depth"] = 0;
            }
         }
         else if(MenuClass.tabData[param3][param2][2]["_depth"] == 1)
         {
            if(MenuClass.charaData[param1][param5]["_depth"] == 0)
            {
               MenuClass.charaData[param1][param5]["_depth"] = 1;
            }
            else
            {
               MenuClass.charaData[param1][param5]["_depth"] = 0;
            }
         }
         else if(MenuClass.tabData[param3][param2][2]["_depth"] == 2)
         {
            if(MenuClass.charaData[param1][param5]["_depth"] < 2)
            {
               MenuClass.charaData[param1][param5]["_depth"] += 1;
            }
            else
            {
               MenuClass.charaData[param1][param5]["_depth"] = 0;
            }
         }
         else if(MenuClass.tabData[param3][param2][2]["_depth"] == 3)
         {
            if(MenuClass.charaData[param1][param5]["_depth"] < 3)
            {
               MenuClass.charaData[param1][param5]["_depth"] += 1;
            }
            else
            {
               MenuClass.charaData[param1][param5]["_depth"] = 0;
            }
         }
         new SetClass(param1,param4,"depth");
      }
      
      public static function DepthChange2(param1:int, param2:String, param3:String, param4:String) : void
      {
         if(MenuClass.tabData[param2][param1][2]["_depth"] == 1)
         {
            if(MenuClass.systemData[param4]["_depth"] == 0)
            {
               MenuClass.systemData[param4]["_depth"] = 1;
            }
            else
            {
               MenuClass.systemData[param4]["_depth"] = 0;
            }
         }
         else if(MenuClass.tabData[param2][param1][2]["_depth"] == 2)
         {
            if(MenuClass.systemData[param4]["_depth"] < 2)
            {
               MenuClass.systemData[param4]["_depth"] += 1;
            }
            else
            {
               MenuClass.systemData[param4]["_depth"] = 0;
            }
         }
         else if(MenuClass.tabData[param2][param1][2]["_depth"] == 3)
         {
            if(MenuClass.systemData[param4]["_depth"] < 3)
            {
               MenuClass.systemData[param4]["_depth"] += 1;
            }
            else
            {
               MenuClass.systemData[param4]["_depth"] = 0;
            }
         }
         new SetClass(0,param3,"depth");
      }
   }
}
