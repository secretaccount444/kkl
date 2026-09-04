package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import undo.AttachPointAction;
   import parts.Ribbon;
   
   public class Tab_AddCostumOpen3
   {
      
      public static var headerName:String;
      
      public static var openAr:Array = [["Hair","999900"],["Hairpin","999900"],["Breast","999900"],["WaistSet","999900"],["HairBack","999900"],["SideBurnLeft","999900"],["HairEx1","999900"],["HairEx2","999900"],["HairEx3","999900"],["HairEx4","999900"],["HairEx5","999900"],["Tights","8B4B8F"],["RightAshi","8B4B8F"],["Kutu1","8B4B8F"],["LoadRightArm","8B4B8F"],["LoadRightArm2","8B4B8F"],["LoadRightHand","8B4B8F"],["Breast","8B4B8F"],["WaistSet","8B4B8F"],["Body","8B4B8F"]];
       
      
      public function Tab_AddCostumOpen3()
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
         _loc10_ = MenuClass.systemData["RibonPlus"]["_menu"];
         _loc4_ = 0;

         var curRibbon = Ribbon.fromCharacter(param2, _loc10_);
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


            if(curRibbon.attachPoint == _loc4_)
            {
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc4_].icon.icon,"FFFFFF");
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc4_].bg,openAr[_loc4_][1]);
            }
            else
            {
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc4_].icon.icon,"CCCCCC");
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc4_].bg,"000000");
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
            MenuClass.tabMenuAdd["RibonAdd"].addBox0.gotoAndStop(1);
            MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.x = 29;
            MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.scaleY = 1;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = param1.currentTarget.charaNum;
         var _loc3_:int = MenuClass.systemData["RibonPlus"]["_menu"];
         var curRibbon = Ribbon.fromCharacter(_loc2_, _loc3_);
         
         var curAdd0 = curRibbon.attachPoint;
         var addOpenAddData = MenuClass.AddOpenAdd[curAdd0];
         var curArData = openAr[param1.currentTarget.number];

         if (curAdd0 == 95) {
            addOpenAddData = MenuClass.AddOpenAdd[11];
         } else if (curAdd0 == 96) {
            addOpenAddData = MenuClass.AddOpenAdd[12];
         } else if (curAdd0 == 97) {
            addOpenAddData = MenuClass.AddOpenAdd[13];
         } else if (curAdd0 == 92) {
            addOpenAddData = MenuClass.AddOpenAdd[14];
         } else if (curAdd0 == 93) {
            addOpenAddData = MenuClass.AddOpenAdd[15];
         } else if (curAdd0 == 94) {
            addOpenAddData = MenuClass.AddOpenAdd[16];
         } else if (curAdd0 == 99) {
            addOpenAddData = MenuClass.AddOpenAdd[17];
         } else if (curAdd0 == 98) {
            addOpenAddData = MenuClass.AddOpenAdd[18];
         } else if (curAdd0 == 91) {
            addOpenAddData = MenuClass.AddOpenAdd[19];
         }

         new ColorChangeClass(addOpenAddData.icon.icon,"CCCCCC");
         new ColorChangeClass(addOpenAddData.bg,"000000");
         
         curAdd0 = param1.currentTarget.number;
         addOpenAddData = MenuClass.AddOpenAdd[param1.currentTarget.number];
         if (param1.currentTarget.number == 11) {
            curAdd0 = 95; /* Thigh */
         } else if (param1.currentTarget.number == 12) {
            curAdd0 = 96; /* Leg */
         } else if (param1.currentTarget.number == 13) {
            curAdd0 = 97; /* Foot */
         } else if (param1.currentTarget.number == 14) {
            curAdd0 = 92; /* Upper Arm */
         } else if (param1.currentTarget.number == 15) {
            curAdd0 = 93; /* Lower Arm */
         } else if (param1.currentTarget.number == 16) {
            curAdd0 = 94; /* Hand */
         } else if (param1.currentTarget.number == 17) {
            curAdd0 = 99; /* Upper Body w/ Mod-Aware Layering */
         } else if (param1.currentTarget.number == 18) {
            curAdd0 = 98; /* Lower Body w/ Mod-Aware Layering */
         } else if (param1.currentTarget.number == 19) {
            curAdd0 = 91; /* Full Body */
         }

         var undoAction = new AttachPointAction("Ribon", _loc3_, _loc2_, curAdd0);
         Main.undoTimeline.push(undoAction);

         curRibbon.attachPoint = curAdd0;
         new ColorChangeClass(addOpenAddData.icon.icon,"FFFFFF");
         new ColorChangeClass(addOpenAddData.bg, curArData[1]);
         new ColorChangeClass(MenuClass.tabMenuAdd["RibonAdd"].addBox0.bg, curArData[1]);
         MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.icon.gotoAndStop(curArData[0]);

         if(MenuClass._nowTargetMode == "All")
         {
            _loc4_ = 0;
            while(_loc4_ <= MenuClass._characterNum)
            {
               if(MenuClass.charaData[_loc4_]["SelectCharacter"]["_visible"][0])
               {
                  var ribbon = Ribbon.fromCharacter(_loc4_, _loc3_);
                  ribbon.attachPoint = curRibbon.attachPoint;
                  Huku_RibonSet.deleteFc(_loc4_,_loc3_,0);
                  Huku_RibonSet.deleteFc(_loc4_,_loc3_,1);
                  Huku_RibonSet.setFc(_loc4_,_loc3_,"random");
               }
               _loc4_++;
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            _loc4_ = 0;
            while(_loc4_ <= MenuClass._characterNum)
            {
               if(MenuClass.charaData[_loc4_]["SelectCharacter"]["_visible"][0])
               {
                  if(MenuClass._nowSelectChara[_loc4_])
                  {
                     var ribbon = Ribbon.fromCharacter(_loc4_, _loc3_);
                     ribbon.attachPoint = curRibbon.attachPoint;
                     Huku_RibonSet.deleteFc(_loc4_,_loc3_,0);
                     Huku_RibonSet.deleteFc(_loc4_,_loc3_,1);
                     Huku_RibonSet.setFc(_loc4_,_loc3_,"random");
                  }
               }
               _loc4_++;
            }
         }
         else
         {
            Huku_RibonSet.deleteFc(_loc2_,_loc3_,0);
            Huku_RibonSet.deleteFc(_loc2_,_loc3_,1);
            Huku_RibonSet.setFc(_loc2_,_loc3_,"random");
         }
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = param1.currentTarget.charaNum;
         Tab_AddCostumOpen3.deleteFc(headerName);
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
