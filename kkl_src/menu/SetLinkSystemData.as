package menu
{
   public class SetLinkSystemData
   {
       
      
      public function SetLinkSystemData()
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         super();
         _loc1_ = MenuClass.systemData["FreeRibonPlus"]["_menu"];
         if(MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] == MenuClass.systemData["FreeRibonScaleY" + _loc1_]["_meter"])
         {
            MenuClass.systemData["LinkFreeRibonScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkFreeRibonScale"]["_flag"] = false;
         }
         if(MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] == MenuClass.systemData["FreeRibonScaleY" + _loc1_]["_meter"] && (MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] >= 70 && MenuClass.systemData["FreeRibonLine" + _loc1_]["_menu"] == 1 || MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] < 70 && MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] >= 50 && MenuClass.systemData["FreeRibonLine" + _loc1_]["_menu"] == 2 || MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] < 50 && MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] >= 30 && MenuClass.systemData["FreeRibonLine" + _loc1_]["_menu"] == 3 || MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] < 30 && MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] >= 10 && MenuClass.systemData["FreeRibonLine" + _loc1_]["_menu"] == 4 || MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] < 10 && MenuClass.systemData["FreeRibonScale" + _loc1_]["_meter"] >= 0 && MenuClass.systemData["FreeRibonLine" + _loc1_]["_menu"] == 5) && MenuClass.systemData["FreeRibonLine" + _loc1_]["_color0"][0] == 61)
         {
            MenuClass.systemData["LinkFreeRibonLine"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkFreeRibonLine"]["_flag"] = false;
         }
         _loc1_ = MenuClass.systemData["FreeBeltPlus"]["_menu"];
         if(MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] == MenuClass.systemData["FreeBeltScaleY" + _loc1_]["_meter"])
         {
            MenuClass.systemData["LinkFreeBeltScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkFreeBeltScale"]["_flag"] = false;
         }
         if(MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] == MenuClass.systemData["FreeBeltScaleY" + _loc1_]["_meter"] && (MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] >= 80 && MenuClass.systemData["FreeBeltLine" + _loc1_]["_menu"] == 1 || MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] < 80 && MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] >= 60 && MenuClass.systemData["FreeBeltLine" + _loc1_]["_menu"] == 2 || MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] < 60 && MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] >= 40 && MenuClass.systemData["FreeBeltLine" + _loc1_]["_menu"] == 3 || MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] < 40 && MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] >= 20 && MenuClass.systemData["FreeBeltLine" + _loc1_]["_menu"] == 4 || MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] < 20 && MenuClass.systemData["FreeBeltScale" + _loc1_]["_meter"] >= 0 && MenuClass.systemData["FreeBeltLine" + _loc1_]["_menu"] == 5) && MenuClass.systemData["FreeBeltLine" + _loc1_]["_color0"][0] == 61)
         {
            MenuClass.systemData["LinkFreeBeltLine"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkFreeBeltLine"]["_flag"] = false;
         }
         _loc1_ = MenuClass.systemData["FreeChairPlus"]["_menu"];
         if((MenuClass.systemData["FreeChairScale" + _loc1_]["_meter"] >= 80 && MenuClass.systemData["FreeChairLine" + _loc1_]["_menu"] == 1 || MenuClass.systemData["FreeChairScale" + _loc1_]["_meter"] < 80 && MenuClass.systemData["FreeChairScale" + _loc1_]["_meter"] >= 60 && MenuClass.systemData["FreeChairLine" + _loc1_]["_menu"] == 2 || MenuClass.systemData["FreeChairScale" + _loc1_]["_meter"] < 60 && MenuClass.systemData["FreeChairScale" + _loc1_]["_meter"] >= 40 && MenuClass.systemData["FreeChairLine" + _loc1_]["_menu"] == 3 || MenuClass.systemData["FreeChairScale" + _loc1_]["_meter"] < 40 && MenuClass.systemData["FreeChairScale" + _loc1_]["_meter"] >= 20 && MenuClass.systemData["FreeChairLine" + _loc1_]["_menu"] == 4 || MenuClass.systemData["FreeChairScale" + _loc1_]["_meter"] < 20 && MenuClass.systemData["FreeChairScale" + _loc1_]["_meter"] >= 0 && MenuClass.systemData["FreeChairLine" + _loc1_]["_menu"] == 5) && MenuClass.systemData["FreeChairLine" + _loc1_]["_color0"][0] == 61)
         {
            MenuClass.systemData["LinkFreeChairScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkFreeChairScale"]["_flag"] = false;
         }
         _loc1_ = MenuClass.systemData["FreeFlagPlus"]["_menu"];
         if(MenuClass.systemData["FreeFlagScale" + _loc1_]["_meter"] == MenuClass.systemData["FreeFlagScaleY" + _loc1_]["_meter"])
         {
            MenuClass.systemData["LinkFreeFlagScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkFreeFlagScale"]["_flag"] = false;
         }
         _loc1_ = MenuClass.systemData["FreeHukidashiPlus"]["_menu"];
         if(MenuClass.systemData["FreeHukidashiScale" + _loc1_]["_meter"] == MenuClass.systemData["FreeHukidashiScaleY" + _loc1_]["_meter"])
         {
            MenuClass.systemData["LinkFreeHukidashiScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkFreeHukidashiScale"]["_flag"] = false;
         }
         if(MenuClass.systemData["FreeHukidashiExtraScale" + _loc1_]["_meter"] == MenuClass.systemData["FreeHukidashiExtraScaleY" + _loc1_]["_meter"])
         {
            MenuClass.systemData["LinkFreeHukidashiExtraScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkFreeHukidashiExtraScale"]["_flag"] = false;
         }
         if(MenuClass.systemData["LoadScale" + _loc1_]["_meter"] == MenuClass.systemData["LoadScaleY" + _loc1_]["_meter"])
         {
            MenuClass.systemData["LinkLoadScale"]["_flag"] = true;
         }
         else
         {
            MenuClass.systemData["LinkLoadScale"]["_flag"] = false;
         }
      }
   }
}
