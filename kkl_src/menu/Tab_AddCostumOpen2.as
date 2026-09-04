package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import undo.AttachPointAction;
   
   public class Tab_AddCostumOpen2
   {
      
      public static var headerName:String;
      
      public static var openAr:Array = [["Body","666666",2],["headAdd","666666",1],["LoadLeftArm","666666",1],["LoadRightArm","666666",1],["LoadLeftHand","666666",1],["LoadRightHand","666666",1],["headAdd", "8B4B8F", 3],["FootPose","8B4B8F",3],["Ashi2","8B4B8F",3],["AshiHeight","8B4B8F",3],["RightAshi","8B4B8F",3],["Kutu0","8B4B8F",3],["Kutu1","8B4B8F",3],["LoadLeftArm","8B4B8F",3],["LoadRightArm","8B4B8F",3],["LoadLeftArm2","8B4B8F",3],["LoadRightArm2","8B4B8F",3],["LoadLeftHand","8B4B8F",3],["LoadRightHand","8B4B8F",3]];
      
      
      public function Tab_AddCostumOpen2()
      {
         super();
      }
      
      public static function setFc(param1:String, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc12_:MovieClip = null;
         headerName = param1;
         for(_loc5_ in MenuClass.tabData[headerName])
         {
            _loc3_ = _loc5_ as int;
            _loc6_ = MenuClass.tabData[headerName][_loc3_][2]["_sort"];
         }
         MenuClass.AddOpenCheck = 1;
         _loc7_ = 0;
         _loc9_ = 0;
         _loc10_ = MenuClass.systemData["CharaLoadPlus"]["_menu"];
         var menuIndex = resolveMenuIndex(MenuClass.charaData[param2]["CharaLoadAdd" + _loc10_]["_add0"]);
         _loc4_ = 0;
         while(_loc4_ < openAr.length)
         {
            _loc8_ = openAr[_loc4_][0];
            _loc12_ = new Menu_Load.TabRandomBoxClass();
            MenuClass.AddOpenAdd[_loc4_] = _loc12_;
            MenuClass.AddOpenAdd[_loc4_].name = _loc8_;
            Main.stageVar.addChild(MenuClass.AddOpenAdd[_loc4_]);
            MenuClass.AddOpenAdd[_loc4_].x = Air_StageSize.menuLeftEdge + Math.floor((MenuClass.AddOpenAdd[_loc4_].width + 1) * _loc7_) - 1 * _loc7_ + 12;
            if(MenuClass.hederSwitchCheck)
            {
               MenuClass.AddOpenAdd[_loc4_].y = 496 - 32 * _loc6_ + Main._stageResizeY;
            }
            else
            {
               MenuClass.AddOpenAdd[_loc4_].y = 75 + 32 * _loc6_ + Main._stageResizeY * -1;
            }
            MenuClass.AddOpenAdd[_loc4_].icon.icon.gotoAndStop(_loc8_);
            if(menuIndex == _loc4_)
            {
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc4_].icon.icon,"FFFFFF");
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc4_].bg,openAr[_loc4_][1]);
            }
            else
            {
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc4_].icon.icon,"CCCCCC");

               if (_loc4_ >= 6) {
                  new ColorChangeClass(MenuClass.AddOpenAdd[_loc4_].bg,"3D213E");
               } else {
                  new ColorChangeClass(MenuClass.AddOpenAdd[_loc4_].bg,"000000");
               }
            }
            MenuClass.AddOpenAdd[_loc4_].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            MenuClass.AddOpenAdd[_loc4_].buttonMode = true;
            MenuClass.AddOpenAdd[_loc4_].charaNum = param2;
            MenuClass.AddOpenAdd[_loc4_].number = _loc4_;
            _loc7_++;
            _loc9_ += 32;
            _loc4_++;
         }
         var _loc11_:MovieClip = new Menu_Load.TabCloseClass();
         MenuClass.AddCloseAdd["close"] = _loc11_;
         Main.stageVar.addChild(MenuClass.AddCloseAdd["close"]);
         MenuClass.AddCloseAdd["close"].x = Air_StageSize.menuLeftEdge + _loc9_ + 12;
         if(MenuClass.hederSwitchCheck)
         {
            MenuClass.AddCloseAdd["close"].y = 498 - 32 * _loc6_ + Main._stageResizeY;
         }
         else
         {
            MenuClass.AddCloseAdd["close"].y = 75 + 32 * _loc6_ + Main._stageResizeY * -1;
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
            MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.gotoAndStop(1);
            MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.x = 29;
            MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.scaleY = 1;
         }
         catch(myError:Error)
         {
         }
      }

      public static function resolveMenuIndex(attachPointIndex: int) : int
      {
         switch (attachPointIndex) {
         case 99: return 6;
         case 98: return 7;
         case 97: return 8;
         case 96: return 9;
         case 95: return 10;
         case 94: return 11;
         case 93: return 12;
         case 92: return 13;
         case 91: return 14;
         case 90: return 15;
         case 89: return 16;
         case 88: return 17;
         case 87: return 18;
         default: return attachPointIndex;
         }
      }

      public static function resolveAttachPointIndex(menuIndex: int) : int
      {
         switch (menuIndex) {
         case 6: return 99;  /* Head (w/ rotation) */
         case 7: return 98;  /* Left Thigh */
         case 8: return 97;  /* Right Thigh */
         case 9: return 96;  /* Left Leg */
         case 10: return 95; /* Right Leg */
         case 11: return 94; /* Left Foot */
         case 12: return 93; /* Right Foot */
         case 13: return 92; /* Left Upper Arm (w/ rotation) */
         case 14: return 91; /* Right Upper Arm (w/ rotation) */
         case 15: return 90; /* Left Lower Arm (w/ rotation) */
         case 16: return 89; /* Right Lower Arm (w/ rotation) */
         case 17: return 88; /* Left Hand (w/ rotation) */
         case 18: return 87; /* Right Hand (w/ rotation) */
         default: return menuIndex; /* Default attachment points */
         }
      }

      public static function getAttachPointName(character: int, slot: int) : String
      {
         var curAdd0 = MenuClass.charaData[character]["CharaLoadAdd" + slot]["_add0"];
         
         switch (curAdd0) {
         case 99: return "HeadMod";
         case 98: return "LeftThighMod";
         case 97: return "RightThighMod";
         case 96: return "LeftLegMod";
         case 95: return "RightLegMod";
         case 94: return "LeftFootMod";
         case 93: return "RightFootMod";
         case 92: return "LeftUpperArmMod";
         case 91: return "RightUpperArmMod";
         case 90: return "LeftLowerArmMod";
         case 89: return "RightLowerArmMod";
         case 88: return "LeftHandMod";
         case 87: return "RightHandMod";
         default: return openAr[resolveMenuIndex(curAdd0)][0];
         }
      }

      public static function getOpenAr(character: int, slot: int) : Array
      {
         var menuIndex = resolveMenuIndex(MenuClass.charaData[character]["CharaLoadAdd" + slot]["_add0"]);
         return openAr[menuIndex];
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = param1.currentTarget.charaNum;
         var _loc3_:int = MenuClass.systemData["CharaLoadPlus"]["_menu"];

         var curAdd0 = MenuClass.charaData[_loc2_]["CharaLoadAdd" + _loc3_]["_add0"];
         var addOpenAddIdx = resolveMenuIndex(curAdd0);

         new ColorChangeClass(MenuClass.AddOpenAdd[addOpenAddIdx].icon.icon,"CCCCCC");
         if (addOpenAddIdx >= 6) {
            new ColorChangeClass(MenuClass.AddOpenAdd[addOpenAddIdx].bg, "3D213E");
         } else {
            new ColorChangeClass(MenuClass.AddOpenAdd[addOpenAddIdx].bg, "000000");
         }

         var undoAction = new AttachPointAction("CharaLoad", _loc3_, _loc2_, resolveAttachPointIndex(param1.currentTarget.number));
         Main.undoTimeline.push(undoAction);

         addOpenAddIdx = param1.currentTarget.number;
         MenuClass.charaData[_loc2_]["CharaLoadAdd" + _loc3_]["_add0"] = resolveAttachPointIndex(param1.currentTarget.number);

         new ColorChangeClass(MenuClass.AddOpenAdd[addOpenAddIdx].icon.icon,"FFFFFF");
         new ColorChangeClass(MenuClass.AddOpenAdd[addOpenAddIdx].bg,openAr[addOpenAddIdx][1]);
         new ColorChangeClass(MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.bg,openAr[addOpenAddIdx][1]);
         MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.icon.gotoAndStop(openAr[addOpenAddIdx][0]);
         new Add_LoadURL2("CharaLoadAdd",_loc2_,_loc3_,"menu");
         new Tab_FileDepth2(_loc3_,_loc2_);
         new Add_LoadURL2("CharaLoadAlpha",_loc2_,_loc3_,"menu");
         new Add_LoadURL2("CharaLoadScaleB",_loc2_,_loc3_,"menu");
         new Add_LoadURL2("CharaLoadSwfColor",_loc2_,_loc3_,"menu");
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = param1.currentTarget.charaNum;
         Tab_AddCostumOpen2.deleteFc(headerName);
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
