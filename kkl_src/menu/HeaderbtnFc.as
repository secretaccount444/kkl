package menu
{
   import flash.geom.ColorTransform;
   import flash.text.TextFieldType;
   import parameter.Dress_data;
   
   public class HeaderbtnFc
   {
       
      
      public function HeaderbtnFc(param1:String)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:ColorTransform = null;
         var _loc7_:String = null;
         super();
         if(Main.allCharaLoadFlag || param1 != "AllCharacterSet" && param1 != "EasyAllCharacterSet" && param1 != "CharacterSet" && param1 != "EasyCharacterSet" && param1 != "AllHukuSet" && param1 != "EasyAllHukuSet")
         {
            new Stage_MoveCheckClass();
            try
            {
               Tab_ColorBtnSet2.customDeleteFc();
            }
            catch(myError:Error)
            {
            }
            if(MenuClass._nowHeaderName == "Tool")
            {
               Tab_CameraClass.clearFc();
            }
            new HeaderbtnAllMenuClose();
            _loc3_ = MenuClass.MY_MENUNAME.length - 1;
            _loc2_ = 0;
            while(_loc2_ <= _loc3_)
            {
               if(MenuClass.MY_MENUNAME[_loc2_][0] == param1)
               {
                  if(MenuClass.MY_MENUNAME[_loc2_][3] != 0)
                  {
                     MenuClass._nowHeaderMenuNum = MenuClass.MY_MENUNAME[_loc2_][3];
                     new HeaderMenuClass("");
                  }
               }
               _loc2_++;
            }
            if(MenuClass._nowHeaderName != param1)
            {
               if(Tab_BreakBlockBtn.breakblockMode != 0)
               {
                  Tab_BreakBlockBtn.ball.visible = false;
                  Tab_BreakBlockBtn.blockrod.visible = false;
                  Tab_BreakBlockBtn.breakblockMode = 0;
               }
               if(MenuClass.hederSwitchCheck)
               {
                  MenuClass.headerAdd[param1].gotoAndStop(2);
               }
               else
               {
                  MenuClass.headerAdd[param1].gotoAndStop(4);
               }
               MenuClass.headerAdd[param1].bg.shadow0.visible = false;
               MenuClass.headerAdd[param1].bg.shadow1.visible = false;
               new HeaderbtnShadow(param1,true);
               for(_loc5_ in MenuClass.headerAdd)
               {
                  if(_loc5_ != "null")
                  {
                     if(param1 == "Escape" && _loc5_ != "Escape")
                     {
                        MenuClass.headerAdd[_loc5_].visible = false;
                     }
                     MenuClass.headerAdd[_loc5_].alpha = 100;
                     if(param1 != "Escape")
                     {
                        new ColorFilterClass(MenuClass.headerAdd[_loc5_],true,-0.3,"header");
                     }
                  }
               }
               _loc3_ = MenuClass.systemData["txtFieldmenu"]["_visible"].length - 1;
               HeaderbtnClass.headerMenu.alpha = 100;
               if(param1 == "Escape")
               {
                  Tab_IE_Export.deleteFc();
                  Tab_IE_Import.deleteFc();
                  Tab_SaveClass.deleteFc("Save","Save");
                  Tab_SaveClass.TabSaveViewDeleteFc();
                  Tab_ShortcutClass.deleteFc();
                  Tab_URLTextWindow.deleteFc();
                  Tab_SaveClass.deleteFc("Story","StorySaveWindow");
                  HeaderbtnClass.headerMenu.visible = false;
                  new ColorChangeClass(Main.mainWindow,"000000");
                  Main.mainWindow.mouseChildren = false;
                  Main.mainWindow.mouseEnabled = false;
                  MenuClass._beforeHeaderName = MenuClass._nowHeaderName;
                  _loc4_ = 0;
                  while(_loc4_ <= _loc3_)
                  {
                     try
                     {
                        MenuClass.txtFieldAdd[_loc4_].visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc4_++;
                  }
                  _loc2_ = 0;
                  while(_loc2_ <= MenuClass._characterNum)
                  {
                     if(MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0])
                     {
                        _loc4_ = 0;
                        for(; _loc4_ <= 29; _loc4_++)
                        {
                           try
                           {
                              if(MenuClass.charaData[_loc2_]["CharaLoadPlus"]["_visible"][_loc4_])
                              {
                                 MenuClass.charaAdd[_loc2_]["loadObj" + _loc4_].visible = false;
                              }
                           }
                           catch(myError:Error)
                           {
                              continue;
                           }
                        }
                     }
                     _loc2_++;
                  }
                  _loc4_ = 0;
                  for(; _loc4_ <= 99; _loc4_++)
                  {
                     try
                     {
                        if(MenuClass.systemData["LoadPlus"]["_visible"][_loc4_])
                        {
                           Main.mainWindow["loadObj" + _loc4_].visible = false;
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  MenuClass._nowWindowName = null;
                  Tab_IE_Export.deleteFc();
                  Tab_IE_Import.deleteFc();
                  Tab_SaveClass.deleteFc("Save","Save");
                  Tab_SaveClass.TabSaveViewDeleteFc();
                  Tab_SaveClass.deleteFc("Story","StorySaveWindow");
                  Tab_ShortcutClass.deleteFc();
                  Tab_URLTextWindow.deleteFc();
                  if(MenuClass._nowHeaderName == "Save")
                  {
                     try
                     {
                        MenuClass.tabMenuAdd["TabImportExport"].ImportExport.exBtn.gotoAndStop(1);
                        MenuClass.tabMenuAdd["TabImportExport"].ImportExport.imBtn.gotoAndStop(1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.alpha = 1;
                        MenuClass.tabMenuAdd["SaveLoad"].TextSaveBtn.buttonMode = true;
                        MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.alpha = 1;
                        MenuClass.tabMenuAdd["SaveLoad"].TextLoadBtn.buttonMode = true;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               if(MenuClass._nowHeaderName != null)
               {
                  if(param1 != "Zoom")
                  {
                     if(MenuClass.hederSwitchCheck)
                     {
                        MenuClass.headerAdd[MenuClass._nowHeaderName].gotoAndStop(1);
                     }
                     else
                     {
                        MenuClass.headerAdd[MenuClass._nowHeaderName].gotoAndStop(3);
                     }
                     MenuClass.headerAdd[MenuClass._nowHeaderName].bg.shadow1.visible = true;
                     new HeaderbtnShadow(MenuClass._nowHeaderName,false);
                     new Tab_ClassDelete(MenuClass._nowHeaderName);
                  }
               }
               if(MenuClass._nowHeaderName == "Background" || MenuClass._nowHeaderName == "txt" || MenuClass._nowHeaderName == "Tool")
               {
                  MenuClass.HukuRock = false;
               }
               if(param1 == "Background" || param1 == "txt" || param1 == "Tool")
               {
                  MenuClass.HukuRock = true;
                  _loc4_ = 0;
                  while(_loc4_ <= MenuClass._characterNum)
                  {
                     MenuClass.charaAddDepth[_loc4_].charaSelect.visible = false;
                     MenuClass.charaAddDepth[_loc4_].charaSelect.gotoAndStop(1);
                     _loc4_++;
                  }
               }
               if(MenuClass._nowHeaderName == "Story")
               {
                  MenuClass.ClickRock = false;
                  MenuClass.storyFirstCheck = true;
               }
               if(param1 == "Story" || MenuClass.StoryMode)
               {
                  MenuClass.ClickRock = true;
                  _loc4_ = 0;
                  while(_loc4_ <= MenuClass._characterNum)
                  {
                     MenuClass.charaAddDepth[_loc4_].charaSelect.visible = false;
                     MenuClass.charaAddDepth[_loc4_].charaSelect.gotoAndStop(1);
                     _loc4_++;
                  }
               }
               if(param1 == "Vibrator")
               {
                  new Huku_Vibrator(MenuClass._nowCharaNum);
               }
               else if(param1 == "StoryTool")
               {
                  try
                  {
                     MenuClass._nowWindowName = "StoryToolSaveWindow";
                     Tab_SaveClass.setFc("StoryTool","StoryToolSaveWindow");
                  }
                  catch(myError:Error)
                  {
                  }
               }
               if(MenuClass._nowHeaderName == "txt")
               {
                  _loc4_ = 0;
                  while(_loc4_ <= _loc3_)
                  {
                     MenuClass.systemData["FontType" + _loc4_]["_font"] = MenuClass.FontList[MenuClass.systemData["FontType" + _loc4_]["_menu"]];
                     try
                     {
                        MenuClass.systemData["FontType" + _loc4_]["_txt"] = MenuClass.txtFieldAdd[_loc4_].text;
                        MenuClass.txtFieldAdd[_loc4_].selectable = false;
                        MenuClass.txtFieldAdd[_loc4_].border = false;
                        MenuClass.txtFieldAdd[_loc4_].type = TextFieldType.DYNAMIC;
                        MenuClass.txtFieldAdd[_loc4_].mouseChildren = false;
                        MenuClass.txtFieldAdd[_loc4_].mouseEnabled = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     Main.stageVar.focus = Main.mainWindow;
                     _loc4_++;
                  }
               }
               if(param1 != "Escape")
               {
                  if(param1 == "CharaLoad" && MenuClass._nowTargetMode == "All")
                  {
                     MenuClass._nowTargetMode = "Select";
                     MenuClass._nowTargetModeLoadURL = true;
                  }
                  if(MenuClass._nowHeaderName == "CharaLoad")
                  {
                     if(MenuClass._nowTargetModeLoadURL)
                     {
                        MenuClass._nowTargetMode = "All";
                        MenuClass._nowTargetModeLoadURL = false;
                     }
                  }
                  new Tab_CloseSelectMove();
                  new Chara_SelectClass("open");
                  new Tab_ClassSet(param1);
               }
               try
               {
                  if(MenuClass._nowHeaderName == "SystemOption")
                  {
                     Tab_RandomCostumOpen.toolDeleteFc();
                  }
                  else
                  {
                     Tab_RandomCostumOpen.deleteFc(MenuClass._nowHeaderName);
                  }
               }
               catch(myError:Error)
               {
               }
               if(param1 == "AllHukuSet" || param1 == "EasyAllHukuSet")
               {
                  if(MenuClass.UmekomiItemFlag[5] == 0)
                  {
                     new Chara_Loading_item(Main.loadItemName[5],0,"nashi");
                  }
               }
               if(param1 == "AllCharacterSet" || param1 == "EasyAllCharacterSet")
               {
                  if(MenuClass.UmekomiItemFlag[4] == 0)
                  {
                     new Chara_Loading_item(Main.loadItemName[4],0,"nashi");
                  }
               }
               if(param1 == "CharacterSet" || param1 == "EasyCharacterSet")
               {
                  if(MenuClass.UmekomiItemFlag[3] == 0)
                  {
                     new Chara_Loading_item(Main.loadItemName[3],0,"nashi");
                  }
               }
               if(param1 == "Character")
               {
                  MenuClass.systemData["SelectCharacter"]["_menu"] = MenuClass._nowCharaNum;
               }
               if(MenuClass._nowHeaderName == "EasySave")
               {
                  try
                  {
                     if(param1 != "Escape")
                     {
                        MenuClass._nowWindowName = null;
                     }
                     Tab_SaveClass.deleteFc("Save","Save");
                     Tab_SaveClass.TabSaveViewDeleteFc();
                  }
                  catch(myError:Error)
                  {
                  }
               }
               MenuClass._nowHeaderName = param1;
               if(MenuClass._nowHeaderName == "Story")
               {
                  new Tab_IESet("txtSave");
               }
               if(MenuClass._nowHeaderName == "Hair")
               {
                  MenuClass.systemData["HairAll"]["_color0"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color0"][0];
                  Dress_data.DressCharaData[0]["HairAll"][0]["_color0"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color0"][0];
                  MenuClass.systemData["HairAll"]["_color1"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color1"][0];
                  Dress_data.DressCharaData[0]["HairAll"][0]["_color1"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color1"][0];
                  MenuClass.systemData["HairAll"]["_color2"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color2"][0];
                  Dress_data.DressCharaData[0]["HairAll"][0]["_color2"][0] = MenuClass.charaData[MenuClass._nowCharaNum]["Hair"]["_color2"][0];
               }
               if(MenuClass._nowHeaderName == "EasySave")
               {
                  Tab_SaveClass.setFc("Save","Save");
               }
               new SetLinkData(MenuClass._nowCharaNum);
               new SetLinkSystemData();
               new Tab_SetClass();
               new ColorFilterClass(MenuClass.headerAdd[param1],false,-0.3,"header");
               new Tab_MeterTxt(MenuClass.systemData["MeterNumView"]["_check"]);
            }
            else if(param1 == "Escape")
            {
               _loc3_ = MenuClass.MY_MENUNAME.length - 1;
               _loc2_ = 0;
               while(_loc2_ <= _loc3_)
               {
                  _loc7_ = MenuClass.MY_MENUNAME[_loc2_][0];
                  if(MenuClass.MY_MENUNAME[_loc2_][3] == MenuClass._nowHeaderMenuNum || MenuClass.MY_MENUNAME[_loc2_][3] == 0)
                  {
                     if(_loc7_ != "StoryTool")
                     {
                        MenuClass.headerAdd[_loc7_].visible = true;
                     }
                  }
                  if(MenuClass.HideIconCheck && MenuClass._beforeHeaderName == null)
                  {
                     MenuClass.headerAdd[_loc7_].alpha = 0;
                  }
                  _loc2_++;
               }
               if(MenuClass.systemData["EExpert"]["_check"])
               {
                  HeaderbtnClass.headerMenu.visible = false;
                  MenuClass.headerAdd["Tool"].visible = false;
                  MenuClass.headerAdd["Save"].visible = false;
               }
               else
               {
                  HeaderbtnClass.headerMenu.visible = true;
               }
               if(MenuClass.HideIconCheck && MenuClass._beforeHeaderName == null)
               {
                  HeaderbtnClass.headerMenu.alpha = 0;
               }
               if(MenuClass._beforeHeaderName != null)
               {
                  new ColorFilterClass(MenuClass.headerAdd[MenuClass._nowHeaderName],true,-0.3,"header");
                  new ColorFilterClass(MenuClass.headerAdd[MenuClass._beforeHeaderName],false,-0.3,"header");
               }
               _loc6_ = new ColorTransform(1,1,1,1,0,0,0,0);
               Main.mainWindow.transform.colorTransform = _loc6_;
               Main.mainWindow.mouseChildren = true;
               Main.mainWindow.mouseEnabled = true;
               if(MenuClass.hederSwitchCheck)
               {
                  MenuClass.headerAdd["Escape"].gotoAndStop(1);
               }
               else
               {
                  MenuClass.headerAdd["Escape"].gotoAndStop(3);
               }
               MenuClass.headerAdd["Escape"].bg.shadow1.visible = true;
               new HeaderbtnShadow("Escape",false);
               MenuClass._nowHeaderName = MenuClass._beforeHeaderName;
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  if(MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0])
                  {
                     _loc4_ = 0;
                     for(; _loc4_ <= 29; _loc4_++)
                     {
                        try
                        {
                           if(MenuClass.charaData[_loc2_]["CharaLoadPlus"]["_visible"][_loc4_])
                           {
                              MenuClass.charaAdd[_loc2_]["loadObj" + _loc4_].visible = true;
                           }
                        }
                        catch(myError:Error)
                        {
                           continue;
                        }
                     }
                  }
                  _loc2_++;
               }
               _loc4_ = 0;
               for(; _loc4_ <= 99; _loc4_++)
               {
                  try
                  {
                     if(MenuClass.systemData["LoadPlus"]["_visible"][_loc4_])
                     {
                        Main.mainWindow["loadObj" + _loc4_].visible = true;
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
               _loc4_ = 0;
               while(_loc4_ <= _loc3_)
               {
                  if(MenuClass.systemData["txtFieldmenu"]["_visible"][_loc4_])
                  {
                     try
                     {
                        MenuClass.txtFieldAdd[_loc4_].visible = true;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  _loc4_++;
               }
               if(MenuClass._nowHeaderName == "txt")
               {
                  try
                  {
                     MenuClass.txtFieldAdd[MenuClass.systemData["txtFieldmenu"]["_menu"]].selectable = true;
                     MenuClass.txtFieldAdd[MenuClass.systemData["txtFieldmenu"]["_menu"]].border = true;
                     MenuClass.txtFieldAdd[MenuClass.systemData["txtFieldmenu"]["_menu"]].type = TextFieldType.DYNAMIC;
                     MenuClass.txtFieldAdd[MenuClass.systemData["txtFieldmenu"]["_menu"]].mouseChildren = true;
                     MenuClass.txtFieldAdd[MenuClass.systemData["txtFieldmenu"]["_menu"]].mouseEnabled = true;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               if(MenuClass._nowHeaderName != null)
               {
                  if(MenuClass.hederSwitchCheck)
                  {
                     MenuClass.headerAdd[MenuClass._nowHeaderName].gotoAndStop(2);
                  }
                  else
                  {
                     MenuClass.headerAdd[MenuClass._nowHeaderName].gotoAndStop(4);
                  }
                  MenuClass.headerAdd[MenuClass._nowHeaderName].bg.shadow0.visible = false;
                  MenuClass.headerAdd[MenuClass._nowHeaderName].bg.shadow1.visible = false;
                  new HeaderbtnShadow(MenuClass._nowHeaderName,true);
                  new Tab_ClassSet(MenuClass._nowHeaderName);
               }
               else
               {
                  new Chara_SelectClass("close");
               }
               try
               {
                  if(MenuClass._nowWindowName == "Save")
                  {
                     Tab_SaveClass.setFc("Save","Save");
                  }
                  else if(MenuClass._nowWindowName == "StorySaveWindow")
                  {
                     Tab_SaveClass.setFc("Story","StorySaveWindow");
                  }
                  else if(MenuClass._nowWindowName == "tabExportWindow")
                  {
                     Tab_IE_Export.setFc();
                  }
                  else if(MenuClass._nowWindowName == "tabImportWindow")
                  {
                     Tab_IE_Import.setFc();
                  }
                  else if(MenuClass._nowWindowName == "ShortcutWindow")
                  {
                     Tab_ShortcutClass.setFc();
                  }
                  else if(MenuClass._nowWindowName == "Loadmenu" || MenuClass._nowWindowName == "CharaLoad")
                  {
                     Tab_URLTextWindow.setFc();
                  }
               }
               catch(myError:Error)
               {
               }
               if(MenuClass.systemData["MeterNumView"]["_check"] && MenuClass._nowHeaderName != null)
               {
                  new SetClass(0,"MeterNumView","tab");
               }
               if(MenuClass._nowHeaderName == "Story")
               {
                  MenuClass.ClickRock = true;
               }
            }
            else
            {
               if(MenuClass._nowTargetModeLoadURL)
               {
                  MenuClass._nowTargetMode = "All";
                  MenuClass._nowTargetModeLoadURL = false;
               }
               new Tab_CloseClass();
            }
            MenuClass.DressSetCheck = false;
         }
      }
   }
}
