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
         var hairScaleX:Number = NaN;
         var hairScaleY:Number = NaN;
         var hairPosXLeft:Number = NaN;
         var hairPosXRight:Number = NaN;
         var hairPosY:Number = NaN;
         var hairAlpha:Number = 1;
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
                     // _loc20_.cacheAsBitmap = true;
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
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 99)
                     {
                        _loc4_.mune.addChild(_loc20_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 98)
                     {
                        _loc4_.dou.addChild(_loc20_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 95)
                     {
                        _loc4_.ashi0.thigh.actual.thigh.addChild(_loc20_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 96)
                     {
                        if (_loc4_.ashi0.leg != null && _loc4_.ashi0.leg.actual.leg != null) {
                           _loc4_.ashi0.leg.actual.leg.addChild(_loc20_);
                        }
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 97)
                     {
                        _loc4_.ashi0.foot.actual.foot.addChild(_loc20_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 94)
                     {
                        /* Left Hand */
                        _loc4_.handm1_0.hand.arm0.addChild(_loc20_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 93)
                     {
                        /* Left Lower Arm */
                        _loc4_.handm1_0.hand.addChild(_loc20_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 92)
                     {
                        /* Left Upper Arm */
                        _loc4_.handm0_0.hand.addChild(_loc20_);
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

                  /* Skip doing this for _reversal2 == 0, since we're going to do it again anyways later. */
                  if((_loc5_["HairEx" + param2]["_reversal2"] == 1) && (param2 == 0 || param2 == 1 || param2 == 2 || param2 == 3 || param2 == 4))
                  {
                     var ribbonUpdateRequired = false;
                     for (var i = 0; i <= Main.RibonhukusuuNum; i++) {
                        if (!_loc5_["RibonAdd" + i]) continue;
                        if (_loc5_["RibonAdd" + i]["add0"] >= 6 && _loc5_["RibonAdd" + i]["add0"] <= 10) ribbonUpdateRequired = true;
                     }

                     if (ribbonUpdateRequired) {
                        _loc8_ = 0;
                        while(_loc8_ <= Main.RibonhukusuuNum)
                        {      
                           Huku_RibonSet.setFc(param1,_loc8_,"depth");
                           _loc8_++;
                        }
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
                     // _loc21_.cacheAsBitmap = true;
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
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 99)
                     {
                        _loc4_.mune.addChild(_loc21_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 98)
                     {
                        _loc4_.dou.addChild(_loc21_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 95)
                     {
                        _loc4_.ashi1.thigh.actual.thigh.addChild(_loc21_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 96)
                     {
                        if (_loc4_.ashi1.leg != null && _loc4_.ashi1.leg.actual.leg != null) {
                           _loc4_.ashi1.leg.actual.leg.addChild(_loc21_);
                        }
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 97)
                     {
                        _loc4_.ashi1.foot.actual.foot.addChild(_loc21_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 94)
                     {
                        /* Right Hand */
                        _loc4_.handm1_1.hand.arm0.addChild(_loc21_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 93)
                     {
                        /* Right Lower Arm */
                        _loc4_.handm1_1.hand.addChild(_loc21_);
                     }
                     else if(_loc5_["HairExAdd" + param2]["_add0"] == 92)
                     {
                        /* Right Upper Arm */
                        _loc4_.handm0_1.hand.addChild(_loc21_);
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
                     
                     var ribbonUpdateRequired = false;
                     for (var i = 0; i <= Main.RibonhukusuuNum; i++) {
                        if (!_loc5_["RibonAdd" + i]) continue;
                        if (_loc5_["RibonAdd" + i]["add0"] >= 6 && _loc5_["RibonAdd" + i]["add0"] <= 10) ribbonUpdateRequired = true;
                     }

                     if (ribbonUpdateRequired) {
                        _loc8_ = 0;
                        while(_loc8_ <= Main.RibonhukusuuNum)
                        {      
                           Huku_RibonSet.setFc(param1,_loc8_,"depth");
                           _loc8_++;
                        }
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
                        Main.logError(myError, "in Hair_HairExSet.setFc(" + param1 + ", ...)");
                     }
                     try
                     {
                        DepthSetFc2(param1,Main.hukusuuNum - _loc8_,0);
                     }
                     catch(myError:Error)
                     {
                        Main.logError(myError, "in Hair_HairExSet.setFc(" + param1 + ", ...)");
                     }
                     _loc8_++;
                  }

                  if (_loc5_["HairExAdd" + param2]["_add0"] === 92) {
                     PartLayering.fixup(param1, ["upperArm"]);
                  } else if (_loc5_["HairExAdd" + param2]["_add0"] === 93) {
                     PartLayering.fixup(param1, ["lowerArm"]);
                  } else if (_loc5_["HairExAdd" + param2]["_add0"] === 94) {
                     PartLayering.fixup(param1, ["hand"]);
                  } else if (_loc5_["HairExAdd" + param2]["_add0"] === 95) {
                     PartLayering.fixup(param1, ["thigh"]);
                  } else if (_loc5_["HairExAdd" + param2]["_add0"] === 96) {
                     PartLayering.fixup(param1, ["leg"]);
                  } else if (_loc5_["HairExAdd" + param2]["_add0"] === 97) {
                     PartLayering.fixup(param1, ["foot"]);
                  } else if (_loc5_["HairExAdd" + param2]["_add0"] === 98) {
                     PartLayering.fixup(param1, ["dou"]);
                  } else if (_loc5_["HairExAdd" + param2]["_add0"] === 99) {
                     PartLayering.fixup(param1, ["mune"]);
                  }

                  // PartLayering.fixup(param1, ["mune", "dou", "thigh", "leg", "foot", "lowerArm", "upperArm", "hand"]);

                  // sortModAttachSprites(param1, [92, 93, 94, 95, 96, 97, 98, 99]);
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

               new MeterPersentRibon(200,-200,param1,"HairExX",param2);
               hairPosXLeft = MeterPersentRibon.MeterPersentNum;

               new MeterPersentRibon(-200,200,param1,"HairExX",param2);
               hairPosXRight = MeterPersentRibon.MeterPersentNum;

               new MeterPersentRibon(0,1,param1,"HairExAlpha",param2);
               hairAlpha = MeterPersentRibon.MeterPersentNum;

               if(_loc5_["HairExAdd" + param2]["_add0"] == 0)
               {
                  new MeterPersentRibon(200,-250,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 1)
               {
                  new MeterPersentRibon(199.5,-250.5,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 2)
               {
                  new MeterPersentRibon(201.5,-248.5,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 3)
               {
                  new MeterPersentRibon(200,-250,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 99)
               {
                  new MeterPersentRibon(-100, -700,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 98)
               {
                  new MeterPersentRibon(0, -600,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 95)
               {
                  new MeterPersentRibon(140, -540,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 96)
               {
                  new MeterPersentRibon(220, -380,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 97)
               {
                  new MeterPersentRibon(300, -300,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 94)
               {
                  new MeterPersentRibon(-500, 500, param1,"HairExX",param2);
                  hairPosXLeft = MeterPersentRibon.MeterPersentNum;

                  new MeterPersentRibon(500, -500, param1,"HairExX",param2);
                  hairPosXRight = MeterPersentRibon.MeterPersentNum;

                  new MeterPersentRibon(500, -500, param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;

                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;

                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum * -1;
               }
               else if(_loc5_["HairExAdd" + param2]["_add0"] == 92 || _loc5_["HairExAdd" + param2]["_add0"] == 93)
               {
                  new MeterPersentRibon(-515, 485, param1,"HairExX",param2);
                  hairPosXLeft = MeterPersentRibon.MeterPersentNum;

                  new MeterPersentRibon(515, -485, param1,"HairExX",param2);
                  hairPosXRight = MeterPersentRibon.MeterPersentNum;

                  new MeterPersentRibon(650, -350, param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;

                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;

                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum * -1;
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
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.x = hairPosXLeft;
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.scaleX = hairScaleX;
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.scaleY = hairScaleY;
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.y = hairPosY;
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.alpha = hairAlpha;
                     if(_loc5_["HairExAdd" + param2]["_add0"] == 0)
                     {
                        _loc4_["HairEx" + param2 + "_" + 0].scaleX = _loc4_["HairEx" + param2 + "_" + 0].scaleY = _loc18_ + _loc17_;
                     }
                     else
                     {
                        _loc4_["HairEx" + param2 + "_" + 0].scaleX = _loc4_["HairEx" + param2 + "_" + 0].scaleY = 1;
                     }

                     if (_loc5_["HairExAdd" + param2]["_add0"] == 93) {
                        _loc4_["HairEx" + param2 + "_" + 0].x = _loc4_.handm1_0.hand.arm0.x;
                        _loc4_["HairEx" + param2 + "_" + 0].y = _loc4_.handm1_0.hand.arm0.y;
                        _loc4_["HairEx" + param2 + "_" + 0].rotation = _loc4_.handm1_0.hand.arm1.currentFrame;
                     } else if (_loc5_["HairExAdd" + param2]["_add0"] == 94) {
                        _loc4_["HairEx" + param2 + "_" + 0].x = -15;
                        _loc4_["HairEx" + param2 + "_" + 0].y = 100;
                        _loc4_["HairEx" + param2 + "_" + 0].rotation = ((_loc4_.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
                     }
                  }
               }
               catch(myError:Error)
               {
                  Main.logError(myError, "in Hair_HairExSet.setFc(" + param1 + ", ...)");
               }
               try
               {
                  if(_loc7_)
                  {
                     new MeterPersentRibon(-1.5,1.5,param1,"HairExScaleB",param2);
                     _loc13_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.transform.matrix = _loc13_;
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.x = hairPosXRight;
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.scaleX = hairScaleX * -1;
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.scaleY = hairScaleY;
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.y = hairPosY;
                     _loc4_["HairEx" + param2 + "_" + 1].HairEx0.alpha = hairAlpha;
                     if(_loc5_["HairExAdd" + param2]["_add0"] == 0)
                     {
                        _loc4_["HairEx" + param2 + "_" + 1].scaleX = _loc4_["HairEx" + param2 + "_" + 1].scaleY = _loc18_ + _loc17_;
                     }
                     else if (_loc5_["HairExAdd" + param2]["_add0"] >= 92 && _loc5_["HairExAdd" + param2]["_add0"] <= 97) {
                        _loc4_["HairEx" + param2 + "_" + 1].scaleX = -1;
                        _loc4_["HairEx" + param2 + "_" + 1].scaleY = 1;
                     }
                     else
                     {
                        _loc4_["HairEx" + param2 + "_" + 1].scaleX = _loc4_["HairEx" + param2 + "_" + 1].scaleY = 1;
                     }

                     if (_loc5_["HairExAdd" + param2]["_add0"] == 93) {
                        _loc4_["HairEx" + param2 + "_" + 1].x = _loc4_.handm1_1.hand.arm0.x;
                        _loc4_["HairEx" + param2 + "_" + 1].y = _loc4_.handm1_1.hand.arm0.y;
                        _loc4_["HairEx" + param2 + "_" + 1].rotation = _loc4_.handm1_1.hand.arm1.currentFrame;
                     } else if (_loc5_["HairExAdd" + param2]["_add0"] == 94) {
                        _loc4_["HairEx" + param2 + "_" + 1].x = -15;
                        _loc4_["HairEx" + param2 + "_" + 1].y = 100;
                        _loc4_["HairEx" + param2 + "_" + 1].rotation = ((_loc4_.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
                     }
                  }
               }
               catch(myError:Error)
               {
                  Main.logError(myError, "in Hair_HairExSet.setFc(" + param1 + ", ...)");
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
            Main.logError(myError, "in Hair_HairExSet.setFc(" + param1 + ", ...)");
         }

         try {
            updateLegs(param1);
         }
         catch(myError:Error)
         {
            Main.logError(myError, "in Hair_HairExSet.setFc(" + param1 + ", ...)");
         }
      }

      public static function collectSpriteGroups (character: int) : Object {
         var charaAdd = MenuClass.charaAdd[character];
         var charaData = MenuClass.charaData[character];
         var curSprite = null;
         var curAttach = null;
         var spriteGroups = {};
         var curDepth = null;

         for (var i = 0; i <= Main.hukusuuNum; i++) {
            try  {
               curAttach = charaData["HairExAdd" + i]["_add0"];
               curDepth = charaData["HairEx" + i]["_depth"];

               if (!spriteGroups[curAttach]) {
                  spriteGroups[curAttach] = {};
               }

               if (!spriteGroups[curAttach][curDepth]) {
                  spriteGroups[curAttach][curDepth] = [];
               }

               if (charaData["HairEx" + i]["_reversal2"] == 0 || charaData["HairEx" + i]["_reversal2"] == 2) {
                  curSprite = charaAdd["HairEx" + i + "_0"];
                  if (curSprite && curSprite.parent) spriteGroups[curAttach][curDepth].push([curSprite, i]);
               }

               if (charaData["HairEx" + i]["_reversal2"] == 0 || charaData["HairEx" + i]["_reversal2"] == 1) {
                  curSprite = charaAdd["HairEx" + i + "_1"];
                  if (curSprite && curSprite.parent) spriteGroups[curAttach][curDepth].push([curSprite, i]);
               }
            } 
            catch(myError:Error)
            {
               Main.logError(myError, "in Hair_HairExSet.collectSpriteGroups(" + character + ")");
            }
         }

         return spriteGroups;
      }

      public static function sortModAttachSprites (character: int, sortGroups: Array) : void {
         var spriteGroups = collectSpriteGroups(character);

         for (var i = 0; i < sortGroups.length; i++) {
            var groupNum = sortGroups[i];
            if (groupNum < 92 || !spriteGroups[groupNum]) continue;

            for (var depth:Object in spriteGroups[groupNum]) {
               PartLayering.sortSpriteIndices(spriteGroups[groupNum][depth], "character " + character + " attach point " + groupNum + " depth " + depth + " hair");
               // PartLayering.sortSpriteIndices(spriteGroups[groupNum][depth][1], "character " + character + " attach point " + groupNum + " depth " + depth + " group 1 hair");
            }
         }
      }

      public static function forEachHairSprite(character: int, leftFn = null, rightFn = null) : void {
         var curSprite = null;
         var charaAdd = MenuClass.charaAdd[character];
         var charaData = MenuClass.charaData[character];

         for (var i = 0; i <= Main.hukusuuNum; i++) {
            try  {
               if (charaData["HairEx" + i]["_reversal2"] == 0 || charaData["HairEx" + i]["_reversal2"] == 2) {
                  curSprite = charaAdd["HairEx" + i + "_0"];
                  if(curSprite && leftFn)
                  {
                     leftFn(curSprite, i, charaData["HairExAdd" + i]["_add0"], charaAdd, charaData);
                  }
               } 
            } catch(myError:Error) {
               Main.logError(myError, "in Hair_HairExSet.forEachHairSprite(" + character + ")");
            }

            try  {
               if (charaData["HairEx" + i]["_reversal2"] == 0 || charaData["HairEx" + i]["_reversal2"] == 1) {
                  curSprite = charaAdd["HairEx" + i + "_1"];
                  if(curSprite && rightFn)
                  {
                     rightFn(curSprite, i, charaData["HairExAdd" + i]["_add0"], charaAdd, charaData);
                  }
               }
            }
            catch(myError:Error)
            {
               Main.logError(myError, "in Hair_HairExSet.forEachHairSprite(" + character + ")");
            }
         }
      }

      public static function updateArmRotation(character: int, armIdx: int, x, y, rot) : void
      {
         forEachHairSprite(character, function (curSprite, i, attachType, charaAdd, charaData) {
            if (attachType == 92) {
               charaAdd.handm0_0.hand.addChild(curSprite);
            } else if ((attachType == 93) && (armIdx == 0)) {
               charaAdd.handm1_0.hand.addChild(curSprite);
               curSprite.x = x;
               curSprite.y = y;
               curSprite.rotation = rot;
            } 
         }, function (curSprite, i, attachType, charaAdd, charaData) {
            if (attachType == 92) {
               charaAdd.handm0_1.hand.addChild(curSprite);
            } else if ((attachType == 93) && (armIdx == 1)) {
               charaAdd.handm1_1.hand.addChild(curSprite);
               curSprite.x = x;
               curSprite.y = y;
               curSprite.rotation = rot;
            }
         });

         // sortModAttachSprites(character, [92, 93]);
      }

      public static function updateHandRotation(character: int) : void
      {
         forEachHairSprite(character, function (curSprite, i, attachType, charaAdd, charaData) {
            if (attachType == 94) {
               charaAdd.handm1_0.hand.arm0.addChild(curSprite);
               curSprite.rotation = ((charaAdd.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
            }
         }, function (curSprite, i, attachType, charaAdd, charaData) {
            if (attachType == 94) {
               charaAdd.handm1_1.hand.arm0.addChild(curSprite);
               curSprite.rotation = ((charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
            }
         });

         // sortModAttachSprites(character, [94]);
      }

      public static function reloadArmRotation(character: int) : void
      {
         forEachHairSprite(character, function (curSprite, i, attachType, charaAdd, charaData) {
            if (attachType == 92) {
               charaAdd.handm0_0.hand.addChild(curSprite);
            } else if (attachType == 93) {
               charaAdd.handm1_0.hand.addChild(curSprite);
               curSprite.x = charaAdd.handm1_0.hand.arm0.x;
               curSprite.y = charaAdd.handm1_0.hand.arm0.y;
               curSprite.rotation = charaAdd.handm1_0.hand.arm1.currentFrame;
            } else if (attachType == 94) {
               charaAdd.handm1_0.hand.arm0.addChild(curSprite);
               curSprite.rotation = ((charaAdd.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
            } 
         }, function (curSprite, i, attachType, charaAdd, charaData) {
            if (attachType == 92) {
               charaAdd.handm0_1.hand.addChild(curSprite);
               curSprite.scaleX = -1;
            } else if (attachType == 93) {
               charaAdd.handm1_1.hand.addChild(curSprite);
               curSprite.x = charaAdd.handm1_1.hand.arm0.x;
               curSprite.y = charaAdd.handm1_1.hand.arm0.y;
               curSprite.rotation = charaAdd.handm1_1.hand.arm1.currentFrame;
               curSprite.scaleX = -1;
            } else if (attachType == 94) {
               charaAdd.handm1_1.hand.arm0.addChild(curSprite);
               curSprite.rotation = ((charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
               curSprite.scaleX = -1;
            }
         });
      }

      public static function updateLegs(character: int) : void
      {
         var charaAdd = MenuClass.charaAdd[character];
         var charaData = MenuClass.charaData[character];
         var curSprite = null;

         for (var i = 0; i <= Main.hukusuuNum; i++) {
            try  {
               if (charaData["HairEx" + i]["_reversal2"] == 0 || charaData["HairEx" + i]["_reversal2"] == 2) {
                  curSprite = charaAdd["HairEx" + i + "_0"];
                  if (!curSprite) continue;
                  
                  if(charaData["HairExAdd" + i]["_add0"] == 95)
                  {
                     charaAdd.ashi0.thigh.actual.thigh.addChild(curSprite);
                  }
                  else if(charaData["HairExAdd" + i]["_add0"] == 96 && charaAdd.ashi0.leg != null && charaAdd.ashi0.leg.actual.leg != null)
                  {
                     charaAdd.ashi0.leg.actual.leg.addChild(curSprite);
                  }
                  else if(charaData["HairExAdd" + i]["_add0"] == 97)
                  {
                     charaAdd.ashi0.foot.actual.foot.addChild(curSprite);
                  }
               }
            }
            catch(myError:Error)
            {
               Main.logError(myError, "in Hair_HairExSet.updateLegs(" + character + ")");
            }

            try {
               if (charaData["HairEx" + i]["_reversal2"] == 0 || charaData["HairEx" + i]["_reversal2"] == 1) {
                  curSprite = charaAdd["HairEx" + i + "_1"];
                  if (!curSprite) continue;

                  if(charaData["HairExAdd" + i]["_add0"] == 95)
                  {
                     charaAdd.ashi1.thigh.actual.thigh.addChild(curSprite);
                     curSprite.scaleX = -1;
                  }
                  else if(charaData["HairExAdd" + i]["_add0"] == 96 && charaAdd.ashi1.leg != null && charaAdd.ashi1.leg.actual.leg != null)
                  {
                     charaAdd.ashi1.leg.actual.leg.addChild(curSprite);
                     curSprite.scaleX = -1;
                  }
                  else if(charaData["HairExAdd" + i]["_add0"] == 97)
                  {
                     charaAdd.ashi1.foot.actual.foot.addChild(curSprite);
                     curSprite.scaleX = -1;
                  }
               }
            }
            catch(myError:Error)
            {
               Main.logError(myError, "in Hair_HairExSet.updateLegs(" + character + ")");
            }
         }

         reloadArmRotation(character);
         // sortModAttachSprites(character, [92, 93, 94, 95, 96, 97]);
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
            _loc4_.mune.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_.dou.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_["ashi"+param3].thigh.actual.thigh.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_["ashi"+param3].leg.actual.leg.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_["ashi"+param3].foot.actual.foot.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error)
         {
         }
         
         try
         {
            _loc4_["handm0_"+param3].hand.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error) {}

         try
         {
            _loc4_["handm1_"+param3].hand.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error) {}

         try
         {
            _loc4_["handm1_"+param3].hand.arm0.removeChild(_loc4_["HairEx" + param2 + "_" + param3]);
         }
         catch(myError:Error) {}

         try
         {
            _loc4_["HairEx" + param2 + "_" + param3] = null;
         }
         catch(myError:Error)
         {
            Main.logError(myError, "in Hair_HairExSet.deleteFc(" + param1 + ", ...)");
         }
      }
      
      public static function DepthSetFc2(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         _loc4_ = MenuClass.charaAdd[param1];
         _loc5_ = MenuClass.charaData[param1];
         var sprite = _loc4_["HairEx" + param2 + "_" + param3];

         if (!sprite) return;

         if(_loc5_["HairExAdd" + param2]["_add0"] == 0)
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
         /* for modded attach points, defer to code in PartLayering.fixup to set layering */
      }
   }
}
