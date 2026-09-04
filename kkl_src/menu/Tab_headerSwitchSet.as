package menu
{
   public class Tab_headerSwitchSet
   {
       
      
      public function Tab_headerSwitchSet()
      {
         var _loc1_:int = 0;
         var _loc3_:String = null;
         super();
         var _loc2_:int = MenuClass.MY_MENUNAME.length - 1;
         try
         {
            Main.textField.y = -100;
         }
         catch(myError:Error)
         {
         }
         if(!MenuClass.hederSwitchCheck)
         {
            try
            {
               MenuClass.TimuLineSMenu.y = 575 + Main._stageResizeY;
            }
            catch(myError:Error)
            {
            }
            HeaderbtnClass.headerMenu.y = 4 + Main._stageResizeY * -1;
            _loc1_ = 0;
            while(_loc1_ <= _loc2_)
            {
               _loc3_ = MenuClass.MY_MENUNAME[_loc1_][0];
               if(_loc3_ != "StoryTool")
               {
                  MenuClass.headerAdd[_loc3_].y = 8 + Main._stageResizeY * -1;
                  MenuClass.headerAdd[_loc3_].gotoAndStop(3);
                  MenuClass.headerAdd[_loc3_].bg.shadow1.visible = true;
                  new HeaderbtnShadow(_loc3_,false);
               }
               _loc1_++;
            }
            try
            {
               MenuClass.headerAdd[MenuClass._nowHeaderName].gotoAndStop(4);
               MenuClass.headerAdd[MenuClass._nowHeaderName].bg.shadow0.visible = false;
               MenuClass.headerAdd[MenuClass._nowHeaderName].bg.shadow1.visible = false;
               new HeaderbtnShadow(MenuClass._nowHeaderName,true);
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               MenuClass.TimuLineSMenu.y = 0 + Main._stageResizeY * -1;
            }
            catch(myError:Error)
            {
            }
            HeaderbtnClass.headerMenu.y = 568 + Main._stageResizeY;
            _loc1_ = 0;
            while(_loc1_ <= _loc2_)
            {
               _loc3_ = MenuClass.MY_MENUNAME[_loc1_][0];
               MenuClass.headerAdd[_loc3_].y = 568 + Main._stageResizeY;
               MenuClass.headerAdd[_loc3_].gotoAndStop(1);
               MenuClass.headerAdd[_loc3_].bg.shadow1.visible = true;
               new HeaderbtnShadow(_loc3_,false);
               _loc1_++;
            }
            try
            {
               MenuClass.headerAdd[MenuClass._nowHeaderName].gotoAndStop(2);
               MenuClass.headerAdd[MenuClass._nowHeaderName].bg.shadow0.visible = false;
               MenuClass.headerAdd[MenuClass._nowHeaderName].bg.shadow1.visible = false;
               new HeaderbtnShadow(MenuClass._nowHeaderName,true);
            }
            catch(myError:Error)
            {
            }
         }
         new Tab_ClassSetY(MenuClass._nowHeaderName);
         try
         {
            Tab_ColorBtnSet2.customDeleteFc();
         }
         catch(myError:Error)
         {
         }
         if(MenuClass._nowHeaderName == "SystemOption")
         {
            Tab_RandomCostumOpen.toolDeleteFc();
         }
         else
         {
            Tab_RandomCostumOpen.deleteFc(MenuClass._nowHeaderName);
         }
         if(MenuClass._nowHeaderName == "CharaLoad")
         {
            try
            {
               Tab_AddCostumOpen2.deleteFc(MenuClass._nowHeaderName);
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName == "Ribon")
         {
            try
            {
               Tab_AddCostumOpen3.deleteFc(MenuClass._nowHeaderName);
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName == "HairEx")
         {
            try
            {
               Tab_AddCostumOpen4.deleteFc(MenuClass._nowHeaderName);
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName == "Loadmenu")
         {
            try
            {
               Tab_AddCostumOpen.deleteFc(MenuClass._nowHeaderName);
            }
            catch(myError:Error)
            {
            }
         }
         else if(MenuClass._nowHeaderName == "txt")
         {
            try
            {
               Tab_AddCostumOpen.deleteFc(MenuClass._nowHeaderName);
            }
            catch(myError:Error)
            {
            }
         }
      }
   }
}
