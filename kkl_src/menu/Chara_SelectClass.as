package menu
{
   import flash.events.MouseEvent;
   
   public class Chara_SelectClass
   {
       
      
      public function Chara_SelectClass(param1:String)
      {
         super();
         if(param1 == "first")
         {
            this.SelectCharacter();
            this.AllClose();
         }
         else if(param1 == "open")
         {
            this.AllOpen();
         }
         else if(param1 == "close")
         {
            this.AllClose();
         }
      }
      
      private function SelectCharacter() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ <= MenuClass._characterNum)
         {
            MenuClass.charaAddDepth[_loc1_].addEventListener(MouseEvent.CLICK,this.MouseClick);
            _loc1_++;
         }
      }
      
      private function MouseClick(param1:MouseEvent) : void
      {
         if(!MenuClass.ClickRock && !MenuClass.HukuRock)
         {
            if(MenuClass._nowCharaNum != param1.currentTarget.Num)
            {
               try
               {
                  Tab_ColorBtnSet2.customDeleteFc();
               }
               catch(myError:Error)
               {
               }
            }
         }
         new SetLinkData(param1.currentTarget.Num);
         new Chara_SelectIcon(param1.currentTarget.Num);
      }
      
      private function AllOpen() : void
      {
         var _loc1_:int = 0;
         if(!MenuClass.ClickRock && !MenuClass.HukuRock)
         {
            if(MenuClass._nowTargetMode == "All")
            {
               _loc1_ = 0;
               while(_loc1_ <= MenuClass._characterNum)
               {
                  if(MenuClass.charaData[_loc1_]["SelectCharacter"]["_visible"][0])
                  {
                     MenuClass.charaAddDepth[_loc1_].charaSelect.visible = true;
                     MenuClass.charaAddDepth[_loc1_].charaSelect.gotoAndStop(2);
                     MenuClass.charaAddDepth[_loc1_].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[_loc1_].charaSelect.obj.obj.scaleY = 0.5;
                  }
                  _loc1_++;
               }
               MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.gotoAndPlay(2);
               MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.obj.obj.scaleY = 0.9;
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc1_ = 0;
               while(_loc1_ <= MenuClass._characterNum)
               {
                  MenuClass.charaAddDepth[_loc1_].charaSelect.visible = MenuClass._nowSelectChara[_loc1_];
                  if(MenuClass._nowSelectChara[_loc1_])
                  {
                     MenuClass.charaAddDepth[_loc1_].charaSelect.gotoAndStop(2);
                     MenuClass.charaAddDepth[_loc1_].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[_loc1_].charaSelect.obj.obj.scaleY = 0.5;
                  }
                  else
                  {
                     MenuClass.charaAddDepth[_loc1_].charaSelect.gotoAndStop(1);
                  }
                  _loc1_++;
               }
               try
               {
                  if(MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0])
                  {
                     MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.visible = true;
                     MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.obj.obj.scaleY = 0.9;
                     MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.gotoAndPlay(2);
                  }
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               _loc1_ = 0;
               while(_loc1_ <= MenuClass._characterNum)
               {
                  MenuClass.charaAddDepth[_loc1_].charaSelect.visible = false;
                  MenuClass.charaAddDepth[_loc1_].charaSelect.gotoAndStop(1);
                  _loc1_++;
               }
               if(MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0])
               {
                  MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.visible = true;
                  MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.gotoAndPlay(2);
               }
            }
         }
      }
      
      private function AllClose() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ <= MenuClass._characterNum)
         {
            MenuClass.charaAddDepth[_loc1_].charaSelect.visible = false;
            MenuClass.charaAddDepth[_loc1_].charaSelect.gotoAndStop(1);
            _loc1_++;
         }
      }
   }
}
