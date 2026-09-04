package menu
{
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import parameter.Dress_data;
   import system.MeterPersent;
   import system.MeterPersentRibon;
   import parts.Ribbon;
   import parts.Hairpiece;
   
   public class Hair_HairExSet
   {
       
      public static var hairpieceSprites: Array = [{}, {}, {}, {}, {}, {}, {}, {}, {}];
      
      public function Hair_HairExSet()
      {
         super();
      }
      
      public static function setFc(param1:int, param2:int, param3:String) : void
      {
         try {
            return actualSetFc(param1, param2, param3);
         } catch (err: Error) {
            Main.logError(err, "in Hair_HairExSet.setFc(" + param1 + ", ..., " + param3 + ")");
         }
      }

      public static function actualSetFc(param1:int, param2:int, param3:String) : void
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
         var _loc22_:Object = null;
         var ribbonUpdateRequired:Boolean = false;

         var slotData: Hairpiece = Hairpiece.fromCharacter(param1, param2);
         //trace(slotData.character + " / " + slotData.slot + " hairpiece: visible=" + slotData.visible + " itemType=" + slotData.itemType + " attach=" + slotData.attachPoint + " reversal2 " + slotData.reversal2);

         if (slotData.visible)
         {
            try
            {
               _loc4_ = slotData.getSpriteParent(0);
               _loc22_ = slotData.getSpriteParent(1);

               if(param3 == "paste" || param3 == "move" || param3 == "hairSet" || param3 == "reset" || param3 == "swap")
               {
                  try{
                     deleteFc(param1,param2,0);
                  }
                  catch (myError:Error) {
                  }
                  try{
                     deleteFc(param1,param2,1);
                  }
                  catch (myError:Error) {
                  }
               }

               _loc5_ = MenuClass.charaData[param1];
               try
               {
                  if(param3 == "hairSet")
                  {
                     Dress_data.DressCharaData[param1]["HairEx" + slotData.slot][0]["_color0"][1] = 2;
                     Dress_data.DressCharaData[param1]["HairEx" + slotData.slot][0]["_color1"][1] = 2;
                  }
               }
               catch(myError:Error) {}

               _loc11_ = true;
               if(Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age" || Main.publishMode == "download" || Main.publishMode == "download_test" || Main.domainName == "pochi.x.fc2.com" || Main.domainName == "pochi.eek.jp")
               {
                  _loc11_ = false;
               }

               if (!hairpieceSprites[param1]) {
               hairpieceSprites[param1] = {};
               }

               _loc12_ = false;
               _loc6_ = false;
               _loc7_ = false;

               if(slotData.reversal2 == 0 || slotData.reversal2 == 2)
               {
               try{
                  if (!_loc4_) {
                        deleteFc(param1, param2, 0);
                     }
                  else if (!_loc4_["HairEx" + param2 + "_0"] || param3 == "paste" || param3 == "move" || param3 == "swap"){
                     (_loc20_ = new MovieClip()).name = "HairEx" + param2 + "_0";
                     _loc20_ = new Chara_Loading.HairExClass();
                     _loc4_.addChild(_loc20_);
                     _loc4_["HairEx" + param2 + "_0"] = _loc20_;
                     _loc4_["HairEx" + param2 + "_0"].name = "HairEx" + param2 + "_0";
                     //_loc4_["HairEx" + param2 + "_0"].y = -608;
                     hairpieceSprites[param1]["HairEx" + param2 + "_" + 0] = _loc20_;
                     if(_loc11_)
                     {
                        new HukuClickClass(_loc4_["HairEx" + param2 + "_0"]);
                     }
                     new Stage_MoveClass(_loc4_["HairEx" + param2 + "_0"]);
                     _loc12_ = true;
                     }
                  
                     else if(param3 == "depth" || param3 == "move" || param3 == "hairSet" || param3 == "reset" || param3 == "swap")
                     {
                        _loc12_ = true;
                     }

                  _loc4_["HairEx" + param2 + "_" + 0].HairEx0.gotoAndStop(slotData.itemType + 2);
                  _loc6_ = true;
                  }
                  catch(myError:Error)
                  {
                     Main.logError(myError, "while adding Ribon" + param2 + "_0 in Huku_RibonSet.setFc(" + param1 + ", ...)");
                  }
               }
               else
               {
                  deleteFc(param1,param2,0);
               }

               if(slotData.reversal2 == 0 || slotData.reversal2 == 1)
               {
                  try
                  {
                     if (!_loc22_) {
                        deleteFc(param1, param2, 1);
                     } 
                     else if (!_loc22_["HairEx" + param2 + "_1"] || param3 == "paste" || param3 == "move" || param3 == "swap") {
                        (_loc21_ = new MovieClip()).name = "HairEx" + param2 + "_1";
                        _loc21_ = new Chara_Loading.HairExClass();

                        _loc22_.addChild(_loc21_);
                        _loc22_["HairEx" + param2 + "_1"] = _loc21_;
                        _loc22_["HairEx" + param2 + "_1"].name = "HairEx" + param2 + "_1";
                        //_loc22_["HairEx" + param2 + "_1"].y = -608;
                        hairpieceSprites[param1]["HairEx" + param2 + "_" + 1] = _loc21_;
                        if(_loc11_) {
                           new HukuClickClass(_loc22_["HairEx" + param2 + "_1"]);
                        }
                        new Stage_MoveClass(_loc22_["HairEx" + param2 + "_1"]);
                        _loc12_ = true;
                     }
                     else if(param3 == "depth" || param3 == "move" || param3 == "hairSet" || param3 == "reset" || param3 == "swap")
                     {
                        _loc12_ = true;
                     }
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.gotoAndStop(slotData.itemType + 2);
                     _loc7_ = true;
                  }
                  catch(myError:Error)
                  {
                     Main.logError(myError, "while adding HairEx" + param2 + "_1 in Hair_HairExSet.setFc(" + param1 + ", ...)");
                  }
               } else
               {
                  deleteFc(param1,param2,1);
               }

               if(_loc12_)
               {
                  for each (var hairpiece in Hairpiece.getVisibleHairpieces(param1).reverse()) {
                     if (hairpiece.slot > slotData.slot)
                     {
                        continue;
                     }

                     if (slotData.attachPoint >= 0 && slotData.attachPoint <= 3)
                     {
                        if (hairpiece.reversal2 != 1){
                           try
                           {
                              DepthSetFc2(param1,hairpiece.slot,0);
                           }
                           catch(myError:Error)
                           {
                              Main.logError(myError, "in Hair_HairExSet.setFc(" + param1 + ", ...)");
                           }
                        }
                        if (hairpiece.reversal2 != 2) {
                           try
                           {
                              DepthSetFc2(param1,hairpiece.slot,1);
                           }
                           catch(myError:Error)
                           {
                              Main.logError(myError, "in Hair_HairExSet.setFc(" + param1 + ", ...)");
                           }
                        }
                     }
                  }

                  if (slotData.attachPoint >= 91 && slotData.attachPoint <= 99) {
                     if (slotData.attachPoint != 91) {
                        if (slotData.reversal2 != 1){
                           try {
                              if (slotData.depth <= 1) {
                                 _loc4_.setChildIndex(_loc4_["HairEx" + param2 + "_" + 0], 0);
                              } else {
                                 _loc4_.setChildIndex(_loc4_["HairEx" + param2 + "_" + 0], _loc4_.numChildren - 1);
                              }
                           } catch (err: Error) {
                           }
                        }

                        if (slotData.reversal2 != 2) {
                           try {
                              if (slotData.depth <= 1) {
                                 _loc22_.setChildIndex(_loc22_["HairEx" + param2 + "_" + 1], 0);
                              } else {
                                 _loc22_.setChildIndex(_loc22_["HairEx" + param2 + "_" + 1], _loc22_.numChildren - 1);
                              }
                           } catch (err: Error) {
                           }
                        }
                     }
                  }

                  if (slotData.attachPoint === 91) {
                     PartLayering.fixup(param1, ["fullBody"]);
                  } else if (slotData.attachPoint === 92) {
                     PartLayering.fixup(param1, ["upperArm"]);
                  } else if (slotData.attachPoint === 93) {
                     PartLayering.fixup(param1, ["lowerArm"]);
                  } else if (slotData.attachPoint === 94) {
                     PartLayering.fixup(param1, ["hand"]);
                  } else if (slotData.attachPoint === 95) {
                     PartLayering.fixup(param1, ["thigh"]);
                  } else if (slotData.attachPoint === 96) {
                     PartLayering.fixup(param1, ["leg"]);
                  } else if (slotData.attachPoint === 97) {
                     PartLayering.fixup(param1, ["foot"]);
                  } else if (slotData.attachPoint === 98) {
                     PartLayering.fixup(param1, ["dou"]);
                  } else if (slotData.attachPoint === 99) {
                     PartLayering.fixup(param1, ["mune"]);
                  }

                  //sortModAttachSprites(param1, [92, 93, 94, 95, 96, 97, 98, 99]);
               }
               if(param3 == "paste" || param3 == "pasteRibon")
               {
                  if(slotData.scaleY != slotData.scaleX)
                  {
                     MenuClass.systemData["LinkHairExScale"]["_flag"] = false;
                  }
               }
               if(MenuClass.systemData["LinkHairExScale"]["_flag"] && (MenuClass._nowTabName == "HairExScaleX" || param3 == "random"))
               {
                  slotData.scaleY = slotData.scaleX;
               }
               if(MenuClass.systemData["LinkHairExLine"]["_flag"] && (MenuClass._nowTabName == "HairExScaleX" || param3 == "random"))
               {
                  if (_loc6_) {
                     try {
                        _loc4_["HairEx" + param2 + "_0"].HairEx0.color2_0.visible = true;
                        if (slotData.scaleX >= 700) {
                           _loc4_["HairEx" + param2 + "_0"].HairEx0.color2_0.gotoAndStop(1);
                           slotData.lineType = 1;
                        }
                        else if(slotData.scaleX >= 500)
                        {
                           _loc4_["HairEx" + param2 + "_0"].HairEx0.color2_0.gotoAndStop(2);
                           slotData.lineType = 2;
                        }
                        else if(slotData.scaleX >= 300)
                        {
                           _loc4_["HairEx" + param2 + "_0"].HairEx0.color2_0.gotoAndStop(3);
                           slotData.lineType = 3;
                        }
                        else if(slotData.scaleX >= 100)
                        {
                           _loc4_["HairEx" + param2 + "_0"].HairEx0.color2_0.gotoAndStop(4);
                           slotData.lineType = 4;
                        }
                        else if(slotData.scaleX >= 0)
                        {
                           _loc4_["HairEx" + param2 + "_0"].HairEx0.color2_0.gotoAndStop(5);
                           slotData.lineType = 5;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }

                  if (_loc7_) {
                     try {
                        _loc22_["HairEx" + param2 + "_1"].HairEx0.color2_0.visible = true;
                        if (slotData.scaleX >= 700) {
                           _loc22_["HairEx" + param2 + "_1"].HairEx0.color2_0.gotoAndStop(1);
                           slotData.lineType = 1;
                        }
                        else if(slotData.scaleX >= 500)
                        {
                           _loc22_["HairEx" + param2 + "_1"].HairEx0.color2_0.gotoAndStop(2);
                           slotData.lineType = 2;
                        }
                        else if(slotData.scaleX >= 300)
                        {
                           _loc22_["HairEx" + param2 + "_1"].HairEx0.color2_0.gotoAndStop(3);
                           slotData.lineType = 3;
                        }
                        else if(slotData.scaleX >= 100)
                        {
                           _loc22_["HairEx" + param2 + "_1"].HairEx0.color2_0.gotoAndStop(4);
                           slotData.lineType = 4;
                        }
                        else if(slotData.scaleX >= 0)
                        {
                           _loc22_["HairEx" + param2 + "_1"].HairEx0.color2_0.gotoAndStop(5);
                           slotData.lineType = 5;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               else
               {
                  if (_loc6_) {
                     try {
                        if(slotData.lineType == 0)
                        {
                           _loc4_["HairEx" + param2 + "_0"].HairEx0.color2_0.visible = false;
                           // _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color2_0.gotoAndStop(6);
                        }
                        else
                        {
                           _loc4_["HairEx" + param2 + "_0"].HairEx0.color2_0.visible = true;
                           _loc4_["HairEx" + param2 + "_0"].HairEx0.color2_0.gotoAndStop(slotData.lineType);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  if (_loc7_) {
                     try {
                        if(slotData.lineType == 0)
                        {
                           _loc22_["HairEx" + param2 + "_1"].HairEx0.color2_0.visible = false;
                           // _loc4_["HairEx" + param2 + "_" + _loc8_].HairEx0.color2_0.gotoAndStop(6);
                        }
                        else
                        {
                           _loc22_["HairEx" + param2 + "_1"].HairEx0.color2_0.visible = true;
                           _loc22_["HairEx" + param2 + "_1"].HairEx0.color2_0.gotoAndStop(slotData.lineType);
                        }
                     }
                     catch(myError:Error)
                     {
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

               if(slotData.attachPoint == 0)
               {
                  new MeterPersentRibon(200,-250,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(slotData.attachPoint == 1)
               {
                  new MeterPersentRibon(199.5,-250.5,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(slotData.attachPoint == 2)
               {
                  new MeterPersentRibon(201.5,-248.5,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(slotData.attachPoint == 3)
               {
                  new MeterPersentRibon(200,-250,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(slotData.attachPoint == 99)
               {
                  new MeterPersentRibon(-100, -700,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(slotData.attachPoint == 98)
               {
                  new MeterPersentRibon(0, -600,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(slotData.attachPoint == 95)
               {
                  new MeterPersentRibon(140, -540,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(slotData.attachPoint == 96)
               {
                  new MeterPersentRibon(220, -380,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(slotData.attachPoint == 97)
               {
                  new MeterPersentRibon(300, -300,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
               }
               else if(slotData.attachPoint == 94)
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
               else if(slotData.attachPoint == 92 || slotData.attachPoint == 93)
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
               else if(slotData.attachPoint == 91)
               {
                  new MeterPersentRibon(100, -900,param1,"HairExY",param2);
                  hairPosY = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleX",param2);
                  hairScaleX = MeterPersentRibon.MeterPersentNum;
                  new MeterPersentRibon(0.5,1.5,param1,"HairExScaleY",param2);
                  hairScaleY = MeterPersentRibon.MeterPersentNum;
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
                     if(slotData.attachPoint == 0)
                     {
                        _loc4_["HairEx" + param2 + "_" + 0].scaleX = _loc4_["HairEx" + param2 + "_" + 0].scaleY = _loc18_ + _loc17_;
                     }
                     else
                     {
                        _loc4_["HairEx" + param2 + "_" + 0].scaleX = _loc4_["HairEx" + param2 + "_" + 0].scaleY = 1;
                     }

                     if (slotData.attachPoint == 93) {
                        _loc4_["HairEx" + param2 + "_" + 0].x = MenuClass.charaAdd[param1].handm1_0.hand.arm0.x;
                        _loc4_["HairEx" + param2 + "_" + 0].y = MenuClass.charaAdd[param1].handm1_0.hand.arm0.y;
                        _loc4_["HairEx" + param2 + "_" + 0].rotation = MenuClass.charaAdd[param1].handm1_0.hand.arm1.currentFrame;
                     } else if (slotData.attachPoint == 94) {
                        _loc4_["HairEx" + param2 + "_" + 0].x = 15;
                        _loc4_["HairEx" + param2 + "_" + 0].y = 100;
                        _loc4_["HairEx" + param2 + "_" + 0].rotation = ((MenuClass.charaAdd[param1].handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
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
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.transform.matrix = _loc13_;
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.x = hairPosXRight;
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.scaleX = hairScaleX * -1;
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.scaleY = hairScaleY;
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.y = hairPosY;
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.alpha = hairAlpha;
                     if(slotData.attachPoint == 0)
                     {
                        _loc22_["HairEx" + param2 + "_" + 1].scaleX = _loc22_["HairEx" + param2 + "_" + 1].scaleY = _loc18_ + _loc17_;
                     }
                     else if (slotData.attachPoint >= 92 && slotData.attachPoint <= 97) {
                        _loc22_["HairEx" + param2 + "_" + 1].scaleX = -1;
                        _loc22_["HairEx" + param2 + "_" + 1].scaleY = 1;
                     }
                     else
                     {
                        _loc22_["HairEx" + param2 + "_" + 1].scaleX = _loc22_["HairEx" + param2 + "_" + 1].scaleY = 1;
                     }

                     if (slotData.attachPoint == 93) {
                        _loc22_["HairEx" + param2 + "_" + 1].x = MenuClass.charaAdd[param1].handm1_1.hand.arm0.x;
                        _loc22_["HairEx" + param2 + "_" + 1].y = MenuClass.charaAdd[param1].handm1_1.hand.arm0.y;
                        _loc22_["HairEx" + param2 + "_" + 1].rotation = MenuClass.charaAdd[param1].handm1_1.hand.arm1.currentFrame;
                     } else if (slotData.attachPoint == 94) {
                        _loc22_["HairEx" + param2 + "_" + 1].x = -15;
                        _loc22_["HairEx" + param2 + "_" + 1].y = 100;
                        _loc22_["HairEx" + param2 + "_" + 1].rotation = ((MenuClass.charaAdd[param1].handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
                     }
                  }
               }
               catch(myError:Error)
               {
                  Main.logError(myError, "in Hair_HairExSet.setFc(" + param1 + ", ...)");
               }
               new MeterPersentRibon(360,0,param1,"HairExRotationPlus",param2);
               _loc19_ = MeterPersentRibon.MeterPersentNum;
               if(_loc6_)
                  {
                     if(slotData.shadow == 0)
                     {
                        _loc9_ = 0;
                        while(_loc9_ <= 1)
                        {
                           _loc10_ = 0;
                           while(_loc10_ <= 2)
                           {
                              try
                              {
                                 _loc4_["HairEx" + param2 + "_" + 0].HairEx0["kage" + _loc10_ + "_" + _loc9_].visible = false;
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
                                 _loc4_["HairEx" + param2 + "_" + 0].HairEx0["kage" + _loc10_ + "_" + _loc9_].visible = true;
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
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.color0_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.color1_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.color2_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.kage0_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc4_["HairEx" + param2 + "_" + 0].HairEx0.kage1_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  if(_loc7_)
                  {
                     if(slotData.shadow == 0)
                     {
                        _loc9_ = 0;
                        while(_loc9_ <= 1)
                        {
                           _loc10_ = 0;
                           while(_loc10_ <= 2)
                           {
                              try
                              {
                                 _loc22_["HairEx" + param2 + "_" + 1].HairEx0["kage" + _loc10_ + "_" + _loc9_].visible = false;
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
                                 _loc22_["HairEx" + param2 + "_" + 1].HairEx0["kage" + _loc10_ + "_" + _loc9_].visible = true;
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
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.color0_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.color1_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.color2_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.kage0_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     _loc22_["HairEx" + param2 + "_" + 1].HairEx0.kage1_0.rotation = _loc19_;
                  }
                  catch(myError:Error)
                  {
                  }
               try
               {
                  new Hair_ExRotation(param1,param2);
                  if (param3 == "move") {
                     for each (var hairpiece:Hairpiece in Hairpiece.getVisibleHairpieces(param1).reverse())
                     {
                        if (hairpiece.slot > slotData.slot) {
                           break;
                        } else {
                           new Hair_Sen(param1);
                           new Move_Head(param1);
                           break;
                        }
                     }
                  }
                  else {
                     new Hair_Sen(param1);
                     new Move_Head(param1);
                  }
                  new Chara_ColorClass(param1,"HairEx" + param2);
                  if(_loc5_["Hat"]["_visible"][0] && _loc5_["Hat"]["_hair3"] == 0 )
                  {
                     if (slotData.attachPoint <= 4)
                     {
                        if (slotData.reversal2 != 1)
                        {
                           try
                           {
                              slotData.leftSprite.visible = false;
                           }
                           catch(myError:Error) {
                           }
                        }

                        if (slotData.reversal2 != 2)
                        {
                           try
                           {
                              slotData.rightSprite.visible = false;
                           }
                           catch(myError:Error) {
                           }
                        }
                     }
                  }
               }
               catch (myError:Error){
               }

            }
            catch(myError:Error)
            {
               Main.logError(myError, "in Hair_HairExSet.setFc(" + param1 + ", ...)");
            }

            new MeterPersentRibon(-0.5, 0.5, param1, "HairExFineX", param2);
            var fineTuneX = MeterPersentRibon.MeterPersentNum;

            new MeterPersentRibon(0.5, -0.5, param1, "HairExFineY", param2);
            var fineTuneY = MeterPersentRibon.MeterPersentNum;

            if(_loc6_)
            {
               try
               {
                  _loc4_["HairEx" + param2 + "_0"].HairEx0.x -= fineTuneX;
                  _loc4_["HairEx" + param2 + "_0"].HairEx0.y += fineTuneY;
               }
               catch(myError:Error) {}
            }

            if(_loc7_)
            {
               try
               {
                  _loc22_["HairEx" + param2 + "_1"].HairEx0.x += fineTuneX;
                  _loc22_["HairEx" + param2 + "_1"].HairEx0.y += fineTuneY;
               }
               catch(myError:Error) {}
            }

            if(param2 == 0 || param2 == 1 || param2 == 2 || param2 == 3 || param2 == 4)
            {
               for each (var ribbon in Ribbon.getVisibleRibbons(param1)) {
                  if (ribbon.attachPoint >= 6 && ribbon.attachPoint <= 10) {
                     ribbonUpdateRequired = true;
                     break;
                  }
               }
            }

            if (ribbonUpdateRequired) {
                  for each (var ribbon in Ribbon.getVisibleRibbons(param1)) {
                     Huku_RibonSet.setFc(param1, ribbon.slot, "move");
               }
            }

         }
         else
         {
            deleteFc(param1,param2,0);
            deleteFc(param1,param2,1);
         }
      }


      public static function forEachAttachedSprite(character: int, leftFn = null, rightFn = null) : void {
         var curSprite = null;
         var charaAdd = MenuClass.charaAdd[character];
         var charaData = MenuClass.charaData[character];

         for each (var hairpiece: Hairpiece in Hairpiece.getAllHairpieces(character)) {
            var leftParent = null;
            var rightParent = null;

            try {
               leftParent = hairpiece.getSpriteParent(0);
               rightParent = hairpiece.getSpriteParent(1);
            } catch (err: Error) {
               Main.logError(err, "in Hair_HairExSet.forEachAttachedSprite(" + character + ", ...)");
               continue;
            }

            try  {
               if (leftParent && leftFn && (hairpiece.reversal2 == 0 || hairpiece.reversal2 == 2)) {
                  if(hairpiece.leftSprite) {
                     leftFn(hairpiece.leftSprite, leftParent, hairpiece.slot, hairpiece.attachPoint, charaAdd, charaData, hairpiece);
                  }
               }
            } catch(err: Error) {
               Main.logError(err, "in Hair_HairExSet.forEachAttachedSprite(" + character + ", ...)");
            }

            try  {
               if (rightFn && (hairpiece.reversal2 == 0 || hairpiece.reversal2 == 1)) {
                  if (rightParent) {
                     if(hairpiece.rightSprite) {
                        rightFn(hairpiece.rightSprite, rightParent, hairpiece.slot, hairpiece.attachPoint, charaAdd, charaData, hairpiece);
                        continue;
                     }
                  }

                  if (leftParent) {
                     if(hairpiece.rightSprite) {
                        rightFn(hairpiece.rightSprite, leftParent, hairpiece.slot, hairpiece.attachPoint, charaAdd, charaData, hairpiece);
                     }
                  }
               }
            } catch(err: Error) {
               Main.logError(err, "in Hair_HairExSet.forEachAttachedSprite(" + character + ", ...)");
            }
         }
      }


      public static function collectSpriteGroups (character: int) : Object {
         var spriteGroups = {};

         forEachAttachedSprite(character, function (curSprite, parent, i, curAttach, charaAdd, charaData, hairpiece) {
            var curDepth = hairpiece.depth;
            if (!spriteGroups[curAttach]) spriteGroups[curAttach] = {};
            if (!spriteGroups[curAttach][curDepth]) spriteGroups[curAttach][curDepth] = [];

            spriteGroups[curAttach][curDepth].push([curSprite, i]);
         }, function (curSprite, parent, i, curAttach, charaAdd, charaData, hairpiece) {
            var curDepth = hairpiece.depth;
            if (!spriteGroups[curAttach]) spriteGroups[curAttach] = {};
            if (!spriteGroups[curAttach][curDepth]) spriteGroups[curAttach][curDepth] = [];

            spriteGroups[curAttach][curDepth].push([curSprite, i]);
         });

         return spriteGroups;
      }

      public static function sortModAttachSprites (character: int, sortGroups: Array) : void {
         var spriteGroups = collectSpriteGroups(character);

         for (var i = 0; i < sortGroups.length; i++) {
            var groupNum = sortGroups[i];
            if (groupNum < 91 || !spriteGroups[groupNum]) continue;

            for (var depth:Object in spriteGroups[groupNum]) {
               PartLayering.sortSpriteIndices(spriteGroups[groupNum][depth], "character " + character + " attach point " + groupNum + " depth " + depth + " hair");
            }
         }
      }

      public static function updateArmRotation(character: int, leftPos, rightPos) : void
      {
         forEachAttachedSprite(character, function (curSprite, parent, i, attachType, charaAdd, charaData) {
            if (attachType == 92) {
               curSprite.x = charaAdd.handm0_0.hand.arm2.actual.x;
               curSprite.y = charaAdd.handm0_0.hand.arm2.actual.y;
               curSprite.rotation = charaAdd.handm0_0.hand.arm2.actual.rotation;
            } else if (attachType == 93) {
               curSprite.x = charaAdd.handm1_0.hand.arm0.x;
               curSprite.y = charaAdd.handm1_0.hand.arm0.y;
               curSprite.rotation = charaAdd.handm1_0.hand.arm0.rotation;
            } else if (attachType == 94) {
               curSprite.rotation = ((charaAdd.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
            }
         }, function (curSprite, parent, i, attachType, charaAdd, charaData) {
            if (attachType == 92) {
               curSprite.x = charaAdd.handm0_1.hand.arm2.actual.x;
               curSprite.y = charaAdd.handm0_1.hand.arm2.actual.y;
               curSprite.rotation = charaAdd.handm0_1.hand.arm2.actual.rotation;
               curSprite.scaleX = -1;
            } else if (attachType == 93) {
               curSprite.x = charaAdd.handm1_1.hand.arm0.x;
               curSprite.y = charaAdd.handm1_1.hand.arm0.y;
               curSprite.rotation = charaAdd.handm1_1.hand.arm0.rotation;
               curSprite.scaleX = -1;
            } else if (attachType == 94) {
               curSprite.rotation = ((charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
               curSprite.scaleX = -1;
            }
         });

         // sortModAttachSprites(character, [92, 93]);
      }

      public static function updateHandRotation(character: int) : void
      {
         forEachAttachedSprite(character, function (curSprite, parent, i, attachType, charaAdd, charaData) {
            if (attachType == 94) {
               curSprite.rotation = ((charaAdd.handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
            }
         }, function (curSprite, parent, i, attachType, charaAdd, charaData) {
            if (attachType == 94) {
               curSprite.rotation = ((charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
            }
         });

         // sortModAttachSprites(character, [94]);
      }

      public static function updateLegs(character: int) : void
      {
         var charaAdd = MenuClass.charaAdd[character];
         var charaData = MenuClass.charaData[character];
         var curParent = null;
         var curSprite = null;

         if (!hairpieceSprites[character]) {
            hairpieceSprites[character] = {};
         }

         for each (var hairpiece: Hairpiece in Hairpiece.getVisibleHairpieces(character)) {
            try  {
               var leftParent = null;
               var rightParent = null;
               if (hairpiece.attachPoint == 95) {
                  leftParent = charaAdd.ashi0.thigh.actual.thigh;
                  rightParent = charaAdd.ashi1.thigh.actual.thigh;
               } else if (hairpiece.attachPoint == 96) {
                  if (charaAdd.ashi0.leg != null) {
                     leftParent = charaAdd.ashi0.leg.actual.leg;
                  }

                  if (charaAdd.ashi1.leg != null) {
                     rightParent = charaAdd.ashi1.leg.actual.leg;
                  }
               } else if (hairpiece.attachPoint == 97) {
                  leftParent = charaAdd.ashi0.foot.actual.foot;
                  rightParent = charaAdd.ashi1.foot.actual.foot;
               } else {
                  continue;
               }

               if (hairpiece.reversal2 == 0 || hairpiece.reversal2 == 2) {
                  curSprite = hairpieceSprites[character]["HairEx" + hairpiece.slot + "_0"];

                  if (curSprite) {
                     if (leftParent) {
                        leftParent.addChild(curSprite);
                        leftParent["HairEx" + hairpiece.slot + "_0"] = curSprite;
                     } else if (curSprite.parent) {
                        removeAndUnset(curSprite.parent, hairpiece.slot, 0);
                     }
                  } else {
                     removeAndUnset(leftParent, hairpiece.slot, 0);
                  }
               }
            }
            catch(myError:Error)
            {
               Main.logError(myError, "in Hair_HairExSet.updateLegs(" + character + ")");
            }

            try {
               if (hairpiece.reversal2 == 0 || hairpiece.reversal2 == 1) {
                  curSprite = hairpieceSprites[character]["HairEx" + hairpiece.slot + "_1"];

                  if (curSprite) {
                     if (rightParent) {
                        rightParent.addChild(curSprite);
                        rightParent["HairEx" + hairpiece.slot + "_1"] = curSprite;
                     } else if (curSprite.parent) {
                        removeAndUnset(curSprite.parent, hairpiece.slot, 1);
                     }
                  } else {
                     removeAndUnset(rightParent, hairpiece.slot, 1);
                  }
               }
            }
            catch(myError:Error)
            {
               Main.logError(myError, "in Hair_HairExSet.updateLegs(" + character + ")");
            }
         }

         // sortModAttachSprites(character, [95, 96, 97], true);
      }

      public static function removeAndUnset(parent: MovieClip, slot: int, side: int) : void {
         try {
            parent.removeChild(parent["HairEx" + slot + "_" + side]);
         } catch (err: Error) {};

         try {
            parent["HairEx" + slot + "_" + side] = null;
         } catch (err: Error) {};
      }
      
      public static function deleteFc(charIdx:int, slot:int, side:int) : void
      {
         if (!hairpieceSprites[charIdx]) {
            hairpieceSprites[charIdx] = {};
         }

         var sprite = hairpieceSprites[charIdx]["HairEx" + slot + "_" + side];
         hairpieceSprites[charIdx]["HairEx" + slot + "_" + side] = null;
         
         /* Check every possible location in case the attach point changed before we got here. */
         var charaAdd = MenuClass.charaAdd[charIdx];

         removeAndUnset(charaAdd, slot, side);
         removeAndUnset(charaAdd.head, slot, side);
         removeAndUnset(charaAdd.head.Bangs, slot, side);
         removeAndUnset(charaAdd.mune, slot, side);
         removeAndUnset(charaAdd.dou, slot, side);

         try {
            removeAndUnset(charaAdd.HairBack.hairBack, slot, side);
         } catch (err: Error) {}; 

         removeAndUnset(charaAdd["handm0_" + side].hand, slot, side);
         removeAndUnset(charaAdd["handm1_" + side].hand, slot, side);
         removeAndUnset(charaAdd["handm1_" + side].hand.arm0, slot, side);
         removeAndUnset(charaAdd["ashi" + side].thigh.actual.thigh, slot, side);
         removeAndUnset(charaAdd["ashi" + side].foot.actual.foot, slot, side);

         try {
            removeAndUnset(charaAdd["ashi" + side].leg.actual.leg, slot, side);
         } catch (err: Error) {}; 

      }
      
      public static function DepthSetFc2(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Object = MenuClass.charaAdd[param1];
         var hairpiece:Hairpiece = Hairpiece.fromCharacter(param1, param2);
         if (param3 == 0)
         {
            if(hairpiece.attachPoint == 0)
            {
               try {
                  if(hairpiece.depth == 2)
                  {
                     if(_loc4_.getChildIndex(_loc4_.Headphone1) > _loc4_.getChildIndex(hairpiece.leftSprite))
                     {
                        _loc4_.setChildIndex(hairpiece.leftSprite,_loc4_.getChildIndex(_loc4_.Headphone1));
                     }
                     else
                     {
                        _loc4_.setChildIndex(hairpiece.leftSprite,_loc4_.getChildIndex(_loc4_.Headphone1) + 1);
                     }
                  }
                  else if(hairpiece.depth == 1)
                  {
                     if(_loc4_.getChildIndex(_loc4_.mune) > _loc4_.getChildIndex(hairpiece.leftSprite))
                     {
                        _loc4_.setChildIndex(hairpiece.leftSprite,_loc4_.getChildIndex(_loc4_.mune));
                     }
                     else
                     {
                        _loc4_.setChildIndex(hairpiece.leftSprite,_loc4_.getChildIndex(_loc4_.mune) + 1);
                     }
                  }
                  //else if(_loc5_["HairEx" + param2]["_depth"] == 0)
                  else if(hairpiece.depth == 0)
                  {
                     if(_loc4_.getChildIndex(_loc4_.HatBack) > _loc4_.getChildIndex(hairpiece.leftSprite))
                     {
                        _loc4_.setChildIndex(hairpiece.leftSprite,_loc4_.getChildIndex(_loc4_.HatBack));
                     }
                     else
                     {
                        _loc4_.setChildIndex(hairpiece.leftSprite,_loc4_.getChildIndex(_loc4_.HatBack) + 1);
                     }
                  }
               } catch (myError:Error){
               }
            }
            else if(hairpiece.attachPoint == 1)
            {
               try {
                  if(hairpiece.depth == 2)
                  {
                     if(_loc4_.head.getChildIndex(_loc4_.head.Headphone0) > _loc4_.head.getChildIndex(hairpiece.leftSprite))
                     {
                        _loc4_.head.setChildIndex(hairpiece.leftSprite,_loc4_.head.getChildIndex(_loc4_.head.Headphone0));
                     }
                     else
                     {
                        _loc4_.head.setChildIndex(hairpiece.leftSprite,_loc4_.head.getChildIndex(_loc4_.head.Headphone0) + 1);
                     }
                  }
                  else if(hairpiece.depth == 1)
                  //else if(_loc5_["HairEx" + param2]["_depth"] == 1)
                  {
                     if(_loc4_.head.getChildIndex(_loc4_.head.hairOption) > _loc4_.head.getChildIndex(hairpiece.leftSprite))
                     {
                        _loc4_.head.setChildIndex(hairpiece.leftSprite,_loc4_.head.getChildIndex(_loc4_.head.hairOption));
                     }
                     else
                     {
                        _loc4_.head.setChildIndex(hairpiece.leftSprite,_loc4_.head.getChildIndex(_loc4_.head.hairOption) + 1);
                     }
                  }
                  //else if(_loc5_["HairEx" + param2]["_depth"] == 0)
                  else if(hairpiece.depth == 0)
                  {
                     if(_loc4_.head.getChildIndex(_loc4_.head.hair) > _loc4_.head.getChildIndex(hairpiece.leftSprite))
                     {
                        _loc4_.head.setChildIndex(hairpiece.leftSprite,_loc4_.head.getChildIndex(_loc4_.head.hair));
                     }
                     else
                     {
                        _loc4_.head.setChildIndex(hairpiece.leftSprite,_loc4_.head.getChildIndex(_loc4_.head.hair) + 1);
                     }
                  }
               }
               catch (myError:Error){
               }
            }
            else if(hairpiece.attachPoint == 2)
            {
               try{
                  if(hairpiece.depth == 1)
                  {
                     if(_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap1) > _loc4_.head.Bangs.getChildIndex(hairpiece.leftSprite))
                     {
                        _loc4_.head.Bangs.setChildIndex(hairpiece.leftSprite,_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap1));
                     }
                     else
                     {
                        _loc4_.head.Bangs.setChildIndex(hairpiece.leftSprite,_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap1) + 1);
                     }
                  }
                  else if(hairpiece.depth == 0)
                  {
                     if(_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap0) > _loc4_.head.Bangs.getChildIndex(hairpiece.leftSprite))
                     {
                        _loc4_.head.Bangs.setChildIndex(hairpiece.leftSprite,_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap0));
                     }
                     else
                     {
                        _loc4_.head.Bangs.setChildIndex(hairpiece.leftSprite,_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap0) + 1);
                     }
                  }
               }
               catch (myError:Error){
               }
            }
            else if(hairpiece.attachPoint == 3)
            {
               try{
                  if(hairpiece.depth == 1)
                  {
                     if(_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap1) > _loc4_.HairBack.hairBack.getChildIndex(hairpiece.leftSprite))
                     {
                        _loc4_.HairBack.hairBack.setChildIndex(hairpiece.leftSprite,_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap1));
                     }
                     else
                     {
                        _loc4_.HairBack.hairBack.setChildIndex(hairpiece.leftSprite,_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap1) + 1);
                     }
                  }
                  else if (hairpiece.depth == 0)
                  {
                     if(_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap0) > _loc4_.HairBack.hairBack.getChildIndex(hairpiece.leftSprite))
                     {
                        _loc4_.HairBack.hairBack.setChildIndex(hairpiece.leftSprite,_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap0));
                     }
                     else
                     {
                        _loc4_.HairBack.hairBack.setChildIndex(hairpiece.leftSprite,_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap0) + 1);
                     }
                  }
               }
               catch (myError:Error){
               }
            }
            /* for modded attach points, defer to code in PartLayering.fixup to set layering */
         }
      
         if (param3 == 1)
         {
            if(hairpiece.attachPoint == 0)
            {
               try{
                  if(hairpiece.depth == 2)
                  {
                     if(_loc4_.getChildIndex(_loc4_.Headphone1) > _loc4_.getChildIndex(hairpiece.rightSprite))
                     {
                        _loc4_.setChildIndex(hairpiece.rightSprite,_loc4_.getChildIndex(_loc4_.Headphone1));
                     }
                     else
                     {
                        _loc4_.setChildIndex(hairpiece.rightSprite,_loc4_.getChildIndex(_loc4_.Headphone1) + 1);
                     }
                  }
                  else if(hairpiece.depth == 1)
                  {
                     if(_loc4_.getChildIndex(_loc4_.mune) > _loc4_.getChildIndex(hairpiece.rightSprite))
                     {
                        _loc4_.setChildIndex(hairpiece.rightSprite,_loc4_.getChildIndex(_loc4_.mune));
                     }
                     else
                     {
                        _loc4_.setChildIndex(hairpiece.rightSprite,_loc4_.getChildIndex(_loc4_.mune) + 1);
                     }
                  }
                  else if(hairpiece.depth == 0)
                  {
                     if(_loc4_.getChildIndex(_loc4_.HatBack) > _loc4_.getChildIndex(hairpiece.rightSprite))
                     {
                        _loc4_.setChildIndex(hairpiece.rightSprite,_loc4_.getChildIndex(_loc4_.HatBack));
                     }
                     else
                     {
                        _loc4_.setChildIndex(hairpiece.rightSprite,_loc4_.getChildIndex(_loc4_.HatBack) + 1);
                     }
                  }
               }
               catch (myError:Error){
               }
            }
            else if(hairpiece.attachPoint == 1)
            {
               try{
                  if(hairpiece.depth == 2)
                  {
                     if(_loc4_.head.getChildIndex(_loc4_.head.Headphone0) > _loc4_.head.getChildIndex(hairpiece.rightSprite))
                     {
                        _loc4_.head.setChildIndex(hairpiece.rightSprite,_loc4_.head.getChildIndex(_loc4_.head.Headphone0));
                     }
                     else
                     {
                        _loc4_.head.setChildIndex(hairpiece.rightSprite,_loc4_.head.getChildIndex(_loc4_.head.Headphone0) + 1);
                     }
                  }
                  else if(hairpiece.depth == 1)
                  {
                     if(_loc4_.head.getChildIndex(_loc4_.head.hairOption) > _loc4_.head.getChildIndex(hairpiece.rightSprite))
                     {
                        _loc4_.head.setChildIndex(hairpiece.rightSprite,_loc4_.head.getChildIndex(_loc4_.head.hairOption));
                     }
                     else
                     {
                        _loc4_.head.setChildIndex(hairpiece.rightSprite,_loc4_.head.getChildIndex(_loc4_.head.hairOption) + 1);
                     }
                  }
                  else if(hairpiece.depth == 0)
                  {
                     if(_loc4_.head.getChildIndex(_loc4_.head.hair) > _loc4_.head.getChildIndex(hairpiece.rightSprite))
                     {
                        _loc4_.head.setChildIndex(hairpiece.rightSprite,_loc4_.head.getChildIndex(_loc4_.head.hair));
                     }
                     else
                     {
                        _loc4_.head.setChildIndex(hairpiece.rightSprite,_loc4_.head.getChildIndex(_loc4_.head.hair) + 1);
                     }
                  }
               }
               catch (myError:Error){
               }
            }
            else if(hairpiece.attachPoint == 2)
            {
               try{
                  if(hairpiece.depth == 1)
                  {
                     if(_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap1) > _loc4_.head.Bangs.getChildIndex(hairpiece.rightSprite))
                     {
                        _loc4_.head.Bangs.setChildIndex(hairpiece.rightSprite,_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap1));
                     }
                     else
                     {
                        _loc4_.head.Bangs.setChildIndex(hairpiece.rightSprite,_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap1) + 1);
                     }
                  }
                  else if(hairpiece.depth == 0)
                  {
                     if(_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap0) > _loc4_.head.Bangs.getChildIndex(hairpiece.rightSprite))
                     {
                        _loc4_.head.Bangs.setChildIndex(hairpiece.rightSprite,_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap0));
                     }
                     else
                     {
                        _loc4_.head.Bangs.setChildIndex(hairpiece.rightSprite,_loc4_.head.Bangs.getChildIndex(_loc4_.head.Bangs.hairExSwap0) + 1);
                     }
                  }
               }
               catch (myError:Error){
               }
            }
            else if(hairpiece.attachPoint == 3)
            {
               try{
                  if(hairpiece.depth == 1)
                  {
                     if(_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap1) > _loc4_.HairBack.hairBack.getChildIndex(hairpiece.rightSprite))
                     {
                        _loc4_.HairBack.hairBack.setChildIndex(hairpiece.rightSprite,_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap1));
                     }
                     else
                     {
                        _loc4_.HairBack.hairBack.setChildIndex(hairpiece.rightSprite,_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap1) + 1);
                     }
                  }
                  else if (hairpiece.depth == 0)
                  {
                     if(_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap0) > _loc4_.HairBack.hairBack.getChildIndex(hairpiece.rightSprite))
                     {
                        _loc4_.HairBack.hairBack.setChildIndex(hairpiece.rightSprite,_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap0));
                     }
                     else
                     {
                        _loc4_.HairBack.hairBack.setChildIndex(hairpiece.rightSprite,_loc4_.HairBack.hairBack.getChildIndex(_loc4_.HairBack.hairBack.hairExSwap0) + 1);
                     }
                  }
               }
               catch (myError:Error){
               }
            }
            /* for modded attach points, defer to code in PartLayering.fixup to set layering */
         }
      }
   }
}
