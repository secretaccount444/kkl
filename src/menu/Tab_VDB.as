package menu
{
   public class Tab_VDB
   {
      
      public static var dataBox:Object;
       
      
      public function Tab_VDB(param1:String, param2:String, param3:int, param4:String, param5:int)
      {
         super();
         if(MenuClass.tabData[param1][param3][2][param4] == "chara" || MenuClass.tabData[param1][param3][2][param4] == "charaPlus" || MenuClass.tabData[param1][param3][2][param4] == "SelectCharacter")
         {
            dataBox = MenuClass.charaData[param5][param2];
         }
         else if(MenuClass.tabData[param1][param3][2][param4] == "system" || MenuClass.tabData[param1][param3][2][param4] == "systemPlus")
         {
            dataBox = MenuClass.systemData[param2];
         }
      }
   }
}
