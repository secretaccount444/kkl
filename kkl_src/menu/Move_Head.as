package menu
{
   import parameter.Dress_data;
   import system.MeterPersent;
   
   public class Move_Head
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Move_Head(param1:int)
      {
         var _loc2_:int = 0;
         var _loc6_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         new MeterPersent(0,100,"Head",param1);
         var _loc3_:Number = Math.floor(MeterPersent.MeterPersentNum);
         new MeterPersent(-30,30,"Head",param1);
         var _loc4_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(-13,13,"Head",param1);
         var _loc5_:Number = MeterPersent.MeterPersentNum;
         if(!this.charaData["CharaFilterEmotion"]["_check"])
         {
            MenuClass.charaAddDepth[param1].charaMae.Emotion.rotation = _loc4_;
            MenuClass.charaAddDepth[param1].charaMae.Emotion.x = _loc5_;
         }
         else
         {
            this.charaAdd.Emotion.rotation = _loc4_;
            this.charaAdd.Emotion.x = _loc5_;
         }
         this.charaAdd.head.rotation = this.charaAdd.SideBurnMiddle.rotation = this.charaAdd.HairBack.rotation = this.charaAdd.HairUshiro.rotation = this.charaAdd.HatBack.rotation = this.charaAdd.CharaloadAdd.rotation = this.charaAdd.CharaloadAdd1.rotation = _loc4_;
         this.charaAdd.head.x = this.charaAdd.SideBurnMiddle.x = this.charaAdd.HairBack.x = this.charaAdd.HairUshiro.x = this.charaAdd.HatBack.x = this.charaAdd.CharaloadAdd.x = this.charaAdd.CharaloadAdd1.x = _loc5_;
         _loc2_ = 0;
         while(_loc2_ <= Main.hukusuuNum)
         {
            if(this.charaData["HairExPlus"]["_visible"][_loc2_])
            {
               if(this.charaData["HairExAdd" + _loc2_]["_add0"] == 0)
               {
                  try
                  {
                     if (this.charaAdd["HairEx" + _loc2_ + "_0"]) {
                        this.charaAdd["HairEx" + _loc2_ + "_0"].rotation = _loc4_;
                        this.charaAdd["HairEx" + _loc2_ + "_0"].x = _loc5_;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if (this.charaAdd["HairEx" + _loc2_ + "_1"]) {
                        this.charaAdd["HairEx" + _loc2_ + "_1"].rotation = _loc4_;
                        this.charaAdd["HairEx" + _loc2_ + "_1"].x = _loc5_;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               } else if (this.charaData["HairExAdd" + _loc2_]["_add0"] == 93) {
                     try
                     {
                        if (this.charaAdd["HairEx" + _loc2_ + "_0"]) {
                           this.charaAdd["HairEx" + _loc2_ + "_0"].x = this.charaAdd.handm1_0.hand.arm0.x;
                           this.charaAdd["HairEx" + _loc2_ + "_0"].rotation = this.charaAdd.handm1_0.hand.arm1.currentFrame;
                        }
                     } catch(myError:Error) {
                        Main.logError(myError, "in Move_Head(" + param1 + ")");
                     }

                     try
                     {
                        if (this.charaAdd["HairEx" + _loc2_ + "_1"]) {
                           this.charaAdd["HairEx" + _loc2_ + "_1"].x = this.charaAdd.handm1_1.hand.arm0.x;
                           this.charaAdd["HairEx" + _loc2_ + "_1"].rotation = this.charaAdd.handm1_1.hand.arm1.currentFrame;
                        }
                     } catch(myError:Error) {
                        Main.logError(myError, "in Move_Head(" + param1 + ")");
                     }
               } else if (this.charaData["HairExAdd" + _loc2_]["_add0"] == 94) {
                     try
                     {
                        if (this.charaAdd["HairEx" + _loc2_ + "_0"]) {
                           this.charaAdd["HairEx" + _loc2_ + "_0"].x = -15;
                           this.charaAdd["HairEx" + _loc2_ + "_0"].rotation = ((this.charaAdd.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
                        }
                     } catch(myError:Error) {
                        Main.logError(myError, "in Move_Head(" + param1 + ")");
                     }

                     try
                     {
                        if (this.charaAdd["HairEx" + _loc2_ + "_1"]) {
                           this.charaAdd["HairEx" + _loc2_ + "_1"].x = -15;
                           this.charaAdd["HairEx" + _loc2_ + "_1"].rotation = ((this.charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
                        }
                     }  catch(myError:Error) {
                        Main.logError(myError, "in Move_Head(" + param1 + ")");
                     }
               } else {
                  try
                  {
                     if (this.charaAdd["HairEx" + _loc2_ + "_0"]) {
                        this.charaAdd["HairEx" + _loc2_ + "_0"].rotation = 0;
                        this.charaAdd["HairEx" + _loc2_ + "_0"].x = 0;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if (this.charaAdd["HairEx" + _loc2_ + "_1"]) {
                        this.charaAdd["HairEx" + _loc2_ + "_1"].rotation = 0;
                        this.charaAdd["HairEx" + _loc2_ + "_1"].x = 0;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ <= Main.RibonhukusuuNum)
         {
            if(this.charaData["RibonPlus"]["_visible"][_loc2_])
            {
               try
               {
                  if (this.charaAdd["Ribon" + _loc2_ + "_0"]) {
                     this.charaAdd["Ribon" + _loc2_ + "_0"].rotation = _loc4_;
                     this.charaAdd["Ribon" + _loc2_ + "_0"].x = _loc5_;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if (this.charaAdd["Ribon" + _loc2_ + "_1"]) {
                     this.charaAdd["Ribon" + _loc2_ + "_1"].rotation = _loc4_;
                     this.charaAdd["Ribon" + _loc2_ + "_1"].x = _loc5_;
                  }
               }
               catch(myError:Error)
               {
               }
            }
            _loc2_++;
         }
         _loc2_ = 0;
         for(; _loc2_ <= 1; _loc2_++)
         {
            try
            {
               if(this.charaData["Earring" + _loc2_]["_visible"][0] && Dress_data.EarringData[this.charaData["Earring" + _loc2_]["_menu"]]["rotation"])
               {
                  var earBase = this.charaAdd.head["ear" + _loc2_];
                  if (
                     earBase &&
                     earBase.ear &&
                     earBase.ear.Earring &&
                     earBase.ear.Earring.Earring
                  ) {
                     if(_loc2_ == 0)
                     {
                        this.charaAdd.head["ear" + _loc2_].ear.Earring.Earring.rotation = _loc4_ * -1;
                     }
                     else
                     {
                        this.charaAdd.head["ear" + _loc2_].ear.Earring.Earring.rotation = _loc4_;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
         if(!this.charaData["CharaFilterEmotion"]["_check"])
         {
            MenuClass.charaAddDepth[param1].charaMae.Hukidashi.x = _loc5_ * 2;
         }
         else
         {
            this.charaAdd.Hukidashi.x = _loc5_ * 2;
         }
         new Move_HeadYClass(param1);
         if(this.charaData["HairBack"]["_turn"] == 1)
         {
            this.charaAdd.HairBack.gotoAndStop(Move_DataClass.SideBurnRotation2[_loc3_]);
         }
         else
         {
            this.charaAdd.HairBack.gotoAndStop(1);
         }
         _loc2_ = 0;
         while(_loc2_ <= Main.hukusuuNum)
         {
            if(this.charaData["HairExPlus"]["_visible"][_loc2_])
            {
               new Hair_ExRotation(param1,_loc2_);
            }
            _loc2_++;
         }
      }
   }
}
