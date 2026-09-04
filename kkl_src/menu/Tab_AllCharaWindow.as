package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import parameter.Chara_IEAllCharadata;
   
   public class Tab_AllCharaWindow
   {
      
      public static var menuNum:int = 0;
      
      public static var strFlag:String;
      
      public static var selectNum:int = 0;
      
      public static var selectNum2:int = 0;
      
      public static var MaxNum:int = 1;
      
      public static var enterCount:int = 0;
       
      
      public function Tab_AllCharaWindow()
      {
         super();
      }
      
      public static function setFc() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         try
         {
            _loc1_ = 0;
            while(_loc1_ <= 2)
            {
               _loc2_ = new Chara_Loading_item.allCharaSetClass();
               MenuClass.AllCharacterSetAdd[_loc1_] = _loc2_;
               MenuClass.tabMenuAdd["TabAllChara"].addChild(MenuClass.AllCharacterSetAdd[_loc1_]);
               MenuClass.AllCharacterSetAdd[_loc1_].Num = _loc1_;
               MenuClass.AllCharacterSetAdd[_loc1_].gotoAndStop(_loc1_ + 1);
               MenuClass.AllCharacterSetAdd[_loc1_].selectObj.visible = false;
               MenuClass.AllCharacterSetAdd[_loc1_].y = 0;
               MenuClass.AllCharacterSetAdd[_loc1_].x = _loc1_ * 239 + 31;
               _loc1_++;
            }
            menuBtnSet();
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function deleteFc() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ <= 2)
         {
            try
            {
               MenuClass.AllCharacterSetAdd[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,charaBtnMouseDown);
            }
            catch(myError:Error)
            {
            }
            MenuClass.tabMenuAdd["TabAllChara"].removeChild(MenuClass.AllCharacterSetAdd[_loc1_]);
            MenuClass.AllCharacterSetAdd[_loc1_] = null;
            _loc1_++;
         }
         try
         {
            MenuClass.tabMenuAdd["TabAllChara"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
         }
         catch(myError:Error)
         {
         }
         enterCount = 0;
      }
      
      public static function menuBtnSet() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = 3 * menuNum + _loc1_ + 1;
            MenuClass.AllCharacterSetAdd[_loc1_].gotoAndStop(_loc2_);
            MenuClass.AllCharacterSetAdd[_loc1_].selectObj.visible = false;
            MenuClass.AllCharacterSetAdd[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,charaBtnMouseDown);
            if(_loc2_ > Chara_IEAllCharadata.IEAllCharaData.length)
            {
               MenuClass.AllCharacterSetAdd[_loc1_].buttonMode = false;
            }
            else
            {
               MenuClass.AllCharacterSetAdd[_loc1_].buttonMode = true;
               MenuClass.AllCharacterSetAdd[_loc1_].addEventListener(MouseEvent.MOUSE_DOWN,charaBtnMouseDown);
               MenuClass.tabMenuAdd["TabAllChara"].prevBtn.gotoAndStop(2);
               MenuClass.tabMenuAdd["TabAllChara"].nextBtn.gotoAndStop(2);
               MenuClass.tabMenuAdd["TabAllChara"].prevBtn.alpha = 0.3;
               MenuClass.tabMenuAdd["TabAllChara"].nextBtn.alpha = 0.3;
            }
            _loc1_++;
         }
      }
      
      public static function prevBtnMouseDown(param1:MouseEvent) : void
      {
         if(menuNum == 0)
         {
            menuNum = MaxNum;
         }
         else
         {
            --menuNum;
         }
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd["TabAllChara"].prevBtn.gotoAndStop(2);
         MenuClass.tabMenuAdd["TabAllChara"].prevBtn.addEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
         menuBtnSet();
      }
      
      public static function prevBtnMouseUp(param1:MouseEvent) : void
      {
         MenuClass.tabMenuAdd["TabAllChara"].prevBtn.gotoAndStop(1);
         MenuClass.tabMenuAdd["TabAllChara"].prevBtn.removeEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
      }
      
      public static function nextBtnMouseDown(param1:MouseEvent) : void
      {
         if(menuNum == MaxNum)
         {
            menuNum = 0;
         }
         else
         {
            menuNum += 1;
         }
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd["TabAllChara"].nextBtn.gotoAndStop(2);
         MenuClass.tabMenuAdd["TabAllChara"].nextBtn.addEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
         menuBtnSet();
      }
      
      public static function nextBtnMouseUp(param1:MouseEvent) : void
      {
         MenuClass.tabMenuAdd["TabAllChara"].nextBtn.gotoAndStop(1);
         MenuClass.tabMenuAdd["TabAllChara"].nextBtn.removeEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
      }
      
      public static function charaBtnMouseDown(param1:MouseEvent) : void
      {
         enterCount = 0;
         setFc2(param1.currentTarget.Num,"btn");
      }
      
      public static function setFc2(param1:int, param2:String) : void
      {
         var _loc3_:int = 0;
         strFlag = param2;
         if(param2 == "btn" || param2 == "first")
         {
            selectNum = param1 + menuNum * 3;
         }
         if(param2 == "btn")
         {
            selectNum2 = param1;
            MenuClass.tabMenuAdd["TabAllChara"].addEventListener(Event.ENTER_FRAME,EnterFrame);
            _loc3_ = 0;
            while(_loc3_ <= 2)
            {
               MenuClass.AllCharacterSetAdd[_loc3_].selectObj.visible = false;
               _loc3_++;
            }
            MenuClass.AllCharacterSetAdd[param1].selectObj.visible = true;
         }
         else
         {
            _loc3_ = 0;
            while(_loc3_ <= MenuClass._characterNum)
            {
               MenuClass.charaAddDepth[_loc3_].visible = false;
               _loc3_++;
            }
            Main.stageVar.addEventListener(Event.ENTER_FRAME,EnterFrame);
         }
      }
      
      public static function EnterFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(enterCount == 2)
         {
            Tab_IEInOut.execute("IN",Chara_IEAllCharadata.IEAllCharaData[selectNum],0);
         }
         else if(enterCount == 3)
         {
            try
            {
               MenuClass.AllCharacterSetAdd[selectNum2].selectObj.visible = false;
               MenuClass.tabMenuAdd["TabAllChara"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
            }
            catch(myError:Error)
            {
            }
            try
            {
               Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
            }
            catch(myError:Error)
            {
            }
            enterCount = 0;
         }
         ++enterCount;
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
