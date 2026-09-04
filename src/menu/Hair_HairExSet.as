package menu
{
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import parameter.Dress_data;
   import system.MeterPersent;
   import system.MeterPersentRibon;
   
   public class Hair_HairExSet
   {
       
      
      public function Hair_HairExSet()
      {
         super();
      }
      
      public static function setFc(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Matrix = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:MovieClip = null;
         var _loc21_:MovieClip = null;
         try
         {
            _loc4_ = MenuClass.charaAdd[param1];
            _loc5_ = MenuClass.charaData[param1];
            try
            {
               if(param3 == "hairSet")
               {
                  Dress_data.DressCharaData[param1]["HairEx" + param2][0]["_color0"][1] = 2;
                  Dress_data.DressCharaData[param1]["HairEx" + param2][0]["_color1"][1] = 2;
               }
            }
            catch(myError:Error)
            {
            }
            if(_loc5_["HairExPlus"]["_visible"][param2])
            {
               if(_loc5_["HairExAdd" + param2]["_add0"] == 2 || _loc5_["HairExAdd" + param2]["_add0"] == 3)
               {
                  if(_loc5_["HairEx" + param2]["_depth"] == 2)
                  {
                     _loc5_["HairEx" + param2]["_depth"] = 1;
                     new Tab_SetClass();
                  }
               }
               if(_loc5_["Hat"]["_visible"][0] && _loc5_["Hat"]["_hair3"] == 0)
               {
                  try
                  {
                     _loc4_["HairEx" + param2 + "_0"].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_1"].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  try
                  {
                     _loc4_["HairEx" + param2 + "_0"].visible = true;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_1"].visible = true;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               _loc11_ = true;
               if(Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age" || Main.publishMode == "download" || Main.publishMode == "download_test" || Main.domainName == "pochi.x.fc2.com" || Main.domainName == "pochi.eek.jp")
               {
                  _loc11_ = false;
               }
               _loc12_ = false;
               _loc6_ = false;
               _loc7_ = false;
               if(_loc5_["HairEx" + param2]["_reversal2"] == 0 || _loc5_["HairEx" + param2]["_reversal2"] == 2)
               {
                  if(_loc4_["HairEx" + param2 + "_0"] == undefined || param3 == "paste" || param3 == "move")
                  {
                     if(param3 == "paste" || param3 == "move")
                     {
                        deleteFc(param1,param2,0);
                     }
                     (_loc20_ = new MovieClip()).name = "HairEx" + param2 + "_0";
                     _loc20_ = new Chara_Loading.HairExClass();
                     if(_loc5_["HairExAdd" + param2]["_add0"] == 0)
                     {
                        _loc4_.addChild(_loc20_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 1)
                     {
                        _loc4_.head.addChild(_loc20_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 2)
                     {
                        _loc4_.head.Bangs.addChild(_loc20_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 3)
                     {
                        _loc4_.HairBack.hairBack.addChild(_loc20_);
                     }
                     _loc4_["HairEx" + param2 + "_0"] = _loc20_;
                     _loc4_["HairEx" + param2 + "_0"].name = "HairEx" + param2 + "_0";
                     _loc4_["HairEx" + param2 + "_0"].y = -608;
                     if(_loc11_)
                     {
                        new HukuClickClass(_loc4_["HairEx" + param2 + "_0"]);
                     }
                     new Stage_MoveClass(_loc4_["HairEx" + param2 + "_0"]);
                     _loc12_ = true;
                  }
                  else if(param3 == "depth" || param3 == "move" || param3 == "hairSet" || param3 == "reset")
                  {
                     _loc12_ = true;
                  }
                  _loc4_["HairEx" + param2 + "_" + 0].HairEx0.gotoAndStop(_loc5_["HairEx" + param2]["_menu"] + 2);
                  if(param2 == 0 || param2 == 1 || param2 == 2 || param2 == 3 || param2 == 4)
                  {
                     _loc8_ = 0;
                     while(_loc8_ <= Main.RibonhukusuuNum)
                     {
                        Huku_RibonSet.setFc(param1,_loc8_,"depth");
                        _loc8_++;
                     }
                  }
                  _loc6_ = true;
               }
               else
               {
                  deleteFc(param1,param2,0);
               }
               if(_loc5_["HairEx" + param2]["_reversal2"] == 0 || _loc5_["HairEx" + param2]["_reversal2"] == 1)
               {
                  if(_loc4_["HairEx" + param2 + "_1"] == undefined || param3 == "paste" || param3 == "move")
                  {
                     if(param3 == "paste" || param3 == "move")
                     {
                        deleteFc(param1,param2,1);
                     }
                     (_loc21_ = new MovieClip()).name = "HairEx" + param2 + "_1";
                     _loc21_ = new Chara_Loading.HairExClass();
                     if(_loc5_["HairExAdd" + param2]["_add0"] == 0)
                     {
                        _loc4_.addChild(_loc21_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 1)
                     {
                        _loc4_.head.addChild(_loc21_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 2)
                     {
                        _loc4_.head.Bangs.addChild(_loc21_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 3)
                     {
                        _loc4_.HairBack.hairBack.addChild(_loc21_);
                     }
                     _loc4_["HairEx" + param2 + "_1"] = _loc21_;
                     _loc4_["HairEx" + param2 + "_1"].name = "HairEx" + param2 + "_1";
                     _loc4_["HairEx" + param2 + "_1"].y = -608;
                     if(_loc11_)
                     {
                        new HukuClickClass(_loc4_["HairEx" + param2 + "_1"]);
                     }
                     new Stage_MoveClass(_loc4_["HairEx" + param2 + "_1"]);
                     _loc12_ = true;
                  }
                  else if(param3 == "depth" || param3 == "move" || param3 == "hairSet" || param3 == "reset")
                  {
                     _loc12_ = true;
                  }
                  _loc4_["HairEx" + param2 + "_" + 1].HairEx0.gotoAndStop(_loc5_["HairEx" + param2]["_menu"] + 2);
                  if(param2 == 0 || param2 == 1 || param2 == 2 || param2 == 3 || param2 == 4)
                  {
                     _loc8_ = 0;
                     while(_loc8_ <= Main.RibonhukusuuNum)
                     {
                        Huku_RibonSet.setFc(param1,_loc8_,"depth");
                        _loc8_++;
                     }
                  }
                  _loc7_ = true;
               }
               else
               {
                  deleteFc(param1,param2,1);
               }
               if(_loc12_)
               {
                  _loc8_ = 0;
                  while(_loc8_ <= Main.hukusuuNum)
                  {
                     try
                     {
                        DepthSetFc2(param1,Main.hukusuuNum - _loc8_,1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        DepthSetFc2(param1,Main.hukusuuNum - _loc8_,0);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc8_++;
                  }
               }
               if(param3 == "paste" || param3 == "pasteRibon")
               {
                  if(_loc5_["HairExScaleY" + param2]["_meter"] != _loc5_["HairExScaleX" + param2]["_meter"])
                  {
                     MenuClass.systemData["LinkHairExScale"]["_flag"] = false;
                  }
               }
               if(MenuClass.systemData["LinkHairExScale"]["_flag"] && (MenuClass._nowTabName == "HairExScaleX" || param3 == "random"))
               {
                  _loc5_["HairExScaleY" + param2]["_meter"] = _loc5_["HairExScaleX" + param2]["_meter"];
               }
               if(MenuClass.systemData["LinkHairExLine"]["_flag"] && (MenuClass._nowTabName == "HairExScaleX" || param3 == "random"))
               {
                  _loc8_ = 0;
                  for(; _loc8_ <= 1; _loc8_++)
                  {
                     try
                     {
                        if(_loc8_ == 0 && _loc6_ || _loc8_ == 1 && _loc7_)
                        {
                           if(_loc5_["HairExScaleX" + param2]["_meter"] >= 70)
                           {
                              _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color2_0.gotoAndStop(1);
                              _loc5_["HairExLine" + param2]["_menu"] = 1;
                           }
                           else if(_loc5_["HairExScaleX" + param2]["_meter"] >= 50)
                           {
                              _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color2_0.gotoAndStop(2);
                              _loc5_["HairExLine" + param2]["_menu"] = 2;
                           }
                           else if(_loc5_["HairExScaleX" + param2]["_meter"] >= 30)
                           {
                              _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color2_0.gotoAndStop(3);
                              _loc5_["HairExLine" + param2]["_menu"] = 3;
                           }
                           else if(_loc5_["HairExScaleX" + param2]["_meter"] >= 10)
                           {
                              _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color2_0.gotoAndStop(4);
                              _loc5_["HairExLine" + param2]["_menu"] = 4;
                           }
                           else if(_loc5_["HairExScaleX" + param2]["_meter"] >= 0)
                           {
                              _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color2_0.gotoAndStop(5);
                              _loc5_["HairExLine" + param2]["_menu"] = 5;
                           }
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  _loc8_ = 0;
                  for(; _loc8_ <= 1; _loc8_++)
                  {
                     try
                     {
                        if(_loc8_ == 0 && _loc6_ || _loc8_ == 1 && _loc7_)
                        {
                           if(_loc5_["HairExLine" + param2]["_menu"] == 0)
                           {
                              _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color2_0.gotoAndStop(6);
                           }
                           else
                           {
                              _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color2_0.gotoAndStop(_loc5_["HairExLine" + param2]["_menu"]);
                           }
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
               _loc13_ = new Matrix();
               if(_loc5_["HairExAdd" + param2]["_add0"] == 0)
               {
                  new MeterPersentRibon(200,-250,param1,"HairExY",param2);
                  _loc16_ = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  _loc14_ = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  _loc15_ = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 1)
               {
                  new MeterPersentRibon(199.5,-250.5,param1,"HairExY",param2);
                  _loc16_ = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  _loc14_ = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  _loc15_ = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 2)
               {
                  new MeterPersentRibon(201.5,-248.5,param1,"HairExY",param2);
                  _loc16_ = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  _loc14_ = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  _loc15_ = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 3)
               {
                  new MeterPersentRibon(200,-250,param1,"HairExY",param2);
                  _loc16_ = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  _loc14_ = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  _loc15_ = MeterPersentRibon.MeterPersentNum;
               }
               new MeterPersent(-0.16,0.16,"HeadScale",param1);
               _loc17_ = MeterPersent.MeterPersentNum;
               new MeterPersent(1.38,0.85,"BodyHeight",param1);
               _loc18_ = MeterPersent.MeterPersentNum;
               try
               {
                  if(_loc6_)
                  {
                     new MeterPersentRibon(1.5,-1.5,param1,"HairExScaleB",param2);
                     _loc13_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.transform.matrix = _loc13_;
                     new MeterPersentRibon(200,-200,param1,"HairExX",param2);
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.x = MeterPersentRibon.MeterPersentNum;
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.scaleX = _loc14_;
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.scaleY = _loc15_;
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.y = _loc16_;
                     if(_loc5_["HairExAdd" + param2]["_add0"] == 0)
                     {
                        _loc4_["HairEx" + param2 + "_" + 0].scaleX = _loc4_["HairEx" + param2 + "_" + 0].scaleY = _loc18_ + _loc17_;
                     }
                     else
                     {
                        _loc4_["HairEx" + param2 + "_" + 0].scaleX = _loc4_["HairEx" + param2 + "_" + 0].scaleY = 1;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(_loc7_)
                  {
                     new MeterPersentRibon(-1.5,1.5,param1,"HairExScaleB",param2);
                     _loc13_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.transform.matrix = _loc13_;
                     new MeterPersentRibon(-200,200,param1,"HairExX",param2);
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.x = MeterPersentRibon.MeterPersentNum;
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.scaleX = _loc14_ * -1;
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.scaleY = _loc15_;
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.y = _loc16_;
                     if(_loc5_["HairExAdd" + param2]["_add0"] == 0)
                     {
                        _loc4_["HairEx" + param2 + "_" + 1].scaleX = _loc4_["HairEx" + param2 + "_" + 1].scaleY = _loc18_ + _loc17_;
                     }
                     else
                     {
                        _loc4_["HairEx" + param2 + "_" + 1].scaleX = _loc4_["HairEx" + param2 + "_" + 1].scaleY = 1;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               new MeterPersentRibon(360,0,param1,"HairExRotationPlus",param2);
               _loc19_ = MeterPersentRibon.MeterPersentNum;
               _loc8_ = 0;
               while(_loc8_ <= 1)
               {
                  if(_loc8_ == 0 && _loc6_ || _loc8_ == 1 && _loc7_)
                  {
                     if(_loc5_["HairEx" + param2]["_shadow"] == 0)
                     {
                        _loc9_ = 0;
                        while(_loc9_ <= 1)
                        {
                           _loc10_ = 0;
                           while(_loc10_ <= 2)
                           {
                              try
                              {
                                 _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0["kage" + _loc10_ + "_" + _loc9_].visible = false;
                              }
                              catch(myError:Error)
                              {
                              }
                              _loc10_++;
                           }
                           _loc9_++;
                        }
                     }
                     else
                     {
                        _loc9_ = 0;
                        while(_loc9_ <= 1)
                        {
                           _loc10_ = 0;
                           while(_loc10_ <= 2)
                           {
                              try
                              {
                                 _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0["kage" + _loc10_ + "_" + _loc9_].visible = true;
                              }
                              catch(myError:Error)
                              {
                              }
                              _loc10_++;
                           }
                           _loc9_++;
                        }
                     }
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color0_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color1_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color2_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.kage0_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.kage1_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  _loc8_++;
               }
               new Hair_ExRotation(param1,param2);
               new Hair_Sen(param1);
               new Chara_ColorClass(param1,"HairEx" + param2);
               new Move_Head(param1);
            }
            else
            {
               deleteFc(param1,param2,0);
               deleteFc(param1,param2,1);
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function deleteFc(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         _loc4_ = MenuClass.charaAdd[param1];
         _loc5_ = MenuClass.charaData[param1];
         try
         {
            _loc4_.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_.head.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_.head.Bangs.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_.HairBack.hairBack.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_["HairEx" + param2 + "_" + param3] = null;
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function DepthSetFc2(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         _loc4_ = MenuClass.charaAdd[param1];
         if((_loc5_ = MenuClass.charaData[param1])["HairExAdd" + param2]["_add0"] == 0)
         {
            if(_loc5_["HairEx" + param2]["_depth"] == 2)
            {
               if(_loc4_.getChildIndex(_loc4_.Headphone1) > _loc4_.getChildIndex(_loc4_["HairEx" + param2 + "_" + param3]))
               {
                  _loc4_.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.getChildIndex(_loc4_.Headphone1));
               }
               else
               {
                  _loc4_.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.getChildIndex(_loc4_.Headphone1) + 1);
               }
            }
            else if(_loc5_["HairEx" + param2]["_depth"] == 1)
            {
               if(_loc4_.getChildIndex(_loc4_.mune) > _loc4_.getChildIndex(_loc4_["HairEx" + param2 + "_" + param3]))
               {
                  _loc4_.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.getChildIndex(_loc4_.mune));
               }
               else
               {
                  _loc4_.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.getChildIndex(_loc4_.mune) + 1);
               }
            }
            else if(_loc5_["HairEx" + param2]["_depth"] == 0)
            {
               if(_loc4_.getChildIndex(_loc4_.HatBack) > _loc4_.getChildIndex(_loc4_["HairEx" + param2 + "_" + param3]))
               {
                  _loc4_.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.getChildIndex(_loc4_.HatBack));
               }
               else
               {
                  _loc4_.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.getChildIndex(_loc4_.HatBack) + 1);
               }
            }
         }
         else if(_loc5_["HairExAdd" + param2]["_add0"] == 1)
         {
            if(_loc5_["HairEx" + param2]["_depth"] == 2)
            {
               if(_loc4_.head.getChildIndex(_loc4_.head.Headphone0) > _loc4_.head.getChildIndex(_loc4_["HairEx" + param2 + "_" + param3]))
               {
                  _loc4_.head.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.head.getChildIndex(_loc4_.head.Headphone0));
               }
               else
               {
                  _loc4_.head.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.head.getChildIndex(_loc4_.head.Headphone0) + 1);
               }
            }
            else if(_loc5_["HairEx" + param2]["_depth"] == 1)
            {
               if(_loc4_.head.getChildIndex(_loc4_.head.hairOption) > _loc4_.head.getChildIndex(_loc4_["HairEx" + param2 + "_" + param3]))
               {
                  _loc4_.head.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.head.getChildIndex(_loc4_.head.hairOption));
               }
               else
               {
                  _loc4_.head.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.head.getChildIndex(_loc4_.head.hairOption) + 1);
               }
            }
            else if(_loc5_["HairEx" + param2]["_depth"] == 0)
            {
               if(_loc4_.head.getChildIndex(_loc4_.head.hair) > _loc4_.head.getChildIndex(_loc4_["HairEx" + param2 + "_" + param3]))
               {
                  _loc4_.head.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.head.getChildIndex(_loc4_.head.hair));
               }
               else
               {
                  _loc4_.head.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.head.getChildIndex(_loc4_.head.hair) + 1);
               }
            }
         }
         else if(_loc5_["HairExAdd" + param2]["_add0"] == 2)
         {
            if(_loc5_["HairEx" + param2]["_depth"] == 1)
            {
               if(_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap1) > _loc4_.head.Bangs.getChildIndex(_loc4_["HairEx" + param2 + "_" + param3]))
               {
                  _loc4_.head.Bangs.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap1));
               }
               else
               {
                  _loc4_.head.Bangs.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap1) + 1);
               }
            }
            else if(_loc5_["HairEx" + param2]["_depth"] == 0)
            {
               if(_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap0) > _loc4_.head.Bangs.getChildIndex(_loc4_["HairEx" + param2 + "_" + param3]))
               {
                  _loc4_.head.Bangs.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap0));
               }
               else
               {
                  _loc4_.head.Bangs.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap0) + 1);
               }
            }
         }
         else if(_loc5_["HairExAdd" + param2]["_add0"] == 3)
         {
            if(_loc5_["HairEx" + param2]["_depth"] == 1)
            {
               if(_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap1) > _loc4_.HairBack.hairBack.getChildIndex(_loc4_["HairEx" + param2 + "_" + param3]))
               {
                  _loc4_.HairBack.hairBack.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap1));
               }
               else
               {
                  _loc4_.HairBack.hairBack.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap1) + 1);
               }
            }
            else if(_loc5_["HairEx" + param2]["_depth"] == 0)
            {
               if(_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap0) > _loc4_.HairBack.hairBack.getChildIndex(_loc4_["HairEx" + param2 + "_" + param3]))
               {
                  _loc4_.HairBack.hairBack.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap0));
               }
               else
               {
                  _loc4_.HairBack.hairBack.setChildIndex(_loc4_["HairEx" + param2 + "_" + param3],_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap0) + 1);
               }
            }
         }
      }
   }
}
