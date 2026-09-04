package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_SwfColorClass
   {
       
      
      public function Tab_SwfColorClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:int, param3:String, param4:String) : void
      {
         param1.headerName = param3;
         param1.tabName = param4;
         param1.targetJ = param2;
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseClick);
         MenuClass.PassWindowOpenCheck = false;
         try
         {
            MenuClass.ErrorWindow.submitBtn.removeEventListener(MouseEvent.MOUSE_DOWN,submitMouseDown);
            MenuClass.ErrorWindow.CancelBtn.removeEventListener(MouseEvent.MOUSE_DOWN,CancelMouseDown);
            MenuClass.ErrorWindow.visible = false;
            MenuClass.ErrorWindow.gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseClick(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         MenuClass._nowTabName = param1.currentTarget.tabName;
         new Stage_MoveCheckClass();
         try
         {
            Tab_ColorBtnSet2.customSetFc("swfColor");
            /*
            if(MenuClass._nowHeaderName == "CharaLoad")
            {
               if(Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).pass)
               {
                  _loc3_ = Main.accessObj.pass.length;
                  if(_loc3_ == 0)
                  {
                     _loc3_ = 1;
                  }
                  _loc2_ = 0;
                  while(_loc2_ < _loc3_)
                  {
                     if(Main.accessObj.pass[_loc2_] == Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).pass)
                     {
                        Tab_ColorBtnSet2.customSetFc("swfColor");
                        break;
                     }
                     if(_loc2_ == _loc3_ - 1)
                     {
                        MenuClass.ErrorWindow.gotoAndStop(8);
                        MenuClass.ErrorWindow.visible = true;
                        MenuClass.ErrorWindow.closeBtn.visible = false;
                        MenuClass.ErrorWindow.submitBtn.addEventListener(MouseEvent.MOUSE_DOWN,submitMouseDown);
                        MenuClass.ErrorWindow.submitBtn.buttonMode = true;
                        MenuClass.ErrorWindow.CancelBtn.addEventListener(MouseEvent.MOUSE_DOWN,CancelMouseDown);
                        MenuClass.ErrorWindow.CancelBtn.buttonMode = true;
                        MenuClass.PassWindowOpenCheck = true;
                     }
                     _loc2_++;
                  }
               }
            }
            else if(Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).pass)
            {
               _loc3_ = Main.accessObj.pass.length;
               if(_loc3_ == 0)
               {
                  _loc3_ = 1;
               }
               _loc2_ = 0;
               while(_loc2_ < _loc3_)
               {
                  if(Main.accessObj.pass[_loc2_] == Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).pass)
                  {
                     Tab_ColorBtnSet2.customSetFc("swfColor");
                     break;
                  }
                  if(_loc2_ == _loc3_ - 1)
                  {
                     MenuClass.ErrorWindow.gotoAndStop(8);
                     MenuClass.ErrorWindow.visible = true;
                     MenuClass.ErrorWindow.closeBtn.visible = false;
                     MenuClass.ErrorWindow.submitBtn.addEventListener(MouseEvent.MOUSE_DOWN,submitMouseDown);
                     MenuClass.ErrorWindow.submitBtn.buttonMode = true;
                     MenuClass.ErrorWindow.CancelBtn.addEventListener(MouseEvent.MOUSE_DOWN,CancelMouseDown);
                     MenuClass.ErrorWindow.CancelBtn.buttonMode = true;
                     MenuClass.PassWindowOpenCheck = true;
                  }
                  _loc2_++;
               }
            }
            */
            new Tab_SetClass();
         }
         catch(myError:Error)
         {
            Tab_ColorBtnSet2.customDeleteFc();
            trace(myError.getStackTrace());
         }
      }
      
      public static function submitMouseDown(param1:MouseEvent) : void
      {
         /*
         var _loc2_:int = 0;
         var _loc3_:int = Main.passData.length;
         if(_loc3_ == 0)
         {
            _loc3_ = 1;
         }
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            if(MenuClass._nowHeaderName == "CharaLoad")
            {
               if(Main.passData[_loc2_] == MenuClass.ErrorWindow.passwordtxt.text && Tab_FileReference2.Arloader2[MenuClass._nowCharaNum][MenuClass.systemData["CharaLoadPlus"]["_menu"]].getChildAt(0).pass == MenuClass.ErrorWindow.passwordtxt.text)
               {
                  Main.accessObj.pass.push(MenuClass.ErrorWindow.passwordtxt.text);
                  Main.so_access.flush();
                  Tab_ColorBtnSet2.customSetFc("swfColor");
                  break;
               }
            }
            else if(Main.passData[_loc2_] == MenuClass.ErrorWindow.passwordtxt.text && Tab_FileReference.Arloader2[MenuClass.systemData["LoadPlus"]["_menu"]].getChildAt(0).pass == MenuClass.ErrorWindow.passwordtxt.text)
            {
               Main.accessObj.pass.push(MenuClass.ErrorWindow.passwordtxt.text);
               Main.so_access.flush();
               Tab_ColorBtnSet2.customSetFc("swfColor");
               break;
            }
            _loc2_++;
         }
         */
         try {
            Tab_ColorBtnSet2.customSetFc("swfColor");
         } catch (err) {
            Tab_ColorBtnSet2.customDeleteFc();
            trace(err.getStackTrace());
         }
         new Stage_MoveCheckClass();
         MenuClass.ErrorWindow.submitBtn.removeEventListener(MouseEvent.MOUSE_DOWN,submitMouseDown);
         MenuClass.ErrorWindow.CancelBtn.removeEventListener(MouseEvent.MOUSE_DOWN,CancelMouseDown);
         MenuClass.ErrorWindow.visible = false;
         MenuClass.ErrorWindow.gotoAndStop(1);
         MenuClass.PassWindowOpenCheck = false;
      }
      
      public static function CancelMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         MenuClass.ErrorWindow.submitBtn.removeEventListener(MouseEvent.MOUSE_DOWN,submitMouseDown);
         MenuClass.ErrorWindow.CancelBtn.removeEventListener(MouseEvent.MOUSE_DOWN,CancelMouseDown);
         MenuClass.ErrorWindow.visible = false;
         MenuClass.ErrorWindow.gotoAndStop(1);
         MenuClass.PassWindowOpenCheck = false;
      }
   }
}
