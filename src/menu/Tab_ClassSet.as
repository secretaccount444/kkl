package menu
{
   import flash.display.MovieClip;
   
   public class Tab_ClassSet
   {
       
      
      public function Tab_ClassSet(param1:String)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:String = null;
         var _loc7_:* = null;
         var _loc10_:int = 0;
         var _loc11_:MovieClip = null;
         super();
         var _loc5_:int = MenuClass.MY_MENUNAME.length;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         _loc2_ = 0;
         while(_loc2_ < _loc5_)
         {
            if(MenuClass.MY_MENUNAME[_loc2_][0] == param1)
            {
               _loc10_ = _loc2_;
            }
            _loc2_++;
         }
         for(_loc7_ in MenuClass.tabData[param1])
         {
            _loc3_ = _loc7_ as int;
            if(!(MenuClass.tabData[param1][_loc3_][2]["_r18"] == 1 && Main.r18Check || MenuClass.tabData[param1][_loc3_][2]["_r18"] == 2 && !Main.r18Check))
            {
               if(!(MenuClass.tabData[param1][_loc3_][2]["_download"] && (Main.publishMode == "web" || Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age")))
               {
                  _loc6_ = MenuClass.tabData[param1][_loc3_][0];
                  _loc11_ = MenuClass.tabData[param1][_loc3_][1];
                  MenuClass.tabMenuAdd[_loc6_] = _loc11_;
                  Main.stageVar.addChild(MenuClass.tabMenuAdd[_loc6_]);
                  if(_loc6_ == "FreeHukidashiBlend")
                  {
                     try
                     {
                        MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "NORMAL";
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].TabCloseObj != undefined)
                  {
                     Tab_CloseBtnClass.setFc(_loc6_,_loc10_);
                  }
                  else if(MenuClass.tabMenuAdd[_loc6_].bg != undefined)
                  {
                     new ColorChangeClass(MenuClass.tabMenuAdd[_loc6_].bg,MenuClass.MY_MENUNAME[_loc10_][1]);
                  }
                  try
                  {
                     if(MenuClass.tabMenuAdd[_loc6_].icon != undefined)
                     {
                        MenuClass.tabMenuAdd[_loc6_].icon.gotoAndStop(MenuClass.tabData[param1][_loc3_][0]);
                        if(Main.r18Check)
                        {
                           if(MenuClass.tabMenuAdd[_loc6_].icon.icon)
                           {
                              MenuClass.tabMenuAdd[_loc6_].icon.icon.gotoAndStop(2);
                           }
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].selectTarget != undefined)
                  {
                     Tab_SelectTargetClass.setFc(MenuClass.tabMenuAdd[_loc6_].selectTarget);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].resetTarget != undefined)
                  {
                     Tab_ResetTargetClass.setFc(MenuClass.tabMenuAdd[_loc6_].resetTarget,param1);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].upTarget != undefined)
                  {
                     Tab_UpDownTargetClass.setFc(MenuClass.tabMenuAdd[_loc6_],param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].copyTarget != undefined)
                  {
                     Tab_CopyTargetClass.setFc(MenuClass.tabMenuAdd[_loc6_],param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].pasteTarget != undefined)
                  {
                     Tab_PasteTargetClass.setFc(MenuClass.tabMenuAdd[_loc6_].pasteTarget,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].randomTarget != undefined)
                  {
                     Tab_RandomTargetClass.setFc(MenuClass.tabMenuAdd[_loc6_].randomTarget,param1);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].addBox0 != undefined)
                  {
                     Tab_AddCostumClass.setFc(MenuClass.tabMenuAdd[_loc6_].addBox0,param1);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].sortTarget != undefined)
                  {
                     Tab_SortTargetClass.setFc(MenuClass.tabMenuAdd[_loc6_].sortTarget);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].randomCustom != undefined)
                  {
                     Tab_RandomCostumClass.setFc(MenuClass.tabMenuAdd[_loc6_].randomCustom,param1);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].link != undefined)
                  {
                     Tab_LinkClass.setFc(MenuClass.tabMenuAdd[_loc6_].link,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].menu0 != undefined)
                  {
                     Tab_MenuClass.setFc(_loc6_,_loc3_,param1);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].MenuCheck != undefined)
                  {
                     Tab_MenuCheckClass.setFc(_loc6_,_loc3_,param1);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].numberBtn != undefined)
                  {
                     Tab_NumberClass.setFc(MenuClass.tabMenuAdd[_loc6_].numberBtn,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].separate != undefined)
                  {
                     Tab_SeparateClass.setFc(MenuClass.tabMenuAdd[_loc6_].separate,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].mimihat != undefined)
                  {
                     Tab_MimihatClass.setFc(MenuClass.tabMenuAdd[_loc6_].mimihat,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].move != undefined)
                  {
                     Tab_MoveClass.setFc(MenuClass.tabMenuAdd[_loc6_].move);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].meter0 != undefined)
                  {
                     Tab_MeterClass.setFc(MenuClass.tabMenuAdd[_loc6_].meter0,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].color0 != undefined)
                  {
                     Tab_ColorBtnClass.setFc(_loc6_,_loc3_,param1);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].eyeBox != undefined)
                  {
                     Tab_EyeBoxClass.setFc(MenuClass.tabMenuAdd[_loc6_].eyeBox,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].checkBox != undefined)
                  {
                     Tab_CheckBoxClass.setFc(MenuClass.tabMenuAdd[_loc6_].checkBox,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].size != undefined)
                  {
                     Tab_CheckBoxClass.setFc(MenuClass.tabMenuAdd[_loc6_].size,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].swfColor != undefined)
                  {
                     Tab_SwfColorClass.setFc(MenuClass.tabMenuAdd[_loc6_].swfColor,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].ManualAuto != undefined)
                  {
                     Tab_ManualAutoClass.setFc(MenuClass.tabMenuAdd[_loc6_].ManualAuto,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].URLLocal != undefined)
                  {
                     Tab_URLLocalClass.setFc(MenuClass.tabMenuAdd[_loc6_].URLLocal,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].EasyExpert != undefined)
                  {
                     Tab_EasyExpertClass.setFc(MenuClass.tabMenuAdd[_loc6_].EasyExpert);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].reversal != undefined)
                  {
                     Tab_ReversalClass.setFc(MenuClass.tabMenuAdd[_loc6_].reversal,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].reversal2 != undefined)
                  {
                     Tab_Reversal2Class.setFc(MenuClass.tabMenuAdd[_loc6_].reversal2,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].depth != undefined)
                  {
                     Tab_DepthClass.setFc(MenuClass.tabMenuAdd[_loc6_].depth,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].turn != undefined)
                  {
                     Tab_TurnClass.setFc(MenuClass.tabMenuAdd[_loc6_].turn,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].turn2 != undefined)
                  {
                     Tab_Turn2Class.setFc(MenuClass.tabMenuAdd[_loc6_].turn2,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].hair0 != undefined)
                  {
                     Tab_HatHairClass.setFc(MenuClass.tabMenuAdd[_loc6_].hair0,_loc3_,param1,_loc6_,0);
                     Tab_HatHairClass.setFc(MenuClass.tabMenuAdd[_loc6_].hair1,_loc3_,param1,_loc6_,1);
                     Tab_HatHairClass.setFc(MenuClass.tabMenuAdd[_loc6_].hair2,_loc3_,param1,_loc6_,2);
                     Tab_HatHairClass.setFc(MenuClass.tabMenuAdd[_loc6_].hair3,_loc3_,param1,_loc6_,3);
                     Tab_HatHairClass.setFc(MenuClass.tabMenuAdd[_loc6_].hair4,_loc3_,param1,_loc6_,4);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].shadow != undefined)
                  {
                     Tab_ShadowClass.setFc(MenuClass.tabMenuAdd[_loc6_].shadow,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].tabMask != undefined)
                  {
                     Tab_tabMaskClass.setFc(MenuClass.tabMenuAdd[_loc6_].tabMask,_loc3_,param1,_loc6_);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].TabURLLoadingBtn != undefined)
                  {
                     Tab_LoadClass.setFc(MenuClass.tabMenuAdd[_loc6_].TabURLLoadingBtn);
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].plus != undefined)
                  {
                     Tab_StoryPlusMinus.setFc(MenuClass.tabMenuAdd[_loc6_].plus,"plus");
                     Tab_StoryPlusMinus.setFc(MenuClass.tabMenuAdd[_loc6_].minus,"minus");
                     Tab_StoryTimeLine.setFc();
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].OlidSaveBtn != undefined)
                  {
                     try
                     {
                        if(_loc6_ == "OldSave")
                        {
                           Tab_OldSaveBtn.setFc();
                        }
                        else if(_loc6_ == "StoryOldSave")
                        {
                           Tab_StoryOldSaveBtn.setFc();
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].TextSaveBtn != undefined)
                  {
                     try
                     {
                        Tab_TextSaveBtn.setFc(MenuClass.tabMenuAdd[_loc6_].TextSaveBtn);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].TextLoadBtn != undefined)
                  {
                     try
                     {
                        Tab_TextLoadBtn.setFc(MenuClass.tabMenuAdd[_loc6_].TextLoadBtn);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].TextSaveAll != undefined)
                  {
                     try
                     {
                        Tab_TextSaveAllBtn.setFc(MenuClass.tabMenuAdd[_loc6_].TextSaveAll);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].TextLoadAll != undefined)
                  {
                     try
                     {
                        Tab_TextLoadAllBtn.setFc(MenuClass.tabMenuAdd[_loc6_].TextLoadAll);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].TabPrevBtn != undefined)
                  {
                     try
                     {
                        Tab_PrevBtn.setFc(MenuClass.tabMenuAdd[_loc6_].TabPrevBtn);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].TabPageTopBtn != undefined)
                  {
                     try
                     {
                        Tab_PageTopBtn.setFc(MenuClass.tabMenuAdd[_loc6_].TabPageTopBtn);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].TabDressUPBtn != undefined)
                  {
                     try
                     {
                        Tab_DressUPBtn.setFc(MenuClass.tabMenuAdd[_loc6_].TabDressUPBtn);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].headerSwitch != undefined)
                  {
                     try
                     {
                        Tab_headerSwitchBtn.setFc(MenuClass.tabMenuAdd[_loc6_].headerSwitch);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(MenuClass.tabMenuAdd[_loc6_].ImportExport != undefined)
                  {
                     try
                     {
                        Tab_IEClass.setFc();
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc6_ == "Shortcut")
                  {
                     try
                     {
                        Tab_ShortcutBtn.setFc();
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc6_ == "BreakBlock")
                  {
                     try
                     {
                        Tab_BreakBlockBtn.setFc();
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc6_ == "URLTextList" || _loc6_ == "CharaURLTextList")
                  {
                     try
                     {
                        Tab_URLTextBtn.setFc(_loc6_);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc6_ == "OpenAge")
                  {
                     try
                     {
                        Tab_OpenAgeBtn.setFc();
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc6_ == "URLText" || _loc6_ == "CharaURLText")
                  {
                     try
                     {
                        Tab_URLTextClass.setFc(_loc6_);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc6_ == "CameraKirinuki" || _loc6_ == "EasyCameraPNG" || _loc6_ == "CameraGIF")
                  {
                     try
                     {
                        Tab_CameraClass.setFc(_loc6_);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(_loc6_ == "TabAllChara")
                  {
                     if(MenuClass.UmekomiItemFlag[4] != 0)
                     {
                        Tab_AllCharaWindow.setFc();
                     }
                  }
                  if(_loc6_ == "TabAllHukuSet")
                  {
                     if(MenuClass.UmekomiItemFlag[5] != 0)
                     {
                        Tab_AllHukuSet.setFc();
                     }
                  }
                  if(_loc6_ == "TabChara")
                  {
                     if(MenuClass.UmekomiItemFlag[3] != 0)
                     {
                        Tab_CharaWindow.setFc("start");
                     }
                  }
                  if(_loc3_ != 0)
                  {
                     if(MenuClass.tabData[param1][_loc3_][2]["_sort"] != MenuClass.tabData[param1][_loc3_ - 1][2]["_sort"])
                     {
                        MenuClass.tabMenuAdd[_loc6_].x = 10;
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[_loc6_].x = Math.floor(_loc8_ + _loc9_ - 2);
                     }
                     _loc8_ = MenuClass.tabMenuAdd[_loc6_].width;
                     _loc9_ = MenuClass.tabMenuAdd[_loc6_].x;
                  }
                  else
                  {
                     MenuClass.tabMenuAdd[_loc6_].x = 10;
                     _loc8_ = MenuClass.tabMenuAdd[_loc6_].width;
                     _loc9_ = MenuClass.tabMenuAdd[_loc6_].x;
                  }
                  if(_loc6_ == "AllCharacterSet_Close" || _loc6_ == "CharacterSet_Close" || _loc6_ == "AllHukuSet_Close" || _loc6_ == "Close")
                  {
                     MenuClass.tabMenuAdd[_loc6_].x += 2;
                  }
               }
            }
         }
         new Tab_ClassSetY(param1);
      }
   }
}
