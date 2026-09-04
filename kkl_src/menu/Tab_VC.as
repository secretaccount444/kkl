package menu
{
   public class Tab_VC
   {
      
      public static var menuNum:int;
       
      
      public function Tab_VC(param1:String, param2:int, param3:String)
      {
         super();
         if(MenuClass.tabData[param1][param2][2]["_menu"] == "chara" || MenuClass.tabData[param1][param2][2]["_menu"] == "charaPlus")
         {
            menuNum = MenuClass.charaData[MenuClass._nowCharaNum][param3]["_menu"];
         }
         else if(MenuClass.tabData[param1][param2][2]["_menu"] == "system" || MenuClass.tabData[param1][param2][2]["_menu"] == "systemPlus")
         {
            menuNum = MenuClass.systemData[param3]["_menu"];
         }
         try
         {
            if(MenuClass.tabData[param1][param2][2]["_visible"] == "chara" || MenuClass.tabData[param1][param2][2]["_menu"] == "charaPlus")
            {
               if(MenuClass.charaData[MenuClass._nowCharaNum][param3]["_visible"].length == 1)
               {
                  menuNum = 0;
               }
            }
            else if(MenuClass.tabData[param1][param2][2]["_visible"] == "system" || MenuClass.tabData[param1][param2][2]["_visible"] == "systemPlus")
            {
               if(MenuClass.systemData[param3]["_visible"].length == 1)
               {
                  menuNum = 0;
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
