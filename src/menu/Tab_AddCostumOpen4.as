package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_AddCostumOpen4
   {
      
      public static var headerName:String;
      
      public static var openAr:Array = [["headAdd","339900"],["Hair","339900"],["Bangs","339900"],["HairBack","339900"]];
       
      
      public function Tab_AddCostumOpen4()
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
         _loc10_ = MenuClass.systemData["HairExPlus"]["_menu"];
         _loc4_ = 0;
         while(_loc4_ < openAr.length)
         {
            _loc8_ = openAr[_loc4_][0];
            _loc12_ = new Menu_Load.TabRandomBoxClass();
            MenuClass.AddOpenAdd[_loc4_] = _loc12_;
            MenuClass.AddOpenAdd[_loc4_].name = _loc8_;
            Main.stageVar.addChild(MenuClass.AddOpenAdd[_loc4_]);
            MenuClass.AddOpenAdd[_loc4_].x = Math.floor((MenuClass.AddOpenAdd[_loc4_].width + 1) * _loc7_) - 1 * _loc7_ + 12;
            if(MenuClass.hederSwitchCheck)
            {
               MenuClass.AddOpenAdd[_loc4_].y = 496 - 32 * _loc6_ + Main._stageResizeY;
            }
            else
            {
               MenuClass.AddOpenAdd[_loc4_].y = 75 + 32 * _loc6_ + Main._stageResizeY * -1;
            }
            MenuClass.AddOpenAdd[_loc4_].icon.icon.gotoAndStop(_loc8_);
            if(MenuClass.charaData[param2]["HairExAdd" + _loc10_]["_add0"] == _loc4_)
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
         MenuClass.AddCloseAdd["close"].x = _loc9_ + 12;
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
            MenuClass.tabMenuAdd["HairExAdd"].addBox0.gotoAndStop(1);
            MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.x = 29;
            MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.scaleY = 1;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = param1.currentTarget.charaNum;
         var _loc3_:int = MenuClass.systemData["HairExPlus"]["_menu"];
         new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.charaData[_loc2_]["HairExAdd" + _loc3_]["_add0"]].icon.icon,"CCCCCC");
         new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.charaData[_loc2_]["HairExAdd" + _loc3_]["_add0"]].bg,"000000");
         MenuClass.charaData[_loc2_]["HairExAdd" + _loc3_]["_add0"] = param1.currentTarget.number;
         new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.charaData[_loc2_]["HairExAdd" + _loc3_]["_add0"]].icon.icon,"FFFFFF");
         new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.charaData[_loc2_]["HairExAdd" + _loc3_]["_add0"]].bg,openAr[MenuClass.charaData[_loc2_]["HairExAdd" + _loc3_]["_add0"]][1]);
         new ColorChangeClass(MenuClass.tabMenuAdd["HairExAdd"].addBox0.bg,openAr[MenuClass.charaData[_loc2_]["HairExAdd" + _loc3_]["_add0"]][1]);
         MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.icon.gotoAndStop(openAr[MenuClass.charaData[_loc2_]["HairExAdd" + _loc3_]["_add0"]][0]);
         if(MenuClass._nowTargetMode == "All")
         {
            _loc4_ = 0;
            while(_loc4_ <= MenuClass._characterNum)
            {
               if(MenuClass.charaData[_loc4_]["SelectCharacter"]["_visible"][0])
               {
                  MenuClass.charaData[_loc4_]["HairExAdd" + _loc3_]["_add0"] = MenuClass.charaData[_loc2_]["HairExAdd" + _loc3_]["_add0"];
                  Hair_HairExSet.deleteFc(_loc4_,_loc3_,0);
                  Hair_HairExSet.deleteFc(_loc4_,_loc3_,1);
                  Hair_HairExSet.setFc(_loc4_,_loc3_,"move");
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
                     MenuClass.charaData[_loc4_]["HairExAdd" + _loc3_]["_add0"] = MenuClass.charaData[_loc2_]["HairExAdd" + _loc3_]["_add0"];
                     Hair_HairExSet.deleteFc(_loc4_,_loc3_,0);
                     Hair_HairExSet.deleteFc(_loc4_,_loc3_,1);
                     Hair_HairExSet.setFc(_loc4_,_loc3_,"move");
                  }
               }
               _loc4_++;
            }
         }
         else
         {
            Hair_HairExSet.deleteFc(_loc2_,_loc3_,0);
            Hair_HairExSet.deleteFc(_loc2_,_loc3_,1);
            Hair_HairExSet.setFc(_loc2_,_loc3_,"move");
         }
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = param1.currentTarget.charaNum;
         Tab_AddCostumOpen4.deleteFc(headerName);
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
