package menu
{
   public class Tab_ClassDelete
   {
       
      
      public function Tab_ClassDelete(param1:String)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:* = null;
         super();
         for(_loc5_ in MenuClass.tabData[param1])
         {
            _loc2_ = _loc5_ as int;
            if(!(MenuClass.tabData[param1][_loc2_][2]["_r18"] == 1 && Main.r18Check || MenuClass.tabData[param1][_loc2_][2]["_r18"] == 2 && !Main.r18Check))
            {
               if(!(MenuClass.tabData[param1][_loc2_][2]["_download"] && (Main.publishMode == "web" || Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age")))
               {
                  _loc4_ = MenuClass.tabData[param1][_loc2_][0];
                  if(MenuClass.tabMenuAdd[_loc4_].TabCloseObj != undefined)
                  {
                     Tab_CloseBtnClass.deleteFc(_loc4_);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].selectTarget != undefined)
                  {
                     Tab_SelectTargetClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].selectTarget);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].resetTarget != undefined)
                  {
                     Tab_ResetTargetClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].resetTarget);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].upTarget != undefined)
                  {
                     Tab_UpDownTargetClass.deleteFc(MenuClass.tabMenuAdd[_loc4_]);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].copyTarget != undefined)
                  {
                     Tab_CopyTargetClass.deleteFc(MenuClass.tabMenuAdd[_loc4_]);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].pasteTarget != undefined)
                  {
                     Tab_PasteTargetClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].pasteTarget);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].randomTarget != undefined)
                  {
                     Tab_RandomTargetClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].randomTarget);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].addBox0 != undefined)
                  {
                     Tab_AddCostumClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].addBox0);
                     try
                     {
                        if(param1 == "CharaLoad")
                        {
                           Tab_AddCostumOpen2.deleteFc("LoadPlus");
                        }
                        else if(param1 == "Ribon")
                        {
                           Tab_AddCostumOpen3.deleteFc("RibonPlus");
                        }
                        else if(param1 == "HairEx")
                        {
                           Tab_AddCostumOpen3.deleteFc("HairExPlus");
                        }
                        else if(param1 == "Loadmenu")
                        {
                           Tab_AddCostumOpen.deleteFc("LoadPlus");
                        }
                        else if(param1 == "txt")
                        {
                           Tab_AddCostumOpen.deleteFc("txtFieldAdd");
                        }
                     }
                     catch(e:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].sortTarget != undefined)
                  {
                     Tab_SortTargetClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].sortTarget);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].randomCustom != undefined)
                  {
                     Tab_RandomCostumClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].randomCustom);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].link != undefined)
                  {
                     Tab_LinkClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].link);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].menu0 != undefined)
                  {
                     Tab_MenuClass.deleteFc(_loc4_);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].MenuCheck != undefined)
                  {
                     Tab_MenuCheckClass.deleteFc(_loc4_);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].numberBtn != undefined)
                  {
                     Tab_NumberClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].numberBtn);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].separate != undefined)
                  {
                     Tab_SeparateClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].separate);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].mimihat != undefined)
                  {
                     Tab_MimihatClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].mimihat);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].move != undefined)
                  {
                     Tab_MoveClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].move);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].meter0 != undefined)
                  {
                     Tab_MeterClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].meter0);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].color0 != undefined)
                  {
                     Tab_ColorBtnClass.deleteFc(_loc4_);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].eyeBox != undefined)
                  {
                     Tab_EyeBoxClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].eyeBox);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].checkBox != undefined)
                  {
                     Tab_CheckBoxClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].checkBox);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].size != undefined)
                  {
                     Tab_CheckBoxClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].size);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].swfColor != undefined)
                  {
                     Tab_SwfColorClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].swfColor);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].ManualAuto != undefined)
                  {
                     Tab_ManualAutoClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].ManualAuto);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].URLLocal != undefined)
                  {
                     Tab_URLLocalClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].URLLocal);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].EasyExpert != undefined)
                  {
                     Tab_EasyExpertClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].EasyExpert);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].reversal != undefined)
                  {
                     Tab_ReversalClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].reversal);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].reversal2 != undefined)
                  {
                     Tab_Reversal2Class.deleteFc(MenuClass.tabMenuAdd[_loc4_].reversal2);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].depth != undefined)
                  {
                     Tab_DepthClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].depth);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].turn != undefined)
                  {
                     Tab_TurnClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].turn);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].turn2 != undefined)
                  {
                     Tab_TurnClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].turn2);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].hair0 != undefined)
                  {
                     Tab_HatHairClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].hair0);
                     Tab_HatHairClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].hair1);
                     Tab_HatHairClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].hair2);
                     Tab_HatHairClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].hair3);
                     Tab_HatHairClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].hair4);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].shadow != undefined)
                  {
                     Tab_ShadowClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].shadow);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].tabMask != undefined)
                  {
                     Tab_tabMaskClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].tabMask);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].TabURLLoadingBtn != undefined)
                  {
                     Tab_LoadClass.deleteFc(MenuClass.tabMenuAdd[_loc4_].TabURLLoadingBtn);
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].plus != undefined)
                  {
                     Tab_StoryPlusMinus.deleteFc(MenuClass.tabMenuAdd[_loc4_].plus,"plus");
                     Tab_StoryPlusMinus.deleteFc(MenuClass.tabMenuAdd[_loc4_].minus,"minus");
                     Tab_StoryTimeLine.deleteFc();
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].OlidSaveBtn != undefined)
                  {
                     try
                     {
                        if(_loc4_ == "OldSave")
                        {
                           Tab_OldSaveBtn.deleteFc();
                        }
                        else if(_loc4_ == "StoryOldSave")
                        {
                           Tab_StoryOldSaveBtn.deleteFc();
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].TextSaveBtn != undefined)
                  {
                     try
                     {
                        Tab_TextSaveBtn.deleteFc(MenuClass.tabMenuAdd[_loc4_].TextSaveBtn);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].TextLoadBtn != undefined)
                  {
                     try
                     {
                        Tab_TextLoadBtn.deleteFc(MenuClass.tabMenuAdd[_loc4_].TextLoadBtn);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].TextSaveAll != undefined)
                  {
                     try
                     {
                        Tab_TextSaveAllBtn.deleteFc(MenuClass.tabMenuAdd[_loc4_].TextSaveAll);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].TextLoadAll != undefined)
                  {
                     try
                     {
                        Tab_TextLoadAllBtn.deleteFc(MenuClass.tabMenuAdd[_loc4_].TextLoadAll);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].TabPrevBtn != undefined)
                  {
                     try
                     {
                        Tab_PrevBtn.deleteFc(MenuClass.tabMenuAdd[_loc4_].TabPrevBtn);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].TabPageTopBtn != undefined)
                  {
                     try
                     {
                        Tab_PageTopBtn.deleteFc(MenuClass.tabMenuAdd[_loc4_].TabPageTopBtn);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].TabDressUPBtn != undefined)
                  {
                     try
                     {
                        Tab_DressUPBtn.deleteFc(MenuClass.tabMenuAdd[_loc4_].TabDressUPBtn);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].headerSwitch != undefined)
                  {
                     try
                     {
                        Tab_headerSwitchBtn.deleteFc(MenuClass.tabMenuAdd[_loc4_].headerSwitch);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc4_].ImportExport != undefined)
                  {
                     try
                     {
                        Tab_IEClass.deleteFc();
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc4_ == "Shortcut")
                  {
                     try
                     {
                        Tab_ShortcutBtn.deleteFc();
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc4_ == "BreakBlock")
                  {
                     try
                     {
                        Tab_BreakBlockBtn.deleteFc();
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc4_ == "URLTextList" || _loc4_ == "CharaURLTextList")
                  {
                     try
                     {
                        Tab_URLTextBtn.deleteFc(_loc4_);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc4_ == "OpenAge")
                  {
                     try
                     {
                        Tab_OpenAgeBtn.deleteFc();
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc4_ == "URLText" || _loc4_ == "CharaURLText")
                  {
                     try
                     {
                        Tab_URLTextClass.deleteFc();
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc4_ == "CameraKirinuki" || _loc4_ == "EasyCameraPNG" || _loc4_ == "CameraGIF")
                  {
                     try
                     {
                        Tab_CameraClass.deleteFc(_loc4_);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc4_ == "TabAllChara")
                  {
                     if(MenuClass.UmekomiItemFlag[4] != 0)
                     {
                        Tab_AllCharaWindow.deleteFc();
                     }
                  }
                  if(_loc4_ == "TabAllHukuSet")
                  {
                     if(MenuClass.UmekomiItemFlag[5] != 0)
                     {
                        Tab_AllHukuSet.deleteFc();
                     }
                  }
                  if(_loc4_ == "TabChara")
                  {
                     if(MenuClass.UmekomiItemFlag[3] != 0)
                     {
                        Tab_CharaWindow.deleteFc();
                     }
                  }
                  Main.stageVar.removeChild(MenuClass.tabMenuAdd[_loc4_]);
                  MenuClass.tabMenuAdd[_loc4_] = null;
               }
            }
         }
      }
   }
}
