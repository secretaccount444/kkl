package menu
{
   public class Tab_CloseSelectMove
   {
       
      
      public function Tab_CloseSelectMove()
      {
         var _loc1_:int = 0;
         super();
         if(!MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0])
         {
            _loc1_ = 0;
            while(_loc1_ <= MenuClass._characterNum)
            {
               if(MenuClass.charaData[_loc1_]["SelectCharacter"]["_visible"][0])
               {
                  MenuClass._nowCharaNum = _loc1_;
                  if(MenuClass._nowTargetMode == "SelectPlus")
                  {
                     MenuClass._nowSelectChara[_loc1_] = true;
                  }
                  break;
               }
               _loc1_++;
            }
         }
         if(MenuClass._nowTargetMode == "SelectPlus")
         {
            _loc1_ = 0;
            while(_loc1_ <= MenuClass._characterNum)
            {
               if(!MenuClass.charaData[_loc1_]["SelectCharacter"]["_visible"][0])
               {
                  MenuClass._nowSelectChara[_loc1_] = false;
               }
               _loc1_++;
            }
         }
      }
   }
}
