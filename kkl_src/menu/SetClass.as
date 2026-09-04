package menu
{
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.utils.ByteArray;
   import parameter.Chara_HairData;
   import parameter.Chara_IECharadata;
   import parameter.Chara_IESeihukudata;
   import parameter.Chara_IEdata;
   import parameter.Dress_data;
   import parameter.Emotion_data;
   import parameter.Vibrator_data;
   import system.MeterPersent;
   import system.QualityClass;
   
   public class SetClass
   {
       
      
      private var charaNum:int;
      
      private var tabName:String;
      
      private var charaAdd:Object;
      
      private var charaAddDepth:Object;
      
      private var charaData:Object;
      
      private var DressCharaData:Object;
      
      private var clickTarget:String;
      
      private var menuNum:int;
      
      private var meterNum:int;
      
      private var ExNum:int;
      
      private var obj:Object;
      
      private var thinghNum:Array;
      
      private var loadCheckNum:Number;
      
      private var allRandomCheck:int;
      
      private var LowerlashNum:int;
      
      private var eNum1:int;
      
      private var eNum2:int;
      
      private var eNum3:int;
      
      private var bNum1:int;
      
      private var bNum2:int;
      
      private var bNum3:int;
      
      private var mNum1:int;
      
      private var mNum2:int;
      
      private var mNum3:int;
      
      private var hukuName:String;
      
      public function SetClass(param1:int, param2:String, param3:String)
      {
         var i:int = 0;
         var j:int = 0;
         var h:int = 0;
         var n:int = 0;
         var testNum:int = 0;
         var tabStr:Array = null;
         var visibleCheck:int = 0;
         var BangsChild:int = 0;
         var BangsSwapChild:int = 0;
         var SLeftXNum:Number = NaN;
         var SRightXNum:Number = NaN;
         var EyebrowDepth:int = 0;
         var EyebrowSwapDepth:int = 0;
         var menuNumLeft:int = 0;
         var menuNumRight:int = 0;
         var defoNum:int = 0;
         var HeartPlusCheck:Boolean = false;
         var HeartMinusCheck:Boolean = false;
         var EyeSwap0Depth:int = 0;
         var EyeDepth:int = 0;
         var BodyHeightNum:Number = NaN;
         var EyeYNum:Number = NaN;
         var eyeX:Number = NaN;
         var eyeY:Number = NaN;
         var eyeRotation:Number = NaN;
         var mjiNum:Number = NaN;
         var thinghNum:Array = null;
         var skirtNum:Number = NaN;
         var douOption0:MovieClip = null;
         var douOption1:MovieClip = null;
         var breastOption0:MovieClip = null;
         var breastOption1:MovieClip = null;
         var MimiDepth:int = 0;
         var MimiSwapDepth:int = 0;
         var HornDepth:int = 0;
         var HornSwap0Depth:int = 0;
         var HornSwap1Depth:int = 0;
         var necklaceChild:int = 0;
         var necklaceSwap0Child:int = 0;
         var necklaceSwap1Child:int = 0;
         var BgYFlag:Boolean = false;
         var MobFlag:Boolean = false;
         var ZoomFlag:Boolean = false;
         var MosaicFlag:Boolean = false;
         var CharaNum:int = param1;
         var TabName:String = param2;
         var ClickTarget:String = param3;
         super();
         this.tabName = TabName;
         this.clickTarget = ClickTarget;
         this.charaNum = CharaNum;
         this.charaData = MenuClass.charaData[this.charaNum];
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.DressCharaData = Dress_data.DressCharaData[this.charaNum];
         this.charaAddDepth = MenuClass.charaAddDepth[this.charaNum];

         // trace("SetClass: " + param1 + ", " + param2 + ", " + param3);

         if (
            !RequestServer.FASTLOAD_IN_PROGRESS && 
            RequestServer.CACHE_VALID[this.charaNum] && (
               ((TabName != "Zoom") || (ClickTarget != "tab")) &&
               ((TabName != "HairExPlus" && TabName != "BeltPlus" && TabName != "RibonPlus" && TabName != "MarkPlus" && TabName != "CharaLoadPlus") || (ClickTarget != "menu")) &&
               ((TabName != "BreastLeft" && TabName != "BreastRight" && TabName != "NippleLeft" && TabName != "NippleRight" && TabName != "s") || (ClickTarget != "huku")) &&
               ((TabName != "HeartPlus") || (ClickTarget != "enter"))
         )) {
            // trace("SetClass: " + param1 + ", " + param2 + ", " + param3);
            Main.server.invalidateFastloadCache(this.charaNum);
         }

         if(this.tabName == "SelectCharacter_visible")
         {
            try
            {
               if(MenuClass._nowHeaderName == "SystemOption")
               {
                  this.charaData["SelectCharacter"]["_visible"][0] = this.charaAdd.visible;
               }
               if(this.charaData["Shadow"]["_visible"][0] && this.charaData["SelectCharacter"]["_visible"][0])
               {
                  MenuClass.shadowAdd[this.charaNum].visible = true;
               }
               else
               {
                  MenuClass.shadowAdd[this.charaNum].visible = false;
               }
               this.charaAdd.visible = this.charaData["SelectCharacter"]["_visible"][0];
               if(this.charaData["Hukidashi"]["_visible"][0] && this.charaData["SelectCharacter"]["_visible"][0])
               {
                  this.charaAdd.Hukidashi.visible = true;
                  this.charaAddDepth.charaMae.Hukidashi.visible = true;
               }
               else
               {
                  this.charaAdd.Hukidashi.visible = false;
                  this.charaAddDepth.charaMae.Hukidashi.visible = false;
               }
               this.charaAdd.Emotion.visible = this.charaData["SelectCharacter"]["_visible"][0];
               if(MenuClass._nowHeaderName != "AllCharacterSet" && MenuClass._nowHeaderName != "EasyAllCharacterSet" && MenuClass._nowHeaderName != "Story" && !MenuClass.StoryMode && Main.allCharaLoadFlag)
               {
                  if(this.charaData["SelectCharacter"]["_visible"][0])
                  {
                     this.charaAddDepth.charaSelect.gotoAndStop(2);
                  }
                  else
                  {
                     this.charaAddDepth.charaSelect.gotoAndStop(1);
                  }
               }
               if(this.charaData["SelectCharacter"]["_visible"][0])
               {
                  new Huku_Mosaic(this.charaNum);
               }
               else
               {
                  this.charaAdd.mosaic.visible = false;
               }
               new SetClass(this.charaNum,"Xmove",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "DeformerReal")
         {
            try
            {
               Main.accessObj.DeformerRealData = 0;
               Tab_AllHukuSet.setFc2("menu");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HairType")
         {
            try
            {
               Main.accessObj.HairTypeData = MenuClass.systemData["HairType"]["_menu"];
               Tab_AllHukuSet.setFc2("menu");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "BodyType")
         {
            try
            {
               Main.accessObj.BodyTypeData = MenuClass.systemData["BodyType"]["_menu"];
               Tab_AllHukuSet.setFc2("menu");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "PoseSet")
         {
            try
            {
               if(MenuClass._nowTargetMode == "Select")
               {
                  if(this.clickTarget == "tab")
                  {
                     new Chara_PoseSet_load(MenuClass._nowCharaNum);
                  }
                  else
                  {
                     Tab_IEInOut.execute("textIN",Chara_IEdata.PoseData[MenuClass.systemData["PoseSet"]["_menu"]],MenuClass._nowCharaNum);
                  }
               }
               else if(MenuClass._nowTargetMode == "SelectPlus")
               {
                  if(MenuClass.charaData[this.charaNum]["SelectCharacter"]["_visible"][0])
                  {
                     if(MenuClass._nowSelectChara[this.charaNum])
                     {
                        if(this.clickTarget == "tab")
                        {
                           new Chara_PoseSet_load(this.charaNum);
                        }
                        else
                        {
                           Tab_IEInOut.execute("textIN",Chara_IEdata.PoseData[MenuClass.systemData["PoseSet"]["_menu"]],this.charaNum);
                        }
                     }
                  }
               }
               else if(MenuClass._nowTargetMode == "All")
               {
                  if(MenuClass.charaData[this.charaNum]["SelectCharacter"]["_visible"][0])
                  {
                     if(this.clickTarget == "tab")
                     {
                        new Chara_PoseSet_load(this.charaNum);
                     }
                     else
                     {
                        Tab_IEInOut.execute("textIN",Chara_IEdata.PoseData[MenuClass.systemData["PoseSet"]["_menu"]],this.charaNum);
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "DressSet")
         {
            try
            {
               if(MenuClass._nowTargetMode == "Select")
               {
                  Tab_IEInOut.execute("textIN",Chara_IECharadata.Dressdata[MenuClass.systemData["DressSet"]["_menu"]][0],MenuClass._nowCharaNum);
               }
               else if(MenuClass._nowTargetMode == "SelectPlus")
               {
                  if(MenuClass.charaData[this.charaNum]["SelectCharacter"]["_visible"][0])
                  {
                     if(MenuClass._nowSelectChara[this.charaNum])
                     {
                        Tab_IEInOut.execute("textIN",Chara_IECharadata.Dressdata[MenuClass.systemData["DressSet"]["_menu"]][0],this.charaNum);
                     }
                  }
               }
               else if(MenuClass._nowTargetMode == "All")
               {
                  if(MenuClass.charaData[this.charaNum]["SelectCharacter"]["_visible"][0])
                  {
                     Tab_IEInOut.execute("textIN",Chara_IECharadata.Dressdata[MenuClass.systemData["DressSet"]["_menu"]][0],this.charaNum);
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "SeihukuSet0")
         {
            try
            {
               MenuClass.menuData["SeihukuSet1"] = Chara_IESeihukudata.Seihukudata[MenuClass.systemData["SeihukuSet0"]["_menu"]].length - 1;
               new Tab_TextInClass(1,"SeihukuSet1",MenuClass.menuData["SeihukuSet1"]);
               new SetClass(this.charaNum,"SeihukuSet2","test");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "SeihukuSet1")
         {
            try
            {
               if(Main.hukuset == 0)
               {
                  MenuClass.menuData["SeihukuSet2"] = Chara_IESeihukudata.Seihukudata[MenuClass.systemData["SeihukuSet0"]["_menu"]][MenuClass.systemData["SeihukuSet1"]["_menu"]].length - 1;
                  new Tab_TextInClass(1,"SeihukuSet2",MenuClass.menuData["SeihukuSet2"]);
                  new SetClass(this.charaNum,"SeihukuSet2","test");
               }
               else
               {
                  MenuClass.menuData["SeihukuSet1"] = Chara_IESeihukudata.MizugiData.length - 1;
                  new Tab_TextInClass(1,"SeihukuSet1",MenuClass.menuData["SeihukuSet1"]);
                  Tab_IEInOut.execute("textIN",Chara_IESeihukudata.MizugiData[MenuClass.systemData["SeihukuSet1"]["_menu"]][MenuClass.systemData["SeihukuSet2"]["_menu"]][0],MenuClass._nowCharaNum);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "SeihukuSet2")
         {
            try
            {
               if(Main.hukuset == 0)
               {
                  testNum = MenuClass.systemData["SeihukuSet1"]["_menu"];
                  if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test") && this.clickTarget != "test")
                  {
                     trace("///////////////////////////////////////////");
                     MenuClass.systemData["SeihukuSet2"]["_menu"] = 0;
                  }
                  if(MenuClass._nowTargetMode == "Select")
                  {
                     Tab_IEInOut.execute("textIN",Chara_IESeihukudata.Seihukudata[MenuClass.systemData["SeihukuSet0"]["_menu"]][testNum][MenuClass.systemData["SeihukuSet2"]["_menu"]][0],MenuClass._nowCharaNum);
                  }
                  else if(MenuClass._nowTargetMode == "SelectPlus")
                  {
                     if(MenuClass.charaData[this.charaNum]["SelectCharacter"]["_visible"][0])
                     {
                        if(MenuClass._nowSelectChara[this.charaNum])
                        {
                           Tab_IEInOut.execute("textIN",Chara_IESeihukudata.Seihukudata[MenuClass.systemData["SeihukuSet0"]["_menu"]][testNum][MenuClass.systemData["SeihukuSet2"]["_menu"]][0],this.charaNum);
                        }
                     }
                  }
                  else if(MenuClass._nowTargetMode == "All")
                  {
                     if(MenuClass.charaData[this.charaNum]["SelectCharacter"]["_visible"][0])
                     {
                        Tab_IEInOut.execute("textIN",Chara_IESeihukudata.Seihukudata[MenuClass.systemData["SeihukuSet0"]["_menu"]][testNum][MenuClass.systemData["SeihukuSet2"]["_menu"]][0],this.charaNum);
                     }
                  }
                  if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test"))
                  {
                     Tab_IEInOut.execute("OUT","0",MenuClass._nowCharaNum);
                     trace("[\"" + Tab_IEInOut.dataStr + "\"," + Chara_IESeihukudata.Seihukudata[MenuClass.systemData["SeihukuSet0"]["_menu"]][testNum][MenuClass.systemData["SeihukuSet2"]["_menu"]][1] + "],");
                     if(Chara_IESeihukudata.Seihukudata[testNum].length - 1 > MenuClass.systemData["SeihukuSet2"]["_menu"])
                     {
                        MenuClass.systemData["SeihukuSet2"]["_menu"] += 1;
                        new SetClass(this.charaNum,"SeihukuSet2","test");
                     }
                  }
               }
               else
               {
                  MenuClass.menuData["SeihukuSet2"] = Chara_IESeihukudata.MizugiData[MenuClass.systemData["SeihukuSet1"]["_menu"]].length - 1;
                  new Tab_TextInClass(1,"SeihukuSet2",MenuClass.menuData["SeihukuSet2"]);
                  Tab_IEInOut.execute("textIN",Chara_IESeihukudata.MizugiData[MenuClass.systemData["SeihukuSet1"]["_menu"]][MenuClass.systemData["SeihukuSet2"]["_menu"]][0],MenuClass._nowCharaNum);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "UnderwearSet")
         {
            try
            {
               if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test") && this.clickTarget != "test")
               {
                  trace("///////////////////////////////////////////");
                  MenuClass.systemData["UnderwearSet"]["_menu"] = 0;
               }
               if(!MenuClass.systemData["LinkDressSet"]["_flag"])
               {
                  if(MenuClass._nowTargetMode == "Select")
                  {
                     Tab_IEInOut.execute("textIN",Chara_IEdata.UnderwearData[MenuClass.systemData["UnderwearSet"]["_menu"]][1],MenuClass._nowCharaNum);
                  }
                  else if(MenuClass._nowTargetMode == "SelectPlus")
                  {
                     if(MenuClass.charaData[this.charaNum]["SelectCharacter"]["_visible"][0])
                     {
                        if(MenuClass._nowSelectChara[this.charaNum])
                        {
                           Tab_IEInOut.execute("textIN",Chara_IEdata.UnderwearData[MenuClass.systemData["UnderwearSet"]["_menu"]][1],this.charaNum);
                        }
                     }
                  }
                  else if(MenuClass._nowTargetMode == "All")
                  {
                     if(MenuClass.charaData[this.charaNum]["SelectCharacter"]["_visible"][0])
                     {
                        Tab_IEInOut.execute("textIN",Chara_IEdata.UnderwearData[MenuClass.systemData["UnderwearSet"]["_menu"]][1],this.charaNum);
                     }
                  }
               }
               if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test"))
               {
                  Tab_IEInOut.execute("OUT","0",MenuClass._nowCharaNum);
                  if(Chara_IEdata.UnderwearData.length - 1 > MenuClass.systemData["UnderwearSet"]["_menu"])
                  {
                     MenuClass.systemData["UnderwearSet"]["_menu"] += 1;
                     new SetClass(this.charaNum,"UnderwearSet","test");
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "AllHairSet")
         {
            try
            {
               if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test") && this.clickTarget != "test")
               {
                  trace("///////////////////////////////////////////");
                  this.charaData["AllHairSet"]["_menu"] = 0;
               }
               new Chara_AllHair(this.charaNum,this.clickTarget);
               if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test"))
               {
                  Tab_IEInOut.execute("OUT","0",MenuClass._nowCharaNum);
                  trace("\"" + Tab_IEInOut.dataStr + "\",");
                  if(Chara_IEdata.AllHairSetData.length - 1 > this.charaData["AllHairSet"]["_menu"])
                  {
                     this.charaData["AllHairSet"]["_menu"] += 1;
                     new SetClass(this.charaNum,"AllHairSet","test");
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "AllFaceSet")
         {
            try
            {
               if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test") && this.clickTarget != "test")
               {
                  trace("///////////////////////////////////////////");
                  this.charaData["AllFaceSet"]["_menu"] = 0;
               }
               new Chara_AllFace(this.charaNum,this.clickTarget);
               if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test"))
               {
                  Tab_IEInOut.execute("OUT","0",MenuClass._nowCharaNum);
                  trace("\"" + Tab_IEInOut.dataStr + "\",");
                  if(Chara_IEdata.AllFaceSetData.length - 1 > this.charaData["AllFaceSet"]["_menu"])
                  {
                     this.charaData["AllFaceSet"]["_menu"] += 1;
                     new SetClass(this.charaNum,"AllFaceSet","test");
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "AllBodyHeightSet")
         {
            try
            {
               new Chara_AllBodyHeight(this.charaNum,this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "AllBodySet")
         {
            try
            {
               if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test") && this.clickTarget != "test")
               {
                  trace("///////////////////////////////////////////");
                  MenuClass.systemData["AllBodySet"]["_menu"] = 0;
               }
               new Chara_AllBody(this.charaNum,this.clickTarget);
               if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test"))
               {
                  Tab_IEInOut.execute("OUT","0",MenuClass._nowCharaNum);
                  trace("[\"" + Tab_IEInOut.dataStr + "\"," + Chara_IEdata.AllBodySetMotoData[MenuClass.systemData["AllBodySet"]["_menu"]][1] + "],");
                  if(Chara_IEdata.AllBodySetMotoData.length - 1 > MenuClass.systemData["AllBodySet"]["_menu"])
                  {
                     MenuClass.systemData["AllBodySet"]["_menu"] += 1;
                     new SetClass(this.charaNum,"AllBodySet","test");
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "BackgroundSet")
         {
            try
            {
               if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test") && this.clickTarget != "test")
               {
                  trace("///////////////////////////////////////////");
                  MenuClass.systemData["BackgroundSet"]["_menu"] = 0;
               }
               if(this.clickTarget == "menu" || MenuClass._nowTargetMode == "All" && this.charaNum == 8)
               {
                  Tab_IEInOut.execute("textIN",Chara_IEdata.BackgroundData[MenuClass.systemData["BackgroundSet"]["_menu"]][0],this.charaNum);
               }
               if(MenuClass.spaceKeyPress && (Main.publishMode == "test" || Main.publishMode == "download_test"))
               {
                  Tab_IEInOut.execute("OUT","0",MenuClass._nowCharaNum);
                  trace("[\"" + Tab_IEInOut.dataStr + "\"," + Chara_IEdata.BackgroundData[MenuClass.systemData["BackgroundSet"]["_menu"]][1] + "],");
                  if(Chara_IEdata.BackgroundData.length - 1 > MenuClass.systemData["BackgroundSet"]["_menu"])
                  {
                     MenuClass.systemData["BackgroundSet"]["_menu"] += 1;
                     new SetClass(this.charaNum,"BackgroundSet","test");
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HairExSet")
         {
            try
            {
               if(this.clickTarget == "menu" || this.clickTarget == "random")
               {
                  if(MenuClass._nowTargetMode == "Select")
                  {
                     Tab_IEInOut.execute("hairSet",Chara_HairData.HairExData[MenuClass.systemData["HairExSet"]["_menu"]],this.charaNum);
                  }
                  else if(MenuClass._nowTargetMode == "SelectPlus")
                  {
                     if(this.charaData["SelectCharacter"]["_visible"][0])
                     {
                        if(MenuClass._nowSelectChara[this.charaNum])
                        {
                           Tab_IEInOut.execute("hairSet",Chara_HairData.HairExData[MenuClass.systemData["HairExSet"]["_menu"]],this.charaNum);
                        }
                     }
                  }
                  else if(MenuClass._nowTargetMode == "All")
                  {
                     if(this.charaData["SelectCharacter"]["_visible"][0])
                     {
                        Tab_IEInOut.execute("hairSet",Chara_HairData.HairExData[MenuClass.systemData["HairExSet"]["_menu"]],this.charaNum);
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HairExSetEasy")
         {
            try
            {
               if(this.clickTarget == "menu")
               {
                  if(MenuClass.systemData["HairExSetEasy"]["_visible"][0])
                  {
                     Tab_IEInOut.execute("hairSet",Chara_HairData.HairExData[MenuClass.systemData["HairExSetEasy"]["_menu"]],this.charaNum);
                  }
                  else
                  {
                     i = 0;
                     while(i <= Main.hukusuuNum)
                     {
                        try
                        {
                           this.charaAdd["HairEx" + i + "_0"].HairEx0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd["HairEx" + i + "_1"].HairEx0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        i++;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "LeftArm" || this.tabName == "RightArm")
         {
            try
            {
               if(MenuClass.systemData["LinkHand"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["RightArm"]["_meter"] = this.charaData["LeftArm"]["_meter"];
               }
               tabStr = new Array(Math.round(49 * this.charaData["LeftArm"]["_meter"] / 100),Math.round(49 * this.charaData["RightArm"]["_meter"] / 100));
               i = 0;
               while(i <= 1)
               {
                  j = 0;
                  while(j <= 1)
                  {
                     this.charaAdd["handm" + i + "_" + j].gotoAndStop(tabStr[j] + 1);
                     j++;
                  }
                  i++;
               }
               i = 0;
               while(i <= 1)
               {
                  if(this.charaData["Seihuku"]["_visible"][0])
                  {
                     this.charaAdd["handm0_" + i].kataSeihukuMask.gotoAndStop(tabStr[i] + 1);
                     try
                     {
                        this.charaAdd.mune.SeihukuMune["ysyatu" + i].ysyatu.kataMask.gotoAndStop(tabStr[i] + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(this.charaData["Ysyatu"]["_visible"][0])
                  {
                     this.charaAdd["handm0_" + i].kataYsyatuMask.gotoAndStop(tabStr[i] + 1);
                     this.charaAdd["handm0_" + i].kataYsyatu2Mask.gotoAndStop(tabStr[i] + 1);
                     try
                     {
                        this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu.kataMask.gotoAndStop(tabStr[i] + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(this.charaData["Tsyatu"]["_visible"][0])
                  {
                     this.charaAdd["handm0_" + i].kataTsyatuMask.gotoAndStop(tabStr[i] + 1);
                     try
                     {
                        this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.kataMask.gotoAndStop(tabStr[i] + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(this.charaData["Vest"]["_visible"][0])
                  {
                     this.charaAdd["handm0_" + i].kataVestMask.gotoAndStop(tabStr[i] + 1);
                     try
                     {
                        this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu.kataMask.gotoAndStop(tabStr[i] + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if(this.charaData["Bura"]["_visible"][0])
                  {
                     this.charaAdd["handm0_" + i].kataBuraMask.gotoAndStop(tabStr[i] + 1);
                  }
                  i++;
               }
               if(this.charaData["Ysyatu"]["_visible"][0])
               {
                  new Huku_YsyatuKata(this.charaNum);
               }
               try
               {
                  new Move_UdeClass(this.charaNum);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new Chara_SetSize(this.charaNum,"HandWidth",this.clickTarget);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new Chara_ColorClass(this.charaNum,this.tabName);
                  new Chara_ColorClass(this.charaNum,this.tabName + "2");
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(MenuClass.systemData["LinkHand"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random") || this.clickTarget == "move")
                  {
                     new Chara_ColorClass(this.charaNum,"RightArm");
                     new Chara_ColorClass(this.charaNum,"RightArm2");
                  }
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "LeftArm2" || this.tabName == "RightArm2" || this.tabName == "LeftArmFreeRotation" || this.tabName == "RightArmFreeRotation")
         {
            try
            {
               if(MenuClass.systemData["LinkHand"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random" || this.clickTarget == "depth"))
               {
                  this.charaData["RightArm2"]["_meter"] = this.charaData["LeftArm2"]["_meter"];
                  this.charaData["RightArm2"]["_depth"] = this.charaData["LeftArm2"]["_depth"];
                  this.charaData["RightArmFreeRotation"]["_check"] = this.charaData["LeftArmFreeRotation"]["_check"];
               }
               new Move_UdeClass(this.charaNum);
               new Chara_SetSize(this.charaNum,"HandWidth",this.clickTarget);
               new Chara_ColorClass(this.charaNum,this.tabName);
               if(this.tabName == "LeftArm2" || this.tabName == "LeftArmFreeRotation")
               {
                  new Chara_ColorClass(this.charaNum,"LeftHand");
               }
               else
               {
                  new Chara_ColorClass(this.charaNum,"RightHand");
               }
               if(MenuClass.systemData["LinkHand"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  new Chara_ColorClass(this.charaNum,"RightArm2");
                  new Chara_ColorClass(this.charaNum,"RightHand");
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "LeftHand" || this.tabName == "RightHand")
         {
            try
            {
               if(MenuClass.systemData["LinkHand"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  if(this.charaData["Item0"]["_visible"][0] == true && this.charaData["Item1"]["_visible"][0] == true)
                  {
                     if(this.charaData["Item0"]["_menu"] == this.charaData["Item1"]["_menu"])
                     {
                        this.charaData["RightHand"]["_menu"] = this.charaData["LeftHand"]["_menu"];
                     }
                  }
                  else if(this.charaData["Item0"]["_visible"][0] == false && this.charaData["Item1"]["_visible"][0] == false)
                  {
                     this.charaData["RightHand"]["_menu"] = this.charaData["LeftHand"]["_menu"];
                  }
               }
               new Move_HandClass(this.charaNum);
               new Chara_ColorClass(this.charaNum,this.tabName);
               if(MenuClass.systemData["LinkHand"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  new Chara_ColorClass(this.charaNum,"RightHand");
                  new Chara_ColorClass(this.charaNum,"RightArm2");
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "LeftHand2" || this.tabName == "RightHand2")
         {
            try
            {
               if(MenuClass.systemData["LinkHand"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["RightHand2"]["_meter"] = this.charaData["LeftHand2"]["_meter"];
               }
               new Move_HandAngleClass(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Ashi" || this.tabName == "Ashi2")
         {
            try
            {
               new Move_AshiClass(this.charaNum,this.clickTarget);
               new Move_HitLine(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(
            this.tabName == "LeftThighRotation" ||
            this.tabName == "RightThighRotation" ||
            this.tabName == "LeftLegRotation" ||
            this.tabName == "RightLegRotation" ||
            this.tabName == "LeftFootRotation" ||
            this.tabName == "RightFootRotation" ||
            this.tabName == "LeftThighScaleX" ||
            this.tabName == "LeftThighScaleY" ||
            this.tabName == "LeftThighOffsetX" ||
            this.tabName == "LeftThighOffsetY" ||
            this.tabName == "RightThighScaleX" ||
            this.tabName == "RightThighScaleY" ||
            this.tabName == "RightThighOffsetX" ||
            this.tabName == "RightThighOffsetY" ||
            this.tabName == "LeftLegScaleX" ||
            this.tabName == "LeftLegScaleY" ||
            this.tabName == "LeftLegOffsetX" ||
            this.tabName == "LeftLegOffsetY" ||
            this.tabName == "RightLegScaleX" ||
            this.tabName == "RightLegScaleY" ||
            this.tabName == "RightLegOffsetX" ||
            this.tabName == "RightLegOffsetY" ||
            this.tabName == "LeftFootScaleX" ||
            this.tabName == "LeftFootScaleY" ||
            this.tabName == "LeftFootOffsetX" ||
            this.tabName == "LeftFootOffsetY" ||
            this.tabName == "RightFootScaleX" ||
            this.tabName == "RightFootScaleY" ||
            this.tabName == "RightFootOffsetX" ||
            this.tabName == "RightFootOffsetY" ||
            this.tabName == "LeftThighVisible" ||
            this.tabName == "RightThighVisible" ||
            this.tabName == "LeftLegVisible" ||
            this.tabName == "RightLegVisible" ||
            this.tabName == "LeftFootVisible" ||
            this.tabName == "RightFootVisible"
         )
         {
            if(this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random") {
               if (MenuClass.systemData["LinkThighSettings"]["_flag"]) {
                  this.charaData["RightThighRotation"]["_meter"] = this.charaData["LeftThighRotation"]["_meter"];
                  this.charaData["RightThighScaleX"]["_meter"] = this.charaData["LeftThighScaleX"]["_meter"];
                  this.charaData["RightThighScaleY"]["_meter"] = this.charaData["LeftThighScaleY"]["_meter"];
                  this.charaData["RightThighOffsetX"]["_meter"] = this.charaData["LeftThighOffsetX"]["_meter"];
                  this.charaData["RightThighOffsetY"]["_meter"] = this.charaData["LeftThighOffsetY"]["_meter"];
                  this.charaData["RightThighVisible"]["_visible"][0] = this.charaData["LeftThighVisible"]["_visible"][0];
               }

               if (MenuClass.systemData["LinkLegSettings"]["_flag"]) {
                  this.charaData["RightLegRotation"]["_meter"] = this.charaData["LeftLegRotation"]["_meter"];
                  this.charaData["RightLegScaleX"]["_meter"] = this.charaData["LeftLegScaleX"]["_meter"];
                  this.charaData["RightLegScaleY"]["_meter"] = this.charaData["LeftLegScaleY"]["_meter"];
                  this.charaData["RightLegOffsetX"]["_meter"] = this.charaData["LeftLegOffsetX"]["_meter"];
                  this.charaData["RightLegOffsetY"]["_meter"] = this.charaData["LeftLegOffsetY"]["_meter"];
                  this.charaData["RightLegVisible"]["_visible"][0] = this.charaData["LeftLegVisible"]["_visible"][0];
               }

               if (MenuClass.systemData["LinkFootSettings"]["_flag"]) {
                  this.charaData["RightFootRotation"]["_meter"] = this.charaData["LeftFootRotation"]["_meter"];
                  this.charaData["RightFootScaleX"]["_meter"] = this.charaData["LeftFootScaleX"]["_meter"];
                  this.charaData["RightFootScaleY"]["_meter"] = this.charaData["LeftFootScaleY"]["_meter"];
                  this.charaData["RightFootOffsetX"]["_meter"] = this.charaData["LeftFootOffsetX"]["_meter"];
                  this.charaData["RightFootOffsetY"]["_meter"] = this.charaData["LeftFootOffsetY"]["_meter"];
                  this.charaData["RightFootVisible"]["_visible"][0] = this.charaData["LeftFootVisible"]["_visible"][0];
               }
            }

            try
            {
               Move_AshiClass.updateLegRotation(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Xmove")
         {
            try
            {
               visibleCheck = 0;
               if(!this.charaData["SelectCharacter"]["_visible"][0])
               {
                  visibleCheck = 5000;
               }
               new MeterPersent(-306,1600,this.tabName,this.charaNum);
               MenuClass.shadowAdd[this.charaNum].x = this.charaAddDepth.x = MeterPersent.MeterPersentNum + visibleCheck;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Ymove")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"BodyY",this.clickTarget);
               MenuClass.DepthMeter[this.charaNum] = this.charaData["Ymove"]["_meter"];
               new Chara_Depth2(this.charaNum,"Ymove","Ymove");
               new Move_HitLine(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Rmove")
         {
            try
            {
               new Move_BodyYClass(this.charaNum);
               new Chara_SetSize(this.charaNum,"BodyY",this.clickTarget);
               new Move_HitLine(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Jump")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"BodyY",this.clickTarget);
               new Move_HitLine(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Head")
         {
            try
            {
               new Move_Head(this.charaNum);
               new Move_HitLine(this.charaNum);
               new Hair_SideBurn("SideBurnLeft",this.charaNum);
               new Hair_SideBurn("SideBurnRight",this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Shadow")
         {
            try
            {
               if(this.charaData["Shadow"]["_visible"][0] && this.charaData["SelectCharacter"]["_visible"][0])
               {
                  MenuClass.shadowAdd[this.charaNum].visible = true;
               }
               else
               {
                  MenuClass.shadowAdd[this.charaNum].visible = false;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "CharaDropShadow" || this.tabName == "CharaDropShadowIn" || this.tabName == "CharaDropShadowOut" || this.tabName == "CharaDropShadowHide" || this.tabName == "CharaDropShadowAlpha" || this.tabName == "CharaDropShadowStr" || this.tabName == "CharaDropShadowX" || this.tabName == "CharaDropShadowY" || this.tabName == "CharaDropShadowRotation" || this.tabName == "CharaDropShadowDistance")
         {
            try
            {
               if(this.charaData["CharaDropShadow"]["_visible"][0] && this.charaData["SelectCharacter"]["_visible"][0])
               {
                  this.charaData["CharaBlur"]["_visible"][0] = false;
                  new FilterFc(MenuClass.charaAdd[this.charaNum],"CharaDropShadow",this.charaNum,true,this.clickTarget);
               }
               else if(!this.charaData["CharaBlur"]["_visible"][0])
               {
                  new FilterFc(MenuClass.charaAdd[this.charaNum],"CharaDropShadow",this.charaNum,false,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "CharaBlur" || this.tabName == "CharaBlurX" || this.tabName == "CharaBlurY")
         {
            try
            {
               if(this.charaData["CharaBlur"]["_visible"][0] && this.charaData["SelectCharacter"]["_visible"][0])
               {
                  this.charaData["CharaDropShadow"]["_visible"][0] = false;
                  new FilterBlurFc(MenuClass.charaAdd[this.charaNum],"CharaBlur",this.charaNum,true,this.clickTarget);
               }
               else if(!this.charaData["CharaDropShadow"]["_visible"][0] && this.charaData["SelectCharacter"]["_visible"][0])
               {
                  new FilterBlurFc(MenuClass.charaAdd[this.charaNum],"CharaBlur",this.charaNum,false,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "CharaFilterEmotion")
         {
            if(!this.charaData["CharaFilterEmotion"]["_check"])
            {
               this.charaAdd.Hukidashi.visible = false;
               this.charaAdd.Hukidashi.gotoAndStop(1);
            }
            else
            {
               this.charaAddDepth.charaMae.Hukidashi.visible = false;
               this.charaAddDepth.charaMae.Hukidashi.gotoAndStop(1);
            }
            new SetClass(this.charaNum,"Hukidashi","tab");
            new Chara_SetSize(this.charaNum,"HeadScale",this.clickTarget);
            new Move_BodyYClass(this.charaNum);
            new Move_BodyX(this.charaNum);
            new Move_Head(this.charaNum);
            new Move_HeadYClass(this.charaNum);
            new Emotion_Option(this.charaNum);
            new Emotion_EyeOption(this.charaNum);
         }
         else if(this.tabName == "Body")
         {
            try
            {
               if(this.DressCharaData["Nipple"][0]["_color0"][1] == 2)
               {
                  this.charaData["Nipple"]["_color0"][0] = this.charaData["Body"]["_color0"][0];
                  this.DressCharaData["Nipple"][0]["_color0"][0] = this.charaData["Body"]["_color0"][0];
                  new Chara_ColorClass(this.charaNum,"Nipple");
               }
               if(this.DressCharaData["Tin"][0]["_color0"][1] == 2)
               {
                  this.charaData["Tin"]["_color0"][0] = this.charaData["Body"]["_color0"][0];
                  this.DressCharaData["Tin"][0]["_color0"][0] = this.charaData["Body"]["_color0"][0];
                  if(this.DressCharaData["Tin"][0]["_color1"][1] == 2)
                  {
                     this.charaData["Tin"]["_color1"][0] = this.charaData["Body"]["_color0"][0];
                     this.DressCharaData["Tin"][0]["_color1"][0] = this.charaData["Body"]["_color0"][0];
                  }
                  if(this.DressCharaData["Tin"][0]["_color2"][1] == 2)
                  {
                     this.charaData["Tin"]["_color2"][0] = this.charaData["Body"]["_color0"][0];
                     this.DressCharaData["Tin"][0]["_color2"][0] = this.charaData["Body"]["_color0"][0];
                  }
                  new Chara_ColorClass(this.charaNum,"Tin");
               }
               if(this.DressCharaData["s"][0]["_color0"][1] == 2)
               {
                  this.charaData["s"]["_color0"][0] = this.charaData["Body"]["_color0"][0];
                  this.DressCharaData["s"][0]["_color0"][0] = this.charaData["Body"]["_color0"][0];
                  if(this.DressCharaData["s"][0]["_color1"][1] == 2)
                  {
                     this.charaData["s"]["_color1"][0] = this.charaData["Body"]["_color0"][0];
                     this.DressCharaData["s"][0]["_color1"][0] = this.charaData["Body"]["_color0"][0];
                  }
                  if(this.DressCharaData["s"][0]["_color2"][1] == 2)
                  {
                     this.charaData["s"]["_color2"][0] = this.charaData["Body"]["_color0"][0];
                     this.DressCharaData["s"][0]["_color2"][0] = this.charaData["Body"]["_color0"][0];
                  }
                  new Chara_ColorClass(this.charaNum,"s");
               }
               if(this.charaData["Body"]["_color0"][0] != this.charaData["s"]["_color0"][0])
               {
                  this.charaAdd.dou.dou_shitaHuku.s.color0_0.visible = true;
               }
               else
               {
                  this.charaAdd.dou.dou_shitaHuku.s.color0_0.visible = false;
               }
               if(this.charaData["Nose"]["_visible"][0])
               {
                  new Chara_ColorClass(this.charaNum,"Nose");
               }
               if(this.charaData["NoseShadow"]["_visible"][0])
               {
                  new Chara_ColorClass(this.charaNum,"NoseShadow");
               }
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "BodyPlus" || this.tabName == "BodyPlusMeter")
         {
            try
            {
               new Chara_ColorClass(this.charaNum,"BodyPlus");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "BodyAlpha")
         {
            try
            {
               this.menuNum = this.charaData[this.tabName]["_meter"];
               if(this.menuNum == 100)
               {
                  this.charaAdd.blendMode = BlendMode.NORMAL;
               }
               else
               {
                  this.charaAdd.blendMode = BlendMode.LAYER;
               }
               this.charaAdd.alpha = this.menuNum * 0.01;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "BodyHeight" || this.tabName == "AshiHeight" || this.tabName == "douHeight")
         {
            try
            {
               if(this.tabName == "BodyHeight" && MenuClass.systemData["LinkBodyHeight"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["AshiHeight"]["_meter"] = this.charaData["BodyHeight"]["_meter"];
               }
               new Chara_SetSize(this.charaNum,"BodyHeight",this.clickTarget);
               new Move_HitLine(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "BodySize" || this.tabName == "BodyYMove")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"BodyY",this.clickTarget);
               new Move_HitLine(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "AshiWidth" || this.tabName == "HipWidth")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"HipWidth",this.clickTarget);
               new Chara_SetSize(this.charaNum,"AshiWidth",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "ShoulderWidth" || this.tabName == "LeftShoulderVisible" || this.tabName == "RightShoulderVisible")
         {
            if (MenuClass.systemData["LinkUpperArmSettings"]["_flag"]) {
               this.charaData["RightUpperArmScaleX"]["_meter"] = this.charaData["LeftUpperArmScaleX"]["_meter"];
               this.charaData["RightUpperArmScaleY"]["_meter"] = this.charaData["LeftUpperArmScaleY"]["_meter"];
               this.charaData["RightUpperArmOffsetX"]["_meter"] = this.charaData["LeftUpperArmOffsetX"]["_meter"];
               this.charaData["RightUpperArmOffsetY"]["_meter"] = this.charaData["LeftUpperArmOffsetY"]["_meter"];
               this.charaData["RightUpperArmVisible"]["_visible"][0] = this.charaData["LeftUpperArmVisible"]["_visible"][0];
               this.charaData["RightShoulderVisible"]["_visible"][0] = this.charaData["LeftShoulderVisible"]["_visible"][0];
            }

            try
            {
               new Huku_YsyatuKata(this.charaNum);
               new Chara_SetSize(this.charaNum,"ShoulderWidth",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "BodyAllWidth")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"BodyAllWidth",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "BodyWidth")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"BreastWidth",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NeckHeight")
         {
            try
            {
               new Move_HeadYClass(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "ContourWidth")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"ContourWidth",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "ContourHeight")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"ContourHeight",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if (
            this.tabName == "LeftUpperArmScaleX" || this.tabName == "LeftUpperArmScaleY" ||
            this.tabName == "LeftUpperArmOffsetX" || this.tabName == "LeftUpperArmOffsetY" ||
            this.tabName == "RightUpperArmScaleX" || this.tabName == "RightUpperArmScaleY" ||
            this.tabName == "RightUpperArmOffsetX" || this.tabName == "RightUpperArmOffsetY" ||
            this.tabName == "LeftUpperArmVisible" || this.tabName == "RightUpperArmVisible" ||
            this.tabName == "LeftArmScaleX" || this.tabName == "LeftArmScaleY" ||
            this.tabName == "LeftArmOffsetX" || this.tabName == "LeftArmOffsetY" ||
            this.tabName == "RightArmScaleX" || this.tabName == "RightArmScaleY" ||
            this.tabName == "RightArmOffsetX" || this.tabName == "RightArmOffsetY" ||
            this.tabName == "LeftArmVisible" || this.tabName == "RightArmVisible" ||
            this.tabName == "LeftHandScaleX" || this.tabName == "LeftHandScaleY" ||
            this.tabName == "LeftHandOffsetX" || this.tabName == "LeftHandOffsetY" ||
            this.tabName == "RightHandScaleX" || this.tabName == "RightHandScaleY" ||
            this.tabName == "RightHandOffsetX" || this.tabName == "RightHandOffsetY" ||
            this.tabName == "LeftHandVisible" || this.tabName == "RightHandVisible" ||
            this.tabName == "LeftHandFlip" || this.tabName == "RightHandFlip" ||
            this.tabName == "LeftArmFlip" || this.tabName == "RightArmFlip"
         )
         {
            if (MenuClass.systemData["LinkUpperArmSettings"]["_flag"]) {
               this.charaData["RightUpperArmScaleX"]["_meter"] = this.charaData["LeftUpperArmScaleX"]["_meter"];
               this.charaData["RightUpperArmScaleY"]["_meter"] = this.charaData["LeftUpperArmScaleY"]["_meter"];
               this.charaData["RightUpperArmOffsetX"]["_meter"] = this.charaData["LeftUpperArmOffsetX"]["_meter"];
               this.charaData["RightUpperArmOffsetY"]["_meter"] = this.charaData["LeftUpperArmOffsetY"]["_meter"];
               this.charaData["RightUpperArmVisible"]["_visible"][0] = this.charaData["LeftUpperArmVisible"]["_visible"][0];
               this.charaData["RightShoulderVisible"]["_visible"][0] = this.charaData["LeftShoulderVisible"]["_visible"][0];
            }

            if (MenuClass.systemData["LinkArmSettings"]["_flag"]) {
               this.charaData["RightArmScaleX"]["_meter"] = this.charaData["LeftArmScaleX"]["_meter"];
               this.charaData["RightArmScaleY"]["_meter"] = this.charaData["LeftArmScaleY"]["_meter"];
               this.charaData["RightArmOffsetX"]["_meter"] = this.charaData["LeftArmOffsetX"]["_meter"];
               this.charaData["RightArmOffsetY"]["_meter"] = this.charaData["LeftArmOffsetY"]["_meter"];
               this.charaData["RightArmVisible"]["_visible"][0] = this.charaData["LeftArmVisible"]["_visible"][0];
               this.charaData["RightArmFlip"]["_check"] = this.charaData["LeftArmFlip"]["_check"];
            }

            if (MenuClass.systemData["LinkHandSettings"]["_flag"]) {
               this.charaData["RightHandScaleX"]["_meter"] = this.charaData["LeftHandScaleX"]["_meter"];
               this.charaData["RightHandScaleY"]["_meter"] = this.charaData["LeftHandScaleY"]["_meter"];
               this.charaData["RightHandOffsetX"]["_meter"] = this.charaData["LeftHandOffsetX"]["_meter"];
               this.charaData["RightHandOffsetY"]["_meter"] = this.charaData["LeftHandOffsetY"]["_meter"];
               this.charaData["RightHandVisible"]["_visible"][0] = this.charaData["LeftHandVisible"]["_visible"][0];
               this.charaData["RightHandFlip"]["_check"] = this.charaData["LeftHandFlip"]["_check"];
            }
            
            try
            {
               new Move_UdeClass(this.charaNum);
               new Chara_SetSize(this.charaNum,"HandWidth",this.clickTarget);
               new Move_HandAngleClass(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HandWidth")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"HandWidth",this.clickTarget);
               new Move_HandAngleClass(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HeadScale")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"HeadScale",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Hiyake")
         {
            try
            {
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Waist")
         {
            try
            {
               new Chara_Waist(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "WaistAlpha")
         {
            try
            {
               new MeterPersent(0,1,this.tabName,this.charaNum);
               this.charaAdd.dou.hukin.alpha = MeterPersent.MeterPersentNum;
               this.charaAdd.dou.dou_shitaHuku.Bura_hukin.alpha = MeterPersent.MeterPersentNum - 0.3;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Heso")
         {
            try
            {
               this.charaAdd.dou.HesoSen.heso.gotoAndStop(this.charaData["Heso"]["_menu"] + 2);
               new Chara_ColorClass(this.charaNum,"Heso");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Breast")
         {
            try
            {
               this.charaAdd.dou["MuneKage" + 0].gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
               i = 0;
               while(i <= 1)
               {
                  this.charaAdd.mune["mune" + i].gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                  try
                  {
                     this.charaAdd.mune["mune" + i].mune.kage0.mouseChildren = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  this.charaAdd.mune["mune" + i].mune.Nipple.nipple.mouseChildren = false;
                  this.charaAdd.mune["mune" + i].mune.Nipple.nippleG.mouseChildren = false;
                  this.charaAdd.mune["mune" + i].mune.NippleG.nippleG.mouseChildren = false;
                  this.charaData["BreastMove"]["_mode"][i] = "yokoYure";
                  this.charaData["BreastMove"]["_count"][i] = 0;
                  i++;
               }
               new Huku_CorsetDou(this.charaNum);
               new Huku_Breast("Seihuku",this.charaNum);
               new Huku_Breast("Ysyatu",this.charaNum);
               new Huku_Breast("Tsyatu",this.charaNum);
               new Huku_Breast("Vest",this.charaNum);
               new Huku_Breast("Bura",this.charaNum);
               new Huku_Breast("Nawa",this.charaNum);
               new Huku_NippleGMask(this.charaNum,0);
               new Huku_NippleGMask(this.charaNum,1);
               new Chara_ColorClass(this.charaNum,this.tabName);
               new SetClass(this.charaNum,"Nipple","tab");
               new Chara_SetSize(this.charaNum,"NippleSize",this.clickTarget);
               new Chara_SetSize(this.charaNum,"NippleHeight",this.clickTarget);
               new Chara_SetSize(this.charaNum,"NippleWidth",this.clickTarget);
               new SetClass(this.charaNum,"NippleGLeft","tab");
               new SetClass(this.charaNum,"NippleGLeftSize","tab");
               new SetClass(this.charaNum,"NippleGRight","tab");
               new SetClass(this.charaNum,"NippleGRightSize","tab");
               new Huku_NecktieCut(this.charaNum);
               new Move_UdeClass(this.charaNum);
               new Chara_SetSize(this.charaNum,"HandWidth",this.clickTarget);
               new Chara_ColorClass(this.charaNum,"Nipple");
               new Chara_ColorClass(this.charaNum,"LeftArm2");
               new Chara_ColorClass(this.charaNum,"RightArm2");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if (this.tabName == "TinSizeAuto" || this.tabName == "TinScaleX"  || this.tabName == "TinScaleY" || this.tabName == "TinOffsetX" || this.tabName == "TinOffsetY")
         {
            new Huku_Tin(this.charaNum);
            new Huku_TinEnter(this.charaNum);
         }
         else if(this.tabName == "Tin")
         {
            try
            {
               if(!this.charaData["Tin"]["_visible"][0] || Main.r18Check)
               {
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.visible = false;
                  this.charaAdd.peni.peni.Peni.Tin.visible = false;
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.gotoAndStop(1);
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.gotoAndStop(1);
                  this.charaAdd.peni.peni.Peni.Tin.Tin.gotoAndStop(1);
                  this.charaAdd.peni.peni.Peni.Tin.TinUp.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.visible = true;
                  this.charaAdd.peni.peni.Peni.Tin.visible = true;
                  if(this.clickTarget != "huku")
                  {
                     if(this.charaData["TinManualAuto"]["_check"])
                     {
                        if(this.charaData["TinMove"]["_mode"] < 5)
                        {
                           if(this.charaData["TinBokki"]["_check"])
                           {
                              this.charaData["TinMove"]["_mode"] = 2;
                           }
                           else
                           {
                              this.charaData["TinMove"]["_mode"] = 1;
                           }
                        }
                     }
                     if(this.charaData["Tin"]["_depth"] == 0)
                     {
                        this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.visible = true;
                        this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.visible = true;
                        this.charaAdd.peni.peni.Peni.Tin.Tin.visible = false;
                        this.charaAdd.peni.peni.Peni.Tin.TinUp.visible = false;
                        this.charaAdd.peni.peni.Peni.Tin.Tin.gotoAndStop(1);
                        this.charaAdd.peni.peni.Peni.Tin.TinUp.gotoAndStop(1);
                     }
                     else
                     {
                        this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.visible = false;
                        this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.visible = false;
                        this.charaAdd.peni.peni.Peni.Tin.Tin.visible = true;
                        this.charaAdd.peni.peni.Peni.Tin.TinUp.visible = true;
                        this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.gotoAndStop(1);
                        this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.gotoAndStop(1);
                     }
                     if(this.charaData["Tama"]["_visible"][0])
                     {
                        this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.Tama.gotoAndStop(this.charaData["Tama"]["_menu"] + 2);
                        this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.gotoAndStop(2);
                        this.charaAdd.peni.peni.Peni.Tama.Tama.gotoAndStop(this.charaData["Tama"]["_menu"] + 2);
                        this.charaAdd.peni.peni.Peni.TamaIn.gotoAndStop(2);
                        if(this.charaData["Tin"]["_depth"] == 2)
                        {
                           this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.visible = false;
                           this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.visible = false;
                           this.charaAdd.peni.peni.Peni.Tama.visible = true;
                           this.charaAdd.peni.peni.Peni.TamaIn.visible = false;
                           this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.Tama.gotoAndStop(1);
                           this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.gotoAndStop(1);
                           this.charaAdd.peni.peni.Peni.TamaIn.gotoAndStop(1);
                        }
                        else
                        {
                           this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.visible = true;
                           this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.visible = true;
                           this.charaAdd.peni.peni.Peni.Tama.visible = false;
                           this.charaAdd.peni.peni.Peni.TamaIn.visible = false;
                           this.charaAdd.peni.peni.Peni.Tama.Tama.gotoAndStop(1);
                           this.charaAdd.peni.peni.Peni.TamaIn.gotoAndStop(1);
                        }
                        try
                        {
                           this.charaAdd.peni.peni.Peni.Tama.Tama.TamaSen.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.Tama.TamaSen.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        new Chara_ColorClass(this.charaNum,"Tama");
                     }
                     new Huku_TinSet(this.charaNum);
                     if(this.charaData[this.tabName]["_visible"][0])
                     {
                        this.charaData["SG"]["_visible"][0] = false;
                        new SetClass(this.charaNum,"SG","tab");
                     }
                     new SetClass(this.charaNum,"Mosaic",this.clickTarget);
                     new Huku_TinEnter(this.charaNum);
                     new Huku_Pantu(this.charaNum,"Pantu");
                     new Huku_Pantu(this.charaNum,"Spantu");
                     new Chara_ColorClass(this.charaNum,"Pantu");

                     try {
                        this.charaAdd.mosaic.mosaic.visible = false;
                     } catch (error) {}

                     try {
                        this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.visible = false;
                     } catch (error) {}

                     try {
                        this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tin.TinUp.mosaic.mosaic.visible = false;
                     } catch (error) {}

                     try {
                        this.charaAdd.peni.peni.Peni.Tin.Tin.mosaic.mosaic.visible = false;
                     } catch (error) {}

                     try {
                        this.charaAdd.peni.peni.Peni.Tin.TinUp.mosaic.mosaic.visible = false;
                     } catch (error) {}
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "TinKawa")
         {
            try
            {
               if(!Main.r18Check)
               {
                  new Huku_TinSet(this.charaNum);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "TinBokki")
         {
            try
            {
               if(!Main.r18Check)
               {
                  this.charaData["TinMove"]["_mode"] = 0;
                  if(this.charaData["TinBokki"]["_check"])
                  {
                     this.charaData["Tin"]["_tClick"] = 30;
                  }
                  else
                  {
                     this.charaData["Tin"]["_tClick"] = 0;
                  }
                  new Huku_TinSet(this.charaNum);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Tama")
         {
            try
            {
               if(!this.charaData["Tama"]["_visible"][0] || Main.r18Check)
               {
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.visible = false;
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.visible = false;
                  this.charaAdd.peni.peni.Peni.Tama.visible = false;
                  this.charaAdd.peni.peni.Peni.TamaIn.visible = false;
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.Tama.gotoAndStop(1);
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.gotoAndStop(1);
                  this.charaAdd.peni.peni.Peni.Tama.Tama.gotoAndStop(1);
                  this.charaAdd.peni.peni.Peni.TamaIn.gotoAndStop(1);
               }
               else if(this.clickTarget != "huku")
               {
                  this.charaData["TamaMove"]["_mode"] = 2;
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.Tama.gotoAndStop(this.charaData[this.tabName]["_menu"] + 2);
                  this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.gotoAndStop(2);
                  this.charaAdd.peni.peni.Peni.Tama.Tama.gotoAndStop(this.charaData[this.tabName]["_menu"] + 2);
                  this.charaAdd.peni.peni.Peni.TamaIn.gotoAndStop(2);
                  if(this.charaData["Tin"]["_depth"] == 2)
                  {
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.visible = false;
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.visible = false;
                     this.charaAdd.peni.peni.Peni.Tama.visible = true;
                     this.charaAdd.peni.peni.Peni.TamaIn.visible = false;
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.Tama.gotoAndStop(1);
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.gotoAndStop(1);
                     this.charaAdd.peni.peni.Peni.TamaIn.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.visible = true;
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.visible = true;
                     this.charaAdd.peni.peni.Peni.Tama.visible = false;
                     this.charaAdd.peni.peni.Peni.TamaIn.visible = false;
                     this.charaAdd.peni.peni.Peni.Tama.Tama.gotoAndStop(1);
                     this.charaAdd.peni.peni.Peni.TamaIn.gotoAndStop(1);
                  }
                  try
                  {
                     this.charaAdd.peni.peni.Peni.Tama.Tama.TamaSen.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.Tama.TamaSen.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  new Chara_ColorClass(this.charaNum,this.tabName);
                  new Huku_TinEnter(this.charaNum);
                  new Huku_Pantu(this.charaNum,"Pantu");
                  new Huku_Pantu(this.charaNum,"Spantu");
                  new Chara_ColorClass(this.charaNum,"Pantu");
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "TamaSize")
         {
            try
            {
               new MeterPersent(0.6,1.4,this.tabName,this.charaNum);
               this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.scaleX = this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.scaleY = this.charaAdd.peni.peni.Peni.Tama.scaleX = this.charaAdd.peni.peni.Peni.Tama.scaleY = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Nipple")
         {
            try
            {
               if(Main.r18Check)
               {
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaAdd.mune["mune" + i].mune.Nipple.nipple.visible = false;
                     this.charaAdd.mune["mune" + i].mune.Nipple.nipple.gotoAndStop(1);
                     i++;
                  }
               }
               else
               {
                  this.menuNum = this.charaData["Nipple"]["_menu"];
                  i = 0;
                  while(i <= 1)
                  {
                     if(this.charaData["Nipple"]["_visible"][0])
                     {
                        this.charaAdd.mune["mune" + i].mune.Nipple.nipple.gotoAndStop(this.menuNum + 2);
                     }
                     else
                     {
                        this.charaAdd.mune["mune" + i].mune.Nipple.nipple.gotoAndStop(1);
                     }
                     this.charaAdd.mune["mune" + i].mune.Nipple.nipple.visible = this.charaData["Nipple"]["_visible"][0];
                     i++;
                  }
                  new Chara_ColorClass(this.charaNum,this.tabName);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NippleSize")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"NippleSize",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NippleHeight")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"NippleHeight",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NippleWidth")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"NippleWidth",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Contour")
         {
            try
            {
               this.charaAdd.head.face.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
               this.charaAdd.head.faceSen.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
               try
               {
                  this.charaAdd.head.Gag.faceMask.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                  this.charaAdd.head.Gag.faceSen.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.faceMask.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                  this.charaAdd.head.Megane.faceSen.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.kandoPlus.faceMask.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.kandoMinus.faceMask.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
               }
               catch(myError:Error)
               {
               }
               i = 0;
               while(i <= Main.hukusuuNum)
               {
                  try
                  {
                     this.charaAdd.head["mark" + i + "_" + 0].faceMask.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.head["mark" + i + "_" + 1].faceMask.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  i++;
               }
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "s")
         {
            try
            {
               new Chara_s(this.charaNum,this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "UnderHair")
         {
            try
            {
               if(Main.r18Check)
               {
                  this.charaAdd.dou.dou_shitaHuku.UnderHair.visible = false;
               }
               else
               {
                  this.charaAdd.dou.dou_shitaHuku.UnderHair.visible = this.charaData[this.tabName]["_visible"][0];
                  this.menuNum = this.charaData[this.tabName]["_menu"];
                  this.charaAdd.dou.dou_shitaHuku.UnderHair.gotoAndStop(this.menuNum + 1);
                  new Chara_ColorClass(this.charaNum,this.tabName);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "UnderHairAlpha")
         {
            try
            {
               new MeterPersent(0,1,this.tabName,this.charaNum);
               this.charaAdd.dou.dou_shitaHuku.UnderHair.alpha = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HairAll")
         {
            try
            {
               if(this.clickTarget == "AllHairSet")
               {
                  new Hair_All(this.charaNum,"AllHairSet");
               }
               else if(MenuClass._nowTargetMode == "All")
               {
                  i = 0;
                  while(i <= MenuClass._characterNum)
                  {
                     new Hair_All(i,"HairAll");
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
                        new Hair_All(i,"HairAll");
                     }
                     i++;
                  }
               }
               else
               {
                  new Hair_All(MenuClass._nowCharaNum,"HairAll");
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Hair")
         {
            try
            {
               if(Main.accessObj.menuMode == "easy" && this.clickTarget == "tab")
               {
                  MenuClass.systemData["HairAll"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
                  this.DressCharaData["HairAll"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
                  MenuClass.systemData["HairAll"]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
                  this.DressCharaData["HairAll"][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
                  new Hair_ScaleX(MenuClass._nowCharaNum);
                  new Hair_All(MenuClass._nowCharaNum,"HairAll");
               }
               else
               {
                  new Hair_Class(this.charaNum);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Bangs")
         {
            try
            {
               if(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hage"] >= 2)
               {
                  this.charaAdd.head.Bangs.visible = false;
                  this.charaAdd.head.Bangs.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd.head.Bangs.visible = this.charaData["Bangs"]["_visible"][0];
               }
               if(this.charaData["Bangs"]["_visible"][0])
               {
                  if(this.charaData[this.tabName]["_reversal"])
                  {
                     this.charaAdd.head.Bangs.scaleX = 1;
                  }
                  else
                  {
                     this.charaAdd.head.Bangs.scaleX = -1;
                  }
                  i = 0;
                  while(i <= Main.hukusuuNum)
                  {
                     if(this.charaData["HairExPlus"]["_visible"][i])
                     {
                        if(this.charaData["HairExAdd" + i]["_add0"] == 2)
                        {
                           new Hair_ExRotation(this.charaNum,i);
                        }
                     }
                     i++;
                  }
                  this.charaAdd.head.Bangs.gotoAndStop(this.charaData[this.tabName]["_menu"] + 2);
                  if(MenuClass.bangsHeightData[this.charaNum][0] != this.charaData[this.tabName]["_menu"])
                  {
                     MenuClass.bangsHeightData[this.charaNum][0] = this.charaData[this.tabName]["_menu"];
                     MenuClass.bangsHeightData[this.charaNum][1] = this.charaAdd.head.Bangs.bangs.x;
                     MenuClass.bangsHeightData[this.charaNum][2] = this.charaAdd.head.Bangs.bangs.y;
                     MenuClass.bangsHeightData[this.charaNum][3] = this.charaAdd.head.Bangs.bangs.scaleX;
                     MenuClass.bangsHeightData[this.charaNum][4] = this.charaAdd.head.Bangs.bangs.scaleY;
                     try
                     {
                        MenuClass.bangsHeightData[this.charaNum][5] = this.charaAdd.head.Bangs.maskMc.x;
                        MenuClass.bangsHeightData[this.charaNum][6] = this.charaAdd.head.Bangs.maskMc.y;
                        MenuClass.bangsHeightData[this.charaNum][7] = this.charaAdd.head.Bangs.maskMc.scaleX;
                        MenuClass.bangsHeightData[this.charaNum][8] = this.charaAdd.head.Bangs.maskMc.scaleY;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  BangsChild = this.charaAdd.head.getChildIndex(this.charaAdd.head.Bangs);
                  BangsSwapChild = this.charaAdd.head.getChildIndex(this.charaAdd.head.Bangs_swap);
                  if(this.charaData[this.tabName]["_depth"] == 0)
                  {
                     if(BangsChild > BangsSwapChild)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Bangs,this.charaAdd.head.Bangs_swap);
                     }
                  }
                  else if(this.charaData[this.tabName]["_depth"] == 1)
                  {
                     if(BangsChild < BangsSwapChild)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Bangs,this.charaAdd.head.Bangs_swap);
                     }
                  }
                  new Hair_MaeSen(this.charaNum);
                  new Hair_Sen(this.charaNum);
                  new SetClass(this.charaNum,"Bangs_Height","tab");
                  new Chara_ColorClass(this.charaNum,this.tabName);
                  if(this.charaData["Hat"]["_visible"][0] && this.charaData["Hat"]["_hair0"] == 0)
                  {
                     this.charaAdd.head.Bangs.visible = false;
                     try
                     {
                        this.charaAdd.head.hairUnder.mae_kage.visible = false;
                        this.charaAdd.head.hairUnder.mae_sen.visible = true;
                     }
                     catch(myError:Error)
                     {
                     }
                     new Hair_SenVisible(this.charaNum);
                  }
               }
               else
               {
                  try
                  {
                     this.charaAdd.head.hairUnder.mae_kage.visible = false;
                     this.charaAdd.head.hairUnder.mae_sen.visible = true;
                  }
                  catch(myError:Error)
                  {
                  }
                  new Hair_SenVisible(this.charaNum);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Bangs_Height")
         {
            try
            {
               try
               {
                  new MeterPersent(MenuClass.bangsHeightData[this.charaNum][1],Dress_data.BangsData[this.charaData["Bangs"]["_menu"]]["_x"],"Bangs_Height",this.charaNum);
                  this.charaAdd.head.Bangs.bangs.x = MeterPersent.MeterPersentNum;
                  new MeterPersent(MenuClass.bangsHeightData[this.charaNum][2],Dress_data.BangsData[this.charaData["Bangs"]["_menu"]]["_y"],"Bangs_Height",this.charaNum);
                  this.charaAdd.head.Bangs.bangs.y = MeterPersent.MeterPersentNum;
                  new MeterPersent(MenuClass.bangsHeightData[this.charaNum][3],Dress_data.BangsData[this.charaData["Bangs"]["_menu"]]["_scaleX"],"Bangs_Height",this.charaNum);
                  this.charaAdd.head.Bangs.bangs.scaleX = MeterPersent.MeterPersentNum;
                  new MeterPersent(MenuClass.bangsHeightData[this.charaNum][4],Dress_data.BangsData[this.charaData["Bangs"]["_menu"]]["_scaleY"],"Bangs_Height",this.charaNum);
                  this.charaAdd.head.Bangs.bangs.scaleY = MeterPersent.MeterPersentNum;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new MeterPersent(MenuClass.bangsHeightData[this.charaNum][5],Dress_data.BangsData[this.charaData["Bangs"]["_menu"]]["_maskX"],"Bangs_Height",this.charaNum);
                  this.charaAdd.head.Bangs.maskMc.x = MeterPersent.MeterPersentNum;
                  new MeterPersent(MenuClass.bangsHeightData[this.charaNum][6],Dress_data.BangsData[this.charaData["Bangs"]["_menu"]]["_maskY"],"Bangs_Height",this.charaNum);
                  this.charaAdd.head.Bangs.maskMc.y = MeterPersent.MeterPersentNum;
                  new MeterPersent(MenuClass.bangsHeightData[this.charaNum][7],Dress_data.BangsData[this.charaData["Bangs"]["_menu"]]["_maskScaleX"],"Bangs_Height",this.charaNum);
                  this.charaAdd.head.Bangs.maskMc.scaleX = MeterPersent.MeterPersentNum;
                  new MeterPersent(MenuClass.bangsHeightData[this.charaNum][8],Dress_data.BangsData[this.charaData["Bangs"]["_menu"]]["_maskScaleY"],"Bangs_Height",this.charaNum);
                  this.charaAdd.head.Bangs.maskMc.scaleY = MeterPersent.MeterPersentNum;
               }
               catch(myError:Error)
               {
               }
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HairExPlus")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "pasteRibon")
               {
                  new SetLinkData(this.charaNum);
                  Hair_HairExSet.setFc(this.charaNum,MenuClass.systemData["HairExPlus"]["_menu"],this.clickTarget);
               }
               else if(this.clickTarget == "huku")
               {
                  Hair_HairExSet.setFc(this.charaNum,int(HukuClickClass.plusNum),this.clickTarget);
               }
               else if(this.clickTarget != "paste")
               {
                  i = 0;
                  while(i <= Main.hukusuuNum)
                  {
                     Hair_HairExSet.setFc(this.charaNum,i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HairEx" || this.tabName == "HairExRotation" || this.tabName == "HairExRotationPlus" || this.tabName == "HairExY" || this.tabName == "HairExX" || this.tabName == "HairExScaleX" || this.tabName == "HairExScaleY" || this.tabName == "HairExLine" || this.tabName == "HairExScaleB" || this.tabName == "HairExAdd" || this.tabName == "HairExAlpha")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "depth")
               {
                  Hair_HairExSet.setFc(this.charaNum,MenuClass.systemData["HairExPlus"]["_menu"],this.clickTarget);
               }
               else if(this.clickTarget == "paste")
               {
                  if(this.tabName == "HairExY")
                  {
                     i = 0;
                     while(i <= Main.hukusuuNum)
                     {
                        Hair_HairExSet.setFc(this.charaNum,i,this.clickTarget);
                        i++;
                     }
                  }
                  if(this.charaData["HairExScaleX" + MenuClass.systemData["HairExPlus"]["_menu"]]["_meter"] != this.charaData["HairExScaleY" + MenuClass.systemData["HairExPlus"]["_menu"]]["_meter"])
                  {
                     MenuClass.systemData["LinkHairExScale"]["_flag"] = false;
                  }
                  else
                  {
                     MenuClass.systemData["LinkHairExScale"]["_flag"] = true;
                  }
               }
               else if(this.clickTarget == "HatHair")
               {
                  i = 0;
                  while(i <= Main.hukusuuNum)
                  {
                     Hair_HairExSet.setFc(this.charaNum,i,this.clickTarget);
                     i++;
                  }
               }
               else if(this.clickTarget != "move")
               {
                  i = 0;
                  while(i <= Main.hukusuuNum)
                  {
                     Hair_HairExSet.setFc(this.charaNum,i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HairBack")
         {
            try
            {
               this.charaAdd.HairBack.hairBack.visible = this.charaData["HairBack"]["_visible"][0];
               if(this.charaData["HairBack"]["_visible"][0])
               {
                  this.charaAdd.HairBack.hairBack.gotoAndStop(this.charaData[this.tabName]["_menu"] + 2);
                  this.charaAdd.HairBack.hairBack.hairBack.mouseChildren = false;
                  if(Main.accessObj.menuMode == "easy")
                  {
                     this.charaData["HairBack"]["_turn"] = Dress_data.HairBackData[this.charaData["HairBack"]["_menu"]]["rotationMode"];
                  }
                  new Hair_Sen(this.charaNum);
                  new Move_Head(this.charaNum);
                  new SetClass(this.charaNum,"HairBack_Height","tab");
                  new SetClass(this.charaNum,"HairBack_Width","tab");
                  new SetClass(this.charaNum,"HairBack_Y","tab");
                  new Chara_ColorClass(this.charaNum,this.tabName);
                  if(this.charaData["Hat"]["_visible"][0] && this.charaData["Hat"]["_hair1"] == 0)
                  {
                     this.charaAdd.HairBack.hairBack.visible = false;
                  }
               }
               else
               {
                  this.charaAdd.HairBack.hairBack.gotoAndStop(1);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HairBack_Height")
         {
            try
            {
               new MeterPersent(0.6,1.6,"HairBack_Height",this.charaNum);
               this.charaAdd.HairBack.hairBack.hairBack.scaleY = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
         }
         else if(this.tabName == "HairBack_Width")
         {
            try
            {
               new MeterPersent(0.6,1.6,"HairBack_Width",this.charaNum);
               this.charaAdd.HairBack.hairBack.hairBack.scaleX = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
         }
         else if(this.tabName == "HairBack_Y")
         {
            try
            {
               new MeterPersent(50,-150,"HairBack_Y",this.charaNum);
               this.charaAdd.HairBack.hairBack.hairBack.y = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
         }
         else if(this.tabName == "SideBurnLeft" || this.tabName == "SideBurnRight")
         {
            try
            {
               new Hair_SideBurn(this.tabName,this.charaNum);
               if(MenuClass.systemData["LinkSideBurn"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random" || this.clickTarget == "depth"))
               {
                  this.charaData["SideBurnRight"]["_menu"] = this.charaData["SideBurnLeft"]["_menu"];
                  this.charaData["SideBurnRight"]["_visible"][0] = this.charaData["SideBurnLeft"]["_visible"][0];
                  this.charaData["SideBurnRight"]["_depth"] = this.charaData["SideBurnLeft"]["_depth"];
                  this.charaData["SideBurnRight"]["_turn"] = this.charaData["SideBurnLeft"]["_turn"];
                  i = 0;
                  while(i <= 2)
                  {
                     this.charaData["SideBurnRight"]["_color" + i][0] = this.charaData["SideBurnLeft"]["_color" + i][0];
                     this.DressCharaData["SideBurnRight"][0]["_color" + i] = this.clone(this.DressCharaData["SideBurnLeft"][0]["_color" + i]);
                     i++;
                  }
                  new Hair_SideBurn("SideBurnRight",this.charaNum);
               }
               if(!MenuClass.systemData["LinkSideBurn"]["_flag"] || this.tabName == "SideBurnLeft")
               {
                  new Move_Head(this.charaNum);
               }
               if(this.clickTarget == "huku")
               {
                  if(this.charaData["SideBurnLeft"]["_visible"][0] || this.charaData["SideBurnRight"]["_visible"][0])
                  {
                     i = 0;
                     while(i <= Main.RibonhukusuuNum)
                     {
                        Huku_RibonSet.setFc(this.charaNum,i,"depth");
                        i++;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "SideBurnLeft_Height" || this.tabName == "SideBurnRight_Height" || this.tabName == "SideBurnLeft_x" || this.tabName == "SideBurnRight_x")
         {
            try
            {
               try
               {
                  if(this.charaData["SideBurnLeft"]["_visible"][0])
                  {
                     new MeterPersent(0,15,"SideBurnLeft_x",this.charaNum);
                     SLeftXNum = MeterPersent.MeterPersentNum;
                     new MeterPersent(MenuClass.sideBurnLeftHeightData[this.charaNum][1],Dress_data.SideBurnData[this.charaData["SideBurnLeft"]["_menu"]]["_x"],"SideBurnLeft_Height",this.charaNum);
                     this.charaAdd.head.SideBurnLeft.SideBurn.side.x = MeterPersent.MeterPersentNum + SLeftXNum;
                     this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side.x = MeterPersent.MeterPersentNum + SLeftXNum;
                     new MeterPersent(MenuClass.sideBurnLeftHeightData[this.charaNum][2],Dress_data.SideBurnData[this.charaData["SideBurnLeft"]["_menu"]]["_y"],"SideBurnLeft_Height",this.charaNum);
                     this.charaAdd.head.SideBurnLeft.SideBurn.side.y = MeterPersent.MeterPersentNum;
                     this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side.y = MeterPersent.MeterPersentNum;
                     new MeterPersent(MenuClass.sideBurnLeftHeightData[this.charaNum][3],Dress_data.SideBurnData[this.charaData["SideBurnLeft"]["_menu"]]["_scaleX"],"SideBurnLeft_Height",this.charaNum);
                     this.charaAdd.head.SideBurnLeft.SideBurn.side.scaleX = MeterPersent.MeterPersentNum;
                     this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side.scaleX = MeterPersent.MeterPersentNum;
                     new MeterPersent(MenuClass.sideBurnLeftHeightData[this.charaNum][4],Dress_data.SideBurnData[this.charaData["SideBurnLeft"]["_menu"]]["_scaleY"],"SideBurnLeft_Height",this.charaNum);
                     this.charaAdd.head.SideBurnLeft.SideBurn.side.scaleY = MeterPersent.MeterPersentNum;
                     this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side.scaleY = MeterPersent.MeterPersentNum;
                     new MeterPersent(MenuClass.sideBurnLeftHeightData[this.charaNum][5],Dress_data.SideBurnData[this.charaData["SideBurnLeft"]["_menu"]]["_rotation"],"SideBurnLeft_Height",this.charaNum);
                     this.charaAdd.head.SideBurnLeft.SideBurn.side.rotation = MeterPersent.MeterPersentNum;
                     this.charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn.side.rotation = MeterPersent.MeterPersentNum;
                  }
               }
               catch(myError:Error)
               {
               }
               if(MenuClass.systemData["LinkSideBurn"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["SideBurnRight_Height"]["_meter"] = this.charaData["SideBurnLeft_Height"]["_meter"];
                  this.charaData["SideBurnRight_x"]["_meter"] = this.charaData["SideBurnLeft_x"]["_meter"];
               }
               try
               {
                  if(this.charaData["SideBurnRight"]["_visible"][0])
                  {
                     new MeterPersent(0,15,"SideBurnRight_x",this.charaNum);
                     SRightXNum = MeterPersent.MeterPersentNum;
                     new MeterPersent(MenuClass.sideBurnRightHeightData[this.charaNum][1],Dress_data.SideBurnData[this.charaData["SideBurnRight"]["_menu"]]["_x"],"SideBurnRight_Height",this.charaNum);
                     this.charaAdd.head.SideBurnRight.SideBurn.side.x = MeterPersent.MeterPersentNum + SRightXNum;
                     this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side.x = MeterPersent.MeterPersentNum + SRightXNum;
                     new MeterPersent(MenuClass.sideBurnRightHeightData[this.charaNum][2],Dress_data.SideBurnData[this.charaData["SideBurnRight"]["_menu"]]["_y"],"SideBurnRight_Height",this.charaNum);
                     this.charaAdd.head.SideBurnRight.SideBurn.side.y = MeterPersent.MeterPersentNum;
                     this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side.y = MeterPersent.MeterPersentNum;
                     new MeterPersent(MenuClass.sideBurnRightHeightData[this.charaNum][3],Dress_data.SideBurnData[this.charaData["SideBurnRight"]["_menu"]]["_scaleX"],"SideBurnRight_Height",this.charaNum);
                     this.charaAdd.head.SideBurnRight.SideBurn.side.scaleX = MeterPersent.MeterPersentNum;
                     this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side.scaleX = MeterPersent.MeterPersentNum;
                     new MeterPersent(MenuClass.sideBurnRightHeightData[this.charaNum][4],Dress_data.SideBurnData[this.charaData["SideBurnRight"]["_menu"]]["_scaleY"],"SideBurnRight_Height",this.charaNum);
                     this.charaAdd.head.SideBurnRight.SideBurn.side.scaleY = MeterPersent.MeterPersentNum;
                     this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side.scaleY = MeterPersent.MeterPersentNum;
                     new MeterPersent(MenuClass.sideBurnRightHeightData[this.charaNum][5],Dress_data.SideBurnData[this.charaData["SideBurnRight"]["_menu"]]["_rotation"],"SideBurnRight_Height",this.charaNum);
                     this.charaAdd.head.SideBurnRight.SideBurn.side.rotation = MeterPersent.MeterPersentNum;
                     this.charaAdd.SideBurnMiddle.SideBurnRight.SideBurn.side.rotation = MeterPersent.MeterPersentNum;
                  }
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "FaceOption")
         {
            try
            {
               new Chara_FaceOption(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Eyebrow")
         {
            try
            {
               EyebrowDepth = this.charaAdd.head.getChildIndex(this.charaAdd.head.eyebrow0);
               EyebrowSwapDepth = this.charaAdd.head.getChildIndex(this.charaAdd.head.eyebrow0_swap);
               i = 0;
               while(i <= 1)
               {
                  if(this.charaData["Eyebrow"]["_depth"])
                  {
                     if(EyebrowDepth < EyebrowSwapDepth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head["eyebrow" + i],this.charaAdd.head["eyebrow" + i + "_swap"]);
                     }
                  }
                  else if(EyebrowDepth > EyebrowSwapDepth)
                  {
                     this.charaAdd.head.swapChildren(this.charaAdd.head["eyebrow" + i],this.charaAdd.head["eyebrow" + i + "_swap"]);
                  }
                  this.charaAdd.head["eyebrow" + i].eyebrow.obj.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                  i++;
               }
               if(this.clickTarget == "allFaceSet")
               {
                  this.charaData["Eyebrow"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
                  this.DressCharaData["Eyebrow"][0]["_color0"] = this.clone(this.DressCharaData["Hair"][0]["_color0"]);
               }
               new Chara_ColorClass(this.charaNum,"Eyebrow");
               new SetClass(this.charaNum,"EmotionEyebrowLeft","move");
               new SetClass(this.charaNum,"EmotionEyebrowRight","move");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyebrowY" || this.tabName == "EyebrowRotation" || this.tabName == "EyebrowX")
         {
            try
            {
               new Emotion_Eyebrow(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "MouthY")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"MouthY",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeballLeft" || this.tabName == "EyeballRight")
         {
            try
            {
               if(MenuClass.systemData["LinkEyeball"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["EyeballRight"]["_menu"] = this.charaData["EyeballLeft"]["_menu"];
               }
               menuNumLeft = this.charaData["EyeballLeft"]["_menu"];
               menuNumRight = this.charaData["EyeballRight"]["_menu"];
               if(MenuClass.systemData["LinkEyeball"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaAdd.head["eye" + 0].eyeball.hitomi.gotoAndStop(menuNumLeft + 1);
                  this.charaAdd.head["eye" + 1].eyeball.hitomi.gotoAndStop(menuNumRight + 1);
               }
               else if(this.tabName == "EyeballLeft")
               {
                  this.charaAdd.head["eye" + 0].eyeball.hitomi.gotoAndStop(menuNumLeft + 1);
               }
               else if(this.tabName == "EyeballRight")
               {
                  this.charaAdd.head["eye" + 1].eyeball.hitomi.gotoAndStop(menuNumRight + 1);
               }
               if(MenuClass.systemData["LinkEyeball"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  i = 0;
                  while(i <= 2)
                  {
                     this.charaData["EyeballRight"]["_color" + i][0] = this.charaData["EyeballLeft"]["_color" + i][0];
                     this.DressCharaData["EyeballRight"][0]["_color" + i] = this.clone(this.DressCharaData["EyeballLeft"][0]["_color" + i]);
                     i++;
                  }
               }
               new Chara_ColorClass(this.charaNum,"EyeballRight");
               new Chara_ColorClass(this.charaNum,"EyeballLeft");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeballLight")
         {
            try
            {
               i = 0;
               while(i <= 1)
               {
                  if(this.charaData["EyeballLight"]["_visible"][0])
                  {
                     this.charaAdd.head["eye" + i].eyeball.eyeLight.visible = true;
                     this.charaAdd.head["eye" + i].eyeball.eyeLight.eyeLight.gotoAndStop(this.charaData["EyeballLight"]["_menu"] + 1);
                     if(this.charaData["EyeballLight"]["_reversal"] == 1)
                     {
                        this.charaAdd.head["eye" + 0].eyeball.eyeLight.scaleX = 1;
                        this.charaAdd.head["eye" + 1].eyeball.eyeLight.scaleX = -1;
                     }
                     else
                     {
                        this.charaAdd.head["eye" + 0].eyeball.eyeLight.scaleX = -1;
                        this.charaAdd.head["eye" + 1].eyeball.eyeLight.scaleX = 1;
                     }
                     new Chara_ColorClass(this.charaNum,"EyeballRight");
                     new Chara_ColorClass(this.charaNum,"EyeballLeft");
                  }
                  else
                  {
                     this.charaAdd.head["eye" + i].eyeball.eyeLight.visible = false;
                  }
                  i++;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeballLightRotation")
         {
            try
            {
               this.charaAdd.head["eye" + 0].eyeball.eyeLight.rotation = this.charaData["EyeballLightRotation"]["_meter"] * -1;
               this.charaAdd.head["eye" + 1].eyeball.eyeLight.rotation = this.charaData["EyeballLightRotation"]["_meter"];
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Nose")
         {
            try
            {
               this.charaAdd.head.nose.visible = this.charaData[this.tabName]["_visible"][0];
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  this.charaAdd.head.nose.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                  if(this.charaData[this.tabName]["_reversal"] == 1 && this.charaAdd.head.nose.scaleX < 0)
                  {
                     this.charaAdd.head.nose.scaleX *= -1;
                     this.charaAdd.head.noseShadow.nose_kage.scaleX *= -1;
                  }
                  else if(this.charaData[this.tabName]["_reversal"] == 0 && this.charaAdd.head.nose.scaleX > 0)
                  {
                     this.charaAdd.head.nose.scaleX *= -1;
                     this.charaAdd.head.noseShadow.nose_kage.scaleX *= -1;
                  }
                  new Chara_ColorClass(this.charaNum,"Nose");
                  new SetClass(this.charaNum,"NoseHeight",this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NoseHeight")
         {
            try
            {
               new MeterPersent(17,3,this.tabName,this.charaNum);
               this.charaAdd.head.nose.y = MeterPersent.MeterPersentNum;
               this.charaAdd.head.noseShadow.y = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NoseScaleX")
         {
            try
            {
               new MeterPersent(1,2,this.tabName,this.charaNum);
               this.charaAdd.head.nose.scaleX = MeterPersent.MeterPersentNum;
               if(this.charaData[this.tabName]["_reversal"] == 1 && this.charaAdd.head.nose.scaleX < 0)
               {
                  this.charaAdd.head.nose.scaleX *= -1;
               }
               else if(this.charaData[this.tabName]["_reversal"] == 0 && this.charaAdd.head.nose.scaleX > 0)
               {
                  this.charaAdd.head.nose.scaleX *= -1;
               }
               if(MenuClass.systemData["LinkNoseScale"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["NoseScaleY"]["_meter"] = this.charaData["NoseScaleX"]["_meter"];
                  new SetClass(this.charaNum,"NoseScaleY",this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NoseScaleY")
         {
            try
            {
               new MeterPersent(1,2,this.tabName,this.charaNum);
               this.charaAdd.head.nose.scaleY = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NoseShadow")
         {
            try
            {
               this.charaAdd.head.noseShadow.nose_kage.visible = this.charaData[this.tabName]["_visible"][0];
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  this.charaAdd.head.noseShadow.nose_kage.gotoAndStop(this.charaData[this.tabName]["_menu"] + 2);
                  new Chara_ColorClass(this.charaNum,"NoseShadow");
               }
               else
               {
                  this.charaAdd.head.noseShadow.nose_kage.gotoAndStop(1);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NoseShadowAlpha")
         {
            try
            {
               new MeterPersent(0,1,this.tabName,this.charaNum);
               this.charaAdd.head.noseShadow.alpha = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NoseShadowAlpha")
         {
            try
            {
               new MeterPersent(5,-5,this.tabName,this.charaNum);
               this.charaAdd.head.noseShadow.nose_kage.y = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NoseShadowHeight")
         {
            try
            {
               new MeterPersent(5,-20,this.tabName,this.charaNum);
               this.charaAdd.head.noseShadow.nose_kage.y = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NoseShadowScaleX")
         {
            try
            {
               new MeterPersent(0.5,3,this.tabName,this.charaNum);
               this.charaAdd.head.noseShadow.nose_kage.scaleX = MeterPersent.MeterPersentNum;
               if(this.charaData[this.tabName]["_reversal"] == 1 && this.charaAdd.head.nose.scaleX < 0)
               {
                  this.charaAdd.head.noseShadow.nose_kage.scaleX *= -1;
               }
               else if(this.charaData[this.tabName]["_reversal"] == 0 && this.charaAdd.head.nose.scaleX > 0)
               {
                  this.charaAdd.head.noseShadow.nose_kage.scaleX *= -1;
               }
               if(MenuClass.systemData["LinkNoseShadowScale"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["NoseShadowScaleY"]["_meter"] = this.charaData["NoseShadowScaleX"]["_meter"];
                  new SetClass(this.charaNum,"NoseShadowScaleY",this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NoseShadowScaleY")
         {
            try
            {
               new MeterPersent(0.5,3,this.tabName,this.charaNum);
               this.charaAdd.head.noseShadow.nose_kage.scaleY = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Ear")
         {
            try
            {
               i = 0;
               while(i <= 1)
               {
                  this.charaAdd.head["ear" + i].visible = this.charaData[this.tabName]["_visible"][0];
                  i++;
               }
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  this.charaData["Ear"]["_senColor"] = 0;
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaAdd.head["ear" + i].gotoAndStop(this.charaData[this.tabName]["_menu"] + 2);
                     this.charaAdd.head["ear" + i].ear.Earring.mouseChildren = false;
                     this.charaAdd.head["ear" + i].ear.Earring.buttonMode = true;
                     i++;
                  }
                  new Hair_SenColorSet(this.charaNum,0);
                  new Chara_ColorClass(this.charaNum,"Ear");
                  new SetClass(this.charaNum,"EarScale","tab");
                  new SetClass(this.charaNum,"EarRotation","tab");
                  new SetClass(this.charaNum,"EarX","tab");
                  new SetClass(this.charaNum,"EarY","tab");
                  new Huku_Earring(this.charaNum,0,this.clickTarget);
                  new Huku_Earring(this.charaNum,1,this.clickTarget);
               }
               else
               {
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaAdd.head["ear" + i].gotoAndStop(1);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EarScale")
         {
            try
            {
               if(this.charaData["Ear"]["_visible"][0])
               {
                  new MeterPersent(0.6,1.6,this.tabName,this.charaNum);
                  i = 0;
                  while(i <= 1)
                  {
                     if(i == 1)
                     {
                        this.charaAdd.head["ear" + i].scaleX = MeterPersent.MeterPersentNum * -1;
                     }
                     else
                     {
                        this.charaAdd.head["ear" + i].scaleX = MeterPersent.MeterPersentNum;
                     }
                     this.charaAdd.head["ear" + i].scaleY = MeterPersent.MeterPersentNum;
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EarRotation")
         {
            try
            {
               if(this.charaData["Ear"]["_visible"][0])
               {
                  new MeterPersent(1,50,this.tabName,this.charaNum);
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaAdd.head["ear" + i].ear.gotoAndStop(Math.floor(MeterPersent.MeterPersentNum));
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EarX")
         {
            try
            {
               if(this.charaData["Ear"]["_visible"][0])
               {
                  new MeterPersent(10,40,this.tabName,this.charaNum);
                  this.charaAdd.head["ear" + 0].x = MeterPersent.MeterPersentNum * -1;
                  this.charaAdd.head["ear" + 1].x = MeterPersent.MeterPersentNum;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EarY")
         {
            try
            {
               if(this.charaData["Ear"]["_visible"][0])
               {
                  new MeterPersent(-90,20,this.tabName,this.charaNum);
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaAdd.head["ear" + i].y = MeterPersent.MeterPersentNum;
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Hoho")
         {
            try
            {
               this.charaAdd.head.hoho.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "ESituation")
         {
            try
            {
               this.charaData["EmotionManualAuto"]["_flag"] = "play";
               if(!Main.EmotionCheck)
               {
                  this.charaData["EKanjyou"]["_menu"] = 1;
               }
               this.charaData["EyeM"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][0];
               this.charaData["EyeM2"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][1];
               this.charaData["EyeM3"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][2];
               this.charaData["EyebrowM"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][3];
               this.charaData["EyebrowM2"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][4];
               this.charaData["EyebrowM3"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][5];
               this.charaData["MouthM"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][6];
               this.charaData["MouthM2"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][7];
               this.charaData["MouthM3"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][8];
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "KandoSet")
         {
            try
            {
               new MeterPersent(-0.6,2.4,"KandoSet",this.charaNum);
               MenuClass.KandoSetNum = MeterPersent.MeterPersentNum;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EKando" || this.tabName == "EKanjyou")
         {
            try
            {
               this.charaData["EmotionManualAuto"]["_count"] = 0;
               this.charaData["EmotionManualAuto"]["_flag"] = "play";
               this.charaData["EyeM"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][0];
               this.charaData["EyeM2"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][1];
               this.charaData["EyeM3"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][2];
               this.charaData["EyebrowM"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][3];
               this.charaData["EyebrowM2"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][4];
               this.charaData["EyebrowM3"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][5];
               this.charaData["MouthM"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][6];
               this.charaData["MouthM2"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][7];
               this.charaData["MouthM3"]["_menu"] = Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][8];
               if(this.charaData["EKando"]["_menu"] == 4)
               {
                  this.charaData["HeartPlus"]["_meter"] = 70;
               }
               else if(this.charaData["EKando"]["_menu"] == 3)
               {
                  this.charaData["HeartPlus"]["_meter"] = 50;
               }
               else if(this.charaData["EKando"]["_menu"] == 2)
               {
                  this.charaData["HeartPlus"]["_meter"] = 35;
               }
               else if(this.charaData["EKando"]["_menu"] == 1)
               {
                  this.charaData["HeartPlus"]["_meter"] = 25;
               }
               else
               {
                  this.charaData["HeartPlus"]["_meter"] = 0;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeM" || this.tabName == "EyeM2" || this.tabName == "EyeM3" || this.tabName == "EyebrowM" || this.tabName == "EyebrowM2" || this.tabName == "EyebrowM3" || this.tabName == "MouthM" || this.tabName == "MouthM2" || this.tabName == "MouthM3")
         {
            try
            {
               this.charaData["EmotionManualAuto"]["_count"] = 0;
               this.charaData["EmotionManualAuto"]["_flag"] = "play";
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EmotionTestAllPlay")
         {
            try
            {
               this.eNum1 = this.charaData["EyeM"]["_menu"];
               this.eNum2 = this.charaData["EyeM2"]["_menu"];
               this.eNum3 = this.charaData["EyeM3"]["_menu"];
               this.bNum1 = this.charaData["EyebrowM"]["_menu"];
               this.bNum2 = this.charaData["EyebrowM2"]["_menu"];
               this.bNum3 = this.charaData["EyebrowM3"]["_menu"];
               this.mNum1 = this.charaData["MouthM"]["_menu"];
               this.mNum2 = this.charaData["MouthM2"]["_menu"];
               this.mNum3 = this.charaData["MouthM3"]["_menu"];
               this.charaData["EmotionManualAuto"]["_count"] = 0;
               this.charaData["EmotionManualAuto"]["_flag"] = "play";
               trace("[" + this.eNum1 + ", " + this.eNum2 + ", " + this.eNum3 + ", " + this.bNum1 + ", " + this.bNum2 + ", " + this.bNum3 + ", " + this.mNum1 + ", " + this.mNum2 + ", " + this.mNum3 + "]");
               Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][0] = this.charaData["EyeM"]["_menu"];
               Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][1] = this.charaData["EyeM2"]["_menu"];
               Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][2] = this.charaData["EyeM3"]["_menu"];
               Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][3] = this.charaData["EyebrowM"]["_menu"];
               Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][4] = this.charaData["EyebrowM2"]["_menu"];
               Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][5] = this.charaData["EyebrowM3"]["_menu"];
               Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][6] = this.charaData["MouthM"]["_menu"];
               Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][7] = this.charaData["MouthM2"]["_menu"];
               Emotion_data.ESituationData[this.charaData["ESituation"]["_menu"]][this.charaData["EKando"]["_menu"]][this.charaData["EKanjyou"]["_menu"]][8] = this.charaData["MouthM3"]["_menu"];
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EmotionOption")
         {
            try
            {
               new Emotion_Option(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeOption")
         {
            try
            {
               new Emotion_EyeOption(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Hukidashi")
         {
            try
            {
               if(this.charaData["SelectCharacter"]["_visible"][0] && this.charaData[this.tabName]["_visible"][0])
               {
                  if(!this.charaData["CharaFilterEmotion"]["_check"])
                  {
                     this.charaAddDepth.charaMae.Hukidashi.visible = true;
                     this.charaAddDepth.charaMae.Hukidashi.gotoAndPlay(2);
                     this.charaAddDepth.charaMae.Hukidashi.hukidashi.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                  }
                  else
                  {
                     this.charaAdd.Hukidashi.visible = true;
                     this.charaAdd.Hukidashi.gotoAndPlay(2);
                     this.charaAdd.Hukidashi.hukidashi.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                  }
                  new Move_HeadYClass(this.charaNum);
               }
               else
               {
                  if(!this.charaData["CharaFilterEmotion"]["_check"])
                  {
                     this.charaAddDepth.charaMae.Hukidashi.visible = false;
                     this.charaAddDepth.charaMae.Hukidashi.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd.Hukidashi.visible = false;
                     this.charaAdd.Hukidashi.gotoAndStop(1);
                  }
                  new Move_HeadYClass(this.charaNum);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "defoEye")
         {
            try
            {
               this.charaAdd.head.defoEye.visible = this.charaData[this.tabName]["_visible"][0];
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  i == 0;
                  while(i <= 1)
                  {
                     defoNum = i;
                     if(this.charaData[this.tabName]["_reversal"] == 1)
                     {
                        if(i == 0)
                        {
                           defoNum = 1;
                        }
                        else
                        {
                           defoNum = 0;
                        }
                     }
                     if(Dress_data.defoEyeData[this.charaData[this.tabName]["_menu"]]["eye" + defoNum] == 0)
                     {
                        this.charaAdd.head["eye" + i].visible = true;
                        this.charaAdd.head.defoEye["eye" + i].gotoAndStop(8);
                     }
                     else
                     {
                        this.charaAdd.head["eye" + i].visible = false;
                        this.charaAdd.head.defoEye["eye" + i].gotoAndStop(Dress_data.defoEyeData[this.charaData[this.tabName]["_menu"]]["eye" + defoNum] + 1);
                     }
                     i++;
                  }
                  new Chara_ColorClass(this.charaNum,"defoEye");
               }
               else
               {
                  i == 0;
                  while(i <= 1)
                  {
                     this.charaAdd.head["eye" + i].visible = true;
                     this.charaAdd.head.defoEye["eye" + i].gotoAndStop(1);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "defoEyeScale")
         {
            try
            {
               new MeterPersent(0.6,1.3,this.tabName,this.charaNum);
               i == 0;
               while(i <= 1)
               {
                  this.charaAdd.head.defoEye["eye" + i].scaleX = MeterPersent.MeterPersentNum;
                  this.charaAdd.head.defoEye["eye" + i].scaleY = MeterPersent.MeterPersentNum;
                  i++;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(this.tabName == "defoEyeX")
         {
            try
            {
               new MeterPersent(-3,3,this.tabName,this.charaNum);
               this.charaAdd.head.defoEye.eye0.x = 14.05 + MeterPersent.MeterPersentNum;
               this.charaAdd.head.defoEye.eye1.x = 51.6 + MeterPersent.MeterPersentNum * -1;
            }
            catch(myError:Error)
            {
            }
         }
         else if(this.tabName == "defoEyeY")
         {
            try
            {
               new MeterPersent(5,-5,this.tabName,this.charaNum);
               i == 0;
               while(i <= 1)
               {
                  this.charaAdd.head.defoEye["eye" + i].y = 15.35 + MeterPersent.MeterPersentNum;
                  i++;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(this.tabName == "HeartPlus")
         {
            try
            {
               HeartPlusCheck = false;
               new MeterPersent(1,100,"HeartPlus",this.charaNum);
               if(this.charaAdd.head.kandoPlus.currentFrame == 1 && Math.floor(MeterPersent.MeterPersentNum) != 1)
               {
                  HeartPlusCheck = true;
               }
               if(Math.floor(MeterPersent.MeterPersentNum) != this.charaAdd.head.kandoPlus.currentFrame)
               {
                  this.charaAdd.head.kandoPlus.gotoAndStop(Math.floor(MeterPersent.MeterPersentNum));
               }
               if(HeartPlusCheck)
               {
                  try
                  {
                     if(this.charaData["Contour"]["_menu"] + 1 != this.charaAdd.head.kandoPlus.faceMask.currentFrame)
                     {
                        this.charaAdd.head.kandoPlus.faceMask.gotoAndStop(this.charaData["Contour"]["_menu"] + 1);
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  new Chara_SetSize(this.charaNum,"ContourWidth",this.clickTarget);
                  new Chara_SetSize(this.charaNum,"ContourHeight",this.clickTarget);
                  new SetClass(this.charaNum,"EyeY",this.clickTarget);
                  this.charaAdd.head.kandoPlus.visible = true;
               }
               if(this.charaAdd.head.kandoPlus.currentFrame == 1 && this.charaAdd.head.kandoPlus.visible)
               {
                  this.charaAdd.head.kandoPlus.visible = false;
               }
               if(this.clickTarget == "tab")
               {
                  if(Main.r18Check)
                  {
                     if(this.charaData["HeartPlus"]["_meter"] >= 50)
                     {
                        this.charaData["EKando"]["_menu"] = 2;
                     }
                     else if(this.charaData["HeartPlus"]["_meter"] >= 30)
                     {
                        this.charaData["EKando"]["_menu"] = 1;
                     }
                     else
                     {
                        this.charaData["EKando"]["_menu"] = 0;
                     }
                  }
                  else if(this.charaData["Ahegao"]["_check"])
                  {
                     if(this.charaData["HeartPlus"]["_meter"] >= 70)
                     {
                        this.charaData["EKando"]["_menu"] = 4;
                     }
                     else if(this.charaData["HeartPlus"]["_meter"] >= 50)
                     {
                        this.charaData["EKando"]["_menu"] = 3;
                     }
                     else if(this.charaData["HeartPlus"]["_meter"] >= 35)
                     {
                        this.charaData["EKando"]["_menu"] = 2;
                     }
                     else if(this.charaData["HeartPlus"]["_meter"] >= 25)
                     {
                        this.charaData["EKando"]["_menu"] = 1;
                     }
                     else
                     {
                        this.charaData["EKando"]["_menu"] = 0;
                     }
                  }
                  else if(this.charaData["HeartPlus"]["_meter"] >= 70)
                  {
                     this.charaData["EKando"]["_menu"] = 3;
                  }
                  else if(this.charaData["HeartPlus"]["_meter"] >= 50)
                  {
                     this.charaData["EKando"]["_menu"] = 2;
                  }
                  else if(this.charaData["HeartPlus"]["_meter"] >= 35)
                  {
                     this.charaData["EKando"]["_menu"] = 1;
                  }
                  else
                  {
                     this.charaData["EKando"]["_menu"] = 0;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HeartMinus")
         {
            try
            {
               HeartMinusCheck = false;
               new MeterPersent(1,50,this.tabName,this.charaNum);
               if(this.charaAdd.head.kandoMinus.currentFrame == 1 && Math.floor(MeterPersent.MeterPersentNum) != 1)
               {
                  HeartMinusCheck = true;
               }
               this.charaAdd.head.kandoMinus.gotoAndStop(Math.floor(MeterPersent.MeterPersentNum));
               if(HeartMinusCheck)
               {
                  try
                  {
                     this.charaAdd.head.kandoMinus.faceMask.gotoAndStop(this.charaData["Contour"]["_menu"] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  new Chara_SetSize(this.charaNum,"ContourWidth",this.clickTarget);
                  new Chara_SetSize(this.charaNum,"ContourHeight",this.clickTarget);
                  new SetClass(this.charaNum,"EyeY",this.clickTarget);
                  this.charaAdd.head.kandoMinus.visible = true;
               }
               if(this.charaAdd.head.kandoMinus.currentFrame == 1 && this.charaAdd.head.kandoMinus.visible)
               {
                  this.charaAdd.head.kandoMinus.visible = false;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Eye")
         {
            try
            {
               i = 0;
               while(i <= 1)
               {
                  j = 0;
                  while(j <= 2)
                  {
                     this.charaAdd.head["eye" + i]["eye" + j].gotoAndStop(this.charaData["Eye"]["_menu"] + 1);
                     this.charaAdd.head["eye" + i]["Eyelib" + j].gotoAndStop(this.charaData["Eye"]["_menu"] + 1);
                     this.charaAdd.head["eye" + i]["Eyelib" + j].lib.gotoAndStop(Dress_data.EyelibData[this.charaData["Eyelib"]["_menu"]]["_frame"] + 1);
                     j++;
                  }
                  this.charaAdd.head["eye" + i].eyeMask.gotoAndStop(this.charaData["Eye"]["_menu"] + 1);
                  this.charaAdd.head["eye" + i].eyeWhite.gotoAndStop(this.charaData["Eye"]["_menu"] + 1);
                  EyeSwap0Depth = this.charaAdd.head.getChildIndex(this.charaAdd.head.eye_swap0);
                  EyeDepth = this.charaAdd.head.getChildIndex(this.charaAdd.head.eye0);
                  if(this.charaData["Eye"]["_depth"] == 0)
                  {
                     if(EyeSwap0Depth < EyeDepth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.eye0,this.charaAdd.head.eye_swap0);
                        this.charaAdd.head.swapChildren(this.charaAdd.head.eye1,this.charaAdd.head.eye_swap1);
                     }
                  }
                  else if(EyeSwap0Depth > EyeDepth)
                  {
                     this.charaAdd.head.swapChildren(this.charaAdd.head.eye0,this.charaAdd.head.eye_swap0);
                     this.charaAdd.head.swapChildren(this.charaAdd.head.eye1,this.charaAdd.head.eye_swap1);
                  }
                  i++;
               }
               new SetClass(this.charaNum,"Eyelib","tab");
               new SetClass(this.charaNum,"Lowerlash","tab");
               new SetClass(this.charaNum,"Eyelash","tab");
               new Chara_ColorClass(this.charaNum,"Eye");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Eyelib")
         {
            try
            {
               i = 0;
               while(i <= 1)
               {
                  j = 0;
                  while(j <= 2)
                  {
                     this.charaAdd.head["eye" + i]["Eyelib" + j].lib.gotoAndStop(Dress_data.EyelibData[this.charaData["Eyelib"]["_menu"]]["_frame"] + 1);
                     j++;
                  }
                  i++;
               }
               if(this.charaData["Eyelib"]["_visible"][0])
               {
                  new Emotion_Eye(this.charaNum);
               }
               else
               {
                  i = 0;
                  while(i <= 1)
                  {
                     j = 0;
                     while(j <= 2)
                     {
                        this.charaAdd.head["eye" + i]["Eyelib" + j].visible = false;
                        j++;
                     }
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Eyelash")
         {
            try
            {
               i = 0;
               while(i <= 1)
               {
                  j = 0;
                  while(j <= 2)
                  {
                     this.charaAdd.head["eye" + i]["eye" + j].eyelash.visible = this.charaData["Eyelash"]["_visible"][0];
                     if(this.charaData["Eyelash"]["_visible"][0])
                     {
                        this.charaAdd.head["eye" + i]["eye" + j].eyelash.gotoAndStop(this.charaData["Eyelash"]["_menu"] + 2);
                     }
                     else
                     {
                        if(this.charaAdd.head["eye" + i]["eye" + j].eyelash.currentFrame == 1)
                        {
                           break;
                        }
                        this.charaAdd.head["eye" + i]["eye" + j].eyelash.gotoAndStop(1);
                     }
                     j++;
                  }
                  i++;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Lowerlash")
         {
            try
            {
               if(this.charaData["Lowerlash"]["_menu"] == 0 || this.charaData["Lowerlash"]["_menu"] == 3 || this.charaData["Lowerlash"]["_menu"] == 6 || this.charaData["Lowerlash"]["_menu"] == 9)
               {
                  this.LowerlashNum = 2;
               }
               else if(this.charaData["Lowerlash"]["_menu"] == 1 || this.charaData["Lowerlash"]["_menu"] == 4 || this.charaData["Lowerlash"]["_menu"] == 7 || this.charaData["Lowerlash"]["_menu"] == 10)
               {
                  this.LowerlashNum = 3;
               }
               else if(this.charaData["Lowerlash"]["_menu"] == 2 || this.charaData["Lowerlash"]["_menu"] == 5 || this.charaData["Lowerlash"]["_menu"] == 8 || this.charaData["Lowerlash"]["_menu"] == 11)
               {
                  this.LowerlashNum = 1;
               }
               i = 0;
               while(i <= 1)
               {
                  this.charaAdd.head["eye" + i].eye0.under.visible = this.charaData["Lowerlash"]["_visible"][0];
                  if(this.charaData["Lowerlash"]["_visible"][0])
                  {
                     this.charaAdd.head["eye" + i].eye0.under.gotoAndStop(this.charaData["Lowerlash"]["_menu"] + 2);
                     this.charaAdd.head["eye" + i].eyeWhite.eyeWhite.gotoAndStop(this.LowerlashNum);
                     this.charaAdd.head["eye" + i].eyeMask.eyeWhite.gotoAndStop(this.LowerlashNum);
                  }
                  else
                  {
                     this.charaAdd.head["eye" + i].eye0.under.gotoAndStop(1);
                     this.charaAdd.head["eye" + i].eyeWhite.eyeWhite.gotoAndStop(1);
                     this.charaAdd.head["eye" + i].eyeMask.eyeWhite.gotoAndStop(1);
                  }
                  i++;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeballWidth" || this.tabName == "EyeballXMove" || this.tabName == "EyeballYMove" || this.tabName == "EyeballWidthRight" || this.tabName == "EyeballXMoveRight" || this.tabName == "EyeballYMoveRight")
         {
            try
            {
               new Emotion_Eye(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeballScale" || this.tabName == "EyeballScaleY" || this.tabName == "EyeballX" || this.tabName == "EyeballY")
         {
            try
            {
               if(MenuClass.systemData["LinkEyeballScale"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["EyeballScaleY"]["_meter"] = this.charaData["EyeballScale"]["_meter"];
               }
               new Emotion_Eye(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EmotionEyeLeft" || this.tabName == "EmotionEyeRight")
         {
            try
            {
               if(MenuClass.systemData["LinkEmotionEye"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["EmotionEyeRight"]["_meter"] = this.charaData["EmotionEyeLeft"]["_meter"];
               }
               new Emotion_Eye(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeY")
         {
            try
            {
               new MeterPersent(1,-1,"BodyHeight",this.charaNum);
               BodyHeightNum = MeterPersent.MeterPersentNum;
               new MeterPersent(5,-5,"EyeY",this.charaNum);
               EyeYNum = MeterPersent.MeterPersentNum;
               i = 0;
               while(i <= 1)
               {
                  this.charaAdd.head["eye" + i].y = -5.3 + BodyHeightNum + EyeYNum;
                  this.charaAdd.head.hoho.y = MeterPersent.MeterPersentNum;
                  this.charaAdd.head.kandoPlus.y = MeterPersent.MeterPersentNum;
                  try
                  {
                     this.charaAdd.head.kandoPlus.faceMask.y = -84.3 + MeterPersent.MeterPersentNum * -1;
                  }
                  catch(myError:Error)
                  {
                  }
                  this.charaAdd.head.kandoMinus.y = MeterPersent.MeterPersentNum;
                  try
                  {
                     this.charaAdd.head.kandoMinus.faceMask.y = -84.3 + MeterPersent.MeterPersentNum * -1;
                  }
                  catch(myError:Error)
                  {
                  }
                  i++;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeX")
         {
            new MeterPersent(-3,3,"EyeX",this.charaNum);
            try
            {
               this.charaAdd.head.eye0.x = -18.8 + MeterPersent.MeterPersentNum;
               this.charaAdd.head.eye1.x = 18.8 + MeterPersent.MeterPersentNum * -1;
               this.charaAdd.head.eyebrow0.x = SizeDataClass.bodyDefault_y["eyebrow0X"] + MeterPersent.MeterPersentNum;
               this.charaAdd.head.eyebrow1.x = SizeDataClass.bodyDefault_y["eyebrow1X"] + MeterPersent.MeterPersentNum * -1;
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeScaleY" || this.tabName == "EyeScaleX")
         {
            try
            {
               new Chara_SetSize(this.charaNum,"EyeScale",this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EyeRotation")
         {
            try
            {
               new MeterPersent(1.5,8.4,"EyeRotation",this.charaNum);
               eyeX = MeterPersent.MeterPersentNum;
               new MeterPersent(9.9,3.9,"EyeRotation",this.charaNum);
               eyeY = MeterPersent.MeterPersentNum;
               new MeterPersent(210,160,"EyeRotation",this.charaNum);
               eyeRotation = MeterPersent.MeterPersentNum;
               if(i == 0)
               {
                  new MeterPersent(-2.5,0.5,"EmotionEyeLeft",this.charaNum);
               }
               else
               {
                  new MeterPersent(-2.5,0.5,"EmotionEyeRight",this.charaNum);
               }
               i = 0;
               while(i <= 1)
               {
                  this.charaAdd.head["eye" + i]["eye" + 0].x = this.charaAdd.head["eye" + i]["Eyelib" + 0].x = eyeX;
                  this.charaAdd.head["eye" + i]["eye" + 0].y = eyeY;
                  this.charaAdd.head["eye" + i]["Eyelib" + 0].y = eyeY + MeterPersent.MeterPersentNum;
                  this.charaAdd.head["eye" + i]["eye" + 0].rotation = eyeRotation;
                  this.charaAdd.head["eye" + i]["Eyelib" + 0].rotation = eyeRotation;
                  this.charaAdd.head["eye" + i].eyeMask.x = this.charaAdd.head["eye" + i].eyeWhite.x = eyeX;
                  this.charaAdd.head["eye" + i].eyeMask.y = this.charaAdd.head["eye" + i].eyeWhite.y = eyeY;
                  this.charaAdd.head["eye" + i].eyeWhite.rotation = eyeRotation;
                  this.charaAdd.head["eye" + i].eyeMask.rotation = eyeRotation;

                  try {
                     if (this.charaAdd.head["eye" + i].underMarkAttachPoint) {
                        this.charaAdd.head["eye" + i].underMarkAttachPoint.rotation = eyeRotation;
                     }
                  } catch (err) {
                     trace(err.getStackTrace());
                  }

                  try {
                     if (this.charaAdd.head["eye" + i].overMarkAttachPoint) {
                        this.charaAdd.head["eye" + i].overMarkAttachPoint.rotation = eyeRotation;
                     }
                  } catch (err) {
                     trace(err.getStackTrace());
                  }

                  i++;
               }
               new Emotion_Eye(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EmotionEyebrowLeft" || this.tabName == "EyebrowRotationLeft" || this.tabName == "EyebrowMoveLeft" || this.tabName == "EmotionEyebrowRight" || this.tabName == "EyebrowRotationRight" || this.tabName == "EyebrowMoveRight" || this.tabName == "EyebrowMoveHorizontalLeft" || this.tabName == "EyebrowMoveHorizontalRight")
         {
            try
            {
               if(MenuClass.systemData["LinkEmotionEyebrow"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["EmotionEyebrowRight"]["_menu"] = this.charaData["EmotionEyebrowLeft"]["_menu"];
                  this.charaData["EyebrowRotationRight"]["_meter"] = this.charaData["EyebrowRotationLeft"]["_meter"];
                  this.charaData["EyebrowMoveRight"]["_meter"] = this.charaData["EyebrowMoveLeft"]["_meter"];
                  this.charaData["EyebrowMoveHorizontalRight"]["_meter"] = this.charaData["EyebrowMoveHorizontalLeft"]["_meter"];
               }
               new Emotion_Eyebrow(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "EmotionMouth")
         {
            try
            {
               Huku_MarkSet.clearMouthAttachedMarks(this.charaNum);
               new Emotion_MouthReversal(this.charaNum);
               this.charaAdd.head.mouth.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
               this.charaAdd.head.mouth.sen0.gotoAndStop(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1);
               try
               {
                  this.charaAdd.head.mouth.shita_mc.shita0.gotoAndStop(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1);
                  this.charaAdd.head.mouth.shita_mc.shita1.gotoAndStop(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1);
               }
               catch(myError:Error)
               {
               }
               Huku_MarkSet.updateMouth(this.charaNum);
               this.charaAdd.head.mouth.visible = this.charaData[this.tabName]["_visible"][0];
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "MouthSen")
         {
            try
            {
               this.charaAdd.head.mouth.sen0.gotoAndStop(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1);
               try
               {
                  this.charaAdd.head.mouth.shita_mc.shita0.gotoAndStop(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1);
                  this.charaAdd.head.mouth.shita_mc.shita1.gotoAndStop(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1);
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "MouthHeight" || this.tabName == "MouthWidth" || this.tabName == "MouthScale" || this.tabName == "MouthYMove" || this.tabName == "MouthRotation" || this.tabName == "MouthXMove")
         {
            try
            {
               new Emotion_Mouth(this.charaNum);
               if(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1 != this.charaAdd.head.mouth.sen0.currentFrame)
               {
                  this.charaAdd.head.mouth.sen0.gotoAndStop(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1);
               }
               try
               {
                  if(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1 != this.charaAdd.head.mouth.shita_mc.shita0.currentFrame)
                  {
                     this.charaAdd.head.mouth.shita_mc.shita0.gotoAndStop(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1);
                     this.charaAdd.head.mouth.shita_mc.shita1.gotoAndStop(MenuClass.charaData[this.charaNum]["MouthSen"]["_menu"] + 1);
                  }
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Item0" || this.tabName == "Item1")
         {
            try
            {
               new Huku_Item(this.charaNum,this.tabName,this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Bura" || this.tabName == "Pantu")
         {
            try
            {
               new Huku_BuraPantu(this.tabName,this.charaNum,this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Nawa")
         {
            try
            {
               new Huku_Nawa(this.charaNum,this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NippleGLeft" || this.tabName == "NippleGRight")
         {
            try
            {
               if(this.tabName == "NippleGLeft" && MenuClass.systemData["LinkNippleG"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["NippleGRight"]["_visible"][0] = this.charaData["NippleGLeft"]["_visible"][0];
                  this.charaData["NippleGRight"]["_menu"] = this.charaData["NippleGLeft"]["_menu"];
                  this.menuNum = this.charaData["NippleGRight"]["_menu"];
                  i = 0;
                  while(i <= 2)
                  {
                     this.charaData["NippleGRight"]["_color" + i] = this.clone(this.charaData["NippleGLeft"]["_color" + i]);
                     this.DressCharaData["NippleGRight"][this.menuNum]["_color" + i] = this.clone(this.DressCharaData["NippleGLeft"][this.menuNum]["_color" + i]);
                     i++;
                  }
                  new SetClass(this.charaNum,"NippleGRight","tab");
               }
               this.menuNum = this.charaData[this.tabName]["_menu"];
               if(this.tabName == "NippleGLeft")
               {
                  this.meterNum = 0;
               }
               else
               {
                  this.meterNum = 1;
               }
               this.charaAdd.mune["mune" + this.meterNum].mune.nippleGMask.visible = false;
               if(this.charaData[this.tabName]["_visible"][0] && Dress_data.NippleGData[this.menuNum]["base"] != 0)
               {
                  this.charaAdd.mune["mune" + this.meterNum].mune.Nipple.nippleG.visible = true;
                  this.charaAdd.mune["mune" + this.meterNum].mune.Nipple.nippleG.gotoAndStop(Dress_data.NippleGData[this.menuNum]["base"] + 1);
               }
               else
               {
                  this.charaAdd.mune["mune" + this.meterNum].mune.Nipple.nippleG.visible = false;
                  this.charaAdd.mune["mune" + this.meterNum].mune.Nipple.nippleG.gotoAndStop(1);
               }
               if(this.charaData[this.tabName]["_visible"][0] && Dress_data.NippleGData[this.menuNum]["ring"] != 0)
               {
                  this.charaAdd.mune["mune" + this.meterNum].mune.NippleG.nippleG.visible = true;
                  this.charaAdd.mune["mune" + this.meterNum].mune.NippleG.nippleG.gotoAndStop(Dress_data.NippleGData[this.menuNum]["ring"] + 1);
               }
               else
               {
                  this.charaAdd.mune["mune" + this.meterNum].mune.NippleG.nippleG.visible = false;
                  this.charaAdd.mune["mune" + this.meterNum].mune.NippleG.nippleG.gotoAndStop(1);
               }
               new Huku_NippleGMask(this.charaNum,this.meterNum);
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  new Huku_NippleGLine(this.charaNum,this.tabName,this.meterNum);
                  new Chara_ColorClass(this.charaNum,this.tabName);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NippleGLeftSize")
         {
            try
            {
               if(this.charaData["NippleGLeft"]["_visible"][0])
               {
                  if(MenuClass.systemData["LinkNippleG"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
                  {
                     this.charaData["NippleGRightSize"]["_meter"] = this.charaData["NippleGLeftSize"]["_meter"];
                     new SetClass(this.charaNum,"NippleGRightSize","tab");
                  }
                  new MeterPersent(0.5,1.3,"NippleGLeftSize",this.charaNum);
                  this.charaAdd.mune["mune" + 0].mune.Nipple.nippleG.scaleX = this.charaAdd.mune["mune" + 0].mune.Nipple.nippleG.scaleY = MeterPersent.MeterPersentNum;
                  this.charaAdd.mune["mune" + 0].mune.NippleG.nippleG.scaleX = this.charaAdd.mune["mune" + 0].mune.NippleG.nippleG.scaleY = MeterPersent.MeterPersentNum;
                  new Huku_NippleGLine(this.charaNum,this.tabName,0);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "NippleGRightSize")
         {
            try
            {
               if(this.charaData["NippleGRight"]["_visible"][0])
               {
                  new MeterPersent(0.5,1.3,"NippleGRightSize",this.charaNum);
                  this.charaAdd.mune["mune" + 1].mune.Nipple.nippleG.scaleX = this.charaAdd.mune["mune" + 1].mune.Nipple.nippleG.scaleY = MeterPersent.MeterPersentNum;
                  this.charaAdd.mune["mune" + 1].mune.NippleG.nippleG.scaleX = this.charaAdd.mune["mune" + 1].mune.NippleG.nippleG.scaleY = MeterPersent.MeterPersentNum;
                  new Huku_NippleGLine(this.charaNum,this.tabName,1);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "SG")
         {
            try
            {
               this.charaAdd.dou.dou_shitaHuku.SG.visible = this.charaData["SG"]["_visible"][0];
               if(this.charaData["SG"]["_visible"][0])
               {
                  this.charaAdd.dou.dou_shitaHuku.SG.SG.gotoAndStop(this.charaData["SG"]["_menu"] + 2);
               }
               else
               {
                  this.charaAdd.dou.dou_shitaHuku.SG.SG.gotoAndStop(1);
               }
               new Huku_Vibrator(this.charaNum);
               new Tab_SetClass();
               try
               {
                  this.charaAdd.dou.dou_shitaHuku.SG.SG.suji.gotoAndStop(this.charaData["s"]["_menu"] + 1);
               }
               catch(myError:Error)
               {
               }
               this.thinghNum = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
               if(this.thinghNum[0] >= 1 || this.thinghNum[1] >= 1)
               {
                  this.charaAdd.dou.dou_shitaHuku.SG.sen.gotoAndStop(2);
                  this.charaAdd.dou.dou_shitaHuku.SG.maskMc.gotoAndStop(2);
               }
               else
               {
                  this.charaAdd.dou.dou_shitaHuku.SG.sen.gotoAndStop(1);
                  this.charaAdd.dou.dou_shitaHuku.SG.maskMc.gotoAndStop(1);
               }
               new Chara_ColorClass(this.charaNum,"SG");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "SGSize")
         {
            try
            {
               new MeterPersent(0.5,1.3,"SGSize",this.charaNum);
               this.thinghNum = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
               mjiNum = 0;
               if(this.thinghNum[0] >= 1 || this.thinghNum[1] >= 1)
               {
                  mjiNum = -0.1;
               }
               try
               {
                  this.charaAdd.dou.dou_shitaHuku.SG.SG.scaleY = MeterPersent.MeterPersentNum;
                  this.charaAdd.dou.dou_shitaHuku.SG.SG.scaleX = MeterPersent.MeterPersentNum + mjiNum;
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Vibrator")
         {
            try
            {
               new Huku_VibratorSet(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "VibratorMove")
         {
            try
            {
               if(this.charaData["Vibrator"]["_visible"][0])
               {
                  MenuClass.vibratorMoveBefore[this.charaNum] = this.charaData["VibratorMove"]["_menu"];
                  if(this.clickTarget != "huku")
                  {
                     this.charaData["VibratorMove"]["_count"] = 1;
                     this.charaData["VibratorMove"]["_return"] = 0;
                     MenuClass.EmotionRandom[this.charaNum] = 1;
                  }
                  else
                  {
                     this.charaData["VibratorMove"]["_mosaicMode"] = Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][6];
                     thinghNum = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
                     if(thinghNum[0] == 0 && thinghNum[1] == 0 || MenuClass.systemData["Mosaic"]["_menu"] != 0)
                     {
                        try
                        {
                           if(this.charaAdd.mosaic.mosaic.color0_0.currentFrame != 1)
                           {
                              this.charaAdd.mosaic.mosaic.color0_0.gotoAndStop(1);
                           }
                           this.charaAdd.mosaic.mosaic.color0_0.y = 0;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else if(this.charaData["VibratorMove"]["_mosaicMode"] == 0)
                     {
                        try
                        {
                           if(this.charaAdd.mosaic.mosaic.color0_0.currentFrame != 2)
                           {
                              this.charaAdd.mosaic.mosaic.color0_0.gotoAndStop(2);
                           }
                           this.charaAdd.mosaic.mosaic.color0_0.y = 1.05;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else
                     {
                        try
                        {
                           if(this.charaAdd.mosaic.mosaic.color0_0.currentFrame != 1)
                           {
                              this.charaAdd.mosaic.mosaic.color0_0.gotoAndStop(1);
                           }
                           this.charaAdd.mosaic.mosaic.color0_0.y = -5;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                  }
                  if(isNaN(Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][2]))
                  {
                     h = 0;
                     while(h <= 2)
                     {
                        j = 0;
                        while(j <= 1)
                        {
                           try
                           {
                              this.charaAdd.vibrator.vibrator.item["color" + h + "_" + j].gotoAndPlay(Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][2]);
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd.vibrator.vibrator.item["kage" + h + "_" + j].gotoAndPlay(Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][2]);
                           }
                           catch(myError:Error)
                           {
                           }
                           j++;
                        }
                        try
                        {
                           this.charaAdd.vibrator.vibrator.item["obj" + h].gotoAndPlay(Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][2]);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.vibrator.vibrator.item["sen" + h].gotoAndPlay(Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][2]);
                        }
                        catch(myError:Error)
                        {
                        }
                        h++;
                     }
                  }
                  try
                  {
                     if(Dress_data.VibratorData[this.charaData["Vibrator"]["_menu"]]["sen"] == 1)
                     {
                        this.charaAdd.vibrator.senMc.mask = this.charaAdd.vibrator.vibrator.item.senMask;
                        this.charaAdd.vibrator.senMc.gotoAndStop(Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][7]);
                     }
                     this.charaAdd.vibrator.maskMc.gotoAndStop(Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][7]);
                  }
                  catch(myError:Error)
                  {
                  }
                  new Chara_s(this.charaNum,"tab");
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "VibratorThrough")
         {
            try
            {
               if(this.charaData["Vibrator"]["_visible"][0])
               {
                  new Huku_Vibrator(this.charaNum);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "VibratorScale")
         {
            try
            {
               new MeterPersent(1,1.35,"VibratorScale",this.charaNum);
               h = 0;
               while(h <= 2)
               {
                  j = 0;
                  while(j <= 1)
                  {
                     try
                     {
                        this.charaAdd.vibrator.vibrator.item["color" + h + "_" + j].scaleX = this.charaAdd.vibrator.vibrator.item["color" + h + "_" + j].scaleY = MeterPersent.MeterPersentNum;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        this.charaAdd.vibrator.vibrator.item["kage" + h + "_" + j].scaleX = this.charaAdd.vibrator.vibrator.item["kage" + h + "_" + j].scaleY = MeterPersent.MeterPersentNum;
                     }
                     catch(myError:Error)
                     {
                     }
                     j++;
                  }
                  try
                  {
                     this.charaAdd.vibrator.vibrator.item["obj" + h].scaleX = this.charaAdd.vibrator.vibrator.item["obj" + h].scaleY = MeterPersent.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.vibrator.vibrator.item["sen" + h].scaleX = this.charaAdd.vibrator.vibrator.item["sen" + h].scaleY = MeterPersent.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
                  h++;
               }
               if(Dress_data.VibratorData[this.charaData["Vibrator"]["_menu"]]["sen"] == 1)
               {
                  try
                  {
                     this.charaAdd.vibrator.vibrator.item.senMask.scaleX = this.charaAdd.vibrator.vibrator.item.senMask.scaleY = MeterPersent.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               try
               {
                  this.charaAdd.vibrator.vibrator.item.mosaic.scaleX = this.charaAdd.vibrator.vibrator.item.mosaic.scaleY = MeterPersent.MeterPersentNum;
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Kutu0" || this.tabName == "Kutu1" || this.tabName == "KutuLong0" || this.tabName == "KutuLong1")
         {
            try
            {
               if(this.tabName == "Kutu0" || this.tabName == "KutuLong0")
               {
                  new Huku_Kutu(this.charaNum,0,this.clickTarget);
               }
               else
               {
                  new Huku_Kutu(this.charaNum,1,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Socks0" || this.tabName == "Socks1")
         {
            try
            {
               if(this.tabName == "Socks0")
               {
                  new Huku_Socks(this.charaNum,0,this.clickTarget);
               }
               else
               {
                  new Huku_Socks(this.charaNum,1,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "LegBand0" || this.tabName == "LegBand1")
         {
            try
            {
               if(this.tabName == "LegBand0")
               {
                  new Huku_LegBand(this.charaNum,0,this.clickTarget);
               }
               else
               {
                  new Huku_LegBand(this.charaNum,1,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Tights")
         {
            try
            {
               new Huku_Tights(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Seihuku" || this.tabName == "SeihukuLeftArm" || this.tabName == "SeihukuRightArm")
         {
            try
            {
               if(MenuClass.systemData["LinkSeihukuArm"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["SeihukuRightArm"]["_menu"] = this.charaData["SeihukuLeftArm"]["_menu"];
                  this.menuNum = this.charaData["SeihukuRightArm"]["_menu"];
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaData["SeihukuRightArm"]["_color" + i] = this.clone(this.charaData["SeihukuLeftArm"]["_color" + i]);
                     this.DressCharaData["SeihukuRightArm"][this.menuNum]["_color" + i] = this.clone(this.DressCharaData["SeihukuLeftArm"][this.menuNum]["_color" + i]);
                     i++;
                  }
               }
               new Huku_Seihuku(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Ysyatu" || this.tabName == "YsyatuDou" || this.tabName == "YsyatuOption" || this.tabName == "YsyatuSkirt" || this.tabName == "YsyatuLeftArm" || this.tabName == "YsyatuRightArm")
         {
            try
            {
               n = Dress_data.menuCustom["YsyatuDou"].length - 1;
               i = 0;
               while(i <= n)
               {
                  if(this.charaData["YsyatuDou"]["_menu"] == Dress_data.menuCustom["YsyatuDou"][i])
                  {
                     Dress_data.menuCustomNum[this.charaNum]["YsyatuDou"] = i;
                     break;
                  }
                  i++;
               }
               n = Dress_data.menuCustom["YsyatuSkirt"].length - 1;
               i = 0;
               while(i <= n)
               {
                  if(this.charaData["YsyatuSkirt"]["_menu"] == Dress_data.menuCustom["YsyatuSkirt"][i])
                  {
                     Dress_data.menuCustomNum[this.charaNum]["YsyatuSkirt"] = i;
                     break;
                  }
                  i++;
               }
               if(MenuClass.systemData["LinkYsyatuArm"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["YsyatuRightArm"]["_menu"] = this.charaData["YsyatuLeftArm"]["_menu"];
                  this.menuNum = this.charaData["YsyatuRightArm"]["_menu"];
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaData["YsyatuRightArm"]["_color" + i] = this.clone(this.charaData["YsyatuLeftArm"]["_color" + i]);
                     this.DressCharaData["YsyatuRightArm"][this.menuNum]["_color" + i] = this.clone(this.DressCharaData["YsyatuLeftArm"][this.menuNum]["_color" + i]);
                     i++;
                  }
               }
               if(this.charaData["Necklace"]["_visible"][0] && this.clickTarget != "Necklace")
               {
                  new SetClass(this.charaNum,"Necklace","Ysyatu");
               }
               new Huku_Ysyatu(this.charaNum,this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Tsyatu" || this.tabName == "TsyatuDou" || this.tabName == "TsyatuSkirt" || this.tabName == "TsyatuLeftArm" || this.tabName == "TsyatuRightArm")
         {
            try
            {
               n = Dress_data.menuCustom["TsyatuDou"].length - 1;
               i = 0;
               while(i <= n)
               {
                  if(this.charaData["TsyatuDou"]["_menu"] == Dress_data.menuCustom["TsyatuDou"][i])
                  {
                     Dress_data.menuCustomNum[this.charaNum]["TsyatuDou"] = i;
                     break;
                  }
                  i++;
               }
               n = Dress_data.menuCustom["TsyatuSkirt"].length - 1;
               i = 0;
               while(i <= n)
               {
                  if(this.charaData["TsyatuSkirt"]["_menu"] == Dress_data.menuCustom["TsyatuSkirt"][i])
                  {
                     Dress_data.menuCustomNum[this.charaNum]["TsyatuSkirt"] = i;
                     break;
                  }
                  i++;
               }
               if(MenuClass.systemData["LinkTsyatuArm"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["TsyatuRightArm"]["_menu"] = this.charaData["TsyatuLeftArm"]["_menu"];
                  this.menuNum = this.charaData["TsyatuRightArm"]["_menu"];
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaData["TsyatuRightArm"]["_color" + i] = this.clone(this.charaData["TsyatuLeftArm"]["_color" + i]);
                     this.DressCharaData["TsyatuRightArm"][this.menuNum]["_color" + i] = this.clone(this.DressCharaData["TsyatuLeftArm"][this.menuNum]["_color" + i]);
                     i++;
                  }
               }
               new Huku_Tsyatu(this.charaNum,this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Vest" || this.tabName == "VestDou" || this.tabName == "VestSkirt" || this.tabName == "VestLeftArm" || this.tabName == "VestRightArm")
         {
            try
            {
               n = Dress_data.menuCustom["VestDou"].length - 1;
               i = 0;
               while(i <= n)
               {
                  if(this.charaData["VestDou"]["_menu"] == Dress_data.menuCustom["VestDou"][i])
                  {
                     Dress_data.menuCustomNum[this.charaNum]["VestDou"] = i;
                     break;
                  }
                  i++;
               }
               n = Dress_data.menuCustom["VestSkirt"].length - 1;
               i = 0;
               while(i <= n)
               {
                  if(this.charaData["VestSkirt"]["_menu"] == Dress_data.menuCustom["VestSkirt"][i])
                  {
                     Dress_data.menuCustomNum[this.charaNum]["VestSkirt"] = i;
                     break;
                  }
                  i++;
               }
               if(MenuClass.systemData["LinkVestArm"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
               {
                  this.charaData["VestRightArm"]["_menu"] = this.charaData["VestLeftArm"]["_menu"];
                  this.menuNum = this.charaData["VestRightArm"]["_menu"];
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaData["VestRightArm"]["_color" + i] = this.clone(this.charaData["VestLeftArm"]["_color" + i]);
                     this.DressCharaData["VestRightArm"][this.menuNum]["_color" + i] = this.clone(this.DressCharaData["VestLeftArm"][this.menuNum]["_color" + i]);
                     i++;
                  }
               }
               new Huku_Vest(this.charaNum,this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "VestDouOption" || this.tabName == "TsyatuDouOption" || this.tabName == "YsyatuDouOption" || this.tabName == "SeihukuDouOption")
         {
            try
            {
               skirtNum = 0;
               try
               {
                  if(this.tabName == "VestDouOption")
                  {
                     this.hukuName = "Vest";
                     skirtNum = this.charaData[this.hukuName + "Skirt"]["_menu"];
                     this.obj = this.charaAdd.dou[this.hukuName + "Dou"].ysyatu.ysyatu.ysyatu;
                  }
                  else if(this.tabName == "TsyatuDouOption")
                  {
                     this.hukuName = "Tsyatu";
                     skirtNum = this.charaData[this.hukuName + "Skirt"]["_menu"];
                     this.obj = this.charaAdd.dou[this.hukuName + "Dou"].ysyatu.ysyatu.ysyatu;
                  }
                  else if(this.tabName == "SeihukuDouOption")
                  {
                     this.hukuName = "Seihuku";
                     this.obj = this.charaAdd.dou[this.hukuName + "Dou"].seihuku.seihuku;
                  }
                  else if(this.tabName == "YsyatuDouOption")
                  {
                     this.hukuName = "Ysyatu";
                     skirtNum = this.charaData[this.hukuName + "Skirt"]["_menu"];
                     this.obj = this.charaAdd.dou[this.hukuName + "Dou"].ysyatu.ysyatu.ysyatu;
                  }
               }
               catch(myError:Error)
               {
               }
               if(skirtNum != 1)
               {
                  try
                  {
                     if(!this.obj.douOption0.douOption0)
                     {
                        douOption0 = new MovieClip();
                        douOption0 = new Chara_Loading.breastOptionClass();
                        this.obj.douOption0.addChild(douOption0);
                        this.obj.douOption0.douOption0 = douOption0;
                     }
                     if(!this.obj.douOption1.douOption1)
                     {
                        douOption1 = new MovieClip();
                        douOption1 = new Chara_Loading.breastOptionClass();
                        this.obj.douOption1.addChild(douOption1);
                        this.obj.douOption1.douOption1 = douOption1;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if(this.charaData[this.hukuName + "DouOption"]["_number"] <= 4)
                     {
                        this.obj.douOption0.douOption0.scaleX = 1;
                        this.obj.douOption0.douOption0.scaleY = 1;
                        this.obj.douOption1.douOption1.scaleX = 1;
                        this.obj.douOption1.douOption1.scaleY = 1;
                     }
                     else if(this.charaData[this.hukuName + "DouOption"]["_number"] <= 9)
                     {
                        this.obj.douOption0.douOption0.scaleX = 1.2;
                        this.obj.douOption0.douOption0.scaleY = 1.2;
                        this.obj.douOption1.douOption1.scaleX = 1.2;
                        this.obj.douOption1.douOption1.scaleY = 1.2;
                     }
                     else if(this.charaData[this.hukuName + "DouOption"]["_number"] <= 14)
                     {
                        this.obj.douOption0.douOption0.scaleX = 1.4;
                        this.obj.douOption0.douOption0.scaleY = 1.4;
                        this.obj.douOption1.douOption1.scaleX = 1.4;
                        this.obj.douOption1.douOption1.scaleY = 1.4;
                     }
                     if(this.charaData[this.hukuName + "DouOption"]["_number"] == 0 || this.charaData[this.hukuName + "DouOption"]["_number"] == 5 || this.charaData[this.hukuName + "DouOption"]["_number"] == 10)
                     {
                        this.obj.douOption0.douOption0.rotation = -10;
                        this.obj.douOption1.douOption1.rotation = -10;
                        this.obj.douOption0.douOption0.x = -4;
                        this.obj.douOption1.douOption1.x = -4;
                     }
                     else if(this.charaData[this.hukuName + "DouOption"]["_number"] == 1 || this.charaData[this.hukuName + "DouOption"]["_number"] == 6 || this.charaData[this.hukuName + "DouOption"]["_number"] == 11)
                     {
                        this.obj.douOption0.douOption0.rotation = 0;
                        this.obj.douOption1.douOption1.rotation = 0;
                        this.obj.douOption0.douOption0.x = -3;
                        this.obj.douOption1.douOption1.x = -3;
                     }
                     else if(this.charaData[this.hukuName + "DouOption"]["_number"] == 2 || this.charaData[this.hukuName + "DouOption"]["_number"] == 7 || this.charaData[this.hukuName + "DouOption"]["_number"] == 12)
                     {
                        this.obj.douOption0.douOption0.rotation = 10;
                        this.obj.douOption1.douOption1.rotation = 10;
                        this.obj.douOption0.douOption0.x = -1;
                        this.obj.douOption1.douOption1.x = -1;
                     }
                     else if(this.charaData[this.hukuName + "DouOption"]["_number"] == 3 || this.charaData[this.hukuName + "DouOption"]["_number"] == 8 || this.charaData[this.hukuName + "DouOption"]["_number"] == 13)
                     {
                        this.obj.douOption0.douOption0.rotation = 15;
                        this.obj.douOption1.douOption1.rotation = 15;
                        this.obj.douOption0.douOption0.x = 0;
                        this.obj.douOption1.douOption1.x = 0;
                     }
                     else if(this.charaData[this.hukuName + "DouOption"]["_number"] == 4 || this.charaData[this.hukuName + "DouOption"]["_number"] == 9 || this.charaData[this.hukuName + "DouOption"]["_number"] == 14)
                     {
                        this.obj.douOption0.douOption0.rotation = 20;
                        this.obj.douOption1.douOption1.rotation = 20;
                        this.obj.douOption0.douOption0.x = 0;
                        this.obj.douOption1.douOption1.x = 0;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
               n = Dress_data.menuCustom[this.hukuName + "DouOption"].length - 1;
               i = 0;
               while(i <= n)
               {
                  if(this.charaData[this.hukuName + "DouOption"]["_menu"] == Dress_data.menuCustom[this.hukuName + "DouOption"][i])
                  {
                     Dress_data.menuCustomNum[this.charaNum][this.hukuName + "DouOption"] = i;
                     break;
                  }
                  i++;
               }
               this.charaData[this.hukuName + "DouOption"]["_menu"] = Dress_data.menuCustom[this.hukuName + "DouOption"][Dress_data.menuCustomNum[this.charaNum][this.hukuName + "DouOption"]];
               this.menuNum = this.charaData[this.hukuName + "DouOption"]["_menu"];
               try
               {
                  if(this.menuNum == 0)
                  {
                     this.obj.douOption0.visible = false;
                     this.obj.douOption1.visible = false;
                  }
                  else
                  {
                     this.obj.douOption0.visible = true;
                     this.obj.douOption1.visible = true;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.obj.douOption0.douOption0.gotoAndStop(this.menuNum);
                  this.obj.douOption1.douOption1.gotoAndStop(this.menuNum);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(this.DressCharaData[this.hukuName + "DouOption"][this.menuNum]["_color0"][1] == 2)
                  {
                     this.charaData[this.hukuName + "DouOption"]["_color0"][0] = this.charaData[this.hukuName]["_color0"][0];
                     this.DressCharaData[this.hukuName + "DouOption"][this.menuNum]["_color0"][0] = this.charaData[this.hukuName]["_color0"][0];
                     if(this.DressCharaData[this.hukuName + "DouOption"][this.menuNum]["_color1"][1] == 2)
                     {
                        this.charaData[this.hukuName + "DouOption"]["_color1"][0] = this.charaData[this.hukuName]["_color0"][0];
                        this.DressCharaData[this.hukuName + "DouOption"][this.menuNum]["_color1"][0] = this.charaData[this.hukuName]["_color0"][0];
                     }
                     if(this.DressCharaData[this.hukuName + "DouOption"][this.menuNum]["_color2"][1] == 2)
                     {
                        this.charaData[this.hukuName + "DouOption"]["_color2"][0] = this.charaData[this.hukuName]["_color0"][0];
                        this.DressCharaData[this.hukuName + "DouOption"][this.menuNum]["_color2"][0] = this.charaData[this.hukuName]["_color0"][0];
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               new Chara_ColorClass(this.charaNum,this.hukuName + "DouOption");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "VestBreastOption" || this.tabName == "TsyatuBreastOption" || this.tabName == "YsyatuBreastOption" || this.tabName == "SeihukuBreastOption")
         {
            try
            {
               if(this.tabName == "VestBreastOption")
               {
                  this.hukuName = "Vest";
               }
               else if(this.tabName == "TsyatuBreastOption")
               {
                  this.hukuName = "Tsyatu";
               }
               else if(this.tabName == "SeihukuBreastOption")
               {
                  this.hukuName = "Seihuku";
               }
               else if(this.tabName == "YsyatuBreastOption")
               {
                  this.hukuName = "Ysyatu";
                  if(this.charaData["Ysyatu"]["_menu"] == 6)
                  {
                     if(this.charaData[this.hukuName + "BreastOption"]["_menu"] != 0)
                     {
                        try
                        {
                           this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + 0].ysyatu.obj0.visible = false;
                           this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + 1].ysyatu.obj0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else
                     {
                        try
                        {
                           this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + 0].ysyatu.obj0.visible = true;
                           this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + 1].ysyatu.obj0.visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                  }
               }
               try
               {
                  if(!this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + 0].ysyatu.breastOption["breastOption0"])
                  {
                     breastOption0 = new MovieClip();
                     breastOption0 = new Chara_Loading.breastOptionClass();
                     this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + 0].ysyatu.breastOption.addChild(breastOption0);
                     this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + 0].ysyatu.breastOption["breastOption0"] = breastOption0;
                  }
                  if(!this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + 1].ysyatu.breastOption["breastOption1"])
                  {
                     breastOption1 = new MovieClip();
                     breastOption1 = new Chara_Loading.breastOptionClass();
                     this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + 1].ysyatu.breastOption.addChild(breastOption1);
                     this.charaAdd.mune[this.hukuName + "Mune"]["ysyatu" + 1].ysyatu.breastOption["breastOption1"] = breastOption1;
                  }
               }
               catch(myError:Error)
               {
               }
               n = Dress_data.menuCustom[this.hukuName + "BreastOption"].length - 1;
               i = 0;
               while(i <= n)
               {
                  if(this.charaData[this.hukuName + "BreastOption"]["_menu"] == Dress_data.menuCustom[this.hukuName + "BreastOption"][i])
                  {
                     Dress_data.menuCustomNum[this.charaNum][this.hukuName + "BreastOption"] = i;
                     break;
                  }
                  i++;
               }
               try
               {
                  this.charaData[this.hukuName + "BreastOption"]["_menu"] = Dress_data.menuCustom[this.hukuName + "BreastOption"][Dress_data.menuCustomNum[this.charaNum][this.hukuName + "BreastOption"]];
                  this.menuNum = this.charaData[this.hukuName + "BreastOption"]["_menu"];
                  try
                  {
                     if(this.DressCharaData[this.hukuName + "BreastOption"][this.menuNum]["_color0"][1] == 2)
                     {
                        this.charaData[this.hukuName + "BreastOption"]["_color0"][0] = this.charaData[this.hukuName]["_color0"][0];
                        this.DressCharaData[this.hukuName + "BreastOption"][this.menuNum]["_color0"][0] = this.charaData[this.hukuName]["_color0"][0];
                        if(this.DressCharaData[this.hukuName + "BreastOption"][this.menuNum]["_color1"][1] == 2)
                        {
                           this.charaData[this.hukuName + "BreastOption"]["_color1"][0] = this.charaData[this.hukuName]["_color0"][0];
                           this.DressCharaData[this.hukuName + "BreastOption"][this.menuNum]["_color1"][0] = this.charaData[this.hukuName]["_color0"][0];
                        }
                        if(this.DressCharaData[this.hukuName + "BreastOption"][this.menuNum]["_color2"][1] == 2)
                        {
                           this.charaData[this.hukuName + "BreastOption"]["_color2"][0] = this.charaData[this.hukuName]["_color0"][0];
                           this.DressCharaData[this.hukuName + "BreastOption"][this.menuNum]["_color2"][0] = this.charaData[this.hukuName]["_color0"][0];
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  if(this.menuNum == 0)
                  {
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu0.ysyatu.breastOption.visible = false;
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu1.ysyatu.breastOption.visible = false;
                  }
                  else if(this.charaData[this.hukuName + "BreastOption"]["_reversal2"] == 2)
                  {
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu0.ysyatu.breastOption.breastOption0.gotoAndStop(this.menuNum);
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu0.ysyatu.breastOption.visible = true;
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu1.ysyatu.breastOption.visible = false;
                  }
                  else if(this.charaData[this.hukuName + "BreastOption"]["_reversal2"] == 1)
                  {
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu1.ysyatu.breastOption.breastOption1.gotoAndStop(this.menuNum);
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu0.ysyatu.breastOption.visible = false;
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu1.ysyatu.breastOption.visible = true;
                  }
                  else if(this.charaData[this.hukuName + "BreastOption"]["_reversal2"] == 0)
                  {
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu0.ysyatu.breastOption.breastOption0.gotoAndStop(this.menuNum);
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu1.ysyatu.breastOption.breastOption1.gotoAndStop(this.menuNum);
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu0.ysyatu.breastOption.visible = true;
                     this.charaAdd.mune[this.hukuName + "Mune"].ysyatu1.ysyatu.breastOption.visible = true;
                  }
               }
               catch(myError:Error)
               {
               }
               new Chara_ColorClass(this.charaNum,this.hukuName + "BreastOption");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Skirt")
         {
            try
            {
               if(this.charaData["Skirt"]["_visible"][0])
               {
                  this.charaData["Zubon"]["_depth"] = this.charaData["Skirt"]["_depth"];
               }
               new Huku_Skirt(this.charaNum,"Skirt");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Zubon")
         {
            try
            {
               if(this.charaData["Zubon"]["_visible"][0])
               {
                  this.charaData["Skirt"]["_depth"] = this.charaData["Zubon"]["_depth"];
               }
               new Huku_Zubon(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "ZubonAshi0" || this.tabName == "ZubonAshi1")
         {
            try
            {
               if(this.charaData["Zubon"]["_visible"][0])
               {
                  if(this.tabName == "ZubonAshi0")
                  {
                     new Huku_ZubonAshi(this.charaNum,0);
                     if(MenuClass.systemData["LinkZubon"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
                     {
                        this.charaData["ZubonAshi1"]["_menu"] = this.charaData["ZubonAshi0"]["_menu"];
                        this.menuNum = this.charaData["ZubonAshi0"]["_menu"];
                        i = 0;
                        while(i <= 2)
                        {
                           this.charaData["ZubonAshi1"]["_color" + i] = this.clone(this.charaData["ZubonAshi0"]["_color" + i]);
                           this.DressCharaData["ZubonAshi1"][this.menuNum]["_color" + i] = this.clone(this.DressCharaData["ZubonAshi0"][this.menuNum]["_color" + i]);
                           i++;
                        }
                        new Huku_ZubonAshi(this.charaNum,1);
                     }
                  }
                  else
                  {
                     new Huku_ZubonAshi(this.charaNum,1);
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Megane")
         {
            try
            {
               new Huku_Megane(this.charaNum,this.clickTarget);
               new SetClass(this.charaNum,"MeganeY","tab");
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "MeganeY")
         {
            try
            {
               new MeterPersent(40,-40,"MeganeY",this.charaNum);
               try
               {
                  this.charaAdd.head.Megane.megane0.y = MeterPersent.MeterPersentNum;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane1.y = MeterPersent.MeterPersentNum;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.maskMc.y = MeterPersent.MeterPersentNum;
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Headband")
         {
            try
            {
               new Huku_Headband(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Hat")
         {
            try
            {
               n = Dress_data.menuCustom["Hat"].length - 1;
               i = 0;
               while(i <= n)
               {
                  if(this.charaData["Hat"]["_menu"] == Dress_data.menuCustom["Hat"][i])
                  {
                     Dress_data.menuCustomNum[this.charaNum]["Hat"] = i;
                     break;
                  }
                  i++;
               }
               this.charaData["Hat"]["_menu"] = Dress_data.menuCustom["Hat"][Dress_data.menuCustomNum[this.charaNum]["Hat"]];
               this.menuNum = this.charaData["Hat"]["_menu"];
               this.charaAdd.head.Hat.visible = this.charaData["Hat"]["_visible"][0];
               if(this.charaData["Hat"]["_visible"][0])
               {
                  this.charaAdd.head.Hat.gotoAndStop(this.menuNum + 2);
               }
               else
               {
                  this.charaAdd.head.Hat.gotoAndStop(1);
               }
               new Hair_ScaleX(this.charaNum);
               this.charaAdd.head.Hat.scaleY = 1 + Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hatScale"];
               this.charaAdd.head.Hat.y = Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hatY"];
               if(this.charaData["Hat"]["_reversal"])
               {
                  this.charaAdd.head.Hat.scaleX = 1 + Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hatScale"];
               }
               else
               {
                  this.charaAdd.head.Hat.scaleX = (1 + Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hatScale"]) * -1;
               }
               new SetClass(this.charaNum,"Bangs","tab");
               new SetClass(this.charaNum,"HairBack","tab");
               new SetClass(this.charaNum,"SideBurnLeft","tab");
               new SetClass(this.charaNum,"SideBurnRight","tab");
               i = 0;
               while(i <= Main.hukusuuNum)
               {
                  if(this.charaData["HairExPlus"]["_visible"][i])
                  {
                     if(this.charaData["Hat"]["_visible"][0])
                     {
                        if(this.charaData["Hat"]["_hair3"] == 0)
                        {
                           try
                           {
                              this.charaAdd["HairEx" + i + "_0"].visible = false;
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd["HairEx" + i + "_1"].visible = false;
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                        else
                        {
                           try
                           {
                              this.charaAdd["HairEx" + i + "_0"].visible = true;
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd["HairEx" + i + "_1"].visible = true;
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                     }
                     else
                     {
                        try
                        {
                           this.charaAdd["HairEx" + i + "_0"].visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd["HairEx" + i + "_1"].visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                  }
                  i++;
               }
               i = 0;
               while(i <= Main.RibonhukusuuNum)
               {
                  if(this.charaData["RibonPlus"]["_visible"][i])
                  {
                     if(this.charaData["Hat"]["_visible"][0])
                     {
                        if(this.charaData["Hat"]["_hair4"] == 0)
                        {
                           if(this.charaData["RibonAdd" + i]["_add0"] == 0 || this.charaData["RibonAdd" + i]["_add0"] == 1)
                           {
                              try
                              {
                                 this.charaAdd["Ribon" + i + "_0"].visible = false;
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 this.charaAdd["Ribon" + i + "_1"].visible = false;
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 this.charaAdd.head["Ribon" + i + "_0"].visible = false;
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 this.charaAdd.head["Ribon" + i + "_1"].visible = false;
                              }
                              catch(myError:Error)
                              {
                              }
                           }
                        }
                        else if(this.charaData["RibonAdd" + i]["_add0"] == 0 || this.charaData["RibonAdd" + i]["_add0"] == 1)
                        {
                           try
                           {
                              this.charaAdd["Ribon" + i + "_0"].visible = true;
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd["Ribon" + i + "_1"].visible = true;
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd.head["Ribon" + i + "_0"].visible = true;
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd.head["Ribon" + i + "_1"].visible = true;
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                     }
                     else if(this.charaData["RibonAdd" + i]["_add0"] == 0 || this.charaData["RibonAdd" + i]["_add0"] == 1)
                     {
                        try
                        {
                           this.charaAdd["Ribon" + i + "_0"].visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd["Ribon" + i + "_1"].visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.head["Ribon" + i + "_0"].visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.head["Ribon" + i + "_1"].visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                  }
                  i++;
               }
               if(Dress_data.HatData[this.menuNum]["back2"] != 0)
               {
                  this.charaAdd.HatBack.visible = this.charaData["Hat"]["_visible"][0];
                  if(this.charaData["Hat"]["_visible"][0])
                  {
                     this.charaAdd.HatBack.gotoAndStop(Dress_data.HatData[this.menuNum]["back2"] + 1);
                  }
                  else
                  {
                     this.charaAdd.HatBack.gotoAndStop(1);
                  }
                  new Chara_SetSize(this.charaNum,"HeadScale",this.clickTarget);
               }
               else
               {
                  this.charaAdd.HatBack.visible = false;
               }
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "MarkPlus")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "pasteRibon")
               {
                  new SetLinkData(this.charaNum);
                  new Huku_MarkSet(this.charaNum,MenuClass.systemData["MarkPlus"]["_menu"],this.clickTarget);
               }
               else if(this.clickTarget == "huku")
               {
                  new Huku_MarkSet(this.charaNum,int(HukuClickClass.plusNum),this.clickTarget);
               }
               else if(this.clickTarget != "paste")
               {
                  i = 0;
                  while(i <= Main.hukusuuNum)
                  {
                     new Huku_MarkSet(this.charaNum,i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Mark" || this.tabName == "MarkRotation" || this.tabName == "MarkY" || this.tabName == "MarkX" || this.tabName == "MarkScaleX" || this.tabName == "MarkScaleY" || this.tabName == "MarkScaleB" || this.tabName == "MarkAlpha" || this.tabName == "MarkVary" || this.tabName == "MarkAdd")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu")
               {
                  new Huku_MarkSet(this.charaNum,MenuClass.systemData["MarkPlus"]["_menu"],this.clickTarget);
               }
               else if(this.clickTarget == "huku")
               {
                  new Huku_MarkSet(this.charaNum,int(HukuClickClass.plusNum),this.clickTarget);
               }
               else if(this.clickTarget == "paste")
               {
                  if(this.tabName == "MarkY")
                  {
                     i = 0;
                     while(i <= Main.hukusuuNum)
                     {
                        new Huku_MarkSet(this.charaNum,i,this.clickTarget);
                        i++;
                     }
                     if(this.charaData["MarkScaleY" + MenuClass.systemData["MarkPlus"]["_menu"]]["_meter"] != this.charaData["MarkScaleX" + MenuClass.systemData["MarkPlus"]["_menu"]]["_meter"])
                     {
                        MenuClass.systemData["LinkMark"]["_flag"] = false;
                     }
                     else
                     {
                        MenuClass.systemData["LinkMark"]["_flag"] = true;
                     }
                  }
               }
               else if(this.clickTarget != "move")
               {
                  i = 0;
                  while(i <= Main.hukusuuNum)
                  {
                     new Huku_MarkSet(this.charaNum,i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "RibonPlus")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "pasteRibon")
               {
                  new SetLinkData(this.charaNum);
                  Huku_RibonSet.setFc(this.charaNum,MenuClass.systemData["RibonPlus"]["_menu"],this.clickTarget);
               }
               else if(this.clickTarget == "huku")
               {
                  Huku_RibonSet.setFc(this.charaNum,int(HukuClickClass.plusNum),this.clickTarget);
               }
               else if(this.clickTarget != "paste")
               {
                  i = 0;
                  while(i <= Main.RibonhukusuuNum)
                  {
                     Huku_RibonSet.setFc(this.charaNum,i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Ribon" || this.tabName == "RibonLine" || this.tabName == "RibonRotation" || this.tabName == "RibonY" || this.tabName == "RibonX" || this.tabName == "RibonScale" || this.tabName == "RibonScaleY" || this.tabName == "RibonScaleB" || this.tabName == "RibonAdd" || this.tabName == "RibonAlpha" || this.tabName == "RibonFineY" || this.tabName == "RibonFineX")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "depth")
               {
                  Huku_RibonSet.setFc(this.charaNum,MenuClass.systemData["RibonPlus"]["_menu"],this.clickTarget);
               }
               else if(this.clickTarget == "huku")
               {
                  Huku_RibonSet.setFc(this.charaNum,int(HukuClickClass.plusNum),this.clickTarget);
               }
               else if(this.clickTarget == "paste")
               {
                  if(this.tabName == "RibonY" || this.tabName == "RibonFineY")
                  {
                     i = 0;
                     while(i <= Main.RibonhukusuuNum)
                     {
                        Huku_RibonSet.setFc(this.charaNum,i,this.clickTarget);
                        i++;
                     }
                     if(this.charaData["RibonScale" + MenuClass.systemData["RibonPlus"]["_menu"]]["_meter"] != this.charaData["RibonScaleY" + MenuClass.systemData["RibonPlus"]["_menu"]]["_meter"])
                     {
                        MenuClass.systemData["LinkRibonScale"]["_flag"] = false;
                     }
                     else
                     {
                        MenuClass.systemData["LinkRibonScale"]["_flag"] = true;
                     }
                  }
               }
               else if(this.clickTarget == "HatHair")
               {
                  i = 0;
                  while(i <= Main.RibonhukusuuNum)
                  {
                     Huku_RibonSet.setFc(this.charaNum,i,this.clickTarget);
                     i++;
                  }
               }
               else if(this.clickTarget != "move")
               {
                  i = 0;
                  while(i <= Main.RibonhukusuuNum)
                  {
                     Huku_RibonSet.setFc(this.charaNum,i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "FreeHandPlus")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "paste")
               {
                  new SetLinkSystemData();
                  new Free_HandSet(MenuClass.systemData["FreeHandPlus"]["_menu"],this.clickTarget);
               }
               else
               {
                  n = MenuClass.systemData["FreeHandPlus"]["_visible"].length - 1;
                  i = 0;
                  while(i <= n)
                  {
                     new Free_HandSet(i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(
            this.tabName == "FreeHand" ||
            this.tabName == "FreeHandAlpha" ||
            this.tabName == "FreeHandRotation" ||
            this.tabName == "FreeHandY" ||
            this.tabName == "FreeHandX" ||
            this.tabName == "FreeHandScale" ||
            this.tabName == "FreeHandWidth" ||
            this.tabName == "FreeHandDepth" ||
            this.tabName == "FreeHandWrist" ||
            this.tabName == "FreeHandWristRotation" ||
            this.tabName == "FreeHandItem" ||
            this.tabName == "FreeHandWristband" ||
            this.tabName == "FreeHandVest" ||
            this.tabName == "FreeHandFineX" ||
            this.tabName == "FreeHandFineY"
         )
         {
            try
            {
               if(this.clickTarget != "paste")
               {
                  if(this.clickTarget == "tab" || this.clickTarget == "menu")
                  {
                     new Free_HandSet(MenuClass.systemData["FreeHandPlus"]["_menu"],this.clickTarget);
                  }
                  else
                  {
                     n = MenuClass.systemData["FreeHandPlus"]["_visible"].length - 1;
                     i = 0;
                     while(i <= n)
                     {
                        new Free_HandSet(i,this.clickTarget);
                        i++;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "FreeRibonPlus")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "paste")
               {
                  new SetLinkSystemData();
                  new Free_RibonSet(MenuClass.systemData["FreeRibonPlus"]["_menu"],this.clickTarget);
               }
               else
               {
                  n = MenuClass.systemData["FreeRibonPlus"]["_visible"].length - 1;
                  i = 0;
                  while(i <= n)
                  {
                     new Free_RibonSet(i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "FreeRibon" || this.tabName == "FreeRibonLine" || this.tabName == "FreeRibonRotation" || this.tabName == "FreeRibonY" || this.tabName == "FreeRibonX" || this.tabName == "FreeRibonScale" || this.tabName == "FreeRibonScaleY" || this.tabName == "FreeRibonScaleB" || this.tabName == "FreeRibonDepth" || this.tabName == "FreeRibonFineX" || this.tabName == "FreeRibonFineY" || this.tabName == "FreeRibonAlpha")
         {
            try
            {
               if(this.clickTarget != "paste")
               {
                  if(this.clickTarget == "tab" || this.clickTarget == "menu")
                  {
                     new Free_RibonSet(MenuClass.systemData["FreeRibonPlus"]["_menu"],this.clickTarget);
                  }
                  else
                  {
                     n = MenuClass.systemData["FreeRibonPlus"]["_visible"].length - 1;
                     i = 0;
                     while(i <= n)
                     {
                        new Free_RibonSet(i,this.clickTarget);
                        i++;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "FreeChairPlus")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "paste")
               {
                  new SetLinkSystemData();
                  new Free_ChairSet(MenuClass.systemData["FreeChairPlus"]["_menu"],this.clickTarget);
               }
               else
               {
                  n = MenuClass.systemData["FreeChairPlus"]["_visible"].length - 1;
                  i = 0;
                  while(i <= n)
                  {
                     new Free_ChairSet(i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(
            this.tabName == "FreeChair" ||
            this.tabName == "FreeChairExtra" ||
            this.tabName == "FreeChairLine" ||
            this.tabName == "FreeChairRotation" ||
            this.tabName == "FreeChairY" ||
            this.tabName == "FreeChairX" ||
            this.tabName == "FreeChairScale" ||
            this.tabName == "FreeChairDepth" ||
            this.tabName == "FreeChairFineX" ||
            this.tabName == "FreeChairFineY" ||
            this.tabName == "FreeChairAlpha"
         )
         {
            try
            {
               if(this.clickTarget != "paste")
               {
                  if(this.clickTarget == "tab" || this.clickTarget == "menu")
                  {
                     new Free_ChairSet(MenuClass.systemData["FreeChairPlus"]["_menu"],this.clickTarget);
                  }
                  else
                  {
                     n = MenuClass.systemData["FreeChairPlus"]["_visible"].length - 1;
                     i = 0;
                     while(i <= n)
                     {
                        new Free_ChairSet(i,this.clickTarget);
                        i++;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "FreeFlagPlus")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "paste")
               {
                  new SetLinkSystemData();
                  new Free_FlagSet(MenuClass.systemData["FreeFlagPlus"]["_menu"],this.clickTarget);
               }
               else
               {
                  n = MenuClass.systemData["FreeFlagPlus"]["_visible"].length - 1;
                  i = 0;
                  while(i <= n)
                  {
                     new Free_FlagSet(i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "FreeFlag" || this.tabName == "FreeFlagExtra" || this.tabName == "FreeFlagRotation" || this.tabName == "FreeFlagY" || this.tabName == "FreeFlagX" || this.tabName == "FreeFlagScale" || this.tabName == "FreeFlagScaleY" || this.tabName == "FreeFlagScaleB" || this.tabName == "FreeFlagDepth")
         {
            try
            {
               if(this.clickTarget != "paste")
               {
                  if(this.clickTarget == "tab" || this.clickTarget == "menu")
                  {
                     new Free_FlagSet(MenuClass.systemData["FreeFlagPlus"]["_menu"],this.clickTarget);
                  }
                  else
                  {
                     n = MenuClass.systemData["FreeFlagPlus"]["_visible"].length - 1;
                     i = 0;
                     while(i <= n)
                     {
                        new Free_FlagSet(i,this.clickTarget);
                        i++;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "FreeHukidashiPlus")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "paste")
               {
                  new SetLinkSystemData();
                  new Free_HukidashiSet(MenuClass.systemData["FreeHukidashiPlus"]["_menu"],this.clickTarget);
               }
               else
               {
                  n = MenuClass.systemData["FreeHukidashiPlus"]["_visible"].length - 1;
                  i = 0;
                  while(i <= n)
                  {
                     new Free_HukidashiSet(i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "FreeHukidashi" || this.tabName == "FreeHukidashiAlpha" || this.tabName == "FreeHukidashiBlend" || this.tabName == "FreeHukidashiExtra" || this.tabName == "FreeHukidashiLine" || this.tabName == "FreeHukidashiRotation" || this.tabName == "FreeHukidashiY" || this.tabName == "FreeHukidashiX" || this.tabName == "FreeHukidashiScale" || this.tabName == "FreeHukidashiScaleY" || this.tabName == "FreeHukidashiScaleB" || this.tabName == "FreeHukidashiDepth" || this.tabName == "FreeHukidashiExtraX" || this.tabName == "FreeHukidashiExtraY" || this.tabName == "FreeHukidashiExtraLine" || this.tabName == "FreeHukidashiExtraScale" || this.tabName == "FreeHukidashiExtraScaleY" || this.tabName == "FreeHukidashiExtraRotation")
         {
            try
            {
               if(this.clickTarget != "paste")
               {
                  if(this.clickTarget == "tab" || this.clickTarget == "menu")
                  {
                     new Free_HukidashiSet(MenuClass.systemData["FreeHukidashiPlus"]["_menu"],this.clickTarget);
                  }
                  else
                  {
                     n = MenuClass.systemData["FreeHukidashiPlus"]["_visible"].length - 1;
                     i = 0;
                     while(i <= n)
                     {
                        new Free_HukidashiSet(i,this.clickTarget);
                        i++;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "BeltPlus")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "pasteRibon")
               {
                  new SetLinkData(this.charaNum);
                  new Huku_BeltSet(this.charaNum,MenuClass.systemData["BeltPlus"]["_menu"],this.clickTarget);
               }
               else if(this.clickTarget == "huku")
               {
                  new Huku_BeltSet(this.charaNum,int(HukuClickClass.plusNum),this.clickTarget);
               }
               else if(this.clickTarget == "move")
               {
                  i = 0;
                  while(i <= Main.hukusuuNum)
                  {
                     new Huku_BeltSet(this.charaNum,i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Belt" || this.tabName == "BeltExtra" || this.tabName == "BeltRotation" || this.tabName == "BeltY" || this.tabName == "BeltX" || this.tabName == "BeltScale" || this.tabName == "BeltScaleY" || this.tabName == "BeltScaleB" || this.tabName == "BeltLine" || this.tabName == "BeltAlpha" || this.tabName == "BeltFineX" || this.tabName == "BeltFineY")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "depth")
               {
                  new Huku_BeltSet(this.charaNum,MenuClass.systemData["BeltPlus"]["_menu"],this.clickTarget);
               }
               else if(this.clickTarget == "huku")
               {
                  new Huku_BeltSet(this.charaNum,int(HukuClickClass.plusNum),this.clickTarget);
               }
               else if(this.clickTarget == "paste")
               {
                  if(this.tabName == "BeltY" || this.tabName == "BeltFineY")
                  {
                     i = 0;
                     while(i <= Main.hukusuuNum)
                     {
                        new Huku_BeltSet(this.charaNum,i,this.clickTarget);
                        i++;
                     }
                     if(this.charaData["BeltScale" + MenuClass.systemData["BeltPlus"]["_menu"]]["_meter"] != this.charaData["BeltScaleY" + MenuClass.systemData["BeltPlus"]["_menu"]]["_meter"])
                     {
                        MenuClass.systemData["LinkBeltScale"]["_flag"] = false;
                     }
                     else
                     {
                        MenuClass.systemData["LinkBeltScale"]["_flag"] = true;
                     }
                  }
               }
               else if(this.clickTarget != "move")
               {
                  i = 0;
                  while(i <= Main.hukusuuNum)
                  {
                     new Huku_BeltSet(this.charaNum,i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "FreeBeltPlus")
         {
            try
            {
               if(this.clickTarget == "tab" || this.clickTarget == "menu" || this.clickTarget == "paste")
               {
                  new SetLinkSystemData();
                  new Free_BeltSet(MenuClass.systemData["FreeBeltPlus"]["_menu"],this.clickTarget);
               }
               else
               {
                  n = MenuClass.systemData["FreeBeltPlus"]["_visible"].length - 1;
                  i = 0;
                  while(i <= n)
                  {
                     new Free_BeltSet(i,this.clickTarget);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(
            this.tabName == "FreeBelt" ||
            this.tabName == "FreeBeltExtra" ||
            this.tabName == "FreeBeltRotation" ||
            this.tabName == "FreeBeltY" ||
            this.tabName == "FreeBeltX" ||
            this.tabName == "FreeBeltScale" ||
            this.tabName == "FreeBeltScaleY" ||
            this.tabName == "FreeBeltScaleB" ||
            this.tabName == "FreeBeltLine" ||
            this.tabName == "FreeBeltDepth" ||
            this.tabName == "FreeBeltFineX" ||
            this.tabName == "FreeBeltFineY" ||
            this.tabName == "FreeBeltAlpha"
         )
         {
            try
            {
               if(this.clickTarget != "paste")
               {
                  if(this.clickTarget == "tab" || this.clickTarget == "menu")
                  {
                     new Free_BeltSet(MenuClass.systemData["FreeBeltPlus"]["_menu"],this.clickTarget);
                  }
                  else
                  {
                     n = MenuClass.systemData["FreeBeltPlus"]["_visible"].length - 1;
                     i = 0;
                     while(i <= n)
                     {
                        new Free_BeltSet(i,this.clickTarget);
                        i++;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Mimi")
         {
            try
            {
               this.charaAdd.head.Mimi.visible = this.charaData[this.tabName]["_visible"][0];
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  this.charaData["Ear"]["_senColor"] = 0;
                  MimiDepth = this.charaAdd.head.getChildIndex(this.charaAdd.head.Mimi);
                  MimiSwapDepth = this.charaAdd.head.getChildIndex(this.charaAdd.head.Mimi_swap);
                  if(Dress_data.MimiData[this.charaData[this.tabName]["_menu"]]["depth"] == 0)
                  {
                     if(MimiDepth > MimiSwapDepth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Mimi,this.charaAdd.head.Mimi_swap);
                     }
                  }
                  else if(MimiDepth < MimiSwapDepth)
                  {
                     this.charaAdd.head.swapChildren(this.charaAdd.head.Mimi,this.charaAdd.head.Mimi_swap);
                  }
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaAdd.head.Mimi["mimi" + i].gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                     i++;
                  }
                  this.charaAdd.head.Mimi.y = -88.55 + Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_mimiY"];
                  this.charaAdd.head.Mimi.mimi0.x = -56.3 + Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_mimiX"];
                  this.charaAdd.head.Mimi.mimi1.x = 56.3 + Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_mimiX"] * -1;
                  if(this.charaData[this.tabName]["_mimihat"] == 0)
                  {
                     this.charaAdd.head.Mimi.buttonMode = false;
                  }
                  else
                  {
                     this.charaAdd.head.Mimi.buttonMode = true;
                  }
                  new Hair_SenColorSet(this.charaNum,1);
                  new Chara_ColorClass(this.charaNum,this.tabName);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Hane")
         {
            try
            {
               this.charaAdd.hane.visible = this.charaData[this.tabName]["_visible"][0];
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  this.charaAdd.hane.gotoAndStop(this.charaData[this.tabName]["_menu"] + 2);
                  i = 0;
                  while(i <= 1)
                  {
                     try
                     {
                        if(this.charaData[this.tabName]["_posi" + i] > this.charaAdd.hane["hane" + i].totalFrames)
                        {
                           this.charaData[this.tabName]["_posi" + i] = 1;
                        }
                        this.charaAdd.hane["hane" + i].gotoAndStop(this.charaData[this.tabName]["_posi" + i]);
                     }
                     catch(myError:Error)
                     {
                     }
                     i++;
                  }
                  if(this.charaData[this.tabName]["_reversal"])
                  {
                     this.charaAdd.hane.scaleX = 1;
                  }
                  else
                  {
                     this.charaAdd.hane.scaleX = -1;
                  }
                  new Chara_ColorClass(this.charaNum,this.tabName);
                  new SetClass(this.charaNum,"HaneScale","tab");
                  new SetClass(this.charaNum,"HaneY","tab");
                  new Huku_HanePosi(this.charaNum);
               }
               else
               {
                  this.charaAdd.hane.gotoAndStop(1);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HaneScale")
         {
            try
            {
               if(this.charaData["Hane"]["_visible"][0])
               {
                  new MeterPersent(0.5,1.5,"HaneScale",this.charaNum);
                  i = 0;
                  while(i <= 1)
                  {
                     try
                     {
                        this.charaAdd.hane["hane" + i].scaleX = MeterPersent.MeterPersentNum;
                        this.charaAdd.hane["hane" + i].scaleY = MeterPersent.MeterPersentNum;
                     }
                     catch(myError:Error)
                     {
                     }
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HaneY")
         {
            try
            {
               if(this.charaData["Hane"]["_visible"][0])
               {
                  new MeterPersent(100,-320,"HaneY",this.charaNum);
                  i = 0;
                  while(i <= 1)
                  {
                     try
                     {
                        this.charaAdd.hane["hane" + i].y = MeterPersent.MeterPersentNum;
                     }
                     catch(myError:Error)
                     {
                     }
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Tail")
         {
            try
            {
               this.charaAdd.Tail.visible = this.charaData[this.tabName]["_visible"][0];
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  this.charaData["Ear"]["_senColor"] = 0;
                  this.charaAdd.Tail.gotoAndStop(this.charaData[this.tabName]["_menu"] + 2);
                  if(this.charaData[this.tabName]["_posi0"] > this.charaAdd.Tail.tail.totalFrames)
                  {
                     this.charaData[this.tabName]["_posi0"] = 1;
                  }
                  this.charaAdd.Tail.tail.gotoAndStop(this.charaData[this.tabName]["_posi0"]);
                  if(this.charaData[this.tabName]["_reversal"])
                  {
                     this.charaAdd.Tail.scaleX = 1;
                  }
                  else
                  {
                     this.charaAdd.Tail.scaleX = -1;
                  }
                  new Hair_SenColorSet(this.charaNum,2);
                  new Chara_ColorClass(this.charaNum,this.tabName);
                  new SetClass(this.charaNum,"TailScale","tab");
                  new Huku_TailPosi(this.charaNum);
               }
               else
               {
                  this.charaAdd.Tail.gotoAndStop(1);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "TailScale")
         {
            try
            {
               if(this.charaData["Tail"]["_visible"][0])
               {
                  new MeterPersent(0.7,1.5,"TailScale",this.charaNum);
                  i = 0;
                  while(i <= 1)
                  {
                     try
                     {
                        this.charaAdd.Tail.tail.scaleX = MeterPersent.MeterPersentNum;
                        this.charaAdd.Tail.tail.scaleY = MeterPersent.MeterPersentNum;
                     }
                     catch(myError:Error)
                     {
                     }
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Horn")
         {
            try
            {
               this.charaAdd.head.Horn.visible = this.charaData[this.tabName]["_visible"][0];
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  HornDepth = this.charaAdd.head.getChildIndex(this.charaAdd.head.Horn);
                  HornSwap0Depth = this.charaAdd.head.getChildIndex(this.charaAdd.head.Horn_swap0);
                  HornSwap1Depth = this.charaAdd.head.getChildIndex(this.charaAdd.head.Horn_swap1);
                  if(this.charaData[this.tabName]["_depth"] == 2)
                  {
                     if(HornDepth < HornSwap1Depth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Horn,this.charaAdd.head.Horn_swap1);
                     }
                     if(HornDepth < HornSwap0Depth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Horn,this.charaAdd.head.Horn_swap0);
                     }
                     if(HornSwap0Depth < HornSwap1Depth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Horn_swap0,this.charaAdd.head.Horn_swap1);
                     }
                  }
                  else if(this.charaData[this.tabName]["_depth"] == 1)
                  {
                     if(HornSwap0Depth < HornSwap1Depth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Horn_swap0,this.charaAdd.head.Horn_swap1);
                     }
                     if(HornDepth > HornSwap0Depth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Horn,this.charaAdd.head.Horn_swap0);
                     }
                     if(HornDepth < HornSwap1Depth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Horn,this.charaAdd.head.Horn_swap1);
                     }
                  }
                  else
                  {
                     if(HornDepth > HornSwap0Depth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Horn,this.charaAdd.head.Horn_swap0);
                     }
                     if(HornDepth > HornSwap1Depth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Horn,this.charaAdd.head.Horn_swap1);
                     }
                     if(HornSwap0Depth < HornSwap1Depth)
                     {
                        this.charaAdd.head.swapChildren(this.charaAdd.head.Horn_swap0,this.charaAdd.head.Horn_swap1);
                     }
                  }
                  this.charaAdd.head.Horn.gotoAndStop(this.charaData[this.tabName]["_menu"] + 2);
                  try
                  {
                     if(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hage"] >= 1)
                     {
                        i = 0;
                        while(i <= 1)
                        {
                           this.charaAdd.head.Horn["Horn" + i].Horn.Horn.x = Dress_data.HornData[this.charaData["Horn"]["_menu"]]["_hageX"];
                           this.charaAdd.head.Horn["Horn" + i].Horn.Horn.y = Dress_data.HornData[this.charaData["Horn"]["_menu"]]["_hageY"];
                           i++;
                        }
                     }
                     else
                     {
                        i = 0;
                        while(i <= 1)
                        {
                           this.charaAdd.head.Horn["Horn" + i].Horn.Horn.x = 0;
                           this.charaAdd.head.Horn["Horn" + i].Horn.Horn.y = 0;
                           i++;
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  new SetClass(this.charaNum,"HornY","tab");
                  new SetClass(this.charaNum,"HornScale","tab");
                  new Chara_ColorClass(this.charaNum,this.tabName);
               }
               else
               {
                  this.charaAdd.head.Horn.gotoAndStop(1);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HornScale")
         {
            try
            {
               if(this.charaData["Horn"]["_visible"][0])
               {
                  new MeterPersent(0.6,1.4,"HornScale",this.charaNum);
                  try
                  {
                     i = 0;
                     while(i <= 1)
                     {
                        this.charaAdd.head.Horn["Horn" + i].Horn.Horn.scaleX = MeterPersent.MeterPersentNum;
                        this.charaAdd.head.Horn["Horn" + i].Horn.Horn.scaleY = MeterPersent.MeterPersentNum;
                        i++;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HornY")
         {
            try
            {
               if(this.charaData["Horn"]["_visible"][0])
               {
                  new MeterPersent(1,20,"HornY",this.charaNum);
                  try
                  {
                     i = 0;
                     while(i <= 1)
                     {
                        this.charaAdd.head.Horn["Horn" + i].gotoAndStop(Math.floor(MeterPersent.MeterPersentNum));
                        i++;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "BreastLeft" || this.tabName == "BreastRight")
         {
            new Huku_BreastOpen(this.charaNum);
            if(!this.charaData["BreastManualAuto"]["_check"] && Huku_BreastOpen.muneOpen)
            {
               if(this.tabName == "BreastLeft")
               {
                  this.menuNum = 0;
               }
               else if(this.tabName == "BreastRight")
               {
                  this.menuNum = 1;
               }
               if(this.charaData["BreastLeft"]["_menu"] == 0 && this.charaData["BreastRight"]["_menu"] == 0)
               {
                  this.breastFc(0,1);
                  this.breastFc(1,1);
               }
               else if(this.menuNum == 0 && this.charaData["BreastLeft"]["_menu"] == 0 || this.menuNum == 1 && this.charaData["BreastRight"]["_menu"] == 0)
               {
                  this.breastFc(this.menuNum,2);
               }
               else if(this.menuNum == 0)
               {
                  this.breastFc(0,this.charaData["BreastLeft"]["_menu"] + 3);
                  if(this.charaAdd.mune["mune" + 1].mune.currentFrame == 1)
                  {
                     this.breastFc(1,2);
                     new Huku_CorsetDou(this.charaNum);
                     new Huku_SodeMune(this.charaNum,0);
                     new Huku_BreastDepth(this.charaNum);
                  }
               }
               else if(this.menuNum == 1)
               {
                  this.breastFc(1,this.charaData["BreastRight"]["_menu"] + 3);
                  if(this.charaAdd.mune["mune" + 0].mune.currentFrame == 1)
                  {
                     this.breastFc(0,2);
                     new Huku_CorsetDou(this.charaNum);
                     new Huku_SodeMune(this.charaNum,1);
                     new Huku_BreastDepth(this.charaNum);
                  }
               }
               this.charaData["BreastMove"]["_mode"][this.menuNum] = "stop";
               this.charaData["BreastMove"]["_count"][this.menuNum] = 0;
            }
         }
         else if(this.tabName == "NippleLeft" || this.tabName == "NippleRight")
         {
            if(!this.charaData["BreastManualAuto"]["_check"])
            {
               if(this.tabName == "NippleLeft")
               {
                  this.menuNum = 0;
               }
               else if(this.tabName == "NippleRight")
               {
                  this.menuNum = 1;
               }
               try
               {
                  this.charaAdd.mune["mune" + this.menuNum].mune.Nipple.nipple.nipple.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
                  this.charaAdd.mune["mune" + this.menuNum].mune.Nipple.nipple.nipple.color2_1.gotoAndStop(this.charaData[this.tabName]["_menu"] + 1);
               }
               catch(myError:Error)
               {
               }
               this.charaData["NippleMove"]["_mode"][this.menuNum] = 0;
               this.charaData["NippleMove"]["_count"][this.menuNum] = 0;
            }
         }
         else if(this.tabName == "Collar")
         {
            try
            {
               new Huku_Collar(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Necktie")
         {
            try
            {
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  this.menuNum = this.charaData[this.tabName]["_menu"];
                  if(Dress_data.NecktieData[this.menuNum]["under"] == 0)
                  {
                     this.charaAdd.mune.Necktie0.gotoAndStop(1);
                     this.charaAdd.mune.Necktie0.visible = false;
                  }
                  else
                  {
                     this.charaAdd.mune.Necktie0.gotoAndStop(Dress_data.NecktieData[this.menuNum]["under"] + 1);
                     this.charaAdd.mune.Necktie0.maskMc.visible = false;
                     this.charaAdd.mune.Necktie0.visible = true;
                  }
                  if(Dress_data.NecktieData[this.menuNum]["top"] == 0)
                  {
                     this.charaAdd.mune.Necktie1.gotoAndStop(1);
                     this.charaAdd.mune.Necktie1.visible = false;
                  }
                  else
                  {
                     this.charaAdd.mune.Necktie1.gotoAndStop(Dress_data.NecktieData[this.menuNum]["top"] + 1);
                     this.charaAdd.mune.Necktie1.visible = true;
                  }
                  new Huku_Necktie(this.charaNum);
               }
               else
               {
                  i = 0;
                  while(i <= 1)
                  {
                     this.charaAdd.mune["Necktie" + i].gotoAndStop(1);
                     this.charaAdd.mune["Necktie" + i].visible = false;
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Necklace")
         {
            try
            {
               if(this.charaData[this.tabName]["_visible"][0])
               {
                  n = Dress_data.menuCustom["Necklace"].length - 1;
                  i = 0;
                  while(i <= n)
                  {
                     if(this.charaData["Necklace"]["_menu"] == Dress_data.menuCustom["Necklace"][i])
                     {
                        Dress_data.menuCustomNum[this.charaNum]["Necklace"] = i;
                        break;
                     }
                     i++;
                  }
                  this.charaData["Necklace"]["_menu"] = Dress_data.menuCustom["Necklace"][Dress_data.menuCustomNum[this.charaNum]["Necklace"]];
                  this.menuNum = this.charaData[this.tabName]["_menu"];
                  this.charaAdd.mune.Necklace0.gotoAndStop(this.menuNum + 2);
                  this.charaAdd.mune.Necklace0.visible = true;
                  necklaceChild = this.charaAdd.mune.getChildIndex(this.charaAdd.mune.Necklace0);
                  necklaceSwap0Child = this.charaAdd.mune.getChildIndex(this.charaAdd.mune.necklace_swap0);
                  necklaceSwap1Child = this.charaAdd.mune.getChildIndex(this.charaAdd.mune.necklace_swap1);
                  if(necklaceSwap0Child > necklaceSwap1Child)
                  {
                     this.charaAdd.mune.swapChildren(this.charaAdd.mune.necklace_swap0,this.charaAdd.mune.necklace_swap1);
                  }
                  if(this.charaData[this.tabName]["_depth"] == 0)
                  {
                     if(necklaceChild > necklaceSwap0Child)
                     {
                        this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necklace0,this.charaAdd.mune.necklace_swap0);
                     }
                  }
                  else if(this.charaData[this.tabName]["_depth"] == 1)
                  {
                     if(necklaceChild < necklaceSwap0Child)
                     {
                        this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necklace0,this.charaAdd.mune.necklace_swap0);
                     }
                     if(necklaceChild > necklaceSwap1Child)
                     {
                        this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necklace0,this.charaAdd.mune.necklace_swap1);
                     }
                  }
                  else if(this.charaData[this.tabName]["_depth"] == 2)
                  {
                     if(necklaceChild < necklaceSwap1Child)
                     {
                        this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necklace0,this.charaAdd.mune.necklace_swap1);
                     }
                  }
                  new Chara_ColorClass(this.charaNum,"Necklace");
               }
               else
               {
                  this.charaAdd.mune.Necklace0.visible = false;
                  this.charaAdd.mune.Necklace0.gotoAndStop(1);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Gag")
         {
            try
            {
               new Huku_Gag(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Wristband0" || this.tabName == "Wristband1")
         {
            try
            {
               if(this.tabName == "Wristband0")
               {
                  new Huku_Wristband(this.charaNum,0,this.clickTarget);
               }
               else
               {
                  new Huku_Wristband(this.charaNum,1,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Glove0" || this.tabName == "Glove1" || this.tabName == "GloveLength0" || this.tabName == "GloveLength1")
         {
            try
            {
               if(this.tabName == "Glove0" || this.tabName == "GloveLength0")
               {
                  new Huku_Glove(this.charaNum,0,this.clickTarget);
               }
               else
               {
                  new Huku_Glove(this.charaNum,1,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               trace(myError.getStackTrace());
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Bracelet0" || this.tabName == "Bracelet1")
         {
            try
            {
               if(this.tabName == "Bracelet0")
               {
                  new Huku_Bracelet(this.charaNum,0,this.clickTarget);
               }
               else
               {
                  new Huku_Bracelet(this.charaNum,1,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "ArmBracelet0" || this.tabName == "ArmBracelet1")
         {
            try
            {
               if(this.tabName == "ArmBracelet0")
               {
                  new Huku_ArmBracelet(this.charaNum,0,this.clickTarget);
               }
               else
               {
                  new Huku_ArmBracelet(this.charaNum,1,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Armband0" || this.tabName == "Armband1")
         {
            try
            {
               if(this.tabName == "Armband0")
               {
                  new Huku_Armband(this.charaNum,0,this.clickTarget);
               }
               else
               {
                  new Huku_Armband(this.charaNum,1,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Elbowpad0" || this.tabName == "Elbowpad1")
         {
            try
            {
               if(this.tabName == "Elbowpad0")
               {
                  new Huku_Elbowpad(this.charaNum,0,this.clickTarget);
               }
               else
               {
                  new Huku_Elbowpad(this.charaNum,1,this.clickTarget);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Earring0" || this.tabName == "Earring1")
         {
            try
            {
               if(this.charaData["Ear"]["_visible"][0])
               {
                  if(this.tabName == "Earring0")
                  {
                     new Huku_Earring(this.charaNum,0,this.clickTarget);
                  }
                  else
                  {
                     new Huku_Earring(this.charaNum,1,this.clickTarget);
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Headphone")
         {
            try
            {
               new Huku_Headphone(this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "system")
         {
            new SetClass(0,"Quality","tab");
            new System_bg("tab");
            new SetClass(0,"Zoom","move");
            new SetClass(0,"HideIcon","tab");
            new SetClass(0,"selecterDepth","tab");
            new SetClass(0,"MeterNumView","tab");
            new SetClass(0,"ViewMode","tab");
            new SetClass(0,"Mob","tab");
            new SetClass(0,"Mosaic","tab");
            new SetClass(0,"FreeHand",this.clickTarget);
            new SetClass(0,"FreeRibon",this.clickTarget);
            new SetClass(0,"FreeBelt",this.clickTarget);
            new SetClass(0,"FreeFlag",this.clickTarget);
            new SetClass(0,"FreeHukidashi",this.clickTarget);
            if(this.clickTarget != "first")
            {
               n = MenuClass.systemData["txtFieldmenu"]["_visible"].length - 1;
               i = 0;
               while(i <= n)
               {
                  SystemText2.loadFc("txtFc",i,this.clickTarget);
                  i++;
               }
            }
            n = MenuClass.systemData["LoadPlus"]["_visible"].length - 1;
            i = 0;
            while(i <= n)
            {
               new Tab_LoadURL("load",i);
               i++;
            }
         }
         else if(this.tabName == "Quality")
         {
            try
            {
               i = 0;
               while(i <= MenuClass._characterNum)
               {
                  new Emotion_EyeOption(i);
                  i++;
               }
               if(Main.publishMode == "download" || Main.publishMode == "download_test")
               {
                  new QualityClass(2);
               }
               else if(MenuClass.systemData[this.tabName]["_menu"] == 3)
               {
                  new QualityClass(2);
               }
               else
               {
                  new QualityClass(MenuClass.systemData[this.tabName]["_menu"]);
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Background" || this.tabName == "BgFloor" || this.tabName == "BgFront" || this.tabName == "BgSituation")
         {
            new System_bg(this.clickTarget);
         }
         else if(this.tabName == "BgY")
         {
            BgYFlag = true;
            this.menuNum = MenuClass.systemData["Background"]["_menu"];
            try
            {
               if(this.clickTarget != "first" && MenuClass.systemOldData["BgY"]["_meter"] == MenuClass.systemData["BgY"]["_meter"] && Dress_data.ObjData["Background"][MenuClass.systemOldData["Background"]["_menu"]]["floorYUnder"] == Dress_data.ObjData["Background"][this.menuNum]["floorYUnder"])
               {
                  BgYFlag = false;
               }
            }
            catch(myError:Error)
            {
            }
            if(BgYFlag)
            {
               try
               {
                  try
                  {
                     new MeterPersent(0.7,1,"BgY",0);
                     Main.mainWindow.bg.wall.scaleX = Main.mainWindow.bg.wall.scaleY = MeterPersent.MeterPersentNum;
                     new MeterPersent(Dress_data.ObjData["Background"][this.menuNum]["floorYUnder"],0,"BgY",0);
                     Main.mainWindow.bg.wall.y = MeterPersent.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               catch(myError:Error)
               {
                  ErrorFc(myError);
               }
            }
         }
         else if(this.tabName == "Mob")
         {
            MobFlag = true;
            try
            {
               if(this.clickTarget != "first" && MenuClass.systemOldData["Mob"]["_visible"][0] == MenuClass.systemData["Mob"]["_visible"][0] && MenuClass.systemOldData["Mob"]["_menu"] == MenuClass.systemData["Mob"]["_menu"])
               {
                  MobFlag = false;
               }
            }
            catch(myError:Error)
            {
            }
            if(MobFlag)
            {
               try
               {
                  Main.mainWindow.mob.visible = MenuClass.systemData[this.tabName]["_visible"][0];
                  if(MenuClass.systemData[this.tabName]["_visible"][0])
                  {
                     if(MenuClass.systemData[this.tabName]["_menu"] != 0)
                     {
                        System_MobBtn.deleteFc();
                     }
                     Main.mainWindow.mob.gotoAndStop(MenuClass.systemData[this.tabName]["_menu"] + 2);
                     if(MenuClass.systemData[this.tabName]["_menu"] == 0)
                     {
                        System_MobBtn.setFc();
                     }
                  }
                  else
                  {
                     System_MobBtn.deleteFc();
                     Main.mainWindow.mob.gotoAndStop(1);
                  }
               }
               catch(myError:Error)
               {
                  ErrorFc(myError);
               }
            }
         }
         else if(this.tabName == "Zoom")
         {
            ZoomFlag = true;
            try
            {
               if(this.clickTarget != "first" && MenuClass.systemOldData["Zoom"]["_meter"] == MenuClass.systemData["Zoom"]["_meter"] && MenuClass.systemOldData["Zoom"]["_x"] == MenuClass.systemData["Zoom"]["_x"] && MenuClass.systemOldData["Zoom"]["_y"] == MenuClass.systemData["Zoom"]["_y"])
               {
                  ZoomFlag = false;
               }
            }
            catch(myError:Error)
            {
            }
            if(ZoomFlag)
            {
               try
               {
                  new MeterPersent(1,5,"Zoom",this.charaNum);
                  new Stage_ZoomClass(MeterPersent.MeterPersentNum,this.clickTarget);
                  n = MenuClass.systemData["LoadPlus"]["_visible"].length - 1;
                  i = 0;
                  while(i <= n)
                  {
                     if(MenuClass.systemData["LoadPlus"]["_visible"][i] && MenuClass.systemData["LoadSize" + i]["_check"])
                     {
                        new SetClass(i,"LoadSize","Load");
                     }
                     i++;
                  }
               }
               catch(myError:Error)
               {
                  ErrorFc(myError);
               }
            }
         }
         else if(this.tabName == "FullScreen" || this.tabName == "StoryFullScreen")
         {
            try
            {
               if(MenuClass.systemData[this.tabName]["_check"])
               {
                  MenuClass.systemData["FullScreen"]["_check"] = true;
                  MenuClass.systemData["StoryFullScreen"]["_check"] = true;
                  Main.stageVar.displayState = StageDisplayState.FULL_SCREEN;
               }
               else
               {
                  MenuClass.systemData["FullScreen"]["_check"] = false;
                  MenuClass.systemData["StoryFullScreen"]["_check"] = false;
                  Main.stageVar.displayState = StageDisplayState.NORMAL;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "SoundVolume")
         {
            try
            {
               Main.accessObj.soundVolume = MenuClass.systemData["SoundVolume"]["_meter"];
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "SoundPan")
         {
            try
            {
               Main.accessObj.soundPan = MenuClass.systemData["SoundPan"]["_check"];
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "HideIcon")
         {
            try
            {
               if(MenuClass.systemData[this.tabName]["_check"])
               {
                  MenuClass.HideIconCheck = true;
               }
               else
               {
                  MenuClass.HideIconCheck = false;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "selecterDepth")
         {
            try
            {
               if(this.clickTarget == "tab")
               {
                  i = 0;
                  while(i <= MenuClass._characterNum)
                  {
                     MenuClass.charaAddDepth[i].swapChildren(MenuClass.charaAddDepth[i].charaSelect,MenuClass.charaAddDepth[i].charaSelect_swap);
                     i++;
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "CameraKirinuki")
         {
            try
            {
               if(MenuClass.systemData["CameraKirinuki"]["_check"])
               {
                  Tab_CameraClass.kirinukiSet();
               }
               else
               {
                  MenuClass.kirinukiWaku.visible = false;
                  MenuClass.tabMenuAdd["CameraKirinuki"].kirinukiBtn.gotoAndStop(1);
                  try
                  {
                     Main.stageVar.removeChild(MenuClass.kCursor);
                     MenuClass.kCursor = null;
                  }
                  catch(myError:Error)
                  {
                  }
                  MenuClass.ClickRock = false;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "MenuScale")
         {
            Air_StageSize.saveMenuSettings();
            Tab_ClassSet.rescaleMenu(MenuClass._nowHeaderName);
         }
         else if(this.tabName == "MenuAlign")
         {
            Air_StageSize.saveMenuSettings();
            Air_StageSize.recalculateMenuSize();
         }
         else if(this.tabName == "MeterNumView")
         {
            try
            {
               new Tab_MeterTxt(MenuClass.systemData[this.tabName]["_check"]);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Mosaic")
         {
            try
            {
               i = 0;
               while(i <= MenuClass._characterNum)
               {
                  MenuClass.charaAdd[i].mosaic.mosaic.visible = false;
                  try
                  {
                     MenuClass.charaAdd[i].dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.visible = false;
                     MenuClass.charaAdd[i].dou.dou_shitaHuku.peni.Peni.Tin.TinUp.mosaic.mosaic.visible = false;
                     MenuClass.charaAdd[i].dou.dou_shitaHuku.peni.Peni.Tin.TinUp.mosaic.mosaic.visible = false;
                     MenuClass.charaAdd[i].peni.peni.Peni.Tin.Tin.mosaic.mosaic.visible = false;
                     MenuClass.charaAdd[i].peni.peni.Peni.Tin.TinUp.mosaic.mosaic.visible = false;
                     MenuClass.charaAdd[i].dou.dou_shitaHuku.peni.Peni.Tin.Tin.mosaic.mosaic.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     MenuClass.charaAdd[i].vibrator.vibrator.item.mosaic.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  i++;
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "txtFieldDepth" || this.tabName == "txtFieldAdd" || this.tabName == "txtFieldmenu" || this.tabName == "FontType" || this.tabName == "txtFieldScale" || this.tabName == "txtFieldX" || this.tabName == "txtFieldY" || this.tabName == "txtFieldLeading" || this.tabName == "txtFieldLetter" || this.tabName == "txtFieldRotation" || this.tabName == "txtFieldWidth" || this.tabName == "txtFieldTateYoko" || this.tabName == "txtFieldFormatAlign" || this.tabName == "txtFieldAlpha" || this.tabName == "txtFieldScaleB" || this.tabName == "txtFieldBoxScaleX" || this.tabName == "txtFieldBoxScaleY")
         {
            try
            {
               SystemText2.loadFc(this.tabName,MenuClass.systemData["txtFieldmenu"]["_menu"],this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "CharaURLTextMenu")
         {
            try
            {
               MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(1);
               MenuClass.tabMenuAdd["CharaURLText"].txt.text = Tab_URLTextWindow.urlText[MenuClass.systemData[this.tabName]["_menu"]];
               this.charaData["CharaLoadPlus"]["_visible"][MenuClass.systemData["CharaLoadPlus"]["_menu"]] = true;
               new Tab_LoadURL2("menu",MenuClass.systemData["CharaLoadPlus"]["_menu"],this.charaNum);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "CharaLoadPlus")
         {
            try
            {
               if(this.clickTarget == "pasteRibon")
               {
                  Tab_AddCostumOpen2.deleteFc(this.tabName);
                  if(this.charaData[this.tabName]["_visible"][MenuClass.systemData[this.tabName]["_menu"]])
                  {
                     if(this.charaData["CharaLoadAdd" + MenuClass.systemData[this.tabName]["_menu"]]["_name"] != "" && this.charaData["CharaLoadAdd" + MenuClass.systemData[this.tabName]["_menu"]]["_name"] != "0")
                     {
                        MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(1);
                        MenuClass.tabMenuAdd["CharaURLText"].txt.text = this.charaData["CharaLoadAdd" + MenuClass.systemData[this.tabName]["_menu"]]["_name"];
                        this.charaData["CharaLoadPlus"]["_visible"][MenuClass.systemData["CharaLoadPlus"]["_menu"]] = true;
                        new Tab_LoadURL2("load",MenuClass.systemData["CharaLoadPlus"]["_menu"],this.charaNum);
                     }
                     else
                     {
                        this.charaData[this.tabName]["_visible"][MenuClass.systemData[this.tabName]["_menu"]] = false;
                     }
                  }
                  else
                  {
                     this.charaAdd["loadObj" + MenuClass.systemData[this.tabName]["_menu"]].visible = false;
                  }
               }
               else
               {
                  if(this.clickTarget != "menu" && this.clickTarget != "move")
                  {
                     if(this.charaData[this.tabName]["_visible"][MenuClass.systemData[this.tabName]["_menu"]])
                     {
                        if(this.charaData["CharaLoadAdd" + MenuClass.systemData[this.tabName]["_menu"]]["_name"] != "" && this.charaData["CharaLoadAdd" + MenuClass.systemData[this.tabName]["_menu"]]["_name"] != "0")
                        {
                           this.charaAdd["loadObj" + MenuClass.systemData[this.tabName]["_menu"]].visible = true;
                        }
                        else
                        {
                           this.charaData[this.tabName]["_visible"][MenuClass.systemData[this.tabName]["_menu"]] = false;
                        }
                     }
                     else
                     {
                        this.charaAdd["loadObj" + MenuClass.systemData[this.tabName]["_menu"]].visible = false;
                     }
                  }
                  if(this.clickTarget == "menu")
                  {
                     Tab_AddCostumOpen2.deleteFc(this.tabName);
                  }
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(
            this.tabName == "CharaLoadAdd" ||
            this.tabName == "CharaLoadAlpha" ||
            this.tabName == "CharaLoadReversalDepth" ||
            this.tabName == "CharaLoadScaleB" ||
            this.tabName == "CharaLoadScale" ||
            this.tabName == "CharaLoadScaleY" ||
            this.tabName == "CharaLoadRotation" ||
            this.tabName == "CharaLoadX" ||
            this.tabName == "CharaLoadY" ||
            this.tabName == "CharaLoadSwfColor" ||
            this.tabName == "CharaLoadFineX" ||
            this.tabName == "CharaLoadFineY"
         )
         {
            try
            {
               new Add_LoadURL2(this.tabName,this.charaNum,MenuClass.systemData["CharaLoadPlus"]["_menu"],this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "URLTextMenu")
         {
            try
            {
               MenuClass.tabMenuAdd["URLText"].gotoAndStop(1);
               MenuClass.tabMenuAdd["URLText"].txt.text = Tab_URLTextWindow.urlText[MenuClass.systemData[this.tabName]["_menu"]];
               MenuClass.systemData["LoadPlus"]["_visible"][MenuClass.systemData["LoadPlus"]["_menu"]] = true;
               new Tab_LoadURL("menu",MenuClass.systemData["LoadPlus"]["_menu"]);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "LoadPlus")
         {
            try
            {
               if(this.clickTarget == "paste")
               {
                  Tab_AddCostumOpen.deleteFc("LoadPlus");
                  if(MenuClass.systemData[this.tabName]["_visible"][MenuClass.systemData[this.tabName]["_menu"]])
                  {
                     if(MenuClass.systemData["LoadScale" + MenuClass.systemData[this.tabName]["_menu"]]["_name"] != "" && MenuClass.systemData["LoadScale" + MenuClass.systemData[this.tabName]["_menu"]]["_name"] != "0")
                     {
                        MenuClass.tabMenuAdd["URLText"].gotoAndStop(1);
                        MenuClass.tabMenuAdd["URLText"].txt.text = MenuClass.systemData["LoadScale" + MenuClass.systemData[this.tabName]["_menu"]]["_name"];
                        MenuClass.systemData["LoadPlus"]["_visible"][MenuClass.systemData["LoadPlus"]["_menu"]] = true;
                        new Tab_LoadURL("load",MenuClass.systemData["LoadPlus"]["_menu"]);
                     }
                     else
                     {
                        MenuClass.systemData[this.tabName]["_visible"][MenuClass.systemData[this.tabName]["_menu"]] = false;
                     }
                  }
                  else
                  {
                     Main.mainWindow["loadObj" + MenuClass.systemData["LoadPlus"]["_menu"]].visible = false;
                  }
               }
               else if(this.clickTarget != "menu" && this.clickTarget != "move")
               {
                  if(MenuClass.systemData[this.tabName]["_visible"][MenuClass.systemData[this.tabName]["_menu"]])
                  {
                     if(MenuClass.systemData["LoadScale" + MenuClass.systemData["LoadPlus"]["_menu"]]["_name"] != "" && MenuClass.systemData["LoadScale" + MenuClass.systemData["LoadPlus"]["_menu"]]["_name"] != "0")
                     {
                        Main.mainWindow["loadObj" + MenuClass.systemData["LoadPlus"]["_menu"]].visible = true;
                     }
                     else
                     {
                        MenuClass.systemData[this.tabName]["_visible"][MenuClass.systemData[this.tabName]["_menu"]] = false;
                     }
                  }
                  else
                  {
                     Main.mainWindow["loadObj" + MenuClass.systemData["LoadPlus"]["_menu"]].visible = false;
                  }
               }
               if(this.clickTarget == "menu")
               {
                  Tab_AddCostumOpen.deleteFc("LoadPlus");
               }
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(
            this.tabName == "LoadAdd" ||
            this.tabName == "LoadAlpha" ||
            this.tabName == "LoadReversalDepth" ||
            this.tabName == "LoadScale" ||
            this.tabName == "LoadScaleY" ||
            this.tabName == "LoadScaleB" ||
            this.tabName == "LoadSize" ||
            this.tabName == "LoadRotation" ||
            this.tabName == "LoadX" ||
            this.tabName == "LoadY" ||
            this.tabName == "LoadSwfColor" ||
            this.tabName == "LoadFineX" ||
            this.tabName == "LoadFineY"
         )
         {
            try
            {
               new Add_LoadURL(this.tabName,this.charaNum,this.clickTarget);
            }
            catch(myError:Error)
            {
               ErrorFc(myError);
            }
         }
         else if(this.tabName == "Story_Page")
         {
            Tab_IEInOut.execute("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
         }

         try {
            if (this.charaData.hasOwnProperty(this.tabName) && Main.server) {
               var ev_data = InvertIEData.serializeCharacterData(this.charaNum, this.tabName);
               // trace("emitted data_set event: " + JSON.stringify(ev_data));
               Main.server.emitEvent("data_set", ev_data);
            }
         } catch (err: Error) {
            trace(err.getStackTrace());
         }
      }
      
      private function breastFc(param1:int, param2:int) : void
      {
         this.charaAdd.mune["mune" + param1].mune.gotoAndStop(param2);
         try
         {
            this.charaAdd.mune["mune" + param1].mune.muneMask.gotoAndStop(param2);
         }
         catch(myError:Error)
         {
         }
         if(Huku_CorsetDou.sepaLineCheck)
         {
            try
            {
               this.charaAdd.mune["mune" + param1].mune.sepaLine.gotoAndStop(param2);
            }
            catch(myError:Error)
            {
            }
         }
         try
         {
            this.charaAdd.mune["mune" + param1].mune.kage1_m.gotoAndStop(param2);
         }
         catch(myError:Error)
         {
         }
      }
      
      private function ErrorFc(error: Error) : void
      {

         if(this.clickTarget != "ErrorReload")
         {
            trace(this.tabName,"ロードエラー");
            trace(error.getStackTrace());
            // MenuClass.charaData[this.charaNum] = this.clone(MenuClass.charaMotoData[this.charaNum]);
            new SetClass(this.charaNum,this.tabName,"ErrorReload");
         }
         else
         {
            trace(this.tabName,"エラー");
         }
      }
      
      private function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
