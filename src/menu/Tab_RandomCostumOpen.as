package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_RandomCostumOpen
   {
      
      public static var headerName:String;
       
      
      public function Tab_RandomCostumOpen()
      {
         super();
      }
      
      public static function toolSetFc(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:MovieClip = null;
         var _loc10_:Number = NaN;
         headerName = param1;
         for(_loc3_ in MenuClass.tabData[headerName])
         {
            _loc2_ = _loc3_ as int;
            _loc4_ = MenuClass.tabData[headerName][_loc2_][2]["_sort"];
         }
         _loc5_ = 0;
         _loc8_ = MenuClass.MY_MENUNAME.length;
         MenuClass.RamdomOpenCheck = false;
         _loc10_ = 20;
         _loc7_ = 0;
         while(_loc7_ < _loc8_)
         {
            if(MenuClass.MY_MENUNAME[_loc7_][3] != 10)
            {
               if(MenuClass.MY_MENUNAME[_loc7_][2] || MenuClass.MY_MENUNAME[_loc7_][2] == false)
               {
                  if(MenuClass.MY_MENUNAME[_loc7_][4] || !Main.r18Check)
                  {
                     _loc6_ = MenuClass.MY_MENUNAME[_loc7_][0];
                     _loc9_ = new Menu_Load.TabRandomBoxClass();
                     MenuClass.popAllRandomTabNameAdd[_loc6_] = _loc9_;
                     MenuClass.popAllRandomTabNameAdd[_loc6_].name = _loc6_;
                     Main.stageVar.addChild(MenuClass.popAllRandomTabNameAdd[_loc6_]);
                     if(MenuClass.hederSwitchCheck)
                     {
                        if(_loc7_ > _loc10_)
                        {
                           MenuClass.popAllRandomTabNameAdd[_loc6_].y = 496 - 32 * _loc4_ + Main._stageResizeY;
                        }
                        else
                        {
                           MenuClass.popAllRandomTabNameAdd[_loc6_].y = 464 - 32 * _loc4_ + Main._stageResizeY;
                        }
                     }
                     else if(_loc7_ > _loc10_)
                     {
                        MenuClass.popAllRandomTabNameAdd[_loc6_].y = 105 + 32 * _loc4_ + Main._stageResizeY * -1;
                     }
                     else
                     {
                        MenuClass.popAllRandomTabNameAdd[_loc6_].y = 73 + 32 * _loc4_ + Main._stageResizeY * -1;
                     }
                     MenuClass.popAllRandomTabNameAdd[_loc6_].x = Math.floor((MenuClass.popAllRandomTabNameAdd[_loc6_].width + 1) * _loc5_) - 1 * _loc5_ + 2 + 10;
                     MenuClass.popAllRandomTabNameAdd[_loc6_].icon.icon.gotoAndStop(_loc6_);
                     MenuClass.popAllRandomTabNameAdd[_loc6_].addEventListener(MouseEvent.MOUSE_DOWN,allMouseDown);
                     MenuClass.popAllRandomTabNameAdd[_loc6_].number = _loc7_;
                     MenuClass.popAllRandomTabNameAdd[_loc6_].buttonMode = true;
                     if(_loc7_ == _loc10_)
                     {
                        _loc5_ = 0;
                     }
                     else
                     {
                        _loc5_++;
                     }
                  }
               }
            }
            _loc7_++;
         }
         MenuClass.popAllRandomTabNameAdd["close"] = new Menu_Load.TabCloseClass();
         Main.stageVar.addChild(MenuClass.popAllRandomTabNameAdd["close"]);
         MenuClass.popAllRandomTabNameAdd["close"].x = 32 * _loc5_ + 1 + 10;
         if(MenuClass.hederSwitchCheck)
         {
            MenuClass.popAllRandomTabNameAdd["close"].y = 496 - 32 * _loc4_ + Main._stageResizeY;
         }
         else
         {
            MenuClass.popAllRandomTabNameAdd["close"].y = 105 + 32 * _loc4_ + Main._stageResizeY * -1;
         }
         MenuClass.popAllRandomTabNameAdd["close"].scaleX = MenuClass.popAllRandomTabNameAdd["close"].scaleY = 0.95;
         new ColorChangeClass(MenuClass.popAllRandomTabNameAdd["close"].bg,MenuClass.MY_MENUNAME[MenuClass.headerAdd[headerName].num][1]);
         MenuClass.popAllRandomTabNameAdd["close"].addEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
         MenuClass.popAllRandomTabNameAdd["close"].addEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
         MenuClass.popAllRandomTabNameAdd["close"].addEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
         MenuClass.popAllRandomTabNameAdd["close"].buttonMode = true;
         new Tab_SetClass();
      }
      
      public static function toolDeleteFc() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = MenuClass.MY_MENUNAME.length;
         MenuClass.RamdomOpenCheck = true;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            if(MenuClass.MY_MENUNAME[_loc2_][3] != 10)
            {
               if(MenuClass.MY_MENUNAME[_loc2_][2] || MenuClass.MY_MENUNAME[_loc2_][2] == false)
               {
                  if(MenuClass.MY_MENUNAME[_loc2_][4] || !Main.r18Check)
                  {
                     _loc1_ = MenuClass.MY_MENUNAME[_loc2_][0];
                     try
                     {
                        MenuClass.popAllRandomTabNameAdd[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,allMouseDown);
                        Main.stageVar.removeChild(MenuClass.popAllRandomTabNameAdd[_loc1_]);
                        MenuClass.popAllRandomTabNameAdd[_loc1_] = null;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
            }
            _loc2_++;
         }
         try
         {
            MenuClass.popAllRandomTabNameAdd["close"].removeEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
            MenuClass.popAllRandomTabNameAdd["close"].removeEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
            MenuClass.popAllRandomTabNameAdd["close"].removeEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
            Main.stageVar.removeChild(MenuClass.popAllRandomTabNameAdd["close"]);
            MenuClass.popAllRandomTabNameAdd["close"] = null;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function setFc(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:Number = NaN;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:MovieClip = null;
         var _loc16_:MovieClip = null;
         headerName = param1;
         for(_loc3_ in MenuClass.tabData[headerName])
         {
            _loc2_ = _loc3_ as int;
            _loc4_ = MenuClass.tabData[headerName][_loc2_][2]["_sort"];
         }
         MenuClass.RamdomOpenCheck = false;
         for(_loc3_ in MenuClass.tabData[headerName])
         {
            _loc2_ = _loc3_ as int;
            _loc5_ = MenuClass.tabData[headerName][_loc2_][0];
            if(MenuClass.tabData[headerName][_loc2_][2]["_random"] || MenuClass.tabData[headerName][_loc2_][2]["_random"] == false)
            {
               if(!(MenuClass.tabData[headerName][_loc2_][2]["_r18"] == 1 && Main.r18Check || MenuClass.tabData[headerName][_loc2_][2]["_r18"] == 2 && !Main.r18Check))
               {
                  if(!(MenuClass.tabData[headerName][_loc2_][2]["_download"] && (Main.publishMode == "web" || Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age")))
                  {
                     _loc8_ = new Menu_Load.TabRandomBoxClass();
                     MenuClass.popRandomTabNameAdd[_loc5_] = _loc8_;
                     MenuClass.popRandomTabNameAdd[_loc5_].name = _loc5_;
                     Main.stageVar.addChild(MenuClass.popRandomTabNameAdd[_loc5_]);
                     MenuClass.popRandomTabNameAdd[_loc5_].x = Math.floor((MenuClass.popRandomTabNameAdd[_loc5_].width + 1) * _loc6_) - 1 * _loc6_ + 2 + 10;
                     if(MenuClass.hederSwitchCheck)
                     {
                        MenuClass.popRandomTabNameAdd[_loc5_].y = 496 - 32 * _loc4_ + Main._stageResizeY;
                     }
                     else
                     {
                        MenuClass.popRandomTabNameAdd[_loc5_].y = 75 + 32 * _loc4_ + Main._stageResizeY * -1;
                     }
                     MenuClass.popRandomTabNameAdd[_loc5_].icon.icon.gotoAndStop(_loc5_);
                     if(Main.r18Check)
                     {
                        if(MenuClass.popRandomTabNameAdd[_loc5_].icon.icon.icon)
                        {
                           MenuClass.popRandomTabNameAdd[_loc5_].icon.icon.icon.gotoAndStop(2);
                        }
                     }
                     MenuClass.popRandomTabNameAdd[_loc5_].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
                     MenuClass.popRandomTabNameAdd[_loc5_].buttonMode = true;
                     MenuClass.popRandomTabNameAdd[_loc5_].number = _loc2_;
                     _loc6_++;
                  }
               }
            }
            if(_loc5_ == "Random")
            {
               _loc9_ = 0;
               if(MenuClass.tabData[headerName][_loc2_][2]["_visible"] != undefined)
               {
                  _loc10_ = new Menu_Load.TabRandomVisibleClass();
                  MenuClass.popRandomTabNameAdd["_visible"] = _loc10_;
                  Main.stageVar.addChild(MenuClass.popRandomTabNameAdd["_visible"]);
                  MenuClass.popRandomTabNameAdd["_visible"].x = 10;
                  if(MenuClass.hederSwitchCheck)
                  {
                     MenuClass.popRandomTabNameAdd["_visible"].y = 472 - 32 * _loc4_ + Main._stageResizeY;
                  }
                  else
                  {
                     MenuClass.popRandomTabNameAdd["_visible"].y = 109 + 32 * _loc4_ + Main._stageResizeY * -1;
                  }
                  _loc9_ += MenuClass.popRandomTabNameAdd["_visible"].width;
                  MenuClass.popRandomTabNameAdd["_visible"].number = _loc2_;
                  MenuClass.popRandomTabNameAdd["_visible"].name = "_visible";
                  MenuClass.popRandomTabNameAdd["_visible"].addEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
                  MenuClass.popRandomTabNameAdd["_visible"].buttonMode = true;
               }
               if(MenuClass.tabData[headerName][_loc2_][2]["_menu"] != undefined)
               {
                  _loc11_ = new Menu_Load.TabRandomMenuClass();
                  MenuClass.popRandomTabNameAdd["_menu"] = _loc11_;
                  Main.stageVar.addChild(MenuClass.popRandomTabNameAdd["_menu"]);
                  MenuClass.popRandomTabNameAdd["_menu"].x = _loc9_ + 10;
                  if(MenuClass.hederSwitchCheck)
                  {
                     MenuClass.popRandomTabNameAdd["_menu"].y = 472 - 32 * _loc4_ + Main._stageResizeY;
                  }
                  else
                  {
                     MenuClass.popRandomTabNameAdd["_menu"].y = 109 + 32 * _loc4_ + Main._stageResizeY * -1;
                  }
                  _loc9_ += MenuClass.popRandomTabNameAdd["_menu"].width;
                  MenuClass.popRandomTabNameAdd["_menu"].number = _loc2_;
                  MenuClass.popRandomTabNameAdd["_menu"].name = "_menu";
                  MenuClass.popRandomTabNameAdd["_menu"].addEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
                  MenuClass.popRandomTabNameAdd["_menu"].buttonMode = true;
               }
               if(MenuClass.tabData[headerName][_loc2_][2]["_meter"] != undefined)
               {
                  _loc12_ = new Menu_Load.TabRandomMeterClass();
                  MenuClass.popRandomTabNameAdd["_meter"] = _loc12_;
                  Main.stageVar.addChild(MenuClass.popRandomTabNameAdd["_meter"]);
                  MenuClass.popRandomTabNameAdd["_meter"].x = _loc9_ + 10;
                  if(MenuClass.hederSwitchCheck)
                  {
                     MenuClass.popRandomTabNameAdd["_meter"].y = 472 - 32 * _loc4_ + Main._stageResizeY;
                  }
                  else
                  {
                     MenuClass.popRandomTabNameAdd["_meter"].y = 109 + 32 * _loc4_ + Main._stageResizeY * -1;
                  }
                  _loc9_ += MenuClass.popRandomTabNameAdd["_meter"].width;
                  MenuClass.popRandomTabNameAdd["_meter"].number = _loc2_;
                  MenuClass.popRandomTabNameAdd["_meter"].name = "_meter";
                  MenuClass.popRandomTabNameAdd["_meter"].addEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
                  MenuClass.popRandomTabNameAdd["_meter"].buttonMode = true;
               }
               if(MenuClass.tabData[headerName][_loc2_][2]["_color0"] != undefined)
               {
                  _loc13_ = new Menu_Load.TabRandomColor1Class();
                  MenuClass.popRandomTabNameAdd["_color0"] = _loc13_;
                  Main.stageVar.addChild(MenuClass.popRandomTabNameAdd["_color0"]);
                  MenuClass.popRandomTabNameAdd["_color0"].x = _loc9_ + 10;
                  if(MenuClass.hederSwitchCheck)
                  {
                     MenuClass.popRandomTabNameAdd["_color0"].y = 472 - 32 * _loc4_ + Main._stageResizeY;
                  }
                  else
                  {
                     MenuClass.popRandomTabNameAdd["_color0"].y = 109 + 32 * _loc4_ + Main._stageResizeY * -1;
                  }
                  _loc9_ += MenuClass.popRandomTabNameAdd["_color0"].width;
                  MenuClass.popRandomTabNameAdd["_color0"].number = _loc2_;
                  MenuClass.popRandomTabNameAdd["_color0"].name = "_color0";
                  MenuClass.popRandomTabNameAdd["_color0"].addEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
                  MenuClass.popRandomTabNameAdd["_color0"].buttonMode = true;
               }
               if(MenuClass.tabData[headerName][_loc2_][2]["_color1"] != undefined)
               {
                  _loc14_ = new Menu_Load.TabRandomColor2Class();
                  MenuClass.popRandomTabNameAdd["_color1"] = _loc14_;
                  Main.stageVar.addChild(MenuClass.popRandomTabNameAdd["_color1"]);
                  MenuClass.popRandomTabNameAdd["_color1"].x = _loc9_ + 10;
                  if(MenuClass.hederSwitchCheck)
                  {
                     MenuClass.popRandomTabNameAdd["_color1"].y = 472 - 32 * _loc4_ + Main._stageResizeY;
                  }
                  else
                  {
                     MenuClass.popRandomTabNameAdd["_color1"].y = 109 + 32 * _loc4_ + Main._stageResizeY * -1;
                  }
                  _loc9_ += MenuClass.popRandomTabNameAdd["_color1"].width;
                  MenuClass.popRandomTabNameAdd["_color1"].number = _loc2_;
                  MenuClass.popRandomTabNameAdd["_color1"].name = "_color1";
                  MenuClass.popRandomTabNameAdd["_color1"].addEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
                  MenuClass.popRandomTabNameAdd["_color1"].buttonMode = true;
               }
               if(MenuClass.tabData[headerName][_loc2_][2]["_color2"] != undefined)
               {
                  _loc15_ = new Menu_Load.TabRandomColor3Class();
                  MenuClass.popRandomTabNameAdd["_color2"] = _loc15_;
                  Main.stageVar.addChild(MenuClass.popRandomTabNameAdd["_color2"]);
                  MenuClass.popRandomTabNameAdd["_color2"].x = _loc9_ + 10;
                  if(MenuClass.hederSwitchCheck)
                  {
                     MenuClass.popRandomTabNameAdd["_color2"].y = 472 - 32 * _loc4_ + Main._stageResizeY;
                  }
                  else
                  {
                     MenuClass.popRandomTabNameAdd["_color2"].y = 109 + 32 * _loc4_ + Main._stageResizeY * -1;
                  }
                  _loc9_ += MenuClass.popRandomTabNameAdd["_color2"].width;
                  MenuClass.popRandomTabNameAdd["_color2"].number = _loc2_;
                  MenuClass.popRandomTabNameAdd["_color2"].name = "_color2";
                  MenuClass.popRandomTabNameAdd["_color2"].addEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
                  MenuClass.popRandomTabNameAdd["_color2"].buttonMode = true;
               }
               if(MenuClass.tabData[headerName][_loc2_][2]["_check"] != undefined)
               {
                  _loc16_ = new Menu_Load.TabRandomCheckBoxClass();
                  MenuClass.popRandomTabNameAdd["_check"] = _loc16_;
                  Main.stageVar.addChild(MenuClass.popRandomTabNameAdd["_check"]);
                  MenuClass.popRandomTabNameAdd["_check"].x = _loc9_ + 10;
                  if(MenuClass.hederSwitchCheck)
                  {
                     MenuClass.popRandomTabNameAdd["_check"].y = 472 - 32 * _loc4_ + Main._stageResizeY;
                  }
                  else
                  {
                     MenuClass.popRandomTabNameAdd["_check"].y = 109 + 32 * _loc4_ + Main._stageResizeY * -1;
                  }
                  _loc9_ += MenuClass.popRandomTabNameAdd["_check"].width;
                  MenuClass.popRandomTabNameAdd["_check"].number = _loc2_;
                  MenuClass.popRandomTabNameAdd["_check"].name = "_check";
                  MenuClass.popRandomTabNameAdd["_check"].addEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
                  MenuClass.popRandomTabNameAdd["_check"].buttonMode = true;
               }
            }
         }
         _loc7_ = new Menu_Load.TabCloseClass();
         MenuClass.popRandomTabNameAdd["close"] = _loc7_;
         Main.stageVar.addChild(MenuClass.popRandomTabNameAdd["close"]);
         MenuClass.popRandomTabNameAdd["close"].x = _loc9_ + 10;
         if(MenuClass.hederSwitchCheck)
         {
            MenuClass.popRandomTabNameAdd["close"].y = 471 - 32 * _loc4_ + Main._stageResizeY;
         }
         else
         {
            MenuClass.popRandomTabNameAdd["close"].y = 108 + 32 * _loc4_ + Main._stageResizeY * -1;
         }
         MenuClass.popRandomTabNameAdd["close"].scaleX = MenuClass.popRandomTabNameAdd["close"].scaleY = 0.7;
         MenuClass.popRandomTabNameAdd["close"].addEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
         MenuClass.popRandomTabNameAdd["close"].addEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
         MenuClass.popRandomTabNameAdd["close"].addEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
         MenuClass.popRandomTabNameAdd["close"].buttonMode = true;
         new Tab_SetClass();
      }
      
      public static function deleteFc(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:String = null;
         headerName = param1;
         MenuClass.RamdomOpenCheck = true;
         for(_loc3_ in MenuClass.tabData[headerName])
         {
            _loc2_ = _loc3_ as int;
            _loc4_ = MenuClass.tabData[headerName][_loc2_][0];
            try
            {
               MenuClass.popRandomTabNameAdd[_loc4_].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
               Main.stageVar.removeChild(MenuClass.popRandomTabNameAdd[_loc4_]);
               MenuClass.popRandomTabNameAdd[_loc4_] = null;
            }
            catch(myError:Error)
            {
            }
         }
         try
         {
            MenuClass.popRandomTabNameAdd["_visible"].removeEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
            Main.stageVar.removeChild(MenuClass.popRandomTabNameAdd["_visible"]);
            MenuClass.popRandomTabNameAdd["_visible"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.popRandomTabNameAdd["_menu"].removeEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
            Main.stageVar.removeChild(MenuClass.popRandomTabNameAdd["_menu"]);
            MenuClass.popRandomTabNameAdd["_menu"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.popRandomTabNameAdd["_meter"].removeEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
            Main.stageVar.removeChild(MenuClass.popRandomTabNameAdd["_meter"]);
            MenuClass.popRandomTabNameAdd["_meter"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.popRandomTabNameAdd["_color0"].removeEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
            Main.stageVar.removeChild(MenuClass.popRandomTabNameAdd["_color0"]);
            MenuClass.popRandomTabNameAdd["_color0"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.popRandomTabNameAdd["_color1"].removeEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
            Main.stageVar.removeChild(MenuClass.popRandomTabNameAdd["_color1"]);
            MenuClass.popRandomTabNameAdd["_color1"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.popRandomTabNameAdd["_color2"].removeEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
            Main.stageVar.removeChild(MenuClass.popRandomTabNameAdd["_color2"]);
            MenuClass.popRandomTabNameAdd["_color2"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.popRandomTabNameAdd["_check"].removeEventListener(MouseEvent.MOUSE_DOWN,elseMouseDown);
            Main.stageVar.removeChild(MenuClass.popRandomTabNameAdd["_check"]);
            MenuClass.popRandomTabNameAdd["_check"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.popRandomTabNameAdd["close"].removeEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
            MenuClass.popRandomTabNameAdd["close"].removeEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
            MenuClass.popRandomTabNameAdd["close"].removeEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
            Main.stageVar.removeChild(MenuClass.popRandomTabNameAdd["close"]);
            MenuClass.popRandomTabNameAdd["close"] = null;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         var _loc5_:* = false;
         var _loc2_:int = MenuClass.tabData[headerName].length;
         new Stage_MoveCheckClass();
         var _loc4_:int = param1.currentTarget.number;
         if(MenuClass.spaceKeyPress)
         {
            _loc5_ = !MenuClass.tabData[headerName][_loc4_][2]["_random"];
            _loc3_ = 0;
            for(; _loc3_ <= _loc2_; _loc3_++)
            {
               try
               {
                  if(MenuClass.tabData[headerName][_loc3_][2]["_random"] != undefined)
                  {
                     MenuClass.tabData[headerName][_loc3_][2]["_random"] = _loc5_;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         else
         {
            MenuClass.tabData[headerName][_loc4_][2]["_random"] = !MenuClass.tabData[headerName][_loc4_][2]["_random"];
         }
         new Tab_SetClass();
      }
      
      public static function allMouseDown(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         var _loc5_:* = false;
         var _loc2_:int = MenuClass.MY_MENUNAME.length;
         new Stage_MoveCheckClass();
         var _loc4_:int = param1.currentTarget.number;
         if(MenuClass.spaceKeyPress)
         {
            _loc5_ = !MenuClass.MY_MENUNAME[_loc4_][2];
            _loc3_ = 0;
            for(; _loc3_ <= _loc2_; _loc3_++)
            {
               try
               {
                  if(MenuClass.MY_MENUNAME[_loc3_][2] != null)
                  {
                     MenuClass.MY_MENUNAME[_loc3_][2] = _loc5_;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         else
         {
            MenuClass.MY_MENUNAME[_loc4_][2] = !MenuClass.MY_MENUNAME[_loc4_][2];
         }
         new Tab_SetClass();
      }
      
      public static function elseMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         var _loc2_:int = param1.currentTarget.number;
         var _loc3_:String = param1.currentTarget.name;
         MenuClass.tabData[headerName][_loc2_][2][_loc3_] = !MenuClass.tabData[headerName][_loc2_][2][_loc3_];
         new Tab_SetClass();
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         if(headerName == "SystemOption")
         {
            Tab_RandomCostumOpen.toolDeleteFc();
         }
         else
         {
            Tab_RandomCostumOpen.deleteFc(headerName);
         }
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
