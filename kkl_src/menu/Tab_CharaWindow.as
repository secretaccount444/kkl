package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import parameter.Chara_IECharadata;
   
   public class Tab_CharaWindow
   {
      
      public static var menuNum:int = 1;
      
      public static var selectNum:Array = new Array();
      
      public static var selectNum2:int = 0;
      
      public static var MaxNum:int = 0;
      
      public static var enterCount:int = 0;
       
      
      public function Tab_CharaWindow()
      {
         super();
      }
      
      public static function setFc(param1:String) : void
      {
         var i:int = 0;
         var charaBtn:MovieClip = null;
         var str:String = param1;
         if(str == "random" && MenuClass.TabChara_randomCheck == 0)
         {
            MenuClass.tabMenuAdd["TabChara"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
            MenuClass.TabChara_randomCheck = 1;
            enterCount = 0;
            i = 0;
            while(i <= 13)
            {
               MenuClass.CharacterSetAdd[i].selectObj.visible = false;
               i++;
            }
            if(MenuClass._nowTargetMode == "Select")
            {
               randomCreate();
            }
            else if(MenuClass._nowTargetMode == "All" || MenuClass._nowTargetMode == "SelectPlus")
            {
               randomAllCreate();
            }
         }
         else if(str == "start")
         {
            i = 0;
            while(i <= 13)
            {
               charaBtn = new Chara_Loading_item.charaSetClass();
               MenuClass.CharacterSetAdd[i] = charaBtn;
               try
               {
                  MenuClass.tabMenuAdd["TabChara"].addChild(MenuClass.CharacterSetAdd[i]);
                  MenuClass.CharacterSetAdd[i].Num = i;
                  MenuClass.CharacterSetAdd[i].gotoAndStop(i + 1);
                  MenuClass.CharacterSetAdd[i].selectObj.visible = false;
                  MenuClass.CharacterSetAdd[i].y = 0;
                  MenuClass.CharacterSetAdd[i].x = i * 51 + 33;
               }
               catch(myError:Error)
               {
               }
               i++;
            }
            menuBtnSet();
            try
            {
               MenuClass.tabMenuAdd["TabChara"].prevBtn.addEventListener(MouseEvent.MOUSE_DOWN,prevBtnMouseDown);
               MenuClass.tabMenuAdd["TabChara"].prevBtn.buttonMode = true;
               MenuClass.tabMenuAdd["TabChara"].nextBtn.addEventListener(MouseEvent.MOUSE_DOWN,nextBtnMouseDown);
               MenuClass.tabMenuAdd["TabChara"].nextBtn.buttonMode = true;
            }
            catch(myError:Error)
            {
               trace("TabChara　読み込み失敗");
            }
            MaxNum = Math.ceil(Chara_IECharadata.IEdata.length / 14);
         }
      }
      
      public static function deleteFc() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ <= 13)
         {
            try
            {
               MenuClass.CharacterSetAdd[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,charaBtnMouseDown);
            }
            catch(myError:Error)
            {
            }
            MenuClass.tabMenuAdd["TabChara"].removeChild(MenuClass.CharacterSetAdd[_loc1_]);
            MenuClass.CharacterSetAdd[_loc1_] = null;
            _loc1_++;
         }
         MenuClass.tabMenuAdd["TabChara"].prevBtn.removeEventListener(MouseEvent.MOUSE_DOWN,prevBtnMouseDown);
         MenuClass.tabMenuAdd["TabChara"].nextBtn.removeEventListener(MouseEvent.MOUSE_DOWN,nextBtnMouseDown);
         try
         {
            MenuClass.tabMenuAdd["TabChara"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function randomAllCreate() : void
      {
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         var _loc2_:Array = new Array();
         selectNum = new Array();
         _loc1_ = 0;
         while(_loc1_ < Chara_IECharadata.IEdata.length)
         {
            _loc2_.push(_loc1_);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= 13)
         {
            _loc3_ = Math.floor(Math.random() * _loc2_.length);
            selectNum.push(_loc2_[_loc3_]);
            _loc2_.splice(_loc3_,1);
            _loc1_++;
         }
         MenuClass.tabMenuAdd["TabChara"].addEventListener(Event.ENTER_FRAME,EnterFrame);
      }
      
      public static function randomCreate() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = selectNum[0];
         _loc1_ = 0;
         while(_loc1_ <= 20)
         {
            selectNum = new Array();
            selectNum[0] = Math.floor(Math.random() * Chara_IECharadata.IEdata.length);
            if(selectNum[0] != _loc2_)
            {
               break;
            }
            _loc1_++;
         }
         MenuClass.tabMenuAdd["TabChara"].addEventListener(Event.ENTER_FRAME,EnterFrame);
      }
      
      public static function menuBtnSet() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(_loc1_ <= 13)
         {
            _loc2_ = 14 * (menuNum - 1) + _loc1_ + 1;
            MenuClass.CharacterSetAdd[_loc1_].gotoAndStop(_loc2_);
            MenuClass.CharacterSetAdd[_loc1_].selectObj.visible = false;
            MenuClass.CharacterSetAdd[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,charaBtnMouseDown);
            if(_loc2_ > Chara_IECharadata.IEdata.length)
            {
               MenuClass.CharacterSetAdd[_loc1_].buttonMode = false;
            }
            else
            {
               MenuClass.CharacterSetAdd[_loc1_].buttonMode = true;
               MenuClass.CharacterSetAdd[_loc1_].addEventListener(MouseEvent.MOUSE_DOWN,charaBtnMouseDown);
            }
            _loc1_++;
         }
      }
      
      public static function prevBtnMouseDown(param1:MouseEvent) : void
      {
         if(menuNum == 1)
         {
            menuNum = MaxNum;
         }
         else
         {
            --menuNum;
         }
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd["TabChara"].prevBtn.gotoAndStop(2);
         MenuClass.tabMenuAdd["TabChara"].prevBtn.addEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
         menuBtnSet();
      }
      
      public static function prevBtnMouseUp(param1:MouseEvent) : void
      {
         MenuClass.tabMenuAdd["TabChara"].prevBtn.gotoAndStop(1);
         MenuClass.tabMenuAdd["TabChara"].prevBtn.removeEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
      }
      
      public static function nextBtnMouseDown(param1:MouseEvent) : void
      {
         if(menuNum == MaxNum)
         {
            menuNum = 1;
         }
         else
         {
            menuNum += 1;
         }
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd["TabChara"].nextBtn.gotoAndStop(2);
         MenuClass.tabMenuAdd["TabChara"].nextBtn.addEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
         menuBtnSet();
      }
      
      public static function nextBtnMouseUp(param1:MouseEvent) : void
      {
         MenuClass.tabMenuAdd["TabChara"].nextBtn.gotoAndStop(1);
         MenuClass.tabMenuAdd["TabChara"].nextBtn.removeEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
      }
      
      public static function charaBtnMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         enterCount = 0;
         MenuClass.tabMenuAdd["TabChara"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
         selectNum = new Array();
         selectNum[0] = param1.currentTarget.Num + 14 * (menuNum - 1);
         selectNum2 = param1.currentTarget.Num;
         MenuClass.tabMenuAdd["TabChara"].addEventListener(Event.ENTER_FRAME,EnterFrame);
         _loc2_ = 0;
         while(_loc2_ <= 13)
         {
            MenuClass.CharacterSetAdd[_loc2_].selectObj.visible = false;
            _loc2_++;
         }
         MenuClass.CharacterSetAdd[param1.currentTarget.Num].selectObj.visible = true;
      }
      
      public static function EnterFrame(param1:Event) : void
      {
         ++enterCount;
         if(MenuClass._nowTargetMode == "Select")
         {
            if(enterCount == 2)
            {
               fcSet(MenuClass._nowCharaNum);
               MenuClass.CharacterSetAdd[selectNum2].selectObj.visible = false;
            }
            else if(enterCount == 3)
            {
               MenuClass.tabMenuAdd["TabChara"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
               enterCount = 0;
               MenuClass.TabChara_randomCheck = 0;
            }
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            if(enterCount <= 9)
            {
               if(MenuClass._nowSelectChara[enterCount - 1])
               {
                  fcSet(enterCount - 1);
               }
            }
            if(enterCount == 9)
            {
               MenuClass.CharacterSetAdd[selectNum2].selectObj.visible = false;
            }
            else if(enterCount == 10)
            {
               MenuClass.tabMenuAdd["TabChara"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
               enterCount = 0;
               MenuClass.TabChara_randomCheck = 0;
            }
         }
         else if(MenuClass._nowTargetMode == "All")
         {
            if(enterCount <= 9)
            {
               fcSet(enterCount - 1);
            }
            if(enterCount == 9)
            {
               MenuClass.CharacterSetAdd[selectNum2].selectObj.visible = false;
            }
            else if(enterCount == 10)
            {
               MenuClass.tabMenuAdd["TabChara"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
               enterCount = 0;
               MenuClass.TabChara_randomCheck = 0;
            }
         }
      }
      
      public static function fcSet(param1:int) : void
      {
         if(MenuClass.charaData[param1]["SelectCharacter"]["_visible"][0])
         {
            if(selectNum.length == 1)
            {
               Tab_IEInOut.execute("textIN",Chara_IECharadata.IEdata[selectNum[0]],param1);
            }
            else
            {
               Tab_IEInOut.execute("textIN",Chara_IECharadata.IEdata[selectNum[param1]],param1);
            }
         }
      }
   }
}
