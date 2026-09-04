package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class Tab_CopyTargetClass
   {
      
      public static var targetMC:MovieClip;
      
      public static var RibonPlusNum:Object = {
         "RibonPlus":true,
         "BeltPlus":true,
         "MarkPlus":true,
         "CharaLoadPlus":true,
         "HairExPlus":true
      };
      
      public static var txtFieldmenuNum:Number;
      
      public static var FreeHukidashiPlusNum:Number;
      
      public static var FreeHandPlusNum:Number;
      
      public static var FreeRibonPlusNum:Number;
      
      public static var FreeBeltPlusNum:Number;
      
      public static var FreeFlagPlusNum:Number;
      
      public static var FreeChairPlusNum:Number;
      
      public static var LoadPlusNum:Number;
      
      public static var charaCopyData:Array = new Array("nashi");
      
      public static var charaRibonCopyData:Array = new Array("nashi");
      
      public static var systemCopyData:Object = "nashi";
      
      public static var dressCopyData:Array = new Array("nashi");
      
      public static var dressRibonCopyData:Array = new Array();
      
      public static var menuCustomRibonCopyNum:Array = new Array();
      
      public static var menuCustomCopyNum:Array = new Array();
       
      
      public function Tab_CopyTargetClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String, param3:String) : void
      {
         param1.copyTarget.headerName = param2;
         param1.copyTarget.tabName = param3;
         param1.copyTarget.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.copyTarget.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.copyTarget.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:String = null;
         var _loc13_:* = null;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(param1.currentTarget.tabName == "SystemCopy")
         {
            _loc3_ = true;
            if(systemCopyData == "nashi")
            {
               systemCopyData = clone(MenuClass.systemData);
            }
         }
         else if(param1.currentTarget.headerName != "Story")
         {
            if(param1.currentTarget.headerName == "SystemOption" || param1.currentTarget.headerName == "Character")
            {
               _loc2_ = true;
               _loc3_ = true;
            }
            else if(param1.currentTarget.tabName == "CopyRibon")
            {
               if(charaRibonCopyData[0] == "nashi")
               {
                  charaRibonCopyData[0] = clone(MenuClass.charaData[0]);
                  dressRibonCopyData[0] = clone(Dress_data.DressCharaData[0]);
                  menuCustomRibonCopyNum = clone(Dress_data.menuCustomNum);
               }
            }
            else
            {
               _loc2_ = true;
               _loc3_ = true;
            }
         }
         if(_loc2_)
         {
            if(charaCopyData[0] == "nashi")
            {
               charaCopyData[0] = clone(MenuClass.charaData[0]);
            }
         }
         if(_loc3_)
         {
            if(dressCopyData[0] == "nashi")
            {
               dressCopyData[0] = clone(Dress_data.DressCharaData[0]);
               menuCustomCopyNum = clone(Dress_data.menuCustomNum);
            }
         }
         targetMC = param1.currentTarget.parent as MovieClip;
         targetMC.pasteTarget.gotoAndStop(1);
         if(param1.currentTarget.tabName == "CopyRibon")
         {
            MenuClass.copyFragRibonData[param1.currentTarget.headerName] = true;
         }
         else
         {
            MenuClass.copyFragData[param1.currentTarget.headerName] = true;
         }
         targetMC.copyTarget.gotoAndStop(2);
         targetMC.copyTarget.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         if(param1.currentTarget.tabName == "SystemCopy")
         {
            for(_loc6_ in MenuClass.tabData[param1.currentTarget.headerName])
            {
               _loc8_ = false;
               _loc4_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][0];
               if((_loc9_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][2]["_menu"]) == "systemPlus")
               {
                  _loc8_ = true;
               }
               if((_loc9_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][2]["_meter"]) == "systemPlus")
               {
                  _loc8_ = true;
               }
               if((_loc9_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][2]["_check"]) == "systemPlus")
               {
                  _loc8_ = true;
               }
               if((_loc9_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][2]["_LoadSwf"]) == "systemPlus")
               {
                  _loc8_ = true;
               }
               if(_loc8_)
               {
                  _loc10_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][2]["_data"];
                  _loc12_ = _loc4_ + MenuClass.systemData[_loc10_]["_menu"];
                  dressCopyData[0][_loc4_] = clone(Dress_data.DressCharaData[0][_loc12_]);
                  systemCopyData[_loc4_] = clone(MenuClass.systemData[_loc12_]);
                  try
                  {
                     menuCustomCopyNum[0][_loc4_] = clone(Dress_data.menuCustomNum[0][_loc12_]);
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  dressCopyData[0][_loc4_] = clone(Dress_data.DressCharaData[0][_loc4_]);
                  systemCopyData[_loc4_] = clone(MenuClass.systemData[_loc4_]);
                  try
                  {
                     menuCustomCopyNum[0][_loc4_] = clone(Dress_data.menuCustomNum[0][_loc4_]);
                  }
                  catch(myError:Error)
                  {
                  }
               }
               if(_loc4_ == "txtFieldmenu")
               {
                  txtFieldmenuNum = MenuClass.systemData["txtFieldmenu"]["_menu"];
               }
               else if(_loc4_ == "FreeHukidashiPlus")
               {
                  FreeHukidashiPlusNum = MenuClass.systemData["FreeHukidashiPlus"]["_menu"];
               }
               else if(_loc4_ == "FreeHandPlus")
               {
                  FreeHandPlusNum = MenuClass.systemData["FreeHandPlus"]["_menu"];
               }
               else if(_loc4_ == "FreeRibonPlus")
               {
                  FreeRibonPlusNum = MenuClass.systemData["FreeRibonPlus"]["_menu"];
               }
               else if(_loc4_ == "FreeBeltPlus")
               {
                  FreeBeltPlusNum = MenuClass.systemData["FreeBeltPlus"]["_menu"];
               }
               else if(_loc4_ == "FreeFlagPlus")
               {
                  FreeFlagPlusNum = MenuClass.systemData["FreeFlagPlus"]["_menu"];
               }
               else if(_loc4_ == "FreeChairPlus")
               {
                  FreeChairPlusNum = MenuClass.systemData["FreeChairPlus"]["_menu"];
               }
               else if(_loc4_ == "LoadPlus")
               {
                  LoadPlusNum = MenuClass.systemData["LoadPlus"]["_menu"];
               }
            }
            if(param1.currentTarget.headerName == "Tool")
            {
               try
               {
                  if(MenuClass.kirinukiWaku)
                  {
                     MenuClass.CopyPhotoSize = clone(MenuClass.photoSize);
                  }
                  else
                  {
                     MenuClass.CopyPhotoSize = null;
                  }
               }
               catch(myError:Error)
               {
               }
            }
         }
         else if(param1.currentTarget.headerName == "Story")
         {
            MenuClass.StoryTimeLineCopy = clone(MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]]);
         }
         else if(param1.currentTarget.headerName == "SystemOption" || param1.currentTarget.headerName == "Character")
         {
            try
            {
               MenuClass.tabMenuAdd["CopyAllCharacter"].pasteTarget.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               MenuClass.tabMenuAdd["CopyAllTool"].pasteTarget.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            MenuClass.copyFragData["Character"] = true;
            MenuClass.copyFragData["SystemOption"] = true;
            dressCopyData[0] = clone(Dress_data.DressCharaData[MenuClass._nowCharaNum]);
            charaCopyData[0] = clone(MenuClass.charaData[MenuClass._nowCharaNum]);
            try
            {
               menuCustomCopyNum[0] = clone(Dress_data.menuCustomNum[MenuClass._nowCharaNum]);
            }
            catch(myError:Error)
            {
            }
         }
         else if(param1.currentTarget.tabName == "CopyRibon")
         {
            for(_loc6_ in MenuClass.tabData[param1.currentTarget.headerName])
            {
               _loc4_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][0];
               if((_loc10_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][2]["_data"]) != null)
               {
                  RibonPlusNum[_loc10_] = MenuClass.charaData[MenuClass._nowCharaNum][_loc10_]["_visible"][MenuClass.systemData[_loc10_]["_menu"]];
                  _loc12_ = _loc4_ + MenuClass.systemData[_loc10_]["_menu"];
                  _loc13_ = _loc4_ + "0";
                  dressRibonCopyData[0][_loc13_] = clone(Dress_data.DressCharaData[MenuClass._nowCharaNum][_loc12_]);
                  charaRibonCopyData[0][_loc13_] = clone(MenuClass.charaData[MenuClass._nowCharaNum][_loc12_]);
                  try
                  {
                     menuCustomRibonCopyNum[0][_loc13_] = clone(Dress_data.menuCustomNum[MenuClass._nowCharaNum][_loc12_]);
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
         }
         else
         {
            for(_loc6_ in MenuClass.tabData[param1.currentTarget.headerName])
            {
               _loc8_ = false;
               _loc4_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][0];
               if((_loc9_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][2]["_menu"]) == "charaPlus")
               {
                  _loc8_ = true;
               }
               if((_loc9_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][2]["_meter"]) == "charaPlus")
               {
                  _loc8_ = true;
               }
               if(_loc8_)
               {
                  _loc10_ = MenuClass.tabData[param1.currentTarget.headerName][_loc6_][2]["_data"];
                  _loc11_ = MenuClass.charaData[MenuClass._nowCharaNum][_loc10_]["_visible"].length - 1;
                  _loc5_ = 0;
                  while(_loc5_ <= _loc11_)
                  {
                     _loc12_ = _loc4_ + _loc5_;
                     dressCopyData[0][_loc12_] = clone(Dress_data.DressCharaData[MenuClass._nowCharaNum][_loc12_]);
                     charaCopyData[0][_loc12_] = clone(MenuClass.charaData[MenuClass._nowCharaNum][_loc12_]);
                     try
                     {
                        menuCustomCopyNum[0][_loc12_] = clone(Dress_data.menuCustomNum[MenuClass._nowCharaNum][_loc12_]);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
               }
               else
               {
                  dressCopyData[0][_loc4_] = clone(Dress_data.DressCharaData[MenuClass._nowCharaNum][_loc4_]);
                  charaCopyData[0][_loc4_] = clone(MenuClass.charaData[MenuClass._nowCharaNum][_loc4_]);
                  try
                  {
                     menuCustomCopyNum[0][_loc4_] = clone(Dress_data.menuCustomNum[MenuClass._nowCharaNum][_loc4_]);
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         targetMC.copyTarget.gotoAndStop(1);
         targetMC.copyTarget.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
