package menu
{
   import parameter.Dress_data;
   
   public class Tab_MenuColorIn
   {
       
      
      public function Tab_MenuColorIn(param1:String, param2:int, param3:String, param4:int)
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         super();
         if(MenuClass.tabData[param1][param2][2]["_color"] == "system" || MenuClass.tabData[param1][param2][2]["_color"] == "systemPlus")
         {
            param4 = 0;
         }
         try
         {
            if(Dress_data.DressData[param3].length > 1)
            {
               _loc5_ = 0;
               while(_loc5_ <= 2)
               {
                  new Tab_VDB(param1,param3,param2,"_color",param4);
                  _loc6_ = Tab_VDB.dataBox["_menu"];
                  _loc7_ = Dress_data.DressCharaData[param4][param3][_loc6_]["_color" + _loc5_][0];
                  if(MenuClass.tabData[param1][param2][2]["_color"] == "chara" || MenuClass.tabData[param1][param2][2]["_color"] == "charaPlus")
                  {
                     MenuClass.charaData[param4][param3]["_color" + _loc5_][0] = _loc7_;
                  }
                  else if(MenuClass.tabData[param1][param2][2]["_color"] == "system" || MenuClass.tabData[param1][param2][2]["_color"] == "systemPlus")
                  {
                     MenuClass.systemData[param3]["_color" + _loc5_][0] = _loc7_;
                  }
                  _loc5_++;
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
