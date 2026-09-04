package menu
{
   import flash.display.BlendMode;
   import flash.geom.Matrix;
   import flash.geom.ColorTransform;
   import parameter.ColorMakeNew;
   import system.MeterPersentRibon;
   
   public class Add_LoadURL2
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;

      public static var attachPointLayeringKeys = {
         "LeftThighMod": "thigh",
         "LeftThighMod": "thigh",
         "RightLegMod": "leg",
         "LeftLegMod": "leg",
         "LeftFootMod": "foot",
         "RightFootMod": "foot",
         "LeftHandMod": "hand",
         "RightHandMod": "hand",
         "LeftLowerArmMod": "lowerArm",
         "RightLowerArmMod": "lowerArm",
         "LeftUpperArmMod": "upperArm",
         "RightUpperArmMod": "upperArm"
      }
      
      public function Add_LoadURL2(param1:String, param2:int, param3:int, param4:String)
      {
         var menuNum:int = 0;
         var i:int = 0;
         var skewMatrix:Matrix = null;
         var tabName:String = param1;
         var charaNum:int = param2;
         var num:int = param3;
         var clickTarget:String = param4;
         super();
         this.charaAdd = MenuClass.charaAdd[charaNum];
         this.charaData = MenuClass.charaData[charaNum];
         var openArData: Array = Tab_AddCostumOpen2.getOpenAr(charaNum, num);
         var addName0:String = Tab_AddCostumOpen2.getAttachPointName(charaNum, num);
         if(tabName == "CharaLoadAdd" && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            if(openArData[2] < this.charaData["CharaLoadReversalDepth" + num]["_depth"])
            {
               this.charaData["CharaLoadReversalDepth" + num]["_depth"] = openArData[2];
            }
            MenuClass.tabData["CharaLoad"][12][2]["_depth"] = openArData[2];
            this.charaAdd["loadObj" + num].visible = false;
            if(addName0 == "Body")
            {
               this.charaAdd.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "headAdd")
            {
               if(this.charaData["CharaLoadReversalDepth" + num]["_depth"] == 0)
               {
                  this.charaAdd.CharaloadAdd.addChild(this.charaAdd["loadObj" + num]);
               }
               else if(this.charaData["CharaLoadReversalDepth" + num]["_depth"] >= 1)
               {
                  this.charaAdd.CharaloadAdd1.addChild(this.charaAdd["loadObj" + num]);
               }
            }
            else if (addName0 == "HeadMod")
            {
               this.charaAdd.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "LoadLeftArm" || addName0 == "LeftLowerArmMod")
            {
               this.charaAdd.handm1_0.hand.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "LoadRightArm" || addName0 == "RightLowerArmMod")
            {
               this.charaAdd.handm1_1.hand.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "LeftUpperArmMod")
            {
               this.charaAdd.handm0_0.hand.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "RightUpperArmMod")
            {
               this.charaAdd.handm0_1.hand.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "LoadLeftHand" || addName0 == "LeftHandMod")
            {
               this.charaAdd.handm1_0.hand.arm0.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "LoadRightHand" || addName0 == "RightHandMod")
            {
               this.charaAdd.handm1_1.hand.arm0.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "LeftThighMod")
            {
               this.charaAdd.ashi0.thigh.actual.thigh.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "RightThighMod")
            {
               this.charaAdd.ashi1.thigh.actual.thigh.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "LeftLegMod")
            {
               if (this.charaAdd.ashi0.leg != null && this.charaAdd.ashi0.leg.actual.leg != null) {
                  this.charaAdd.ashi0.leg.actual.leg.addChild(this.charaAdd["loadObj" + num]);
               }
            }
            else if(addName0 == "RightLegMod")
            {
               if (this.charaAdd.ashi1.leg != null && this.charaAdd.ashi1.leg.actual.leg != null) {
                  this.charaAdd.ashi1.leg.actual.leg.addChild(this.charaAdd["loadObj" + num]);
               }
            }
            else if(addName0 == "LeftFootMod")
            {
               this.charaAdd.ashi0.foot.actual.foot.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "RightFootMod")
            {
               this.charaAdd.ashi1.foot.actual.foot.addChild(this.charaAdd["loadObj" + num]);
            }

            if (attachPointLayeringKeys[addName0]) {
               PartLayering.fixup(charaNum, [attachPointLayeringKeys[addName0]]);
            } else {
               sortModAttachSprites(charaNum, [addName0], true);
            }

            if(Tab_FileReference2.AddCheck[charaNum][num] == 0)
            {
               this.charaAdd["loadObj" + num].mouseChildren = false;
               this.charaAdd["loadObj" + num].buttonMode = true;
               new HukuClickClass(this.charaAdd["loadObj" + num]);
               new Stage_MoveClass(this.charaAdd["loadObj" + num]);
               Tab_FileReference2.AddCheck[charaNum][num] = 1;
            }
            this.charaAdd["loadObj" + num].visible = true;
            if(clickTarget == "menu")
            {
               if (this.charaData["CharaLoadReversalDepth" + num]["_depth"] == 2 && addName0 == "Body") {
                  var prevCxForm = MenuClass.tabMenuAdd["CharaLoadReversalDepth"].depth.transform.colorTransform;

                  prevCxForm.redMultiplier = 0.5;
                  prevCxForm.greenMultiplier = 0.5;
                  prevCxForm.blueMultiplier = 0.5;

                  prevCxForm.redOffset = 139 * 0.5;
                  prevCxForm.greenOffset = 75 * 0.5;
                  prevCxForm.blueOffset = 143 * 0.5;

                  MenuClass.tabMenuAdd["CharaLoadReversalDepth"].depth.transform.colorTransform = prevCxForm;
                  MenuClass.tabMenuAdd["CharaLoadReversalDepth"].depth.gotoAndStop(2);
               } else {
                  MenuClass.tabMenuAdd["CharaLoadReversalDepth"].depth.transform.colorTransform = new ColorTransform();
                  MenuClass.tabMenuAdd["CharaLoadReversalDepth"].depth.gotoAndStop(this.charaData["CharaLoadReversalDepth" + num]["_depth"] + 1);
               }
            }
         }
         else if(tabName == "CharaLoadAlpha" && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            try
            {
               if(Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).pass && this.charaData["CharaLoadAlpha" + num]["_meter"] != 100 && this.charaAdd["loadObj" + num].blendMode != "layer")
               {
                  this.charaAdd["loadObj" + num].blendMode = BlendMode.LAYER;
               }
               else if(this.charaAdd["loadObj" + num].blendMode != "normal" && this.charaData["CharaLoadAlpha" + num]["_meter"] == 100)
               {
                  this.charaAdd["loadObj" + num].blendMode = BlendMode.NORMAL;
               }
            }
            catch(e:Error)
            {
               if(charaAdd["loadObj" + num].blendMode != "normal")
               {
                  charaAdd["loadObj" + num].blendMode = BlendMode.NORMAL;
               }
            }
            new MeterPersentRibon(0,1,charaNum,"CharaLoadAlpha",num);
            this.charaAdd["loadObj" + num].alpha = MeterPersentRibon.MeterPersentNum;
         }
         else if(tabName == "CharaLoadReversalDepth" && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            if(this.charaData["CharaLoadPlus"]["_visible"][num])
            {
               if(this.charaData["CharaLoadReversalDepth" + num]["_reversal"] == 1)
               {
                  if(this.charaAdd["loadObj" + num].scaleX > 0)
                  {
                     this.charaAdd["loadObj" + num].scaleX *= -1;
                  }
               }
               else if(this.charaData["CharaLoadReversalDepth" + num]["_reversal"] == 0)
               {
                  if(this.charaAdd["loadObj" + num].scaleX < 0)
                  {
                     this.charaAdd["loadObj" + num].scaleX *= -1;
                  }
               }
               new Tab_FileDepth2(num,charaNum);
            }
         }
         else if(tabName == "CharaLoadScaleB" && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            skewMatrix = new Matrix();
            new MeterPersentRibon(1.5,-1.5,charaNum,"CharaLoadScaleB",num);
            skewMatrix.b = Math.tan(MeterPersentRibon.MeterPersentNum);
            this.charaAdd["loadObj" + num].transform.matrix = skewMatrix;
         }
         else if(tabName == "CharaLoadSwfColor" && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            try
            {
               if(Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0)["version"] == 1)
               {
                  Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item.gotoAndStop(this.charaData["CharaLoadSwfColor" + num]["_swfMenu"] + 1);
               }
               else
               {
                  Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).gotoAndStop(this.charaData["CharaLoadSwfColor" + num]["_swfMenu"] + 1);
               }
            }
            catch(e:Error)
            {
            }
            try
            {
               i = 0;
               while(i <= 23)
               {
                  if(Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0)["color" + i] != undefined)
                  {
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item["color" + i + "_0"],this.charaData["CharaLoadSwfColor" + num]["_swfColor"][i]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item["color" + i + "_1"],this.charaData["CharaLoadSwfColor" + num]["_swfColor"][i]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item["color" + i + "_2"],this.charaData["CharaLoadSwfColor" + num]["_swfColor"][i]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        ColorMakeNew.compute(this.charaData["CharaLoadSwfColor" + num]["_swfColor"][i],3);
                        new ColorChangeClass(Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item["kage" + i + "_0"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item["kage" + i + "_1"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item["kage" + i + "_2"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  i++;
               }
               i = 0;
               while(i < Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0)["senAr"].length)
               {
                  if(this.charaData["CharaLoadSwfColor" + num]["_swfSen"] == 0)
                  {
                     try
                     {
                        Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item[Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0)["senAr"][i]].gotoAndStop(6);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item[Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0)["senAr2"][i]].gotoAndStop(6);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item[Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0)["senAr3"][i]].gotoAndStop(6);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else
                  {
                     try
                     {
                        Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item[Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0)["senAr"][i]].gotoAndStop(this.charaData["CharaLoadSwfColor" + num]["_swfSen"]);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item[Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0)["senAr2"][i]].gotoAndStop(this.charaData["CharaLoadSwfColor" + num]["_swfSen"]);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0).item[Tab_FileReference2.Arloader2[charaNum][num].getChildAt(0)["senAr3"][i]].gotoAndStop(this.charaData["CharaLoadSwfColor" + num]["_swfSen"]);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  i++;
               }
            }
            catch(e:Error)
            {
            }
         }
         var scaleFlag:Boolean = false;
         if((tabName == "CharaLoadScaleB" || tabName == "CharaLoadScale") && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            new MeterPersentRibon(0.5,2,charaNum,"CharaLoadScale",num);
            this.charaAdd["loadObj" + num].scaleX = MeterPersentRibon.MeterPersentNum;
            if(this.charaData["CharaLoadReversalDepth" + num]["_reversal"] == 1)
            {
               if(this.charaAdd["loadObj" + num].scaleX > 0)
               {
                  this.charaAdd["loadObj" + num].scaleX *= -1;
               }
            }
            else if(this.charaData["CharaLoadReversalDepth" + num]["_reversal"] == 0)
            {
               if(this.charaAdd["loadObj" + num].scaleX < 0)
               {
                  this.charaAdd["loadObj" + num].scaleX *= -1;
               }
            }
            if(MenuClass.systemData["CharaLinkLoadScale"]["_flag"] && tabName != "CharaLoadScaleB" && clickTarget != "Load")
            {
               this.charaData["CharaLoadScaleY" + num]["_meter"] = this.charaData["CharaLoadScale" + num]["_meter"];
               scaleFlag = true;
            }
         }
         if(scaleFlag || (tabName == "CharaLoadScaleB" || tabName == "CharaLoadScaleY") && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            new MeterPersentRibon(0.5,2,charaNum,"CharaLoadScaleY",num);
            this.charaAdd["loadObj" + num].scaleY = MeterPersentRibon.MeterPersentNum;
         }
         if((tabName == "CharaLoadScaleB" || tabName == "CharaLoadRotation") && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            new MeterPersentRibon(360,0,charaNum,"CharaLoadRotation",num);
            
            if (addName0 == "HeadMod")
            {
               this.charaAdd["loadObj" + num].rotation = MeterPersentRibon.MeterPersentNum + this.charaAdd.head.rotation;
            }
            else if (addName0 == "LeftLowerArmMod")
            {
               this.charaAdd["loadObj" + num].rotation = MeterPersentRibon.MeterPersentNum + this.charaAdd.handm1_0.hand.arm1.currentFrame;
            }
            else if (addName0 == "RightLowerArmMod")
            {
               this.charaAdd["loadObj" + num].rotation = MeterPersentRibon.MeterPersentNum + this.charaAdd.handm1_1.hand.arm1.currentFrame;
            }
            else if (addName0 == "LeftHandMod")
            {
               this.charaAdd["loadObj" + num].rotation = MeterPersentRibon.MeterPersentNum + ((this.charaAdd.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
            }
            else if (addName0 == "RightHandMod")
            {
               this.charaAdd["loadObj" + num].rotation = MeterPersentRibon.MeterPersentNum + ((this.charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
            }
            else
            {
               this.charaAdd["loadObj" + num].rotation = MeterPersentRibon.MeterPersentNum;
            }
         }
         if((tabName == "CharaLoadScaleB" || tabName == "CharaLoadX" || tabName == "CharaLoadFineX") && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            if(addName0 == "Body" || addName0 == "headAdd")
            {
               new MeterPersentRibon(-500,500,charaNum,"CharaLoadX",num);
               this.charaAdd["loadObj" + num].x = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(-2.5,2.5,charaNum,"CharaLoadFineX",num);
               this.charaAdd["loadObj" + num].x += MeterPersentRibon.MeterPersentNum;
            }
            else if (
               addName0 == "LoadLeftArm" ||
               addName0 == "LoadRightArm" ||
               addName0 == "LoadLeftHand" ||
               addName0 == "LoadRightHand" ||
               addName0 == "LeftThighMod" ||
               addName0 == "RightThighMod" ||
               addName0 == "LeftLegMod" ||
               addName0 == "RightLegMod" ||
               addName0 == "LeftFootMod" ||
               addName0 == "RightFootMod" ||
               addName0 == "LeftUpperArmMod" ||
               addName0 == "RightUpperArmMod"
            )
            {
               new MeterPersentRibon(-515,485,charaNum,"CharaLoadX",num);
               this.charaAdd["loadObj" + num].x = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(-2.5,2.5,charaNum,"CharaLoadFineX",num);
               this.charaAdd["loadObj" + num].x += MeterPersentRibon.MeterPersentNum;
            }
            else if (addName0 == "HeadMod")
            {
               var xy = calculateRotatedOffset(charaNum, num, [-500, 500], [500, -500], this.charaAdd.head.rotation);
               this.charaAdd["loadObj" + num].x = this.charaAdd.head.x + xy[0];
               this.charaAdd["loadObj" + num].y = this.charaAdd.head.y + xy[1];
            }
            else if (addName0 == "LeftLowerArmMod")
            {
               var xy = calculateRotatedOffset(charaNum, num, [-515, 485], [650, -350], this.charaAdd.handm1_0.hand.arm1.currentFrame);
               this.charaAdd["loadObj" + num].x = this.charaAdd.handm1_0.hand.arm0.x + xy[0];
               this.charaAdd["loadObj" + num].y = this.charaAdd.handm1_0.hand.arm0.y + xy[1];
            }
            else if (addName0 == "RightLowerArmMod")
            {
               var xy = calculateRotatedOffset(charaNum, num, [515, -485], [650, -350], this.charaAdd.handm1_1.hand.arm1.currentFrame);
               this.charaAdd["loadObj" + num].x = this.charaAdd.handm1_1.hand.arm0.x + xy[0];
               this.charaAdd["loadObj" + num].y = this.charaAdd.handm1_1.hand.arm0.y + xy[1];
            }
            else if (addName0 == "LeftHandMod")
            {
               var handRot = ((this.charaAdd.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
               var xy = calculateRotatedOffset(charaNum, num, [-500, 500], [500, -500], handRot);
               this.charaAdd["loadObj" + num].x = -15 + xy[0];
               this.charaAdd["loadObj" + num].y = 100 + xy[1];
            }
            else if (addName0 == "RightHandMod")
            {
               var handRot = ((this.charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
               var xy = calculateRotatedOffset(charaNum, num, [500, -500], [500, -500], handRot);
               this.charaAdd["loadObj" + num].x = -15 + xy[0];
               this.charaAdd["loadObj" + num].y = 100 + xy[1];
            }
         }
         if((tabName == "CharaLoadScaleB" || tabName == "CharaLoadY" || tabName == "CharaLoadFineY") && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            if(addName0 == "Body")
            {
               new MeterPersentRibon(100,-900,charaNum,"CharaLoadY",num);
               this.charaAdd["loadObj" + num].y = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(2.5,-2.5,charaNum,"CharaLoadFineY",num);
               this.charaAdd["loadObj" + num].y += MeterPersentRibon.MeterPersentNum;
            }
            else if(addName0 == "headAdd")
            {
               new MeterPersentRibon(500,-500,charaNum,"CharaLoadY",num);
               this.charaAdd["loadObj" + num].y = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(2.5,-2.5,charaNum,"CharaLoadFineY",num);
               this.charaAdd["loadObj" + num].y += MeterPersentRibon.MeterPersentNum;
            }
            else if(addName0 == "LoadLeftArm" || addName0 == "LoadRightArm")
            {
               new MeterPersentRibon(650,-350,charaNum,"CharaLoadY",num);
               this.charaAdd["loadObj" + num].y = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(2.5,-2.5,charaNum,"CharaLoadFineY",num);
               this.charaAdd["loadObj" + num].y += MeterPersentRibon.MeterPersentNum;
            }
            else if(addName0 == "LoadLeftHand" || addName0 == "LoadRightHand")
            {
               new MeterPersentRibon(650,-350,charaNum,"CharaLoadY",num);
               this.charaAdd["loadObj" + num].y = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(2.5,-2.5,charaNum,"CharaLoadFineY",num);
               this.charaAdd["loadObj" + num].y += MeterPersentRibon.MeterPersentNum;
            }
            else if (
               addName0 == "LeftThighMod" ||
               addName0 == "RightThighMod" ||
               addName0 == "LeftLegMod" ||
               addName0 == "RightLegMod" ||
               addName0 == "LeftFootMod" ||
               addName0 == "RightFootMod" ||
               addName0 == "LeftUpperArmMod" ||
               addName0 == "RightUpperArmMod"
            )
            {
               new MeterPersentRibon(650,-350,charaNum,"CharaLoadY",num);
               this.charaAdd["loadObj" + num].y = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(2.5,-2.5,charaNum,"CharaLoadFineY",num);
               this.charaAdd["loadObj" + num].y += MeterPersentRibon.MeterPersentNum;
            }
            else if (addName0 == "HeadMod")
            {
               var xy = calculateRotatedOffset(charaNum, num, [-500, 500], [500, -500], this.charaAdd.head.rotation);
               this.charaAdd["loadObj" + num].x = this.charaAdd.head.x + xy[0];
               this.charaAdd["loadObj" + num].y = this.charaAdd.head.y + xy[1];
            }
            else if (addName0 == "LeftLowerArmMod")
            {
               var xy = calculateRotatedOffset(charaNum, num, [-515, 485], [650, -350], this.charaAdd.handm1_0.hand.arm1.currentFrame);
               this.charaAdd["loadObj" + num].x = this.charaAdd.handm1_0.hand.arm0.x + xy[0];
               this.charaAdd["loadObj" + num].y = this.charaAdd.handm1_0.hand.arm0.y + xy[1];
            }
            else if (addName0 == "RightLowerArmMod")
            {
               var xy = calculateRotatedOffset(charaNum, num, [515, -485], [650, -350], this.charaAdd.handm1_1.hand.arm1.currentFrame);
               this.charaAdd["loadObj" + num].x = this.charaAdd.handm1_1.hand.arm0.x + xy[0];
               this.charaAdd["loadObj" + num].y = this.charaAdd.handm1_1.hand.arm0.y + xy[1];
            }
            else if (addName0 == "LeftHandMod")
            {
               var handRot = ((this.charaAdd.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
               var xy = calculateRotatedOffset(charaNum, num, [-500, 500], [500, -500], handRot);
               this.charaAdd["loadObj" + num].x = -15 + xy[0];
               this.charaAdd["loadObj" + num].y = 100 + xy[1];
            }
            else if (addName0 == "RightHandMod")
            {
               var handRot = ((this.charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
               var xy = calculateRotatedOffset(charaNum, num, [500, -500], [500, -500], handRot);
               this.charaAdd["loadObj" + num].x = -15 + xy[0];
               this.charaAdd["loadObj" + num].y = 100 + xy[1];
            }
         }
      }

      public static function getAttachPointSprite(character: int, slot: int)
      {
         var charaAdd = MenuClass.charaAdd[character];
         var charaData = MenuClass.charaData[character];
         var attachIndex = MenuClass.charaData[character]["CharaLoadAdd" + slot]["_add0"];
         
         switch (attachIndex) {
         case 99: return charaAdd;
         case 98: return charaAdd.ashi0.thigh.actual.thigh;
         case 97: return charaAdd.ashi1.thigh.actual.thigh;
         case 96:
            if (charaAdd.ashi0.leg != null && charaAdd.ashi0.leg.actual.leg != null) {
               return charaAdd.ashi0.leg.actual.leg;
            } else {
               return null;
            }
         case 95: 
            if (charaAdd.ashi1.leg != null && charaAdd.ashi1.leg.actual.leg != null) {
               return charaAdd.ashi1.leg.actual.leg;
            } else {
               return null;
            }
         case 94: return charaAdd.ashi0.foot.actual.foot;
         case 93: return charaAdd.ashi1.foot.actual.foot;
         case 92: return charaAdd.handm0_0.hand;
         case 91: return charaAdd.handm0_1.hand;
         case 90: return charaAdd.handm1_0.hand;
         case 89: return charaAdd.handm1_1.hand;
         case 88: return charaAdd.handm1_0.hand.arm0;
         case 87: return charaAdd.handm1_1.hand.arm0;
         default: return null;
         }
      }

      public static function forEachAttachedSprite(character: int, attachPoints: Array, func, reverse: Boolean = false) : void {
         var curSprite = null;
         var charaAdd = MenuClass.charaAdd[character];
         var charaData = MenuClass.charaData[character];

         for (var i = 0; i <= Main.hukusuuNum; i++) {
            var slot = i;
            if (reverse) {
               slot = Main.hukusuuNum - i;
            }

            try {
               if (!charaAdd["loadObj" + slot]) {
                  continue;
               }

               var addName0:String = Tab_AddCostumOpen2.getAttachPointName(character, slot);
               if (attachPoints.indexOf(addName0) >= 0) {
                  func(charaAdd["loadObj" + slot], slot, addName0, charaAdd, charaData);
               }
            } catch(myError:Error) {
               Main.logError(myError, "in Add_LoadURL2.forEachAttachedSprite(" + character + ", " + attachPoints + ", ...)");
            }
         }
      }

      public static function collectSpriteGroups (character: int) : Object {
         var charaAdd = MenuClass.charaAdd[character];
         var charaData = MenuClass.charaData[character];
         var curSprite = null;
         var spriteGroups = {};
         var sortByDepth = false;

         forEachAttachedSprite(character, ["LeftUpperArmMod", "RightUpperArmMod", "LeftLowerArmMod", "RightLowerArmMod", "LeftHandMod", "RightHandMod", "LeftThighMod", "RightThighMod", "LeftLegMod", "RightLegMod", "LeftFootMod", "RightFootMod"], function (curSprite, slot, curAttach, charaAdd, charaData) {
            var curDepth = charaData["CharaLoadReversalDepth" + slot]["_depth"];
            if (!spriteGroups[curAttach]) spriteGroups[curAttach] = {};
            if (!spriteGroups[curAttach][curDepth]) spriteGroups[curAttach][curDepth] = [];
            spriteGroups[curAttach][curDepth].push([curSprite, slot]);
         });

         return spriteGroups;
      }

      public static function sortModAttachSprites (character: int, attachPoints: Array, sortByDepth: Boolean) : void {
         var spriteGroups = collectSpriteGroups(character);

         for (var i = 0; i < attachPoints.length; i++) {
            var groupKey = attachPoints[i];
            if (!spriteGroups[groupKey] || groupKey.indexOf("Mod") < 0) continue;
            
            for (var depth:Object in spriteGroups[groupKey]) {
               PartLayering.sortSpriteIndices(spriteGroups[groupKey][depth], "character " + character + " attach point " + groupKey + " depth " + depth + " group 0 image attachments");
            }
         }
      }

      public static function updateHandRotation(character: int) : void
      {
         forEachAttachedSprite(character, ["LeftHandMod", "RightHandMod"], function(curSprite, slot, attachType, charaAdd, charaData) {
            if (attachType == "LeftHandMod") {
               var handRot = ((charaAdd.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
               var xy = calculateRotatedOffset(character, slot, [-500, 500], [500, -500], handRot);
               curSprite.x = -15 + xy[0];
               curSprite.y = 100 + xy[1];

               new MeterPersentRibon(360,0,character,"CharaLoadRotation",slot);
               curSprite.rotation = handRot + MeterPersentRibon.MeterPersentNum;
            } else if (attachType == "RightHandMod") {
               var handRot = ((charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
               var xy = calculateRotatedOffset(character, slot, [500, -500], [500, -500], handRot);
               curSprite.x = -15 + xy[0];
               curSprite.y = 100 + xy[1];

               new MeterPersentRibon(360,0,character,"CharaLoadRotation",slot);
               curSprite.rotation = handRot + MeterPersentRibon.MeterPersentNum;
            }
         });

         // sortModAttachSprites(character, ["LeftHandMod", "RightHandMod"], true);
      }

      public static function calculateRotatedOffset(character: int, slot: int, xBounds: Array, yBounds: Array, inRot: int) : Array {
         new MeterPersentRibon(xBounds[0], xBounds[1], character,"CharaLoadX",slot);
         var offsetX = Number(MeterPersentRibon.MeterPersentNum);
         new MeterPersentRibon(-2.5, 2.5, character,"CharaLoadFineX",slot);
         offsetX += Number(MeterPersentRibon.MeterPersentNum);

         new MeterPersentRibon(yBounds[0], yBounds[1], character,"CharaLoadY",slot);
         var offsetY = Number(MeterPersentRibon.MeterPersentNum);
         new MeterPersentRibon(2.5, -2.5, character,"CharaLoadFineY",slot);
         offsetY += Number(MeterPersentRibon.MeterPersentNum);

         var rotation = Number(inRot) * (Math.PI / 180.0);

         var ret = [0, 0];
         ret[0] = (offsetX * Math.cos(rotation)) - (offsetY * Math.sin(rotation));
         ret[1] = (offsetX * Math.sin(rotation)) + (offsetY * Math.cos(rotation));
         return ret;
      }
   
      public static function updateArmRotation(character: int, side: String, armX: int, armY: int, armRot: Number) : void
      {
         forEachAttachedSprite(character, [side + "LowerArmMod", side + "HandMod"], function(curSprite, slot, attachType, charaAdd, charaData) {
            if (attachType == "LeftLowerArmMod") {
               var xy = calculateRotatedOffset(character, slot, [-515, 485], [650, -350], armRot);
               curSprite.x = armX + xy[0];
               curSprite.y = armY + xy[1];

               new MeterPersentRibon(360,0,character,"CharaLoadRotation",slot);
               curSprite.rotation = armRot + MeterPersentRibon.MeterPersentNum;
            } else if (attachType == "RightLowerArmMod") {
               var xy = calculateRotatedOffset(character, slot, [515, -485], [650, -350], armRot);
               curSprite.x = armX + xy[0];
               curSprite.y = armY + xy[1];

               new MeterPersentRibon(360,0,character,"CharaLoadRotation",slot);
               curSprite.rotation = armRot + MeterPersentRibon.MeterPersentNum;
            } else if (attachType == "LeftHandMod") {
               var handRot = ((charaAdd.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
               var xy = calculateRotatedOffset(character, slot, [-500, 500], [500, -500], handRot);
               curSprite.x = -15 + xy[0];
               curSprite.y = 100 + xy[1];

               new MeterPersentRibon(360,0,character,"CharaLoadRotation",slot);
               curSprite.rotation = handRot + MeterPersentRibon.MeterPersentNum;
            } else if (attachType == "RightHandMod") {
               var handRot = ((charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
               var xy = calculateRotatedOffset(character, slot, [500, -500], [500, -500], handRot);
               curSprite.x = -15 + xy[0];
               curSprite.y = 100 + xy[1];

               new MeterPersentRibon(360,0,character,"CharaLoadRotation",slot);
               curSprite.rotation = handRot + MeterPersentRibon.MeterPersentNum;
            }
         });

         // sortModAttachSprites(character, [side + "UpperArmMod", side + "LowerArmMod", side + "HandMod"], true);
      }

      public static function updateLegs(character: int) : void
      {
         forEachAttachedSprite(character, ["LeftThighMod", "RightThighMod", "LeftLegMod", "RightLegMod", "LeftFootMod", "RightFootMod"], function(curSprite, slot, attachType, charaAdd, charaData) {
            var curDepth = charaData["CharaLoadReversalDepth" + slot]["_depth"];
            var attachPoint = getAttachPointSprite(character, slot);

            if (attachPoint != null) {
               if (curDepth == 0) {
                  attachPoint.addChildAt(curSprite, 0);
               } else if (curDepth == 1) {
                  attachPoint.addChild(curSprite);
               }
            }
         });

         // sortModAttachSprites(character, ["LeftThighMod", "RightThighMod", "LeftLegMod", "RightLegMod", "LeftFootMod", "RightFootMod"], true);
      }

      public static function updateHead(character: int) : void
      {
         forEachAttachedSprite(character, ["HeadMod"], function(curSprite, slot, attachType, charaAdd, charaData) {
            var xy = calculateRotatedOffset(character, slot, [-500, 500], [500, -500], charaAdd.head.rotation);
            curSprite.x = charaAdd.head.x + xy[0];
            curSprite.y = charaAdd.head.y + xy[1];
            
            new MeterPersentRibon(360,0,character,"CharaLoadRotation",slot);
            curSprite.rotation = charaAdd.head.rotation + MeterPersentRibon.MeterPersentNum;
         });

         sortModAttachSprites(character, ["HeadMod"], true);
      }
   }
}
