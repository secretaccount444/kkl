package menu
{
   import parameter.Dress_data;
   
   public class Huku_Ude
   {
       
      
      private var tabName:String;
      
      private var charaNum:int;
      
      private var handNum:int;
      
      private var udeAngle:int;
      
      private var KataAngle:Array;
      
      private var menuNum:int;
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_Ude(param1:String, param2:int, param3:int)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         super();
         this.tabName = param1;
         this.charaNum = param2;
         this.handNum = param3;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         this.KataAngle = new Array(Math.round(49 * this.charaData["LeftArm"]["_meter"] / 100),Math.round(49 * this.charaData["RightArm"]["_meter"] / 100));
         if(this.tabName == "Wristband0" || this.tabName == "Wristband1")
         {
            this.menuNum = this.charaData[this.tabName]["_menu"];
            if(Dress_data.WristbandData[this.menuNum]["arm1"] == 0 || !this.charaData[this.tabName]["_visible"][0])
            {
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Wristband.visible = false;
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Wristband.gotoAndStop(1);
            }
            else if(this.charaData[this.tabName]["_visible"][0])
            {
               if(Dress_data.WristbandData[this.menuNum]["arm1"] != 0)
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Wristband.visible = true;
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Wristband.gotoAndStop(Dress_data.WristbandData[this.menuNum]["arm1"] + 1);
               }
            }
            if(Dress_data.WristbandData[this.menuNum]["arm2"] == 0 || !this.charaData[this.tabName]["_visible"][0])
            {
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Wristband.visible = false;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Wristband.gotoAndStop(1);
            }
            else if(this.charaData[this.tabName]["_visible"][0])
            {
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Wristband.visible = true;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Wristband.gotoAndStop(Dress_data.WristbandData[this.menuNum]["arm2"] + 2);
            }
            if(this.charaData[this.tabName]["_visible"][0])
            {
               try
               {
                  this.udeAngle = this.charaAdd["handm1_" + this.handNum].hand.arm1.currentFrame;
                  if(this.udeAngle >= 1 && this.udeAngle <= 22)
                  {
                     this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Wristband.Wristband.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Wristband.Wristband.gotoAndStop(2);
                  }
               }
               catch(myError:Error)
               {
               }
               this.Fc4("Wristband");
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
         }
         else if(this.tabName == "Glove0" || this.tabName == "Glove1" || this.tabName == "GloveLength0" || this.tabName == "GloveLength1")
         {
            if(this.tabName == "Glove0" || this.tabName == "GloveLength0")
            {
               this.menuNum = this.charaData["Glove0"]["_menu"];
               _loc4_ = this.charaData["GloveLength0"]["_menu"];
            }
            else
            {
               this.menuNum = this.charaData["Glove1"]["_menu"];
               _loc4_ = this.charaData["GloveLength1"]["_menu"];
            }
            if(Dress_data.GloveData[this.menuNum].length == 1)
            {
               _loc4_ = 0;
            }
            if(Dress_data.GloveData[this.menuNum][_loc4_]["arm1_top"] == 0 && Dress_data.GloveData[this.menuNum][_loc4_]["arm1"] == 0 || !this.charaData[this.tabName]["_visible"][0])
            {
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove.visible = false;
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove_mask.visible = false;
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove.gotoAndStop(1);
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove_mask.gotoAndStop(1);
            }
            else
            {
               if(Dress_data.GloveData[this.menuNum][_loc4_]["arm1_top"] != 0)
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove.visible = true;
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove.gotoAndStop(Dress_data.GloveData[this.menuNum][_loc4_]["arm1_top"] + 1);
               }
               else
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove.visible = false;
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove.gotoAndStop(1);
               }
               if(Dress_data.GloveData[this.menuNum][_loc4_]["arm1"] != 0)
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove_mask.visible = true;
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove_mask.gotoAndStop(Dress_data.GloveData[this.menuNum][_loc4_]["arm1"] + 1);
               }
               else
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove_mask.visible = false;
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove_mask.gotoAndStop(1);
               }
            }
            if(Dress_data.GloveData[this.menuNum][_loc4_]["arm2_top"] == 0 && Dress_data.GloveData[this.menuNum][_loc4_]["arm2"] == 0 || !this.charaData[this.tabName]["_visible"][0])
            {
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove.visible = false;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove_mask.visible = false;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove.gotoAndStop(1);
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove_mask.gotoAndStop(1);
            }
            else
            {
               if(Dress_data.GloveData[this.menuNum][_loc4_]["arm2_top"] != 0)
               {
                  this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove.visible = true;
                  this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove.gotoAndStop(Dress_data.GloveData[this.menuNum][_loc4_]["arm2_top"] + 1);
               }
               else
               {
                  this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove.visible = false;
                  this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove.gotoAndStop(1);
               }
               if(Dress_data.GloveData[this.menuNum][_loc4_]["arm2"] != 0)
               {
                  this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove_mask.visible = true;
                  this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove_mask.gotoAndStop(Dress_data.GloveData[this.menuNum][_loc4_]["arm2"] + 1);
               }
               else
               {
                  this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove_mask.visible = false;
                  this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove_mask.gotoAndStop(1);
               }
            }
            try
            {
               this.udeAngle = this.charaAdd["handm1_" + this.handNum].hand.arm1.currentFrame;
               if(this.udeAngle >= 1 && this.udeAngle <= 22)
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove.Glove.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove.Glove.gotoAndStop(2);
               }
            }
            catch(myError:Error)
            {
            }
            if(Dress_data.GloveData[this.menuNum][_loc4_]["arm0"] == 0)
            {
               this.charaAdd["handm1_" + this.handNum].hand.arm0.hand.glove.visible = false;
               this.charaAdd["handm1_" + this.handNum].hand.arm0.hand.glove.gotoAndStop(1);
            }
            else
            {
               this.charaAdd["handm1_" + this.handNum].hand.arm0.hand.glove.gotoAndStop(Dress_data.GloveData[this.menuNum][_loc4_]["arm0"] + 1);
               this.charaAdd["handm1_" + this.handNum].hand.arm0.hand.glove.visible = true;
            }
            if(this.charaData[this.tabName]["_visible"][0])
            {
               this.Fc4("Glove");
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
         }
         else if(this.tabName == "Bracelet0" || this.tabName == "Bracelet1")
         {
            this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Bracelet.visible = this.charaData[this.tabName]["_visible"][0];
            if(this.charaData[this.tabName]["_visible"][0])
            {
               this.menuNum = this.charaData[this.tabName]["_menu"];
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Bracelet.gotoAndStop(this.menuNum + 2);
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Bracelet.mouseChildren = false;
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Bracelet.buttonMode = true;
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Bracelet.Num = this.handNum;
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
            else
            {
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Bracelet.gotoAndStop(1);
            }
         }
         else if(this.tabName == "ArmBracelet0" || this.tabName == "ArmBracelet1")
         {
            this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.ArmBracelet.visible = this.charaData[this.tabName]["_visible"][0];
            if(this.charaData[this.tabName]["_visible"][0])
            {
               this.menuNum = this.charaData[this.tabName]["_menu"];
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.ArmBracelet.gotoAndStop(this.menuNum + 2);
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.ArmBracelet.mouseChildren = false;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.ArmBracelet.buttonMode = true;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.ArmBracelet.Num = this.handNum;
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
            else
            {
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.ArmBracelet.gotoAndStop(1);
            }
         }
         else if(this.tabName == "Armband0" || this.tabName == "Armband1")
         {
            this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Armband.visible = this.charaData[this.tabName]["_visible"][0];
            if(this.charaData[this.tabName]["_visible"][0])
            {
               this.menuNum = this.charaData[this.tabName]["_menu"];
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Armband.gotoAndStop(this.menuNum + 2);
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Armband.mouseChildren = false;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Armband.buttonMode = true;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Armband.Num = this.handNum;
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
            else
            {
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Armband.gotoAndStop(1);
            }
         }
         else if(this.tabName == "Elbowpad0" || this.tabName == "Elbowpad1")
         {
            this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Elbowpad.visible = this.charaData[this.tabName]["_visible"][0];
            this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Elbowpad.visible = this.charaData[this.tabName]["_visible"][0];
            if(this.charaData[this.tabName]["_visible"][0])
            {
               this.menuNum = this.charaData[this.tabName]["_menu"];
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Elbowpad.gotoAndStop(this.menuNum + 2);
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Elbowpad.gotoAndStop(this.menuNum + 2);
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Elbowpad.mouseChildren = false;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Elbowpad.buttonMode = true;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Elbowpad.Num = this.handNum;
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Elbowpad.mouseChildren = false;
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Elbowpad.buttonMode = true;
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Elbowpad.Num = this.handNum;
               new Chara_ColorClass(this.charaNum,this.tabName);
            }
            else
            {
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Elbowpad.gotoAndStop(1);
               this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Elbowpad.gotoAndStop(1);
            }
         }
         else if(this.tabName == "Ysyatu")
         {
            if(this.handNum == 0)
            {
               _loc5_ = this.charaData["YsyatuLeftArm"]["_menu"];
            }
            else
            {
               _loc5_ = this.charaData["YsyatuRightArm"]["_menu"];
            }
            this.Fc1(Dress_data.ArmData[_loc5_]["arm1"],Dress_data.ArmData[_loc5_]["arm2"]);
            try
            {
               this.udeAngle = this.charaAdd["handm1_" + this.handNum].hand.arm1.currentFrame;
               if(this.udeAngle >= 1 && this.udeAngle <= 22)
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Ysyatu.Ysyatu.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Ysyatu.Ysyatu.gotoAndStop(2);
               }
            }
            catch(myError:Error)
            {
            }
            this.Fc2();
            this.sodeFc(0,"Ysyatu");
            this.sodeFc(1,"Ysyatu");
         }
         else if(this.tabName == "Tsyatu")
         {
            if(this.handNum == 0)
            {
               _loc6_ = this.charaData["TsyatuLeftArm"]["_menu"];
            }
            else
            {
               _loc6_ = this.charaData["TsyatuRightArm"]["_menu"];
            }
            this.Fc1(Dress_data.ArmData[_loc6_]["arm1"],Dress_data.ArmData[_loc6_]["arm2"]);
            try
            {
               this.udeAngle = this.charaAdd["handm1_" + this.handNum].hand.arm1.currentFrame;
               if(this.udeAngle >= 1 && this.udeAngle <= 22)
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Tsyatu.Ysyatu.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Tsyatu.Ysyatu.gotoAndStop(2);
               }
            }
            catch(myError:Error)
            {
            }
            this.Fc2();
            this.sodeFc(0,"Tsyatu");
            this.sodeFc(1,"Tsyatu");
         }
         else if(this.tabName == "Vest")
         {
            if(this.handNum == 0)
            {
               _loc7_ = this.charaData["VestLeftArm"]["_menu"];
            }
            else
            {
               _loc7_ = this.charaData["VestRightArm"]["_menu"];
            }
            this.Fc1(Dress_data.ArmData[_loc7_]["arm1"],Dress_data.ArmData[_loc7_]["arm2"]);
            try
            {
               this.udeAngle = this.charaAdd["handm1_" + this.handNum].hand.arm1.currentFrame;
               if(this.udeAngle >= 1 && this.udeAngle <= 22)
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Vest.Ysyatu.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Vest.Ysyatu.gotoAndStop(2);
               }
            }
            catch(myError:Error)
            {
            }
            this.Fc2();
            this.sodeFc(0,"Vest");
            this.sodeFc(1,"Vest");
         }
         else if(this.tabName == "Seihuku")
         {
            if(this.handNum == 0)
            {
               _loc8_ = this.charaData["SeihukuLeftArm"]["_menu"];
            }
            else
            {
               _loc8_ = this.charaData["SeihukuRightArm"]["_menu"];
            }
            this.Fc1(Dress_data.ArmData[_loc8_]["arm1"],Dress_data.ArmData[_loc8_]["arm2"]);
            try
            {
               this.udeAngle = this.charaAdd["handm1_" + this.handNum].hand.arm1.currentFrame;
               if(this.udeAngle >= 1 && this.udeAngle <= 22)
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Seihuku.Ysyatu.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Seihuku.Ysyatu.gotoAndStop(2);
               }
            }
            catch(myError:Error)
            {
            }
            this.Fc2();
            this.sodeFc(0,"Seihuku");
            this.sodeFc(1,"Seihuku");
         }
         else if(this.tabName == "Item")
         {
            try
            {
               this.charaAdd["handm1_" + this.handNum].hand.item.hand.hand.item.mouseChildren = false;
               this.charaAdd["handm1_" + this.handNum].hand.item.hand.hand.item.buttonMode = true;
               this.charaAdd["handm1_" + this.handNum].hand.item.hand.hand.item.Num = this.handNum;
               if(this.charaData["Item" + 0]["_visible"][0] && Dress_data.ObjData["Item0"][this.charaData["Item" + 0]["_menu"]]["word"] == 1)
               {
                  this.charaAdd["handm1_" + 0].hand.item.hand.hand.item.scaleX = -1;
               }
               else if(this.charaData["Item" + 0]["_visible"][0] && Dress_data.ObjData["Item0"][this.charaData["Item" + 0]["_menu"]]["word"] == 2)
               {
                  try
                  {
                     this.charaAdd["handm1_" + 0].hand.item.hand.hand.item.reversalObj.scaleX = -1;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               new Chara_ColorClass(this.charaNum,"Item" + this.handNum);
            }
            catch(myError:Error)
            {
            }
         }
         if(this.charaData["Item" + this.handNum]["_visible"][0])
         {
            try
            {
               _loc9_ = MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.getChildIndex(MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.item);
               _loc10_ = MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.getChildIndex(MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.itemSwapMc);
               _loc11_ = "LeftHand";
               _loc12_ = "TsyatuLeftArm";
               _loc13_ = "YsyatuLeftArm";
               _loc14_ = "VestLeftArm";
               _loc15_ = "SeihukuLeftArm";
               if(this.handNum == 1)
               {
                  _loc11_ = "RightHand";
                  _loc12_ = "TsyatuRightArm";
                  _loc13_ = "YsyatuRightArm";
                  _loc14_ = "VestRightArm";
                  _loc15_ = "SeihukuRightArm";
               }
               _loc16_ = false;
               _loc17_ = false;
               if(this.charaData["Tsyatu"]["_visible"][0] && Dress_data.ArmData[this.charaData[_loc12_]["_menu"]]["item"] == 1)
               {
                  _loc16_ = true;
               }
               else if(this.charaData["Ysyatu"]["_visible"][0] && Dress_data.ArmData[this.charaData[_loc13_]["_menu"]]["item"] == 1)
               {
                  _loc16_ = true;
               }
               else if(this.charaData["Vest"]["_visible"][0] && Dress_data.ArmData[this.charaData[_loc14_]["_menu"]]["item"] == 1)
               {
                  _loc16_ = true;
               }
               else if(this.charaData["Seihuku"]["_visible"][0] && Dress_data.ArmData[this.charaData[_loc15_]["_menu"]]["item"] == 1)
               {
                  _loc16_ = true;
               }
               if(this.charaData["Tsyatu"]["_visible"][0] && Dress_data.ArmData[this.charaData[_loc12_]["_menu"]]["item"] == 2)
               {
                  _loc17_ = true;
               }
               else if(this.charaData["Ysyatu"]["_visible"][0] && Dress_data.ArmData[this.charaData[_loc13_]["_menu"]]["item"] == 2)
               {
                  _loc17_ = true;
               }
               else if(this.charaData["Vest"]["_visible"][0] && Dress_data.ArmData[this.charaData[_loc14_]["_menu"]]["item"] == 2)
               {
                  _loc17_ = true;
               }
               else if(this.charaData["Seihuku"]["_visible"][0] && Dress_data.ArmData[this.charaData[_loc15_]["_menu"]]["item"] == 2)
               {
                  _loc17_ = true;
               }
               if(Dress_data.ObjData["Item0"][this.charaData["Item" + this.handNum]["_menu"]]["arm1"] >= 1)
               {
                  MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.item.visible = true;
               }
               MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.sen.visible = true;
               MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.color0.visible = true;
               if(Dress_data.ObjData["Item0"][this.charaData["Item" + this.handNum]["_menu"]]["depth"][this.charaData[_loc11_]["_menu"]] == 0)
               {
                  if(_loc9_ > _loc10_)
                  {
                     MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.swapChildren(MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.item,MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.itemSwapMc);
                  }
               }
               else if(_loc16_ && Dress_data.ObjData["Item0"][this.charaData["Item" + this.handNum]["_menu"]]["arm1"] >= 1)
               {
                  if(_loc9_ > _loc10_)
                  {
                     MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.swapChildren(MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.item,MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.itemSwapMc);
                  }
                  MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.item.visible = false;
                  MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.sen.visible = false;
                  MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.color0.visible = false;
               }
               else if(_loc9_ < _loc10_)
               {
                  MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.swapChildren(MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.item,MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.itemSwapMc);
               }
               if(Dress_data.ObjData["Item0"][this.charaData["Item" + this.handNum]["_menu"]]["arm1"] >= 1)
               {
                  _loc18_ = MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.getChildIndex(MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.item);
                  _loc19_ = MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.getChildIndex(MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.itemSwapMc);
                  if(_loc17_)
                  {
                     if(_loc18_ > _loc19_)
                     {
                        MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.swapChildren(MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.item,MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.itemSwapMc);
                     }
                  }
                  else if(_loc18_ < _loc19_)
                  {
                     MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.swapChildren(MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.item,MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.itemSwapMc);
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(!MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.sen.visible)
         {
            try
            {
               MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.sen.visible = true;
               MenuClass.charaAdd[this.charaNum]["handm1_" + this.handNum].hand.arm1.arm1.arm1.color0.visible = true;
            }
            catch(myError:Error)
            {
            }
         }
         if(!this.charaData["Glove" + this.handNum]["_visible"][0])
         {
            this.charaAdd["handm1_" + this.handNum].hand.arm0.hand.glove.visible = false;
         }
      }
      
      private function sodeFc(param1:int, param2:String) : void
      {
         try
         {
            if(this.KataAngle[param1] <= 34)
            {
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_1.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_2.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_3.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_1.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_2.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_3.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen1.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen2.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen3.visible = false;
               }
               catch(myError:Error)
               {
               }
            }
            else if(this.KataAngle[param1] <= 38)
            {
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_1.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_2.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_3.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_1.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_2.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_3.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen1.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen2.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen3.visible = false;
               }
               catch(myError:Error)
               {
               }
            }
            else if(this.KataAngle[param1] <= 44)
            {
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_1.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_2.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_3.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_1.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_2.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_3.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen1.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen2.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen3.visible = false;
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_1.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_2.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color1_3.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_1.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_2.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.color2_3.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen1.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen2.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["Sode" + param2 + "Mune1_" + param1].sode0.sen3.visible = true;
               }
               catch(myError:Error)
               {
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      private function Fc1(param1:int, param2:int) : void
      {
         this.charaAdd["handm0_" + this.handNum].shoulder_back[this.tabName].visible = this.charaData[this.tabName]["_visible"][0];
         this.charaAdd["handm0_" + this.handNum].shoulder[this.tabName].visible = this.charaData[this.tabName]["_visible"][0];
         this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2[this.tabName].visible = this.charaData[this.tabName]["_visible"][0];
         this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1[this.tabName].visible = this.charaData[this.tabName]["_visible"][0];
         if(param1 == 0)
         {
            this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1[this.tabName].visible = false;
            this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1[this.tabName].gotoAndStop(1);
         }
         else
         {
            this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1[this.tabName].gotoAndStop(param1 + 1);
         }
         if(param2 == 0)
         {
            this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2[this.tabName].visible = false;
            this.charaAdd["handm0_" + this.handNum].shoulder_back[this.tabName].visible = false;
            this.charaAdd["handm0_" + this.handNum].shoulder[this.tabName].visible = false;
            this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2[this.tabName].gotoAndStop(1);
            this.charaAdd["handm0_" + this.handNum].shoulder_back[this.tabName].gotoAndStop(1);
            this.charaAdd["handm0_" + this.handNum].shoulder[this.tabName].gotoAndStop(1);
         }
         else
         {
            this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2[this.tabName].gotoAndStop(param2 + 1);
            this.charaAdd["handm0_" + this.handNum].shoulder_back[this.tabName].gotoAndStop(param2 + 1);
            this.charaAdd["handm0_" + this.handNum].shoulder[this.tabName].gotoAndStop(param2 + 1);
         }
         try
         {
            if(this.KataAngle[this.handNum] >= 30)
            {
               this.charaAdd["handm0_" + this.handNum].shoulder[this.tabName].sen.mask = this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2[this.tabName].maskMc0;
            }
            else
            {
               this.charaAdd["handm0_" + this.handNum].shoulder[this.tabName].sen.mask = null;
               this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2[this.tabName].maskMc0.visible = false;
            }
         }
         catch(myError:Error)
         {
         }
         if(this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Seihuku.visible || this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Vest.visible || this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Ysyatu.visible || this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Tsyatu.visible)
         {
            this.charaAdd["handm0_" + this.handNum].shoulder.sen.visible = false;
         }
         else
         {
            this.charaAdd["handm0_" + this.handNum].shoulder.sen.visible = true;
         }
      }
      
      private function Fc2() : void
      {
         this.Fc4(this.tabName);
         this.charaAdd["handm0_" + this.handNum].shoulder[this.tabName].mouseChildren = false;
         this.charaAdd["handm0_" + this.handNum].shoulder[this.tabName].buttonMode = true;
         this.charaAdd["handm0_" + this.handNum].shoulder[this.tabName].Num = this.handNum;
         this.charaAdd["handm0_" + this.handNum].shoulder_back[this.tabName].mouseChildren = false;
         this.charaAdd["handm0_" + this.handNum].shoulder_back[this.tabName].buttonMode = true;
         this.charaAdd["handm0_" + this.handNum].shoulder_back[this.tabName].Num = this.handNum;
         new Chara_ColorClass(this.charaNum,this.tabName + "Arm1");
         new Chara_ColorClass(this.charaNum,this.tabName + "Arm2");
      }
      
      private function Fc4(param1:String) : void
      {
         this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1[param1].mouseChildren = false;
         this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1[param1].buttonMode = true;
         this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1[param1].Num = this.handNum;
         if(param1 == "Glove")
         {
            this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove_mask.mouseChildren = false;
            this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove_mask.buttonMode = true;
            this.charaAdd["handm1_" + this.handNum].hand.arm1.arm1.arm1.Glove_mask.Num = this.handNum;
         }
         this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2[param1].mouseChildren = false;
         this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2[param1].buttonMode = true;
         this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2[param1].Num = this.handNum;
         if(param1 == "Glove")
         {
            this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove_mask.mouseChildren = false;
            this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove_mask.buttonMode = true;
            this.charaAdd["handm0_" + this.handNum].hand.arm2.arm2.Glove_mask.Num = this.handNum;
         }
      }
   }
}
