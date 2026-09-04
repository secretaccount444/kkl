package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import parameter.Dress_data;
   
   public class Tab_MenuCheckClass
   {
      
      public static var nowbtn:MovieClip;
      
      public static var tabName:String;
      
      public static var targetJ:int;
      
      public static var headerName:String;
       
      
      public function Tab_MenuCheckClass()
      {
         super();
      }
      
      public static function setFc(param1:String, param2:int, param3:String) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         MenuClass.tabMenuAdd[param1].MenuCheck.tabName = param1;
         MenuClass.tabMenuAdd[param1].MenuCheck.headerName = param3;
         MenuClass.tabMenuAdd[param1].MenuCheck.targetJ = param2;
         MenuClass.tabMenuAdd[param1].MenuCheck.btn0.buttonMode = true;
         MenuClass.tabMenuAdd[param1].MenuCheck.btn0.addEventListener(MouseEvent.MOUSE_DOWN,btn0Click);
         MenuClass.tabMenuAdd[param1].MenuCheck.btn1.buttonMode = true;
         MenuClass.tabMenuAdd[param1].MenuCheck.btn1.addEventListener(MouseEvent.MOUSE_DOWN,btn1Click);
         tabName = param1;
         targetJ = param2;
         headerName = param3;
         try
         {
            MenuClass.tabMenuAdd[param1].MenuCheck.btn2.buttonMode = true;
            MenuClass.tabMenuAdd[param1].MenuCheck.btn2.addEventListener(MouseEvent.MOUSE_DOWN,btn2Click);
         }
         catch(myError:Error)
         {
         }
         var _loc5_:String;
         if((_loc5_ = MenuClass.tabData[headerName][targetJ][2]["_menu"]) == "charaPlus" || _loc5_ == "systemPlus")
         {
            _loc6_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
            _loc7_ = MenuClass.systemData[_loc6_]["_menu"];
            _loc4_ = tabName + _loc7_;
         }
         else
         {
            _loc4_ = tabName;
         }
         try
         {
            MenuClass.tabMenuAdd[tabName].MenuCheck["btn" + MenuClass.systemData[_loc4_]["_menu"]].gotoAndStop(2);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function deleteFc(param1:String) : void
      {
         MenuClass.tabMenuAdd[param1].MenuCheck.btn0.removeEventListener(MouseEvent.MOUSE_DOWN,btn0Click);
         MenuClass.tabMenuAdd[param1].MenuCheck.btn1.removeEventListener(MouseEvent.MOUSE_DOWN,btn1Click);
         try
         {
            MenuClass.tabMenuAdd[param1].MenuCheck.btn2.removeEventListener(MouseEvent.MOUSE_DOWN,btn1Click);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function btn0Click(param1:MouseEvent) : void
      {
         tabName = param1.currentTarget.parent.tabName;
         targetJ = param1.currentTarget.parent.targetJ;
         headerName = param1.currentTarget.parent.headerName;
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd[tabName].MenuCheck.btn0.gotoAndStop(2);
         MenuClass.tabMenuAdd[tabName].MenuCheck.btn1.gotoAndStop(1);
         try
         {
            MenuClass.tabMenuAdd[tabName].MenuCheck.btn2.gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         nowbtn = param1.currentTarget as MovieClip;
         MenuAction(0,tabName);
      }
      
      public static function btn1Click(param1:MouseEvent) : void
      {
         tabName = param1.currentTarget.parent.tabName;
         targetJ = param1.currentTarget.parent.targetJ;
         headerName = param1.currentTarget.parent.headerName;
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd[tabName].MenuCheck.btn0.gotoAndStop(1);
         MenuClass.tabMenuAdd[tabName].MenuCheck.btn1.gotoAndStop(2);
         try
         {
            MenuClass.tabMenuAdd[tabName].MenuCheck.btn2.gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         nowbtn = param1.currentTarget as MovieClip;
         MenuAction(1,tabName);
      }
      
      public static function btn2Click(param1:MouseEvent) : void
      {
         tabName = param1.currentTarget.parent.tabName;
         targetJ = param1.currentTarget.parent.targetJ;
         headerName = param1.currentTarget.parent.headerName;
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd[tabName].MenuCheck.btn0.gotoAndStop(1);
         MenuClass.tabMenuAdd[tabName].MenuCheck.btn1.gotoAndStop(1);
         MenuClass.tabMenuAdd[tabName].MenuCheck.btn2.gotoAndStop(2);
         nowbtn = param1.currentTarget as MovieClip;
         MenuAction(2,tabName);
      }
      
      public static function MenuAction(param1:int, param2:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         MenuClass._nowTabName = param2;
         var _loc6_:String;
         if((_loc6_ = MenuClass.tabData[headerName][targetJ][2]["_menu"]) == "charaPlus" || _loc6_ == "systemPlus")
         {
            _loc8_ = MenuClass.tabData[headerName][targetJ][2]["_data"];
            _loc9_ = MenuClass.systemData[_loc8_]["_menu"];
            _loc5_ = param2 + _loc9_;
         }
         else
         {
            _loc5_ = param2;
         }
         var _loc7_:Boolean = false;
         try
         {
            if(Dress_data.menuCustom[param2][0] >= 0)
            {
               _loc7_ = true;
            }
         }
         catch(myError:Error)
         {
         }
         if(_loc6_ == "chara" || _loc6_ == "charaPlus")
         {
            if(_loc7_)
            {
               Dress_data.menuCustomNum[MenuClass._nowCharaNum][param2] = param1;
               MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"] = Dress_data.menuCustom[param2][Dress_data.menuCustomNum[MenuClass._nowCharaNum][param2]];
            }
            else
            {
               MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"] = param1;
            }
         }
         else if(_loc6_ == "system" || _loc6_ == "systemPlus" || _loc6_ == "SelectCharacter")
         {
            if(_loc7_)
            {
               Dress_data.menuCustomNum[0][param2] = param1;
               MenuClass.systemData[_loc5_]["_menu"] = Dress_data.menuCustom[param2][Dress_data.menuCustomNum[0][param2]];
            }
            else
            {
               MenuClass.systemData[_loc5_]["_menu"] = param1;
            }
         }
         if(_loc6_ == "charaPlus")
         {
            new Tab_VC(headerName,targetJ,_loc8_);
         }
         else if(_loc6_ == "systemPlus")
         {
            new Tab_VC(headerName,targetJ,_loc5_);
         }
         else
         {
            new Tab_VC(headerName,targetJ,param2);
         }
         if(MenuClass._nowTargetMode == "All" && MenuClass.tabData[headerName][targetJ][2]["_menuTarget"] != "single")
         {
            if(_loc6_ == "chara" || _loc6_ == "charaPlus")
            {
               _loc3_ = 0;
               for(; _loc3_ <= MenuClass._characterNum; _loc3_++)
               {
                  if(MenuClass._nowCharaNum != _loc3_)
                  {
                     MenuClass.charaData[_loc3_][_loc5_]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"];
                  }
                  new Tab_MenuColorIn(headerName,targetJ,_loc5_,_loc3_);
                  if(_loc6_ == "charaPlus")
                  {
                     try
                     {
                        if(MenuClass.charaData[_loc3_][_loc8_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][_loc8_]["_visible"].length == 1)
                        {
                           MenuClass.charaData[_loc3_][_loc8_]["_visible"][Tab_VC.menuNum] = true;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else
                  {
                     try
                     {
                        if(MenuClass.charaData[_loc3_][param2]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][_loc5_]["_visible"].length == 1)
                        {
                           MenuClass.charaData[_loc3_][param2]["_visible"][Tab_VC.menuNum] = true;
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
            }
            else if(_loc6_ == "system" || _loc6_ == "systemPlus")
            {
               new Tab_MenuColorIn(headerName,targetJ,_loc5_,0);
            }
            if(param2 != "SelectCharacter")
            {
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  new SetClass(_loc3_,param2,"menu");
                  _loc3_++;
               }
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            if(_loc6_ == "chara" || _loc6_ == "charaPlus")
            {
               _loc3_ = 0;
               for(; _loc3_ <= MenuClass._characterNum; _loc3_++)
               {
                  if(MenuClass._nowSelectChara[_loc3_])
                  {
                     if(MenuClass._nowCharaNum != _loc3_)
                     {
                        MenuClass.charaData[_loc3_][_loc5_]["_menu"] = MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_menu"];
                     }
                     new Tab_MenuColorIn(headerName,targetJ,_loc5_,_loc3_);
                     if(_loc6_ == "charaPlus")
                     {
                        try
                        {
                           if(MenuClass.charaData[_loc3_][_loc8_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][_loc8_]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc3_][_loc8_]["_visible"][Tab_VC.menuNum] = true;
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else
                     {
                        try
                        {
                           if(MenuClass.charaData[_loc3_][param2]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[_loc3_][_loc5_]["_visible"].length == 1)
                           {
                              MenuClass.charaData[_loc3_][param2]["_visible"][Tab_VC.menuNum] = true;
                           }
                        }
                        catch(myError:Error)
                        {
                           continue;
                        }
                     }
                  }
               }
            }
            else if(_loc6_ == "system" || _loc6_ == "systemPlus")
            {
               new Tab_MenuColorIn(headerName,targetJ,_loc5_,0);
            }
            if(param2 != "SelectCharacter")
            {
               _loc3_ = 0;
               while(_loc3_ <= MenuClass._characterNum)
               {
                  if(MenuClass._nowSelectChara[_loc3_])
                  {
                     new SetClass(_loc3_,param2,"menu");
                  }
                  _loc3_++;
               }
            }
         }
         else if(_loc6_ != "SelectCharacter")
         {
            new Tab_MenuColorIn(headerName,targetJ,_loc5_,MenuClass._nowCharaNum);
            try
            {
               if(MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_visible"][Tab_VC.menuNum] == false && MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_visible"].length == 1)
               {
                  MenuClass.charaData[MenuClass._nowCharaNum][_loc5_]["_visible"][Tab_VC.menuNum] = true;
               }
            }
            catch(myError:Error)
            {
            }
            new SetClass(MenuClass._nowCharaNum,param2,"menu");
         }
         new Tab_SetClass();
      }
   }
}
