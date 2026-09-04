package menu
{
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import system.MeterPersent;
   import system.MeterPersentRibon;
   import parameter.Dress_data;
   import parameter.Emotion_data;
   
   public class Huku_MarkSet
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var flag0:Boolean;
      
      private var flag1:Boolean;

      public static var xyRanges = {
         0: {
            "x0": [90, -90],
            "x1":  [-90, 90],
            "y": [90, -110]
         },
         1: {
            "x0": [22.5, -27.5],
            "x1": [22.5, -27.5],
            "y": [10, -40]
         },
         2: {
            "x0": [25, -25],
            "x1": [25, -25],
            "y": [25, -25]
         },
         3: {
            "x0": [25, -25],
            "x1": [-25, 25],
            "y": [25, -25]
         },
         4: {
            "x0": [25, -25],
            "x1": [25, -25],
            "y": [25, -25]
         },
         5: {
            "x0": [-25, 25],
            "x1": [-25, 25],
            "y": [-25, 25]
         },
         6: {
            "x0": [-15, 35],
            "x1": [-15, 35],
            "y": [25, -25]
         }
      }
      
      public function Huku_MarkSet(param1:int, param2:int, param3:String)
      {
         var _loc4_:int = 0;
         var _loc6_:Matrix = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         super();
         this.charaAdd = MenuClass.charaAdd[param1].head;
         this.charaData = MenuClass.charaData[param1];
         var _loc5_:Boolean = false;
         this.flag0 = false;
         this.flag1 = false;

         deleteFc(param1, param2, 0);
         deleteFc(param1, param2, 1);

         if(this.charaData["MarkPlus"]["_visible"][param2])
         {
            var attachPointIdx = this.charaData["MarkAdd" + param2]["_add0"];
            var targetMarkDepth = this.charaData["Mark" + param2]["_depth"];
            var attachPointLeft = getAttachPoint(param1, attachPointIdx, 0, targetMarkDepth);
            var attachPointRight = getAttachPoint(param1, attachPointIdx, 1, targetMarkDepth);

            if(this.charaData["Mark" + param2]["_reversal2"] == 0 || this.charaData["Mark" + param2]["_reversal2"] == 2)
            {
               if(this.charaAdd["mark" + param2 + "_" + 0] == undefined)
               {
                  (_loc11_ = new MovieClip()).name = "mark" + param2 + "_" + 0;
                  _loc11_ = new Chara_Loading.MarkClass();
                  // _loc11_.cacheAsBitmap = true;
                  attachPointLeft.addChild(_loc11_);
                  this.charaAdd["mark" + param2 + "_" + 0] = _loc11_;
                  this.charaAdd["mark" + param2 + "_" + 0].name = "mark" + param2 + "_" + 0;
                  new HukuClickClass(this.charaAdd["mark" + param2 + "_0"]);
                  _loc5_ = true;
               }
               else if(param3 == "depth" || param3 == "move" || param3 == "hairSet" || param3 == "reset")
               {
                  _loc5_ = true;
               }
               this.charaAdd["mark" + param2 + "_" + 0].gotoAndStop(this.charaData["Mark" + param2]["_menu"] + 2);
               this.flag0 = true;
            }
            
            if(this.charaData["Mark" + param2]["_reversal2"] == 0 || this.charaData["Mark" + param2]["_reversal2"] == 1)
            {
               if(this.charaAdd["mark" + param2 + "_" + 1] == undefined)
               {
                  (_loc12_ = new MovieClip()).name = "mark" + param2 + "_" + 1;
                  _loc12_ = new Chara_Loading.MarkClass();
                  // _loc12_.cacheAsBitmap = true;
                  attachPointRight.addChild(_loc12_);
                  this.charaAdd["mark" + param2 + "_" + 1] = _loc12_;
                  this.charaAdd["mark" + param2 + "_" + 1].name = "mark" + param2 + "_" + 1;
                  new HukuClickClass(this.charaAdd["mark" + param2 + "_1"]);
                  _loc5_ = true;
               }
               else if(param3 == "depth" || param3 == "move" || param3 == "hairSet" || param3 == "reset")
               {
                  _loc5_ = true;
               }
               this.charaAdd["mark" + param2 + "_" + 1].gotoAndStop(this.charaData["Mark" + param2]["_menu"] + 2);
               this.flag1 = true;
            }

            try
            {
               if(_loc5_)
               {
                  var curTopIdxLeft = attachPointLeft.numChildren - 1;
                  var curTopIdxRight = attachPointRight.numChildren - 1;
                  var bottomIdxLeft = 0;
                  var bottomIdxRight = 0;

                  if (attachPointIdx == 4) {
                     bottomIdxLeft = attachPointLeft.getChildIndex(attachPointLeft.eyeWhite) + 1;
                     bottomIdxRight = attachPointRight.getChildIndex(attachPointRight.eyeWhite) + 1;
                  }

                  for (var i = Main.hukusuuNum; i >= 0; i--) {
                     var slotAttachPt = this.charaData["MarkAdd" + i]["_add0"];
                     if (!this.charaData["MarkPlus"]["_visible"][i] || slotAttachPt != attachPointIdx) {
                        continue;
                     }

                     if (attachPointIdx == 0) {
                        if (this.charaData["Mark" + i]["_depth"] == 0) {
                           try {
                              this.charaAdd.setChildIndex(this.charaAdd["mark" + i + "_" + 1],this.charaAdd.getChildIndex(this.charaAdd.face) + 1);
                           } catch(myError:Error) {}

                           try {
                              this.charaAdd.setChildIndex(this.charaAdd["mark" + i + "_" + 0],this.charaAdd.getChildIndex(this.charaAdd.face) + 1);
                           } catch(myError:Error) {}
                        } else if (this.charaData["Mark" + i]["_depth"] == 1) {
                           try {
                              this.charaAdd.setChildIndex(this.charaAdd["mark" + i + "_" + 1],this.charaAdd.getChildIndex(this.charaAdd.defoEye) + 1);
                           } catch(myError:Error) {}

                           try {
                              this.charaAdd.setChildIndex(this.charaAdd["mark" + i + "_" + 0],this.charaAdd.getChildIndex(this.charaAdd.defoEye) + 1);
                           } catch(myError:Error) {}
                        }
                     } else {
                        if ((attachPointIdx == 1 || attachPointIdx == 5 || attachPointIdx == 6) && this.charaData["Mark" + i]["_depth"] != targetMarkDepth) {
                           continue;
                        }

                        if (this.charaData["Mark" + i]["_depth"] == 0) {
                           try {
                              attachPointRight.setChildIndex(this.charaAdd["mark" + i + "_" + 1], bottomIdxRight);
                           } catch(myError:Error) {}

                           try {
                              attachPointLeft.setChildIndex(this.charaAdd["mark" + i + "_" + 0], bottomIdxLeft);
                           } catch(myError:Error) {}
                        } else if (this.charaData["Mark" + i]["_depth"] == 1) {
                           try {
                              attachPointRight.setChildIndex(this.charaAdd["mark" + i + "_" + 1], curTopIdxRight);
                              curTopIdxRight--;
                           } catch(myError:Error) {}

                           try {
                              attachPointLeft.setChildIndex(this.charaAdd["mark" + i + "_" + 0], curTopIdxLeft);
                              curTopIdxLeft--;
                           } catch(myError:Error) {}
                        }
                     }

                     // if(this.charaData["Mark" + i]["_depth"] == 0 && this.charaData["Mark" + i]["_add0"] == 0)
                     // {
                     //    try {
                     //       this.charaAdd.setChildIndex(this.charaAdd["mark" + i + "_" + 1],this.charaAdd.getChildIndex(this.charaAdd.face) + 1);
                     //    } catch(myError:Error) {}
                     //    try
                     //    {
                     //       this.charaAdd.setChildIndex(this.charaAdd["mark" + i + "_" + 0],this.charaAdd.getChildIndex(this.charaAdd.face) + 1);
                     //    }
                     //    catch(myError:Error)
                     //    {
                     //    }
                     // }
                     // else if(this.charaData["Mark" + i]["_depth"] == 1)
                     // {
                     //    try
                     //    {
                     //       this.charaAdd.setChildIndex(this.charaAdd["mark" + i + "_" + 1],this.charaAdd.getChildIndex(this.charaAdd.defoEye) + 1);
                     //    }
                     //    catch(myError:Error)
                     //    {
                     //    }
                     //    try
                     //    {
                     //       this.charaAdd.setChildIndex(this.charaAdd["mark" + i + "_" + 0],this.charaAdd.getChildIndex(this.charaAdd.defoEye) + 1);
                     //    }
                     //    catch(myError:Error)
                     //    {
                     //    }
                     // }
                  }
               }
            }
            catch(myError:Error)
            {
               trace(myError.getStackTrace());
            }

            var selectedType = this.charaData["Mark" + param2]["_menu"];
            if (Dress_data.DressData["Mark" + param2][selectedType]["_varyA"]) {
               var variationInfo = Dress_data.DressData["Mark" + param2][selectedType]["_varyA"];
               var varySpriteName = variationInfo[0];
               for (var i = 0; i < 2; i++) {
                  try {
                     if (this.charaAdd["mark" + param2 + "_" + i]) {
                        this.charaAdd["mark" + param2 + "_" + i].mark0[varySpriteName].gotoAndStop(this.charaData["MarkVary" + param2]["_menu"] + 1);
                     }
                  } catch (err:Error) { }
               }
            }

            new MeterPersentRibon(0,1,param1,"MarkAlpha",param2);
            try
            {
               this.charaAdd["mark" + param2 + "_" + 0].alpha = MeterPersentRibon.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["mark" + param2 + "_" + 1].alpha = MeterPersentRibon.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
            _loc6_ = new Matrix();

            new MeterPersentRibon(360,0,param1,"MarkRotation",param2);
            _loc7_ = MeterPersentRibon.MeterPersentNum;

            if (attachPointIdx == 6) {
               _loc7_ += 190;
            }

            new MeterPersentRibon(xyRanges[attachPointIdx].y[0], xyRanges[attachPointIdx].y[1], param1, "MarkY", param2);
            _loc8_ = MeterPersentRibon.MeterPersentNum;

            if (attachPointIdx == 1 || attachPointIdx == 2 || attachPointIdx == 4 || attachPointIdx == 5 || attachPointIdx == 6) {
               new MeterPersentRibon(0.05, 0.55, param1, "MarkScaleX",param2);
            } else {
               new MeterPersentRibon(0.1,5,param1,"MarkScaleX",param2);
            }
            _loc9_ = MeterPersentRibon.MeterPersentNum;

            if(this.flag0)
            {
               if (attachPointIdx == 1 || attachPointIdx == 2 || attachPointIdx == 4 || attachPointIdx == 5 || attachPointIdx == 6) {
                  new MeterPersentRibon(-1.5,1.5,param1,"MarkScaleB",param2);
                  _loc6_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
                  this.charaAdd["mark" + param2 + "_" + 0].mark0.transform.matrix = _loc6_;
                  this.charaAdd["mark" + param2 + "_" + 0].mark0.rotation = _loc7_;
               } else {
                  new MeterPersentRibon(1.5,-1.5,param1,"MarkScaleB",param2);
                  _loc6_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
                  this.charaAdd["mark" + param2 + "_" + 0].mark0.transform.matrix = _loc6_;
                  this.charaAdd["mark" + param2 + "_" + 0].mark0.rotation = _loc7_ * -1;
               }
               new MeterPersentRibon(xyRanges[attachPointIdx].x0[0], xyRanges[attachPointIdx].x0[1], param1, "MarkX", param2);
               _loc13_ = MeterPersentRibon.MeterPersentNum;
            }

            if(this.flag1)
            {
               new MeterPersentRibon(-1.5,1.5,param1,"MarkScaleB",param2);
               _loc6_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
               this.charaAdd["mark" + param2 + "_" + 1].mark0.transform.matrix = _loc6_;
               this.charaAdd["mark" + param2 + "_" + 1].mark0.rotation = _loc7_;
               new MeterPersentRibon(xyRanges[attachPointIdx].x1[0], xyRanges[attachPointIdx].x1[1], param1, "MarkX", param2);
               _loc14_ = MeterPersentRibon.MeterPersentNum;
            }

            if(param3 == "paste" || param3 == "pasteRibon")
            {
               if(this.charaData["MarkScaleY" + param2]["_meter"] != this.charaData["MarkScaleX" + param2]["_meter"])
               {
                  MenuClass.systemData["LinkMark"]["_flag"] = false;
               }
            }
            if(MenuClass.systemData["LinkMark"]["_flag"] && (MenuClass._nowTabName == "MarkScaleX" || param3 == "random"))
            {
               this.charaData["MarkScaleY" + param2]["_meter"] = this.charaData["MarkScaleX" + param2]["_meter"];
            }
            if (attachPointIdx == 1 || attachPointIdx == 2 || attachPointIdx == 4 || attachPointIdx == 5 || attachPointIdx == 6) {
               new MeterPersentRibon(0.05, 0.55,param1,"MarkScaleY",param2);
            } else {
               new MeterPersentRibon(0.1,5,param1,"MarkScaleY",param2);
            }

            _loc10_ = MeterPersentRibon.MeterPersentNum;
            if(this.flag0)
            {
               this.charaAdd["mark" + param2 + "_" + 0].mark0.scaleX = _loc9_ * -1;
               this.charaAdd["mark" + param2 + "_" + 0].mark0.x = _loc13_;
            }
            if(this.flag1)
            {
               if (attachPointIdx == 1 || attachPointIdx == 2 || attachPointIdx == 4 || attachPointIdx == 5 || attachPointIdx == 6) {
                  this.charaAdd["mark" + param2 + "_" + 1].mark0.scaleX = _loc9_ * -1;
               } else {
                  this.charaAdd["mark" + param2 + "_" + 1].mark0.scaleX = _loc9_;
               }
               this.charaAdd["mark" + param2 + "_" + 1].mark0.x = _loc14_;
            }
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               if(_loc4_ == 0 && this.flag0 || _loc4_ == 1 && this.flag1)
               {
                  this.charaAdd["mark" + param2 + "_" + _loc4_].mark0.scaleY = _loc10_;
                  this.charaAdd["mark" + param2 + "_" + _loc4_].mark0.y = _loc8_;
                  this.charaAdd["mark" + param2 + "_" + _loc4_].faceMask.gotoAndStop(this.charaData["Contour"]["_menu"] + 1);
                  new MeterPersent(0.92,1.1,"ContourWidth",param1);
                  this.charaAdd["mark" + param2 + "_" + _loc4_].faceMask.scaleX = MeterPersent.MeterPersentNum;
                  new MeterPersent(-0.03,0.02,"BodyHeight",param1);
                  _loc15_ = MeterPersent.MeterPersentNum;
                  new MeterPersent(0.96,1.04,"ContourHeight",param1);
                  this.charaAdd["mark" + param2 + "_" + _loc4_].faceMask.scaleY = MeterPersent.MeterPersentNum + _loc15_;
               }
               _loc4_++;
            }
            new Chara_ColorClass(param1,"Mark" + param2);
         }
      }
      
      public static function deleteFc(character: int, param1:int, param2:int) : void
      {
         var charaAdd = MenuClass.charaAdd[character].head;

         var sprite = charaAdd["mark" + param1 + "_" + param2];
         if (sprite && sprite.parent) {
            try {
               sprite.parent.removeChild(sprite);
            } catch (err) {}
         }

         try
         {
            charaAdd.removeChild(charaAdd["mark" + param1 + "_" + param2]);
         } catch(myError:Error) {}

         try {
            charaAdd["eye" + param2].eyeball.removeChild(charaAdd["mark" + param1 + "_" + param2]);
         } catch(myError:Error) {}

         try {
            charaAdd["eye" + param2].removeChild(charaAdd["mark" + param1 + "_" + param2]);
         } catch(myError:Error) {}

         try {
            charaAdd.mouth.removeChild(charaAdd["mark" + param1 + "_" + param2]);
         } catch(myError:Error) {}

         try {
            if (charaAdd["eye" + param2].underLidAttachPoint) {
               charaAdd["eye" + param2].underLidAttachPoint.removeChild(charaAdd["mark" + param1 + "_" + param2]);
            }
         } catch(myError:Error) {}

         try {
            if (charaAdd["eye" + param2].overLidAttachPoint) {
               charaAdd["eye" + param2].overLidAttachPoint.removeChild(charaAdd["mark" + param1 + "_" + param2]);
            }
         } catch(myError:Error) {}

         try {
            if (charaAdd["eye" + param2].underMarkAttachPoint) {
               charaAdd["eye" + param2].underMarkAttachPoint.removeChild(charaAdd["mark" + param1 + "_" + param2]);
            }
         } catch(myError:Error) {}

         try {
            if (charaAdd["eye" + param2].overMarkAttachPoint) {
               charaAdd["eye" + param2].overMarkAttachPoint.removeChild(charaAdd["mark" + param1 + "_" + param2]);
            }
         } catch(myError:Error) {}

         try {
            if (charaAdd["eyebrow" + param2].underAttachPoint) {
               charaAdd["eyebrow" + param2].underAttachPoint.removeChild(charaAdd["mark" + param1 + "_" + param2]);
            }
         } catch(myError:Error) {}

         try {
            if (charaAdd["eyebrow" + param2].overAttachPoint) {
               charaAdd["eyebrow" + param2].overAttachPoint.removeChild(charaAdd["mark" + param1 + "_" + param2]);
            }
         } catch(myError:Error) {}


         charaAdd["mark" + param1 + "_" + param2] = null;
      }

      public static function getAttachPoint(character: int, attachPointIdx: int, side: int, depth: int) {
         if (attachPointIdx == 0) {
            return MenuClass.charaAdd[character].head;
         } else if (attachPointIdx == 1) {
            return getEyelidAttachPoint(character, side, depth == 1);
         } else if (attachPointIdx == 2) {
            return MenuClass.charaAdd[character].head["eye" + side].eyeball;
         } else if (attachPointIdx == 3) {
            return MenuClass.charaAdd[character].head.mouth;
         } else if (attachPointIdx == 4) {
            return MenuClass.charaAdd[character].head["eye" + side];
         } else if (attachPointIdx == 5) {
            return getInnerEyeAttachPoint(character, side, depth == 1);
         } else if (attachPointIdx == 6) {
            return getEyebrowAttachPoint(character, side, depth == 1);
         }

         return null;
      }

      public static function getInnerEyeAttachPoint(character: int, side: int, over: Boolean) {
         var eyeSprite = MenuClass.charaAdd[character].head["eye" + side];
         var eyeOpenFrame = 0;
         var pt = null;

         if (side == 0) {
            new MeterPersent(0, Emotion_data.EyeData.length - 1, "EmotionEyeLeft", character);
         } else {
            new MeterPersent(0, Emotion_data.EyeData.length - 1, "EmotionEyeRight", character);
         }
         eyeOpenFrame = Math.floor(MeterPersent.MeterPersentNum);

         if (over) {
            if (!eyeSprite.overMarkAttachPoint) {
               pt = new MovieClip();
               eyeSprite.addChildAt(pt, eyeSprite.getChildIndex(eyeSprite.eyeball) + 1);
               pt.rotation = eyeSprite.eyeWhite.rotation;
               eyeSprite.overMarkAttachPoint = pt;
            } else {
               pt = eyeSprite.overMarkAttachPoint;
            }
         } else {
            if (!eyeSprite.underMarkAttachPoint) {
               pt = new MovieClip();
               eyeSprite.addChildAt(pt, eyeSprite.getChildIndex(eyeSprite.eyeball));
               pt.rotation = eyeSprite.eyeWhite.rotation;
               eyeSprite.underMarkAttachPoint = pt;
            } else {
               pt = eyeSprite.underMarkAttachPoint;
            }
         }

         if (Emotion_data.EyeData[eyeOpenFrame][0] == 1) {
            pt.scaleY = Emotion_data.EyeData[eyeOpenFrame][2];
            pt.visible = true;
         } else {
            pt.scaleY = 1;
            pt.visible = false;
         }

         new MeterPersent(210,160,"EyeRotation", character);
         pt.rotation = MeterPersent.MeterPersentNum;

         return pt;
      }

      public static function getEyelidAttachPoint(character: int, side: int, over: Boolean) {
         var eyeSprite = MenuClass.charaAdd[character].head["eye" + side];
         var matx = getEyelidTransformMatrix(character, side);
         var pt = null;
         
         if (over) {
            if (!eyeSprite.overLidAttachPoint) {
               pt = new MovieClip();
               eyeSprite.addChildAt(pt, eyeSprite.getChildIndex(eyeSprite.eye2) + 1);
               eyeSprite.overLidAttachPoint = pt;
            } else {
               pt = eyeSprite.overLidAttachPoint;
            }
         } else {
            if (!eyeSprite.underLidAttachPoint) {
               pt = new MovieClip();
               eyeSprite.addChildAt(pt, eyeSprite.getChildIndex(eyeSprite.eyeball) + 1);
               eyeSprite.underLidAttachPoint = pt;
            } else {
               pt = eyeSprite.underLidAttachPoint;
            }
         }

         pt.transform.matrix = matx;

         return pt;
      }

      public static function updateEyelid(character: int, side: int) {
         var eyeSprite = MenuClass.charaAdd[character].head["eye" + side];
         var matx = getEyelidTransformMatrix(character, side);

         try {
            if (eyeSprite.overLidAttachPoint) {
               eyeSprite.overLidAttachPoint.transform.matrix = matx;

               var lidIdx = eyeSprite.getChildIndex(eyeSprite.eye2);
               var attachIdx = eyeSprite.getChildIndex(eyeSprite.overLidAttachPoint);

               if (attachIdx < lidIdx) {
                  eyeSprite.setChildIndex(eyeSprite.overLidAttachPoint, lidIdx);
               }
            }
         } catch (err) {
            trace(err.getStackTrace());
         }

         try {
            if (eyeSprite.underLidAttachPoint) {
               eyeSprite.underLidAttachPoint.transform.matrix = matx;

               var eyeballIdx = eyeSprite.getChildIndex(eyeSprite.eyeball);
               var attachIdx = eyeSprite.getChildIndex(eyeSprite.underLidAttachPoint);

               if (attachIdx < eyeballIdx) {
                  eyeSprite.setChildIndex(eyeSprite.underLidAttachPoint, eyeballIdx);
               }
            }
         } catch (err) {
            trace(err.getStackTrace());
         }
      }

      public static function getEyelidTransformMatrix(character: int, side: int) {
         new MeterPersent(8.9, 4.9, "EyeRotation", character);
         var sideName = "Left";
         var eyeOpenFrame = 0;
         var matx = new Matrix();
         var attachY = 0;

         if (side == 1) {
            sideName = "Right";
         }

         new MeterPersent(0, Emotion_data.EyeData.length - 1, "EmotionEye" + sideName, character);
         eyeOpenFrame = Math.floor(MeterPersent.MeterPersentNum);

         if (Emotion_data.EyeData[eyeOpenFrame][0] == 1) {
            new MeterPersent(8.9, 4.9, "EyeRotation", character);
            attachY = MeterPersent.MeterPersentNum;

            new MeterPersent(-2.5, 0.5, "EmotionEye" + sideName, character);
            attachY += MeterPersent.MeterPersentNum;
            matx.createBox(1, Emotion_data.EyeData[eyeOpenFrame][2], 0, 0, attachY);
         } else {
            new MeterPersent(15, -20, "EyeRotation", character);
            matx.createBox(
               1, 0.35,
               (Emotion_data.EyeData[eyeOpenFrame][2] + MeterPersent.MeterPersentNum) * (Math.PI / 180.0),
               0, 11
            );
         }

         return matx;
      }

      public static function getEyebrowAttachPoint(character: int, side: int, over: Boolean) {
         var browSprite = MenuClass.charaAdd[character].head["eyebrow" + side];
         var pt = null;
         var matx = getEyebrowTransformMatrix(character, side);
         
         if (over) {
            if (!browSprite.overAttachPoint) {
               pt = new MovieClip();
               browSprite.addChildAt(pt, browSprite.getChildIndex(browSprite.eyebrow) + 1);
               browSprite.overAttachPoint = pt;
            } else {
               pt = browSprite.overAttachPoint;
            }
         } else {
            if (!browSprite.underAttachPoint) {
               pt = new MovieClip();
               browSprite.addChildAt(pt, 0);
               browSprite.underAttachPoint = pt;
            } else {
               pt = browSprite.underAttachPoint;
            }
         }

         pt.transform.matrix = matx;

         return pt;
      }

      public static function getEyebrowTransformMatrix(character: int, side: int) {
         var browSprite = MenuClass.charaAdd[character].head["eyebrow" + side];
         var matx = new Matrix();
         var matx2 = new Matrix();

         matx.createBox(
            browSprite.eyebrow.scaleX, browSprite.eyebrow.scaleY,
            browSprite.eyebrow.rotation * (Math.PI / 180.0),
            browSprite.eyebrow.x, browSprite.eyebrow.y
         );

         matx2.createBox(
            browSprite.eyebrow.obj.scaleX, browSprite.eyebrow.obj.scaleY,
            browSprite.eyebrow.obj.rotation * (Math.PI / 180.0),
            browSprite.eyebrow.obj.x, browSprite.eyebrow.obj.y
         );

         matx2.concat(matx);
         return matx2;
      }

      public static function updateEyebrow(character: int, side: int) {
         var matx = getEyebrowTransformMatrix(character, side);
         var browSprite = MenuClass.charaAdd[character].head["eyebrow" + side];
         
         try {
            if (browSprite.overAttachPoint) {
               browSprite.overAttachPoint.transform.matrix = matx;
               var browIdx = browSprite.getChildIndex(browSprite.eyebrow);
               var attachIdx = browSprite.getChildIndex(browSprite.overAttachPoint);

               if (attachIdx < browIdx) {
                  browSprite.setChildIndex(browSprite.overAttachPoint, browIdx);
               }
            }
         } catch (err) {
            trace(err.getStackTrace());
         }

         try {
            if (browSprite.underAttachPoint) {
               browSprite.underAttachPoint.transform.matrix = matx;
               browSprite.setChildIndex(browSprite.underAttachPoint, 0);
            }
         } catch (err) {
            trace(err.getStackTrace());
         }
      }

      public static function clearMouthAttachedMarks(character: int) {
         for (var i = 0; i <= Main.hukusuuNum; i++) {
            if (MenuClass.charaData[character]["MarkAdd" + i]["_add0"] == 3) {
               deleteFc(character, i, 0);
               deleteFc(character, i, 1);
            }
         }
      }

      public static function updateMouth(character: int) {
         for (var i = 0; i <= Main.hukusuuNum; i++) {
            if (MenuClass.charaData[character]["MarkAdd" + i]["_add0"] == 3) {
               new Huku_MarkSet(character, i, "tab");
            }
         }
      }

      public static function updateMarkVaryMenu() : void
      {
         try
         {
            var slot = MenuClass.systemData["MarkPlus"]["_menu"];
            var selectedType = MenuClass.charaData[MenuClass._nowCharaNum]["Mark" + slot]["_menu"];
            var selectedData = Dress_data.DressData["Mark" + slot][selectedType];
            var charaAdd = MenuClass.charaAdd[MenuClass._nowCharaNum];
            if (selectedData["_varyA"]) {
               MenuClass.menuData["MarkVary"] = selectedData["_varyA"][1] - 1;
            } else {
               MenuClass.menuData["MarkVary"] = 0;
            }
         }
         catch(myError:Error) { }
      }
   }
}
