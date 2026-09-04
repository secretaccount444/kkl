package menu
{
   public class HittestClass
   {
       
      
      public function HittestClass()
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc6_:Number = NaN;
         super();
         var _loc3_:Array = new Array(-10,10,0,0);
         var _loc4_:Array = new Array(0,0,-10,10);
         var _loc5_:Array = [[3.65,-13.65],[6,-12.8],[8.1,-11.6],[10,-10],[11.6,-8.1]];
         _loc1_ = 0;
         while(_loc1_ <= 3)
         {
            if(Tab_BreakBlockBtn.blockrod.obj2.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc4_[_loc1_],Tab_BreakBlockBtn.ball.y + _loc3_[_loc1_],true))
            {
               if(EnterFrameClass.ballY >= 0)
               {
                  _loc6_ = (Main.stageVar.mouseX - Tab_BreakBlockBtn.blockrod.x) * 0.4;
                  if(EnterFrameClass.ballX <= 0)
                  {
                     if(_loc6_ >= 80)
                     {
                        EnterFrameClass.ballX = _loc5_[0][0];
                        EnterFrameClass.ballY = _loc5_[0][1];
                        EnterFrameClass.ballX *= -1;
                     }
                     else if(_loc6_ >= 50)
                     {
                        EnterFrameClass.ballX = _loc5_[1][0];
                        EnterFrameClass.ballY = _loc5_[1][1];
                        EnterFrameClass.ballX *= -1;
                     }
                     else if(_loc6_ >= 20)
                     {
                        EnterFrameClass.ballX = _loc5_[2][0];
                        EnterFrameClass.ballY = _loc5_[2][1];
                        EnterFrameClass.ballX *= -1;
                     }
                     else if(_loc6_ >= -20)
                     {
                        EnterFrameClass.ballY *= -1;
                     }
                     else if(_loc6_ >= -50)
                     {
                        EnterFrameClass.ballX = _loc5_[3][0];
                        EnterFrameClass.ballY = _loc5_[3][1];
                        EnterFrameClass.ballX *= -1;
                     }
                     else if(_loc6_ < -50)
                     {
                        EnterFrameClass.ballX = _loc5_[4][0];
                        EnterFrameClass.ballY = _loc5_[4][1];
                        EnterFrameClass.ballX *= -1;
                     }
                  }
                  else if(_loc6_ <= -80)
                  {
                     EnterFrameClass.ballX = _loc5_[0][0];
                     EnterFrameClass.ballY = _loc5_[0][1];
                  }
                  else if(_loc6_ <= -50)
                  {
                     EnterFrameClass.ballX = _loc5_[1][0];
                     EnterFrameClass.ballY = _loc5_[1][1];
                  }
                  else if(_loc6_ <= -20)
                  {
                     EnterFrameClass.ballX = _loc5_[2][0];
                     EnterFrameClass.ballY = _loc5_[2][1];
                  }
                  else if(_loc6_ <= 20)
                  {
                     EnterFrameClass.ballY *= -1;
                  }
                  else if(_loc6_ <= 50)
                  {
                     EnterFrameClass.ballX = _loc5_[3][0];
                     EnterFrameClass.ballY = _loc5_[3][1];
                  }
                  else if(_loc6_ > 50)
                  {
                     EnterFrameClass.ballX = _loc5_[4][0];
                     EnterFrameClass.ballY = _loc5_[4][1];
                  }
               }
               break;
            }
            if(Tab_BreakBlockBtn.blockrod.obj0.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc4_[_loc1_],Tab_BreakBlockBtn.ball.y + _loc3_[_loc1_],true))
            {
               if(EnterFrameClass.ballY >= 0)
               {
                  EnterFrameClass.ballY *= -1;
                  if(EnterFrameClass.ballX >= 0)
                  {
                     EnterFrameClass.ballX *= -1;
                  }
               }
               break;
            }
            if(Tab_BreakBlockBtn.blockrod.obj1.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc4_[_loc1_],Tab_BreakBlockBtn.ball.y + _loc3_[_loc1_],true))
            {
               if(EnterFrameClass.ballY >= 0)
               {
                  EnterFrameClass.ballY *= -1;
                  if(EnterFrameClass.ballX <= 0)
                  {
                     EnterFrameClass.ballX *= -1;
                  }
               }
               break;
            }
            _loc1_++;
         }
      }
   }
}
