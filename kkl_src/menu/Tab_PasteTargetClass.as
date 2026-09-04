package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   import undo.CharacterHeaderCopyAction;
   import undo.SystemHeaderCopyAction;
   import undo.FullCharacterCopyAction;
   
   public class Tab_PasteTargetClass
   {
      
      public static var targetMC:MovieClip;
      
      public static var headerName:String;
      
      public static var tabName:String;
       
      
      public function Tab_PasteTargetClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String, param3:String) : void
      {
         param1.headerName = param2;
         param1.tabName = param3;
         headerName = param2;
         tabName = param3;
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.buttonMode = true;
         if(MenuClass.copyFragData[headerName] && tabName != "CopyRibon" || MenuClass.copyFragRibonData[headerName] && tabName == "CopyRibon")
         {
            param1.gotoAndStop(1);
         }
         else
         {
            param1.gotoAndStop(3);
         }
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var plusStr:String = null;
         var i:int = 0;
         var tabNum:String = null;
         var tdName:String = null;
         var num:Number = NaN;
         var loadCheck:Boolean = false;
         var xmoveNum:int = 0;
         var plusTdName:String = null;
         var plusTdName2:String = null;
         var e:MouseEvent = param1;
         targetMC = e.currentTarget as MovieClip;
         headerName = e.currentTarget.headerName;
         tabName = e.currentTarget.tabName;
         if(MenuClass.copyFragData[headerName] && tabName != "CopyRibon" || MenuClass.copyFragRibonData[headerName] && tabName == "CopyRibon")
         {
            MenuClass.charaOldData = clone(MenuClass.charaData);
            MenuClass.systemOldData = clone(MenuClass.systemData);
            loadCheck = true;
            targetMC.gotoAndStop(2);
            targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
            Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
            if(tabName == "SystemCopy")
            {
               var undoAction = new SystemHeaderCopyAction(headerName);
               Main.undoTimeline.push(undoAction);

               for(tabNum in MenuClass.tabData[headerName])
               {
                  tdName = MenuClass.tabData[headerName][tabNum][0];
                  plusStr = MenuClass.tabData[headerName][tabNum][2]["_data"];
                  if(tdName == "CameraKirinuki")
                  {
                     if(MenuClass.CopyPhotoSize != null)
                     {
                        MenuClass.photoSize = clone(MenuClass.CopyPhotoSize);
                        MenuClass.systemData["CameraKirinuki"] = clone(Tab_CopyTargetClass.systemCopyData["CameraKirinuki"]);
                        try
                        {
                           MenuClass.kirinukiWaku.x = MenuClass.photoSize[0];
                           MenuClass.kirinukiWaku.y = MenuClass.photoSize[1];
                           MenuClass.kirinukiWaku.sen1.width = MenuClass.photoSize[2];
                           MenuClass.kirinukiWaku.sen0.height = MenuClass.photoSize[3];
                           MenuClass.kirinukiWaku.sen3.width = MenuClass.photoSize[2];
                           MenuClass.kirinukiWaku.sen3.y = MenuClass.photoSize[3];
                           MenuClass.kirinukiWaku.sen2.height = MenuClass.photoSize[3];
                           MenuClass.kirinukiWaku.sen2.x = MenuClass.photoSize[2];
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     loadCheck = false;
                  }
                  else if(tdName == "Zoom")
                  {
                     MenuClass.systemData["Zoom"] = clone(Tab_CopyTargetClass.systemCopyData["Zoom"]);
                  }
                  else if(tdName == "Mosaic")
                  {
                     MenuClass.systemData["Mosaic"] = clone(Tab_CopyTargetClass.systemCopyData["Mosaic"]);
                     i = 0;
                     while(i <= MenuClass._characterNum)
                     {
                        Dress_data.DressCharaData[i]["Mosaic"] = clone(Tab_CopyTargetClass.dressCopyData[0]["Mosaic"]);
                        i++;
                     }
                     loadCheck = false;
                  }
                  else if(tdName == "txtFieldmenu")
                  {
                     num = MenuClass.systemData["txtFieldmenu"]["_menu"];
                     MenuClass.systemData["txtFieldmenu"]["_visible"][num] = Tab_CopyTargetClass.systemCopyData["txtFieldmenu"]["_visible"][Tab_CopyTargetClass.txtFieldmenuNum];
                     MenuClass.systemData["FontType" + num] = clone(Tab_CopyTargetClass.systemCopyData["FontType"]);
                     MenuClass.systemData["txtFieldScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldScale"]);
                     MenuClass.systemData["txtFieldX" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldX"]);
                     MenuClass.systemData["txtFieldY" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldY"]);
                     MenuClass.systemData["txtFieldLeading" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldLeading"]);
                     MenuClass.systemData["txtFieldLetter" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldLetter"]);
                     MenuClass.systemData["txtFieldTateYoko" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldTateYoko"]);
                     MenuClass.systemData["txtFieldFormatAlign" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldFormatAlign"]);
                     MenuClass.systemData["txtFieldAdd" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldAdd"]);
                     MenuClass.systemData["txtFieldAlpha" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldAlpha"]);
                     MenuClass.systemData["txtFieldBoxScaleX" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldBoxScaleX"]);
                     MenuClass.systemData["txtFieldBoxScaleY" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldBoxScaleY"]);
                     MenuClass.systemData["txtFieldWidth" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldWidth"]);
                     MenuClass.systemData["txtFieldScaleB" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldScaleB"]);
                     MenuClass.systemData["txtFieldRotation" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldRotation"]);
                     MenuClass.systemData["txtFieldDepth" + num] = clone(Tab_CopyTargetClass.systemCopyData["txtFieldDepth"]);
                     try
                     {
                        MenuClass.txtFieldAdd[num].htmlText = Tab_CopyTargetClass.systemCopyData["FontType"]["_txt"];
                     }
                     catch(myError:Error)
                     {
                     }
                     Dress_data.DressCharaData[0]["FontType" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FontType"]);
                     loadCheck = false;
                  }
                  else if(tdName == "FreeHukidashiPlus")
                  {
                     num = MenuClass.systemData["FreeHukidashiPlus"]["_menu"];
                     MenuClass.systemData["FreeHukidashiPlus"]["_visible"][num] = Tab_CopyTargetClass.systemCopyData["FreeHukidashiPlus"]["_visible"][Tab_CopyTargetClass.FreeHukidashiPlusNum];
                     MenuClass.systemData["FreeHukidashi" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashi"]);
                     Dress_data.DressCharaData[0]["FreeHukidashi" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeHukidashi"]);
                     MenuClass.systemData["FreeHukidashiAlpha" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiAlpha"]);
                     MenuClass.systemData["FreeHukidashiBlend" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiBlend"]);
                     MenuClass.systemData["FreeHukidashiScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiScale"]);
                     MenuClass.systemData["LinkFreeHukidashiScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["LinkFreeHukidashiScale"]);
                     MenuClass.systemData["FreeHukidashiScaleY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiScaleY"]);
                     MenuClass.systemData["FreeHukidashiScaleB" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiScaleB"]);
                     MenuClass.systemData["FreeHukidashiLine" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiLine"]);
                     Dress_data.DressCharaData[0]["FreeHukidashiLine" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeHukidashiLine"]);
                     MenuClass.systemData["FreeHukidashiRotation" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiRotation"]);
                     MenuClass.systemData["FreeHukidashiX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiX"]);
                     MenuClass.systemData["FreeHukidashiY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiY"]);
                     MenuClass.systemData["FreeHukidashiDepth" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiDepth"]);
                     MenuClass.systemData["FreeHukidashiExtra" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiExtra"]);
                     Dress_data.DressCharaData[0]["FreeHukidashiExtra" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeHukidashiExtra"]);
                     MenuClass.systemData["FreeHukidashiExtraLine" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiExtraLine"]);
                     MenuClass.systemData["FreeHukidashiExtraScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiExtraScale"]);
                     MenuClass.systemData["LinkFreeHukidashiExtraScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["LinkFreeHukidashiExtraScale"]);
                     MenuClass.systemData["FreeHukidashiExtraScaleY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiExtraScaleY"]);
                     MenuClass.systemData["FreeHukidashiExtraRotation" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiExtraRotation"]);
                     MenuClass.systemData["FreeHukidashiExtraX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiExtraX"]);
                     MenuClass.systemData["FreeHukidashiExtraY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHukidashiExtraY"]);
                     loadCheck = false;
                  }
                  else if(tdName == "FreeHandPlus")
                  {
                     num = MenuClass.systemData["FreeHandPlus"]["_menu"];
                     MenuClass.systemData["FreeHandPlus"]["_visible"][num] = Tab_CopyTargetClass.systemCopyData["FreeHandPlus"]["_visible"][Tab_CopyTargetClass.FreeHandPlusNum];
                     MenuClass.systemData["FreeHand" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHand"]);
                     Dress_data.DressCharaData[0]["FreeHand" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeHand"]);
                     MenuClass.systemData["FreeHandAlpha" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandAlpha"]);
                     MenuClass.systemData["FreeHandScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandScale"]);
                     MenuClass.systemData["FreeHandWidth" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandWidth"]);
                     MenuClass.systemData["FreeHandRotation" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandRotation"]);
                     MenuClass.systemData["FreeHandX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandX"]);
                     MenuClass.systemData["FreeHandY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandY"]);
                     MenuClass.systemData["FreeHandFineX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandFineX"]);
                     MenuClass.systemData["FreeHandFineY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandFineY"]);
                     MenuClass.systemData["FreeHandDepth" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandDepth"]);
                     MenuClass.systemData["FreeHandWrist" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandWrist"]);
                     MenuClass.systemData["FreeHandWristRotation" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandWristRotation"]);
                     MenuClass.systemData["FreeHandItem" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandItem"]);
                     Dress_data.DressCharaData[0]["FreeHandItem" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeHandItem"]);
                     MenuClass.systemData["FreeHandVest" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandVest"]);
                     Dress_data.DressCharaData[0]["FreeHandVest" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeHandVest"]);
                     MenuClass.systemData["FreeHandWristband" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeHandWristband"]);
                     Dress_data.DressCharaData[0]["FreeHandWristband" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeHandWristband"]);
                     loadCheck = false;
                  }
                  else if(tdName == "FreeRibonPlus")
                  {
                     num = MenuClass.systemData["FreeRibonPlus"]["_menu"];
                     MenuClass.systemData["FreeRibonPlus"]["_visible"][num] = Tab_CopyTargetClass.systemCopyData["FreeRibonPlus"]["_visible"][Tab_CopyTargetClass.FreeRibonPlusNum];
                     MenuClass.systemData["FreeRibon" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibon"]);
                     Dress_data.DressCharaData[0]["FreeRibon" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeRibon"]);
                     MenuClass.systemData["FreeRibonScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonScale"]);
                     MenuClass.systemData["FreeRibonScaleY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonScaleY"]);
                     MenuClass.systemData["FreeRibonScaleB" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonScaleB"]);
                     MenuClass.systemData["LinkFreeRibonScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["LinkFreeRibonScale"]);
                     MenuClass.systemData["LinkFreeRibonLine" + num] = clone(Tab_CopyTargetClass.systemCopyData["LinkFreeRibonLine"]);
                     MenuClass.systemData["FreeRibonLine" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonLine"]);
                     MenuClass.systemData["FreeRibonRotation" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonRotation"]);
                     MenuClass.systemData["FreeRibonX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonX"]);
                     MenuClass.systemData["FreeRibonY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonY"]);
                     MenuClass.systemData["FreeRibonFineX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonFineX"]);
                     MenuClass.systemData["FreeRibonFineY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonFineY"]);
                     MenuClass.systemData["FreeRibonDepth" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonDepth"]);
                     MenuClass.systemData["FreeRibonAlpha" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeRibonAlpha"]);
                     loadCheck = false;
                  }
                  else if(tdName == "FreeBeltPlus")
                  {
                     num = MenuClass.systemData["FreeBeltPlus"]["_menu"];
                     MenuClass.systemData["FreeBeltPlus"]["_visible"][num] = Tab_CopyTargetClass.systemCopyData["FreeBeltPlus"]["_visible"][Tab_CopyTargetClass.FreeBeltPlusNum];
                     MenuClass.systemData["FreeBelt" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBelt"]);
                     Dress_data.DressCharaData[0]["FreeBelt" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeBelt"]);
                     MenuClass.systemData["FreeBeltExtra" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltExtra"]);
                     MenuClass.systemData["FreeBeltScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltScale"]);
                     MenuClass.systemData["LinkFreeBeltScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["LinkFreeBeltScale"]);
                     MenuClass.systemData["LinkFreeBeltLine" + num] = clone(Tab_CopyTargetClass.systemCopyData["LinkFreeBeltLine"]);
                     MenuClass.systemData["FreeBeltScaleY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltScaleY"]);
                     MenuClass.systemData["FreeBeltScaleB" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltScaleB"]);
                     MenuClass.systemData["FreeBeltLine" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltLine"]);
                     MenuClass.systemData["FreeBeltRotation" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltRotation"]);
                     MenuClass.systemData["FreeBeltX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltX"]);
                     MenuClass.systemData["FreeBeltY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltY"]);
                     MenuClass.systemData["FreeBeltFineX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltFineX"]);
                     MenuClass.systemData["FreeBeltFineY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltFineY"]);
                     MenuClass.systemData["FreeBeltAlpha" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltAlpha"]);
                     MenuClass.systemData["FreeBeltDepth" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeBeltDepth"]);
                     loadCheck = false;
                  }
                  else if(tdName == "FreeFlagPlus")
                  {
                     num = MenuClass.systemData["FreeFlagPlus"]["_menu"];
                     MenuClass.systemData["FreeFlagPlus"]["_visible"][num] = Tab_CopyTargetClass.systemCopyData["FreeFlagPlus"]["_visible"][Tab_CopyTargetClass.FreeFlagPlusNum];
                     MenuClass.systemData["FreeFlag" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeFlag"]);
                     Dress_data.DressCharaData[0]["FreeFlag" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeFlag"]);
                     MenuClass.systemData["FreeFlagExtra" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeFlagExtra"]);
                     MenuClass.systemData["FreeFlagScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeFlagScale"]);
                     MenuClass.systemData["LinkFreeFlagScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["LinkFreeFlagScale"]);
                     MenuClass.systemData["FreeFlagScaleY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeFlagScaleY"]);
                     MenuClass.systemData["FreeFlagScaleB" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeFlagScaleB"]);
                     MenuClass.systemData["FreeFlagRotation" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeFlagRotation"]);
                     MenuClass.systemData["FreeFlagX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeFlagX"]);
                     MenuClass.systemData["FreeFlagY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeFlagY"]);
                     MenuClass.systemData["FreeFlagDepth" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeFlagDepth"]);
                     loadCheck = false;
                  }
                  else if(tdName == "FreeChairPlus")
                  {
                     num = MenuClass.systemData["FreeChairPlus"]["_menu"];
                     MenuClass.systemData["FreeChairPlus"]["_visible"][num] = Tab_CopyTargetClass.systemCopyData["FreeChairPlus"]["_visible"][Tab_CopyTargetClass.FreeChairPlusNum];
                     MenuClass.systemData["FreeChair" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChair"]);
                     Dress_data.DressCharaData[0]["FreeChair" + num] = clone(Tab_CopyTargetClass.dressCopyData[0]["FreeChair"]);
                     MenuClass.systemData["FreeChairExtra" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChairExtra"]);
                     MenuClass.systemData["FreeChairScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChairScale"]);
                     MenuClass.systemData["FreeChairLine" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChairLine"]);
                     MenuClass.systemData["FreeChairRotation" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChairRotation"]);
                     MenuClass.systemData["FreeChairX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChairX"]);
                     MenuClass.systemData["FreeChairY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChairY"]);
                     MenuClass.systemData["FreeChairDepth" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChairDepth"]);
                     MenuClass.systemData["FreeChairFineX" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChairFineX"]);
                     MenuClass.systemData["FreeChairFineY" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChairFineY"]);
                     MenuClass.systemData["FreeChairAlpha" + num] = clone(Tab_CopyTargetClass.systemCopyData["FreeChairAlpha"]);
                     loadCheck = false;
                  }
                  else if(tdName == "LoadPlus")
                  {
                     num = MenuClass.systemData["LoadPlus"]["_menu"];
                     MenuClass.systemData["LoadPlus"]["_visible"][num] = Tab_CopyTargetClass.systemCopyData["LoadPlus"]["_visible"][Tab_CopyTargetClass.LoadPlusNum];
                     MenuClass.systemData["LoadAlpha" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadAlpha"]);
                     MenuClass.systemData["LoadScale" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadScale"]);
                     MenuClass.systemData["LoadSize" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadSize"]);
                     MenuClass.systemData["LoadScaleY" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadScaleY"]);
                     MenuClass.systemData["LoadScaleB" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadScaleB"]);
                     MenuClass.systemData["LoadRotation" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadRotation"]);
                     MenuClass.systemData["LoadX" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadX"]);
                     MenuClass.systemData["LoadY" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadY"]);
                     MenuClass.systemData["LoadFineX" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadFineX"]);
                     MenuClass.systemData["LoadFineY" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadFineY"]);
                     MenuClass.systemData["LoadSwfColor" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadSwfColor"]);
                     MenuClass.systemData["LoadAdd" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadAdd"]);
                     MenuClass.systemData["LoadReversalDepth" + num] = clone(Tab_CopyTargetClass.systemCopyData["LoadReversalDepth"]);
                     new Tab_LoadURL("load",num);
                     loadCheck = false;
                  }
                  else if(tdName == "Background")
                  {
                     dataInSystem();
                  }
                  else if(plusStr != null)
                  {
                     if(loadCheck)
                     {
                        dataInSystem();
                     }
                  }
                  if(tdName != "SystemUpDown" && tdName != "SystemCopy" && tdName != "HeaderSwitch" && tdName != "Close" && headerName != "Loadmenu")
                  {
                     new SetClass(0,tdName,"paste");
                  }
               }
            }
            else if(headerName == "Story")
            {
               MenuClass.StoryBackupData = clone(MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]]);
               MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]] = clone(MenuClass.StoryTimeLineCopy);
               Tab_IEInOut.execute("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
            }
            else if(headerName == "SystemOption" || headerName == "Character")
            {
               var undoAction = new FullCharacterCopyAction();
               Main.undoTimeline.push(undoAction);

               if(MenuClass._nowTargetMode == "All")
               {
                  i = 0;
                  while(i <= MenuClass._characterNum)
                  {
                     xmoveNum = MenuClass.charaData[i]["Xmove"]["_meter"];
                     Dress_data.DressCharaData[i] = clone(Tab_CopyTargetClass.dressCopyData[0]);
                     MenuClass.charaData[i] = clone(Tab_CopyTargetClass.charaCopyData[0]);
                     MenuClass.charaData[i]["Xmove"]["_meter"] = xmoveNum;
                     try
                     {
                        Dress_data.menuCustomNum[i] = clone(Tab_CopyTargetClass.menuCustomCopyNum[0]);
                     }
                     catch(myError:Error)
                     {
                     }
                     SetCharaData.execute(i,"paste",0);
                     i++;
                  }
               }
               else if(MenuClass._nowTargetMode == "SelectPlus")
               {
                  i = 0;
                  while(i <= MenuClass._characterNum)
                  {
                     if(MenuClass._nowSelectChara[i])
                     {
                        xmoveNum = MenuClass.charaData[i]["Xmove"]["_meter"];
                        Dress_data.DressCharaData[i] = clone(Tab_CopyTargetClass.dressCopyData[0]);
                        MenuClass.charaData[i] = clone(Tab_CopyTargetClass.charaCopyData[0]);
                        MenuClass.charaData[i]["Xmove"]["_meter"] = xmoveNum;
                        try
                        {
                           Dress_data.menuCustomNum[i] = clone(Tab_CopyTargetClass.menuCustomCopyNum[0]);
                        }
                        catch(myError:Error)
                        {
                        }
                        SetCharaData.execute(i,"paste",0);
                     }
                     i++;
                  }
               }
               else
               {
                  xmoveNum = MenuClass.charaData[MenuClass._nowCharaNum]["Xmove"]["_meter"];
                  Dress_data.DressCharaData[MenuClass._nowCharaNum] = clone(Tab_CopyTargetClass.dressCopyData[0]);
                  MenuClass.charaData[MenuClass._nowCharaNum] = clone(Tab_CopyTargetClass.charaCopyData[0]);
                  MenuClass.charaData[MenuClass._nowCharaNum]["Xmove"]["_meter"] = xmoveNum;
                  try
                  {
                     Dress_data.menuCustomNum[MenuClass._nowCharaNum] = clone(Tab_CopyTargetClass.menuCustomCopyNum[0]);
                  }
                  catch(myError:Error)
                  {
                  }
                  SetCharaData.execute(MenuClass._nowCharaNum,"paste",0);
               }
            }
            else if(tabName == "CopyRibon")
            {
               for(tabNum in MenuClass.tabData[headerName])
               {
                  var dataTarget = MenuClass.tabData[headerName][tabNum][2]["_data"];
                  if (dataTarget != null) {
                     var undoAction = new CharacterHeaderCopyAction(headerName, false, MenuClass.systemData[dataTarget]["_menu"], true);
                     Main.undoTimeline.push(undoAction);
                     break;
                  }
               }

               for(tabNum in MenuClass.tabData[headerName])
               {
                  tdName = MenuClass.tabData[headerName][tabNum][0];
                  plusStr = MenuClass.tabData[headerName][tabNum][2]["_data"];
                  if(plusStr != null)
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum][plusStr]["_visible"][MenuClass.systemData[plusStr]["_menu"]] = Tab_CopyTargetClass.RibonPlusNum[plusStr];
                     plusTdName = tdName + MenuClass.systemData[plusStr]["_menu"];
                     plusTdName2 = tdName + "0";
                     try
                     {
                        Dress_data.DressCharaData[MenuClass._nowCharaNum][plusTdName] = clone(Tab_CopyTargetClass.dressRibonCopyData[0][plusTdName2]);
                        MenuClass.charaData[MenuClass._nowCharaNum][plusTdName] = clone(Tab_CopyTargetClass.charaRibonCopyData[0][plusTdName2]);
                     }
                     catch(myError:Error)
                     {
                        trace("CopyRibon エラー");
                     }
                     try
                     {
                        Dress_data.menuCustomNum[MenuClass._nowCharaNum][plusTdName] = clone(Tab_CopyTargetClass.menuCustomRibonCopyNum[0][plusTdName2]);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               new SetClass(MenuClass._nowCharaNum,plusStr,"pasteRibon");
            } else {
               var undoAction = new CharacterHeaderCopyAction(headerName, true, -1, false);
               Main.undoTimeline.push(undoAction);

               if(MenuClass._nowTargetMode == "All")
               {
                  i = 0;
                  while(i <= MenuClass._characterNum)
                  {
                     dataIn(i);
                     i++;
                  }
               }
               else if(MenuClass._nowTargetMode == "SelectPlus")
               {
                  i = 0;
                  while(i <= MenuClass._characterNum)
                  {
                     if(MenuClass._nowSelectChara[i])
                     {
                        dataIn(i);
                     }
                     i++;
                  }
               }
               else
               {
                  dataIn(MenuClass._nowCharaNum);
               }
            }
            
            MenuClass.charaOldData = null;
            MenuClass.systemOldData = null;
            new Tab_SetClass();
         }
      }
      
      public static function dataIn(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         for(_loc3_ in MenuClass.tabData[headerName])
         {
            _loc2_ = MenuClass.tabData[headerName][_loc3_][0];
            _loc5_ = false;
            if((_loc6_ = MenuClass.tabData[headerName][_loc3_][2]["_menu"]) == "charaPlus")
            {
               _loc5_ = true;
            }
            if((_loc6_ = MenuClass.tabData[headerName][_loc3_][2]["_meter"]) == "charaPlus")
            {
               _loc5_ = true;
            }
            if(_loc5_)
            {
               _loc7_ = MenuClass.tabData[headerName][_loc3_][2]["_data"];
               _loc8_ = MenuClass.charaData[param1][_loc7_]["_visible"].length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc8_)
               {
                  _loc9_ = _loc2_ + _loc4_;
                  Dress_data.DressCharaData[param1][_loc9_] = clone(Tab_CopyTargetClass.dressCopyData[0][_loc9_]);
                  MenuClass.charaData[param1][_loc9_] = clone(Tab_CopyTargetClass.charaCopyData[0][_loc9_]);
                  try
                  {
                     Dress_data.menuCustomNum[param1][_loc9_] = clone(Tab_CopyTargetClass.menuCustomCopyNum[0][_loc9_]);
                  }
                  catch(myError:Error)
                  {
                  }
                  _loc4_++;
               }
            }
            else
            {
               Dress_data.DressCharaData[param1][_loc2_] = clone(Tab_CopyTargetClass.dressCopyData[0][_loc2_]);
               MenuClass.charaData[param1][_loc2_] = clone(Tab_CopyTargetClass.charaCopyData[0][_loc2_]);
               try
               {
                  Dress_data.menuCustomNum[param1][_loc2_] = clone(Tab_CopyTargetClass.menuCustomCopyNum[0][_loc2_]);
               }
               catch(myError:Error)
               {
               }
            }
            new SetClass(param1,_loc2_,"paste");
         }
      }
      
      public static function dataInSystem() : void
      {
         var _loc1_:String = null;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         for(_loc2_ in MenuClass.tabData[headerName])
         {
            _loc1_ = MenuClass.tabData[headerName][_loc2_][0];
            Dress_data.DressCharaData[0][_loc1_] = clone(Tab_CopyTargetClass.dressCopyData[0][_loc1_]);
            MenuClass.systemData[_loc1_] = clone(Tab_CopyTargetClass.systemCopyData[_loc1_]);
            try
            {
               Dress_data.menuCustomNum[0][_loc1_] = clone(Tab_CopyTargetClass.menuCustomCopyNum[0][_loc1_]);
            }
            catch(myError:Error)
            {
            }
            new SetClass(0,_loc1_,"paste");
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         targetMC.gotoAndStop(1);
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
