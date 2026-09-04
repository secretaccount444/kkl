package menu
{
   import parameter.Dress_data;
   import system.MeterPersent;
   
   public class Move_HeadYClass
   {
       
      
      public function Move_HeadYClass(param1:int)
      {
         var _loc2_:int = 0;
         super();
         var _loc3_:Object = MenuClass.charaAdd[param1];
         var _loc4_:Object = MenuClass.charaAddDepth[param1];
         var _loc5_:Object = MenuClass.charaData[param1];
         MeterPersent.get(0,20,"Head",param1);
         var _loc6_:Number = Math.floor(MeterPersent.MeterPersentNum);
         MeterPersent.get(25,-25,"douHeight",param1);
         var _loc7_:Number = MeterPersent.MeterPersentNum;
         var _loc8_:Number = 0;

         var ashiDepth1 = Move_DataClass.AshiFrameData[_loc5_["Ashi"]["_menu"]]["depth"];
         var ashiDepth2 = Move_DataClass.AshiFrameData[_loc5_["Ashi2"]["_menu"]]["depth"];
         if(ashiDepth1 >= 1 && ashiDepth2 >= 1)
         {
            _loc8_ = 20;
         }
         else if(ashiDepth1 >= 1 || ashiDepth2 >= 1)
         {
            _loc8_ = 10;
         }

         MeterPersent.get(-10,2,"BodyHeight",param1);
         var _loc10_:Number = MeterPersent.MeterPersentNum;
         _loc5_["Head"]["_y"] = _loc10_;
         MeterPersent.get(20,-20,"NeckHeight",param1);
         if(_loc5_["NeckHeight"]["_meter"] >= 70)
         {
            _loc3_.mune.senNeck0.senNeck.gotoAndStop(3);
            _loc3_.mune.senNeck1.senNeck.gotoAndStop(3);
            _loc3_.mune.ue.kage0.gotoAndStop(3);
         }
         else if(_loc5_["NeckHeight"]["_meter"] >= 30)
         {
            _loc3_.mune.senNeck0.senNeck.gotoAndStop(2);
            _loc3_.mune.senNeck1.senNeck.gotoAndStop(2);
            _loc3_.mune.ue.kage0.gotoAndStop(2);
         }
         else
         {
            _loc3_.mune.senNeck0.senNeck.gotoAndStop(1);
            _loc3_.mune.senNeck1.senNeck.gotoAndStop(1);
            _loc3_.mune.ue.kage0.gotoAndStop(1);
         }
         var _loc11_:Number = MeterPersent.MeterPersentNum;
         var _loc12_:Number = Move_DataClass.HeadRotation[_loc6_][2] + _loc10_ + _loc7_ + _loc8_ + _loc11_;
         _loc3_.head.y = SizeDataClass.bodyDefault_y["head"] + _loc12_;
         if(!_loc5_["CharaFilterEmotion"]["_check"])
         {
            MenuClass.charaAddDepth[param1].charaMae.Emotion.y = SizeDataClass.bodyDefault_y["head"] + _loc12_;
         }
         else
         {
            _loc3_.Emotion.y = SizeDataClass.bodyDefault_y["head"] + _loc12_;
         }
         _loc3_.SideBurnMiddle.y = SizeDataClass.bodyDefault_y["SideBurnMiddle"] + _loc12_;
         _loc3_.HairBack.y = SizeDataClass.bodyDefault_y["HairBack"] + _loc12_;
         _loc3_.HairUshiro.y = SizeDataClass.bodyDefault_y["HairBack"] + _loc12_;
         _loc3_.HatBack.y = SizeDataClass.bodyDefault_y["HatBack"] + Dress_data.HairData[_loc5_["Hair"]["_menu"]]["_hatY"] + _loc12_;
         _loc2_ = 0;
         while(_loc2_ <= Main.RibonhukusuuNum)
         {
            if(_loc5_["RibonPlus"]["_visible"][_loc2_])
            {
               try
               {
                  if (_loc3_["Ribon" + _loc2_ + "_0"]) {
                     _loc3_["Ribon" + _loc2_ + "_0"].y = SizeDataClass.bodyDefault_y["Ribon"] + _loc12_;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if (_loc3_["Ribon" + _loc2_ + "_1"]) {
                     _loc3_["Ribon" + _loc2_ + "_1"].y = SizeDataClass.bodyDefault_y["Ribon"] + _loc12_;
                  }
               }
               catch(myError:Error)
               {
               }
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ <= Main.hukusuuNum)
         {
            if(_loc5_["HairExPlus"]["_visible"][_loc2_])
            {
               if(_loc5_["HairExAdd" + _loc2_]["_add0"] == 0)
               {
                  try
                  {
                     if (_loc3_["HairEx" + _loc2_ + "_0"]) {
                        _loc3_["HairEx" + _loc2_ + "_0"].y = SizeDataClass.bodyDefault_y["HairBack"] + _loc12_;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if (_loc3_["HairEx" + _loc2_ + "_1"]) {
                        _loc3_["HairEx" + _loc2_ + "_1"].y = SizeDataClass.bodyDefault_y["HairBack"] + _loc12_;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               } else if (_loc5_["HairExAdd" + _loc2_]["_add0"] == 93) {
                  try
                  {
                     if (_loc3_["HairEx" + _loc2_ + "_0"]) {
                        _loc3_["HairEx" + _loc2_ + "_0"].y = _loc3_.handm1_0.hand.arm0.y;
                     }
                  } catch(myError:Error) {
                     // Main.logError(myError, "in Move_HeadYClass(" + param1 + ")");
                  }

                  try
                  {
                     if (_loc3_["HairEx" + _loc2_ + "_1"]) {
                        _loc3_["HairEx" + _loc2_ + "_1"].y = _loc3_.handm1_1.hand.arm0.y;
                     }
                  } catch(myError:Error) {
                     // Main.logError(myError, "in Move_HeadYClass(" + param1 + ")");
                  }
               } else if (_loc5_["HairExAdd" + _loc2_]["_add0"] == 94) {
                  try
                  {
                     if (_loc3_["HairEx" + _loc2_ + "_0"]) {
                        _loc3_["HairEx" + _loc2_ + "_0"].y = 100;
                     }
                  } catch(myError:Error) {
                     // Main.logError(myError, "in Move_HeadYClass(" + param1 + ")");
                  }

                  try
                  {
                     if (_loc3_["HairEx" + _loc2_ + "_1"]) {
                        _loc3_["HairEx" + _loc2_ + "_1"].y = 100;
                     }
                  } catch(myError:Error) {
                     // Main.logError(myError, "in Move_HeadYClass(" + param1 + ")");
                  }
               } else {
                  try
                  {
                     if (_loc3_["HairEx" + _loc2_ + "_0"]) {
                        _loc3_["HairEx" + _loc2_ + "_0"].y = 0;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if (_loc3_["HairEx" + _loc2_ + "_1"]) {
                        _loc3_["HairEx" + _loc2_ + "_1"].y = 0;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            _loc2_++;
         }
         if(!_loc5_["CharaFilterEmotion"]["_check"])
         {
            MenuClass.charaAddDepth[param1].charaMae.Hukidashi.y = SizeDataClass.bodyDefault_y["Hukidashi"] + _loc12_;
         }
         else
         {
            _loc3_.Hukidashi.y = SizeDataClass.bodyDefault_y["Hukidashi"] + _loc12_;
         }

         Add_LoadURL2.updateHead(param1);
      }
   }
}
