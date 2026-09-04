package menu
{
   import flash.display.BlendMode;
   import flash.geom.Matrix;
   import parameter.ColorMakeNew;
   import system.MeterPersentRibon;
   
   public class Add_LoadURL2
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
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
         var addNum0:int = this.charaData["CharaLoadAdd" + num]["_add0"];
         var addName0:String = Tab_AddCostumOpen2.openAr[addNum0][0];
         if(tabName == "CharaLoadAdd" && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
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
               else if(this.charaData["CharaLoadReversalDepth" + num]["_depth"] == 1)
               {
                  this.charaAdd.CharaloadAdd1.addChild(this.charaAdd["loadObj" + num]);
               }
            }
            else if(addName0 == "LoadLeftArm")
            {
               this.charaAdd.handm1_0.hand.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "LoadRightArm")
            {
               this.charaAdd.handm1_1.hand.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "LoadLeftHand")
            {
               this.charaAdd.handm1_0.hand.arm0.addChild(this.charaAdd["loadObj" + num]);
            }
            else if(addName0 == "LoadRightHand")
            {
               this.charaAdd.handm1_1.hand.arm0.addChild(this.charaAdd["loadObj" + num]);
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
            if(Tab_AddCostumOpen2.openAr[addNum0][2] < this.charaData["CharaLoadReversalDepth" + num]["_depth"])
            {
               this.charaData["CharaLoadReversalDepth" + num]["_depth"] = Tab_AddCostumOpen2.openAr[addNum0][2];
            }
            MenuClass.tabData["CharaLoad"][8][2]["_depth"] = Tab_AddCostumOpen2.openAr[addNum0][2];
            if(clickTarget == "menu")
            {
               MenuClass.tabMenuAdd["CharaLoadReversalDepth"].depth.gotoAndStop(this.charaData["CharaLoadReversalDepth" + num]["_depth"] + 1);
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
                        new ColorMakeNew(this.charaData["CharaLoadSwfColor" + num]["_swfColor"][i],3);
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
            this.charaAdd["loadObj" + num].rotation = MeterPersentRibon.MeterPersentNum;
         }
         if((tabName == "CharaLoadScaleB" || tabName == "CharaLoadX") && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            if(addName0 == "Body" || addName0 == "headAdd")
            {
               new MeterPersentRibon(-500,500,charaNum,"CharaLoadX",num);
            }
            else if(addName0 == "LoadLeftArm" || addName0 == "LoadRightArm" || addName0 == "LoadLeftHand" || addName0 == "LoadRightHand")
            {
               new MeterPersentRibon(-515,485,charaNum,"CharaLoadX",num);
            }
            this.charaAdd["loadObj" + num].x = MeterPersentRibon.MeterPersentNum;
         }
         if((tabName == "CharaLoadScaleB" || tabName == "CharaLoadY") && this.charaData["CharaLoadPlus"]["_visible"][num])
         {
            if(addName0 == "Body")
            {
               new MeterPersentRibon(100,-900,charaNum,"CharaLoadY",num);
            }
            else if(addName0 == "headAdd")
            {
               new MeterPersentRibon(500,-500,charaNum,"CharaLoadY",num);
            }
            else if(addName0 == "LoadLeftArm" || addName0 == "LoadRightArm")
            {
               new MeterPersentRibon(650,-350,charaNum,"CharaLoadY",num);
            }
            else if(addName0 == "LoadLeftHand" || addName0 == "LoadRightHand")
            {
               new MeterPersentRibon(650,-350,charaNum,"CharaLoadY",num);
            }
            this.charaAdd["loadObj" + num].y = MeterPersentRibon.MeterPersentNum;
         }
      }
   }
}
