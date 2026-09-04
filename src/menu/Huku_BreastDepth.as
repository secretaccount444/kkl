package menu
{
   public class Huku_BreastDepth
   {
      
      public static var muneMoveData:Array = [[[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0]],[[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0]],[[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[8,0],[1,0],[1,0],[1,0],[1,0]],[[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[11,0],[1,0],[1,0],[1,0],[1,0]],[[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[8,0],[1,0],[1,0],[1,0],[1,0]],[[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[6,0],[11,0],[13,0],[13,0],[1,0],[1,0],[1,0],[1,0]],[[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[6,0],[11,0],[15,0],[16,0],[1,0],[1,0],[1,0],[1,0]],[[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[5,0],[12,0],[18,0],[24,0],[28,1],[1,0],[1,0],[1,0],[1,0]],[[1,0],[1,0],[1,0],[1,0],[1,0],[1,0],[4,0],[6,0],[9,0],[16,0],[22,0],[30,0],[35,1],[1,0],[1,0],[1,0],[1,0]],[[7,0],[8,0],[1,0],[1,0],[4,0],[7,0],[8,0],[9,0],[14,0],[19,0],[25,0],[33,0],[35,1],[2,0],[1,0],[1,0],[1,0]],[[8,0],[14,0],[1,0],[1,0],[7,0],[13,0],[16,0],[18,0],[22,0],[31,1],[35,1],[35,1],[35,1],[4,0],[1,0],[1,0],[1,0]],[[16,0],[20,0],[1,0],[9,0],[14,0],[17,0],[19,0],[21,0],[25,0],[33,1],[35,1],[35,1],[35,1],[9,0],[1,0],[1,0],[1,0]],[[21,0],[23,0],[1,0],[8,0],[11,0],[14,0],[17,0],[18,0],[22,0],[29,1],[35,1],[35,1],[35,1],[7,0],[1,0],[1,0],[1,0]],[[27,0],[28,0],[6,0],[13,0],[16,0],[18,0],[20,0],[20,0],[26,0],[30,1],[35,1],[35,1],[35,1],[12,0],[4,0],[1,0],[1,0]],[[29,0],[30,0],[12,0],[17,0],[19,0],[19,0],[21,0],[21,0],[27,0],[29,1],[35,1],[35,1],[35,1],[14,0],[7,0],[1,0],[1,0]]];
       
      
      public function Huku_BreastDepth(param1:int)
      {
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc4_:int = _loc2_.mune.getChildIndex(_loc2_.mune.mune0);
         var _loc5_:int = _loc2_.mune.getChildIndex(_loc2_.mune.mune_swap0);
         var _loc6_:int = _loc2_.mune.getChildIndex(_loc2_.mune.mune1);
         var _loc7_:int = _loc2_.mune.getChildIndex(_loc2_.mune.mune_swap1);
         if(_loc2_.mune.mune0.mune.currentFrame == 2 || _loc2_.mune.mune1.mune.currentFrame == 2)
         {
            if(_loc2_.mune.mune0.mune.currentFrame == 2)
            {
               if(_loc4_ < _loc6_)
               {
                  _loc2_.mune.swapChildren(_loc2_.mune.mune0,_loc2_.mune.mune1);
                  _loc4_ = _loc2_.mune.getChildIndex(_loc2_.mune.mune0);
                  _loc6_ = _loc2_.mune.getChildIndex(_loc2_.mune.mune1);
                  _loc5_ = _loc2_.mune.getChildIndex(_loc2_.mune.mune_swap0);
                  _loc7_ = _loc2_.mune.getChildIndex(_loc2_.mune.mune_swap1);
               }
               if(_loc3_["BreastMove"]["_mode"][1] != "tateYure")
               {
                  if(Huku_BreastDepth.muneMoveData[_loc3_["Breast"]["_menu"]][_loc2_.mune.mune1.mune.currentFrame - 1][1] == 1)
                  {
                     if(_loc6_ < _loc7_)
                     {
                        _loc2_.mune.swapChildren(_loc2_.mune.mune1,_loc2_.mune.mune_swap1);
                     }
                     if(_loc4_ < _loc5_)
                     {
                        _loc2_.mune.swapChildren(_loc2_.mune.mune0,_loc2_.mune.mune_swap0);
                     }
                  }
                  else
                  {
                     if(_loc6_ > _loc7_)
                     {
                        _loc2_.mune.swapChildren(_loc2_.mune.mune1,_loc2_.mune.mune_swap1);
                     }
                     if(_loc4_ > _loc5_)
                     {
                        _loc2_.mune.swapChildren(_loc2_.mune.mune0,_loc2_.mune.mune_swap0);
                     }
                  }
               }
            }
            else if(_loc2_.mune.mune1.mune.currentFrame == 2)
            {
               if(_loc4_ > _loc6_)
               {
                  _loc2_.mune.swapChildren(_loc2_.mune.mune0,_loc2_.mune.mune1);
                  _loc4_ = _loc2_.mune.getChildIndex(_loc2_.mune.mune0);
                  _loc6_ = _loc2_.mune.getChildIndex(_loc2_.mune.mune1);
                  _loc5_ = _loc2_.mune.getChildIndex(_loc2_.mune.mune_swap0);
                  _loc7_ = _loc2_.mune.getChildIndex(_loc2_.mune.mune_swap1);
               }
               if(_loc3_["BreastMove"]["_mode"][0] != "tateYure")
               {
                  if(Huku_BreastDepth.muneMoveData[_loc3_["Breast"]["_menu"]][_loc2_.mune.mune0.mune.currentFrame - 1][1] == 1)
                  {
                     if(_loc6_ < _loc7_)
                     {
                        _loc2_.mune.swapChildren(_loc2_.mune.mune1,_loc2_.mune.mune_swap1);
                     }
                     if(_loc4_ < _loc5_)
                     {
                        _loc2_.mune.swapChildren(_loc2_.mune.mune0,_loc2_.mune.mune_swap0);
                     }
                  }
                  else
                  {
                     if(_loc6_ > _loc7_)
                     {
                        _loc2_.mune.swapChildren(_loc2_.mune.mune1,_loc2_.mune.mune_swap1);
                     }
                     if(_loc4_ > _loc5_)
                     {
                        _loc2_.mune.swapChildren(_loc2_.mune.mune0,_loc2_.mune.mune_swap0);
                     }
                  }
               }
            }
         }
         else
         {
            if(Huku_BreastDepth.muneMoveData[_loc3_["Breast"]["_menu"]][_loc2_.mune.mune0.mune.currentFrame - 1][1] == 0)
            {
               if(_loc4_ > _loc5_)
               {
                  _loc2_.mune.swapChildren(_loc2_.mune.mune0,_loc2_.mune.mune_swap0);
               }
            }
            else if(Huku_BreastDepth.muneMoveData[_loc3_["Breast"]["_menu"]][_loc2_.mune.mune0.mune.currentFrame - 1][1] == 1)
            {
               if(_loc4_ < _loc5_)
               {
                  _loc2_.mune.swapChildren(_loc2_.mune.mune0,_loc2_.mune.mune_swap0);
               }
            }
            if(Huku_BreastDepth.muneMoveData[_loc3_["Breast"]["_menu"]][_loc2_.mune.mune1.mune.currentFrame - 1][1] == 0)
            {
               if(_loc6_ > _loc7_)
               {
                  _loc2_.mune.swapChildren(_loc2_.mune.mune1,_loc2_.mune.mune_swap1);
               }
            }
            else if(Huku_BreastDepth.muneMoveData[_loc3_["Breast"]["_menu"]][_loc2_.mune.mune1.mune.currentFrame - 1][1] == 1)
            {
               if(_loc6_ < _loc7_)
               {
                  _loc2_.mune.swapChildren(_loc2_.mune.mune1,_loc2_.mune.mune_swap1);
               }
            }
         }
      }
   }
}
