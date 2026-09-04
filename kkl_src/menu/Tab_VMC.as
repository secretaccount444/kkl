package menu
{
   public class Tab_VMC
   {
      
      public static var menuNum:int;
       
      
      public function Tab_VMC(param1:String, param2:String, param3:int, param4:int)
      {
         super();
         if(MenuClass.tabData[param1][param4][2]["_menu"] == "chara" || MenuClass.tabData[param1][param4][2]["_menu"] == "charaPlus")
         {
            menuNum = MenuClass.charaData[param3][param2]["_menu"];
         }
         else if(MenuClass.tabData[param1][param4][2]["_menu"] == "system" || MenuClass.tabData[param1][param4][2]["_menu"] == "systemPlus")
         {
            menuNum = MenuClass.systemData[param2]["_menu"];
         }
         if(MenuClass.tabData[param1][param4][2]["_color"] == "chara" || MenuClass.tabData[param1][param4][2]["_color"] == "charaPlus")
         {
            if(MenuClass.charaData[param3][param2]["_color0"].length == 1)
            {
               menuNum = 0;
            }
         }
         else if(MenuClass.tabData[param1][param4][2]["_color"] == "system" || MenuClass.tabData[param1][param4][2]["_color"] == "systemPlus")
         {
            if(MenuClass.systemData[param2]["_color0"].length == 1)
            {
               menuNum = 0;
            }
         }
      }
   }
}
