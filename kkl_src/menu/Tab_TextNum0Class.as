package menu
{
   import parameter.Dress_data;
   import parts.Ribbon;
   import parts.Hairpiece;

   public class Tab_TextNum0Class
   {
       
      
      public function Tab_TextNum0Class(param1:String, param2:String, param3:int)
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         super();
         var _loc6_:Boolean = false;
         try
         {
            if(Dress_data.menuCustom[param1][0] >= 0)
            {
               _loc6_ = true;
            }
         }
         catch(myError:Error)
         {
         }
         if(MenuClass.tabData[param2][param3][2]["_menu"] == "charaPlus")
         {
            _loc4_ = MenuClass.tabData[param2][param3][2]["_data"];
            _loc5_ = MenuClass.systemData[_loc4_]["_menu"];

            if (_loc4_ == "RibonPlus") {
               var ribbon = Ribbon.fromCharacter(MenuClass._nowCharaNum, _loc5_);
               
               /* shouldn't have to deal with customNum here? */
               var prevVal = ribbon.getData(param1, "_menu");
               if (prevVal < 0) {
                  ribbon.setData(param1, "_menu", MenuClass.menuData[param1]);
               } else if (prevVal > MenuClass.menuData[param1]) {
                  ribbon.setData(param1, "_menu", 0);
               }

               new Tab_TextInClass(0, param1, ribbon.getData(param1, "_menu"));
            } 
            else if (_loc4_ == "HairExPlus")
            {
               var hairpiece = Hairpiece.fromCharacter(MenuClass._nowCharaNum, _loc5_);
               
               var prevVal = hairpiece.getData(param1, "_menu");
               if (prevVal < 0) {
                  hairpiece.setData(param1, "_menu", MenuClass.menuData[param1]);
               } else if (prevVal > MenuClass.menuData[param1]) {
                  hairpiece.setData(param1, "_menu", 0);
               }

               new Tab_TextInClass(0, param1, hairpiece.getData(param1, "_menu"));
            }
            else if(_loc6_)
            {
               if(Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1] < 0)
               {
                  Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1] = MenuClass.menuData[param1];
               }
               else if(Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1] > MenuClass.menuData[param1])
               {
                  Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1] = 0;
               }
               MenuClass.charaData[MenuClass._nowCharaNum][param1 + _loc5_]["_menu"] = Dress_data.menuCustom[param1][Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1]];
               new Tab_TextInClass(0,param1,Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1]);
            }
            else
            {
               if(MenuClass.charaData[MenuClass._nowCharaNum][param1 + _loc5_]["_menu"] < 0)
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][param1 + _loc5_]["_menu"] = MenuClass.menuData[param1];
               }
               else if(MenuClass.charaData[MenuClass._nowCharaNum][param1 + _loc5_]["_menu"] > MenuClass.menuData[param1])
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][param1 + _loc5_]["_menu"] = 0;
               }
               new Tab_TextInClass(0,param1,MenuClass.charaData[MenuClass._nowCharaNum][param1 + _loc5_]["_menu"]);
            }
         }
         else if(MenuClass.tabData[param2][param3][2]["_menu"] == "chara")
         {
            if(_loc6_)
            {
               if(Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1] < 0)
               {
                  Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1] = MenuClass.menuData[param1];
               }
               else if(Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1] > MenuClass.menuData[param1])
               {
                  Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1] = 0;
               }
               MenuClass.charaData[MenuClass._nowCharaNum][param1]["_menu"] = Dress_data.menuCustom[param1][Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1]];
               new Tab_TextInClass(0,param1,Dress_data.menuCustomNum[MenuClass._nowCharaNum][param1]);
            }
            else
            {
               if(MenuClass.charaData[MenuClass._nowCharaNum][param1]["_menu"] < 0)
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][param1]["_menu"] = MenuClass.menuData[param1];
               }
               else if(MenuClass.charaData[MenuClass._nowCharaNum][param1]["_menu"] > MenuClass.menuData[param1])
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][param1]["_menu"] = 0;
               }
               new Tab_TextInClass(0,param1,MenuClass.charaData[MenuClass._nowCharaNum][param1]["_menu"]);
            }
         }
         else if(MenuClass.tabData[param2][param3][2]["_menu"] == "systemPlus")
         {
            _loc4_ = MenuClass.tabData[param2][param3][2]["_data"];
            _loc5_ = MenuClass.systemData[_loc4_]["_menu"];
            if(_loc6_)
            {
               if(Dress_data.menuCustomNum[0][param1] < 0)
               {
                  Dress_data.menuCustomNum[0][param1] = MenuClass.menuData[param1];
               }
               else if(Dress_data.menuCustomNum[0][param1] > MenuClass.menuData[param1])
               {
                  Dress_data.menuCustomNum[0][param1] = 0;
               }
               MenuClass.systemData[param1 + _loc5_]["_menu"] = Dress_data.menuCustom[param1][Dress_data.menuCustomNum[0][param1]];
               new Tab_TextInClass(0,param1,Dress_data.menuCustomNum[0][param1]);
            }
            else
            {
               if(MenuClass.systemData[param1 + _loc5_]["_menu"] < 0)
               {
                  MenuClass.systemData[param1 + _loc5_]["_menu"] = MenuClass.menuData[param1];
               }
               else if(MenuClass.systemData[param1 + _loc5_]["_menu"] > MenuClass.menuData[param1])
               {
                  MenuClass.systemData[param1 + _loc5_]["_menu"] = 0;
               }
               new Tab_TextInClass(0,param1,MenuClass.systemData[param1 + _loc5_]["_menu"]);
            }
         }
         else if(MenuClass.tabData[param2][param3][2]["_menu"] == "system" || MenuClass.tabData[param2][param3][2]["_menu"] == "SelectCharacter")
         {
            if(_loc6_)
            {
               if(Dress_data.menuCustomNum[0][param1] < 0)
               {
                  Dress_data.menuCustomNum[0][param1] = MenuClass.menuData[param1];
               }
               else if(Dress_data.menuCustomNum[0][param1] > MenuClass.menuData[param1])
               {
                  Dress_data.menuCustomNum[0][param1] = 0;
               }
               MenuClass.systemData[param1]["_menu"] = Dress_data.menuCustom[param1][Dress_data.menuCustomNum[0][param1]];
               new Tab_TextInClass(0,param1,Dress_data.menuCustomNum[0][param1]);
            }
            else
            {
               if(MenuClass.systemData[param1]["_menu"] < 0)
               {
                  MenuClass.systemData[param1]["_menu"] = MenuClass.menuData[param1];
               }
               else if(MenuClass.systemData[param1]["_menu"] > MenuClass.menuData[param1])
               {
                  MenuClass.systemData[param1]["_menu"] = 0;
               }
               new Tab_TextInClass(0,param1,MenuClass.systemData[param1]["_menu"]);
            }
         }
      }
   }
}
