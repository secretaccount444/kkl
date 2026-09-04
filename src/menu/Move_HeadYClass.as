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
         new MeterPersent(0,20,"Head",param1);
         var _loc6_:Number = Math.floor(MeterPersent.MeterPersentNum);
         new MeterPersent(25,-25,"douHeight",param1);
         var _loc7_:Number = MeterPersent.MeterPersentNum;
         var _loc8_:Number = 0;
         var _loc9_:Array;
         if((_loc9_ = new Array(Move_DataClass.AshiFrameData[_loc5_["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[_loc5_["Ashi2"]["_menu"]]["depth"]))[0] >= 1 && _loc9_[1] >= 1)
         {
            _loc8_ = 20;
         }
         else if(_loc9_[0] >= 1 || _loc9_[1] >= 1)
         {
            _loc8_ = 10;
         }
         new MeterPersent(-10,2,"BodyHeight",param1);
         var _loc10_:Number = MeterPersent.MeterPersentNum;
         _loc5_["Head"]["_y"] = _loc10_;
         new MeterPersent(20,-20,"NeckHeight",param1);
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
                  _loc3_["Ribon" + _loc2_ + "_0"].y = SizeDataClass.bodyDefault_y["Ribon"] + _loc12_;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc3_["Ribon" + _loc2_ + "_1"].y = SizeDataClass.bodyDefault_y["Ribon"] + _loc12_;
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
                     _loc3_["HairEx" + _loc2_ + "_" + 0].y = SizeDataClass.bodyDefault_y["HairBack"] + _loc12_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc3_["HairEx" + _loc2_ + "_" + 1].y = SizeDataClass.bodyDefault_y["HairBack"] + _loc12_;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  try
                  {
                     _loc3_["HairEx" + _loc2_ + "_" + 0].y = 0;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc3_["HairEx" + _loc2_ + "_" + 1].y = 0;
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
      }
   }
}
