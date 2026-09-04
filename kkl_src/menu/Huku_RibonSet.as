package menu
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import system.MeterPersentRibon;
   import parts.Ribbon;
   
   public class Huku_RibonSet
   {
      public static var ribbonSprites: Array = [{}, {}, {}, {}, {}, {}, {}, {}, {}];
      
      public function Huku_RibonSet()
      {
         super();
      }

      public static function setFc(param1:int, param2:int, param3:String) : void
      {
         try {
            return actualSetFc(param1, param2, param3);
         } catch (err: Error) {
            Main.logError(err, "in Huku_RibonSet.setFc(" + param1 + ", ..., " + param3 + ")");
         }
      }
      
      public static function actualSetFc(param1:int, param2:int, param3:String) : void
      {
         var _loc5_:int = 0; // Temp var used for iteration
         var _loc6_:int = 0; // Temp var used for iteration
         var _loc7_:Boolean = false; // True if left-hand ribbon is shown
         var _loc8_:Boolean = false; // True if right-hand ribbon is shown
         var _loc9_:Object = null;  // Sprite to attach to for left-hand ribbon
         var _loc10_:Object = null; // Temp variable used when setting params for both ribbons
         var _loc11_:Object = null; // Sprite to attach to for right-hand ribbon
         var _loc12_:Boolean = false; // Flag for calling HukuClickClass
         var _loc13_:Boolean = false; // Flag for resetting Z-index / depth for ribbons
         var _loc14_:MovieClip = null; // Temp var for adding right-hand ribbon sprite to attachment point (if not created yet)
         var _loc15_:Array = null; // Thresholds for auto-setting border thickness depending on scale
         var _loc16_:Array = null; // Border thickness values (corresponding to _loc15_)
         var _loc17_:int = 0; // Index into _loc16_; depends on # of frames in border sprite and attachment point
         var _loc18_:int = 0; // Index into _loc15_; depends on attachment point (set to 1 if attach point is head)
         var _loc19_:Matrix = null; // Transform matrix for ribbon sprite
         var _loc20_:Number = NaN; // Rotation degrees for ribbon sprite
         var _loc21_:Number = NaN; // Ribbon Y location
         var _loc22_:Number = NaN; // Ribbon X scale
         var _loc23_:Number = NaN; // Ribbon Y scale
         var _loc24_:int = 0; // Temp var used for iteration
         var _loc25_:int = 0; // Temp var used for iteration
         var _loc26_:MovieClip = null; // Temp var for adding left-hand ribbon sprite to attachment point (if not created yet)
         var _loc4_:Object = MenuClass.charaData[param1];

         var slotData: Ribbon = Ribbon.fromCharacter(param1, param2);
          // trace(slotData.character + " / " + slotData.slot + " : visible=" + slotData.visible + " itemType=" + slotData.itemType);

         if(slotData.visible)
         {
            _loc7_ = false;
            _loc8_ = false;

            _loc9_ = slotData.getSpriteParent(0);
            _loc11_ = slotData.getSpriteParent(1);

            if(param3 == "depth" || param3 == "move" || param3 == "paste" || param3 == "pasteRibon" || param3 == "reset")
            {
               deleteFc(param1, param2, 0);
               deleteFc(param1, param2, 1);
            }

            _loc12_ = true;
            if(Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age" || Main.publishMode == "download" || Main.publishMode == "download_test" || Main.domainName == "pochi.x.fc2.com" || Main.domainName == "pochi.eek.jp")
            {
               _loc12_ = false;
            }

            if (!ribbonSprites[param1]) {
               ribbonSprites[param1] = {};
            }

            _loc13_ = false;
            if(_loc9_ && (slotData.reversal2 == 0 || slotData.reversal2 == 2))
            {
               try
               {
                  if(!_loc9_["Ribon" + param2 + "_" + 0])
                  {
                     (_loc26_ = new MovieClip()).name = "Ribon" + param2 + "_0";
                     _loc26_ = new Chara_Loading.RibonClass();
                     // _loc26_.cacheAsBitmap = true;
                     _loc9_.addChild(_loc26_);
                     _loc9_["Ribon" + param2 + "_" + 0] = _loc26_;
                     _loc9_["Ribon" + param2 + "_" + 0].name = "Ribon" + param2 + "_" + 0;
                     ribbonSprites[param1]["Ribon" + param2 + "_" + 0] = _loc26_;
                     if(_loc12_)
                     {
                        new HukuClickClass(_loc9_["Ribon" + param2 + "_" + 0]);
                     }
                     new Stage_MoveClass(_loc9_["Ribon" + param2 + "_" + 0]);
                     _loc13_ = true;
                  }
                  else if(param3 == "depth" || param3 == "move" || param3 == "reset")
                  {
                     _loc13_ = true;
                  }
                  _loc9_["Ribon" + param2 + "_" + 0].gotoAndStop(slotData.itemType + 2);
                  _loc7_ = true;
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
                  /* Note: this specifically checks for ribbons that need mirroring on different sprites. */
                  if(
                     (slotData.attachPoint == 5 || slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10)
                     || (slotData.attachPoint >= 92 && slotData.attachPoint <= 97)
                  ) {
                     _loc10_ = _loc11_;
                  } else {
                     _loc10_ = _loc9_;
                  }

                  if (!_loc10_) {
                     deleteFc(param1,param2,1);
                  } else if(!_loc10_["Ribon" + param2 + "_" + 1]) {
                     (_loc14_ = new MovieClip()).name = "Ribon" + param2 + "_1";
                     _loc14_ = new Chara_Loading.RibonClass();
                     // _loc14_.cacheAsBitmap = true;
                     _loc10_.addChild(_loc14_);
                     _loc10_["Ribon" + param2 + "_" + 1] = _loc14_;
                     _loc10_["Ribon" + param2 + "_" + 1].name = "Ribon" + param2 + "_" + 1;
                     ribbonSprites[param1]["Ribon" + param2 + "_" + 1] = _loc14_;
                     if(_loc12_)
                     {
                        new HukuClickClass(_loc10_["Ribon" + param2 + "_" + 1]);
                     }
                     new Stage_MoveClass(_loc10_["Ribon" + param2 + "_" + 1]);
                     _loc13_ = true;
                  }
                  else if(param3 == "depth" || param3 == "move" || param3 == "reset")
                  {
                     _loc13_ = true;
                  }
                  _loc10_["Ribon" + param2 + "_" + 1].gotoAndStop(slotData.itemType + 2);
                  _loc8_ = (!!_loc10_);
               }
               catch(myError:Error)
               {
                  Main.logError(myError, "while adding Ribon" + param2 + "_1 in Huku_RibonSet.setFc(" + param1 + ", ...)");
               }
            }
            else
            {
               deleteFc(param1,param2,1);
            }

            if(slotData.attachPoint == 0 || slotData.attachPoint == 1)
            {
               try
               {
                  _loc9_["Ribon" + param2 + "_" + 0].visible = true;
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               try
               {
                  _loc9_["Ribon" + param2 + "_" + 1].visible = true;
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            }
            if(slotData.attachPoint == 0)
            {
               if(_loc13_)
               {
                  for each (var ribbon in Ribbon.getVisibleRibbons(param1).reverse()) {
                     if (ribbon.attachPoint == 0) {
                        try
                        {
                           DepthSetFc2(param1, ribbon.slot, 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                        try
                        {
                           DepthSetFc2(param1, ribbon.slot, 0);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                     }
                  }
               }
            }
            else if(slotData.attachPoint == 1)
            {
               if(_loc13_)
               {
                  for each (var ribbon in Ribbon.getVisibleRibbons(param1).reverse()) {
                     if (ribbon.attachPoint == 1) {
                        try
                        {
                           _loc9_.setChildIndex(ribbon.rightSprite,_loc9_.getChildIndex(_loc9_.Horn_swap0) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                        try
                        {
                           _loc9_.setChildIndex(ribbon.leftSprite,_loc9_.getChildIndex(_loc9_.Horn_swap0) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                     }
                  }
               }
            }
            else if(slotData.attachPoint == 2) /* NOTE: attach point 99 uses mod-aware layering */
            {
               if(_loc13_)
               {
                  for each (var ribbon in Ribbon.getVisibleRibbons(param1).reverse()) {
                     if (ribbon.attachPoint == 2) {
                        try
                        {
                           _loc9_.setChildIndex(ribbon.rightSprite, _loc9_.getChildIndex(_loc9_.Collar1) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                        try
                        {
                           _loc9_.setChildIndex(ribbon.leftSprite, _loc9_.getChildIndex(_loc9_.Collar1) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                     }
                  }
               }
               PartLayering.fixup(param1, ["mune"]);
            }
            else if(slotData.attachPoint == 3) /* NOTE: attach point 98 uses mod-aware layering */
            {
               if(_loc13_)
               {
                  for each (var ribbon in Ribbon.getVisibleRibbons(param1).reverse()) {
                     if (ribbon.attachPoint == 3) {
                        try
                        {
                           _loc9_.setChildIndex(ribbon.rightSprite, _loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                        try
                        {
                           _loc9_.setChildIndex(ribbon.leftSprite, _loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                     }
                  }
               }
               PartLayering.fixup(param1, ["dou"]);
            }
            else if(slotData.attachPoint == 4)
            {
               if(_loc13_)
               {
                  for each (var ribbon in Ribbon.getVisibleRibbons(param1).reverse()) {
                     if (ribbon.attachPoint == 4) {
                        try
                        {
                           _loc9_.setChildIndex(ribbon.rightSprite, _loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                        try
                        {
                           _loc9_.setChildIndex(ribbon.leftSprite, _loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                     }
                  }
               }
            }
            else if(slotData.attachPoint == 5)
            {
               if(_loc13_)
               {
                  for each (var ribbon in Ribbon.getVisibleRibbons(param1).reverse()) {
                     if (ribbon.attachPoint == 5) {
                        try
                        {
                           _loc9_.setChildIndex(ribbon.leftSprite, _loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                        try
                        {
                           _loc11_.setChildIndex(ribbon.rightSprite, _loc11_.getChildIndex(_loc11_.ribonSwap) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                     }
                  }
               }
            }
            else if(slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10)
            {
               if(_loc13_)
               {
                  for each (var ribbon in Ribbon.getVisibleRibbons(param1).reverse()) {
                     if (ribbon.attachPoint == 5) {
                        try
                        {
                           _loc9_.setChildIndex(ribbon.leftSprite, _loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                        try
                        {
                           _loc11_.setChildIndex(ribbon.rightSprite, _loc11_.getChildIndex(_loc11_.ribonSwap) + 1);
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                     }
                  }
               }
            } else if (slotData.attachPoint >= 91 && slotData.attachPoint <= 99) {
               if (slotData.attachPoint != 91) {
                  try {
                     if (slotData.depth <= 1) {
                        _loc9_.setChildIndex(_loc9_["Ribon" + param2 + "_" + 0], 0);
                     } else {
                        _loc9_.setChildIndex(_loc9_["Ribon" + param2 + "_" + 0], _loc9_.numChildren - 1);
                     }
                  } catch (err: Error) {
                     // Main.logError(err, "in Huku_RibonSet.setFc(" + param1 + ", ...)");
                  }
               
                  try {
                     if (slotData.depth <= 1) {
                        _loc11_.setChildIndex(_loc11_["Ribon" + param2 + "_" + 1], 0);
                     } else {
                        _loc11_.setChildIndex(_loc11_["Ribon" + param2 + "_" + 1], _loc11_.numChildren - 1);
                     }
                  } catch (err: Error) {
                     // Main.logError(err, "in Huku_RibonSet.setFc(" + param1 + ", ...)");
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

               // sortModAttachSprites(param1, [slotData.attachPoint], true);
            }

            /* check for mod attach points here */
            if((slotData.attachPoint == 0) || (slotData.attachPoint >= 91 && slotData.attachPoint <= 99))
            {
               try
               {
                  new ColorFilterClass(MenuClass.tabMenuAdd["Ribon"].depth,false,-0.4,"link");
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            }
            else
            {
               try
               {
                  new ColorFilterClass(MenuClass.tabMenuAdd["Ribon"].depth,true,-0.4,"link");
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            }
            _loc5_ = 0;
            for(; _loc5_ <= 1; _loc5_++)
            {
               try
               {
                  if((
                     (slotData.attachPoint == 5 || slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10)
                     || (slotData.attachPoint >= 92 && slotData.attachPoint <= 97)
                  ) && _loc5_ == 1)
                  {
                     _loc10_ = _loc11_;
                  }
                  else
                  {
                     _loc10_ = _loc9_;
                  }
                  if(_loc5_ == 0 && _loc7_ || _loc5_ == 1 && _loc8_)
                  {
                     _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.mouseChildren = false;
                     _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.buttonMode = true;
                     if(slotData.attachPoint == 1)
                     {
                        _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.gotoAndStop(2);
                     }
                     else
                     {
                        _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.gotoAndStop(1);
                     }
                  }
               }
               catch(myError:Error)
               {
                  /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */
               }
               try
               {
                  new MeterPersentRibon(0,1,param1,"RibonAlpha",param2);
                  _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.alpha = MeterPersentRibon.MeterPersentNum;
               }
               catch(myError:Error)
               {
                  /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */
               }
            }
            _loc15_ = [[70,50,30,10,0],[80,60,40,20,0]];
            _loc16_ = [[9,1,2,3,4,5],[9,3,5,6,7,8],[6,1,2,3,4,5]];
            _loc5_ = 0;
            for(; _loc5_ <= 1; _loc5_++)
            {
               if(_loc5_ == 0 && _loc7_ || _loc5_ == 1 && _loc8_)
               {
                  try
                  {
                     if((
                        (slotData.attachPoint == 5 || slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10)
                        || (slotData.attachPoint >= 92 && slotData.attachPoint <= 97)
                     ) && _loc5_ == 1)
                     {
                        _loc10_ = _loc11_;
                     }
                     else
                     {
                        _loc10_ = _loc9_;
                     }
                  }
                  catch(myError:Error)
                  {
                     /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */
                  }
                  try
                  {
                     if(_loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.ball0.sen.totalFrames == 6)
                     {
                        _loc17_ = 2;
                     }
                     else if(slotData.attachPoint == 1)
                     {
                        _loc17_ = 1;
                     }
                     else
                     {
                        _loc17_ = 0;
                     }
                  }
                  catch(myError:Error)
                  {
                     /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */
                  }
                  try
                  {
                     if(_loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.totalFrames == 6)
                     {
                        _loc17_ = 2;
                     }
                     else if(slotData.attachPoint == 1)
                     {
                        _loc17_ = 1;
                     }
                     else
                     {
                        _loc17_ = 0;
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            if(slotData.attachPoint == 1)
            {
               _loc18_ = 1;
            }
            else
            {
               _loc18_ = 0;
            }
            try
            {
               if(param3 == "paste" || param3 == "pasteRibon")
               {
                  if(slotData.scaleX != slotData.scaleY)
                  {
                     MenuClass.systemData["LinkRibonScale"]["_flag"] = false;
                  }
               }
               _loc5_ = 0;
               for(; _loc5_ <= 1; _loc5_++)
               {
                  if(_loc5_ == 0 && _loc7_ || _loc5_ == 1 && _loc8_)
                  {
                     try
                     {
                        if((
                           (slotData.attachPoint == 5 || slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10)
                           || (slotData.attachPoint >= 92 && slotData.attachPoint <= 97)
                        ) && _loc5_ == 1)
                        {
                           _loc10_ = _loc11_;
                        }
                        else
                        {
                           _loc10_ = _loc9_;
                        }
                        if(MenuClass.systemData["LinkRibonLine"]["_flag"] && (MenuClass._nowTabName == "RibonScale" || param3 == "menu" || param3 == "random"))
                        {
                           // _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.alpha = 100;
                           _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.visible = true;
                           if(slotData.scaleX >= _loc15_[_loc18_][0])
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][1]);
                              slotData.lineType = 1;
                           }
                           else if(slotData.scaleX >= _loc15_[_loc18_][1])
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][2]);
                              slotData.lineType = 2;
                           }
                           else if(slotData.scaleX >= _loc15_[_loc18_][2])
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][3]);
                              slotData.lineType = 3;
                           }
                           else if(slotData.scaleX >= _loc15_[_loc18_][3])
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][4]);
                              slotData.lineType = 4;
                           }
                           else if(slotData.scaleX >= _loc15_[_loc18_][4] || slotData.scaleX <= _loc15_[_loc18_][4])
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][5]);
                              slotData.lineType = 5;
                           }
                        }
                        else
                        {
                           if (slotData.lineType == 0) {
                              // _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.alpha = 0;
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.visible = false;
                           } else {
                              // _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.alpha = 100;
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][slotData.lineType]);
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.visible = true;
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
            catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            try
            {
               _loc6_ = 0;
               while(_loc6_ <= 3)
               {
                  _loc5_ = 0;
                  for(; _loc5_ <= 1; _loc5_++)
                  {
                     if(_loc5_ == 0 && _loc7_ || _loc5_ == 1 && _loc8_)
                     {
                        try
                        {
                           if((
                              (slotData.attachPoint == 5 || slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10)
                              || (slotData.attachPoint >= 92 && slotData.attachPoint <= 97)
                           ) && _loc5_ == 1)
                           {
                              _loc10_ = _loc11_;
                           }
                           else
                           {
                              _loc10_ = _loc9_;
                           }
                           if(MenuClass.systemData["LinkRibonLine"]["_flag"] && (MenuClass._nowTabName == "RibonScale" || param3 == "menu" || param3 == "random"))
                           {
                              // _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.alpha = 100;
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.visible = true;
                              if(slotData.scaleX >= _loc15_[_loc18_][0])
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][1]);
                                 slotData.lineType = 1;
                              }
                              else if(slotData.scaleX >= _loc15_[_loc18_][1])
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][2]);
                                 slotData.lineType = 2;
                              }
                              else if(slotData.scaleX >= _loc15_[_loc18_][2])
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][3]);
                                 slotData.lineType = 3;
                              }
                              else if(slotData.scaleX >= _loc15_[_loc18_][3])
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][4]);
                                 slotData.lineType = 4;
                              }
                              else if(slotData.scaleX >= _loc15_[_loc18_][4] || slotData.scaleX <= _loc15_[_loc18_][4])
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][5]);
                                 slotData.lineType = 5;
                              }
                           }
                           else
                           {
                              if (slotData.lineType == 0) {
                                 // _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.alpha = 0;
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.visible = false;
                              } else {
                                 // _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.alpha = 100;
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][slotData.lineType]);
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.visible = true;
                              }
                           }
                        }
                        catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                           continue;
                     }
                  }
                  _loc6_++;
               }
            }
            catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            if(MenuClass.systemData["LinkRibonScale"]["_flag"] && (param3 == "tab" || param3 == "menu" || param3 == "random"))
            {
               slotData.scaleY = slotData.scaleX;
            }
            _loc19_ = new Matrix();
            if(_loc7_)
            {
               try
               {
                  new MeterPersentRibon(1.5,-1.5,param1,"RibonScaleB",param2);
                  _loc19_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
                  _loc9_["Ribon" + param2 + "_" + 0].ribon0.transform.matrix = _loc19_;
                  new MeterPersentRibon(360,0,param1,"RibonRotation",param2);
                  _loc20_ = MeterPersentRibon.MeterPersentNum;
                  _loc9_["Ribon" + param2 + "_" + 0].ribon0.rotation = _loc20_;
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               try
               {
                  _loc5_ = 0;
                  while(_loc5_ <= 3)
                  {
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0["ball" + _loc5_].rotation = _loc20_ * -1;
                     _loc5_++;
                  }
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            }
            if(_loc8_)
            {
               try
               {
                  if(slotData.attachPoint == 5)
                  {
                     _loc10_ = _loc11_;
                     new MeterPersentRibon(1.5,-1.5,param1,"RibonScaleB",param2);
                     _loc19_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
                     _loc10_["Ribon" + param2 + "_" + 1].ribon0.transform.matrix = _loc19_;
                     new MeterPersentRibon(360,0,param1,"RibonRotation",param2);
                     _loc20_ = MeterPersentRibon.MeterPersentNum;
                  }
                  else if(slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10 || (slotData.attachPoint >= 92 && slotData.attachPoint <= 97))
                  {
                     _loc10_ = _loc11_;
                     new MeterPersentRibon(-1.5,1.5,param1,"RibonScaleB",param2);
                     _loc19_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
                     _loc10_["Ribon" + param2 + "_" + 1].ribon0.transform.matrix = _loc19_;
                     new MeterPersentRibon(0,360,param1,"RibonRotation",param2);
                     _loc20_ = MeterPersentRibon.MeterPersentNum;
                  }
                  else
                  {
                     _loc10_ = _loc9_;
                     new MeterPersentRibon(-1.5,1.5,param1,"RibonScaleB",param2);
                     _loc19_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
                     _loc10_["Ribon" + param2 + "_" + 1].ribon0.transform.matrix = _loc19_;
                     new MeterPersentRibon(0,360,param1,"RibonRotation",param2);
                     _loc20_ = MeterPersentRibon.MeterPersentNum;
                  }
                  _loc10_["Ribon" + param2 + "_" + 1].ribon0.rotation = _loc20_;
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               try
               {
                  _loc5_ = 0;
                  while(_loc5_ <= 3)
                  {
                     _loc10_["Ribon" + param2 + "_" + 1].ribon0["ball" + _loc5_].rotation = _loc20_;
                     _loc5_++;
                  }
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            }
            if(slotData.attachPoint == 1)
            {
               try
               {
                  if(_loc7_)
                  {
                     new MeterPersentRibon(0,-60,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  if(_loc8_)
                  {
                     new MeterPersentRibon(0,60,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  new MeterPersentRibon(40,-80,param1,"RibonY",param2);
                  _loc21_ = MeterPersentRibon.MeterPersentNum;
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            }
            else if(slotData.attachPoint == 0)
            {
               try
               {
                  if(_loc7_)
                  {
                     new MeterPersentRibon(0,-80,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  if(_loc8_)
                  {
                     new MeterPersentRibon(0,80,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  new MeterPersentRibon(120,-120,param1,"RibonY",param2);
                  _loc21_ = MeterPersentRibon.MeterPersentNum;
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            }
            else if(slotData.attachPoint == 2 || slotData.attachPoint == 99)
            {
               new MeterPersentRibon(-100,-700,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(slotData.attachPoint == 3 || slotData.attachPoint == 98)
            {
               new MeterPersentRibon(0,-600,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(slotData.attachPoint == 4)
            {
               new MeterPersentRibon(450,-150,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(slotData.attachPoint == 5)
            {
               new MeterPersentRibon(350,-50,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10)
            {
               new MeterPersentRibon(550,-150,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(slotData.attachPoint == 95)
            {
               new MeterPersentRibon(-60,-340,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(slotData.attachPoint == 96)
            {
               new MeterPersentRibon(16,-170,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(slotData.attachPoint == 97)
            {
               new MeterPersentRibon(30,-30,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(slotData.attachPoint == 92 || slotData.attachPoint == 93)
            {
               new MeterPersentRibon(650, -350,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(slotData.attachPoint == 94)
            {
               new MeterPersentRibon(500, -500,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(slotData.attachPoint == 91)
            {
               try
               {
                  if(_loc7_)
                  {
                     new MeterPersentRibon(0,-80,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  if(_loc8_)
                  {
                     new MeterPersentRibon(0,80,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  new MeterPersentRibon(100, -900,param1,"RibonY",param2);
                  _loc21_ = MeterPersentRibon.MeterPersentNum;
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            }

            if(slotData.attachPoint == 1)
            {
               _loc5_ = 0;
               for(; _loc5_ <= 1; _loc5_++)
               {
                  if(_loc5_ == 0 && _loc7_ || _loc5_ == 1 && _loc8_)
                  {
                     try
                     {
                        if(slotData.attachPoint == 5 && _loc5_ == 1)
                        {
                           _loc10_ = _loc11_;
                        }
                        else
                        {
                           _loc10_ = _loc9_;
                        }
                     }
                     catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                     try
                     {
                        if(_loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.totalFrames == 1)
                        {
                           new MeterPersentRibon(0.3,0.7,param1,"RibonScale",param2);
                           _loc22_ = MeterPersentRibon.MeterPersentNum;
                           new MeterPersentRibon(0.3,0.7,param1,"RibonScaleY",param2);
                           _loc23_ = MeterPersentRibon.MeterPersentNum;
                        }
                        else
                        {
                           new MeterPersentRibon(0.6,1.4,param1,"RibonScale",param2);
                           _loc22_ = MeterPersentRibon.MeterPersentNum;
                           new MeterPersentRibon(0.6,1.4,param1,"RibonScaleY",param2);
                           _loc23_ = MeterPersentRibon.MeterPersentNum;
                        }
                     }
                     catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                        continue;
                  }
               }
            }
            else
            {
               new MeterPersentRibon(0.5,2,param1,"RibonScale",param2);
               _loc22_ = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(0.5,2,param1,"RibonScaleY",param2);
               _loc23_ = MeterPersentRibon.MeterPersentNum;
            }
            try
            {
               if(_loc7_)
               {
                  if(slotData.reversal == 0)
                  {
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.scaleX = _loc22_;
                  }
                  else
                  {
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.scaleX = _loc22_ * -1;
                  }
               }
            }
            catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            if (param3 == "move") {
               for each (var ribbon:Ribbon in Ribbon.getVisibleRibbons(param1).reverse())
               {
                  if (ribbon.slot > slotData.slot) {
                     break;
                  } else {
                     new Move_Head(param1);
                     break;
                  }
               }
            } else {
               new Move_Head(param1);
            }
            new Chara_SetSize(param1,"HeadScale",param3);
            if(slotData.attachPoint == 2 || slotData.attachPoint == 3 || slotData.attachPoint == 99 || slotData.attachPoint == 98)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(0,-150,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(0,150,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
            }
            else if(slotData.attachPoint == 4)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(0,-200,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(0,200,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
            }
            else if(slotData.attachPoint == 5)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(0,-100,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(0,-100,param1,"RibonX",param2);
                     _loc11_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
            }
            else if(slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(150,-250,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(-150,250,param1,"RibonX",param2);
                     _loc11_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
            }
            else if(slotData.attachPoint >= 95 && slotData.attachPoint <= 97)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(150,-150,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(-150,150,param1,"RibonX",param2);
                     _loc11_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
            }
            else if(slotData.attachPoint == 92 || slotData.attachPoint == 93)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(-515, 485, param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(515, -485,param1,"RibonX",param2);
                     _loc11_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
            }
            else if(slotData.attachPoint == 94)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(-500, 500, param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(500, -500, param1,"RibonX",param2);
                     _loc11_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
            }

            if (slotData.attachPoint == 93) {
               if(_loc7_)
               {
                  try
                  {
                     _loc9_["Ribon" + param2 + "_" + 0].x = MenuClass.charaAdd[param1].handm1_0.hand.arm0.x;
                     _loc9_["Ribon" + param2 + "_" + 0].y = MenuClass.charaAdd[param1].handm1_0.hand.arm0.y;
                     _loc9_["Ribon" + param2 + "_" + 0].rotation = MenuClass.charaAdd[param1].handm1_0.hand.arm1.currentFrame;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }

               if(_loc8_)
               {
                  try
                  {
                     _loc11_["Ribon" + param2 + "_" + 1].x = MenuClass.charaAdd[param1].handm1_1.hand.arm0.x;
                     _loc11_["Ribon" + param2 + "_" + 1].y = MenuClass.charaAdd[param1].handm1_1.hand.arm0.y;
                     _loc11_["Ribon" + param2 + "_" + 1].rotation = MenuClass.charaAdd[param1].handm1_1.hand.arm1.currentFrame;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
            } else if (slotData.attachPoint == 94) {
               if(_loc7_)
               {
                  try
                  {
                     _loc9_["Ribon" + param2 + "_" + 0].x = -15;
                     _loc9_["Ribon" + param2 + "_" + 0].y = 100;
                     _loc9_["Ribon" + param2 + "_" + 0].rotation = ((MenuClass.charaAdd[param1].handm1_0.hand.arm0.currentFrame / 100) * -120) + 30;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }

               if(_loc8_)
               {
                  try
                  {
                     _loc11_["Ribon" + param2 + "_" + 1].x = -15;
                     _loc11_["Ribon" + param2 + "_" + 1].y = 100;
                     _loc11_["Ribon" + param2 + "_" + 1].rotation = ((MenuClass.charaAdd[param1].handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
            }

            try
            {
               if(_loc8_)
               {
                  if(slotData.attachPoint == 5)
                  {
                     _loc10_ = _loc11_;
                     if(slotData.reversal == 0)
                     {
                        _loc10_["Ribon" + param2 + "_" + 1].ribon0.scaleX = _loc22_;
                     }
                     else
                     {
                        _loc10_["Ribon" + param2 + "_" + 1].ribon0.scaleX = _loc22_ * -1;
                     }
                  }
                  else if(
                     slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10
                     || (slotData.attachPoint >= 92 && slotData.attachPoint <= 97)
                  )
                  {
                     _loc10_ = _loc11_;
                     if(slotData.reversal == 0)
                     {
                        _loc10_["Ribon" + param2 + "_" + 1].ribon0.scaleX = _loc22_ * -1;
                     }
                     else
                     {
                        _loc10_["Ribon" + param2 + "_" + 1].ribon0.scaleX = _loc22_;
                     }

                     if (slotData.attachPoint >= 92 && slotData.attachPoint <= 97) {
                        _loc10_["Ribon" + param2 + "_" + 1].scaleX = -1;
                     }
                  }
                  else
                  {
                     _loc10_ = _loc9_;
                     if(slotData.reversal == 0)
                     {
                        _loc10_["Ribon" + param2 + "_" + 1].ribon0.scaleX = _loc22_ * -1;
                     }
                     else
                     {
                        _loc10_["Ribon" + param2 + "_" + 1].ribon0.scaleX = _loc22_;
                     }
                  }
               }
            }
            catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            _loc5_ = 0;
            while(_loc5_ <= 1)
            {
               try
               {
                  if((
                     (slotData.attachPoint == 5 || slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10)
                     || (slotData.attachPoint >= 92 && slotData.attachPoint <= 97)
                  ) && _loc5_ == 1)
                  {
                     _loc10_ = _loc11_;
                  }
                  else
                  {
                     _loc10_ = _loc9_;
                  }
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               if(_loc5_ == 0 && _loc7_ || _loc5_ == 1 && _loc8_)
               {
                  try
                  {
                     _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.scaleY = _loc23_;
                     _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.y = _loc21_;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                  if(!slotData.shadow)
                  {
                     _loc24_ = 0;
                     while(_loc24_ <= 1)
                     {
                        _loc6_ = 0;
                        while(_loc6_ <= 2)
                        {
                           try
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["kage" + _loc6_ + "_" + _loc24_].visible = false;
                           }
                           catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                           try
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["light" + _loc24_].visible = false;
                           }
                           catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                           try
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["shadow" + _loc24_].visible = false;
                           }
                           catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                           _loc25_ = 0;
                           while(_loc25_ <= 3)
                           {
                              try
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc25_]["kage" + _loc6_ + "_" + _loc24_].visible = false;
                              }
                              catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                              try
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc25_]["light" + _loc24_].visible = false;
                              }
                              catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                              _loc25_++;
                           }
                           _loc6_++;
                        }
                        _loc24_++;
                     }
                  }
                  else
                  {
                     _loc24_ = 0;
                     while(_loc24_ <= 1)
                     {
                        _loc6_ = 0;
                        while(_loc6_ <= 2)
                        {
                           try
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["kage" + _loc6_ + "_" + _loc24_].visible = true;
                           }
                           catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                           try
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["light" + _loc24_].visible = true;
                           }
                           catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                           try
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["shadow" + _loc24_].visible = true;
                           }
                           catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                           _loc25_ = 0;
                           while(_loc25_ <= 3)
                           {
                              try
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc25_]["kage" + _loc6_ + "_" + _loc24_].visible = true;
                              }
                              catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                              try
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc25_]["light" + _loc24_].visible = true;
                              }
                              catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                              _loc25_++;
                           }
                           _loc6_++;
                        }
                        _loc24_++;
                     }
                  }
               }
               _loc5_++;
            }
            new Chara_ColorClass(param1,"Ribon" + param2);
            if(_loc4_["Hat"]["_visible"][0] && _loc4_["Hat"]["_hair4"] == 0)
            {
               if(slotData.attachPoint == 0 || slotData.attachPoint == 1)
               {
                  try
                  {
                     MenuClass.charaAdd[param1]["Ribon" + param2 + "_" + 0].visible = false;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                  try
                  {
                     MenuClass.charaAdd[param1]["Ribon" + param2 + "_" + 1].visible = false;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                  try
                  {
                     MenuClass.charaAdd[param1].head["Ribon" + param2 + "_" + 0].visible = false;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
                  try
                  {
                     MenuClass.charaAdd[param1].head["Ribon" + param2 + "_" + 1].visible = false;
                  }
                  catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
               }
            }

            /* Apply fine-tuning offsets after the main position values are applied,
             * both for convenience/efficiency and so that we apply the fine-tuning to a rounded main position value.
             */
            new MeterPersentRibon(-0.5, 0.5, param1, "RibonFineX", param2);
            var fineTuneX = MeterPersentRibon.MeterPersentNum;

            new MeterPersentRibon(0.5, -0.5, param1, "RibonFineY", param2);
            var fineTuneY = MeterPersentRibon.MeterPersentNum;
            
            var rightParent = _loc9_;

            if((
               (slotData.attachPoint == 5 || slotData.attachPoint == 6 || slotData.attachPoint == 7 || slotData.attachPoint == 8 || slotData.attachPoint == 9 || slotData.attachPoint == 10)
               || (slotData.attachPoint >= 92 && slotData.attachPoint <= 97)
            ))
            {
               rightParent = _loc11_;
            }

            if(_loc7_)
            {
               try
               {
                  _loc9_["Ribon" + param2 + "_0"].ribon0.x -= fineTuneX;
                  _loc9_["Ribon" + param2 + "_0"].ribon0.y += fineTuneY;
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            }

            if(_loc8_)
            {
               try
               {
                  rightParent["Ribon" + param2 + "_1"].ribon0.x += fineTuneX;
                  rightParent["Ribon" + param2 + "_1"].ribon0.y += fineTuneY;
               }
               catch(myError:Error) { /* Main.logError(myError, "in Huku_RibonSet.setFc(" + param1 + ", ...)"); */ }
            }

         }
         else
         {
            deleteFc(param1,param2,0);
            deleteFc(param1,param2,1);
         }
      }

      public static function removeAndUnset(parent: MovieClip, slot: int, side: int) : void {
         try {
            parent.removeChild(parent["Ribon" + slot + "_" + side]);
         } catch (err: Error) {};

         try {
            parent["Ribon" + slot + "_" + side] = null;
         } catch (err: Error) {};
      }
      
      public static function deleteFc(charIdx:int, slot:int, side:int) : void
      {
         if (!ribbonSprites[charIdx]) {
            ribbonSprites[charIdx] = {};
         }

         var sprite = ribbonSprites[charIdx]["Ribon" + slot + "_" + side];
         ribbonSprites[charIdx]["Ribon" + slot + "_" + side] = null;
         
         /* Check every possible location in case the attach point changed before we got here. */
         var charaAdd = MenuClass.charaAdd[charIdx];

         removeAndUnset(charaAdd, slot, side);
         removeAndUnset(charaAdd.head, slot, side);
         removeAndUnset(charaAdd.mune, slot, side);
         removeAndUnset(charaAdd.dou, slot, side);

         /* wrap in try-catch in case the property accesses fail due to nonexistent sprites */
         try {
            removeAndUnset(charaAdd.HairBack.hairBack, slot, side);
         } catch (err: Error) {}; 

         if (side == 0) {
            try {
               removeAndUnset(charaAdd.head.SideBurnLeft.SideBurn, slot, 0);
            } catch (err: Error) {}; 

            try {
               removeAndUnset(charaAdd.SideBurnMiddle.SideBurnLeft.SideBurn, slot, 0);
            } catch (err: Error) {};
         } else {
            try {
               removeAndUnset(charaAdd.head.SideBurnRight.SideBurn, slot, 1);
            } catch (err: Error) {}; 

            try {
               removeAndUnset(charaAdd.SideBurnMiddle.SideBurnRight.SideBurn, slot, 1);
            } catch (err: Error) {};
         }
         
         for (var i = 0; i < 5; i++) {
            try {
               removeAndUnset(charaAdd["HairEx" + i + "_" + side], slot, side);
            } catch (err: Error) {};
         }

         removeAndUnset(charaAdd["handm0_" + side].hand, slot, side);
         removeAndUnset(charaAdd["handm1_" + side].hand, slot, side);
         removeAndUnset(charaAdd["handm1_" + side].hand.arm0, slot, side);
         removeAndUnset(charaAdd["ashi" + side].thigh.actual.thigh, slot, side);
         removeAndUnset(charaAdd["ashi" + side].foot.actual.foot, slot, side);

         try {
            removeAndUnset(charaAdd["ashi" + side].leg.actual.leg, slot, side);
         } catch (err: Error) {}; 
      }

      public static function forEachAttachedSprite(character: int, leftFn = null, rightFn = null) : void {
         var curSprite = null;
         var charaAdd = MenuClass.charaAdd[character];
         var charaData = MenuClass.charaData[character];

         for each (var ribbon: Ribbon in Ribbon.getAllRibbons(character)) {
            var leftParent = null;
            var rightParent = null;

            try {
               leftParent = ribbon.getSpriteParent(0);
               rightParent = ribbon.getSpriteParent(1);
            } catch (err: Error) {
               Main.logError(err, "in Huku_RibonSet.forEachAttachedSprite(" + character + ", ...)");
               continue;
            }

            try  {
               if (leftParent && leftFn && (ribbon.reversal2 == 0 || ribbon.reversal2 == 2)) {
                  if(ribbon.leftSprite) {
                     leftFn(ribbon.leftSprite, leftParent, ribbon.slot, ribbon.attachPoint, charaAdd, charaData, ribbon);
                  }
               }
            } catch(err: Error) {
               Main.logError(err, "in Huku_RibonSet.forEachAttachedSprite(" + character + ", ...)");
            }

            try  {
               if (rightFn && (ribbon.reversal2 == 0 || ribbon.reversal2 == 1)) {
                  if (rightParent) {
                     if(ribbon.rightSprite) {
                        rightFn(ribbon.rightSprite, rightParent, ribbon.slot, ribbon.attachPoint, charaAdd, charaData, ribbon);
                        continue;
                     }
                  }

                  if (leftParent) {
                     if(ribbon.rightSprite) {
                        rightFn(ribbon.rightSprite, leftParent, ribbon.slot, ribbon.attachPoint, charaAdd, charaData, ribbon);
                     }
                  }
               }
            } catch(err: Error) {
               Main.logError(err, "in Huku_RibonSet.forEachAttachedSprite(" + character + ", ...)");
            }
         }
      }
      
      public static function collectSpriteGroups (character: int) : Object {
         var spriteGroups = {};

         forEachAttachedSprite(character, function (curSprite, parent, i, curAttach, charaAdd, charaData, ribbon) {
            var curDepth = ribbon.depth;
            if (!spriteGroups[curAttach]) spriteGroups[curAttach] = {};
            if (!spriteGroups[curAttach][curDepth]) spriteGroups[curAttach][curDepth] = [];

            spriteGroups[curAttach][curDepth].push([curSprite, i]);
         }, function (curSprite, parent, i, curAttach, charaAdd, charaData, ribbon) {
            var curDepth = ribbon.depth;
            if (!spriteGroups[curAttach]) spriteGroups[curAttach] = {};
            if (!spriteGroups[curAttach][curDepth]) spriteGroups[curAttach][curDepth] = [];

            spriteGroups[curAttach][curDepth].push([curSprite, i]);
         });

         return spriteGroups;
      }

      public static function sortModAttachSprites (character: int, sortGroups: Array, sortByDepth: Boolean) : void {
         var spriteGroups = collectSpriteGroups(character);
         
         for (var i = 0; i < sortGroups.length; i++) {
            var groupNum = sortGroups[i];
            if (!spriteGroups[groupNum] || (groupNum < 91)) continue;
            
            for (var depth:Object in spriteGroups[groupNum]) {
               PartLayering.sortSpriteIndices(spriteGroups[groupNum][depth], "character " + character + " attach point " + groupNum + " depth " + depth + " ribbons");
               // PartLayering.sortSpriteIndices(spriteGroups[groupNum][depth][1], "character " + character + " attach point " + groupNum + " depth " + depth + " group 1 ribbons");
            }
         }
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

         // sortModAttachSprites(character, [94], true);
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
               // this.charaAdd["handm1_" + _loc12_].hand.arm0.rotation
               // curSprite.rotation = charaAdd.handm1_0.hand.arm1.currentFrame;
               // curSprite.scaleX = charaAdd.handm1_0.hand.arm0.scaleX;
               // curSprite.scaleY = charaAdd.handm1_0.hand.arm0.scaleY;
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
               // curSprite.rotation = charaAdd.handm1_1.hand.arm1.currentFrame;
               // curSprite.scaleX = -charaAdd.handm1_1.hand.arm0.scaleX;
               // curSprite.scaleY = charaAdd.handm1_1.hand.arm0.scaleY;
               curSprite.scaleX = -1;
            } else if (attachType == 94) {
               curSprite.rotation = ((charaAdd.handm1_1.hand.arm0.currentFrame / 100) * -120) + 30;
               curSprite.scaleX = -1;
            }
         });

         // sortModAttachSprites(character, [92, 93, 94], true);
      }

      public static function updateLegs(character: int) : void
      {
         var charaAdd = MenuClass.charaAdd[character];
         var charaData = MenuClass.charaData[character];
         var curParent = null;
         var curSprite = null;

         if (!ribbonSprites[character]) {
            ribbonSprites[character] = {};
         }

         for each (var ribbon: Ribbon in Ribbon.getVisibleRibbons(character)) {
            try  {
               var leftParent = null;
               var rightParent = null;
               if (ribbon.attachPoint == 95) {
                  leftParent = charaAdd.ashi0.thigh.actual.thigh;
                  rightParent = charaAdd.ashi1.thigh.actual.thigh;
               } else if (ribbon.attachPoint == 96) {
                  if (charaAdd.ashi0.leg != null) {
                     leftParent = charaAdd.ashi0.leg.actual.leg;
                  }

                  if (charaAdd.ashi1.leg != null) {
                     rightParent = charaAdd.ashi1.leg.actual.leg;
                  }
               } else if (ribbon.attachPoint == 97) {
                  leftParent = charaAdd.ashi0.foot.actual.foot;
                  rightParent = charaAdd.ashi1.foot.actual.foot;
               } else {
                  continue;
               }

               if (ribbon.reversal2 == 0 || ribbon.reversal2 == 2) {
                  curSprite = ribbonSprites[character]["Ribon" + ribbon.slot + "_0"];

                  if (curSprite) {
                     if (leftParent) {
                        leftParent.addChild(curSprite);
                        leftParent["Ribon" + ribbon.slot + "_0"] = curSprite;
                     } else if (curSprite.parent) {
                        removeAndUnset(curSprite.parent, ribbon.slot, 0);
                     }
                  } else {
                     removeAndUnset(leftParent, ribbon.slot, 0);
                  }
               }
            }
            catch(myError:Error)
            {
               Main.logError(myError, "in Huku_RibonSet.updateLegs(" + character + ")");
            }

            try {
               if (ribbon.reversal2 == 0 || ribbon.reversal2 == 1) {
                  curSprite = ribbonSprites[character]["Ribon" + ribbon.slot + "_1"];

                  if (curSprite) {
                     if (rightParent) {
                        rightParent.addChild(curSprite);
                        rightParent["Ribon" + ribbon.slot + "_1"] = curSprite;
                     } else if (curSprite.parent) {
                        removeAndUnset(curSprite.parent, ribbon.slot, 1);
                     }
                  } else {
                     removeAndUnset(rightParent, ribbon.slot, 1);
                  }
               }
            }
            catch(myError:Error)
            {
               Main.logError(myError, "in Huku_RibonSet.updateLegs(" + character + ")");
            }
         }

         // sortModAttachSprites(character, [95, 96, 97], true);
      }

      public static function DepthSetFc2(param1:int, param2:int, param3:int) : void
      {
         var slotData = Ribbon.fromCharacter(param1, param2);
         var _loc5_:Object = MenuClass.charaAdd[param1];

         /* Don't mess with depth for ribbons with modded attach options. */
         if (slotData.attachPoint >= 91) {
            return;
         }

         if(slotData.depth == 3)
         {
            if(_loc5_.getChildIndex(_loc5_.RibonSwap0Guide) > _loc5_.getChildIndex(_loc5_["Ribon" + param2 + "_" + param3]))
            {
               _loc5_.setChildIndex(_loc5_["Ribon" + param2 + "_" + param3],_loc5_.getChildIndex(_loc5_.RibonSwap0Guide));
            }
            else
            {
               _loc5_.setChildIndex(_loc5_["Ribon" + param2 + "_" + param3],_loc5_.getChildIndex(_loc5_.RibonSwap0Guide) + 1);
            }
         }
         else if(slotData.depth == 2)
         {
            if(_loc5_.getChildIndex(_loc5_.head) > _loc5_.getChildIndex(_loc5_["Ribon" + param2 + "_" + param3]))
            {
               _loc5_.setChildIndex(_loc5_["Ribon" + param2 + "_" + param3],_loc5_.getChildIndex(_loc5_.head));
            }
            else
            {
               _loc5_.setChildIndex(_loc5_["Ribon" + param2 + "_" + param3],_loc5_.getChildIndex(_loc5_.head) + 1);
            }
         }
         else if(slotData.depth == 1)
         {
            if(_loc5_.getChildIndex(_loc5_.HairBack) > _loc5_.getChildIndex(_loc5_["Ribon" + param2 + "_" + param3]))
            {
               _loc5_.setChildIndex(_loc5_["Ribon" + param2 + "_" + param3],_loc5_.getChildIndex(_loc5_.HairBack));
            }
            else
            {
               _loc5_.setChildIndex(_loc5_["Ribon" + param2 + "_" + param3],_loc5_.getChildIndex(_loc5_.HairBack) + 1);
            }
         }
         else if(slotData.depth == 0)
         {
            if(_loc5_.getChildIndex(_loc5_.hane) > _loc5_.getChildIndex(_loc5_["Ribon" + param2 + "_" + param3]))
            {
               _loc5_.setChildIndex(_loc5_["Ribon" + param2 + "_" + param3],_loc5_.getChildIndex(_loc5_.hane));
            }
            else
            {
               _loc5_.setChildIndex(_loc5_["Ribon" + param2 + "_" + param3],_loc5_.getChildIndex(_loc5_.hane) + 1);
            }
         }
      }
   }
}
