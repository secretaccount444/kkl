package menu
{
   import flash.display.BlendMode;
   import flash.geom.Matrix;
   import parameter.ColorMakeNew;
   import system.MeterPersent;
   
   public class Add_LoadURL
   {
       
      
      private var addNameFirst1:String;
      
      private var addNameLast1:String;
      
      private var clickTarget:String;
      
      public function Add_LoadURL(param1:String, param2:int, param3:String)
      {
         var menuNum:int = 0;
         var i:int = 0;
         var skewMatrix:Matrix = null;
         var tabName:String = param1;
         var charaNum:int = param2;
         var ClickTarget:String = param3;
         super();
         this.clickTarget = ClickTarget;
         if(this.clickTarget == "Load")
         {
            menuNum = charaNum;
         }
         else if(this.clickTarget != "move")
         {
            menuNum = MenuClass.systemData["LoadPlus"]["_menu"];
         }
         var addNum0:int = MenuClass.systemData["LoadAdd" + menuNum]["_add0"];
         var addName0:String = Tab_AddCostumOpen.openAr[addNum0][0];
         this.addNameFirst1 = addName0.substring(0,13);
         this.addNameLast1 = addName0.substring(13,14);
         if(tabName == "LoadAdd" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            Main.mainWindow["loadObj" + menuNum].visible = false;
            if(this.addNameFirst1 == "FreeHukidashi")
            {
               Chara_Class.chara_m["Hukidashi" + this.addNameLast1].addChild(Main.mainWindow["loadObj" + menuNum]);
            }
            else if(addName0 == "Background")
            {
               Main.mainWindow.addChild(Main.mainWindow["loadObj" + menuNum]);
            }
            Main.mainWindow["loadObj" + menuNum].mouseChildren = false;
            Main.mainWindow["loadObj" + menuNum].mouseEnabled = false;
            Main.mainWindow["loadObj" + menuNum].visible = true;
            if(Tab_AddCostumOpen.openAr[addNum0][2] < MenuClass.systemData["LoadReversalDepth" + menuNum]["_depth"])
            {
               MenuClass.systemData["LoadReversalDepth" + menuNum]["_depth"] = Tab_AddCostumOpen.openAr[addNum0][2];
            }
            MenuClass.tabData["Loadmenu"][9][2]["_depth"] = Tab_AddCostumOpen.openAr[addNum0][2];
            if(this.clickTarget == "menu")
            {
               MenuClass.tabMenuAdd["LoadReversalDepth"].depth.gotoAndStop(MenuClass.systemData["LoadReversalDepth" + menuNum]["_depth"] + 1);
            }
         }
         else if(tabName == "LoadAlpha" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            try
            {
               if(Tab_FileReference.Arloader2[menuNum].getChildAt(0).pass && MenuClass.systemData["LoadAlpha" + menuNum]["_meter"] != 100 && Main.mainWindow["loadObj" + menuNum].blendMode != "layer")
               {
                  Main.mainWindow["loadObj" + menuNum].blendMode = BlendMode.LAYER;
               }
               else if(Main.mainWindow["loadObj" + menuNum].blendMode != "normal" && MenuClass.systemData["LoadAlpha" + menuNum]["_meter"] == 100)
               {
                  Main.mainWindow["loadObj" + menuNum].blendMode = BlendMode.NORMAL;
               }
            }
            catch(e:Error)
            {
               if(Main.mainWindow["loadObj" + menuNum].blendMode != "normal")
               {
                  Main.mainWindow["loadObj" + menuNum].blendMode = BlendMode.NORMAL;
               }
            }
            new MeterPersent(0,1,"LoadAlpha",menuNum);
            Main.mainWindow["loadObj" + menuNum].alpha = MeterPersent.MeterPersentNum;
         }
         else if(tabName == "LoadReversalDepth" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            if(MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
            {
               if(MenuClass.systemData["LoadReversalDepth" + menuNum]["_reversal"] == 1)
               {
                  if(Main.mainWindow["loadObj" + menuNum].scaleX > 0)
                  {
                     Main.mainWindow["loadObj" + menuNum].scaleX *= -1;
                  }
               }
               else if(MenuClass.systemData["LoadReversalDepth" + menuNum]["_reversal"] == 0)
               {
                  if(Main.mainWindow["loadObj" + menuNum].scaleX < 0)
                  {
                     Main.mainWindow["loadObj" + menuNum].scaleX *= -1;
                  }
               }
               new Tab_FileDepth(menuNum);
            }
         }
         else if(tabName == "LoadScale" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            this.LoadScaleFc(menuNum);
         }
         else if(tabName == "LoadScaleY" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            this.LoadScaleYFc(menuNum);
         }
         else if(tabName == "LoadScaleB" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            skewMatrix = new Matrix();
            new MeterPersent(1.5,-1.5,"LoadScaleB",menuNum);
            skewMatrix.b = Math.tan(MeterPersent.MeterPersentNum);
            Main.mainWindow["loadObj" + menuNum].transform.matrix = skewMatrix;
            this.LoadScaleFc(menuNum);
            this.LoadScaleYFc(menuNum);
            this.LoadRotationFc(menuNum);
            this.LoadXFc(menuNum);
            this.LoadYFc(menuNum);
         }
         else if(tabName == "LoadSize" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            if(MenuClass.systemData["LoadSize" + menuNum]["_check"])
            {
               Main.mainWindow["loadObj" + menuNum].scaleX = Main.mainWindow["loadObj" + menuNum].scaleY = 1 / Main.mainWindow.scaleX;
               MenuClass.systemData["LoadScale" + menuNum]["_meter"] = Math.floor(100 * ((Main.mainWindow["loadObj" + menuNum].scaleX - 0.1) / 0.9));
               MenuClass.systemData["LoadScaleY" + menuNum]["_meter"] = MenuClass.systemData["LoadScale" + menuNum]["_meter"];
               if(MenuClass.systemData["LoadReversalDepth" + menuNum]["_reversal"] == 1)
               {
                  if(Main.mainWindow["loadObj" + menuNum].scaleX > 0)
                  {
                     Main.mainWindow["loadObj" + menuNum].scaleX *= -1;
                  }
               }
               else if(MenuClass.systemData["LoadReversalDepth" + menuNum]["_reversal"] == 0)
               {
                  if(Main.mainWindow["loadObj" + menuNum].scaleX < 0)
                  {
                     Main.mainWindow["loadObj" + menuNum].scaleX *= -1;
                  }
               }
            }
         }
         else if(tabName == "LoadRotation" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            this.LoadRotationFc(menuNum);
         }
         else if(tabName == "LoadX" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            this.LoadXFc(menuNum);
         }
         else if(tabName == "LoadY" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            this.LoadYFc(menuNum);
         }
         else if(tabName == "LoadSwfColor" && MenuClass.systemData["LoadPlus"]["_visible"][menuNum])
         {
            try
            {
               if(Tab_FileReference.Arloader2[menuNum].getChildAt(0)["version"] == 1)
               {
                  Tab_FileReference.Arloader2[menuNum].getChildAt(0).item.gotoAndStop(MenuClass.systemData["LoadSwfColor" + menuNum]["_swfMenu"] + 1);
               }
               else
               {
                  Tab_FileReference.Arloader2[menuNum].getChildAt(0).gotoAndStop(MenuClass.systemData["LoadSwfColor" + menuNum]["_swfMenu"] + 1);
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
                  if(Tab_FileReference.Arloader2[menuNum].getChildAt(0)["color" + i] != undefined)
                  {
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[menuNum].getChildAt(0).item["color" + i + "_0"],MenuClass.systemData["LoadSwfColor" + menuNum]["_swfColor"][i]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[menuNum].getChildAt(0).item["color" + i + "_1"],MenuClass.systemData["LoadSwfColor" + menuNum]["_swfColor"][i]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[menuNum].getChildAt(0).item["color" + i + "_2"],MenuClass.systemData["LoadSwfColor" + menuNum]["_swfColor"][i]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorMakeNew(MenuClass.systemData["LoadSwfColor" + menuNum]["_swfColor"][i],3);
                        new ColorChangeClass(Tab_FileReference.Arloader2[menuNum].getChildAt(0).item["kage" + i + "_0"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[menuNum].getChildAt(0).item["kage" + i + "_1"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[menuNum].getChildAt(0).item["kage" + i + "_2"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  i++;
               }
               i = 0;
               while(i < Tab_FileReference.Arloader2[menuNum].getChildAt(0)["senAr"].length)
               {
                  if(MenuClass.systemData["LoadSwfColor" + menuNum]["_swfSen"] == 0)
                  {
                     try
                     {
                        Tab_FileReference.Arloader2[menuNum].getChildAt(0).item[Tab_FileReference.Arloader2[menuNum].getChildAt(0)["senAr"][i]].gotoAndStop(6);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference.Arloader2[menuNum].getChildAt(0).item[Tab_FileReference.Arloader2[menuNum].getChildAt(0)["senAr2"][i]].gotoAndStop(6);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference.Arloader2[menuNum].getChildAt(0).item[Tab_FileReference.Arloader2[menuNum].getChildAt(0)["senAr3"][i]].gotoAndStop(6);
                     }
                     catch(e:Error)
                     {
                     }
                  }
                  else
                  {
                     try
                     {
                        Tab_FileReference.Arloader2[menuNum].getChildAt(0).item[Tab_FileReference.Arloader2[menuNum].getChildAt(0)["senAr"][i]].gotoAndStop(MenuClass.systemData["LoadSwfColor" + menuNum]["_swfSen"]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference.Arloader2[menuNum].getChildAt(0).item[Tab_FileReference.Arloader2[menuNum].getChildAt(0)["senAr2"][i]].gotoAndStop(MenuClass.systemData["LoadSwfColor" + menuNum]["_swfSen"]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference.Arloader2[menuNum].getChildAt(0).item[Tab_FileReference.Arloader2[menuNum].getChildAt(0)["senAr3"][i]].gotoAndStop(MenuClass.systemData["LoadSwfColor" + menuNum]["_swfSen"]);
                     }
                     catch(e:Error)
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
      }
      
      private function LoadScaleFc(param1:int) : void
      {
         if(this.addNameFirst1 == "FreeHukidashi")
         {
            new MeterPersent(0.1,3,"LoadScale",param1);
         }
         else
         {
            new MeterPersent(0.1,1,"LoadScale",param1);
         }
         Main.mainWindow["loadObj" + param1].scaleX = MeterPersent.MeterPersentNum;
         if(MenuClass.systemData["LoadReversalDepth" + param1]["_reversal"] == 1)
         {
            if(Main.mainWindow["loadObj" + param1].scaleX > 0)
            {
               Main.mainWindow["loadObj" + param1].scaleX *= -1;
            }
         }
         else if(MenuClass.systemData["LoadReversalDepth" + param1]["_reversal"] == 0)
         {
            if(Main.mainWindow["loadObj" + param1].scaleX < 0)
            {
               Main.mainWindow["loadObj" + param1].scaleX *= -1;
            }
         }
         if(MenuClass.systemData["LinkLoadScale"]["_flag"] && this.clickTarget != "Load")
         {
            MenuClass.systemData["LoadScaleY" + param1]["_meter"] = MenuClass.systemData["LoadScale" + param1]["_meter"];
            this.LoadScaleYFc(param1);
         }
      }
      
      private function LoadScaleYFc(param1:int) : void
      {
         if(this.addNameFirst1 == "FreeHukidashi")
         {
            new MeterPersent(0.1,3,"LoadScaleY",param1);
         }
         else
         {
            new MeterPersent(0.1,1,"LoadScaleY",param1);
         }
         Main.mainWindow["loadObj" + param1].scaleY = MeterPersent.MeterPersentNum;
      }
      
      private function LoadRotationFc(param1:int) : void
      {
         new MeterPersent(360,0,"LoadRotation",param1);
         Main.mainWindow["loadObj" + param1].rotation = MeterPersent.MeterPersentNum;
      }
      
      private function LoadXFc(param1:int) : void
      {
         if(this.addNameFirst1 == "FreeHukidashi")
         {
            new MeterPersent(-606,1900,"LoadX",param1);
         }
         else
         {
            new MeterPersent(-100,900,"LoadX",param1);
         }
         Main.mainWindow["loadObj" + param1].x = MeterPersent.MeterPersentNum;
      }
      
      private function LoadYFc(param1:int) : void
      {
         if(this.addNameFirst1 == "FreeHukidashi")
         {
            new MeterPersent(700,-1300,"LoadY",param1);
         }
         else
         {
            new MeterPersent(800,-200,"LoadY",param1);
         }
         Main.mainWindow["loadObj" + param1].y = MeterPersent.MeterPersentNum;
      }
   }
}
