package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_tabMaskClass
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_tabMaskClass()
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
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         targetMC = param1.currentTarget as MovieClip;
         var _loc3_:String = MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_menu"];
         if(_loc3_ == "charaPlus")
         {
            _loc5_ = MenuClass.tabData[param1.currentTarget.headerName][param1.currentTarget.targetJ][2]["_data"];
            _loc6_ = MenuClass.systemData[_loc5_]["_menu"];
            _loc2_ = targetMC.tabName + _loc6_;
         }
         else
         {
            _loc2_ = targetMC.tabName;
         }
         targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         new Tab_VC(targetMC.headerName,targetMC.targetJ,_loc2_);
         if(MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_mask"] == 1)
         {
            MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_mask"] = 0;
         }
         else
         {
            ++MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_mask"];
         }
         if(MenuClass._nowTargetMode == "All")
         {
            _loc4_ = 0;
            for(; _loc4_ <= MenuClass._characterNum; new SetClass(_loc4_,targetMC.tabName,"tab"),_loc4_++)
            {
               MenuClass.charaData[_loc4_][_loc2_]["_mask"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_mask"];
               try
               {
                  if(MenuClass.charaData[_loc4_][_loc2_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc4_][_loc2_]["_visible"].length == 1)
                  {
                     MenuClass.charaData[_loc4_][_loc2_]["_visible"][Tab_VC.menuNum] = true;
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
            _loc4_ = 0;
            while(_loc4_ <= MenuClass._characterNum)
            {
               if(MenuClass._nowSelectChara[_loc4_])
               {
                  MenuClass.charaData[_loc4_][_loc2_]["_mask"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_mask"];
                  try
                  {
                     if(MenuClass.charaData[_loc4_][_loc2_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc4_][_loc2_]["_visible"].length == 1)
                     {
                        MenuClass.charaData[_loc4_][_loc2_]["_visible"][Tab_VC.menuNum] = true;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  new SetClass(_loc4_,targetMC.tabName,"tab");
               }
               _loc4_++;
            }
         }
         else
         {
            try
            {
               if(MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_visible"].length == 1)
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_visible"][Tab_VC.menuNum] = true;
               }
            }
            catch(myError:Error)
            {
            }
            new SetClass(MenuClass._nowCharaNum,targetMC.tabName,"tab");
         }
         if(MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_mask"] == 0)
         {
            targetMC.gotoAndStop(3);
         }
         else if(MenuClass.charaData[MenuClass._nowCharaNum][_loc2_]["_mask"] == 1)
         {
            targetMC.gotoAndStop(4);
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         new Tab_SetClass();
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
