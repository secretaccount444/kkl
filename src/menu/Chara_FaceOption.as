package menu
{
   public class Chara_FaceOption
   {
       
      
      public function Chara_FaceOption(param1:int)
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         var _loc4_:int = _loc3_["FaceOption"]["_visible"].length - 1;
         _loc5_ = 0;
         while(_loc5_ <= _loc4_)
         {
            if(_loc5_ == 0)
            {
               if(_loc3_["FaceOption"]["_visible"][_loc5_])
               {
                  _loc2_.head.hokuro0.visible = true;
                  _loc2_.head.hokuro0.gotoAndStop(2);
               }
               else
               {
                  _loc2_.head.hokuro0.visible = false;
                  _loc2_.head.hokuro0.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 1)
            {
               if(_loc3_["FaceOption"]["_visible"][_loc5_])
               {
                  _loc2_.head.hokuro1.visible = true;
                  _loc2_.head.hokuro1.gotoAndStop(2);
               }
               else
               {
                  _loc2_.head.hokuro1.visible = false;
                  _loc2_.head.hokuro1.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 2)
            {
               if(_loc3_["FaceOption"]["_visible"][_loc5_])
               {
                  _loc2_.head.hokuro2.visible = true;
                  _loc2_.head.hokuro2.gotoAndStop(2);
               }
               else
               {
                  _loc2_.head.hokuro2.visible = false;
                  _loc2_.head.hokuro2.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 3)
            {
               if(_loc3_["FaceOption"]["_visible"][_loc5_])
               {
                  _loc2_.head.hokuro3.visible = true;
                  _loc2_.head.hokuro3.gotoAndStop(2);
               }
               else
               {
                  _loc2_.head.hokuro3.visible = false;
                  _loc2_.head.hokuro3.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 4)
            {
               if(_loc3_["FaceOption"]["_visible"][_loc5_])
               {
                  _loc2_.head.hokuro4.visible = true;
                  _loc2_.head.hokuro4.gotoAndStop(2);
               }
               else
               {
                  _loc2_.head.hokuro4.visible = false;
                  _loc2_.head.hokuro4.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 5)
            {
               if(_loc3_["FaceOption"]["_visible"][_loc5_])
               {
                  _loc2_.head.sobakasu0.visible = true;
                  _loc2_.head.sobakasu0.gotoAndStop(2);
                  new Chara_ColorClass(param1,"Contour");
               }
               else
               {
                  _loc2_.head.sobakasu0.visible = false;
                  _loc2_.head.sobakasu0.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 6)
            {
               if(_loc3_["FaceOption"]["_visible"][_loc5_])
               {
                  _loc2_.head.sobakasu1.visible = true;
                  _loc2_.head.sobakasu1.gotoAndStop(2);
                  new Chara_ColorClass(param1,"Contour");
               }
               else
               {
                  _loc2_.head.sobakasu1.visible = false;
                  _loc2_.head.sobakasu1.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 7)
            {
               if(_loc3_["FaceOption"]["_visible"][_loc5_])
               {
                  _loc2_.head.Hige.visible = true;
                  _loc2_.head.Hige.gotoAndStop(2);
                  new Chara_ColorClass(param1,"Hige");
               }
               else
               {
                  _loc2_.head.Hige.visible = false;
                  _loc2_.head.Hige.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 8)
            {
               if(_loc3_["FaceOption"]["_visible"][_loc5_])
               {
                  _loc2_.head.faceKage0.visible = true;
                  _loc2_.head.faceKage0.gotoAndStop(2);
               }
               else
               {
                  _loc2_.head.faceKage0.visible = false;
                  _loc2_.head.faceKage0.gotoAndStop(1);
               }
            }
            else if(_loc5_ == 9)
            {
               if(_loc3_["FaceOption"]["_visible"][_loc5_])
               {
                  _loc2_.head.faceKage1.visible = true;
                  _loc2_.head.faceKage1.gotoAndStop(2);
               }
               else
               {
                  _loc2_.head.faceKage1.visible = false;
                  _loc2_.head.faceKage1.gotoAndStop(1);
               }
            }
            _loc5_++;
         }
      }
   }
}
