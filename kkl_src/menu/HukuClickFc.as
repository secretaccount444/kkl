package menu
{
   import parameter.Dress_data;
   import undo.ClickAction;
   
   public class HukuClickFc
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var plusNum2:String;
      
      public function HukuClickFc(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var undoAction: ClickAction = null;

         super();

         if(!MenuClass.ClickRock && !MenuClass.HukuRock)
         {
            if(MenuClass._nowCharaNum != param1)
            {
               try
               {
                  Tab_ColorBtnSet2.customDeleteFc();
               }
               catch(myError:Error)
               {
               }
            }
            this.charaAdd = MenuClass.charaAdd[param1];
            this.charaData = MenuClass.charaData[param1];
            
            _loc7_ = HukuClickClass.targetName.charAt(HukuClickClass.targetName.length - 1);
            if((_loc8_ = HukuClickClass.targetName.substring(0,7)) == "loadObj")
            {
               undoAction = new ClickAction(param1, "CharaLoad", _loc7_);
               this.charaData["CharaLoadPlus"]["_visible"][_loc7_] = false;
               HukuClickClass.targetName = "CharaLoadPlus";
            }
            else if(HukuClickClass.targetName == "s_btn0" || HukuClickClass.targetName == "s_btn1" || HukuClickClass.targetName == "s_btn2")
            {
               if(!this.charaData["Vibrator"]["_visible"][0])
               {
                  undoAction = new ClickAction(param1, "s", 0);
                  if(HukuClickClass.downCount != 5)
                  {
                     new HukuClick_s(param1,HukuClickClass.targetName,1);
                  }
                  HukuClickClass.targetName = "s";
                  this.charaData["s"]["_sClick"] += 1;
                  if(this.charaData["EmotionManualAuto"]["_check"])
                  {
                     new Tab_EmotionCheck(param1,2);
                     this.charaData["HeartPlus"]["_meter"] += 0.6 + MenuClass.KandoSetNum;
                  }
               }
            }
            else if(HukuClickClass.targetName == "Spantu" || HukuClickClass.targetName == "Bura_hukin" || HukuClickClass.targetName == "Bura_HesoSen")
            {
               HukuClickClass.targetName = "Bura";
            }
            else if(HukuClickClass.targetName == "KutuUnder")
            {
               HukuClickClass.targetName = "Kutu";
            }
            else if(HukuClickClass.targetName == "Collar0" || HukuClickClass.targetName == "Collar1")
            {
               HukuClickClass.targetName = "Collar";
            }
            else if(HukuClickClass.targetName == "Necktie0" || HukuClickClass.targetName == "Necktie1" || HukuClickClass.targetName == "Necktie2")
            {
               HukuClickClass.targetName = "Necktie";
            }
            else if(HukuClickClass.targetName == "Headband0" || HukuClickClass.targetName == "Headband1" || HukuClickClass.targetName == "Headband2")
            {
               HukuClickClass.targetName = "Headband";
            }
            else if(HukuClickClass.targetName == "Necklace0")
            {
               HukuClickClass.targetName = "Necklace";
            }
            else if(HukuClickClass.targetName == "Headphone_Top" || HukuClickClass.targetName == "Headphone0" || HukuClickClass.targetName == "Headphone1")
            {
               HukuClickClass.targetName = "Headphone";
            }
            else if(HukuClickClass.targetName == "Glove_mask")
            {
               HukuClickClass.targetName = "Glove";
            }
            else if(HukuClickClass.targetName == "YsyatuMune2" || HukuClickClass.targetName == "YsyatuEri")
            {
               HukuClickClass.targetName = "YsyatuMune";
            }
            else if(HukuClickClass.targetName == "VestMune2" || HukuClickClass.targetName == "VestEri")
            {
               HukuClickClass.targetName = "VestMune";
            }
            else if(HukuClickClass.targetName == "nipple")
            {
               if(HukuClickClass.targetMouseY >= 2 || HukuClickClass.targetMouseY <= -2)
               {
                  if(HukuClickClass.targetMouseY > 0)
                  {
                     _loc4_ = 2;
                  }
                  else
                  {
                     _loc4_ = 1;
                  }
               }
               else if(HukuClickClass.targetMouseX > 0)
               {
                  _loc4_ = 3;
               }
               else
               {
                  _loc4_ = 4;
               }
               if(HukuClickClass.targetNamePPP == "mune0")
               {
                  HukuClickClass.targetName = "Nipple0";
               }
               else if(HukuClickClass.targetNamePPP == "mune1")
               {
                  HukuClickClass.targetName = "Nipple1";
               }
            }
            else if(HukuClickClass.targetName == "nippleG")
            {
               if(HukuClickClass.targetNamePPP == "mune0")
               {
                  HukuClickClass.targetName = "NippleGLeft";
               }
               else if(HukuClickClass.targetNamePPP == "mune1")
               {
                  HukuClickClass.targetName = "NippleGRight";
               }
            }
            else if(HukuClickClass.targetName == "HatBack")
            {
               HukuClickClass.targetName = "Hat";
            }
            else if(HukuClickClass.targetName == "Megane2")
            {
               HukuClickClass.targetName = "Megane";
            }
            else if(HukuClickClass.targetNamePP == "SideBurnLeft")
            {
               HukuClickClass.targetName = "SideBurnLeft";
            }
            else if(HukuClickClass.targetNamePP == "SideBurnRight")
            {
               HukuClickClass.targetName = "SideBurnRight";
            }
            else if(HukuClickClass.targetName == "hairBack")
            {
               HukuClickClass.targetName = "HairBack";
            }
            else if(HukuClickClass.targetNameP == "LegBand")
            {
               HukuClickClass.targetName = "LegBand";
            }
            else if(HukuClickClass.targetName == "hand")
            {
               HukuClickClass.targetName = "Glove";
            }
            else if(HukuClickClass.targetNamePP == "Bangs")
            {
               HukuClickClass.targetName = "Bangs";
            }

            if(MenuClass.clickMoveCheck || MenuClass.systemData["Zoom"]["_meter"] == 0)
            {
               if((HukuClickClass.targetName == "SideBurnLeft" || HukuClickClass.targetName == "SideBurnRight") && !MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  if(this.charaData[HukuClickClass.targetName]["_depth"] < 2)
                  {
                     this.charaData[HukuClickClass.targetName]["_depth"] += 1;
                  }
                  else
                  {
                     this.charaData[HukuClickClass.targetName]["_depth"] = 0;
                  }
               }
               else if(HukuClickClass.targetName == "eye0")
               {
                  if(this.charaData["EmotionManualAuto"]["_check"])
                  {
                     EnterFrameClass.charaEyeLeftClick[param1][0] = true;
                  }
               }
               else if(HukuClickClass.targetName == "eye1")
               {
                  if(this.charaData["EmotionManualAuto"]["_check"])
                  {
                     EnterFrameClass.charaEyeRightClick[param1][0] = true;
                  }
               }
               else if(HukuClickClass.targetName == "SeihukuMune" || HukuClickClass.targetName == "SeihukuDou" || HukuClickClass.targetName == "Seihuku" || HukuClickClass.targetName == "SodeSeihukuMune0_0" || HukuClickClass.targetName == "SodeSeihukuMune1_0" || HukuClickClass.targetName == "SodeSeihukuMune0_1" || HukuClickClass.targetName == "SodeSeihukuMune1_1")
               {
                  undoAction = new ClickAction(param1, "Seihuku", 0);
                  new Tab_EmotionCheck(param1,1);
                  if(MenuClass.spaceKeyPress)
                  {
                     this.charaData["Seihuku"]["_visible"][0] = false;
                  }
                  else if(this.charaData["Seihuku"]["_g0"] == 0)
                  {
                     this.charaData["Seihuku"]["_g0"] = 1;
                  }
                  else if(this.charaData["Seihuku"]["_g0"] == 1)
                  {
                     this.charaData["Seihuku"]["_visible"][0] = false;
                  }
                  HukuClickClass.targetName = "Seihuku";
               }
               else if(HukuClickClass.targetName == "YsyatuDou")
               {
                  undoAction = new ClickAction(param1, "Ysyatu", 0);
                  _loc6_ = this.charaData["YsyatuDou"]["_menu"];
                  new Tab_EmotionCheck(param1,1);
                  new HukuClickGimmick(param1,0,"Ysyatu");
                  HukuClickClass.targetName = "Ysyatu";
               }
               else if(HukuClickClass.targetName == "YsyatuMune" || HukuClickClass.targetName == "Ysyatu" || HukuClickClass.targetName == "SodeYsyatuMune0_0" || HukuClickClass.targetName == "SodeYsyatuMune1_0" || HukuClickClass.targetName == "SodeYsyatuMune0_1" || HukuClickClass.targetName == "SodeYsyatuMune1_1")
               {
                  undoAction = new ClickAction(param1, "Ysyatu", 0);
                  HukuClickClass.gimmickCheck = Dress_data.YsyatuData[this.charaData["Ysyatu"]["_menu"]]["gimmick"];
                  new Tab_EmotionCheck(param1,1);
                  new HukuClickGimmick(param1,1,"Ysyatu");
                  HukuClickClass.targetName = "Ysyatu";
               }
               else if(HukuClickClass.targetName == "TsyatuDou")
               {
                  undoAction = new ClickAction(param1, "Tsyatu", 0);
                  _loc6_ = this.charaData["TsyatuDou"]["_menu"];
                  new Tab_EmotionCheck(param1,1);
                  new HukuClickGimmick(param1,0,"Tsyatu");
                  HukuClickClass.targetName = "Tsyatu";
               }
               else if(HukuClickClass.targetName == "TsyatuMune" || HukuClickClass.targetName == "Tsyatu" || HukuClickClass.targetName == "SodeTsyatuMune0_0" || HukuClickClass.targetName == "SodeTsyatuMune1_0" || HukuClickClass.targetName == "SodeTsyatuMune0_1" || HukuClickClass.targetName == "SodeTsyatuMune1_1")
               {
                  undoAction = new ClickAction(param1, "Tsyatu", 0);
                  HukuClickClass.gimmickCheck = Dress_data.TsyatuData[this.charaData["Tsyatu"]["_menu"]]["gimmick"];
                  new Tab_EmotionCheck(param1,1);
                  new HukuClickGimmick(param1,1,"Tsyatu");
                  HukuClickClass.targetName = "Tsyatu";
               }
               else if(HukuClickClass.targetName == "VestDou")
               {
                  undoAction = new ClickAction(param1, "Vest", 0);
                  _loc6_ = this.charaData["VestDou"]["_menu"];
                  new Tab_EmotionCheck(param1,1);
                  new HukuClickGimmick(param1,0,"Vest");
                  HukuClickClass.targetName = "Vest";
               }
               else if(HukuClickClass.targetName == "VestMune" || HukuClickClass.targetName == "Vest" || HukuClickClass.targetName == "SodeVestMune0_0" || HukuClickClass.targetName == "SodeVestMune1_0" || HukuClickClass.targetName == "SodeVestMune0_1" || HukuClickClass.targetName == "SodeVestMune1_1")
               {
                  undoAction = new ClickAction(param1, "Vest", 0);
                  HukuClickClass.gimmickCheck = Dress_data.VestData[this.charaData["Vest"]["_menu"]]["gimmick"];
                  new Tab_EmotionCheck(param1,1);
                  new HukuClickGimmick(param1,1,"Vest");
                  HukuClickClass.targetName = "Vest";
               }
               else if(HukuClickClass.targetName == "YsyatuOnePiece")
               {
                  undoAction = new ClickAction(param1, "Ysyatu", 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Ysyatu"]["_visible"][0] = false;
                  HukuClickClass.targetName = "Ysyatu";
               }
               else if(HukuClickClass.targetName == "VestOnePiece")
               {
                  undoAction = new ClickAction(param1, "Vest", 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Vest"]["_visible"][0] = false;
                  HukuClickClass.targetName = "Vest";
               }
               else if(HukuClickClass.targetName == "TsyatuOnePiece")
               {
                  undoAction = new ClickAction(param1, "Tsyatu", 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Tsyatu"]["_visible"][0] = false;
                  HukuClickClass.targetName = "Tsyatu";
               }
               else if(HukuClickClass.targetName == "Megane")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,1);
                  if(MenuClass.spaceKeyPress)
                  {
                     this.charaData["Megane"]["_visible"][0] = false;
                  }
                  else
                  {
                     try
                     {
                        if(this.charaAdd.head.Megane.megane0.currentFrame == this.charaAdd.head.Megane.megane0.totalFrames)
                        {
                           this.charaData["Megane"]["_g0"] = 0;
                           this.charaData["Megane"]["_visible"][0] = false;
                        }
                        else
                        {
                           ++this.charaData["Megane"]["_g0"];
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               else if(HukuClickClass.targetName == "Headphone")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,1);
                  if(MenuClass.spaceKeyPress)
                  {
                     this.charaData["Headphone"]["_visible"][0] = false;
                  }
                  else if(this.charaData["Headphone"]["_g0"] == 1)
                  {
                     this.charaData["Headphone"]["_g0"] = 0;
                     this.charaData["Headphone"]["_visible"][0] = false;
                  }
                  else
                  {
                     ++this.charaData["Headphone"]["_g0"];
                  }
               }
               else if(HukuClickClass.targetNamePP == "hane0")
               {
                  undoAction = new ClickAction(param1, "Hane", 0);
                  new Tab_EmotionCheck(param1,1);
                  if(MenuClass.spaceKeyPress)
                  {
                     this.charaData["Hane"]["_visible"][0] = false;
                  }
                  else
                  {
                     try
                     {
                        if(this.charaAdd.hane.hane0.currentFrame == this.charaAdd.hane.hane0.totalFrames)
                        {
                           this.charaData["Hane"]["_posi0"] = 1;
                        }
                        else
                        {
                           this.charaData["Hane"]["_posi0"] = this.charaAdd.hane.hane0.currentFrame + 1;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  HukuClickClass.targetName = "Hane";
               }
               else if(HukuClickClass.targetNamePP == "hane1")
               {
                  undoAction = new ClickAction(param1, "Hane", 0);
                  new Tab_EmotionCheck(param1,1);
                  if(MenuClass.spaceKeyPress)
                  {
                     this.charaData["Hane"]["_visible"][0] = false;
                  }
                  else
                  {
                     try
                     {
                        if(this.charaAdd.hane.hane1.currentFrame == this.charaAdd.hane.hane1.totalFrames)
                        {
                           this.charaData["Hane"]["_posi1"] = 1;
                        }
                        else
                        {
                           this.charaData["Hane"]["_posi1"] = this.charaAdd.hane.hane1.currentFrame + 1;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  HukuClickClass.targetName = "Hane";
               }
               else if(HukuClickClass.targetName == "Tail")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,1);
                  if(MenuClass.spaceKeyPress)
                  {
                     this.charaData["Tail"]["_visible"][0] = false;
                  }
                  else
                  {
                     try
                     {
                        if(this.charaAdd.Tail.tail.currentFrame == this.charaAdd.Tail.tail.totalFrames)
                        {
                           this.charaData["Tail"]["_posi0"] = 1;
                        }
                        else
                        {
                           this.charaData["Tail"]["_posi0"] = this.charaAdd.Tail.tail.currentFrame + 1;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               else if(HukuClickClass.targetName == "Necktie")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  if(MenuClass.spaceKeyPress)
                  {
                     this.charaData["Necktie"]["_visible"][0] = false;
                  }
                  else if(Dress_data.NecktieData[this.charaData["Necktie"]["_menu"]]["gimmick"] == 1)
                  {
                     if(this.charaData["Necktie"]["_g0"] == 1)
                     {
                        this.charaData["Necktie"]["_g0"] = 0;
                        this.charaData["Necktie"]["_visible"][0] = false;
                     }
                     else
                     {
                        ++this.charaData["Necktie"]["_g0"];
                     }
                  }
                  else
                  {
                     this.charaData["Necktie"]["_visible"][0] = false;
                  }
                  new Tab_EmotionCheck(param1,1);
               }
               else if(HukuClickClass.targetName == "mune0")
               {
                  if(this.charaData["BreastManualAuto"]["_check"])
                  {
                     if(HukuClickClass.downCount != 5)
                     {
                        this.charaData["BreastMove"]["_mode"][0] = "tateYure";
                        this.charaData["BreastMove"]["_count"][0] = 0;
                        if(this.charaData["EmotionManualAuto"]["_check"])
                        {
                           undoAction = new ClickAction(param1, "HeartPlus", 0);
                           new Tab_EmotionCheck(param1,2);
                           this.charaData["HeartPlus"]["_meter"] += 0.5 + MenuClass.KandoSetNum;
                        }
                     }
                  }
               }
               else if(HukuClickClass.targetName == "mune1")
               {
                  if(this.charaData["BreastManualAuto"]["_check"])
                  {
                     if(HukuClickClass.downCount != 5)
                     {
                        this.charaData["BreastMove"]["_mode"][1] = "tateYure";
                        this.charaData["BreastMove"]["_count"][1] = 0;
                        if(this.charaData["EmotionManualAuto"]["_check"])
                        {
                           undoAction = new ClickAction(param1, "HeartPlus", 0);
                           new Tab_EmotionCheck(param1,2);
                           this.charaData["HeartPlus"]["_meter"] += 0.5 + MenuClass.KandoSetNum;
                        }
                     }
                  }
               }
               else if(HukuClickClass.targetName == "Nipple0")
               {
                  if(this.charaData["BreastManualAuto"]["_check"])
                  {
                     this.charaData["NippleMove"]["_mode"][0] = _loc4_;
                     this.charaData["NippleMove"]["_count"][0] = 0;
                     if(this.charaData["EmotionManualAuto"]["_check"])
                     {
                        undoAction = new ClickAction(param1, "HeartPlus", 0);
                        new Tab_EmotionCheck(param1,2);
                        this.charaData["HeartPlus"]["_meter"] += 0.6 + MenuClass.KandoSetNum;
                     }
                  }
               }
               else if(HukuClickClass.targetName == "Nipple1")
               {
                  if(this.charaData["BreastManualAuto"]["_check"])
                  {
                     this.charaData["NippleMove"]["_mode"][1] = _loc4_;
                     this.charaData["NippleMove"]["_count"][1] = 0;
                     if(this.charaData["EmotionManualAuto"]["_check"])
                     {
                        undoAction = new ClickAction(param1, "HeartPlus", 0);
                        new Tab_EmotionCheck(param1,2);
                        this.charaData["HeartPlus"]["_meter"] += 0.6 + MenuClass.KandoSetNum;
                     }
                  }
               }
               else if(HukuClickClass.targetName == "Tin")
               {
                  if(this.charaData["TinManualAuto"]["_check"])
                  {
                     undoAction = new ClickAction(param1, ["Tin", "HeartPlus"], 0);
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
                     this.charaData["Tin"]["_tClick"] += 1;
                     if(this.charaData["EmotionManualAuto"]["_check"])
                     {
                        new Tab_EmotionCheck(param1,2);
                        this.charaData["HeartPlus"]["_meter"] += 0.6 + MenuClass.KandoSetNum;
                     }
                  }
               }
               else if(HukuClickClass.targetName == "Tama")
               {
                  this.charaData["TamaMove"]["_mode"] = 1;
                  if(this.charaData["EmotionManualAuto"]["_check"])
                  {
                     new Tab_EmotionCheck(param1,2);
                  }
               }
               else if(HukuClickClass.targetName == "Socks" || HukuClickClass.targetName == "SocksTop")
               {
                  undoAction = new ClickAction(param1, "Socks" + HukuClickClass.targetNumPPP, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Socks" + HukuClickClass.targetNumPPP]["_visible"][0] = false;
                  HukuClickClass.targetName = "Socks" + HukuClickClass.targetNumPPP;
               }
               else if(HukuClickClass.targetName == "Tights")
               {
                  if(Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["_click"])
                  {
                     undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                     new Tab_EmotionCheck(param1,1);
                     this.charaData["Tights"]["_visible"][0] = false;
                     HukuClickClass.targetName = "Tights";
                  }
               }
               else if(HukuClickClass.targetName == "Kutu")
               {
                  undoAction = new ClickAction(param1, "Kutu" + HukuClickClass.targetNumPPP, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Kutu" + HukuClickClass.targetNumPPP]["_visible"][0] = false;
                  HukuClickClass.targetName = "Kutu" + HukuClickClass.targetNumPPP;
               }
               else if(HukuClickClass.targetName == "LegBand")
               {
                  undoAction = new ClickAction(param1, "LegBand" + HukuClickClass.targetNumPPP, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["LegBand" + HukuClickClass.targetNumPPP]["_visible"][0] = false;
                  HukuClickClass.targetName = "LegBand" + HukuClickClass.targetNumPPP;
               }
               else if(HukuClickClass.targetName == "Wristband")
               {
                  undoAction = new ClickAction(param1, "Wristband" + HukuClickClass.targetNum, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Wristband" + HukuClickClass.targetNum]["_visible"][0] = false;
                  HukuClickClass.targetName = "Wristband" + HukuClickClass.targetNum;
               }
               else if(HukuClickClass.targetName == "Glove")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName + HukuClickClass.targetNum, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Glove" + HukuClickClass.targetNum]["_visible"][0] = false;
                  HukuClickClass.targetName = "Glove" + HukuClickClass.targetNum;
               }
               else if(HukuClickClass.targetName == "Bracelet")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName + HukuClickClass.targetNum, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Bracelet" + HukuClickClass.targetNum]["_visible"][0] = false;
                  HukuClickClass.targetName = "Bracelet" + HukuClickClass.targetNum;
               }
               else if(HukuClickClass.targetName == "ArmBracelet")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName + HukuClickClass.targetNum, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["ArmBracelet" + HukuClickClass.targetNum]["_visible"][0] = false;
                  HukuClickClass.targetName = "ArmBracelet" + HukuClickClass.targetNum;
               }
               else if(HukuClickClass.targetName == "Armband")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName + HukuClickClass.targetNum, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Armband" + HukuClickClass.targetNum]["_visible"][0] = false;
                  HukuClickClass.targetName = "Armband" + HukuClickClass.targetNum;
               }
               else if(HukuClickClass.targetName == "Elbowpad")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName + HukuClickClass.targetNum, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Elbowpad" + HukuClickClass.targetNum]["_visible"][0] = false;
                  HukuClickClass.targetName = "Elbowpad" + HukuClickClass.targetNum;
               }
               else if(HukuClickClass.targetName == "Earring")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  _loc5_ = HukuClickClass.targetNamePP;
                  HukuClickClass.plusNum = _loc5_.charAt(_loc5_.length - 1);
                  HukuClickClass.targetName = "Earring" + HukuClickClass.plusNum;
                  new Tab_EmotionCheck(param1,1);
                  this.charaData[HukuClickClass.targetName]["_visible"][0] = false;
               }
               else if(HukuClickClass.targetName == "Skirt")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Skirt"]["_visible"][0] = false;
               }
               else if(HukuClickClass.targetName == "Zubon")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Zubon"]["_visible"][0] = false;
               }
               else if(HukuClickClass.targetName == "Bura")
               {
                  undoAction = new ClickAction(param1, ["Bura", "HeartPlus"], 0);
                  if(!Main.r18Check)
                  {
                     this.charaData["Bura"]["_visible"][0] = false;
                  }
                  this.charaData["HeartPlus"]["_meter"] += 0.5 + MenuClass.KandoSetNum;
                  new Tab_EmotionCheck(param1,2);
               }
               else if(HukuClickClass.targetName == "Pantu")
               {
                  undoAction = new ClickAction(param1, ["Pantu", "HeartPlus"], 0);
                  if(!Main.r18Check)
                  {
                     this.charaData["Pantu"]["_visible"][0] = false;
                  }
                  this.charaData["HeartPlus"]["_meter"] += 0.5 + MenuClass.KandoSetNum;
                  new Tab_EmotionCheck(param1,2);
               }
               else if(HukuClickClass.targetName == "Nawa")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,2);
                  this.charaData["Nawa"]["_visible"][0] = false;
               }
               else if(HukuClickClass.targetName == "SG")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,2);
                  this.charaData["SG"]["_visible"][0] = false;
               }
               else if(HukuClickClass.targetName == "vibrator")
               {
                  undoAction = new ClickAction(param1, "Vibrator", 0);
                  new Tab_EmotionCheck(param1,2);
                  this.charaData["Vibrator"]["_visible"][0] = false;
                  HukuClickClass.targetName = "Vibrator";
               }
               else if(HukuClickClass.targetName == "NippleGLeft")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,2);
                  this.charaData[HukuClickClass.targetName]["_visible"][0] = false;
               }
               else if(HukuClickClass.targetName == "NippleGRight")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,2);
                  this.charaData[HukuClickClass.targetName]["_visible"][0] = false;
               }
               else if(HukuClickClass.targetName == "Headband")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Headband"]["_visible"][0] = false;
               }
               else if(HukuClickClass.targetName == "Hat")
               {
                  undoAction = new ClickAction(param1, ["Hat", "Mimi"], 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Hat"]["_visible"][0] = false;
                  if(this.charaData["Mimi"]["_mimihat"] == 1)
                  {
                     this.charaData["Mimi"]["_visible"][0] = false;
                     new SetClass(param1,"Mimi","huku");
                  }
               }
               else if(HukuClickClass.targetName == "ribon0")
               {
                  HukuClickClass.plusNum = HukuClickClass.targetNameP.substring(5, HukuClickClass.targetNameP.length - 2);
                  
                  undoAction = new ClickAction(param1, "Ribon", HukuClickClass.plusNum);
                  _loc5_ = HukuClickClass.targetNameP.charAt(HukuClickClass.targetNameP.length - 1);
                  new Tab_EmotionCheck(param1,1);

                  if(_loc5_ == "0")
                  {
                     if(this.charaData["Ribon" + HukuClickClass.plusNum]["_reversal2"] == 0)
                     {
                        this.charaData["Ribon" + HukuClickClass.plusNum]["_reversal2"] = 1;
                     }
                     else if(this.charaData["Ribon" + HukuClickClass.plusNum]["_reversal2"] == 2)
                     {
                        this.charaData["RibonPlus"]["_visible"][HukuClickClass.plusNum] = false;
                     }
                  }
                  else if(this.charaData["Ribon" + HukuClickClass.plusNum]["_reversal2"] == 0)
                  {
                     this.charaData["Ribon" + HukuClickClass.plusNum]["_reversal2"] = 2;
                  }
                  else if(this.charaData["Ribon" + HukuClickClass.plusNum]["_reversal2"] == 1)
                  {
                     this.charaData["RibonPlus"]["_visible"][HukuClickClass.plusNum] = false;
                  }

                  HukuClickClass.targetName = "Ribon";
               }
               else if(HukuClickClass.targetName == "beltDou")
               {
                  this.plusNum2 = HukuClickClass.targetNameP.charAt(HukuClickClass.targetNameP.length - 1);
                  if(HukuClickClass.targetNameP.length == 7)
                  {
                     HukuClickClass.plusNum = HukuClickClass.targetNameP.substring(4,5);
                  }
                  else
                  {
                     HukuClickClass.plusNum = HukuClickClass.targetNameP.substring(4,6);
                  }

                  undoAction = new ClickAction(param1, "Belt", HukuClickClass.plusNum);
                  if(this.plusNum2 == "0")
                  {
                     if(this.charaData["Belt" + HukuClickClass.plusNum]["_reversal2"] == 0)
                     {
                        this.charaData["Belt" + HukuClickClass.plusNum]["_reversal2"] = 1;
                     }
                     else if(this.charaData["Belt" + HukuClickClass.plusNum]["_reversal2"] == 2)
                     {
                        this.charaData["BeltPlus"]["_visible"][HukuClickClass.plusNum] = false;
                     }
                  }
                  else if(this.charaData["Belt" + HukuClickClass.plusNum]["_reversal2"] == 0)
                  {
                     this.charaData["Belt" + HukuClickClass.plusNum]["_reversal2"] = 2;
                  }
                  else if(this.charaData["Belt" + HukuClickClass.plusNum]["_reversal2"] == 1)
                  {
                     this.charaData["BeltPlus"]["_visible"][HukuClickClass.plusNum] = false;
                  }
                  new Tab_EmotionCheck(param1,1);
                  HukuClickClass.targetName = "Belt";
               }
               else if(HukuClickClass.targetName == "Collar")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Collar"]["_visible"][0] = false;
               }
               else if(HukuClickClass.targetName == "chane")
               {
                  undoAction = new ClickAction(param1, "Collar", 0);
                  if(MenuClass.spaceKeyPress)
                  {
                     this.charaData["Collar"]["_visible"][0] = false;
                  }
                  else if(Dress_data.ObjData["Collar"][this.charaData["Collar"]["_menu"]]["chane"] == this.charaData["Collar"]["_g0"])
                  {
                     this.charaData["Collar"]["_g0"] = 0;
                  }
                  else
                  {
                     ++this.charaData["Collar"]["_g0"];
                  }
                  HukuClickClass.targetName = "Collar";
               }
               else if(HukuClickClass.targetName == "Necklace")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Necklace"]["_visible"][0] = false;
               }
               else if(HukuClickClass.targetName == "Gag")
               {
                  undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Gag"]["_visible"][0] = false;
               }
               else if(this.charaData["Mimi"]["_mimihat"] == 1 && HukuClickClass.targetName == "Mimi")
               {
                  undoAction = new ClickAction(param1, ["Mimi", "Hat"], 0);
                  new Tab_EmotionCheck(param1,1);
                  this.charaData["Mimi"]["_visible"][0] = false;
                  this.charaData["Hat"]["_visible"][0] = false;
                  new SetClass(param1,"Hat","huku");
               }
               else if(HukuClickClass.targetName == "UnderHair" || HukuClickClass.targetName == "HairBack" || HukuClickClass.targetNamePP == "Bangs" || HukuClickClass.targetName == "Mimi" || HukuClickClass.targetName == "Horn")
               {
                  if(MenuClass.spaceKeyPress)
                  {
                     undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                     this.charaData[HukuClickClass.targetName]["_visible"][0] = false;
                  }
               }
               else if(HukuClickClass.targetName == "SideBurnLeft" || HukuClickClass.targetName == "SideBurnRight")
               {
                  if(MenuClass.spaceKeyPress)
                  {
                     undoAction = new ClickAction(param1, HukuClickClass.targetName, 0);
                     this.charaData[HukuClickClass.targetName]["_visible"][0] = false;
                  }
               }
               else if(HukuClickClass.targetNameP == "HairEx0")
               {
                  if(MenuClass.spaceKeyPress)
                  {
                     this.plusNum2 = HukuClickClass.targetNamePP.charAt(HukuClickClass.targetNamePP.length - 1);
                     if(HukuClickClass.targetNamePP.length == 9)
                     {
                        HukuClickClass.plusNum = HukuClickClass.targetNamePP.substring(6,7);
                     }
                     else
                     {
                        HukuClickClass.plusNum = HukuClickClass.targetNamePP.substring(6,8);
                     }

                     undoAction = new ClickAction(param1, "HairEx", HukuClickClass.plusNum);
                     if(this.plusNum2 == "0")
                     {
                        if(this.charaData["HairEx" + HukuClickClass.plusNum]["_reversal2"] == 0)
                        {
                           this.charaData["HairEx" + HukuClickClass.plusNum]["_reversal2"] = 1;
                        }
                        else if(this.charaData["HairEx" + HukuClickClass.plusNum]["_reversal2"] == 2)
                        {
                           this.charaData["HairExPlus"]["_visible"][HukuClickClass.plusNum] = false;
                        }
                     }
                     else if(this.charaData["HairEx" + HukuClickClass.plusNum]["_reversal2"] == 0)
                     {
                        this.charaData["HairEx" + HukuClickClass.plusNum]["_reversal2"] = 2;
                     }
                     else if(this.charaData["HairEx" + HukuClickClass.plusNum]["_reversal2"] == 1)
                     {
                        this.charaData["HairExPlus"]["_visible"][HukuClickClass.plusNum] = false;
                     }
                     HukuClickClass.targetName = "HairExPlus";
                  }
               }
               else if(HukuClickClass.targetNameP == "mark0")
               {
                  if(MenuClass.spaceKeyPress)
                  {
                     this.plusNum2 = HukuClickClass.targetNamePP.charAt(HukuClickClass.targetNamePP.length - 1);
                     if(HukuClickClass.targetNamePP.length == 8)
                     {
                        HukuClickClass.plusNum = HukuClickClass.targetNamePP.substring(4,6);
                     }
                     else
                     {
                        HukuClickClass.plusNum = HukuClickClass.targetNamePP.substring(4,5);
                     }

                     undoAction = new ClickAction(param1, "Mark", HukuClickClass.plusNum);
                     if(this.plusNum2 == "0")
                     {
                        if(this.charaData["Mark" + HukuClickClass.plusNum]["_reversal2"] == 0)
                        {
                           this.charaData["Mark" + HukuClickClass.plusNum]["_reversal2"] = 1;
                        }
                        else if(this.charaData["Mark" + HukuClickClass.plusNum]["_reversal2"] == 2)
                        {
                           this.charaData["MarkPlus"]["_visible"][HukuClickClass.plusNum] = false;
                        }
                     }
                     else if(this.charaData["Mark" + HukuClickClass.plusNum]["_reversal2"] == 0)
                     {
                        this.charaData["Mark" + HukuClickClass.plusNum]["_reversal2"] = 2;
                     }
                     else if(this.charaData["Mark" + HukuClickClass.plusNum]["_reversal2"] == 1)
                     {
                        this.charaData["MarkPlus"]["_visible"][HukuClickClass.plusNum] = false;
                     }
                     HukuClickClass.targetName = "MarkPlus";
                  }
               }
               else if(HukuClickClass.targetName == "item")
               {
                  undoAction = new ClickAction(param1, "Item" + HukuClickClass.targetNum, 0);
                  this.charaData["Item" + HukuClickClass.targetNum]["_visible"][0] = false;
                  HukuClickClass.targetName = "Item" + HukuClickClass.targetNum;
               }
               else if(HukuClickClass.targetName == "eki" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "s", 0);
                  this.charaData["s"]["_sClick"] = 0;
                  this.charaAdd.dou.dou_shitaHuku.s.eki.gotoAndStop(1);
                  try
                  {
                     _loc2_ = 0;
                     while(_loc2_ <= 1)
                     {
                        this.charaAdd["ashi" + _loc2_].thigh.actual.thigh.eki.gotoAndStop(1);
                        _loc2_++;
                     }
                  }
                  catch(myError:Error)
                  {
                     trace(myError.getStackTrace());
                  }
               }
               else if(HukuClickClass.targetName == "hokuro0" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "FaceOption", 0);
                  this.charaData["FaceOption"]["_visible"][0] = false;
                  HukuClickClass.targetName = "FaceOption";
               }
               else if(HukuClickClass.targetName == "hokuro1" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "FaceOption", 1);
                  this.charaData["FaceOption"]["_visible"][1] = false;
                  HukuClickClass.targetName = "FaceOption";
               }
               else if(HukuClickClass.targetName == "hokuro2" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "FaceOption", 2);
                  this.charaData["FaceOption"]["_visible"][2] = false;
                  HukuClickClass.targetName = "FaceOption";
               }
               else if(HukuClickClass.targetName == "hokuro3" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "FaceOption", 3);
                  this.charaData["FaceOption"]["_visible"][3] = false;
                  HukuClickClass.targetName = "FaceOption";
               }
               else if(HukuClickClass.targetName == "hokuro4" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "FaceOption", 4);
                  this.charaData["FaceOption"]["_visible"][4] = false;
                  HukuClickClass.targetName = "FaceOption";
               }
               else if(HukuClickClass.targetName == "sobakasu0" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "FaceOption", 5);
                  this.charaData["FaceOption"]["_visible"][5] = false;
                  HukuClickClass.targetName = "FaceOption";
               }
               else if(HukuClickClass.targetName == "sobakasu1" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "FaceOption", 6);
                  this.charaData["FaceOption"]["_visible"][6] = false;
                  HukuClickClass.targetName = "FaceOption";
               }
               else if(HukuClickClass.targetName == "Hige" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "FaceOption", 7);
                  this.charaData["FaceOption"]["_visible"][7] = false;
                  HukuClickClass.targetName = "FaceOption";
               }
               else if(HukuClickClass.targetName == "ase" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "EmotionOption", 0);
                  this.charaData["EmotionOption"]["_visible"][0] = false;
                  HukuClickClass.targetName = "EmotionOption";
               }
               else if(HukuClickClass.targetName == "ikari" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "EmotionOption", 1);
                  this.charaData["EmotionOption"]["_visible"][1] = false;
                  HukuClickClass.targetName = "EmotionOption";
               }
               else if(HukuClickClass.targetName == "bikkuri" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "EmotionOption", 2);
                  this.charaData["EmotionOption"]["_visible"][2] = false;
                  HukuClickClass.targetName = "EmotionOption";
               }
               else if(HukuClickClass.targetName == "kizuku" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "EmotionOption", 3);
                  this.charaData["EmotionOption"]["_visible"][3] = false;
                  HukuClickClass.targetName = "EmotionOption";
               }
               else if(HukuClickClass.targetName == "warai" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "EmotionOption", 4);
                  this.charaData["EmotionOption"]["_visible"][4] = false;
                  HukuClickClass.targetName = "EmotionOption";
               }
               else if((HukuClickClass.targetName == "eye0" || HukuClickClass.targetName == "eye1") && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "EyeOption", 0);
                  if(this.charaData["EyeOption"]["_visible"][3])
                  {
                     this.charaData["EyeOption"]["_visible"][3] = false;
                  }
                  else if(this.charaData["EyeOption"]["_visible"][2])
                  {
                     this.charaData["EyeOption"]["_visible"][2] = false;
                  }
                  else if(this.charaData["EyeOption"]["_visible"][1])
                  {
                     this.charaData["EyeOption"]["_visible"][1] = false;
                  }
                  else if(this.charaData["EyeOption"]["_visible"][0])
                  {
                     this.charaData["EyeOption"]["_visible"][0] = false;
                  }
                  HukuClickClass.targetName = "EyeOption";
               }
               else if(HukuClickClass.targetName == "iki" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "EyeOption", 0);
                  this.charaData["EyeOption"]["_visible"][4] = false;
                  HukuClickClass.targetName = "EyeOption";
               }
               else if(HukuClickClass.targetName == "faceKage0" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "EyeOption", 0);
                  this.charaData["EyeOption"]["_visible"][5] = false;
                  HukuClickClass.targetName = "EyeOption";
               }
               else if(HukuClickClass.targetName == "faceKage1" && MenuClass.spaceKeyPress)
               {
                  undoAction = new ClickAction(param1, "EyeOption", 0);
                  this.charaData["EyeOption"]["_visible"][6] = false;
                  HukuClickClass.targetName = "EyeOption";
               }
            }

            if (undoAction) {
               undoAction.recordNewData(HukuClickClass.targetName);
               Main.undoTimeline.push(undoAction);
            }

            new Tab_SetClass();

            try
            {
               new SetClass(param1,HukuClickClass.targetName,"huku");
            }
            catch(myError:Error)
            {
            }
            if(this.charaData["HeartPlus"]["_meter"] <= 0)
            {
               this.charaData["HeartPlus"]["_meter"] = 0;
            }
         }
      }
   }
}
