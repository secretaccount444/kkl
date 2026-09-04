package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_AddCostumOpen
   {
      
      public static var headerName:String;
      
      public static var openAr:Array = [["Background","666666",2],["FreeHukidashi0","666666",1],["FreeHukidashi1","666666",1],["FreeHukidashi2","666666",1],["FreeHukidashi3","666666",1],["FreeHukidashi4","666666",1],["FreeHukidashi5","666666",1],["FreeHukidashi6","666666",1],["FreeHukidashi7","666666",1],["FreeHukidashi8","666666",1]];
       
      
      public function Tab_AddCostumOpen()
      {
         super();
      }
      
      public static function setFc(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc12_:MovieClip = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         headerName = param1;
         for(_loc4_ in MenuClass.tabData[headerName])
         {
            _loc2_ = _loc4_ as int;
            _loc5_ = MenuClass.tabData[headerName][_loc2_][2]["_sort"];
         }
         MenuClass.AddOpenCheck = 1;
         _loc6_ = 0;
         _loc8_ = 0;
         if(param1 == "Loadmenu")
         {
            _loc9_ = MenuClass.systemData["LoadPlus"]["_menu"];
            _loc10_ = MenuClass.systemData["LoadAdd" + _loc9_]["_add0"];
         }
         else if(param1 == "txt")
         {
            _loc9_ = MenuClass.systemData["txtFieldmenu"]["_menu"];
            _loc10_ = MenuClass.systemData["txtFieldAdd" + _loc9_]["_add0"];
         }
         _loc3_ = 0;
         while(_loc3_ < openAr.length)
         {
            _loc7_ = openAr[_loc3_][0];
            _loc12_ = new Menu_Load.TabRandomBoxClass();
            MenuClass.AddOpenAdd[_loc3_] = _loc12_;
            MenuClass.AddOpenAdd[_loc3_].name = _loc7_;
            Main.stageVar.addChild(MenuClass.AddOpenAdd[_loc3_]);
            MenuClass.AddOpenAdd[_loc3_].x = Math.floor((MenuClass.AddOpenAdd[_loc3_].width + 1) * _loc6_) - 1 * _loc6_ + 12;
            if(MenuClass.hederSwitchCheck)
            {
               MenuClass.AddOpenAdd[_loc3_].y = 496 - 32 * _loc5_ + Main._stageResizeY;
            }
            else
            {
               MenuClass.AddOpenAdd[_loc3_].y = 75 + 32 * _loc5_ + Main._stageResizeY * -1;
            }
            MenuClass.AddOpenAdd[_loc3_].icon.icon.gotoAndStop(_loc7_);
            if(_loc10_ == _loc3_)
            {
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc3_].icon.icon,"FFFFFF");
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc3_].bg,openAr[_loc3_][1]);
            }
            else
            {
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc3_].icon.icon,"CCCCCC");
               new ColorChangeClass(MenuClass.AddOpenAdd[_loc3_].bg,"000000");
            }
            _loc14_ = (_loc13_ = Tab_AddCostumOpen.openAr[_loc3_][0]).substring(0,13);
            _loc15_ = _loc13_.substring(13,14);
            _loc16_ = false;
            if(_loc14_ == "FreeHukidashi")
            {
               _loc17_ = false;
               try
               {
                  if(Chara_Class.chara_m["Hukidashi" + _loc15_])
                  {
                     _loc17_ = true;
                  }
               }
               catch(myError:Error)
               {
               }
               if(MenuClass.systemData["FreeHukidashiPlus"]["_visible"][_loc15_] || _loc17_)
               {
                  _loc16_ = true;
               }
            }
            else if(_loc13_ == "Background")
            {
               _loc16_ = true;
            }
            if(_loc16_)
            {
               MenuClass.AddOpenAdd[_loc3_].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
               MenuClass.AddOpenAdd[_loc3_].buttonMode = true;
               MenuClass.AddOpenAdd[_loc3_].number = _loc3_;
            }
            else
            {
               MenuClass.AddOpenAdd[_loc3_].alpha = 0.3;
            }
            _loc6_++;
            _loc8_ += 32;
            _loc3_++;
         }
         var _loc11_:MovieClip = new Menu_Load.TabCloseClass();
         MenuClass.AddCloseAdd["close"] = _loc11_;
         Main.stageVar.addChild(MenuClass.AddCloseAdd["close"]);
         MenuClass.AddCloseAdd["close"].x = _loc8_ + 12;
         if(MenuClass.hederSwitchCheck)
         {
            MenuClass.AddCloseAdd["close"].y = 498 - 32 * _loc5_ + Main._stageResizeY;
         }
         else
         {
            MenuClass.AddCloseAdd["close"].y = 75 + 32 * _loc5_ + Main._stageResizeY * -1;
         }
         MenuClass.AddCloseAdd["close"].scaleX = MenuClass.AddCloseAdd["close"].scaleY = 0.8;
         MenuClass.AddCloseAdd["close"].addEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
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
         if(param1 == "Loadmenu")
         {
            try
            {
               MenuClass.tabMenuAdd["LoadAdd"].addBox0.gotoAndStop(1);
               MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.x = 29;
               MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.scaleY = 1;
            }
            catch(myError:Error)
            {
            }
         }
         else if(param1 == "txt")
         {
            try
            {
               MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.gotoAndStop(1);
               MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.x = 29;
               MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.scaleY = 1;
            }
            catch(myError:Error)
            {
            }
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(MenuClass._nowHeaderName == "Loadmenu")
         {
            _loc2_ = MenuClass.systemData["LoadPlus"]["_menu"];
            new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.systemData["LoadAdd" + _loc2_]["_add0"]].icon.icon,"CCCCCC");
            new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.systemData["LoadAdd" + _loc2_]["_add0"]].bg,"000000");
            MenuClass.systemData["LoadAdd" + _loc2_]["_add0"] = param1.currentTarget.number;
            new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.systemData["LoadAdd" + _loc2_]["_add0"]].icon.icon,"FFFFFF");
            new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.systemData["LoadAdd" + _loc2_]["_add0"]].bg,openAr[MenuClass.systemData["LoadAdd" + _loc2_]["_add0"]][1]);
            new ColorChangeClass(MenuClass.tabMenuAdd["LoadAdd"].addBox0.bg,openAr[MenuClass.systemData["LoadAdd" + _loc2_]["_add0"]][1]);
            MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.icon.gotoAndStop(openAr[MenuClass.systemData["LoadAdd" + _loc2_]["_add0"]][0]);
            new SetClass(_loc2_,"LoadAdd","menu");
            new Tab_FileDepth(_loc2_);
            new SetClass(_loc2_,"LoadAlpha","menu");
            new SetClass(_loc2_,"LoadScaleB","menu");
            new SetClass(_loc2_,"LoadSize","menu");
            new SetClass(_loc2_,"LoadSwfColor","menu");
         }
         else if(MenuClass._nowHeaderName == "txt")
         {
            _loc2_ = MenuClass.systemData["txtFieldmenu"]["_menu"];
            new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.systemData["txtFieldAdd" + _loc2_]["_add0"]].icon.icon,"CCCCCC");
            new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.systemData["txtFieldAdd" + _loc2_]["_add0"]].bg,"000000");
            MenuClass.systemData["txtFieldAdd" + _loc2_]["_add0"] = param1.currentTarget.number;
            new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.systemData["txtFieldAdd" + _loc2_]["_add0"]].icon.icon,"FFFFFF");
            new ColorChangeClass(MenuClass.AddOpenAdd[MenuClass.systemData["txtFieldAdd" + _loc2_]["_add0"]].bg,openAr[MenuClass.systemData["txtFieldAdd" + _loc2_]["_add0"]][1]);
            new ColorChangeClass(MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.bg,openAr[MenuClass.systemData["txtFieldAdd" + _loc2_]["_add0"]][1]);
            MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.icon.gotoAndStop(openAr[MenuClass.systemData["txtFieldAdd" + _loc2_]["_add0"]][0]);
            new SetClass(_loc2_,"txtFieldAdd","menu");
         }
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         Tab_AddCostumOpen.deleteFc(headerName);
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
