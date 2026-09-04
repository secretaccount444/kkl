package menu
{
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.events.MouseEvent;
   import system.MeterPersent;
   
   public class Tab_ClassSet
   {
      /* Icon bounds are:
       *   X: -18.85 to 19.30
       *   Y:  -8.00 to 25.80
       *   (width 38.15, height 33.80)
       */
      public static var iconAdjustments: Object = {
         "TinScaleX": {
            "icon": "TinSize",
            "rotation": -90,
            "x": 31,
            "y": 15,
            "scaleX": 0.9,
            "scaleY": -0.9
         },
         "TinScaleY": {
            "icon": "TinSize"
         },
         "TinOffsetX": {
            "icon": "CharaLoadX"
         },
         "TinOffsetY": {
            "icon": "CharaLoadY"
         },
         "LeftUpperArmVisible": {
            "icon": "LeftArm"
         },
         "RightUpperArmVisible": {
            "icon": "RightArm"
         },
         "LeftArmVisible": {
            "icon": "FreeHandScale"
         },
         "RightArmVisible": {
            "icon": "FreeHandScale",
            "scaleX": -1
         },
         "LeftHandVisible": {
            "icon": "LeftHand"
         },
         "RightHandVisible": {
            "icon": "RightHand"
         },
         "LeftHandFlip": {
            "icon": "RightHand2"
         },
         "RightHandFlip": {
            "icon": "LeftHand2"
         },
         "LeftArmFlip": {
            "icon": "RightArm2"
         },
         "RightArmFlip": {
            "icon": "LeftArm2"
         },
         "MarkVary": {
            "icon": "RibonLine"
         },
         "EyebrowMoveHorizontalLeft": {
            "icon": "MarkX",
            "scaleX": -1
         },
         "EyebrowMoveHorizontalRight": {
            "icon": "MarkX"
         },
         "EyebrowX": {
            "icon": "EyebrowY",
            "rotation": 90,
            "x": 31,
            "y": 15
         },
         "RibonFineX": {
            "icon": "RibonX",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "RibonFineY": {
            "icon": "RibonY",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "FreeRibonFineX": {
            "icon": "FreeRibonX",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "FreeRibonFineY": {
            "icon": "FreeRibonY",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "FreeRibonAlpha": {
            "icon": "CharaLoadAlpha"
         },
         "BeltFineX": {
            "icon": "BeltX",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "BeltFineY": {
            "icon": "BeltY",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "FreeBeltFineX": {
            "icon": "FreeBeltX",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "FreeBeltFineY": {
            "icon": "FreeBeltY",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "FreeBeltAlpha": {
            "icon": "CharaLoadAlpha"
         },
         "FreeHandFineX": {
            "icon": "FreeHandX",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "FreeHandFineY": {
            "icon": "FreeHandY",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "CharaLoadFineX": {
            "icon": "CharaLoadX",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "CharaLoadFineY": {
            "icon": "CharaLoadY",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "LoadFineX": {
            "icon": "LoadX",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "LoadFineY": {
            "icon": "LoadY",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "FreeChairFineX": {
            "icon": "FreeChairX",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "FreeChairFineY": {
            "icon": "FreeChairY",
            "scaleX": 0.85,
            "scaleY": 0.85,
            "x": (38.15 * 0.55),
            "y": (33.80 * 0.20),
            "tint": {
               "amount": 0.33,
               "rgb": [210, 114, 217]
            }
         },
         "FreeChairAlpha": {
            "icon": "CharaLoadAlpha"
         },
         "MenuScale": {
            "icon": "FullScreen"
         },
         "MenuAlign": {
            "icon": "HideIcon",
            "rotation": 90,
            "x": 31,
            "y": 15
         },
         "LeftArmFreeRotation": {
            "icon": "FreeHandPlus"
         },
         "RightArmFreeRotation": {
            "icon": "FreeHandPlus",
            "scaleX": -1,
            "x": 24
         },
         "LeftThighRotation": {
            "icon": "Ashi"
         },
         "LeftThighVisible": {
            "icon": "Ashi"
         },
         "LeftThighOffsetX": {
            "icon": "CharaLoadX"
         },
         "LeftThighOffsetY": {
            "icon": "CharaLoadY"
         },
         "LeftThighScaleX": {
            "icon": "CharaLoadScale"
         },
         "LeftThighScaleY": {
            "icon": "CharaLoadScaleY"
         },
         "RightThighRotation": {
            "icon": "Ashi2"
         },
         "RightThighVisible": {
            "icon": "Ashi2"
         },
         "RightThighOffsetX": {
            "icon": "CharaLoadX"
         },
         "RightThighOffsetY": {
            "icon": "CharaLoadY"
         },
         "RightThighScaleX": {
            "icon": "CharaLoadScale"
         },
         "RightThighScaleY": {
            "icon": "CharaLoadScaleY"
         },
         "LeftLegRotation": {
            "icon": "Tights"
         },
         "LeftLegVisible": {
            "icon": "Tights"
         },
         "LeftLegOffsetX": {
            "icon": "CharaLoadX"
         },
         "LeftLegOffsetY": {
            "icon": "CharaLoadY"
         },
         "LeftLegScaleX": {
            "icon": "CharaLoadScale"
         },
         "LeftLegScaleY": {
            "icon": "CharaLoadScaleY"
         },
         "RightLegRotation": {
            "icon": "Tights",
            "scaleX": -1,
            "x": 19
         },
         "RightLegVisible": {
            "icon": "Tights",
            "scaleX": -1,
            "x": 19
         },
         "RightLegOffsetX": {
            "icon": "CharaLoadX"
         },
         "RightLegOffsetY": {
            "icon": "CharaLoadY"
         },
         "RightLegScaleX": {
            "icon": "CharaLoadScale"
         },
         "RightLegScaleY": {
            "icon": "CharaLoadScaleY"
         },
         "LeftFootRotation": {
            "icon": "Socks0"
         },
         "LeftFootVisible": {
            "icon": "Socks0"
         },
         "LeftFootOffsetX": {
            "icon": "CharaLoadX"
         },
         "LeftFootOffsetY": {
            "icon": "CharaLoadY"
         },
         "LeftFootScaleX": {
            "icon": "CharaLoadScale"
         },
         "LeftFootScaleY": {
            "icon": "CharaLoadScaleY"
         },
         "RightFootRotation": {
            "icon": "Socks1"
         },
         "RightFootVisible": {
            "icon": "Socks1"
         },
         "RightFootOffsetX": {
            "icon": "CharaLoadX"
         },
         "RightFootOffsetY": {
            "icon": "CharaLoadY"
         },
         "RightFootScaleX": {
            "icon": "CharaLoadScale"
         },
         "RightFootScaleY": {
            "icon": "CharaLoadScaleY"
         }
      };
      
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

         new MeterPersent(0.5, 1.0, "MenuScale", 0);
         var menuScale = MeterPersent.MeterPersentNum;

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
                  attachInterceptEvents(_loc11_);

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
                     if (MenuClass.tabData[param1][_loc3_][2] && MenuClass.tabData[param1][_loc3_][2]["_overrideMenuColor"]) {
                        new ColorChangeClass(MenuClass.tabMenuAdd[_loc6_].bg, MenuClass.tabData[param1][_loc3_][2]["_overrideMenuColor"]);
                     } else {
                        new ColorChangeClass(MenuClass.tabMenuAdd[_loc6_].bg, MenuClass.MY_MENUNAME[_loc10_][1]);
                     }
                  }
                  try
                  {
                     var iconSprite = MenuClass.tabMenuAdd[_loc6_].icon;

                     if(iconSprite != undefined)
                     {
                        var settingName = MenuClass.tabData[param1][_loc3_][0];

                        iconSprite.rotation = 0;

                        if (settingName in iconAdjustments) {
                           var adjustments = iconAdjustments[settingName];

                           iconSprite.gotoAndStop(adjustments["icon"]);
                           
                           if ("rotation" in adjustments) {
                              iconSprite.rotation = adjustments["rotation"];
                           }

                           if ("x" in adjustments) {
                              iconSprite.x = adjustments["x"];
                           }

                           if ("y" in adjustments) {
                              iconSprite.y = adjustments["y"];
                           }

                           if ("scaleX" in adjustments) {
                              iconSprite.scaleX = adjustments["scaleX"];
                           }

                           if ("scaleY" in adjustments) {
                              iconSprite.scaleY = adjustments["scaleY"];
                           }

                           if ("tint" in adjustments) {
                              var tintPct = adjustments["tint"]["amount"];
                              var origPct = 1.0 - tintPct;
                              var color = adjustments["tint"]["rgb"];

                              iconSprite.transform.colorTransform = new ColorTransform(
                                 origPct, origPct, origPct, 1.0,
                                 color[0] * tintPct, color[1] * tintPct, color[2] * tintPct, 0
                              );
                           }

                           var targetPoint = new Point()
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RibonAlpha" || MenuClass.tabData[param1][_loc3_][0] == "BeltAlpha" || MenuClass.tabData[param1][_loc3_][0] == "HairExAlpha") {
                           iconSprite.gotoAndStop("CharaLoadAlpha");
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "LeftUpperArmScaleX") {
                           iconSprite.gotoAndStop("HandWidth");
                           iconSprite.scaleX = -1;
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RightUpperArmScaleX") {
                           iconSprite.gotoAndStop("HandWidth");
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "LeftUpperArmScaleY") {
                           iconSprite.gotoAndStop("HandWidth");
                           iconSprite.rotation = 90;
                           iconSprite.x = 12;
                           iconSprite.y = 15;
                           iconSprite.scaleY = -1;
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RightUpperArmScaleY") {
                           iconSprite.gotoAndStop("HandWidth");
                           iconSprite.rotation = 90;
                           iconSprite.x = 31;
                           iconSprite.y = 15;
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "LeftUpperArmOffsetX") {
                           iconSprite.gotoAndStop("FreeHandX");
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RightUpperArmOffsetX") {
                           iconSprite.gotoAndStop("FreeHandX");
                           iconSprite.scaleX = -1;
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "LeftUpperArmOffsetY") {
                           iconSprite.gotoAndStop("FreeHandY");
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RightUpperArmOffsetY") {
                           iconSprite.gotoAndStop("FreeHandY");
                           iconSprite.scaleX = -1;
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "LeftArmScaleX") {
                           iconSprite.gotoAndStop("FreeHandScale");
                           iconSprite.rotation = 90;
                           iconSprite.x = 12;
                           iconSprite.y = 15;
                           iconSprite.scaleY = -1;
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RightArmScaleX") {
                           iconSprite.gotoAndStop("FreeHandScale");
                           iconSprite.rotation = 90;
                           iconSprite.x = 31;
                           iconSprite.y = 15;
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "LeftArmScaleY") {
                           iconSprite.gotoAndStop("FreeHandScale");
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RightArmScaleY") {
                           iconSprite.gotoAndStop("FreeHandScale");
                           iconSprite.scaleX = -1;
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "LeftArmOffsetX" || MenuClass.tabData[param1][_loc3_][0] == "LeftHandOffsetX") {
                           iconSprite.gotoAndStop("FreeHandX");
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RightArmOffsetX" || MenuClass.tabData[param1][_loc3_][0] == "RightHandOffsetX") {
                           iconSprite.gotoAndStop("FreeHandX");
                           iconSprite.scaleX = -1;
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "LeftArmOffsetY" || MenuClass.tabData[param1][_loc3_][0] == "LeftHandOffsetY") {
                           iconSprite.gotoAndStop("FreeHandY");
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RightArmOffsetY" || MenuClass.tabData[param1][_loc3_][0] == "RightHandOffsetY") {
                           iconSprite.gotoAndStop("FreeHandY");
                           iconSprite.scaleX = -1;
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "LeftHandScaleX" || MenuClass.tabData[param1][_loc3_][0] == "LeftHandScaleY") {
                           iconSprite.gotoAndStop("LeftHand");
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RightHandScaleX" || MenuClass.tabData[param1][_loc3_][0] == "RightHandScaleY") {
                           iconSprite.gotoAndStop("RightHand");
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "LeftShoulderVisible") {
                           iconSprite.gotoAndStop("ShoulderWidth");
                        } else if (MenuClass.tabData[param1][_loc3_][0] == "RightShoulderVisible") {
                           iconSprite.gotoAndStop("ShoulderWidth");
                        } else {
                           iconSprite.gotoAndStop(MenuClass.tabData[param1][_loc3_][0]);
                        }
                        
                        if(Main.r18Check)
                        {
                           if(iconSprite.icon)
                           {
                              iconSprite.icon.gotoAndStop(2);
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
                     MenuClass.tabMenuAdd[_loc6_].resetTarget.alpha = 0;
                     // Tab_ResetTargetClass.setFc(MenuClass.tabMenuAdd[_loc6_].resetTarget,param1);
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

                  if(
                     !(_loc6_ == "AllCharacterSet_Close" || _loc6_ == "CharacterSet_Close" || _loc6_ == "AllHukuSet_Close" || _loc6_ == "Close")
                  ) {
                     MenuClass.tabMenuAdd[_loc6_].scaleX = menuScale;
                     MenuClass.tabMenuAdd[_loc6_].scaleY = menuScale;
                  }

                  if(_loc3_ != 0)
                  {
                     if(MenuClass.tabData[param1][_loc3_][2]["_sort"] != MenuClass.tabData[param1][_loc3_ - 1][2]["_sort"])
                     {
                        MenuClass.tabMenuAdd[_loc6_].x = Air_StageSize.menuLeftEdge + 10;
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
                     MenuClass.tabMenuAdd[_loc6_].x = Air_StageSize.menuLeftEdge + 10;
                     _loc8_ = MenuClass.tabMenuAdd[_loc6_].width;
                     _loc9_ = MenuClass.tabMenuAdd[_loc6_].x;
                  }
                  if(_loc6_ == "AllCharacterSet_Close" || _loc6_ == "CharacterSet_Close" || _loc6_ == "AllHukuSet_Close" || _loc6_ == "Close")
                  {
                     MenuClass.tabMenuAdd[_loc6_].x += 3 * menuScale;
                  }
               }
            }
         }
         new Tab_ClassSetY(param1);
      }

      public static function rescaleMenu(headerName:String) {
         
         new MeterPersent(0.5, 1.0, "MenuScale", 0);
         var menuScale = MeterPersent.MeterPersentNum;
         var prevTabX = 0;
         var prevTabWidth = 0;

         for(var key in MenuClass.tabData[headerName])
         {
            var tabIdx = key as int;
            var tabName = MenuClass.tabData[headerName][tabIdx][0];
            var tabSprite = MenuClass.tabData[headerName][tabIdx][1];

            if (
               !(tabName == "AllCharacterSet_Close" || tabName == "CharacterSet_Close" || tabName == "AllHukuSet_Close" || tabName == "Close")
            ) {
               tabSprite.scaleX = menuScale;
               tabSprite.scaleY = menuScale;
            } else {
               Tab_CloseBtnClass.applyScale(tabName);
            }

            if(tabIdx != 0)
            {
               if(MenuClass.tabData[headerName][tabIdx][2]["_sort"] != MenuClass.tabData[headerName][tabIdx - 1][2]["_sort"])
               {
                  tabSprite.x = Air_StageSize.menuLeftEdge + 10;
               }
               else
               {
                  tabSprite.x = Math.floor(prevTabWidth + prevTabX - 2);
               }
               prevTabWidth = tabSprite.width;
               prevTabX = tabSprite.x;
            }
            else
            {
               tabSprite.x = Air_StageSize.menuLeftEdge + 10;
               prevTabWidth = tabSprite.width;
               prevTabX = tabSprite.x;
            }
            if(tabName == "AllCharacterSet_Close" || tabName == "CharacterSet_Close" || tabName == "AllHukuSet_Close" || tabName == "Close")
            {
               tabSprite.x += 3 * menuScale;
            }
         }

         new Tab_ClassSetY(headerName);
      }

      public static function searchInterceptTarget (start: MovieClip) : MovieClip {
         var cur = start;
         while (cur) {
            if (cur.hasOwnProperty("tabName")) {
               return cur;
            }

            cur = cur.parent;
         }
         
         return null;
      }

      public static function scrapeInterceptData (tabName: String) : Array {
         var scrapeIndexes = [];
         if (MenuClass._nowTargetMode == "All") {
            for (var i = 0; i <= MenuClass._characterNum; i++) {
               scrapeIndexes.push(i);
            }
         } else if (MenuClass._nowTargetMode == "SelectPlus") {
            MenuClass._nowSelectChara.forEach(function (selected, i) {
               if (selected) {
                  scrapeIndexes.push(i);
               }
            });
         } else {
            scrapeIndexes.push(MenuClass._nowCharaNum);
         }

         var scrapeData = [];
         scrapeIndexes.forEach(function (idx) {
            if (MenuClass.charaData[idx].hasOwnProperty(tabName)) {
               scrapeData.push(InvertIEData.serializeCharacterData(idx, tabName));
            }
         });

         return scrapeData;
      }

      public static function attachInterceptEvents (target: MovieClip) {
         var pre_intercept_data = null;

         target.addEventListener(MouseEvent.MOUSE_DOWN, function (ev: MouseEvent) {
            var interceptTarget = searchInterceptTarget(ev.target as MovieClip);
            if (interceptTarget) {
               pre_intercept_data = scrapeInterceptData(interceptTarget.tabName);
            } else {
               pre_intercept_data = null;
            }
         }, true);

         target.addEventListener(MouseEvent.MOUSE_DOWN, function (ev: MouseEvent) {
            var interceptTarget = searchInterceptTarget(ev.target as MovieClip);
            if (interceptTarget && (pre_intercept_data != null) && pre_intercept_data.length > 0) {
               var post_intercept_data = scrapeInterceptData(interceptTarget.tabName);
               if (Main.server) {
                  Main.server.emitEvent("menu_click", {
                     "tab": interceptTarget.tabName,
                     "header": interceptTarget.headerName,
                     "targetJ": interceptTarget.targetJ,
                     "pre_data": pre_intercept_data,
                     "post_data": post_intercept_data
                  });
               }
            }

            pre_intercept_data = null;
         }, false, -10);
      }
   }
}
