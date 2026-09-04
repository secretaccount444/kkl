package menu
{
   public class Move_HandClass
   {
       
      
      public function Move_HandClass(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         new Move_HandAngleClass(param1);
         _loc2_ = 0;
         for(; _loc2_ <= 1; new Huku_Ude("Glove" + _loc2_,param1,_loc2_),new Huku_Ude("Bracelet" + _loc2_,param1,_loc2_),new Huku_Ude("Elbowpad" + _loc2_,param1,_loc2_),if(MenuClass.charaData[param1]["Item" + _loc2_]["_visible"][0])
         {
            new Huku_Ude("Item",param1,_loc2_);
         },new Chara_ColorClass(param1,_loc4_),if(_loc2_ == 0)
         {
            new Chara_ColorClass(param1,"LeftArm2");
         }
         else
         {
            new Chara_ColorClass(param1,"RightArm2");
         },_loc2_++)
         {
            if(_loc2_ == 0)
            {
               _loc4_ = "LeftHand";
            }
            else
            {
               _loc4_ = "RightHand";
            }
            try
            {
               _loc3_ = 0;
               while(_loc3_ <= 1)
               {
                  if(MenuClass.charaAdd[param1]["handm1_" + _loc2_].hand.arm0.hand["MaskMc" + _loc3_])
                  {
                     MenuClass.charaAdd[param1]["handm1_" + _loc2_].hand.arm1.arm1.arm1.sen.mask = MenuClass.charaAdd[param1]["handm1_" + _loc2_].hand.arm0.hand["MaskMc" + _loc3_];
                  }
                  _loc3_++;
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
