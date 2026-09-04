package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class Tab_UpDownTargetClass
   {
      
      public static var targetMC:MovieClip;
      
      public static var RibonPlusNum:Boolean;
      
      public static var charaRibonCopyData:Array = new Array("nashi");
      
      public static var systemCopyData:Object = "nashi";
      
      public static var dressRibonCopyData:Array = new Array();
      
      public static var menuCustomRibonCopyNum:Array = new Array();
       
      
      public function Tab_UpDownTargetClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String, param3:String) : void
      {
         param1.upTarget.headerName = param2;
         param1.upTarget.tabName = param3;
         param1.upTarget.addEventListener(MouseEvent.MOUSE_DOWN,upMouseDown);
         param1.upTarget.buttonMode = true;
         param1.downTarget.headerName = param2;
         param1.downTarget.tabName = param3;
         param1.downTarget.addEventListener(MouseEvent.MOUSE_DOWN,downMouseDown);
         param1.downTarget.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.upTarget.removeEventListener(MouseEvent.MOUSE_DOWN,upMouseDown);
         param1.downTarget.removeEventListener(MouseEvent.MOUSE_DOWN,downMouseDown);
      }
      
      public static function upMouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget.parent as MovieClip;
         targetMC.upTarget.gotoAndStop(2);
         targetMC.upTarget.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         btnFc(param1.currentTarget.tabName,param1.currentTarget.headerName,1);
      }
      
      public static function downMouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget.parent as MovieClip;
         targetMC.downTarget.gotoAndStop(2);
         targetMC.downTarget.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         btnFc(param1.currentTarget.tabName,param1.currentTarget.headerName,-1);
      }
      
      public static function btnFc(param1:String, param2:String, param3:Number) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc11_:Number = NaN;
         var _loc10_:Boolean = true;
         if(param1 == "SystemUpDown")
         {
            for(_loc6_ in MenuClass.tabData[param2])
            {
               _loc4_ = MenuClass.tabData[param2][_loc6_][0];
               if((_loc7_ = MenuClass.tabData[param2][_loc6_][2]["_data"]) != null)
               {
                  if((_loc11_ = Number(MenuClass.systemData[_loc7_]["_menu"]) + param3) == -1)
                  {
                     _loc11_ = MenuClass.systemData[_loc7_]["_visible"].length - 1;
                  }
                  else if(_loc11_ == MenuClass.systemData[_loc7_]["_visible"].length)
                  {
                     _loc11_ = 0;
                  }
                  if(_loc10_)
                  {
                     RibonPlusNum = MenuClass.systemData[_loc7_]["_visible"][_loc11_];
                     MenuClass.systemData[_loc7_]["_visible"][_loc11_] = MenuClass.systemData[_loc7_]["_visible"][MenuClass.systemData[_loc7_]["_menu"]];
                     MenuClass.systemData[_loc7_]["_visible"][MenuClass.systemData[_loc7_]["_menu"]] = RibonPlusNum;
                     _loc10_ = false;
                  }
                  _loc8_ = _loc4_ + MenuClass.systemData[_loc7_]["_menu"];
                  _loc9_ = _loc4_ + _loc11_;
                  dressRibonCopyData[0] = clone(Dress_data.DressCharaData[0][_loc9_]);
                  charaRibonCopyData[0] = clone(MenuClass.systemData[_loc9_]);
                  try
                  {
                     menuCustomRibonCopyNum[0] = clone(Dress_data.menuCustomNum[0][_loc9_]);
                  }
                  catch(myError:Error)
                  {
                  }
                  Dress_data.DressCharaData[0][_loc9_] = clone(Dress_data.DressCharaData[0][_loc8_]);
                  MenuClass.systemData[_loc9_] = clone(MenuClass.systemData[_loc8_]);
                  try
                  {
                     Dress_data.menuCustomNum[0][_loc9_] = clone(Dress_data.menuCustomNum[0][_loc8_]);
                  }
                  catch(myError:Error)
                  {
                  }
                  Dress_data.DressCharaData[0][_loc8_] = clone(dressRibonCopyData[0]);
                  MenuClass.systemData[_loc8_] = clone(charaRibonCopyData[0]);
                  try
                  {
                     Dress_data.menuCustomNum[0][_loc8_] = clone(menuCustomRibonCopyNum[0]);
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            MenuClass.systemData[_loc7_]["_menu"] = _loc11_;
            if(_loc7_ == "LoadPlus")
            {
               _loc5_ = 0;
               while(_loc5_ <= 98)
               {
                  new Tab_LoadURL("load",_loc5_);
                  _loc5_++;
               }
            }
            else if(_loc7_ == "txtFieldmenu")
            {
               _loc5_ = 0;
               while(_loc5_ <= 9)
               {
                  SystemText2.loadFc("txtFieldmenu",_loc5_,"menu");
                  _loc5_++;
               }
            }
            else
            {
               new SetClass(0,_loc7_,"move");
            }
         }
         else
         {
            for(_loc6_ in MenuClass.tabData[param2])
            {
               _loc4_ = MenuClass.tabData[param2][_loc6_][0];
               if((_loc7_ = MenuClass.tabData[param2][_loc6_][2]["_data"]) != null)
               {
                  if((_loc11_ = Number(MenuClass.systemData[_loc7_]["_menu"]) + param3) == -1)
                  {
                     _loc11_ = MenuClass.charaData[MenuClass._nowCharaNum][_loc7_]["_visible"].length - 1;
                  }
                  else if(_loc11_ == MenuClass.charaData[MenuClass._nowCharaNum][_loc7_]["_visible"].length)
                  {
                     _loc11_ = 0;
                  }
                  if(_loc10_)
                  {
                     RibonPlusNum = MenuClass.charaData[MenuClass._nowCharaNum][_loc7_]["_visible"][_loc11_];
                     MenuClass.charaData[MenuClass._nowCharaNum][_loc7_]["_visible"][_loc11_] = MenuClass.charaData[MenuClass._nowCharaNum][_loc7_]["_visible"][MenuClass.systemData[_loc7_]["_menu"]];
                     MenuClass.charaData[MenuClass._nowCharaNum][_loc7_]["_visible"][MenuClass.systemData[_loc7_]["_menu"]] = RibonPlusNum;
                     _loc10_ = false;
                  }
                  _loc8_ = _loc4_ + MenuClass.systemData[_loc7_]["_menu"];
                  _loc9_ = _loc4_ + _loc11_;
                  dressRibonCopyData[0] = clone(Dress_data.DressCharaData[MenuClass._nowCharaNum][_loc9_]);
                  charaRibonCopyData[0] = clone(MenuClass.charaData[MenuClass._nowCharaNum][_loc9_]);
                  try
                  {
                     menuCustomRibonCopyNum[0] = clone(Dress_data.menuCustomNum[MenuClass._nowCharaNum][_loc9_]);
                  }
                  catch(myError:Error)
                  {
                  }
                  Dress_data.DressCharaData[MenuClass._nowCharaNum][_loc9_] = clone(Dress_data.DressCharaData[MenuClass._nowCharaNum][_loc8_]);
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc9_] = clone(MenuClass.charaData[MenuClass._nowCharaNum][_loc8_]);
                  try
                  {
                     Dress_data.menuCustomNum[MenuClass._nowCharaNum][_loc9_] = clone(Dress_data.menuCustomNum[MenuClass._nowCharaNum][_loc8_]);
                  }
                  catch(myError:Error)
                  {
                  }
                  Dress_data.DressCharaData[MenuClass._nowCharaNum][_loc8_] = clone(dressRibonCopyData[0]);
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc8_] = clone(charaRibonCopyData[0]);
                  try
                  {
                     Dress_data.menuCustomNum[MenuClass._nowCharaNum][_loc8_] = clone(menuCustomRibonCopyNum[0]);
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            MenuClass.systemData[_loc7_]["_menu"] = _loc11_;
            if(_loc7_ == "CharaLoadPlus")
            {
               _loc5_ = 0;
               while(_loc5_ <= Main.hukusuuNum)
               {
                  if(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadPlus"]["_visible"][_loc5_] && MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadAdd" + _loc5_]["_name"] != null)
                  {
                     new Tab_LoadURL2("load",_loc5_,MenuClass._nowCharaNum);
                  }
                  else
                  {
                     MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadPlus"]["_visible"][_loc5_] = false;
                     try
                     {
                        MenuClass.charaAdd[MenuClass._nowCharaNum]["loadObj" + _loc5_].visible = false;
                     }
                     catch(e:Error)
                     {
                     }
                  }
                  _loc5_++;
               }
            }
            else
            {
               new SetClass(MenuClass._nowCharaNum,_loc7_,"move");
            }
         }
         new Tab_SetClass();
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
         param1.currentTarget.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
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
