package menu
{
   import parameter.Dress_data;
   import parts.Ribbon;
   import parts.Hairpiece;
   
   public class Tab_MenuColorIn
   {
       
      
      public function Tab_MenuColorIn(headerName:String, targetJ:int, tabNamePlus:String, character:int)
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         super();
         if(MenuClass.tabData[headerName][targetJ][2]["_color"] == "system" || MenuClass.tabData[headerName][targetJ][2]["_color"] == "systemPlus")
         {
            character = 0;
         }

         try
         {
            if (headerName == "Ribon") {
               var tabName = MenuClass.tabData[headerName][targetJ][0];
               var ribbon = Ribbon.fromCharacter(character, MenuClass.systemData["RibonPlus"]["_menu"]);
               var menuNum = ribbon.getData(tabName, "_menu");

               if (ribbon.getAllDefaultDressData(tabName).length > 1) {
                  for (var colorIdx = 0; colorIdx <= 2; colorIdx++) {
                     var storedColor = ribbon.getDressData(tabName, menuNum, colorIdx)[0];
                     var colorArray = ribbon.getData(tabName, "_color" + colorIdx);
                     colorArray[0] = storedColor;
                  }
               }
            } else if (headerName == "HairEx") {
               var tabName = MenuClass.tabData[headerName][targetJ][0];
               var hairpiece = Hairpiece.fromCharacter(character, MenuClass.systemData["HairExPlus"]["_menu"]);
               var menuNum = hairpiece.getData(tabName, "_menu");

               if (hairpiece.getAllDefaultDressData(tabName).length > 1) {
                  for (var colorIdx = 0; colorIdx <= 2; colorIdx++) {
                     var storedColor = hairpiece.getDressData(tabName, menuNum, colorIdx)[0];
                     var colorArray = hairpiece.getData(tabName, "_color" + colorIdx);
                     colorArray[0] = storedColor;
                  }
               }
            } else {
               if(Dress_data.DressData[tabNamePlus].length > 1)
               {
                  _loc5_ = 0;
                  while(_loc5_ <= 2)
                  {
                     new Tab_VDB(headerName,tabNamePlus,targetJ,"_color",character);
                     _loc6_ = Tab_VDB.dataBox["_menu"];
                     _loc7_ = Dress_data.DressCharaData[character][tabNamePlus][_loc6_]["_color" + _loc5_][0];
                     if(MenuClass.tabData[headerName][targetJ][2]["_color"] == "chara" || MenuClass.tabData[headerName][targetJ][2]["_color"] == "charaPlus")
                     {
                        MenuClass.charaData[character][tabNamePlus]["_color" + _loc5_][0] = _loc7_;
                     }
                     else if(MenuClass.tabData[headerName][targetJ][2]["_color"] == "system" || MenuClass.tabData[headerName][targetJ][2]["_color"] == "systemPlus")
                     {
                        MenuClass.systemData[tabNamePlus]["_color" + _loc5_][0] = _loc7_;
                     }
                     _loc5_++;
                  }
               }
            }

         }
         catch(myError:Error) { }
      }
   }
}
