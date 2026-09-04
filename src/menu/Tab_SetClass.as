package menu
{
   import flash.text.TextFieldType;
   import parameter.Color_data;
   import parameter.Dress_data;
   
   public class Tab_SetClass
   {
       
      
      private var menuNum:int;
      
      private var charaNum:int;
      
      public function Tab_SetClass()
      {
         var headerName:String = null;
         var i:int = 0;
         var n:int = 0;
         var tabName:String = null;
         var plusStr:String = null;
         var tabNamePlus:String = null;
         var m:int = 0;
         var j:int = 0;
         var eee:int = 0;
         var menuNum3:int = 0;
         var openNum:int = 0;
         var num:Number = NaN;
         var targetWidth:int = 0;
         var maxNum:int = 0;
         var targetNum:Number = NaN;
         var menuNum2:int = 0;
         var colorParetCheck:Array = null;
         var Num:Number = NaN;
         var colorStrChange:String = null;
         var colorNum:int = 0;
         var obj:Object = null;
         var targetJ:int = 0;
         var EasyExpertJ:Number = NaN;
         var fontTypeName:String = null;
         super();
         headerName = MenuClass._nowHeaderName;
         if(headerName != null)
         {
            m = MenuClass.tabData[headerName].length - 1;
            j = 0;
            while(j <= m)
            {
               tabName = MenuClass.tabData[headerName][j][0];
               plusStr = MenuClass.tabData[headerName][j][2]["_data"];
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].selectTarget != undefined)
                  {
                     if(MenuClass._nowTargetMode == "All")
                     {
                        MenuClass.tabMenuAdd[tabName].selectTarget.all.gotoAndStop(1);
                        MenuClass.tabMenuAdd[tabName].selectTarget.select.gotoAndStop(2);
                        MenuClass.tabMenuAdd[tabName].selectTarget.selectPlus.visible = false;
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].selectTarget.all.gotoAndStop(2);
                        MenuClass.tabMenuAdd[tabName].selectTarget.select.gotoAndStop(1);
                        if(MenuClass._nowTargetMode == "SelectPlus")
                        {
                           MenuClass.tabMenuAdd[tabName].selectTarget.selectPlus.visible = true;
                        }
                        else
                        {
                           MenuClass.tabMenuAdd[tabName].selectTarget.selectPlus.visible = false;
                        }
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].link != undefined)
                  {
                     MenuClass.tabMenuAdd[tabName].link.gotoAndStop(2 - MenuClass.systemData[tabName]["_flag"] * 1);
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName]["menu0"] != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_menu"] == "systemPlus")
                     {
                        tabNamePlus = tabName + MenuClass.systemData[plusStr]["_menu"];
                     }
                     else
                     {
                        tabNamePlus = tabName;
                     }
                     if(tabName == "Eyelash")
                     {
                        MenuClass.menuData["Eyelash"] = MenuClass.charaAdd[MenuClass._nowCharaNum].head["eye" + 0]["eye" + 0].eyelash.totalFrames - 2;
                        new Tab_TextInClass(1,"Eyelash",MenuClass.menuData["Eyelash"]);
                     }
                     else if(tabName == "LeftHand")
                     {
                        if(MenuClass.charaData[MenuClass._nowCharaNum]["Item0"]["_visible"][0])
                        {
                           MenuClass.menuData["LeftHand"] = MenuClass.charaAdd[MenuClass._nowCharaNum].handm1_0.hand.item.hand.hand.totalFrames - 1;
                        }
                        else
                        {
                           MenuClass.menuData["LeftHand"] = MenuClass.charaAdd[MenuClass._nowCharaNum].handm1_0.hand.arm0.hand.totalFrames - 1;
                        }
                        new Tab_TextInClass(1,"LeftHand",MenuClass.menuData["LeftHand"]);
                     }
                     else if(tabName == "RightHand")
                     {
                        if(MenuClass.charaData[MenuClass._nowCharaNum]["Item1"]["_visible"][0])
                        {
                           MenuClass.menuData["RightHand"] = MenuClass.charaAdd[MenuClass._nowCharaNum].handm1_1.hand.item.hand.hand.totalFrames - 1;
                        }
                        else
                        {
                           MenuClass.menuData["RightHand"] = MenuClass.charaAdd[MenuClass._nowCharaNum].handm1_1.hand.arm0.hand.totalFrames - 1;
                        }
                        new Tab_TextInClass(1,"RightHand",MenuClass.menuData["RightHand"]);
                     }
                     else if(tabName == "FreeHandItem")
                     {
                        n = Dress_data.menuCustom["FreeHandItem"].length - 1;
                        i = 0;
                        while(i <= n)
                        {
                           if(MenuClass.systemData["FreeHandItem" + MenuClass.systemData["FreeHandPlus"]["_menu"]]["_menu"] == Dress_data.menuCustom["FreeHandItem"][i])
                           {
                              Dress_data.menuCustomNum[0]["FreeHandItem"] = i;
                              break;
                           }
                           i++;
                        }
                        if(MenuClass.systemData["FreeHandItem" + MenuClass.systemData[plusStr]["_menu"]]["_visible"][0])
                        {
                           MenuClass.menuData["FreeHandWrist"] = Dress_data.ObjData["Item0"][MenuClass.systemData["FreeHandItem" + MenuClass.systemData[plusStr]["_menu"]]["_menu"]]["depth"].length - 1;
                        }
                        else
                        {
                           MenuClass.menuData["FreeHandWrist"] = MenuClass.charaAdd[MenuClass._nowCharaNum].handm1_0.hand.arm0.hand.totalFrames - 1;
                        }
                        new Tab_TextInClass(1,"FreeHandWrist",MenuClass.menuData["FreeHandWrist"]);
                     }
                     else if(tabName == "FreeChair")
                     {
                        n = Dress_data.menuCustom["FreeChair"].length - 1;
                        i = 0;
                        while(i <= n)
                        {
                           if(MenuClass.systemData["FreeChair" + MenuClass.systemData["FreeChairPlus"]["_menu"]]["_menu"] == Dress_data.menuCustom["FreeChair"][i])
                           {
                              Dress_data.menuCustomNum[0]["FreeChair"] = i;
                              break;
                           }
                           i++;
                        }
                        MenuClass.menuData["FreeChairExtra"] = Dress_data.FreeChairData[MenuClass.systemData["FreeChair" + MenuClass.systemData["FreeChairPlus"]["_menu"]]["_menu"]]["extraNum"] - 1;
                        new Tab_TextInClass(1,"FreeChairExtra",MenuClass.menuData["FreeChairExtra"]);
                     }
                     else if(tabName == "FreeBelt")
                     {
                        MenuClass.menuData["FreeBeltExtra"] = Dress_data.ObjData["Belt"][MenuClass.systemData["FreeBelt" + MenuClass.systemData["FreeBeltPlus"]["_menu"]]["_menu"]]["extraNum"] - 1;
                        new Tab_TextInClass(1,"FreeBeltExtra",MenuClass.menuData["FreeBeltExtra"]);
                     }
                     new Tab_TextNum0Class(tabName,headerName,j);
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName]["MenuCheck"] != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_menu"] == "systemPlus")
                     {
                        tabNamePlus = tabName + MenuClass.systemData[plusStr]["_menu"];
                     }
                     else
                     {
                        tabNamePlus = tabName;
                     }
                     i = 0;
                     for(; i <= 3; i++)
                     {
                        try
                        {
                           if(MenuClass.systemData[tabNamePlus]["_menu"] != i)
                           {
                              MenuClass.tabMenuAdd[tabName]["MenuCheck"]["btn" + i].gotoAndStop(1);
                           }
                        }
                        catch(myError:Error)
                        {
                           continue;
                        }
                     }
                     MenuClass.tabMenuAdd[tabName]["MenuCheck"]["btn" + MenuClass.systemData[tabNamePlus]["_menu"]].gotoAndStop(2);
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName]["meter0"] != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "systemPlus")
                     {
                        tabNamePlus = tabName + MenuClass.systemData[plusStr]["_menu"];
                     }
                     else
                     {
                        tabNamePlus = tabName;
                     }
                     if(MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus")
                     {
                        num = MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_meter"];
                     }
                     else if(MenuClass.tabData[headerName][j][2]["_meter"] == "system" || MenuClass.tabData[headerName][j][2]["_meter"] == "systemPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "systemAll")
                     {
                        num = MenuClass.systemData[tabNamePlus]["_meter"];
                     }
                     targetWidth = MenuClass.tabMenuAdd[tabName]["meter0"].width - 49;
                     maxNum = 100;
                     try
                     {
                        if(MenuClass.tabData[headerName][j][2]["_meterType"] == 1)
                        {
                           maxNum = 360;
                        }
                        else if(MenuClass.tabData[headerName][j][2]["_meterType"] == 2)
                        {
                           maxNum = 1000;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     if(num > maxNum)
                     {
                        num = maxNum;
                        MenuClass.tabMenuAdd[tabName]["meter0"].box.gotoAndStop(2);
                     }
                     else if(num < 0)
                     {
                        num = 0;
                        MenuClass.tabMenuAdd[tabName]["meter0"].box.gotoAndStop(2);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName]["meter0"].box.gotoAndStop(1);
                     }
                     targetNum = Math.floor(targetWidth * (num / maxNum));
                     MenuClass.tabMenuAdd[tabName]["meter0"].box.x = targetNum + 3;
                     try
                     {
                        MenuClass.tabMenuAdd[tabName]["meter0"].maskObj.width = targetNum;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].color0 != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_color"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_color"] == "systemPlus")
                     {
                        tabNamePlus = tabName + MenuClass.systemData[plusStr]["_menu"];
                     }
                     else
                     {
                        tabNamePlus = tabName;
                     }
                     if(MenuClass.tabData[headerName][j][2]["_color"] == "chara" || MenuClass.tabData[headerName][j][2]["_color"] == "charaPlus")
                     {
                        this.charaNum = MenuClass._nowCharaNum;
                     }
                     else if(MenuClass.tabData[headerName][j][2]["_color"] == "system" || MenuClass.tabData[headerName][j][2]["_color"] == "systemPlus")
                     {
                        this.charaNum = 0;
                     }
                     new Tab_VDB(headerName,tabNamePlus,j,"_color",this.charaNum);
                     if(Dress_data.DressData[tabNamePlus].length == 1)
                     {
                        menuNum2 = 0;
                     }
                     else
                     {
                        menuNum2 = Tab_VDB.dataBox["_menu"];
                     }
                     colorParetCheck = new Array(0,0,0);
                     if(Dress_data.DressData[tabNamePlus][menuNum2]["_color0"] != null)
                     {
                        colorParetCheck[0] = 1;
                     }
                     if(Dress_data.DressData[tabNamePlus][menuNum2]["_color1"])
                     {
                        colorParetCheck[1] = 1;
                     }
                     if(Dress_data.DressData[tabNamePlus][menuNum2]["_color2"])
                     {
                        colorParetCheck[2] = 1;
                     }
                     if(tabName == "HairEx")
                     {
                        Num = MenuClass.systemData["HairExPlus"]["_menu"];
                        if(!MenuClass.charaData[this.charaNum]["HairExPlus"]["_visible"][Num] && Dress_data.DressCharaData[this.charaNum]["HairEx" + Num][0]["_color0"][1] == 2)
                        {
                           MenuClass.charaData[this.charaNum]["HairEx" + Num]["_color0"][0] = MenuClass.charaData[this.charaNum]["Hair"]["_color0"][0];
                           Dress_data.DressCharaData[this.charaNum]["HairEx" + Num][0]["_color0"][0] = MenuClass.charaData[this.charaNum]["Hair"]["_color0"][0];
                           try
                           {
                              if(Dress_data.DressCharaData[this.charaNum]["HairEx" + Num][0]["_color1"][1] == 2)
                              {
                                 MenuClass.charaData[this.charaNum]["HairEx" + Num]["_color1"][0] = MenuClass.charaData[this.charaNum]["Hair"]["_color0"][0];
                                 Dress_data.DressCharaData[this.charaNum]["HairEx" + Num][0]["_color1"][0] = MenuClass.charaData[this.charaNum]["Hair"]["_color0"][0];
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              if(Dress_data.DressCharaData[this.charaNum]["HairEx" + Num][0]["_color2"][1] == 2)
                              {
                                 MenuClass.charaData[this.charaNum]["HairEx" + Num]["_color2"][0] = MenuClass.charaData[this.charaNum]["Hair"]["_color0"][0];
                                 Dress_data.DressCharaData[this.charaNum]["HairEx" + Num][0]["_color2"][0] = MenuClass.charaData[this.charaNum]["Hair"]["_color0"][0];
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                     }
                     if(tabName == "FreeHandItem")
                     {
                        Num = MenuClass.systemData["FreeHandPlus"]["_menu"];
                        if(!MenuClass.systemData["FreeHandItem" + Num]["_visible"][0])
                        {
                           try
                           {
                              MenuClass.systemData["FreeHandItem" + Num]["_color0"][0] = Dress_data.DressCharaData[0]["FreeHandItem" + Num][MenuClass.systemData["FreeHandItem" + Num]["_menu"]]["_color0"][0];
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              MenuClass.systemData["FreeHandItem" + Num]["_color1"][0] = Dress_data.DressCharaData[0]["FreeHandItem" + Num][MenuClass.systemData["FreeHandItem" + Num]["_menu"]]["_color1"][0];
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              MenuClass.systemData["FreeHandItem" + Num]["_color2"][0] = Dress_data.DressCharaData[0]["FreeHandItem" + Num][MenuClass.systemData["FreeHandItem" + Num]["_menu"]]["_color2"][0];
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                     }
                     if(MenuClass.tabData[headerName][j][2]["_color"] == "chara" || MenuClass.tabData[headerName][j][2]["_color"] == "charaPlus")
                     {
                        new Tab_ColorLinkCheck(MenuClass._nowCharaNum,tabNamePlus,"chara");
                     }
                     else if(MenuClass.tabData[headerName][j][2]["_color"] == "system" || MenuClass.tabData[headerName][j][2]["_color"] == "systemPlus")
                     {
                        new Tab_ColorLinkCheck(0,tabNamePlus,"system");
                     }
                     i = 0;
                     while(i <= 2)
                     {
                        if(MenuClass.tabMenuAdd[tabName]["color" + i])
                        {
                           if(colorParetCheck[i] == 0)
                           {
                              MenuClass.tabMenuAdd[tabName]["color" + i].gotoAndStop(2);
                              MenuClass.tabMenuAdd[tabName]["color" + i].buttonMode = false;
                              MenuClass.tabMenuAdd[tabName]["color" + i].mouseChildren = false;
                              MenuClass.tabMenuAdd[tabName]["color" + i].mouseEnabled = false;
                              try
                              {
                                 if(MenuClass.tabData[headerName][j][2]["_color"] == "chara" || MenuClass.tabData[headerName][j][2]["_color"] == "charaPlus")
                                 {
                                    MenuClass.charaData[this.charaNum][tabNamePlus]["_color" + i][0] = "0";
                                    Dress_data.DressCharaData[this.charaNum][tabNamePlus][menuNum2]["_color" + i][0] = "0";
                                 }
                                 else if(MenuClass.tabData[headerName][j][2]["_color"] == "system" || MenuClass.tabData[headerName][j][2]["_color"] == "systemPlus")
                                 {
                                    MenuClass.systemData[tabNamePlus]["_color" + i][0] = "0";
                                    Dress_data.DressCharaData[0][tabNamePlus][menuNum2]["_color" + i][0] = "0";
                                 }
                              }
                              catch(myError:Error)
                              {
                              }
                           }
                           else
                           {
                              if(MenuClass.tabData[headerName][j][2]["_color"] == "chara" || MenuClass.tabData[headerName][j][2]["_color"] == "charaPlus")
                              {
                                 if(Dress_data.DressCharaData[this.charaNum][tabNamePlus][menuNum2]["_color" + i][1] == 2)
                                 {
                                    MenuClass.tabMenuAdd[tabName]["color" + i].gotoAndStop(3);
                                 }
                                 else
                                 {
                                    MenuClass.tabMenuAdd[tabName]["color" + i].gotoAndStop(1);
                                 }
                                 colorStrChange = String(Dress_data.DressCharaData[this.charaNum][tabNamePlus][menuNum2]["_color" + i][0]);
                              }
                              else if(MenuClass.tabData[headerName][j][2]["_color"] == "system" || MenuClass.tabData[headerName][j][2]["_color"] == "systemPlus")
                              {
                                 if(Dress_data.DressCharaData[0][tabNamePlus][menuNum2]["_color" + i][1] == 2)
                                 {
                                    MenuClass.tabMenuAdd[tabName]["color" + i].gotoAndStop(3);
                                 }
                                 else
                                 {
                                    MenuClass.tabMenuAdd[tabName]["color" + i].gotoAndStop(1);
                                 }
                                 colorStrChange = String(Dress_data.DressCharaData[0][tabNamePlus][menuNum2]["_color" + i][0]);
                              }
                              MenuClass.tabMenuAdd[tabName]["color" + i].buttonMode = true;
                              MenuClass.tabMenuAdd[tabName]["color" + i].mouseChildren = true;
                              MenuClass.tabMenuAdd[tabName]["color" + i].mouseEnabled = true;
                              colorNum = Dress_data.DressData[tabNamePlus][menuNum2]["_color" + i][2];
                              if(colorStrChange.length >= 4)
                              {
                                 new ColorChangeClass(MenuClass.tabMenuAdd[tabName]["color" + i].color,colorStrChange);
                              }
                              else
                              {
                                 obj = Color_data.ColorData[Dress_data.DressData[tabNamePlus][menuNum2]["_color" + i][0]];
                                 new ColorChangeClass(MenuClass.tabMenuAdd[tabName]["color" + i].color,obj[colorStrChange][colorNum]);
                              }
                           }
                        }
                        i++;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].headerSwitch != undefined)
                  {
                     if(!MenuClass.hederSwitchCheck)
                     {
                        MenuClass.tabMenuAdd[tabName].headerSwitch.gotoAndStop(2);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].headerSwitch.gotoAndStop(1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].eyeBox != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_visible"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_visible"] == "systemPlus")
                     {
                        tabNamePlus = tabName + MenuClass.systemData[plusStr]["_menu"];
                     }
                     else
                     {
                        tabNamePlus = tabName;
                     }
                     this.menuNumFc(headerName,tabName,j);
                     new Tab_TabNameCheck(tabName);
                     targetJ = Tab_TabNameCheck.targetJ;
                     new Tab_VDB(headerName,tabNamePlus,targetJ,"_visible",MenuClass._nowCharaNum);
                     if(Tab_VDB.dataBox["_visible"].length == 1)
                     {
                        this.menuNum = 0;
                     }
                     if(MenuClass.systemData["EExpert"]["_check"])
                     {
                        if(MenuClass.tabData[headerName][j][2]["_easyLink"] != undefined)
                        {
                           if(!MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_visible"][0] && !MenuClass.charaData[MenuClass._nowCharaNum][MenuClass.tabData[headerName][j][2]["_easyLink"]]["_visible"][0])
                           {
                              MenuClass.tabMenuAdd[tabName].eyeBox.gotoAndStop(2);
                           }
                           else
                           {
                              MenuClass.tabMenuAdd[tabName].eyeBox.gotoAndStop(1);
                           }
                        }
                        else
                        {
                           MenuClass.tabMenuAdd[tabName].eyeBox.gotoAndStop(2 - Tab_VDB.dataBox["_visible"][this.menuNum] * 1);
                        }
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].eyeBox.gotoAndStop(2 - Tab_VDB.dataBox["_visible"][this.menuNum] * 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].checkBox != undefined)
                  {
                     new Tab_VDB(headerName,tabName,j,"_check",MenuClass._nowCharaNum);
                     MenuClass.tabMenuAdd[tabName].checkBox.gotoAndStop(2 - Tab_VDB.dataBox["_check"] * 1);
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].size != undefined)
                  {
                     new Tab_VDB(headerName,tabName + MenuClass.systemData["LoadPlus"]["_menu"],j,"_check",MenuClass._nowCharaNum);
                     MenuClass.tabMenuAdd[tabName].size.gotoAndStop(2 - Tab_VDB.dataBox["_check"] * 1);
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].ManualAuto != undefined)
                  {
                     new Tab_VDB(headerName,tabName,j,"_check",MenuClass._nowCharaNum);
                     if(Tab_VDB.dataBox["_check"])
                     {
                        MenuClass.tabMenuAdd[tabName].ManualAuto.AutoBtn.gotoAndStop(2);
                        MenuClass.tabMenuAdd[tabName].ManualAuto.ManualBtn.gotoAndStop(1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].ManualAuto.AutoBtn.gotoAndStop(1);
                        MenuClass.tabMenuAdd[tabName].ManualAuto.ManualBtn.gotoAndStop(2);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].URLLocal != undefined)
                  {
                     new Tab_VDB(headerName,tabName,j,"_check",0);
                     if(Tab_VDB.dataBox["_check"])
                     {
                        MenuClass.tabMenuAdd[tabName].URLLocal.urlBtn.gotoAndStop(2);
                        MenuClass.tabMenuAdd[tabName].URLLocal.localBtn.gotoAndStop(1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].URLLocal.urlBtn.gotoAndStop(1);
                        MenuClass.tabMenuAdd[tabName].URLLocal.localBtn.gotoAndStop(2);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].addBox0 != undefined)
                  {
                     try
                     {
                        if(headerName == "CharaLoad")
                        {
                           menuNum3 = MenuClass.systemData["CharaLoadPlus"]["_menu"];
                           MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.gotoAndStop(1);
                           MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.scaleY = 1;
                           MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.x = 29;
                           MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.icon.gotoAndStop(Tab_AddCostumOpen2.openAr[MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadAdd" + menuNum3]["_add0"]][0]);
                           new ColorChangeClass(MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.bg,Tab_AddCostumOpen2.openAr[MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadAdd" + menuNum3]["_add0"]][1]);
                           Tab_AddCostumOpen2.deleteFc("LoadPlus");
                        }
                        else if(headerName == "Ribon")
                        {
                           menuNum3 = MenuClass.systemData["RibonPlus"]["_menu"];
                           MenuClass.tabMenuAdd["RibonAdd"].addBox0.gotoAndStop(1);
                           MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.scaleY = 1;
                           MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.x = 29;
                           MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.icon.gotoAndStop(Tab_AddCostumOpen3.openAr[MenuClass.charaData[MenuClass._nowCharaNum]["RibonAdd" + menuNum3]["_add0"]][0]);
                           new ColorChangeClass(MenuClass.tabMenuAdd["RibonAdd"].addBox0.bg,Tab_AddCostumOpen3.openAr[MenuClass.charaData[MenuClass._nowCharaNum]["RibonAdd" + menuNum3]["_add0"]][1]);
                           Tab_AddCostumOpen3.deleteFc("RibonPlus");
                        }
                        else if(headerName == "HairEx")
                        {
                           menuNum3 = MenuClass.systemData["HairExPlus"]["_menu"];
                           MenuClass.tabMenuAdd["HairExAdd"].addBox0.gotoAndStop(1);
                           MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.scaleY = 1;
                           MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.x = 29;
                           MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.icon.gotoAndStop(Tab_AddCostumOpen4.openAr[MenuClass.charaData[MenuClass._nowCharaNum]["HairExAdd" + menuNum3]["_add0"]][0]);
                           new ColorChangeClass(MenuClass.tabMenuAdd["HairExAdd"].addBox0.bg,Tab_AddCostumOpen4.openAr[MenuClass.charaData[MenuClass._nowCharaNum]["HairExAdd" + menuNum3]["_add0"]][1]);
                           Tab_AddCostumOpen4.deleteFc("HairExPlus");
                        }
                        else if(headerName == "Loadmenu")
                        {
                           menuNum3 = MenuClass.systemData["LoadPlus"]["_menu"];
                           MenuClass.tabMenuAdd["LoadAdd"].addBox0.gotoAndStop(1);
                           MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.scaleY = 1;
                           MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.x = 29;
                           MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.icon.gotoAndStop(Tab_AddCostumOpen.openAr[MenuClass.systemData["LoadAdd" + menuNum3]["_add0"]][0]);
                           new ColorChangeClass(MenuClass.tabMenuAdd["LoadAdd"].addBox0.bg,Tab_AddCostumOpen.openAr[MenuClass.systemData["LoadAdd" + menuNum3]["_add0"]][1]);
                           Tab_AddCostumOpen.deleteFc("LoadPlus");
                        }
                        else if(headerName == "txt")
                        {
                           menuNum3 = MenuClass.systemData["txtFieldmenu"]["_menu"];
                           MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.gotoAndStop(1);
                           MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.scaleY = 1;
                           MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.x = 29;
                           MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.icon.gotoAndStop(Tab_AddCostumOpen.openAr[MenuClass.systemData["txtFieldAdd" + menuNum3]["_add0"]][0]);
                           new ColorChangeClass(MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.bg,Tab_AddCostumOpen.openAr[MenuClass.systemData["txtFieldAdd" + menuNum3]["_add0"]][1]);
                           Tab_AddCostumOpen.deleteFc("txtFieldAdd");
                        }
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].swfColor != undefined)
                  {
                     try
                     {
                        if(headerName == "CharaLoad")
                        {
                           if(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).pass)
                           {
                              MenuClass.tabMenuAdd["CharaLoadSwfColor"].swfColor.gotoAndStop(1);
                              MenuClass.tabMenuAdd["CharaLoadSwfColor"].swfColor.buttonMode = true;
                           }
                           else
                           {
                              MenuClass.tabMenuAdd["CharaLoadSwfColor"].swfColor.gotoAndStop(2);
                              MenuClass.tabMenuAdd["CharaLoadSwfColor"].swfColor.buttonMode = false;
                           }
                        }
                        else if(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).pass)
                        {
                           MenuClass.tabMenuAdd["LoadSwfColor"].swfColor.gotoAndStop(1);
                           MenuClass.tabMenuAdd["LoadSwfColor"].swfColor.buttonMode = true;
                        }
                        else
                        {
                           MenuClass.tabMenuAdd["LoadSwfColor"].swfColor.gotoAndStop(2);
                           MenuClass.tabMenuAdd["LoadSwfColor"].swfColor.buttonMode = false;
                        }
                     }
                     catch(e:Error)
                     {
                        if(headerName == "CharaLoad")
                        {
                           MenuClass.tabMenuAdd["CharaLoadSwfColor"].swfColor.gotoAndStop(2);
                           MenuClass.tabMenuAdd["CharaLoadSwfColor"].swfColor.buttonMode = false;
                        }
                        else
                        {
                           MenuClass.tabMenuAdd["LoadSwfColor"].swfColor.gotoAndStop(2);
                           MenuClass.tabMenuAdd["LoadSwfColor"].swfColor.buttonMode = false;
                        }
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass._nowHeaderName == "CharaLoad")
                  {
                     if(tabName == "CharaURLText")
                     {
                        MenuClass.tabMenuAdd["CharaURLText"].txt.text = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadAdd" + MenuClass.systemData["CharaLoadPlus"]["_menu"]]["_name"];
                     }
                  }
                  else if(tabName == "URLText")
                  {
                     MenuClass.tabMenuAdd["URLText"].txt.text = MenuClass.systemData["LoadScale" + MenuClass.systemData["LoadPlus"]["_menu"]]["_name"];
                  }
               }
               catch(myError:Error)
               {
               }
               new Free_HukidashiMenuSet(MenuClass.systemData["FreeHukidashiPlus"]["_menu"]);
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].EasyExpert != undefined)
                  {
                     new Tab_TabNameCheck(tabName);
                     EasyExpertJ = Tab_TabNameCheck.targetJ;
                     new Tab_VDB(headerName,tabName,EasyExpertJ,"_check",MenuClass._nowCharaNum);
                     if(Tab_VDB.dataBox["_check"])
                     {
                        MenuClass.tabMenuAdd[tabName].EasyExpert.easyBtn.gotoAndStop(2);
                        MenuClass.tabMenuAdd[tabName].EasyExpert.expertBtn.gotoAndStop(1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].EasyExpert.easyBtn.gotoAndStop(1);
                        MenuClass.tabMenuAdd[tabName].EasyExpert.expertBtn.gotoAndStop(2);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(tabName == "Random")
                  {
                     try
                     {
                        MenuClass.popRandomTabNameAdd["_visible"].gotoAndStop(2 - MenuClass.tabData[headerName][j][2]["_visible"] * 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        MenuClass.popRandomTabNameAdd["_menu"].gotoAndStop(2 - MenuClass.tabData[headerName][j][2]["_menu"] * 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        MenuClass.popRandomTabNameAdd["_meter"].gotoAndStop(2 - MenuClass.tabData[headerName][j][2]["_meter"] * 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        MenuClass.popRandomTabNameAdd["_color0"].gotoAndStop(2 - MenuClass.tabData[headerName][j][2]["_color0"] * 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        MenuClass.popRandomTabNameAdd["_color1"].gotoAndStop(2 - MenuClass.tabData[headerName][j][2]["_color1"] * 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        MenuClass.popRandomTabNameAdd["_color2"].gotoAndStop(2 - MenuClass.tabData[headerName][j][2]["_color2"] * 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        MenuClass.popRandomTabNameAdd["_check"].gotoAndStop(2 - MenuClass.tabData[headerName][j][2]["_check"] * 1);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.popRandomTabNameAdd[tabName] != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_random"])
                     {
                        new ColorChangeClass(MenuClass.popRandomTabNameAdd[tabName].icon.icon,"FFFFFF");
                        new ColorChangeClass(MenuClass.popRandomTabNameAdd[tabName].bg,MenuClass.MY_MENUNAME[MenuClass.headerAdd[headerName].num][1]);
                     }
                     else
                     {
                        new ColorChangeClass(MenuClass.popRandomTabNameAdd[tabName].icon.icon,"CCCCCC");
                        new ColorChangeClass(MenuClass.popRandomTabNameAdd[tabName].bg,"050505");
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_menu"] == "systemPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "systemPlus")
                  {
                     tabNamePlus = tabName + MenuClass.systemData[plusStr]["_menu"];
                  }
                  else
                  {
                     tabNamePlus = tabName;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].numberBtn != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_reversal"] == "chara")
                     {
                        MenuClass.tabMenuAdd[tabName].numberBtn.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_number"] + 1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].numberBtn.gotoAndStop(MenuClass.systemData[tabNamePlus]["_number"] + 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].separate != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_reversal"] == "chara")
                     {
                        MenuClass.tabMenuAdd[tabName].separate.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_separate"] + 1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].separate.gotoAndStop(MenuClass.systemData[tabNamePlus]["_separate"] + 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].mimihat != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_reversal"] == "chara")
                     {
                        MenuClass.tabMenuAdd[tabName].mimihat.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_mimihat"] + 1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].mimihat.gotoAndStop(MenuClass.systemData[tabNamePlus]["_mimihat"] + 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].reversal != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_reversal"] == "chara")
                     {
                        MenuClass.tabMenuAdd[tabName].reversal.gotoAndStop(2 - MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_reversal"] * 1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].reversal.gotoAndStop(2 - MenuClass.systemData[tabNamePlus]["_reversal"] * 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].reversal2 != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus")
                     {
                        MenuClass.tabMenuAdd[tabName].reversal2.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_reversal2"] + 1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].reversal2.gotoAndStop(MenuClass.systemData[tabNamePlus]["_reversal2"] + 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].depth != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus")
                     {
                        MenuClass.tabMenuAdd[tabName].depth.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_depth"] + 1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].depth.gotoAndStop(MenuClass.systemData[tabNamePlus]["_depth"] + 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].turn != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus")
                     {
                        MenuClass.tabMenuAdd[tabName].turn.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_turn"] + 1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].turn.gotoAndStop(MenuClass.systemData[tabNamePlus]["_turn"] + 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].turn2 != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus")
                     {
                        MenuClass.tabMenuAdd[tabName].turn2.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_turn2"] + 1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].turn2.gotoAndStop(MenuClass.systemData[tabNamePlus]["_turn2"] + 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].shadow != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus")
                     {
                        MenuClass.tabMenuAdd[tabName].shadow.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_shadow"] + 1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].shadow.gotoAndStop(MenuClass.systemData[tabNamePlus]["_shadow"] + 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               i = 0;
               for(; i <= 4; i++)
               {
                  try
                  {
                     if(MenuClass.tabMenuAdd[tabName]["hair" + i] != undefined)
                     {
                        if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus")
                        {
                           MenuClass.tabMenuAdd[tabName]["hair" + i].gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_hair" + i] + 1);
                        }
                        else
                        {
                           MenuClass.tabMenuAdd[tabName]["hair" + i].gotoAndStop(MenuClass.systemData[tabNamePlus]["_hair" + i] + 1);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
               try
               {
                  if(MenuClass.tabMenuAdd[tabName].tabMask != undefined)
                  {
                     if(MenuClass.tabData[headerName][j][2]["_menu"] == "chara" || MenuClass.tabData[headerName][j][2]["_menu"] == "charaPlus" || MenuClass.tabData[headerName][j][2]["_meter"] == "chara" || MenuClass.tabData[headerName][j][2]["_meter"] == "charaPlus")
                     {
                        MenuClass.tabMenuAdd[tabName].tabMask.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_mask"] + 1);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].tabMask.gotoAndStop(MenuClass.systemData[tabNamePlus]["_mask"] + 1);
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabData[headerName][j][0] == "FontType")
                  {
                     fontTypeName = MenuClass.FontList[MenuClass.systemData[tabNamePlus]["_menu"]];
                     try
                     {
                        if(fontTypeName == "日本語-Light" || fontTypeName == "日本語-Medium" || fontTypeName == "日本語-Black" || fontTypeName == "ABC-1" || fontTypeName == "ABC-2")
                        {
                           MenuClass.tabMenuAdd["FontType"].loadIcon.visible = true;
                           MenuClass.tabMenuAdd["FontType"].txt.x = 163;
                        }
                        else
                        {
                           MenuClass.tabMenuAdd["FontType"].loadIcon.visible = false;
                           MenuClass.tabMenuAdd["FontType"].txt.x = 147;
                        }
                        MenuClass.tabMenuAdd["FontType"].txt.text = fontTypeName;
                        n = MenuClass.systemData["txtFieldmenu"]["_visible"].length - 1;
                        i = 0;
                        while(i <= n)
                        {
                           try
                           {
                              MenuClass.txtFieldAdd[i].border = false;
                              MenuClass.txtFieldAdd[j].type = TextFieldType.DYNAMIC;
                           }
                           catch(myError:Error)
                           {
                           }
                           i++;
                        }
                        try
                        {
                           MenuClass.txtFieldAdd[MenuClass.systemData["txtFieldmenu"]["_menu"]].border = true;
                           MenuClass.txtFieldAdd[MenuClass.systemData["txtFieldmenu"]["_menu"]].type = TextFieldType.INPUT;
                           MenuClass.txtFieldAdd[MenuClass.systemData["txtFieldmenu"]["_menu"]].mouseChildren = true;
                           MenuClass.txtFieldAdd[MenuClass.systemData["txtFieldmenu"]["_menu"]].mouseEnabled = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        if(MenuClass.systemData["txtFieldmenu"]["_visible"][MenuClass.systemData["txtFieldmenu"]["_menu"]])
                        {
                           try
                           {
                              MenuClass.txtFieldAdd[MenuClass.systemData["txtFieldmenu"]["_menu"]].selectable = true;
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.tabData[headerName][j][0] == "Story_TimeLine")
                  {
                     MenuClass.timeLineCheck = 0;
                     if(MenuClass.StoryTimeLineData.length >= 1000)
                     {
                        MenuClass.timeLineCheck = 1000;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 950)
                     {
                        MenuClass.timeLineCheck = 950;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 900)
                     {
                        MenuClass.timeLineCheck = 900;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 850)
                     {
                        MenuClass.timeLineCheck = 850;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 800)
                     {
                        MenuClass.timeLineCheck = 800;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 750)
                     {
                        MenuClass.timeLineCheck = 750;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 700)
                     {
                        MenuClass.timeLineCheck = 700;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 650)
                     {
                        MenuClass.timeLineCheck = 650;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 600)
                     {
                        MenuClass.timeLineCheck = 600;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 550)
                     {
                        MenuClass.timeLineCheck = 550;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 500)
                     {
                        MenuClass.timeLineCheck = 500;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 450)
                     {
                        MenuClass.timeLineCheck = 450;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 400)
                     {
                        MenuClass.timeLineCheck = 400;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 350)
                     {
                        MenuClass.timeLineCheck = 350;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 300)
                     {
                        MenuClass.timeLineCheck = 300;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 250)
                     {
                        MenuClass.timeLineCheck = 250;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 200)
                     {
                        MenuClass.timeLineCheck = 200;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 150)
                     {
                        MenuClass.timeLineCheck = 150;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 100)
                     {
                        MenuClass.timeLineCheck = 100;
                     }
                     else if(MenuClass.StoryTimeLineData.length >= 50)
                     {
                        MenuClass.timeLineCheck = 50;
                     }
                     MenuClass.NowFrameCheck = 0;
                     if(MenuClass.systemData["Story_Page"]["_menu"] >= 1000)
                     {
                        MenuClass.NowFrameCheck = 1000;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 950)
                     {
                        MenuClass.NowFrameCheck = 950;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 900)
                     {
                        MenuClass.NowFrameCheck = 900;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 850)
                     {
                        MenuClass.NowFrameCheck = 850;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 800)
                     {
                        MenuClass.NowFrameCheck = 800;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 750)
                     {
                        MenuClass.NowFrameCheck = 750;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 700)
                     {
                        MenuClass.NowFrameCheck = 700;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 650)
                     {
                        MenuClass.NowFrameCheck = 650;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 600)
                     {
                        MenuClass.NowFrameCheck = 600;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 550)
                     {
                        MenuClass.NowFrameCheck = 550;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 500)
                     {
                        MenuClass.NowFrameCheck = 500;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 450)
                     {
                        MenuClass.NowFrameCheck = 450;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 400)
                     {
                        MenuClass.NowFrameCheck = 400;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 350)
                     {
                        MenuClass.NowFrameCheck = 350;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 300)
                     {
                        MenuClass.NowFrameCheck = 300;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 250)
                     {
                        MenuClass.NowFrameCheck = 250;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 200)
                     {
                        MenuClass.NowFrameCheck = 200;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 150)
                     {
                        MenuClass.NowFrameCheck = 150;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 100)
                     {
                        MenuClass.NowFrameCheck = 100;
                     }
                     else if(MenuClass.systemData["Story_Page"]["_menu"] >= 50)
                     {
                        MenuClass.NowFrameCheck = 50;
                     }
                     i = 0;
                     while(i <= 49)
                     {
                        if(i <= MenuClass.StoryTimeLineData.length - MenuClass.NowFrameCheck - 1)
                        {
                           MenuClass.tabMenuAdd[tabName].storyTimeLine["bar" + i].gotoAndStop(2);
                           MenuClass.tabMenuAdd[tabName].storyTimeLine["bar" + i].buttonMode = true;
                        }
                        else
                        {
                           MenuClass.tabMenuAdd[tabName].storyTimeLine["bar" + i].gotoAndStop(1);
                           MenuClass.tabMenuAdd[tabName].storyTimeLine["bar" + i].buttonMode = false;
                        }
                        i++;
                     }
                     MenuClass.tabMenuAdd[tabName].storyTimeLine["bar" + (MenuClass.systemData["Story_Page"]["_menu"] - MenuClass.NowFrameCheck)].gotoAndStop(3);
                     if(MenuClass.systemData["Story_Page"]["_menu"] == 0)
                     {
                        MenuClass.tabMenuAdd[tabName].storyTimeLine.minus.gotoAndStop(3);
                        MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine.minus.buttonMode = false;
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].storyTimeLine.minus.gotoAndStop(1);
                        MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine.minus.buttonMode = true;
                     }
                     if(MenuClass.systemData["Story_Page"]["_menu"] == MenuClass.StoryTimeLineData.length - 1)
                     {
                        MenuClass.tabMenuAdd[tabName].storyTimeLine.plus.gotoAndStop(3);
                        MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine.plus.buttonMode = false;
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[tabName].storyTimeLine.plus.gotoAndStop(1);
                        MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine.plus.buttonMode = true;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new SetLinkColorClass(tabName);
               }
               catch(myError:Error)
               {
               }
               j++;
            }
            eee = MenuClass.MY_MENUNAME.length;
            i = 0;
            while(i < eee)
            {
               headerName = MenuClass.MY_MENUNAME[i][0];
               if(MenuClass.popAllRandomTabNameAdd[headerName] != undefined)
               {
                  if(MenuClass.MY_MENUNAME[i][2])
                  {
                     new ColorChangeClass(MenuClass.popAllRandomTabNameAdd[headerName].bg,"666666");
                  }
                  else
                  {
                     new ColorChangeClass(MenuClass.popAllRandomTabNameAdd[headerName].bg,"000000");
                  }
               }
               i++;
            }
            if(MenuClass.systemData["MeterNumView"]["_check"])
            {
               new Tab_MeterTxt(MenuClass.systemData["MeterNumView"]["_check"]);
            }
         }
      }
      
      private function menuNumFc(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         if(MenuClass.tabData[param1][param3][2]["_menu"] == "charaPlus")
         {
            _loc4_ = MenuClass.tabData[param1][param3][2]["_data"];
            _loc5_ = MenuClass.systemData[_loc4_]["_menu"];
            this.menuNum = MenuClass.charaData[MenuClass._nowCharaNum][param2 + _loc5_]["_menu"];
         }
         else if(MenuClass.tabData[param1][param3][2]["_menu"] == "chara" || MenuClass.tabData[param1][param3][2]["_menu"] == "SelectCharacter")
         {
            this.menuNum = MenuClass.charaData[MenuClass._nowCharaNum][param2]["_menu"];
         }
         else if(MenuClass.tabData[param1][param3][2]["_menu"] == "systemPlus")
         {
            _loc4_ = MenuClass.tabData[param1][param3][2]["_data"];
            _loc5_ = MenuClass.systemData[_loc4_]["_menu"];
            this.menuNum = MenuClass.systemData[param2 + _loc5_]["_menu"];
         }
         else if(MenuClass.tabData[param1][param3][2]["_menu"] == "system")
         {
            this.menuNum = MenuClass.systemData[param2]["_menu"];
         }
         else
         {
            this.menuNum = 0;
         }
      }
   }
}
