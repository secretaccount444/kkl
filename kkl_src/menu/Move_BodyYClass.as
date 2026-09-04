package menu
{
   import parameter.Dress_data;
   import system.MeterPersent;
   
   public class Move_BodyYClass
   {
       
      
      public function Move_BodyYClass(param1:int)
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc8_:Number = NaN;
         var _loc28_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaAddDepth[param1];
         var _loc4_:Object = MenuClass.charaData[param1];
         var _loc7_:Boolean = false;
         var _loc9_:Number = 0;
         var _loc10_:Number = 0;
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:Number = 1;
         var _loc14_:Number = -324.2;
         var _loc15_:Number = -321.2;
         var _loc16_:Array;
         if((_loc16_ = new Array(Move_DataClass.AshiFrameData[_loc4_["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[_loc4_["Ashi2"]["_menu"]]["depth"]))[0] >= 1 && _loc16_[1] >= 1)
         {
            _loc9_ = 20;
            _loc11_ = -0.136;
            _loc12_ = -0.072;
            new MeterPersent(-44,-42.5,"douHeight",param1);
            _loc10_ = MeterPersent.MeterPersentNum;
            _loc13_ = 0.9;
            _loc14_ = -323.2;
            _loc15_ = -320.8;
         }
         else if(_loc16_[0] >= 1 || _loc16_[1] >= 1)
         {
            _loc9_ = 10;
            _loc11_ = -0.072;
            _loc12_ = -0.136;
            _loc10_ = -24;
            _loc13_ = 0.95;
            _loc14_ = -323.2;
            _loc15_ = -320.2;
         }
         new MeterPersent(0.85,1.15,"douHeight",param1);
         var _loc17_:Number = MeterPersent.MeterPersentNum + _loc11_;
         _loc2_.dou.scaleY = _loc17_;
         new MeterPersent(1.15,0.85,"douHeight",param1);
         var _loc18_:Number = MeterPersent.MeterPersentNum + _loc12_;
         _loc2_.dou.dou_shitaHuku.s.scaleY = _loc18_;
         new MeterPersent(_loc14_,_loc15_,"douHeight",param1);
         _loc2_.dou.dou_shitaHuku.s.y = MeterPersent.MeterPersentNum;
         var _loc19_:Number = -343;
         var _loc20_:Number = 1;
         if(_loc16_[0] >= 1 && _loc16_[1] >= 1)
         {
            if(_loc16_[0] == 2 && _loc16_[1] == 2)
            {
               new MeterPersent(-362,-352,"douHeight",param1);
               _loc19_ = MeterPersent.MeterPersentNum;
            }
            else
            {
               new MeterPersent(-380,-370,"douHeight",param1);
               _loc19_ = MeterPersent.MeterPersentNum;
            }
         }
         else if(_loc16_[0] >= 1 || _loc16_[1] >= 1)
         {
            new MeterPersent(-370,-360,"douHeight",param1);
            _loc19_ = MeterPersent.MeterPersentNum;
         }
         _loc2_.dou.dou_shitaHuku.UnderHair.y = _loc19_;
         _loc2_.dou.dou_shitaHuku.UnderHair.scaleY = _loc20_;
         new MeterPersent(-46,46,"douHeight",param1);
         var _loc21_:Number = MeterPersent.MeterPersentNum + _loc10_;
         _loc5_ = 0;
         while(_loc5_ <= Main.hukusuuNum)
         {
            if(_loc2_["belt" + _loc5_ + "_" + 0] != undefined)
            {
               _loc2_["belt" + _loc5_ + "_" + 0].scaleY = _loc17_;
            }
            if(_loc2_["belt" + _loc5_ + "_" + 1] != undefined)
            {
               _loc2_["belt" + _loc5_ + "_" + 1].scaleY = _loc17_;
            }
            _loc5_++;
         }

         if (_loc4_["TinSizeAuto"]["_check"]) {
            _loc2_.peni.scaleY = _loc17_;
         } else {
            _loc2_.peni.scaleY = 1.0;
         }

         _loc2_.dou.y = SizeDataClass.bodyDefault_y["dou"] + _loc21_;
         _loc5_ = 0;
         while(_loc5_ <= Main.hukusuuNum)
         {
            if(_loc2_["belt" + _loc5_ + "_" + 0] != undefined)
            {
               _loc2_["belt" + _loc5_ + "_" + 0].y = SizeDataClass.bodyDefault_y["dou"] + _loc21_;
            }
            if(_loc2_["belt" + _loc5_ + "_" + 1] != undefined)
            {
               _loc2_["belt" + _loc5_ + "_" + 1].y = SizeDataClass.bodyDefault_y["dou"] + _loc21_;
            }
            _loc5_++;
         }

         if (_loc4_["TinSizeAuto"]["_check"]) {
            _loc2_.peni.y = SizeDataClass.bodyDefault_y["dou"] + _loc21_;
         } else {
            _loc2_.peni.y = 0;
         }


         new MeterPersent(25,-25,"douHeight",param1);
         var _loc22_:Number = MeterPersent.MeterPersentNum + _loc9_;
         _loc2_.mune.y = SizeDataClass.bodyDefault_y["mune"] + _loc22_;
         try
         {
            _loc2_.Collar.y = SizeDataClass.bodyDefault_y["Collar"] + _loc22_;
         }
         catch(myError:Error)
         {
         }
         _loc2_.mosaic.mosaic.gotoAndStop(MenuClass.systemData["Mosaic"]["_menu"] + 1);
         if(_loc16_[0] >= 1 && _loc16_[1] >= 1)
         {
            if(_loc16_[0] == 2 && _loc16_[1] == 2)
            {
               _loc2_.mosaic.y = SizeDataClass.bodyDefault_y["mosaic"] + Dress_data.SujiData[_loc4_["s"]["_menu"]]["_y"];
            }
            else
            {
               _loc2_.mosaic.y = SizeDataClass.bodyDefault_y["mosaic"] - 6 + Dress_data.SujiData[_loc4_["s"]["_menu"]]["_y"];
            }
         }
         else if(_loc16_[0] >= 1 || _loc16_[1] >= 1)
         {
            _loc2_.mosaic.y = SizeDataClass.bodyDefault_y["mosaic"] - 4 + Dress_data.SujiData[_loc4_["s"]["_menu"]]["_y"];
         }
         else
         {
            _loc2_.mosaic.y = SizeDataClass.bodyDefault_y["mosaic"];
         }
         if(_loc16_[0] == 0 && _loc16_[1] == 0 || MenuClass.systemData["Mosaic"]["_menu"] != 0)
         {
            try
            {
               _loc2_.mosaic.mosaic.color0_0.gotoAndStop(1);
               _loc2_.mosaic.mosaic.color0_0.y = 0;
            }
            catch(myError:Error)
            {
            }
         }
         else if(_loc4_["VibratorMove"]["_mosaicMode"] == 0 || !_loc4_["Vibrator"]["_visible"][0])
         {
            try
            {
               _loc2_.mosaic.mosaic.color0_0.gotoAndStop(2);
               _loc2_.mosaic.mosaic.color0_0.y = 1.05;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               _loc2_.mosaic.mosaic.color0_0.gotoAndStop(1);
               _loc2_.mosaic.mosaic.color0_0.y = -5;
            }
            catch(myError:Error)
            {
            }
         }
         new MeterPersent(7,-2,"AshiHeight",param1);
         var _loc23_:Number = MeterPersent.MeterPersentNum;
         var _loc24_:Number = 0;
         if(_loc5_ == 0 && _loc4_["Ashi"]["_menu"] >= 88 || _loc5_ == 1 && _loc4_["Ashi2"]["_menu"] >= 88)
         {
            new MeterPersent(5,0,"douHeight",param1);
            _loc24_ = MeterPersent.MeterPersentNum;
         }
         new MeterPersent(10,0,"AshiHeight",param1);
         var _loc25_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(10,0,"AshiHeight",param1);
         var _loc26_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(-17,-0.5,"BodyHeight",param1);
         var _loc27_:Number = MeterPersent.MeterPersentNum;
         _loc5_ = 0;
         while(_loc5_ <= 1)
         {
            _loc28_ = MenuClass.charaAdd[param1]["ashi" + _loc5_].currentFrame - 1;
            _loc2_["Headphone" + _loc5_].y = SizeDataClass.bodyDefault_y["Headphone"] + _loc22_;
            _loc2_["HeadphoneNeck" + _loc5_].y = SizeDataClass.bodyDefault_y["HeadphoneNeck"] + _loc22_;
            _loc2_["handm0_" + _loc5_].y = SizeDataClass.bodyDefault_y["hand"] + _loc27_ + _loc22_;
            _loc2_["handm1_" + _loc5_].y = SizeDataClass.bodyDefault_y["hand"] + _loc27_ + _loc22_;
            new MeterPersent(Move_DataClass.AshiFrameData[_loc28_]["_ashiY_Y"],Move_DataClass.AshiFrameData[_loc28_]["_ashiY_H"],"AshiHeight",param1);
            _loc2_["ashi" + _loc5_].y = SizeDataClass.bodyDefault_y["ashi"] + _loc23_ + MeterPersent.MeterPersentNum + _loc24_;
            _loc2_["ashi" + _loc5_].shiri.actual.shiri.y = _loc25_;
            _loc2_["ashi" + _loc5_].shiri.actual.shiri.x = _loc26_;
            new MeterPersent(Move_DataClass.AshiFrameData[_loc28_]["douH_Y"] / 10,Move_DataClass.AshiFrameData[_loc28_]["douH_H"] / 10,"douHeight",param1);
            if(_loc5_ == 0)
            {
               _loc2_.ashi0.x = SizeDataClass.bodyDefault_y["ashi0X"] + MeterPersent.MeterPersentNum;
            }
            else
            {
               _loc2_.ashi1.x = SizeDataClass.bodyDefault_y["ashi1X"] + MeterPersent.MeterPersentNum * -1;
            }
            _loc5_++;
         }
         new Huku_TightsGarter(param1);
         new Huku_HanePosi(param1);
         new Huku_TailPosi(param1);
         new MeterPersent(180,-180,"Rmove",param1);
         _loc2_.rotation = MeterPersent.MeterPersentNum;
         if(!_loc4_["CharaFilterEmotion"]["_check"])
         {
            MenuClass.charaAddDepth[param1].charaMae.rotation = MeterPersent.MeterPersentNum;
         }
         new Move_BodyX(param1);
         var _loc29_:Number = 0;
         if(_loc4_["Rmove"]["_meter"] >= 90 && _loc4_["Rmove"]["_meter"] <= 170)
         {
            _loc29_ = 80 - (170 - _loc4_["Rmove"]["_meter"]);
            _loc29_ = 500 - 500 * (_loc29_ / 80);
         }
         else if(_loc4_["Rmove"]["_meter"] <= 270 && _loc4_["Rmove"]["_meter"] >= 190)
         {
            _loc29_ = 80 - (_loc4_["Rmove"]["_meter"] - 190);
            _loc29_ = 500 - 500 * (_loc29_ / 80);
         }
         else if(_loc4_["Rmove"]["_meter"] <= 90 && _loc4_["Rmove"]["_meter"] >= 0)
         {
            _loc29_ = 90 - (90 - _loc4_["Rmove"]["_meter"]);
            _loc29_ = 500 + 200 - 200 * (_loc29_ / 90);
         }
         else if(_loc4_["Rmove"]["_meter"] >= 270 && _loc4_["Rmove"]["_meter"] <= 360)
         {
            _loc29_ = 360 - _loc4_["Rmove"]["_meter"];
            _loc29_ = 500 + 200 - 200 * (_loc29_ / 90);
         }
         _loc3_.charaSelect.y = SizeDataClass.bodyDefault_y["charaSelect"] + _loc29_;
      }
   }
}
