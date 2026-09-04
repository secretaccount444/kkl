package menu
{
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import parameter.ColorMake;
   import parameter.ColorMakeNew;
   import parameter.Color_data;
   import parameter.Dress_data;
   
   public class Tab_ColorBtnSet2
   {
      
      public static var paret1Before_num:Number = 0;
      
      public static var paret0Before_numX:Number = 0;
      
      public static var paret0Before_numY:Number = 0;
      
      public static var beforeSCustom:int = 99;
      
      public static var swfBeforeSCustom:int = 99;
      
      public static var menuNum:int;
      
      public static var anotherMenuNum:int;
      
      public static var tabNamePlus:String;
      
      public static var enterCount:int;
      
      public static var nowbtn:MovieClip;
      
      public static var Nagaoshi_count:int;
      
      public static var newLoadCheck:String = "";
      
      public static var bitmapData:BitmapData;
      
      public static var shiftPress:Boolean;
      
      public static var spuitBg:Sprite = new Sprite();
       
      
      public function Tab_ColorBtnSet2()
      {
         super();
      }
      
      public static function setFc(param1:String, param2:int, param3:String, param4:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:MovieClip = null;
         var _loc16_:MovieClip = null;
         var _loc17_:MovieClip = null;
         var _loc18_:int = 0;
         var _loc19_:String = null;
         var _loc20_:Object = null;
         var _loc21_:int = 0;
         var _loc5_:String;
         if((_loc5_ = MenuClass.tabData[param1][param2][2]["_color"]) == "charaPlus" || _loc5_ == "systemPlus")
         {
            _loc9_ = MenuClass.tabData[param1][param2][2]["_data"];
            _loc10_ = MenuClass.systemData[_loc9_]["_menu"];
            tabNamePlus = param3 + _loc10_;
         }
         else
         {
            tabNamePlus = param3;
         }
         MenuClass.colorSelectNum = param4;
         MenuClass._nowTabName = param3;
         new Stage_MoveCheckClass();
         if(Dress_data.DressData[tabNamePlus].length == 1)
         {
            _loc6_ = 0;
         }
         else if(_loc5_ == "chara" || _loc5_ == "charaPlus")
         {
            _loc6_ = MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_menu"];
         }
         else if(_loc5_ == "system" || _loc5_ == "systemPlus")
         {
            _loc6_ = MenuClass.systemData[tabNamePlus]["_menu"];
         }
         MenuClass.colorMenuNum = _loc6_;
         new Tab_VMC(param1,tabNamePlus,MenuClass._nowCharaNum,param2);
         if(MenuClass.tabData[param1][param2][2]["_color"] == "chara" || MenuClass.tabData[param1][param2][2]["_color"] == "charaPlus")
         {
            _loc7_ = MenuClass.charaData[MenuClass._nowCharaNum][tabNamePlus]["_color" + param4][Tab_VMC.menuNum];
            _loc8_ = MenuClass._nowCharaNum;
         }
         else if(MenuClass.tabData[param1][param2][2]["_color"] == "system" || MenuClass.tabData[param1][param2][2]["_color"] == "systemPlus")
         {
            _loc7_ = MenuClass.systemData[tabNamePlus]["_color" + param4][Tab_VMC.menuNum];
            _loc8_ = 0;
         }
         if(MenuClass.shiftKeyPress)
         {
            spuitFc();
            shiftPress = true;
         }
         else
         {
            shiftPress = false;
            _loc13_ = new MovieClip();
            MenuClass.colorAdd["small"] = _loc13_;
            Main.stageVar.addChild(MenuClass.colorAdd["small"]);
            _loc14_ = new Menu_Load.SmallColor_BgClass();
            MenuClass.colorPlusAdd["Bg"] = _loc14_;
            MenuClass.colorAdd["small"].addChild(MenuClass.colorPlusAdd["Bg"]);
            MenuClass.colorPlusAdd["Bg"].x = 17;
            _loc15_ = new Menu_Load.SmallColor_BgClass();
            MenuClass.colorPlusAdd["Bg2"] = _loc15_;
            MenuClass.colorAdd["small"].addChild(MenuClass.colorPlusAdd["Bg2"]);
            MenuClass.colorPlusAdd["Bg2"].x = 17;
            _loc16_ = new Menu_Load.SmallColorLinkClass();
            MenuClass.colorPlusAdd["link"] = _loc16_;
            MenuClass.colorAdd["small"].addChild(MenuClass.colorPlusAdd["link"]);
            MenuClass.colorPlusAdd["link"].addEventListener(MouseEvent.MOUSE_DOWN,LinkMouseDown);
            MenuClass.colorPlusAdd["link"].buttonMode = true;
            _loc17_ = new Menu_Load.SmallColorCustomClass();
            MenuClass.colorPlusAdd["Custom"] = _loc17_;
            MenuClass.colorAdd["small"].addChild(MenuClass.colorPlusAdd["Custom"]);
            MenuClass.colorPlusAdd["Custom"].addEventListener(MouseEvent.MOUSE_DOWN,CustomMouseDown);
            MenuClass.colorPlusAdd["Custom"].buttonMode = true;
            _loc11_ = 0;
            while(_loc11_ <= 77)
            {
               _loc12_ = new Menu_Load.SmallColorClass();
               MenuClass.colorPlusAdd["sc" + _loc11_] = _loc12_;
               MenuClass.colorAdd["small"].addChild(MenuClass.colorPlusAdd["sc" + _loc11_]);
               MenuClass.colorPlusAdd["sc" + _loc11_].addEventListener(MouseEvent.MOUSE_DOWN,SmallColorMouseDown);
               MenuClass.colorPlusAdd["sc" + _loc11_].buttonMode = true;
               MenuClass.colorPlusAdd["sc" + _loc11_]._number = _loc11_;
               _loc11_++;
            }
            if((_loc18_ = Color_data.ColorData[Dress_data.DressData[tabNamePlus][_loc6_]["_color" + param4][0]].length - 1) >= 9)
            {
               MenuClass.colorPlusAdd["Custom"].y = -20;
               MenuClass.colorPlusAdd["link"].y = 4;
               MenuClass.colorPlusAdd["Bg"].y = -20;
               MenuClass.colorPlusAdd["Bg2"].visible = true;
            }
            else
            {
               MenuClass.colorPlusAdd["Custom"].y = 0;
               MenuClass.colorPlusAdd["Bg"].y = 0;
               MenuClass.colorPlusAdd["Bg2"].visible = false;
            }
            if(_loc18_ > 70)
            {
               MenuClass.colorPlusAdd["Bg"].width = Math.floor(20 * 39 + 8);
               MenuClass.colorPlusAdd["Bg2"].width = Math.floor(20 * (_loc18_ - 38) + 8);
            }
            else if(_loc18_ > 60)
            {
               MenuClass.colorPlusAdd["Bg"].width = Math.floor(20 * 35 + 8);
               MenuClass.colorPlusAdd["Bg2"].width = Math.floor(20 * (_loc18_ - 34) + 8);
            }
            else if(_loc18_ > 50)
            {
               MenuClass.colorPlusAdd["Bg"].width = Math.floor(20 * 30 + 8);
               MenuClass.colorPlusAdd["Bg2"].width = Math.floor(20 * (_loc18_ - 29) + 8);
            }
            else if(_loc18_ >= 39)
            {
               MenuClass.colorPlusAdd["Bg"].width = Math.floor(20 * 25 + 8);
               MenuClass.colorPlusAdd["Bg2"].width = Math.floor(20 * (_loc18_ - 24) + 8);
            }
            else if(_loc18_ >= 9)
            {
               MenuClass.colorPlusAdd["Bg"].width = Math.floor(20 * 5 + 8);
               MenuClass.colorPlusAdd["Bg2"].width = Math.floor(20 * (_loc18_ - 4) + 8);
            }
            else
            {
               MenuClass.colorPlusAdd["Bg"].width = Math.floor(20 * (_loc18_ + 1) + 8);
            }
            _loc11_ = 0;
            while(_loc11_ <= 77)
            {
               if(_loc11_ <= _loc18_)
               {
                  MenuClass.colorPlusAdd["sc" + _loc11_].visible = true;
                  _loc20_ = Color_data.ColorData[Dress_data.DressData[tabNamePlus][_loc6_]["_color" + param4][0]];
                  new ColorChangeClass(MenuClass.colorPlusAdd["sc" + _loc11_].color,_loc20_[_loc11_][Dress_data.DressData[tabNamePlus][_loc6_]["_color" + param4][2]]);
                  if(_loc18_ > 70)
                  {
                     _loc21_ = 39;
                  }
                  else if(_loc18_ > 60)
                  {
                     _loc21_ = 35;
                  }
                  else if(_loc18_ > 50)
                  {
                     _loc21_ = 30;
                  }
                  else if(_loc18_ >= 39)
                  {
                     _loc21_ = 25;
                  }
                  else if(_loc18_ >= 9)
                  {
                     _loc21_ = 5;
                  }
                  else
                  {
                     _loc21_ = 0;
                  }
                  if(_loc11_ < _loc21_)
                  {
                     MenuClass.colorPlusAdd["sc" + _loc11_].y = -20;
                     MenuClass.colorPlusAdd["sc" + _loc11_].x = 20 * _loc11_ + 22;
                  }
                  else
                  {
                     MenuClass.colorPlusAdd["sc" + _loc11_].y = 0;
                     MenuClass.colorPlusAdd["sc" + _loc11_].x = 20 * (_loc11_ - _loc21_) + 22;
                  }
                  MenuClass.colorPlusAdd["sc" + _loc11_].gotoAndStop(1);
               }
               else
               {
                  MenuClass.colorPlusAdd["sc" + _loc11_].visible = false;
                  MenuClass.colorPlusAdd["sc" + _loc11_].x = 0;
                  MenuClass.colorPlusAdd["sc" + _loc11_].y = 0;
               }
               _loc11_++;
            }
            try
            {
               MenuClass.colorPlusAdd["sc" + _loc7_].gotoAndStop(3);
            }
            catch(myError:Error)
            {
            }
            _loc19_ = String(_loc7_);
            if(Dress_data.DressData[tabNamePlus][MenuClass.colorMenuNum]["_color" + param4][3] >= 1)
            {
               if(_loc19_.length >= 4 && Dress_data.DressCharaData[_loc8_][tabNamePlus][MenuClass.colorMenuNum]["_color" + param4][1] == 1)
               {
                  MenuClass.colorPlusAdd["Custom"].gotoAndStop(2);
               }
               else
               {
                  MenuClass.colorPlusAdd["Custom"].gotoAndStop(1);
               }
               MenuClass.colorPlusAdd["link"].visible = true;
               if(Dress_data.DressCharaData[_loc8_][tabNamePlus][MenuClass.colorMenuNum]["_color" + param4][1] == 2)
               {
                  MenuClass.colorPlusAdd["link"].gotoAndStop(2);
                  MenuClass.tabMenuAdd[param3]["color" + param4].gotoAndStop(3);
               }
               else
               {
                  MenuClass.colorPlusAdd["link"].gotoAndStop(1);
                  MenuClass.tabMenuAdd[param3]["color" + param4].gotoAndStop(1);
               }
            }
            else
            {
               if((_loc18_ = Color_data.ColorData[Dress_data.DressData[tabNamePlus][MenuClass.colorMenuNum]["_color" + param4][0]].length - 1) >= 39)
               {
                  if(_loc19_.length >= 4)
                  {
                     MenuClass.colorPlusAdd["Custom"].gotoAndStop(4);
                  }
                  else
                  {
                     MenuClass.colorPlusAdd["Custom"].gotoAndStop(3);
                  }
               }
               else if(_loc19_.length >= 4)
               {
                  MenuClass.colorPlusAdd["Custom"].gotoAndStop(6);
               }
               else
               {
                  MenuClass.colorPlusAdd["Custom"].gotoAndStop(5);
               }
               MenuClass.colorPlusAdd["link"].visible = false;
            }
            if(MenuClass.hederSwitchCheck)
            {
               MenuClass.colorAdd["small"].y = Tab_ClassSetY.topY - 21;
            }
            else
            {
               MenuClass.colorAdd["small"].y = Tab_ClassSetY.topY + 55;
            }
            MenuClass.colorAdd["small"].x = Math.floor(MenuClass.tabMenuAdd[param3].x + 24 + MenuClass.tabMenuAdd[param3].color0.x - (MenuClass.colorAdd["small"].width - 8) / 2);
            if(MenuClass.colorAdd["small"].x < 10)
            {
               MenuClass.colorAdd["small"].x = 10;
            }
            else if(MenuClass.colorAdd["small"].x + MenuClass.colorAdd["small"].width > Main.stageVar.stageWidth)
            {
               MenuClass.colorAdd["small"].x -= Math.floor(MenuClass.colorAdd["small"].width - (Main.stageVar.stageWidth - MenuClass.colorAdd["small"].x));
            }
            enterCount = 0;
            MenuClass.colorAdd["small"].addEventListener(Event.ENTER_FRAME,countEnterFrame);
         }
      }
      
      public static function deleteFc() : void
      {
         var _loc1_:int = 0;
         try
         {
            MenuClass.colorAdd["small"].removeChild(MenuClass.colorPlusAdd["Bg"]);
            MenuClass.colorPlusAdd["Bg"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.colorAdd["small"].removeChild(MenuClass.colorPlusAdd["Bg2"]);
            MenuClass.colorPlusAdd["Bg2"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.colorPlusAdd["link"].removeEventListener(MouseEvent.MOUSE_DOWN,LinkMouseDown);
            MenuClass.colorAdd["small"].removeChild(MenuClass.colorPlusAdd["link"]);
            MenuClass.colorPlusAdd["link"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.colorPlusAdd["Custom"].removeEventListener(MouseEvent.MOUSE_DOWN,CustomMouseDown);
            MenuClass.colorAdd["small"].removeChild(MenuClass.colorPlusAdd["Custom"]);
            MenuClass.colorPlusAdd["Custom"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc1_ = 0;
            while(_loc1_ <= 77)
            {
               MenuClass.colorPlusAdd["sc" + _loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,SmallColorMouseDown);
               MenuClass.colorAdd["small"].removeChild(MenuClass.colorPlusAdd["sc" + _loc1_]);
               MenuClass.colorPlusAdd["sc" + _loc1_] = null;
               _loc1_++;
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            Main.stageVar.removeChild(MenuClass.colorAdd["small"]);
            MenuClass.colorAdd["small"] = null;
         }
         catch(myError:Error)
         {
         }
         MenuClass.ColorOpenCheck = false;
         MenuClass.colorClickName[0] = null;
         MenuClass.colorClickName[1] = null;
      }
      
      public static function swfColorMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         nowbtn = param1.currentTarget as MovieClip;
         nowbtn.gotoAndStop(2);
         swfColorMenuAction(nowbtn);
         nowbtn.addEventListener(MouseEvent.MOUSE_UP,swfColorMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,swfColorMouseUp);
         Nagaoshi_count = 0;
         Main.stageVar.addEventListener(Event.ENTER_FRAME,nagaoshiEnterFrame);
      }
      
      public static function swfColorMouseUp(param1:MouseEvent) : void
      {
         nowbtn.gotoAndStop(1);
         nowbtn.removeEventListener(MouseEvent.MOUSE_UP,swfColorMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,swfColorMouseUp);
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,nagaoshiEnterFrame);
      }
      
      public static function nagaoshiEnterFrame(param1:Event) : void
      {
         ++Nagaoshi_count;
         if(Nagaoshi_count >= 10)
         {
            swfColorMenuAction(nowbtn);
         }
      }
      
      public static function swfColorMenuAction(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(MenuClass._nowHeaderName == "CharaLoad")
         {
            _loc3_ = MenuClass.systemData["CharaLoadPlus"]["_menu"];
         }
         else
         {
            _loc3_ = MenuClass.systemData["LoadPlus"]["_menu"];
         }
         if(MenuClass._nowHeaderName == "CharaLoad")
         {
            if(param1.name == "plus")
            {
               if(param1.num == 0)
               {
                  if(MenuClass.menuData["LoadSwfMenu"] == int(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] + 1))
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] = 0;
                  }
                  else
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] += 1;
                  }
               }
               else if(param1.num == 1)
               {
                  if(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).senAr.length != 0)
                  {
                     if(MenuClass.menuData["LoadSwfSen"] == int(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"]))
                     {
                        MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"] = 0;
                     }
                     else
                     {
                        MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"] += 1;
                     }
                  }
                  else
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"] = 0;
                  }
               }
            }
            else if(param1.name == "minus")
            {
               if(param1.num == 0)
               {
                  if(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] == 0)
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] = MenuClass.menuData["LoadSwfMenu"] - 1;
                  }
                  else
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] - 1;
                  }
               }
               else if(param1.num == 1)
               {
                  if(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).senAr.length != 0)
                  {
                     if(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"] == 0)
                     {
                        MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"] = MenuClass.menuData["LoadSwfSen"];
                     }
                     else
                     {
                        MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"] = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"] - 1;
                     }
                  }
                  else
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"] = 0;
                  }
               }
            }
         }
         else if(param1.name == "plus")
         {
            if(param1.num == 0)
            {
               if(MenuClass.menuData["LoadSwfMenu"] == int(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfMenu"] + 1))
               {
                  MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfMenu"] = 0;
               }
               else
               {
                  MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfMenu"] += 1;
               }
            }
            else if(param1.num == 1)
            {
               if(Tab_FileReference.Arloader2[_loc3_].getChildAt(0).senAr.length != 0)
               {
                  if(MenuClass.menuData["LoadSwfSen"] == int(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"]))
                  {
                     MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"] = 0;
                  }
                  else
                  {
                     MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"] += 1;
                  }
               }
               else
               {
                  MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"] = 0;
               }
            }
         }
         else if(param1.name == "minus")
         {
            if(param1.num == 0)
            {
               if(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfMenu"] == 0)
               {
                  MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfMenu"] = MenuClass.menuData["LoadSwfMenu"] - 1;
               }
               else
               {
                  MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfMenu"] = MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfMenu"] - 1;
               }
            }
            else if(param1.num == 1)
            {
               if(Tab_FileReference.Arloader2[_loc3_].getChildAt(0).senAr.length != 0)
               {
                  if(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"] == 0)
                  {
                     MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"] = MenuClass.menuData["LoadSwfSen"];
                  }
                  else
                  {
                     MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"] = MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"] - 1;
                  }
               }
               else
               {
                  MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"] = 0;
               }
            }
         }
         if(MenuClass._nowHeaderName == "CharaLoad")
         {
            _loc4_ = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] + 1;
         }
         else
         {
            _loc4_ = MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfMenu"] + 1;
         }
         if(_loc4_ <= 9)
         {
            MenuClass.colorAdd["colorCustom"].menu0.num0.text = "0" + _loc4_;
         }
         else
         {
            MenuClass.colorAdd["colorCustom"].menu0.num0.text = _loc4_;
         }
         if(MenuClass._nowHeaderName == "CharaLoad")
         {
            _loc4_ = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"] + 1;
         }
         else
         {
            _loc4_ = MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"] + 1;
         }
         if(_loc4_ <= 9)
         {
            MenuClass.colorAdd["colorCustom"].menu1.num0.text = "0" + _loc4_;
         }
         else
         {
            MenuClass.colorAdd["colorCustom"].menu1.num0.text = _loc4_;
         }
         if(param1.num == 0)
         {
            if(MenuClass._nowHeaderName == "CharaLoad")
            {
               if(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0)["version"] == 1)
               {
                  Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item.gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] + 1);
               }
               else
               {
                  Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] + 1);
               }
            }
            else if(Tab_FileReference.Arloader2[_loc3_].getChildAt(0)["version"] == 1)
            {
               Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item.gotoAndStop(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfMenu"] + 1);
            }
            else
            {
               Tab_FileReference.Arloader2[_loc3_].getChildAt(0).gotoAndStop(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfMenu"] + 1);
            }
            _loc5_ = 99;
            if(MenuClass._nowHeaderName == "CharaLoad")
            {
               _loc2_ = 0;
               while(_loc2_ <= 23)
               {
                  if(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0)["color" + _loc2_] != "0")
                  {
                     try
                     {
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].removeEventListener(MouseEvent.MOUSE_DOWN,SwfSmallColorCustomMouseDown);
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].buttonMode = false;
                     }
                     catch(e:Error)
                     {
                     }
                     if(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item["color" + _loc2_ + "_0"])
                     {
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].addEventListener(MouseEvent.MOUSE_DOWN,SwfSmallColorCustomMouseDown);
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].buttonMode = true;
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].gotoAndStop(1);
                        if(_loc5_ == 99)
                        {
                           _loc5_ = _loc2_;
                           MenuClass.swfColorPlusAdd["cc" + _loc2_].gotoAndStop(3);
                           swfBeforeSCustom = _loc2_;
                        }
                     }
                     else
                     {
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].gotoAndStop(4);
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item["color" + _loc2_ + "_0"],MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfColor"][_loc2_]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item["color" + _loc2_ + "_1"],MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfColor"][_loc2_]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item["color" + _loc2_ + "_2"],MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfColor"][_loc2_]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorMakeNew(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfColor"][_loc2_],3);
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item["kage" + _loc2_ + "_0"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item["kage" + _loc2_ + "_1"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item["kage" + _loc2_ + "_2"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  _loc2_++;
               }
            }
            else
            {
               _loc2_ = 0;
               while(_loc2_ <= 23)
               {
                  if(Tab_FileReference.Arloader2[_loc3_].getChildAt(0)["color" + _loc2_] != "0")
                  {
                     try
                     {
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].removeEventListener(MouseEvent.MOUSE_DOWN,SwfSmallColorCustomMouseDown);
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].buttonMode = false;
                     }
                     catch(e:Error)
                     {
                     }
                     if(Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item["color" + _loc2_ + "_0"])
                     {
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].addEventListener(MouseEvent.MOUSE_DOWN,SwfSmallColorCustomMouseDown);
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].buttonMode = true;
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].gotoAndStop(1);
                        if(_loc5_ == 99)
                        {
                           _loc5_ = _loc2_;
                           MenuClass.swfColorPlusAdd["cc" + _loc2_].gotoAndStop(3);
                           swfBeforeSCustom = _loc2_;
                        }
                     }
                     else
                     {
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].gotoAndStop(4);
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item["color" + _loc2_ + "_0"],MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfColor"][_loc2_]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item["color" + _loc2_ + "_1"],MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfColor"][_loc2_]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item["color" + _loc2_ + "_2"],MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfColor"][_loc2_]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        new ColorMakeNew(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfColor"][_loc2_],3);
                        new ColorChangeClass(Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item["kage" + _loc2_ + "_0"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item["kage" + _loc2_ + "_1"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item["kage" + _loc2_ + "_2"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  _loc2_++;
               }
            }
            if(MenuClass._nowHeaderName == "CharaLoad")
            {
               MenuClass.colorAdd["colorCustom"].frameNumTxt.text = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfColor"][_loc5_];
            }
            else
            {
               MenuClass.colorAdd["colorCustom"].frameNumTxt.text = MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfColor"][_loc5_];
            }
         }
         if(MenuClass._nowHeaderName == "CharaLoad")
         {
            _loc2_ = 0;
            for(; _loc2_ < Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0)["senAr"].length; _loc2_++)
            {
               try
               {
                  if(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"] == 0)
                  {
                     try
                     {
                        Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item[Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0)["senAr"][_loc2_]].gotoAndStop(6);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item[Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0)["senAr2"][_loc2_]].gotoAndStop(6);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item[Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0)["senAr3"][_loc2_]].gotoAndStop(6);
                     }
                     catch(e:Error)
                     {
                     }
                  }
                  else
                  {
                     try
                     {
                        Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item[Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0)["senAr"][_loc2_]].gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item[Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0)["senAr2"][_loc2_]].gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0).item[Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc3_].getChildAt(0)["senAr3"][_loc2_]].gotoAndStop(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc3_]["_swfSen"]);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               catch(e:Error)
               {
                  continue;
               }
            }
         }
         else
         {
            _loc2_ = 0;
            for(; _loc2_ < Tab_FileReference.Arloader2[_loc3_].getChildAt(0)["senAr"].length; _loc2_++)
            {
               try
               {
                  if(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"] == 0)
                  {
                     try
                     {
                        Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item[Tab_FileReference.Arloader2[_loc3_].getChildAt(0)["senAr"][_loc2_]].gotoAndStop(6);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item[Tab_FileReference.Arloader2[_loc3_].getChildAt(0)["senAr2"][_loc2_]].gotoAndStop(6);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item[Tab_FileReference.Arloader2[_loc3_].getChildAt(0)["senAr3"][_loc2_]].gotoAndStop(6);
                     }
                     catch(e:Error)
                     {
                     }
                  }
                  else
                  {
                     try
                     {
                        Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item[Tab_FileReference.Arloader2[_loc3_].getChildAt(0)["senAr"][_loc2_]].gotoAndStop(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item[Tab_FileReference.Arloader2[_loc3_].getChildAt(0)["senAr2"][_loc2_]].gotoAndStop(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"]);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        Tab_FileReference.Arloader2[_loc3_].getChildAt(0).item[Tab_FileReference.Arloader2[_loc3_].getChildAt(0)["senAr3"][_loc2_]].gotoAndStop(MenuClass.systemData["LoadSwfColor" + _loc3_]["_swfSen"]);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               catch(e:Error)
               {
                  continue;
               }
            }
         }
      }
      
      public static function SwfSmallColorCustomMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         new Stage_MoveCheckClass();
         param1.currentTarget.gotoAndStop(3);
         try
         {
            if(swfBeforeSCustom != param1.currentTarget._number)
            {
               MenuClass.swfColorPlusAdd["cc" + swfBeforeSCustom].gotoAndStop(1);
            }
         }
         catch(myError:Error)
         {
         }
         swfBeforeSCustom = param1.currentTarget._number;
         if(MenuClass._nowHeaderName == "CharaLoad")
         {
            _loc2_ = MenuClass.systemData["CharaLoadPlus"]["_menu"];
            if(MenuClass.spaceKeyPress)
            {
               MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number] = Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc2_].getChildAt(0)["color" + param1.currentTarget._number];
               new ColorChangeClass(MenuClass.swfColorPlusAdd["cc" + param1.currentTarget._number].color,MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
               try
               {
                  new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc2_].getChildAt(0).item["color" + param1.currentTarget._number + "_0"],MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
               }
               catch(e:Error)
               {
               }
               try
               {
                  new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc2_].getChildAt(0).item["color" + param1.currentTarget._number + "_1"],MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
               }
               catch(e:Error)
               {
               }
               try
               {
                  new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc2_].getChildAt(0).item["color" + param1.currentTarget._number + "_2"],MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
               }
               catch(e:Error)
               {
               }
               try
               {
                  new ColorMakeNew(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number],3);
                  new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc2_].getChildAt(0).item["kage" + param1.currentTarget._number + "_0"],ColorMakeNew.colorStr);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc2_].getChildAt(0).item["kage" + param1.currentTarget._number + "_1"],ColorMakeNew.colorStr);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc2_].getChildAt(0).item["kage" + param1.currentTarget._number + "_2"],ColorMakeNew.colorStr);
               }
               catch(myError:Error)
               {
               }
            }
            new ColorChangeClass(MenuClass.colorAdd["colorCustom"].color,MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
            new ColorChangeClass(MenuClass.colorAdd["colorCustom"].colorParet1.color,MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
            MenuClass.colorAdd["colorCustom"].frameNumTxt.text = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number];
         }
         else
         {
            _loc2_ = MenuClass.systemData["LoadPlus"]["_menu"];
            if(MenuClass.spaceKeyPress)
            {
               MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number] = Tab_FileReference.Arloader2[_loc2_].getChildAt(0)["color" + param1.currentTarget._number];
               new ColorChangeClass(MenuClass.swfColorPlusAdd["cc" + param1.currentTarget._number].color,MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
               try
               {
                  new ColorChangeClass(Tab_FileReference.Arloader2[_loc2_].getChildAt(0).item["color" + param1.currentTarget._number + "_0"],MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
               }
               catch(e:Error)
               {
               }
               try
               {
                  new ColorChangeClass(Tab_FileReference.Arloader2[_loc2_].getChildAt(0).item["color" + param1.currentTarget._number + "_1"],MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
               }
               catch(e:Error)
               {
               }
               try
               {
                  new ColorChangeClass(Tab_FileReference.Arloader2[_loc2_].getChildAt(0).item["color" + param1.currentTarget._number + "_2"],MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
               }
               catch(e:Error)
               {
               }
               try
               {
                  new ColorMakeNew(MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number],3);
                  new ColorChangeClass(Tab_FileReference.Arloader2[_loc2_].getChildAt(0).item["kage" + param1.currentTarget._number + "_0"],ColorMakeNew.colorStr);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(Tab_FileReference.Arloader2[_loc2_].getChildAt(0).item["kage" + param1.currentTarget._number + "_1"],ColorMakeNew.colorStr);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorChangeClass(Tab_FileReference.Arloader2[_loc2_].getChildAt(0).item["kage" + param1.currentTarget._number + "_2"],ColorMakeNew.colorStr);
               }
               catch(myError:Error)
               {
               }
            }
            new ColorChangeClass(MenuClass.colorAdd["colorCustom"].color,MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
            new ColorChangeClass(MenuClass.colorAdd["colorCustom"].colorParet1.color,MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number]);
            MenuClass.colorAdd["colorCustom"].frameNumTxt.text = MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfColor"][param1.currentTarget._number];
         }
         MenuClass.colorAdd["colorCustom"].en.visible = false;
         MenuClass.colorAdd["colorCustom"].yajirushi.y = 50;
      }
      
      public static function customSetFc(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:MovieClip = new Menu_Load.ColorCustomClass();
         MenuClass.colorAdd["colorCustom"] = _loc4_;
         Main.stageVar.addChild(MenuClass.colorAdd["colorCustom"]);
         MenuClass.colorAdd["colorCustom"].x = 10;
         if(param1 == "swfColor")
         {
            MenuClass.colorAdd["colorCustom"].gotoAndStop(2);
            if(MenuClass._nowHeaderName == "CharaLoad")
            {
               _loc8_ = MenuClass.systemData["CharaLoadPlus"]["_menu"];
               if(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc8_].getChildAt(0)["version"] == 1)
               {
                  MenuClass.menuData["LoadSwfMenu"] = Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc8_].getChildAt(0).item.totalFrames;
               }
               else
               {
                  MenuClass.menuData["LoadSwfMenu"] = Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc8_].getChildAt(0).totalFrames;
               }
            }
            else
            {
               _loc8_ = MenuClass.systemData["LoadPlus"]["_menu"];
               if(Tab_FileReference.Arloader2[_loc8_].getChildAt(0)["version"] == 1)
               {
                  MenuClass.menuData["LoadSwfMenu"] = Tab_FileReference.Arloader2[_loc8_].getChildAt(0).item.totalFrames;
               }
               else
               {
                  MenuClass.menuData["LoadSwfMenu"] = Tab_FileReference.Arloader2[_loc8_].getChildAt(0).totalFrames;
               }
            }
            if(MenuClass.menuData["LoadSwfMenu"] <= 9)
            {
               MenuClass.colorAdd["colorCustom"].menu0.num1.text = "0" + MenuClass.menuData["LoadSwfMenu"];
            }
            else
            {
               MenuClass.colorAdd["colorCustom"].menu0.num1.text = MenuClass.menuData["LoadSwfMenu"];
            }
            if(MenuClass._nowHeaderName == "CharaLoad")
            {
               if(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc8_].getChildAt(0).senAr.length != 0)
               {
                  MenuClass.colorAdd["colorCustom"].menu1.num1.text = "06";
               }
               else
               {
                  MenuClass.colorAdd["colorCustom"].menu1.num1.text = "01";
               }
               _loc9_ = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc8_]["_swfMenu"] + 1;
            }
            else
            {
               if(Tab_FileReference.Arloader2[_loc8_].getChildAt(0).senAr.length != 0)
               {
                  MenuClass.colorAdd["colorCustom"].menu1.num1.text = "06";
               }
               else
               {
                  MenuClass.colorAdd["colorCustom"].menu1.num1.text = "01";
               }
               _loc9_ = MenuClass.systemData["LoadSwfColor" + _loc8_]["_swfMenu"] + 1;
            }
            if(_loc9_ <= 9)
            {
               MenuClass.colorAdd["colorCustom"].menu0.num0.text = "0" + _loc9_;
            }
            else
            {
               MenuClass.colorAdd["colorCustom"].menu0.num0.text = _loc9_;
            }
            if(MenuClass._nowHeaderName == "CharaLoad")
            {
               _loc9_ = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc8_]["_swfSen"] + 1;
            }
            else
            {
               _loc9_ = MenuClass.systemData["LoadSwfColor" + _loc8_]["_swfSen"] + 1;
            }
            if(_loc9_ <= 9)
            {
               MenuClass.colorAdd["colorCustom"].menu1.num0.text = "0" + _loc9_;
            }
            else
            {
               MenuClass.colorAdd["colorCustom"].menu1.num0.text = _loc9_;
            }
            if(MenuClass.hederSwitchCheck)
            {
               MenuClass.colorAdd["colorCustom"].y = 416 + Main._stageResizeY;
            }
            else
            {
               MenuClass.colorAdd["colorCustom"].y = 45 + Main._stageResizeY * -1;
            }
            MenuClass.colorAdd["colorCustom"].menu0.minus.addEventListener(MouseEvent.MOUSE_DOWN,swfColorMouseDown);
            MenuClass.colorAdd["colorCustom"].menu0.minus.buttonMode = true;
            MenuClass.colorAdd["colorCustom"].menu0.minus.num = 0;
            MenuClass.colorAdd["colorCustom"].menu0.plus.addEventListener(MouseEvent.MOUSE_DOWN,swfColorMouseDown);
            MenuClass.colorAdd["colorCustom"].menu0.plus.buttonMode = true;
            MenuClass.colorAdd["colorCustom"].menu0.plus.num = 0;
            MenuClass.colorAdd["colorCustom"].menu1.minus.addEventListener(MouseEvent.MOUSE_DOWN,swfColorMouseDown);
            MenuClass.colorAdd["colorCustom"].menu1.minus.buttonMode = true;
            MenuClass.colorAdd["colorCustom"].menu1.minus.num = 1;
            MenuClass.colorAdd["colorCustom"].menu1.plus.addEventListener(MouseEvent.MOUSE_DOWN,swfColorMouseDown);
            MenuClass.colorAdd["colorCustom"].menu1.plus.buttonMode = true;
            MenuClass.colorAdd["colorCustom"].menu1.plus.num = 1;
            _loc10_ = 99;
            try
            {
               _loc2_ = 0;
               while(_loc2_ <= 23)
               {
                  if(MenuClass._nowHeaderName == "CharaLoad")
                  {
                     if(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc8_]["_swfColor"][_loc2_] != "0")
                     {
                        _loc3_ = new Menu_Load.SmallColorClass();
                        MenuClass.swfColorPlusAdd["cc" + _loc2_] = _loc3_;
                        MenuClass.colorAdd["colorCustom"].addChild(MenuClass.swfColorPlusAdd["cc" + _loc2_]);
                        if(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][_loc8_].getChildAt(0).item["color" + _loc2_ + "_0"])
                        {
                           MenuClass.swfColorPlusAdd["cc" + _loc2_].addEventListener(MouseEvent.MOUSE_DOWN,SwfSmallColorCustomMouseDown);
                           MenuClass.swfColorPlusAdd["cc" + _loc2_].buttonMode = true;
                           if(_loc10_ == 99)
                           {
                              _loc10_ = _loc2_;
                              MenuClass.swfColorPlusAdd["cc" + _loc2_].gotoAndStop(3);
                              swfBeforeSCustom = _loc2_;
                           }
                        }
                        else
                        {
                           MenuClass.swfColorPlusAdd["cc" + _loc2_].gotoAndStop(4);
                        }
                        MenuClass.swfColorPlusAdd["cc" + _loc2_]._number = _loc2_;
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].x = 20 * _loc2_ + 286;
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].y = 118;
                        new ColorChangeClass(MenuClass.swfColorPlusAdd["cc" + _loc2_].color,MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc8_]["_swfColor"][_loc2_]);
                     }
                  }
                  else if(MenuClass.systemData["LoadSwfColor" + _loc8_]["_swfColor"][_loc2_] != "0")
                  {
                     _loc3_ = new Menu_Load.SmallColorClass();
                     MenuClass.swfColorPlusAdd["cc" + _loc2_] = _loc3_;
                     MenuClass.colorAdd["colorCustom"].addChild(MenuClass.swfColorPlusAdd["cc" + _loc2_]);
                     if(Tab_FileReference.Arloader2[_loc8_].getChildAt(0).item["color" + _loc2_ + "_0"])
                     {
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].addEventListener(MouseEvent.MOUSE_DOWN,SwfSmallColorCustomMouseDown);
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].buttonMode = true;
                        if(_loc10_ == 99)
                        {
                           _loc10_ = _loc2_;
                           MenuClass.swfColorPlusAdd["cc" + _loc2_].gotoAndStop(3);
                           swfBeforeSCustom = _loc2_;
                        }
                     }
                     else
                     {
                        MenuClass.swfColorPlusAdd["cc" + _loc2_].gotoAndStop(4);
                     }
                     MenuClass.swfColorPlusAdd["cc" + _loc2_]._number = _loc2_;
                     MenuClass.swfColorPlusAdd["cc" + _loc2_].x = 20 * _loc2_ + 286;
                     MenuClass.swfColorPlusAdd["cc" + _loc2_].y = 118;
                     new ColorChangeClass(MenuClass.swfColorPlusAdd["cc" + _loc2_].color,MenuClass.systemData["LoadSwfColor" + _loc8_]["_swfColor"][_loc2_]);
                  }
                  _loc2_++;
               }
               if(MenuClass._nowHeaderName == "CharaLoad")
               {
                  MenuClass.colorAdd["colorCustom"].frameNumTxt.text = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc8_]["_swfColor"][_loc10_];
                  newLoadCheck = MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadAdd" + _loc8_]["_name"];
                  new ColorChangeClass(MenuClass.colorAdd["colorCustom"].color,MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + _loc8_]["_swfColor"][_loc10_]);
               }
               else
               {
                  MenuClass.colorAdd["colorCustom"].frameNumTxt.text = MenuClass.systemData["LoadSwfColor" + _loc8_]["_swfColor"][_loc10_];
                  newLoadCheck = MenuClass.systemData["LoadScale" + _loc8_]["_name"];
                  new ColorChangeClass(MenuClass.colorAdd["colorCustom"].color,MenuClass.systemData["LoadSwfColor" + _loc8_]["_swfColor"][_loc10_]);
               }
            }
            catch(e:Error)
            {
            }
            MenuClass.colorAdd["colorCustom"].en.visible = false;
            MenuClass.colorAdd["colorCustom"].yajirushi.y = 50;
         }
         else if(MenuClass.hederSwitchCheck)
         {
            MenuClass.colorAdd["colorCustom"].y = 436 + Main._stageResizeY;
         }
         else
         {
            MenuClass.colorAdd["colorCustom"].y = 45 + Main._stageResizeY * -1;
         }
         MenuClass.colorAdd["colorCustom"].spuit.addEventListener(MouseEvent.MOUSE_DOWN,spuitMouseDown);
         MenuClass.colorAdd["colorCustom"].spuit.buttonMode = true;
         new ColorChangeClass(MenuClass.colorAdd["colorCustom"].closeBtn.bg,"37241A");
         MenuClass.colorAdd["colorCustom"].closeBtn.addEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
         MenuClass.colorAdd["colorCustom"].closeBtn.addEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
         MenuClass.colorAdd["colorCustom"].closeBtn.addEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
         MenuClass.colorAdd["colorCustom"].closeBtn.buttonMode = true;
         MenuClass.colorAdd["colorCustom"].frameNumTxt.addEventListener(Event.CHANGE,txtChangeCheck);
         MenuClass.colorAdd["colorCustom"].frameNumTxt.addEventListener(MouseEvent.MOUSE_DOWN,txtMouseDown);
         MenuClass.colorAdd["colorCustom"].frameNumTxt.restrict = "a-zA-Z0-9";
         MenuClass.colorAdd["colorCustom"].en.mouseEnabled = false;
         var _loc5_:BitmapData = new BitmapData(20,100,true);
         MenuClass.colorPlusAdd["paret1"] = _loc5_;
         var _loc6_:BitmapData = new BitmapData(200,100,true);
         MenuClass.colorPlusAdd["paret0"] = _loc6_;
         MenuClass.colorPlusAdd["paret0"].draw(MenuClass.colorAdd["colorCustom"].colorParet0);
         MenuClass.colorAdd["colorCustom"].colorParet0.addEventListener(MouseEvent.MOUSE_DOWN,paret0MouseDown);
         MenuClass.colorAdd["colorCustom"].colorParet1.addEventListener(MouseEvent.MOUSE_DOWN,paret1MouseDown);
         MenuClass.colorAdd["colorCustom"].randomBtn.addEventListener(MouseEvent.MOUSE_DOWN,ramdomMouseDown);
         MenuClass.colorAdd["colorCustom"].randomBtn.buttonMode = true;
         MenuClass.colorAdd["colorCustom"].saveBtn.addEventListener(MouseEvent.MOUSE_DOWN,saveMouseDown);
         MenuClass.colorAdd["colorCustom"].saveBtn.buttonMode = true;
         MenuClass.colorAdd["colorCustom"].loadBtn.addEventListener(MouseEvent.MOUSE_DOWN,loadMouseDown);
         MenuClass.colorAdd["colorCustom"].loadBtn.buttonMode = true;
         MenuClass.colorAdd["colorCustom"].deleteBtn.addEventListener(MouseEvent.MOUSE_DOWN,deleteMouseDown);
         MenuClass.colorAdd["colorCustom"].deleteBtn.buttonMode = true;
         var _loc7_:int = 0;
         _loc2_ = 0;
         while(_loc2_ <= 74)
         {
            _loc3_ = new Menu_Load.SmallColorClass();
            MenuClass.colorPlusAdd["cc" + _loc2_] = _loc3_;
            MenuClass.colorAdd["colorCustom"].addChild(MenuClass.colorPlusAdd["cc" + _loc2_]);
            MenuClass.colorPlusAdd["cc" + _loc2_].addEventListener(MouseEvent.MOUSE_DOWN,SmallColorCustomMouseDown);
            MenuClass.colorPlusAdd["cc" + _loc2_].buttonMode = true;
            MenuClass.colorPlusAdd["cc" + _loc2_]._number = _loc2_;
            if(_loc2_ >= 50)
            {
               _loc7_ = 2;
            }
            else if(_loc2_ >= 25)
            {
               _loc7_ = 1;
            }
            MenuClass.colorPlusAdd["cc" + _loc2_].x = 20 * (_loc2_ - 25 * _loc7_) + 257;
            MenuClass.colorPlusAdd["cc" + _loc2_].y = 46 + 20 * _loc7_;
            if(Color_data.colorObj[_loc2_] == "0")
            {
               new ColorChangeClass(MenuClass.colorPlusAdd["cc" + _loc2_].color,"152322");
            }
            else
            {
               new ColorChangeClass(MenuClass.colorPlusAdd["cc" + _loc2_].color,String(Color_data.colorObj[_loc2_]));
            }
            _loc2_++;
         }
         MenuClass.ColorCustomOpenCheck = true;
      }
      
      public static function customDeleteFc() : void
      {
         var _loc1_:int = 0;
         try
         {
            MenuClass.colorAdd["colorCustom"].closeBtn.removeEventListener(MouseEvent.MOUSE_DOWN,closeMouseDown);
            MenuClass.colorAdd["colorCustom"].closeBtn.removeEventListener(MouseEvent.MOUSE_OVER,closeMouseOver);
            MenuClass.colorAdd["colorCustom"].closeBtn.removeEventListener(MouseEvent.MOUSE_OUT,closeMouseOut);
            MenuClass.colorAdd["colorCustom"].frameNumTxt.removeEventListener(Event.CHANGE,txtChangeCheck);
            MenuClass.colorAdd["colorCustom"].frameNumTxt.removeEventListener(MouseEvent.MOUSE_DOWN,txtMouseDown);
            MenuClass.colorAdd["colorCustom"].colorParet0.removeEventListener(MouseEvent.MOUSE_DOWN,paret0MouseDown);
            MenuClass.colorAdd["colorCustom"].colorParet1.removeEventListener(MouseEvent.MOUSE_DOWN,paret1MouseDown);
            MenuClass.colorAdd["colorCustom"].randomBtn.removeEventListener(MouseEvent.MOUSE_DOWN,ramdomMouseDown);
            MenuClass.colorAdd["colorCustom"].saveBtn.removeEventListener(MouseEvent.MOUSE_DOWN,saveMouseDown);
            MenuClass.colorAdd["colorCustom"].loadBtn.removeEventListener(MouseEvent.MOUSE_DOWN,loadMouseDown);
            MenuClass.colorAdd["colorCustom"].deleteBtn.removeEventListener(MouseEvent.MOUSE_DOWN,deleteMouseDown);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.colorPlusAdd["paret1"].dispose();
            MenuClass.colorPlusAdd["paret1"] = null;
            MenuClass.colorPlusAdd["paret0"].dispose();
            MenuClass.colorPlusAdd["paret0"] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc1_ = 0;
            while(_loc1_ <= 74)
            {
               MenuClass.colorPlusAdd["cc" + _loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,SmallColorCustomMouseDown);
               MenuClass.colorAdd["colorCustom"].removeChild(MenuClass.colorPlusAdd["cc" + _loc1_]);
               MenuClass.colorPlusAdd["cc" + _loc1_] = null;
               _loc1_++;
            }
         }
         catch(myError:Error)
         {
         }
         _loc1_ = 0;
         while(_loc1_ <= 23)
         {
            try
            {
               MenuClass.colorAdd["colorCustom"].removeChild(MenuClass.swfColorPlusAdd["cc" + _loc1_]);
               MenuClass.swfColorPlusAdd["cc" + _loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,SwfSmallColorCustomMouseDown);
            }
            catch(myError:Error)
            {
            }
            _loc1_++;
         }
         try
         {
            MenuClass.colorAdd["colorCustom"].menu0.minus.removeEventListener(MouseEvent.MOUSE_DOWN,swfColorMouseDown);
            MenuClass.colorAdd["colorCustom"].menu0.plus.removeEventListener(MouseEvent.MOUSE_DOWN,swfColorMouseDown);
            MenuClass.colorAdd["colorCustom"].menu1.minus.removeEventListener(MouseEvent.MOUSE_DOWN,swfColorMouseDown);
            MenuClass.colorAdd["colorCustom"].menu1.plus.removeEventListener(MouseEvent.MOUSE_DOWN,swfColorMouseDown);
         }
         catch(myError:Error)
         {
         }
         try
         {
            Main.stageVar.removeChild(MenuClass.colorAdd["colorCustom"]);
            MenuClass.colorAdd["colorCustom"] = null;
         }
         catch(myError:Error)
         {
         }
         MenuClass.ColorCustomOpenCheck = false;
      }
      
      public static function spuitFc() : void
      {
         new Stage_MoveCheckClass();
         bitmapData = new BitmapData(Main._stageWidth,Main._stageHeight,true);
         spuitBg.graphics.beginFill(0,1);
         spuitBg.graphics.drawRect(-2500,-2500,5800,5600);
         spuitBg.graphics.endFill();
         spuitBg.cacheAsBitmap = true;
         Main.stageVar.addChild(spuitBg);
         spuitBg.alpha = 0;
         spuitBg.buttonMode = false;
         spuitBg.addEventListener(MouseEvent.MOUSE_DOWN,spuitBgMouseDown);
         spuitBg.addEventListener(Event.ENTER_FRAME,spuitEnterFrame);
         bitmapData.draw(Main.stageVar);
         if(MenuClass.sCursor == null)
         {
            MenuClass.sCursor = new Menu_Load.spuitCursorClass();
            Main.stageVar.addChild(MenuClass.sCursor);
            MenuClass.sCursor.mouseChildren = false;
            MenuClass.sCursor.mouseEnabled = false;
         }
      }
      
      public static function spuitMouseDown(param1:MouseEvent) : void
      {
         spuitFc();
         MenuClass.colorAdd["colorCustom"].spuit.gotoAndStop(2);
         MenuClass.colorAdd["colorCustom"].en.visible = false;
         MenuClass.colorAdd["colorCustom"].yajirushi.y = 50;
      }
      
      public static function spuitEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         _loc2_ = bitmapData.getPixel(Main.stageVar.mouseX,Main.stageVar.mouseY);
         if(shiftPress)
         {
            paretDataIn(_loc2_,"shift_spuit");
         }
         else
         {
            paretDataIn(_loc2_,"spuit");
         }
         MenuClass.sCursor.x = Main.stageVar.mouseX;
         MenuClass.sCursor.y = Main.stageVar.mouseY;
      }
      
      public static function spuitBgMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         if(shiftPress)
         {
            MenuClass.ColorOpenCheck = false;
            MenuClass.colorClickName[0] = null;
            MenuClass.colorClickName[1] = null;
         }
         else
         {
            MenuClass.colorAdd["colorCustom"].spuit.gotoAndStop(1);
         }
         spuitBg.removeEventListener(MouseEvent.MOUSE_DOWN,spuitBgMouseDown);
         spuitBg.removeEventListener(Event.ENTER_FRAME,spuitEnterFrame);
         Main.stageVar.removeChild(spuitBg);
         bitmapData.dispose();
         Main.stageVar.removeChild(MenuClass.sCursor);
         MenuClass.sCursor = null;
      }
      
      public static function countEnterFrame(param1:Event) : void
      {
         if(enterCount == 1)
         {
            MenuClass.ColorOpenCheck = true;
            MenuClass.colorAdd["small"].removeEventListener(Event.ENTER_FRAME,countEnterFrame);
         }
         ++enterCount;
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         MenuClass.colorAdd["colorCustom"].saveBtn.gotoAndStop(1);
         MenuClass.colorAdd["colorCustom"].loadBtn.gotoAndStop(1);
         MenuClass.colorAdd["colorCustom"].deleteBtn.gotoAndStop(1);
         MenuClass.colorAdd["colorCustom"].randomBtn.gotoAndStop(1);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function SmallColorCustomMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         try
         {
            MenuClass.colorPlusAdd["cc" + beforeSCustom].gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         param1.currentTarget.gotoAndStop(3);
         beforeSCustom = param1.currentTarget._number;
      }
      
      public static function txtChangeCheck(param1:Event) : void
      {
         txtChangeFc();
      }
      
      public static function txtChangeFc() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         try
         {
            new Tab_TabNameCheck(MenuClass._nowTabName);
            _loc1_ = Tab_TabNameCheck.headerName;
            _loc2_ = Tab_TabNameCheck.targetJ;
            _loc3_ = MenuClass.tabData[_loc1_][_loc2_][2]["_color"];
            _loc5_ = true;
            if(_loc3_ == "chara" || _loc3_ == "charaPlus")
            {
               _loc4_ = MenuClass._nowCharaNum;
            }
            else if(_loc3_ == "system" || _loc3_ == "systemPlus")
            {
               _loc4_ = 0;
               _loc5_ = false;
            }
            new ColorChangeClass(MenuClass.colorAdd["colorCustom"].color,MenuClass.colorAdd["colorCustom"].frameNumTxt.text);
            new ColorChangeClass(MenuClass.colorAdd["colorCustom"].colorParet1.color,MenuClass.colorAdd["colorCustom"].frameNumTxt.text);
            if(MenuClass._nowHeaderName == "Loadmenu" || MenuClass._nowHeaderName == "CharaLoad")
            {
               if(MenuClass.colorAdd["colorCustom"].frameNumTxt.text.length == 1)
               {
                  _loc7_ = "00000" + MenuClass.colorAdd["colorCustom"].frameNumTxt.text;
               }
               else if(MenuClass.colorAdd["colorCustom"].frameNumTxt.text.length == 2)
               {
                  _loc7_ = "0000" + MenuClass.colorAdd["colorCustom"].frameNumTxt.text;
               }
               else if(MenuClass.colorAdd["colorCustom"].frameNumTxt.text.length == 3)
               {
                  _loc7_ = "000" + MenuClass.colorAdd["colorCustom"].frameNumTxt.text;
               }
               else if(MenuClass.colorAdd["colorCustom"].frameNumTxt.text.length == 4)
               {
                  _loc7_ = "00" + MenuClass.colorAdd["colorCustom"].frameNumTxt.text;
               }
               else if(MenuClass.colorAdd["colorCustom"].frameNumTxt.text.length == 5)
               {
                  _loc7_ = "0" + MenuClass.colorAdd["colorCustom"].frameNumTxt.text;
               }
               else if(MenuClass.colorAdd["colorCustom"].frameNumTxt.text.length == 6)
               {
                  _loc7_ = MenuClass.colorAdd["colorCustom"].frameNumTxt.text;
               }
               try
               {
                  new ColorChangeClass(MenuClass.swfColorPlusAdd["cc" + swfBeforeSCustom].color,_loc7_);
                  if(MenuClass._nowHeaderName == "CharaLoad")
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + MenuClass.systemData["CharaLoadPlus"]["_menu"]]["_swfColor"][swfBeforeSCustom] = _loc7_;
                     new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_0"],_loc7_);
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_1"],_loc7_);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_2"],_loc7_);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else
                  {
                     MenuClass.systemData["LoadSwfColor" + MenuClass.systemData["LoadPlus"]["_menu"]]["_swfColor"][swfBeforeSCustom] = _loc7_;
                     new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_0"],_loc7_);
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_1"],_loc7_);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_2"],_loc7_);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorMakeNew(_loc7_,3);
                  if(MenuClass._nowHeaderName == "CharaLoad")
                  {
                     new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_0"],ColorMakeNew.colorStr);
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_1"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_2"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else
                  {
                     new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_0"],ColorMakeNew.colorStr);
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_1"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_2"],ColorMakeNew.colorStr);
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
            if(MenuClass.colorAdd["colorCustom"].frameNumTxt.text.length == 6)
            {
               if(MenuClass._nowTargetMode == "All" && _loc5_)
               {
                  _loc6_ = 0;
                  while(_loc6_ <= MenuClass._characterNum)
                  {
                     anotherMenuNumFc(_loc6_);
                     linkCheck(MenuClass.colorAdd["colorCustom"].frameNumTxt.text,anotherMenuNum,_loc6_);
                     _loc6_++;
                  }
               }
               else if(MenuClass._nowTargetMode == "SelectPlus")
               {
                  _loc6_ = 0;
                  while(_loc6_ <= MenuClass._characterNum)
                  {
                     if(MenuClass._nowSelectChara[_loc6_])
                     {
                        anotherMenuNumFc(_loc6_);
                        linkCheck(MenuClass.colorAdd["colorCustom"].frameNumTxt.text,anotherMenuNum,_loc6_);
                     }
                     _loc6_++;
                  }
               }
               else
               {
                  linkCheck(MenuClass.colorAdd["colorCustom"].frameNumTxt.text,MenuClass.colorMenuNum,_loc4_);
               }
               charaSet();
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function txtMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         MenuClass.colorAdd["colorCustom"].en.visible = false;
         MenuClass.colorAdd["colorCustom"].yajirushi.y = 50;
      }
      
      public static function ramdomMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         param1.currentTarget.gotoAndStop(2);
         MenuClass.colorAdd["colorCustom"].en.visible = false;
         MenuClass.colorAdd["colorCustom"].yajirushi.y = 50;
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         var _loc2_:Number = Math.random() * 16777215;
         paretDataIn(_loc2_,"ramdom");
      }
      
      public static function saveMouseDown(param1:MouseEvent) : void
      {
         if(beforeSCustom != 99)
         {
            Color_data.colorObj[beforeSCustom] = MenuClass.colorAdd["colorCustom"].frameNumTxt.text;
            saveWrite();
            new ColorChangeClass(MenuClass.colorPlusAdd["cc" + beforeSCustom].color,Color_data.colorObj[beforeSCustom]);
         }
         new Stage_MoveCheckClass();
         param1.currentTarget.gotoAndStop(2);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function loadMouseDown(param1:MouseEvent) : void
      {
         if(beforeSCustom != 99)
         {
            if(Color_data.colorObj[beforeSCustom] != "0")
            {
               MenuClass.colorAdd["colorCustom"].frameNumTxt.text = Color_data.colorObj[beforeSCustom];
               txtChangeFc();
               MenuClass.colorAdd["colorCustom"].en.visible = false;
               MenuClass.colorAdd["colorCustom"].yajirushi.y = 50;
            }
         }
         new Stage_MoveCheckClass();
         param1.currentTarget.gotoAndStop(2);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function deleteMouseDown(param1:MouseEvent) : void
      {
         if(beforeSCustom != 99)
         {
            Color_data.colorObj[beforeSCustom] = 0;
            saveWrite();
            new ColorChangeClass(MenuClass.colorPlusAdd["cc" + beforeSCustom].color,"152322");
         }
         new Stage_MoveCheckClass();
         param1.currentTarget.gotoAndStop(2);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function saveWrite() : void
      {
         try
         {
            Color_data.so_color.flush();
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function paret0MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         MenuClass.colorAdd["colorCustom"].en.visible = true;
         MenuClass.colorAdd["colorCustom"].en.addEventListener(Event.ENTER_FRAME,enEnterFrame);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,paret0MouseUp);
         MenuClass.colorAdd["colorCustom"].yajirushi.y = 50;
      }
      
      public static function paret0MouseUp(param1:MouseEvent) : void
      {
         MenuClass.colorAdd["colorCustom"].en.removeEventListener(Event.ENTER_FRAME,enEnterFrame);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,paret0MouseUp);
      }
      
      public static function paret1MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         MenuClass.colorAdd["colorCustom"].yajirushi.addEventListener(Event.ENTER_FRAME,yajirushiEnterFrame);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,paret1MouseUp);
         MenuClass.colorAdd["colorCustom"].en.visible = false;
      }
      
      public static function paret1MouseUp(param1:MouseEvent) : void
      {
         MenuClass.colorAdd["colorCustom"].yajirushi.removeEventListener(Event.ENTER_FRAME,yajirushiEnterFrame);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,paret1MouseUp);
      }
      
      public static function paret1Fc() : void
      {
         var _loc1_:Number = NaN;
         MenuClass.colorPlusAdd["paret1"].draw(MenuClass.colorAdd["colorCustom"].colorParet1);
         _loc1_ = MenuClass.colorPlusAdd["paret1"].getPixel(10,MenuClass.colorAdd["colorCustom"].yajirushi.y);
         paretDataIn(_loc1_,"paret1");
      }
      
      public static function paretDataIn(param1:Number, param2:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:Boolean = false;
         _loc4_ = ("00000" + param1.toString(16)).substr(-6).toUpperCase();
         if(param2 == "shift_spuit")
         {
            _loc5_ = "nashi";
         }
         else
         {
            _loc5_ = MenuClass.colorAdd["colorCustom"].frameNumTxt.text;
         }
         if(_loc5_ != _loc4_)
         {
            new Tab_TabNameCheck(MenuClass._nowTabName);
            _loc6_ = Tab_TabNameCheck.headerName;
            _loc7_ = Tab_TabNameCheck.targetJ;
            _loc8_ = MenuClass.tabData[_loc6_][_loc7_][2]["_color"];
            _loc10_ = true;
            if(_loc8_ == "chara" || _loc8_ == "charaPlus")
            {
               _loc9_ = MenuClass._nowCharaNum;
            }
            else if(_loc8_ == "system" || _loc8_ == "systemPlus")
            {
               _loc9_ = 0;
               _loc10_ = false;
            }
            if(param2 != "shift_spuit")
            {
               new ColorChangeClass(MenuClass.colorAdd["colorCustom"].color,_loc4_);
               if(param2 != "paret1")
               {
                  new ColorChangeClass(MenuClass.colorAdd["colorCustom"].colorParet1.color,_loc4_);
               }
               MenuClass.colorAdd["colorCustom"].frameNumTxt.text = _loc4_;
               _loc5_ = _loc4_;
            }
            else
            {
               new ColorChangeClass(MenuClass.tabMenuAdd[MenuClass._nowTabName]["color" + MenuClass.colorSelectNum].color,_loc4_);
               _loc5_ = _loc4_;
            }
            if(MenuClass._nowHeaderName == "Loadmenu" || MenuClass._nowHeaderName == "CharaLoad")
            {
               try
               {
                  if(param2 != "shift_spuit")
                  {
                     new ColorChangeClass(MenuClass.swfColorPlusAdd["cc" + swfBeforeSCustom].color,_loc5_);
                  }
                  if(MenuClass._nowHeaderName == "CharaLoad")
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadSwfColor" + MenuClass.systemData["CharaLoadPlus"]["_menu"]]["_swfColor"][swfBeforeSCustom] = _loc5_;
                     new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_0"],_loc5_);
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_1"],_loc5_);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_2"],_loc5_);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else
                  {
                     MenuClass.systemData["LoadSwfColor" + MenuClass.systemData["LoadPlus"]["_menu"]]["_swfColor"][swfBeforeSCustom] = _loc5_;
                     new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_0"],_loc5_);
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_1"],_loc5_);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["color" + swfBeforeSCustom + "_2"],_loc5_);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  new ColorMakeNew(_loc5_,3);
                  if(MenuClass._nowHeaderName == "CharaLoad")
                  {
                     new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_0"],ColorMakeNew.colorStr);
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_1"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_2"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else
                  {
                     new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_0"],ColorMakeNew.colorStr);
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_1"],ColorMakeNew.colorStr);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        new ColorChangeClass(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).item["kage" + swfBeforeSCustom + "_2"],ColorMakeNew.colorStr);
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
            if(MenuClass._nowTargetMode == "All" && _loc10_)
            {
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  anotherMenuNumFc(_loc3_);
                  linkCheck(_loc4_,anotherMenuNum,_loc3_);
                  _loc3_++;
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc3_])
                  {
                     anotherMenuNumFc(_loc3_);
                     linkCheck(_loc4_,anotherMenuNum,_loc3_);
                  }
                  _loc3_++;
               }
            }
            else
            {
               linkCheck(_loc4_,MenuClass.colorMenuNum,_loc9_);
            }
            charaSet();
            new Tab_SetClass();
         }
      }
      
      public static function enEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         if(paret0Before_numX != MenuClass.colorAdd["colorCustom"].colorParet0.mouseX || paret0Before_numY != MenuClass.colorAdd["colorCustom"].colorParet0.mouseY)
         {
            if(MenuClass.colorAdd["colorCustom"].colorParet0.mouseX <= 0)
            {
               _loc2_ = 0;
            }
            else if(MenuClass.colorAdd["colorCustom"].colorParet0.mouseX >= 199)
            {
               _loc2_ = 199;
            }
            else
            {
               _loc2_ = MenuClass.colorAdd["colorCustom"].colorParet0.mouseX;
            }
            if(MenuClass.colorAdd["colorCustom"].colorParet0.mouseY <= 0)
            {
               _loc3_ = 0;
            }
            else if(MenuClass.colorAdd["colorCustom"].colorParet0.mouseY >= 99)
            {
               _loc3_ = 99;
            }
            else
            {
               _loc3_ = MenuClass.colorAdd["colorCustom"].colorParet0.mouseY;
            }
            MenuClass.colorAdd["colorCustom"].en.x = _loc2_ + 12;
            MenuClass.colorAdd["colorCustom"].en.y = _loc3_ + 10;
            _loc4_ = MenuClass.colorPlusAdd["paret0"].getPixel(_loc2_,_loc3_);
            _loc5_ = ("00000" + _loc4_.toString(16)).substr(-6).toUpperCase();
            if(MenuClass.colorAdd["colorCustom"].yajirushi.y == 50)
            {
               paretDataIn(_loc4_,"enEnter");
            }
            else
            {
               paret1Fc();
            }
         }
         paret0Before_numX = MenuClass.colorAdd["colorCustom"].colorParet0.mouseX;
         paret0Before_numY = MenuClass.colorAdd["colorCustom"].colorParet0.mouseY;
      }
      
      public static function yajirushiEnterFrame(param1:Event) : void
      {
         if(paret1Before_num != MenuClass.colorAdd["colorCustom"].colorParet1.mouseY)
         {
            if(MenuClass.colorAdd["colorCustom"].colorParet1.mouseY <= 0)
            {
               MenuClass.colorAdd["colorCustom"].yajirushi.y = 0;
            }
            else if(MenuClass.colorAdd["colorCustom"].colorParet1.mouseY >= 100)
            {
               MenuClass.colorAdd["colorCustom"].yajirushi.y = 100;
            }
            else
            {
               MenuClass.colorAdd["colorCustom"].yajirushi.y = MenuClass.colorAdd["colorCustom"].colorParet1.mouseY;
            }
            paret1Fc();
         }
         paret1Before_num = MenuClass.colorAdd["colorCustom"].colorParet1.mouseY;
      }
      
      public static function closeMouseDown(param1:MouseEvent) : void
      {
         Tab_ColorBtnSet2.customDeleteFc();
         new Tab_SetClass();
         param1.currentTarget.gotoAndStop(1);
      }
      
      public static function closeMouseOver(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(2);
      }
      
      public static function closeMouseOut(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
      }
      
      public static function CustomMouseDown(param1:MouseEvent) : void
      {
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:int = 0;
         Tab_ColorBtnSet2.deleteFc();
         Tab_ColorBtnSet2.customSetFc("normal");
         tabNameSet();
         new Tab_TabNameCheck(MenuClass._nowTabName);
         var _loc2_:String = Tab_TabNameCheck.headerName;
         var _loc3_:int = Tab_TabNameCheck.targetJ;
         var _loc4_:String = MenuClass.tabData[_loc2_][_loc3_][2]["_color"];
         var _loc6_:Boolean = true;
         if(_loc4_ == "chara" || _loc4_ == "charaPlus")
         {
            _loc5_ = MenuClass._nowCharaNum;
            try
            {
               new Tab_VC(_loc2_,_loc3_,tabNamePlus);
               if(MenuClass._nowTargetMode == "All")
               {
                  _loc7_ = 0;
                  while(_loc7_ <= MenuClass._characterNum)
                  {
                     MenuClass.charaData[_loc7_][tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
                     _loc7_++;
                  }
               }
               else if(MenuClass._nowTargetMode == "SelectPlus")
               {
                  _loc7_ = 0;
                  while(_loc7_ <= MenuClass._characterNum)
                  {
                     if(MenuClass._nowSelectChara[_loc7_])
                     {
                        MenuClass.charaData[_loc7_][tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
                     }
                     _loc7_++;
                  }
               }
               else
               {
                  MenuClass.charaData[_loc5_][tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(_loc4_ == "system" || _loc4_ == "systemPlus")
         {
            _loc5_ = 0;
            _loc6_ = false;
            try
            {
               new Tab_VC(_loc2_,_loc3_,tabNamePlus);
               MenuClass.systemData[tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
            }
            catch(myError:Error)
            {
            }
         }
         if(MenuClass._nowTargetMode == "All" && _loc6_)
         {
            _loc7_ = 0;
            while(_loc7_ <= MenuClass._characterNum)
            {
               anotherMenuNumFc(_loc7_);
               LinkKaijyo(_loc7_,anotherMenuNum);
               _loc7_++;
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            _loc7_ = 0;
            while(_loc7_ <= MenuClass._characterNum)
            {
               if(MenuClass._nowSelectChara[_loc7_])
               {
                  anotherMenuNumFc(_loc7_);
                  LinkKaijyo(_loc7_,anotherMenuNum);
               }
               _loc7_++;
            }
         }
         else
         {
            LinkKaijyo(_loc5_,MenuClass.colorMenuNum);
         }
         new Stage_MoveCheckClass();
         try
         {
            MenuClass.colorPlusAdd["cc" + beforeSCustom].gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         beforeSCustom = 99;
         MenuClass.colorAdd["colorCustom"].en.visible = false;
         MenuClass.colorAdd["colorCustom"].yajirushi.y = 50;
         var _loc8_:String;
         if((_loc8_ = Dress_data.DressCharaData[_loc5_][tabNamePlus][MenuClass.colorMenuNum]["_color" + MenuClass.colorSelectNum][0]).length >= 4)
         {
            new ColorChangeClass(MenuClass.colorAdd["colorCustom"].color,_loc8_);
            new ColorChangeClass(MenuClass.colorAdd["colorCustom"].colorParet1.color,_loc8_);
            MenuClass.colorAdd["colorCustom"].frameNumTxt.text = _loc8_;
         }
         else
         {
            _loc9_ = Color_data.ColorData[Dress_data.DressData[tabNamePlus][MenuClass.colorMenuNum]["_color" + MenuClass.colorSelectNum][0]];
            _loc10_ = Dress_data.DressData[tabNamePlus][MenuClass.colorMenuNum]["_color" + MenuClass.colorSelectNum][2];
            new ColorChangeClass(MenuClass.colorAdd["colorCustom"].color,_loc9_[_loc8_][_loc10_]);
            new ColorChangeClass(MenuClass.colorAdd["colorCustom"].colorParet1.color,_loc9_[_loc8_][_loc10_]);
            MenuClass.colorAdd["colorCustom"].frameNumTxt.text = _loc9_[_loc8_][_loc10_];
         }
      }
      
      public static function tabNameSet() : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         new Tab_TabNameCheck(MenuClass._nowTabName);
         var _loc1_:String = Tab_TabNameCheck.headerName;
         var _loc2_:int = Tab_TabNameCheck.targetJ;
         var _loc3_:String = MenuClass.tabData[_loc1_][_loc2_][2]["_color"];
         if(_loc3_ == "charaPlus" || _loc3_ == "systemPlus")
         {
            _loc4_ = MenuClass.tabData[_loc1_][_loc2_][2]["_data"];
            _loc5_ = MenuClass.systemData[_loc4_]["_menu"];
            tabNamePlus = MenuClass._nowTabName + _loc5_;
         }
         else
         {
            tabNamePlus = MenuClass._nowTabName;
         }
      }
      
      public static function SmallColorMouseDown(param1:MouseEvent) : void
      {
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         new Tab_TabNameCheck(MenuClass._nowTabName);
         var _loc2_:String = Tab_TabNameCheck.headerName;
         var _loc3_:int = Tab_TabNameCheck.targetJ;
         tabNameSet();
         var _loc4_:String = MenuClass.tabData[_loc2_][_loc3_][2]["_color"];
         var _loc6_:Boolean = true;
         if(_loc4_ == "chara" || _loc4_ == "charaPlus")
         {
            _loc5_ = MenuClass._nowCharaNum;
            try
            {
               new Tab_VC(_loc2_,_loc3_,tabNamePlus);
               if(MenuClass._nowTargetMode == "All")
               {
                  _loc7_ = 0;
                  while(_loc7_ <= MenuClass._characterNum)
                  {
                     MenuClass.charaData[_loc7_][tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
                     _loc7_++;
                  }
               }
               else if(MenuClass._nowTargetMode == "SelectPlus")
               {
                  _loc7_ = 0;
                  while(_loc7_ <= MenuClass._characterNum)
                  {
                     if(MenuClass._nowSelectChara[_loc7_])
                     {
                        MenuClass.charaData[_loc7_][tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
                     }
                     _loc7_++;
                  }
               }
               else
               {
                  MenuClass.charaData[_loc5_][tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(_loc4_ == "system" || _loc4_ == "systemPlus")
         {
            _loc5_ = 0;
            _loc6_ = false;
            try
            {
               new Tab_VC(_loc2_,_loc3_,tabNamePlus);
               MenuClass.systemData[tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
            }
            catch(myError:Error)
            {
            }
         }
         new Stage_MoveCheckClass();
         if(MenuClass._nowTargetMode == "All" && _loc6_)
         {
            _loc7_ = 0;
            while(_loc7_ <= MenuClass._characterNum)
            {
               anotherMenuNumFc(_loc7_);
               LinkKaijyo(_loc7_,anotherMenuNum);
               linkCheck(String(param1.currentTarget._number),anotherMenuNum,_loc7_);
               _loc7_++;
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            _loc7_ = 0;
            while(_loc7_ <= MenuClass._characterNum)
            {
               if(MenuClass._nowSelectChara[_loc7_])
               {
                  anotherMenuNumFc(_loc7_);
                  LinkKaijyo(_loc7_,anotherMenuNum);
                  linkCheck(String(param1.currentTarget._number),anotherMenuNum,_loc7_);
               }
               _loc7_++;
            }
         }
         else
         {
            LinkKaijyo(_loc5_,MenuClass.colorMenuNum);
            linkCheck(String(param1.currentTarget._number),MenuClass.colorMenuNum,_loc5_);
         }
         param1.currentTarget.gotoAndStop(3);
         charaSet();
         new Tab_SetClass();
         MenuClass.ColorOpenCheck = false;
         enterCount = 0;
         MenuClass.colorAdd["small"].addEventListener(Event.ENTER_FRAME,countEnterFrame);
      }
      
      public static function charaSet() : void
      {
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         tabNameSet();
         new Tab_TabNameCheck(MenuClass._nowTabName);
         var _loc1_:String = Tab_TabNameCheck.headerName;
         var _loc2_:int = Tab_TabNameCheck.targetJ;
         var _loc3_:String = MenuClass.tabData[_loc1_][_loc2_][2]["_color"];
         var _loc5_:Boolean = true;
         if(_loc3_ == "chara" || _loc3_ == "charaPlus")
         {
            _loc4_ = MenuClass._nowCharaNum;
         }
         else if(_loc3_ == "system" || _loc3_ == "systemPlus")
         {
            _loc4_ = 0;
            _loc5_ = false;
         }
         if(MenuClass._nowTargetMode == "All" && _loc5_)
         {
            _loc6_ = 0;
            while(_loc6_ <= MenuClass._characterNum)
            {
               new SetClass(_loc6_,MenuClass._nowTabName,"tab");
               _loc6_++;
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            _loc6_ = 0;
            while(_loc6_ <= MenuClass._characterNum)
            {
               if(MenuClass._nowSelectChara[_loc6_])
               {
                  new SetClass(_loc6_,MenuClass._nowTabName,"tab");
               }
               _loc6_++;
            }
         }
         else
         {
            new SetClass(_loc4_,MenuClass._nowTabName,"tab");
         }
         MenuClass.colorPaletteCheck = [0,0,0];
      }
      
      public static function LinkKaijyo(param1:int, param2:int) : void
      {
         var _loc3_:String = null;
         tabNameSet();
         try
         {
            if(Dress_data.DressCharaData[param1][tabNamePlus][param2]["_color" + MenuClass.colorSelectNum][1] >= 1)
            {
               Dress_data.DressCharaData[param1][tabNamePlus][param2]["_color" + MenuClass.colorSelectNum][1] = 1;
               try
               {
                  MenuClass.colorPlusAdd["link"].gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  MenuClass.tabMenuAdd[MenuClass._nowTabName]["color" + MenuClass.colorSelectNum].gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
               _loc3_ = Dress_data.DressCharaData[param1][tabNamePlus][param2]["_color" + MenuClass.colorSelectNum][0];
               if(_loc3_.length >= 4)
               {
                  try
                  {
                     MenuClass.colorPlusAdd["Custom"].gotoAndStop(2);
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function linkCheck(param1:String, param2:int, param3:int) : void
      {
         if(MenuClass.colorSelectNum == 0)
         {
            smallCheck2(0,param1,param2,param3);
            linkCustomCheck(param1,1);
            linkCustomCheck(param1,2);
         }
         else
         {
            smallCheck2(MenuClass.colorSelectNum,param1,param2,param3);
         }
      }
      
      public static function linkCustomCheck(param1:String, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc8_:int = 0;
         tabNameSet();
         new Tab_TabNameCheck(MenuClass._nowTabName);
         var _loc3_:String = Tab_TabNameCheck.headerName;
         var _loc4_:int = Tab_TabNameCheck.targetJ;
         var _loc5_:String = MenuClass.tabData[_loc3_][_loc4_][2]["_color"];
         var _loc7_:Boolean = true;
         if(_loc5_ == "chara" || _loc5_ == "charaPlus")
         {
            _loc6_ = MenuClass._nowCharaNum;
         }
         else if(_loc5_ == "system" || _loc5_ == "systemPlus")
         {
            _loc6_ = 0;
            _loc7_ = false;
         }
         try
         {
            if(MenuClass._nowTargetMode == "All" && _loc7_)
            {
               _loc8_ = 0;
               for(; _loc8_ <= MenuClass._characterNum; _loc8_++)
               {
                  try
                  {
                     anotherMenuNumFc(_loc8_);
                     if(Dress_data.DressCharaData[_loc8_][tabNamePlus][anotherMenuNum]["_color" + param2][1] == 2)
                     {
                        if(param1.length >= 4)
                        {
                           new ColorMake(param1);
                           smallCheck2(param2,ColorMake.colorStr[Dress_data.DressData[tabNamePlus][anotherMenuNum]["_color" + param2][2] - 1],anotherMenuNum,_loc8_);
                        }
                        else
                        {
                           smallCheck2(param2,param1,anotherMenuNum,_loc8_);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc8_ = 0;
               for(; _loc8_ <= MenuClass._characterNum; _loc8_++)
               {
                  if(MenuClass._nowSelectChara[_loc8_])
                  {
                     try
                     {
                        anotherMenuNumFc(_loc8_);
                        if(Dress_data.DressCharaData[_loc8_][tabNamePlus][anotherMenuNum]["_color" + param2][1] == 2)
                        {
                           if(param1.length >= 4)
                           {
                              new ColorMake(param1);
                              smallCheck2(param2,ColorMake.colorStr[Dress_data.DressData[tabNamePlus][anotherMenuNum]["_color" + param2][2] - 1],anotherMenuNum,_loc8_);
                           }
                           else
                           {
                              smallCheck2(param2,param1,anotherMenuNum,_loc8_);
                           }
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
            }
            else if(Dress_data.DressCharaData[_loc6_][tabNamePlus][MenuClass.colorMenuNum]["_color" + param2][1] == 2)
            {
               if(param1.length >= 4)
               {
                  new ColorMake(param1);
                  smallCheck2(param2,ColorMake.colorStr[Dress_data.DressData[tabNamePlus][MenuClass.colorMenuNum]["_color" + param2][2] - 1],MenuClass.colorMenuNum,_loc6_);
               }
               else
               {
                  smallCheck2(param2,param1,MenuClass.colorMenuNum,_loc6_);
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function anotherMenuNumFc(param1:int) : void
      {
         var targetJ:int = 0;
         var charaNum:int = param1;
         tabNameSet();
         try
         {
            if(Dress_data.DressData[tabNamePlus].length == 1)
            {
               anotherMenuNum = 0;
            }
            else
            {
               new Tab_TabNameCheck(MenuClass._nowTabName);
               targetJ = Tab_TabNameCheck.targetJ;
               if(MenuClass.tabData[MenuClass._nowHeaderName][targetJ][2]["_color"] == "chara" || MenuClass.tabData[MenuClass._nowHeaderName][targetJ][2]["_color"] == "charaPlus")
               {
                  anotherMenuNum = MenuClass.charaData[charaNum][tabNamePlus]["_menu"];
               }
               else if(MenuClass.tabData[MenuClass._nowHeaderName][targetJ][2]["_color"] == "system" || MenuClass.tabData[MenuClass._nowHeaderName][targetJ][2]["_color"] == "systemPlus")
               {
                  anotherMenuNum = MenuClass.systemData[tabNamePlus]["_menu"];
               }
            }
         }
         catch(myError:Error)
         {
            anotherMenuNum = 0;
         }
      }
      
      public static function LinkMouseDown(param1:MouseEvent) : void
      {
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:String = null;
         tabNameSet();
         new Stage_MoveCheckClass();
         new Tab_TabNameCheck(MenuClass._nowTabName);
         var _loc2_:String = Tab_TabNameCheck.headerName;
         var _loc3_:int = Tab_TabNameCheck.targetJ;
         var _loc4_:String = MenuClass.tabData[_loc2_][_loc3_][2]["_color"];
         var _loc6_:Boolean = true;
         if(_loc4_ == "chara" || _loc4_ == "charaPlus")
         {
            _loc5_ = MenuClass._nowCharaNum;
            try
            {
               new Tab_VC(_loc2_,_loc3_,tabNamePlus);
               if(MenuClass._nowTargetMode == "All")
               {
                  _loc7_ = 0;
                  while(_loc7_ <= MenuClass._characterNum)
                  {
                     MenuClass.charaData[_loc7_][tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
                     _loc7_++;
                  }
               }
               else if(MenuClass._nowTargetMode == "SelectPlus")
               {
                  _loc7_ = 0;
                  while(_loc7_ <= MenuClass._characterNum)
                  {
                     if(MenuClass._nowSelectChara[_loc7_])
                     {
                        MenuClass.charaData[_loc7_][tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
                     }
                     _loc7_++;
                  }
               }
               else
               {
                  MenuClass.charaData[_loc5_][tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(_loc4_ == "system" || _loc4_ == "systemPlus")
         {
            _loc5_ = 0;
            _loc6_ = false;
            try
            {
               new Tab_VC(_loc2_,_loc3_,tabNamePlus);
               MenuClass.systemData[tabNamePlus]["_visible"][Tab_VC.menuNum] = true;
            }
            catch(myError:Error)
            {
            }
         }
         if(Dress_data.DressCharaData[_loc5_][tabNamePlus][MenuClass.colorMenuNum]["_color" + MenuClass.colorSelectNum][1] == 2)
         {
            if(MenuClass._nowTargetMode == "All" && _loc6_)
            {
               _loc7_ = 0;
               while(_loc7_ <= MenuClass._characterNum)
               {
                  anotherMenuNumFc(_loc7_);
                  LinkKaijyo(_loc7_,anotherMenuNum);
                  _loc7_++;
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc7_ = 0;
               while(_loc7_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc7_])
                  {
                     anotherMenuNumFc(_loc7_);
                     LinkKaijyo(_loc7_,anotherMenuNum);
                  }
                  _loc7_++;
               }
            }
            else
            {
               LinkKaijyo(_loc5_,MenuClass.colorMenuNum);
            }
         }
         else
         {
            MenuClass.colorPlusAdd["link"].gotoAndStop(2);
            MenuClass.tabMenuAdd[MenuClass._nowTabName]["color" + MenuClass.colorSelectNum].gotoAndStop(3);
            if(MenuClass._nowTargetMode == "All" && _loc6_)
            {
               _loc7_ = 0;
               for(; _loc7_ <= MenuClass._characterNum; _loc7_++)
               {
                  try
                  {
                     anotherMenuNumFc(_loc7_);
                     Dress_data.DressCharaData[_loc7_][tabNamePlus][anotherMenuNum]["_color" + MenuClass.colorSelectNum][1] = 2;
                     if(MenuClass.colorSelectNum == 0)
                     {
                        try
                        {
                           _loc9_ = Dress_data.DressData[tabNamePlus][0]["_color0"][4];
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           _loc9_ = Dress_data.DressData[tabNamePlus][1]["_color0"][4];
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc8_ = Dress_data.DressCharaData[_loc7_][_loc9_][0]["_color0"][0];
                     }
                     else
                     {
                        _loc8_ = Dress_data.DressCharaData[_loc7_][tabNamePlus][anotherMenuNum]["_color0"][0];
                     }
                     new ColorMake(_loc8_);
                     if(_loc8_.length >= 4)
                     {
                        smallCheck2(MenuClass.colorSelectNum,ColorMake.colorStr[Dress_data.DressData[tabNamePlus][anotherMenuNum]["_color" + MenuClass.colorSelectNum][2] - 1],anotherMenuNum,_loc7_);
                     }
                     else
                     {
                        smallCheck2(MenuClass.colorSelectNum,_loc8_,anotherMenuNum,_loc7_);
                        if(_loc7_ == MenuClass._nowCharaNum)
                        {
                           MenuClass.colorPlusAdd["sc" + _loc8_].gotoAndStop(3);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc7_ = 0;
               for(; _loc7_ <= MenuClass._characterNum; _loc7_++)
               {
                  if(MenuClass._nowSelectChara[_loc7_])
                  {
                     try
                     {
                        anotherMenuNumFc(_loc7_);
                        Dress_data.DressCharaData[_loc7_][tabNamePlus][anotherMenuNum]["_color" + MenuClass.colorSelectNum][1] = 2;
                        if(MenuClass.colorSelectNum == 0)
                        {
                           try
                           {
                              _loc9_ = Dress_data.DressData[tabNamePlus][0]["_color0"][4];
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              _loc9_ = Dress_data.DressData[tabNamePlus][1]["_color0"][4];
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc8_ = Dress_data.DressCharaData[_loc7_][_loc9_][0]["_color0"][0];
                        }
                        else
                        {
                           _loc8_ = Dress_data.DressCharaData[_loc7_][tabNamePlus][anotherMenuNum]["_color0"][0];
                        }
                        new ColorMake(_loc8_);
                        if(_loc8_.length >= 4)
                        {
                           smallCheck2(MenuClass.colorSelectNum,ColorMake.colorStr[Dress_data.DressData[tabNamePlus][anotherMenuNum]["_color" + MenuClass.colorSelectNum][2] - 1],anotherMenuNum,_loc7_);
                        }
                        else
                        {
                           smallCheck2(MenuClass.colorSelectNum,_loc8_,anotherMenuNum,_loc7_);
                           if(_loc7_ == MenuClass._nowCharaNum)
                           {
                              MenuClass.colorPlusAdd["sc" + _loc8_].gotoAndStop(3);
                           }
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
            }
            else
            {
               Dress_data.DressCharaData[_loc5_][tabNamePlus][MenuClass.colorMenuNum]["_color" + MenuClass.colorSelectNum][1] = 2;
               if(MenuClass.colorSelectNum == 0)
               {
                  try
                  {
                     _loc9_ = Dress_data.DressData[tabNamePlus][0]["_color0"][4];
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc9_ = Dress_data.DressData[tabNamePlus][1]["_color0"][4];
                  }
                  catch(myError:Error)
                  {
                  }
                  _loc8_ = Dress_data.DressCharaData[_loc5_][_loc9_][0]["_color0"][0];
               }
               else
               {
                  _loc8_ = Dress_data.DressCharaData[_loc5_][tabNamePlus][MenuClass.colorMenuNum]["_color0"][0];
               }
               new ColorMake(_loc8_);
               if(_loc8_.length >= 4)
               {
                  smallCheck2(MenuClass.colorSelectNum,ColorMake.colorStr[Dress_data.DressData[tabNamePlus][MenuClass.colorMenuNum]["_color" + MenuClass.colorSelectNum][2] - 1],MenuClass.colorMenuNum,_loc5_);
               }
               else
               {
                  smallCheck2(MenuClass.colorSelectNum,_loc8_,MenuClass.colorMenuNum,_loc5_);
                  MenuClass.colorPlusAdd["sc" + _loc8_].gotoAndStop(3);
               }
            }
            if(MenuClass.colorSelectNum == 0)
            {
               linkCustomCheck(_loc8_,1);
               linkCustomCheck(_loc8_,2);
            }
            charaSet();
            new Tab_SetClass();
         }
      }
      
      public static function smallCheck2(param1:int, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         MenuClass.colorPaletteCheck[param1] = 1;
         tabNameSet();
         try
         {
            new Tab_TabNameCheck(MenuClass._nowTabName);
            _loc5_ = Tab_TabNameCheck.targetJ;
            if(MenuClass.tabData[MenuClass._nowHeaderName][_loc5_][2]["_color"] == "chara" || MenuClass.tabData[MenuClass._nowHeaderName][_loc5_][2]["_color"] == "charaPlus")
            {
               colorCustomCheck(MenuClass.charaData[param4],param1,param4);
               MenuClass.charaData[param4][tabNamePlus]["_color" + param1][menuNum] = param2;
               Dress_data.DressCharaData[param4][tabNamePlus][param3]["_color" + param1][0] = param2;
               if(MenuClass.systemData["EExpert"]["_check"])
               {
                  if(MenuClass.tabData[MenuClass._nowHeaderName][_loc5_][2]["_easyLink"] != undefined)
                  {
                     MenuClass.charaData[param4][MenuClass.tabData[MenuClass._nowHeaderName][_loc5_][2]["_easyLink"]]["_color" + param1][menuNum] = param2;
                     Dress_data.DressCharaData[param4][MenuClass.tabData[MenuClass._nowHeaderName][_loc5_][2]["_easyLink"]][param3]["_color" + param1][0] = param2;
                     MenuClass.charaData[param4][MenuClass.tabData[MenuClass._nowHeaderName][_loc5_][2]["_easyLink"]]["_visible"][0] = true;
                     new SetClass(MenuClass._nowCharaNum,MenuClass.tabData[MenuClass._nowHeaderName][_loc5_][2]["_easyLink"],"tab");
                  }
               }
            }
            else if(MenuClass.tabData[MenuClass._nowHeaderName][_loc5_][2]["_color"] == "system" || MenuClass.tabData[MenuClass._nowHeaderName][_loc5_][2]["_color"] == "systemPlus")
            {
               colorCustomCheck(MenuClass.systemData,param1,0);
               MenuClass.systemData[tabNamePlus]["_color" + param1][menuNum] = param2;
               Dress_data.DressCharaData[0][tabNamePlus][MenuClass.colorMenuNum]["_color" + param1][0] = param2;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function colorCustomCheck(param1:Object, param2:int, param3:int) : void
      {
         var menuNum2:int = 0;
         var n:int = 0;
         var obj:Object = param1;
         var num:int = param2;
         var charaNum:int = param3;
         tabNameSet();
         if(Dress_data.DressData[tabNamePlus].length == 1)
         {
            menuNum2 = 0;
         }
         else
         {
            menuNum2 = obj[tabNamePlus]["_menu"];
         }
         try
         {
            if(obj[tabNamePlus]["_visible"].length > 1)
            {
               menuNum = obj[tabNamePlus]["_menu"];
            }
            else
            {
               menuNum = 0;
            }
         }
         catch(myError:Error)
         {
            menuNum = 0;
         }
         var colorStrChange:String = String(obj[tabNamePlus]["_color" + num][menuNum]);
         if(colorStrChange.length >= 4)
         {
            if(Dress_data.DressCharaData[charaNum][tabNamePlus][menuNum2]["_color" + num][1] >= 1)
            {
               try
               {
                  MenuClass.colorPlusAdd["Custom"].gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               n = Color_data.ColorData[Dress_data.DressData[tabNamePlus][menuNum2]["_color" + num][0]].length - 1;
               try
               {
                  if(n >= 39)
                  {
                     MenuClass.colorPlusAdd["Custom"].gotoAndStop(3);
                  }
                  else
                  {
                     MenuClass.colorPlusAdd["Custom"].gotoAndStop(5);
                  }
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
               MenuClass.colorPlusAdd["sc" + colorStrChange].gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
         }
      }
   }
}
