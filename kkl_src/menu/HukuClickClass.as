package menu
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import undo.ClickAction;
   
   public class HukuClickClass
   {
      
      public static var targetNum:int;
      
      public static var targetNumPPP:int;
      
      public static var targetName:String;
      
      public static var targetNameP:String;
      
      public static var targetNamePP:String;
      
      public static var targetNamePPP:String;
      
      public static var targetMouseX:int;
      
      public static var targetMouseY:int;
      
      public static var gimmickCheck:int;
      
      public static var downCount:int;
      
      public static var nagaoshiCount:int;
      
      public static var nagaoshifirst:int;
      
      public static var nagaoshiFlag:int;
      
      public static var plusNum:String;

      public static var curUndoAction: ClickAction;
      public static var initSClick: Number;
      public static var holdPushUndoAction: Boolean;
       
      
      private var charaNum:int;
      
      private var charaData:Object;
      
      public function HukuClickClass(param1:Object)
      {
         super();
         curUndoAction = null;
         holdPushUndoAction = false;
         param1.addEventListener(MouseEvent.CLICK,this.HukuClick);
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.MenuMouseDown);
         param1.addEventListener(MouseEvent.MOUSE_MOVE,this.MenuMouseMove);
         param1.addEventListener(MouseEvent.MOUSE_UP,this.MenuMouseUp);
      }
      
      private function MenuMouseDown(param1:MouseEvent) : void
      {
         if(!MenuClass.ClickRock && !MenuClass.HukuRock && !Main.clickHandler.identifyModeActive)
         {
            targetName = param1.target.name;
            if(param1.target.parent.parent.name == "mune0")
            {
               targetName = "mune0";
            }
            else if(param1.target.parent.parent.name == "mune1")
            {
               targetName = "mune1";
            }
            this.charaNum = param1.currentTarget.Num;
            this.charaData = MenuClass.charaData[this.charaNum];
            downCount = 0;
            nagaoshiCount = 0;
            nagaoshifirst = 30;
            nagaoshiFlag = 0;

            initSClick = this.charaData["s"]["_sClick"];
            curUndoAction = new ClickAction(this.charaNum, ["s", "HeartPlus"], 0);
            holdPushUndoAction = this.charaData["EmotionManualAuto"]["_check"];

            Main.stageVar.addEventListener(Event.ENTER_FRAME,this.EnterFrame);
            Main.stageVar.addEventListener(Event.ENTER_FRAME,this.EnterFrame2);
            Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,this.MenuMouseUp2);
            if(HukuClickClass.targetName == "s_btn0" || HukuClickClass.targetName == "s_btn1" || HukuClickClass.targetName == "s_btn2")
            {
               new SoundCharaFc(this.charaNum,"n",1);
            }
            if(MenuClass.clickMoveCheck || MenuClass.systemData["Zoom"]["_meter"] == 0)
            {
               if(HukuClickClass.targetName == "mouth")
               {
                  if(this.charaData["EmotionManualAuto"]["_check"])
                  {
                     new Tab_EmotionCheck(this.charaNum,0);
                     this.charaData["HeartPlus"]["_meter"] += 0.5 + MenuClass.KandoSetNum;
                  }
                  new SoundCharaFc(this.charaNum,"k",1);
               }
            }
         }
      }
      
      private function HukuClick(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         if (Main.clickHandler.identifyModeActive) {
            try
            {
               var partNum = NaN;
               var partType = "";

               if (e.target.name.substring(0, 7) == "loadObj") {
                  partType = "CharaLoad";
                  partNum = parseInt(e.target.name.substring(7), 10);
               } else if (e.target.name == "ribon0") {
                  partType = "Ribon";
                  partNum = parseInt(e.target.parent.name.substring(5, e.target.parent.name.length - 2), 10);
               } else if (e.target.name == "beltDou") {
                  partType = "Belt";
                  partNum = parseInt(e.target.parent.name.substring(4, e.target.parent.name.length - 2), 10);
               } else if (e.target.parent.name == "HairEx0") {
                  partType = "HairEx";
                  partNum = parseInt(e.target.parent.parent.name.substring(6, e.target.parent.parent.name.length - 2), 10);
               } else if (e.target.parent.name == "mark0") {
                  partType = "Mark";
                  partNum = parseInt(e.target.parent.parent.name.substring(4, e.target.parent.parent.name.length - 2), 10);
               }

               if (!isNaN(partNum) && partType) {
                  MenuClass.systemData[partType + "Plus"]["_menu"] = partNum;
                  if (MenuClass._nowHeaderName == partType) {
                     new Tab_SetClass();
                  } else {
                     new HeaderbtnFc(partType);
                  }
               }
            } catch (e) {
               trace(e.getStackTrace());
            }
         }
         else if(!MenuClass.ClickRock && !MenuClass.HukuRock)
         {
            curUndoAction = null;

            try
            {
               targetName = e.target.name;
               targetNameP = e.target.parent.name;
               targetNamePP = e.target.parent.parent.name;
               targetNamePPP = e.target.parent.parent.parent.name;
               targetNum = e.target.Num;
               try
               {
                  if (targetNamePP == "actual") {
                     targetNumPPP = e.target.parent.parent.parent.parent.Num;
                  } else {
                     targetNumPPP = e.target.parent.parent.parent.Num;
                  }
                  
               }
               catch(myError:Error)
               {
               }
               targetMouseX = e.target.parent.mouseX;
               targetMouseY = e.target.parent.mouseY;
               if(e.target.parent.parent.name == "mune0")
               {
                  targetName = "mune0";
               }
               else if(e.target.parent.parent.name == "mune1")
               {
                  targetName = "mune1";
               }
               if(e.currentTarget.parent.Num != undefined)
               {
                  this.charaNum = e.currentTarget.parent.Num;
               }
               else
               {
                  this.charaNum = targetNumPPP;
               }
               new HukuClickFc(this.charaNum);
               try
               {
                  Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.EnterFrame2);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,this.MenuMouseUp2);
               }
               catch(myError:Error)
               {
               }
            }
            catch(myError:Error)
            {
               trace(myError.getStackTrace());
               // trace("HukuClickClassエラー   targetPPかな？");
            }
         }
      }
      
      private function MenuMouseMove(param1:MouseEvent) : void
      {
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.EnterFrame);
      }
      
      private function MenuMouseUp2(param1:MouseEvent) : void
      {
         if (curUndoAction) {
            curUndoAction.recordNewData("s");
            if (holdPushUndoAction && curUndoAction.anyChanged()) {
               Main.undoTimeline.push(curUndoAction);
            }
            curUndoAction = null;
            holdPushUndoAction = false;
         }

         try
         {
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.EnterFrame2);
         }
         catch(myError:Error)
         {
         }
         try
         {
            Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,this.MenuMouseUp2);
         }
         catch(myError:Error)
         {
         }
      }
      
      private function MenuMouseUp(param1:MouseEvent) : void
      {
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.EnterFrame);
      }
      
      private function EnterFrame2(param1:Event) : void
      {
         ++nagaoshiCount;
         if(targetName == "s_btn0" || targetName == "s_btn1" || targetName == "s_btn2")
         {
            if(nagaoshiCount >= nagaoshifirst)
            {
               nagaoshifirst = 8;
               new SoundCharaFc(this.charaNum,"n",1);
               this.charaData["s"]["_sClick"] += 1;
               if(this.charaData["EmotionManualAuto"]["_check"])
               {
                  new Tab_EmotionCheck(this.charaNum,2);
                  this.charaData["HeartPlus"]["_meter"] += 0.6 + MenuClass.KandoSetNum;
               }
               nagaoshiCount = 0;
               if(nagaoshiFlag == 0)
               {
                  nagaoshiFlag = 1;
                  new HukuClick_s(this.charaNum,targetName,1);
               }
               else
               {
                  nagaoshiFlag = 0;
                  new HukuClick_s(this.charaNum,targetName,0);
               }

               holdPushUndoAction = true;
               if (this.charaData["s"]["_sClick"] - initSClick >= 10) {
                  new Chara_s(this.charaNum, "huku");
                  initSClick = this.charaData["s"]["_sClick"];
               }
            }
         }
         else if(targetName == "mouth")
         {
            if(nagaoshiCount >= 10)
            {
               new SoundCharaFc(this.charaNum,"kr",1);
               if(this.charaData["EmotionManualAuto"]["_check"])
               {
                  new Tab_EmotionCheck(this.charaNum,0);
                  this.charaData["HeartPlus"]["_meter"] += 0.2 + MenuClass.KandoSetNum;
                  if(this.charaData["HeartPlus"]["_meter"] <= 0)
                  {
                     this.charaData["HeartPlus"]["_meter"] = 0;
                  }
               }
               nagaoshiCount = 0;
            }
         }
      }
      
      private function EnterFrame(param1:Event) : void
      {
         ++downCount;
         if(downCount >= 5)
         {
            new HukuClick_s(this.charaNum,targetName,0);
            if(targetName == "mune0")
            {
               if(this.charaData["BreastManualAuto"]["_check"])
               {
                  if(this.charaData["BreastMove"]["_mode"][0] != "ueYose" && this.charaData["BreastMove"]["_mode"][0] != "ueYoseStop")
                  {
                     this.charaData["BreastMove"]["_mode"][0] = "ueYose";
                     this.charaData["BreastMove"]["_count"][0] = 0;
                     if(this.charaData["EmotionManualAuto"]["_check"])
                     {
                        new Tab_EmotionCheck(this.charaNum,2);
                        this.charaData["HeartPlus"]["_meter"] += 0.5 + MenuClass.KandoSetNum;
                     }
                  }
                  else
                  {
                     this.charaData["BreastMove"]["_mode"][0] = "tateYure";
                     this.charaData["BreastMove"]["_count"][0] = 0;
                     if(this.charaData["EmotionManualAuto"]["_check"])
                     {
                        new Tab_EmotionCheck(this.charaNum,2);
                        this.charaData["HeartPlus"]["_meter"] += 0.5 + MenuClass.KandoSetNum;
                     }
                  }
               }
            }
            else if(targetName == "mune1")
            {
               if(this.charaData["BreastManualAuto"]["_check"])
               {
                  if(this.charaData["BreastMove"]["_mode"][1] != "ueYose" && this.charaData["BreastMove"]["_mode"][1] != "ueYoseStop")
                  {
                     this.charaData["BreastMove"]["_mode"][1] = "ueYose";
                     this.charaData["BreastMove"]["_count"][1] = 0;
                     if(this.charaData["EmotionManualAuto"]["_check"])
                     {
                        new Tab_EmotionCheck(this.charaNum,2);
                        this.charaData["HeartPlus"]["_meter"] += 0.5 + MenuClass.KandoSetNum;
                     }
                  }
                  else
                  {
                     this.charaData["BreastMove"]["_mode"][1] = "tateYure";
                     this.charaData["BreastMove"]["_count"][1] = 0;
                     if(this.charaData["EmotionManualAuto"]["_check"])
                     {
                        new Tab_EmotionCheck(this.charaNum,2);
                        this.charaData["HeartPlus"]["_meter"] += 0.5 + MenuClass.KandoSetNum;
                     }
                  }
               }
            }
            if(this.charaData["HeartPlus"]["_meter"] <= 0)
            {
               this.charaData["HeartPlus"]["_meter"] = 0;
            }
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.EnterFrame);
         }
      }
   }
}
