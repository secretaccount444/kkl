package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import undo.AttachPointAction;
   
   public class Tab_AddCostumOpenMark
   {
      
      public static var headerName:String;
      
      public static var openAr:Array = [["headAdd","339900"], ["Eyelib","339900"], ["EyeballXMove","339900"], ["EmotionMouth","339900"], ["Eye","339900"], ["EmotionEyeLeft","339900"], ["Eyebrow", "339900"]];
       
      
      public function Tab_AddCostumOpenMark()
      {
         super();
      }
      
      public static function setFc(param1:String, param2:int) : void
      {
         var tabIdx:int = 0;
         var attachPtIdx:int = 0;
         var key:* = null;
         var nMenuRows:int = 0;
         var nBoxesAdded:int = 0;
         var attachPointName:String = null;
         var curIconX:Number = NaN;
         var selectedSlot:int = 0;
         var selectorSprite:MovieClip = null;
         headerName = param1;
         for(key in MenuClass.tabData[headerName])
         {
            tabIdx = key as int;
            nMenuRows = MenuClass.tabData[headerName][tabIdx][2]["_sort"];
         }

         MenuClass.AddOpenCheck = 1;
         nBoxesAdded = 0;
         curIconX = 0;
         selectedSlot = MenuClass.systemData["MarkPlus"]["_menu"];
         attachPtIdx = 0;

         while(attachPtIdx < openAr.length)
         {
            attachPointName = openAr[attachPtIdx][0];
            selectorSprite = new Menu_Load.TabRandomBoxClass();
            MenuClass.AddOpenAdd[attachPtIdx] = selectorSprite;
            MenuClass.AddOpenAdd[attachPtIdx].name = attachPointName;
            Main.stageVar.addChild(MenuClass.AddOpenAdd[attachPtIdx]);
            MenuClass.AddOpenAdd[attachPtIdx].x = Air_StageSize.menuLeftEdge + Math.floor((MenuClass.AddOpenAdd[attachPtIdx].width + 1) * nBoxesAdded) - 1 * nBoxesAdded + 12;

            if(MenuClass.hederSwitchCheck)
            {
               MenuClass.AddOpenAdd[attachPtIdx].y = Air_StageSize.menuBottomEdge - 88 - 32 * nMenuRows + Main._stageResizeY;
            }
            else
            {
               MenuClass.AddOpenAdd[attachPtIdx].y = Air_StageSize.menuBottomEdge - 539 + 32 * nMenuRows + Main._stageResizeY * -1;
            }

            MenuClass.AddOpenAdd[attachPtIdx].icon.icon.gotoAndStop(attachPointName);
            if(MenuClass.charaData[param2]["MarkAdd" + selectedSlot]["_add0"] == attachPtIdx)
            {
               new ColorChangeClass(MenuClass.AddOpenAdd[attachPtIdx].icon.icon,"FFFFFF");
               new ColorChangeClass(MenuClass.AddOpenAdd[attachPtIdx].bg,openAr[attachPtIdx][1]);
            }
            else
            {
               new ColorChangeClass(MenuClass.AddOpenAdd[attachPtIdx].icon.icon,"CCCCCC");
               new ColorChangeClass(MenuClass.AddOpenAdd[attachPtIdx].bg,"000000");
            }
            MenuClass.AddOpenAdd[attachPtIdx].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            MenuClass.AddOpenAdd[attachPtIdx].buttonMode = true;
            MenuClass.AddOpenAdd[attachPtIdx].charaNum = param2;
            MenuClass.AddOpenAdd[attachPtIdx].number = attachPtIdx;
            nBoxesAdded++;
            curIconX += 32;
            attachPtIdx++;
         }
         var _loc11_:MovieClip = new Menu_Load.TabCloseClass();
         MenuClass.AddCloseAdd["close"] = _loc11_;
         Main.stageVar.addChild(MenuClass.AddCloseAdd["close"]);
         MenuClass.AddCloseAdd["close"].x = Air_StageSize.menuLeftEdge + curIconX + 12;
         if(MenuClass.hederSwitchCheck)
         {
            MenuClass.AddCloseAdd["close"].y = Air_StageSize.menuBottomEdge - 88 - 32 * nMenuRows + Main._stageResizeY;
         }
         else
         {
            MenuClass.AddCloseAdd["close"].y = Air_StageSize.menuBottomEdge - 539 + 32 * nMenuRows + Main._stageResizeY * -1;
         }
         MenuClass.AddCloseAdd["close"].scaleX = MenuClass.AddCloseAdd["close"].scaleY = 0.8;
         MenuClass.AddCloseAdd["close"].addEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
         MenuClass.AddCloseAdd["close"].charaNum = param2;
         MenuClass.AddCloseAdd["close"].addEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
         MenuClass.AddCloseAdd["close"].addEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
         MenuClass.AddCloseAdd["close"].buttonMode = true;
      }
      
      public static function deleteFc(param1:String) : void
      {
         var _loc2_:int = 0;
         headerName = param1;
         MenuClass.AddOpenCheck = 0;
         try
         {
            _loc2_ = 0;
            while(_loc2_ < openAr.length)
            {
               MenuClass.AddOpenAdd[_loc2_].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
               Main.stageVar.removeChild(MenuClass.AddOpenAdd[_loc2_]);
               MenuClass.AddOpenAdd[_loc2_] = null;
               _loc2_++;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.AddCloseAdd["close"].removeEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.AddCloseAdd["close"].removeEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
            MenuClass.AddCloseAdd["close"].removeEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
            Main.stageVar.removeChild(MenuClass.AddCloseAdd["close"]);
            MenuClass.AddCloseAdd["close"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd["MarkAdd"].addBox0.gotoAndStop(1);
            MenuClass.tabMenuAdd["MarkAdd"].addBox0.icon.x = 29;
            MenuClass.tabMenuAdd["MarkAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["MarkAdd"].addBox0.icon.scaleY = 1;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var iterCharacter:int = 0;
         var curCharacter:int = param1.currentTarget.charaNum;
         var selectedSlot:int = MenuClass.systemData["MarkPlus"]["_menu"];
         
         var curAdd0 = MenuClass.charaData[curCharacter]["MarkAdd" + selectedSlot]["_add0"];
         var addOpenAddData = MenuClass.AddOpenAdd[curAdd0];
         var curArData = openAr[param1.currentTarget.number];

         new ColorChangeClass(addOpenAddData.icon.icon,"CCCCCC");
         new ColorChangeClass(addOpenAddData.bg,"000000");

         curAdd0 = param1.currentTarget.number;
         addOpenAddData = MenuClass.AddOpenAdd[param1.currentTarget.number];

         var undoAction = new AttachPointAction("Mark", selectedSlot, curCharacter, curAdd0);
         Main.undoTimeline.push(undoAction);

         MenuClass.charaData[curCharacter]["MarkAdd" + selectedSlot]["_add0"] = curAdd0;
         new ColorChangeClass(addOpenAddData.icon.icon,"FFFFFF");
         new ColorChangeClass(addOpenAddData.bg, curArData[1]);
         new ColorChangeClass(MenuClass.tabMenuAdd["MarkAdd"].addBox0.bg, curArData[1]);
         MenuClass.tabMenuAdd["MarkAdd"].addBox0.icon.icon.gotoAndStop(curArData[0]);

         if(MenuClass._nowTargetMode == "All")
         {
            iterCharacter = 0;
            while(iterCharacter <= MenuClass._characterNum)
            {
               if(MenuClass.charaData[iterCharacter]["SelectCharacter"]["_visible"][0])
               {
                  MenuClass.charaData[iterCharacter]["MarkAdd" + selectedSlot]["_add0"] = MenuClass.charaData[curCharacter]["MarkAdd" + selectedSlot]["_add0"];
                  Huku_MarkSet.deleteFc(curCharacter, selectedSlot,0);
                  Huku_MarkSet.deleteFc(curCharacter, selectedSlot,1);
                  new Huku_MarkSet(iterCharacter,selectedSlot,"tab");
               }
               iterCharacter++;
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            iterCharacter = 0;
            while(iterCharacter <= MenuClass._characterNum)
            {
               if(MenuClass.charaData[iterCharacter]["SelectCharacter"]["_visible"][0])
               {
                  if(MenuClass._nowSelectChara[iterCharacter])
                  {
                     MenuClass.charaData[iterCharacter]["MarkAdd" + selectedSlot]["_add0"] = MenuClass.charaData[curCharacter]["MarkAdd" + selectedSlot]["_add0"];
                     Huku_MarkSet.deleteFc(curCharacter, selectedSlot,0);
                     Huku_MarkSet.deleteFc(curCharacter, selectedSlot,1);
                     new Huku_MarkSet(iterCharacter,selectedSlot,"tab");
                  }
               }
               iterCharacter++;
            }
         }
         else
         {
            Huku_MarkSet.deleteFc(curCharacter,selectedSlot,0);
            Huku_MarkSet.deleteFc(curCharacter,selectedSlot,1);
            new Huku_MarkSet(curCharacter,selectedSlot,"tab");
         }
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = param1.currentTarget.charaNum;
         Tab_AddCostumOpenMark.deleteFc(headerName);
      }
      
      public static function closeMouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
      
      public static function closeMouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
   }
}
