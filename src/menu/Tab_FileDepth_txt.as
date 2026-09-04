package menu
{
   public class Tab_FileDepth_txt
   {
       
      
      private var CheckAddNameFirst1:String;
      
      private var CheckAddName0:String;
      
      private var CheckAddNameLast1:String;
      
      public function Tab_FileDepth_txt(param1:int, param2:String)
      {
         var numInt:int = 0;
         var iInt:int = 0;
         var itemDepth:int = 0;
         var loadObjDepth:int = 0;
         var i:int = 0;
         var loadNum:int = 0;
         var LoadAddNum0:int = 0;
         var LoadAddName0:String = null;
         var menuNum:int = param1;
         var clickTarget:String = param2;
         super();
         var addNum0:int = MenuClass.systemData["txtFieldAdd" + menuNum]["_add0"];
         var addName0:String = Tab_AddCostumOpen.openAr[addNum0][0];
         var addNameFirst1:String = addName0.substring(0,13);
         var addNameLast1:String = addName0.substring(13,14);
         var loadCheck:Boolean = false;
         if(addNameFirst1 == "FreeHukidashi")
         {
            try
            {
               if(clickTarget != "menu")
               {
                  MenuClass.systemData["FreeHukidashiPlus"]["_visible"][addNameLast1] = true;
                  new Free_HukidashiSet(int(addNameLast1),"tab");
                  Chara_Class.chara_m["Hukidashi" + addNameLast1].addChild(MenuClass.txtFieldAdd[menuNum]);
               }
            }
            catch(myError:Error)
            {
            }
            if(MenuClass.systemData["txtFieldDepth" + menuNum]["_depth"] == 0)
            {
               i = 0;
               while(i <= Main.hukusuuNum)
               {
                  loadNum = Main.hukusuuNum - i;
                  LoadAddNum0 = MenuClass.systemData["LoadAdd" + loadNum]["_add0"];
                  LoadAddName0 = Tab_AddCostumOpen.openAr[LoadAddNum0][0];
                  if(MenuClass.systemData["LoadPlus"]["_visible"][loadNum] && MenuClass.systemData["LoadReversalDepth" + loadNum]["_depth"] == 0 && LoadAddName0 == addName0)
                  {
                     loadCheck = true;
                     break;
                  }
                  i++;
               }
               if(loadCheck)
               {
                  Chara_Class.chara_m["Hukidashi" + addNameLast1].setChildIndex(MenuClass.txtFieldAdd[menuNum],Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Main.mainWindow["loadObj" + loadNum]));
                  itemDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Main.mainWindow["loadObj" + loadNum]);
                  loadObjDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Chara_Class.chara_m["Hukidashi" + addNameLast1].swapChildren(MenuClass.txtFieldAdd[menuNum],Main.mainWindow["loadObj" + loadNum]);
                  }
               }
               else
               {
                  Chara_Class.chara_m["Hukidashi" + addNameLast1].setChildIndex(MenuClass.txtFieldAdd[menuNum],Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Chara_Class.chara_m["Hukidashi" + addNameLast1].loadAddGuide));
                  itemDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Chara_Class.chara_m["Hukidashi" + addNameLast1].loadAddGuide);
                  loadObjDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Chara_Class.chara_m["Hukidashi" + addNameLast1].swapChildren(MenuClass.txtFieldAdd[menuNum],Chara_Class.chara_m["Hukidashi" + addNameLast1].loadAddGuide);
                  }
               }
               i = 0;
               for(; i <= 9; i++)
               {
                  try
                  {
                     this.FcNameCheck(i);
                     if(MenuClass.systemData["txtFieldDepth" + i]["_depth"] == 0 && this.CheckAddNameFirst1 == "FreeHukidashi" && this.CheckAddNameLast1 == addNameLast1)
                     {
                        numInt = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                        iInt = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[i]);
                        if(numInt < iInt && menuNum > i)
                        {
                           Chara_Class.chara_m["Hukidashi" + addNameLast1].swapChildren(MenuClass.txtFieldAdd[menuNum],MenuClass.txtFieldAdd[i]);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass.systemData["txtFieldDepth" + menuNum]["_depth"] == 1)
            {
               i = 0;
               while(i <= Main.hukusuuNum)
               {
                  loadNum = Main.hukusuuNum - i;
                  LoadAddNum0 = MenuClass.systemData["LoadAdd" + loadNum]["_add0"];
                  LoadAddName0 = Tab_AddCostumOpen.openAr[LoadAddNum0][0];
                  if(MenuClass.systemData["LoadPlus"]["_visible"][loadNum] && MenuClass.systemData["LoadReversalDepth" + loadNum]["_depth"] == 1 && LoadAddName0 == addName0)
                  {
                     loadCheck = true;
                     break;
                  }
                  i++;
               }
               if(loadCheck)
               {
                  Chara_Class.chara_m["Hukidashi" + addNameLast1].setChildIndex(MenuClass.txtFieldAdd[menuNum],Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Main.mainWindow["loadObj" + loadNum]));
                  itemDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Main.mainWindow["loadObj" + loadNum]);
                  loadObjDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Chara_Class.chara_m["Hukidashi" + addNameLast1].swapChildren(MenuClass.txtFieldAdd[menuNum],Main.mainWindow["loadObj" + loadNum]);
                  }
               }
               else
               {
                  Chara_Class.chara_m["Hukidashi" + addNameLast1].setChildIndex(MenuClass.txtFieldAdd[menuNum],Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Chara_Class.chara_m["Hukidashi" + addNameLast1].loadAddGuide2));
                  itemDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Chara_Class.chara_m["Hukidashi" + addNameLast1].loadAddGuide2);
                  loadObjDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Chara_Class.chara_m["Hukidashi" + addNameLast1].swapChildren(MenuClass.txtFieldAdd[menuNum],Chara_Class.chara_m["Hukidashi" + addNameLast1].loadAddGuide2);
                  }
               }
               i = 0;
               for(; i <= 9; i++)
               {
                  try
                  {
                     this.FcNameCheck(i);
                     if(MenuClass.systemData["txtFieldDepth" + i]["_depth"] == 1 && this.CheckAddNameFirst1 == "FreeHukidashi" && this.CheckAddNameLast1 == addNameLast1)
                     {
                        numInt = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                        iInt = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[i]);
                        if(numInt < iInt && menuNum > i)
                        {
                           Chara_Class.chara_m["Hukidashi" + addNameLast1].swapChildren(MenuClass.txtFieldAdd[menuNum],MenuClass.txtFieldAdd[i]);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass.systemData["txtFieldDepth" + menuNum]["_depth"] == 2)
            {
               i = 0;
               while(i <= Main.hukusuuNum)
               {
                  loadNum = Main.hukusuuNum - i;
                  LoadAddNum0 = MenuClass.systemData["LoadAdd" + loadNum]["_add0"];
                  LoadAddName0 = Tab_AddCostumOpen.openAr[LoadAddNum0][0];
                  if(MenuClass.systemData["LoadPlus"]["_visible"][loadNum] && MenuClass.systemData["LoadReversalDepth" + loadNum]["_depth"] == 2 && LoadAddName0 == addName0)
                  {
                     loadCheck = true;
                     break;
                  }
                  i++;
               }
               if(loadCheck)
               {
                  Chara_Class.chara_m["Hukidashi" + addNameLast1].setChildIndex(MenuClass.txtFieldAdd[menuNum],Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Main.mainWindow["loadObj" + loadNum]));
                  itemDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Main.mainWindow["loadObj" + loadNum]);
                  loadObjDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Chara_Class.chara_m["Hukidashi" + addNameLast1].swapChildren(MenuClass.txtFieldAdd[menuNum],Main.mainWindow["loadObj" + loadNum]);
                  }
               }
               else
               {
                  try
                  {
                     Chara_Class.chara_m["Hukidashi" + addNameLast1].setChildIndex(MenuClass.txtFieldAdd[menuNum],Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Chara_Class.chara_m["Hukidashi" + addNameLast1].loadAddGuide3));
                     itemDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(Chara_Class.chara_m["Hukidashi" + addNameLast1].loadAddGuide3);
                     loadObjDepth = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                     if(itemDepth > loadObjDepth)
                     {
                        Chara_Class.chara_m["Hukidashi" + addNameLast1].swapChildren(MenuClass.txtFieldAdd[menuNum],Chara_Class.chara_m["Hukidashi" + addNameLast1].loadAddGuide3);
                     }
                  }
                  catch(myError:Error)
                  {
                     trace("dadadada");
                  }
               }
               i = 0;
               for(; i <= 9; i++)
               {
                  try
                  {
                     this.FcNameCheck(i);
                     if(MenuClass.systemData["txtFieldDepth" + i]["_depth"] == 2 && this.CheckAddNameFirst1 == "FreeHukidashi" && this.CheckAddNameLast1 == addNameLast1)
                     {
                        numInt = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                        iInt = Chara_Class.chara_m["Hukidashi" + addNameLast1].getChildIndex(MenuClass.txtFieldAdd[i]);
                        if(numInt < iInt && menuNum > i)
                        {
                           Chara_Class.chara_m["Hukidashi" + addNameLast1].swapChildren(MenuClass.txtFieldAdd[menuNum],MenuClass.txtFieldAdd[i]);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
         }
         else if(addName0 == "Background")
         {
            try
            {
               Main.mainWindow.addChild(MenuClass.txtFieldAdd[menuNum]);
            }
            catch(myError:Error)
            {
            }
            if(MenuClass.systemData["txtFieldDepth" + menuNum]["_depth"] == 0)
            {
               i = 0;
               while(i <= Main.hukusuuNum)
               {
                  loadNum = Main.hukusuuNum - i;
                  LoadAddNum0 = MenuClass.systemData["LoadAdd" + loadNum]["_add0"];
                  LoadAddName0 = Tab_AddCostumOpen.openAr[LoadAddNum0][0];
                  if(MenuClass.systemData["LoadPlus"]["_visible"][loadNum] && MenuClass.systemData["LoadReversalDepth" + loadNum]["_depth"] == 0 && LoadAddName0 == addName0)
                  {
                     loadCheck = true;
                     break;
                  }
                  i++;
               }
               if(loadCheck)
               {
                  Main.mainWindow.setChildIndex(MenuClass.txtFieldAdd[menuNum],Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + loadNum]));
                  itemDepth = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + loadNum]);
                  loadObjDepth = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Main.mainWindow.swapChildren(MenuClass.txtFieldAdd[menuNum],Main.mainWindow["loadObj" + loadNum]);
                  }
               }
               else
               {
                  Main.mainWindow.setChildIndex(MenuClass.txtFieldAdd[menuNum],Main.mainWindow.getChildIndex(Main.mainWindow.bg));
                  itemDepth = Main.mainWindow.getChildIndex(Main.mainWindow.bg);
                  loadObjDepth = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Main.mainWindow.swapChildren(MenuClass.txtFieldAdd[menuNum],Main.mainWindow.bg);
                  }
               }
               i = 0;
               for(; i <= 9; i++)
               {
                  try
                  {
                     this.FcNameCheck(i);
                     if(MenuClass.systemData["txtFieldDepth" + i]["_depth"] == 0 && this.CheckAddName0 == "Background")
                     {
                        numInt = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                        iInt = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[i]);
                        if(numInt < iInt && menuNum > i)
                        {
                           Main.mainWindow.swapChildren(MenuClass.txtFieldAdd[menuNum],MenuClass.txtFieldAdd[i]);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass.systemData["txtFieldDepth" + menuNum]["_depth"] == 1)
            {
               i = 0;
               while(i <= Main.hukusuuNum)
               {
                  loadNum = Main.hukusuuNum - i;
                  LoadAddNum0 = MenuClass.systemData["LoadAdd" + loadNum]["_add0"];
                  LoadAddName0 = Tab_AddCostumOpen.openAr[LoadAddNum0][0];
                  if(MenuClass.systemData["LoadPlus"]["_visible"][loadNum] && MenuClass.systemData["LoadReversalDepth" + loadNum]["_depth"] == 1 && LoadAddName0 == addName0)
                  {
                     loadCheck = true;
                     break;
                  }
                  i++;
               }
               if(loadCheck)
               {
                  Main.mainWindow.setChildIndex(MenuClass.txtFieldAdd[menuNum],Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + loadNum]));
                  itemDepth = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + loadNum]);
                  loadObjDepth = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Main.mainWindow.swapChildren(MenuClass.txtFieldAdd[menuNum],Main.mainWindow["loadObj" + loadNum]);
                  }
               }
               else
               {
                  Main.mainWindow.setChildIndex(MenuClass.txtFieldAdd[menuNum],Main.mainWindow.getChildIndex(Main.mainWindow.chara_obj));
                  itemDepth = Main.mainWindow.getChildIndex(Main.mainWindow.chara_obj);
                  loadObjDepth = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Main.mainWindow.swapChildren(MenuClass.txtFieldAdd[menuNum],Main.mainWindow.chara_obj);
                  }
               }
               i = 0;
               for(; i <= 9; i++)
               {
                  try
                  {
                     this.FcNameCheck(i);
                     if(MenuClass.systemData["txtFieldDepth" + i]["_depth"] == 1 && this.CheckAddName0 == "Background")
                     {
                        numInt = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                        iInt = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[i]);
                        if(numInt < iInt && menuNum > i)
                        {
                           Main.mainWindow.swapChildren(MenuClass.txtFieldAdd[menuNum],MenuClass.txtFieldAdd[i]);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass.systemData["txtFieldDepth" + menuNum]["_depth"] == 2)
            {
               i = 0;
               while(i <= Main.hukusuuNum)
               {
                  loadNum = Main.hukusuuNum - i;
                  LoadAddNum0 = MenuClass.systemData["LoadAdd" + loadNum]["_add0"];
                  LoadAddName0 = Tab_AddCostumOpen.openAr[LoadAddNum0][0];
                  if(MenuClass.systemData["LoadPlus"]["_visible"][loadNum] && MenuClass.systemData["LoadReversalDepth" + loadNum]["_depth"] == 2 && LoadAddName0 == addName0)
                  {
                     loadCheck = true;
                     break;
                  }
                  i++;
               }
               if(loadCheck)
               {
                  Main.mainWindow.setChildIndex(MenuClass.txtFieldAdd[menuNum],Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + loadNum]));
                  itemDepth = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + loadNum]);
                  loadObjDepth = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Main.mainWindow.swapChildren(MenuClass.txtFieldAdd[menuNum],Main.mainWindow["loadObj" + loadNum]);
                  }
               }
               else
               {
                  Main.mainWindow.setChildIndex(MenuClass.txtFieldAdd[menuNum],Main.mainWindow.getChildIndex(Main.mainWindow.mob));
                  itemDepth = Main.mainWindow.getChildIndex(Main.mainWindow.mob);
                  loadObjDepth = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                  if(itemDepth > loadObjDepth)
                  {
                     Main.mainWindow.swapChildren(MenuClass.txtFieldAdd[menuNum],Main.mainWindow.mob);
                  }
               }
               i = 0;
               for(; i <= 9; i++)
               {
                  try
                  {
                     this.FcNameCheck(i);
                     if(MenuClass.systemData["txtFieldDepth" + i]["_depth"] == 2 && this.CheckAddName0 == "Background")
                     {
                        numInt = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[menuNum]);
                        iInt = Main.mainWindow.getChildIndex(MenuClass.txtFieldAdd[i]);
                        if(numInt < iInt && menuNum > i)
                        {
                           Main.mainWindow.swapChildren(MenuClass.txtFieldAdd[menuNum],MenuClass.txtFieldAdd[i]);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
         }
      }
      
      private function FcNameCheck(param1:int) : void
      {
         var _loc2_:int = MenuClass.systemData["txtFieldAdd" + param1]["_add0"];
         this.CheckAddName0 = Tab_AddCostumOpen.openAr[_loc2_][0];
         this.CheckAddNameFirst1 = this.CheckAddName0.substring(0,13);
         this.CheckAddNameLast1 = this.CheckAddName0.substring(13,14);
      }
   }
}
