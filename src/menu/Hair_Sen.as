package menu
{
   import parameter.Dress_data;
   
   public class Hair_Sen
   {
       
      
      public function Hair_Sen(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         var _loc7_:Object = MenuClass.charaData[param1];
         var _loc8_:Object = MenuClass.charaAdd[param1];
         if(_loc7_["Hair"]["_sen"] == 2)
         {
            _loc9_ = false;
            _loc10_ = 1;
            _loc11_ = 0.3;
         }
         else if(_loc7_["Hair"]["_sen"] == 1)
         {
            _loc9_ = true;
            _loc10_ = 0.5;
            _loc11_ = 0.7;
         }
         else
         {
            _loc9_ = true;
            _loc10_ = 1;
            _loc11_ = 1;
         }
         try
         {
            _loc8_.head.hair.color2_0.visible = _loc9_;
            _loc8_.HairUshiro.color2_0.visible = _loc9_;
            _loc8_.head.hair.color2_0.alpha = _loc10_;
            _loc8_.HairUshiro.color2_0.alpha = _loc10_;
         }
         catch(myError:Error)
         {
         }
         new Hair_SenVisible(param1);
         try
         {
            _loc8_.head.hair.mae_sen.alpha = _loc10_;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc8_.head.hair.color2_0.alpha = _loc10_;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc8_.head.hair.color2_0.alpha = _loc10_;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc8_.head.hairUnder.mae_sen.alpha = _loc11_;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc8_.head.Bangs.bangs.color2_0.visible = _loc9_;
            _loc8_.head.Bangs.bangs.color2_0.alpha = _loc10_;
         }
         catch(myError:Error)
         {
         }
         _loc5_ = 0;
         while(_loc5_ <= 1)
         {
            try
            {
               _loc8_.HairBack.hairBack.hairBack["color2_" + _loc5_].visible = _loc9_;
               _loc8_.HairBack.hairBack.hairBack["color2_" + _loc5_].alpha = _loc10_;
            }
            catch(myError:Error)
            {
            }
            _loc5_++;
         }
         try
         {
            _loc8_.head.SideBurnLeft.SideBurn.side.color2_0.visible = _loc9_;
            _loc8_.head.SideBurnLeft.SideBurn.side.color2_0.alpha = _loc10_;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc8_.SideBurnMiddle.SideBurnLeft.SideBurn.side.color2_0.visible = _loc9_;
            _loc8_.SideBurnMiddle.SideBurnLeft.SideBurn.side.color2_0.alpha = _loc10_;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc8_.head.SideBurnRight.SideBurn.side.color2_0.visible = _loc9_;
            _loc8_.head.SideBurnRight.SideBurn.side.color2_0.alpha = _loc10_;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc8_.SideBurnMiddle.SideBurnRight.SideBurn.side.color2_0.visible = _loc9_;
            _loc8_.SideBurnMiddle.SideBurnRight.SideBurn.side.color2_0.alpha = _loc10_;
         }
         catch(myError:Error)
         {
         }
         _loc4_ = 0;
         for(; _loc4_ <= Main.hukusuuNum; _loc4_++)
         {
            if(_loc7_["HairExPlus"]["_visible"][_loc4_])
            {
               try
               {
                  if(Dress_data.DressData["HairEx" + _loc4_][0]["_color2"] == undefined)
                  {
                     _loc2_ = 0;
                     while(_loc2_ <= 1)
                     {
                        _loc5_ = 0;
                        while(_loc5_ <= 1)
                        {
                           try
                           {
                              _loc8_["HairEx" + _loc4_ + "_" + _loc2_].HairEx0["color1_" + _loc5_].visible = _loc9_;
                              _loc8_["HairEx" + _loc4_ + "_" + _loc2_].HairEx0["color1_" + _loc5_].alpha = _loc10_;
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc5_++;
                        }
                        _loc2_++;
                     }
                  }
                  else
                  {
                     _loc2_ = 0;
                     while(_loc2_ <= 1)
                     {
                        _loc5_ = 0;
                        while(_loc5_ <= 1)
                        {
                           try
                           {
                              _loc8_["HairEx" + _loc4_ + "_" + _loc2_].HairEx0["color2_" + _loc5_].visible = _loc9_;
                              _loc8_["HairEx" + _loc4_ + "_" + _loc2_].HairEx0["color2_" + _loc5_].alpha = _loc10_;
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc5_++;
                        }
                        _loc2_++;
                     }
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
}
