package menu
{
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import system.MeterPersentRibon;
   
   public class Huku_RibonSet
   {
       
      
      public function Huku_RibonSet()
      {
         super();
      }
      
      public static function setFc(param1:int, param2:int, param3:String) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:MovieClip = null;
         var _loc15_:Array = null;
         var _loc16_:Array = null;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:Matrix = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:MovieClip = null;
         var _loc4_:Object;
         if((_loc4_ = MenuClass.charaData[param1])["RibonPlus"]["_visible"][param2])
         {
            _loc7_ = false;
            _loc8_ = false;
            if(_loc4_["RibonAdd" + param2]["_add0"] == 0)
            {
               _loc9_ = MenuClass.charaAdd[param1];
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 1)
            {
               _loc9_ = MenuClass.charaAdd[param1].head;
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 2)
            {
               _loc9_ = MenuClass.charaAdd[param1].mune;
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 3)
            {
               _loc9_ = MenuClass.charaAdd[param1].dou;
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 4)
            {
               _loc9_ = MenuClass.charaAdd[param1].HairBack.hairBack;
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 5)
            {
               if(_loc4_["SideBurnLeft"]["_depth"] == 0)
               {
                  _loc9_ = MenuClass.charaAdd[param1].SideBurnMiddle.SideBurnLeft.SideBurn;
               }
               else
               {
                  _loc9_ = MenuClass.charaAdd[param1].head.SideBurnLeft.SideBurn;
               }
               if(_loc4_["SideBurnRight"]["_depth"] == 0)
               {
                  _loc11_ = MenuClass.charaAdd[param1].SideBurnMiddle.SideBurnRight.SideBurn;
               }
               else
               {
                  _loc11_ = MenuClass.charaAdd[param1].head.SideBurnRight.SideBurn;
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 6)
            {
               try
               {
                  _loc9_ = MenuClass.charaAdd[param1]["HairEx" + 0 + "_" + 0];
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc11_ = MenuClass.charaAdd[param1]["HairEx" + 0 + "_" + 1];
               }
               catch(myError:Error)
               {
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 7)
            {
               try
               {
                  _loc9_ = MenuClass.charaAdd[param1]["HairEx" + 1 + "_" + 0];
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc11_ = MenuClass.charaAdd[param1]["HairEx" + 1 + "_" + 1];
               }
               catch(myError:Error)
               {
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 8)
            {
               try
               {
                  _loc9_ = MenuClass.charaAdd[param1]["HairEx" + 2 + "_" + 0];
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc11_ = MenuClass.charaAdd[param1]["HairEx" + 2 + "_" + 1];
               }
               catch(myError:Error)
               {
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 9)
            {
               try
               {
                  _loc9_ = MenuClass.charaAdd[param1]["HairEx" + 3 + "_" + 0];
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc11_ = MenuClass.charaAdd[param1]["HairEx" + 3 + "_" + 1];
               }
               catch(myError:Error)
               {
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 10)
            {
               try
               {
                  _loc9_ = MenuClass.charaAdd[param1]["HairEx" + 4 + "_" + 0];
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc11_ = MenuClass.charaAdd[param1]["HairEx" + 4 + "_" + 1];
               }
               catch(myError:Error)
               {
               }
            }
            if(param3 == "depth" || param3 == "move" || param3 == "paste" || param3 == "pasteRibon" || param3 == "reset")
            {
               deleteFc(param1,param2,0);
               deleteFc(param1,param2,1);
            }
            _loc12_ = true;
            if(Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age" || Main.publishMode == "download" || Main.publishMode == "download_test" || Main.domainName == "pochi.x.fc2.com" || Main.domainName == "pochi.eek.jp")
            {
               _loc12_ = false;
            }
            _loc13_ = false;
            if(_loc4_["Ribon" + param2]["_reversal2"] == 0 || _loc4_["Ribon" + param2]["_reversal2"] == 2)
            {
               try
               {
                  if(_loc9_["Ribon" + param2 + "_" + 0] == undefined)
                  {
                     (_loc26_ = new MovieClip()).name = "Ribon" + param2 + "_0";
                     _loc26_ = new Chara_Loading.RibonClass();
                     _loc9_.addChild(_loc26_);
                     _loc9_["Ribon" + param2 + "_" + 0] = _loc26_;
                     _loc9_["Ribon" + param2 + "_" + 0].name = "Ribon" + param2 + "_" + 0;
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
                  _loc9_["Ribon" + param2 + "_" + 0].gotoAndStop(_loc4_["Ribon" + param2]["_menu"] + 2);
                  _loc7_ = true;
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               deleteFc(param1,param2,0);
            }
            if(_loc4_["Ribon" + param2]["_reversal2"] == 0 || _loc4_["Ribon" + param2]["_reversal2"] == 1)
            {
               try
               {
                  if(_loc4_["RibonAdd" + param2]["_add0"] == 5 || _loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10)
                  {
                     _loc10_ = _loc11_;
                  }
                  else
                  {
                     _loc10_ = _loc9_;
                  }
                  if(_loc10_["Ribon" + param2 + "_" + 1] == undefined)
                  {
                     (_loc14_ = new MovieClip()).name = "Ribon" + param2 + "_1";
                     _loc14_ = new Chara_Loading.RibonClass();
                     _loc10_.addChild(_loc14_);
                     _loc10_["Ribon" + param2 + "_" + 1] = _loc14_;
                     _loc10_["Ribon" + param2 + "_" + 1].name = "Ribon" + param2 + "_" + 1;
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
                  _loc10_["Ribon" + param2 + "_" + 1].gotoAndStop(_loc4_["Ribon" + param2]["_menu"] + 2);
                  _loc8_ = true;
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               deleteFc(param1,param2,1);
            }
            if(_loc4_["RibonAdd" + param2]["_add0"] == 0 || _loc4_["RibonAdd" + param2]["_add0"] == 1)
            {
               try
               {
                  _loc9_["Ribon" + param2 + "_" + 0].visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc9_["Ribon" + param2 + "_" + 1].visible = true;
               }
               catch(myError:Error)
               {
               }
            }
            if(_loc4_["RibonAdd" + param2]["_add0"] == 0)
            {
               if(_loc13_)
               {
                  _loc5_ = 0;
                  while(_loc5_ <= Main.RibonhukusuuNum)
                  {
                     try
                     {
                        DepthSetFc2(param1,Main.RibonhukusuuNum - _loc5_,1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        DepthSetFc2(param1,Main.RibonhukusuuNum - _loc5_,0);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 1)
            {
               if(_loc13_)
               {
                  _loc5_ = 0;
                  while(_loc5_ <= Main.RibonhukusuuNum)
                  {
                     try
                     {
                        _loc9_.setChildIndex(_loc9_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 1],_loc9_.getChildIndex(_loc9_.Horn_swap0) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc9_.setChildIndex(_loc9_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 0],_loc9_.getChildIndex(_loc9_.Horn_swap0) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 2)
            {
               if(_loc13_)
               {
                  _loc5_ = 0;
                  while(_loc5_ <= Main.RibonhukusuuNum)
                  {
                     try
                     {
                        _loc9_.setChildIndex(_loc9_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 1],_loc9_.getChildIndex(_loc9_.Collar1) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc9_.setChildIndex(_loc9_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 0],_loc9_.getChildIndex(_loc9_.Collar1) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 3)
            {
               if(_loc13_)
               {
                  _loc5_ = 0;
                  while(_loc5_ <= Main.RibonhukusuuNum)
                  {
                     try
                     {
                        _loc9_.setChildIndex(_loc9_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 1],_loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc9_.setChildIndex(_loc9_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 0],_loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 4)
            {
               if(_loc13_)
               {
                  _loc5_ = 0;
                  while(_loc5_ <= Main.RibonhukusuuNum)
                  {
                     try
                     {
                        _loc9_.setChildIndex(_loc9_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 1],_loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc9_.setChildIndex(_loc9_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 0],_loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 5)
            {
               if(_loc13_)
               {
                  _loc5_ = 0;
                  while(_loc5_ <= Main.RibonhukusuuNum)
                  {
                     try
                     {
                        _loc9_.setChildIndex(_loc9_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 0],_loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc11_.setChildIndex(_loc11_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 1],_loc11_.getChildIndex(_loc11_.ribonSwap) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10)
            {
               if(_loc13_)
               {
                  _loc5_ = 0;
                  while(_loc5_ <= Main.RibonhukusuuNum)
                  {
                     try
                     {
                        _loc9_.setChildIndex(_loc9_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 0],_loc9_.getChildIndex(_loc9_.ribonSwap) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc11_.setChildIndex(_loc11_["Ribon" + (Main.RibonhukusuuNum - _loc5_) + "_" + 1],_loc11_.getChildIndex(_loc11_.ribonSwap) + 1);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
               }
            }
            if(_loc4_["RibonAdd" + param2]["_add0"] == 0)
            {
               try
               {
                  new ColorFilterClass(MenuClass.tabMenuAdd["Ribon"].depth,false,-0.4,"link");
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  new ColorFilterClass(MenuClass.tabMenuAdd["Ribon"].depth,true,-0.4,"link");
               }
               catch(myError:Error)
               {
               }
            }
            _loc5_ = 0;
            for(; _loc5_ <= 1; _loc5_++)
            {
               try
               {
                  if((_loc4_["RibonAdd" + param2]["_add0"] == 5 || _loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10) && _loc5_ == 1)
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
                     if(_loc4_["RibonAdd" + param2]["_add0"] == 1)
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
                  continue;
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
                     if((_loc4_["RibonAdd" + param2]["_add0"] == 5 || _loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10) && _loc5_ == 1)
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
                  }
                  try
                  {
                     if(_loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.ball0.sen.totalFrames == 6)
                     {
                        _loc17_ = 2;
                     }
                     else if(_loc4_["RibonAdd" + param2]["_add0"] == 1)
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
                  }
                  try
                  {
                     if(_loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.totalFrames == 6)
                     {
                        _loc17_ = 2;
                     }
                     else if(_loc4_["RibonAdd" + param2]["_add0"] == 1)
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
            if(_loc4_["RibonAdd" + param2]["_add0"] == 1)
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
                  if(_loc4_["RibonScale" + param2]["_meter"] != _loc4_["RibonScaleY" + param2]["_meter"])
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
                        if((_loc4_["RibonAdd" + param2]["_add0"] == 5 || _loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10) && _loc5_ == 1)
                        {
                           _loc10_ = _loc11_;
                        }
                        else
                        {
                           _loc10_ = _loc9_;
                        }
                        if(MenuClass.systemData["LinkRibonLine"]["_flag"] && (MenuClass._nowTabName == "RibonScale" || param3 == "menu" || param3 == "random"))
                        {
                           if(_loc4_["RibonScale" + param2]["_meter"] >= _loc15_[_loc18_][0])
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][1]);
                              _loc4_["RibonLine" + param2]["_menu"] = 1;
                           }
                           else if(_loc4_["RibonScale" + param2]["_meter"] >= _loc15_[_loc18_][1])
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][2]);
                              _loc4_["RibonLine" + param2]["_menu"] = 2;
                           }
                           else if(_loc4_["RibonScale" + param2]["_meter"] >= _loc15_[_loc18_][2])
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][3]);
                              _loc4_["RibonLine" + param2]["_menu"] = 3;
                           }
                           else if(_loc4_["RibonScale" + param2]["_meter"] >= _loc15_[_loc18_][3])
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][4]);
                              _loc4_["RibonLine" + param2]["_menu"] = 4;
                           }
                           else if(_loc4_["RibonScale" + param2]["_meter"] >= _loc15_[_loc18_][4] || _loc4_["RibonScale" + param2]["_meter"] <= _loc15_[_loc18_][4])
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][5]);
                              _loc4_["RibonLine" + param2]["_menu"] = 5;
                           }
                        }
                        else if(_loc4_["RibonLine" + param2]["_menu"] == 0)
                        {
                           _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][0]);
                        }
                        else
                        {
                           _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.sen.gotoAndStop(_loc16_[_loc17_][_loc4_["RibonLine" + param2]["_menu"]]);
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
            }
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
                           if((_loc4_["RibonAdd" + param2]["_add0"] == 5 || _loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10) && _loc5_ == 1)
                           {
                              _loc10_ = _loc11_;
                           }
                           else
                           {
                              _loc10_ = _loc9_;
                           }
                           if(MenuClass.systemData["LinkRibonLine"]["_flag"] && (MenuClass._nowTabName == "RibonScale" || param3 == "menu" || param3 == "random"))
                           {
                              if(_loc4_["RibonScale" + param2]["_meter"] >= _loc15_[_loc18_][0])
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][1]);
                                 _loc4_["RibonLine" + param2]["_menu"] = 1;
                              }
                              else if(_loc4_["RibonScale" + param2]["_meter"] >= _loc15_[_loc18_][1])
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][2]);
                                 _loc4_["RibonLine" + param2]["_menu"] = 2;
                              }
                              else if(_loc4_["RibonScale" + param2]["_meter"] >= _loc15_[_loc18_][2])
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][3]);
                                 _loc4_["RibonLine" + param2]["_menu"] = 3;
                              }
                              else if(_loc4_["RibonScale" + param2]["_meter"] >= _loc15_[_loc18_][3])
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][4]);
                                 _loc4_["RibonLine" + param2]["_menu"] = 4;
                              }
                              else if(_loc4_["RibonScale" + param2]["_meter"] >= _loc15_[_loc18_][4] || _loc4_["RibonScale" + param2]["_meter"] <= _loc15_[_loc18_][4])
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][5]);
                                 _loc4_["RibonLine" + param2]["_menu"] = 5;
                              }
                           }
                           else if(_loc4_["RibonLine" + param2]["_menu"] == 0)
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][0]);
                           }
                           else
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc6_].sen.gotoAndStop(_loc16_[_loc17_][_loc4_["RibonLine" + param2]["_menu"]]);
                           }
                        }
                        catch(myError:Error)
                        {
                           continue;
                        }
                     }
                  }
                  _loc6_++;
               }
            }
            catch(myError:Error)
            {
            }
            if(MenuClass.systemData["LinkRibonScale"]["_flag"] && (param3 == "tab" || param3 == "menu" || param3 == "random"))
            {
               _loc4_["RibonScaleY" + param2]["_meter"] = _loc4_["RibonScale" + param2]["_meter"];
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
               catch(myError:Error)
               {
               }
               try
               {
                  _loc5_ = 0;
                  while(_loc5_ <= 3)
                  {
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0["ball" + _loc5_].rotation = _loc20_ * -1;
                     _loc5_++;
                  }
               }
               catch(myError:Error)
               {
               }
            }
            if(_loc8_)
            {
               try
               {
                  if(_loc4_["RibonAdd" + param2]["_add0"] == 5)
                  {
                     _loc10_ = _loc11_;
                     new MeterPersentRibon(1.5,-1.5,param1,"RibonScaleB",param2);
                     _loc19_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
                     _loc10_["Ribon" + param2 + "_" + 1].ribon0.transform.matrix = _loc19_;
                     new MeterPersentRibon(360,0,param1,"RibonRotation",param2);
                     _loc20_ = MeterPersentRibon.MeterPersentNum;
                  }
                  else if(_loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10)
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
               catch(myError:Error)
               {
               }
               try
               {
                  _loc5_ = 0;
                  while(_loc5_ <= 3)
                  {
                     _loc10_["Ribon" + param2 + "_" + 1].ribon0["ball" + _loc5_].rotation = _loc20_;
                     _loc5_++;
                  }
               }
               catch(myError:Error)
               {
               }
            }
            if(_loc4_["RibonAdd" + param2]["_add0"] == 1)
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
               catch(myError:Error)
               {
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 0)
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
               catch(myError:Error)
               {
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 2)
            {
               new MeterPersentRibon(-100,-700,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 3)
            {
               new MeterPersentRibon(0,-600,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 4)
            {
               new MeterPersentRibon(450,-150,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 5)
            {
               new MeterPersentRibon(350,-50,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10)
            {
               new MeterPersentRibon(550,-150,param1,"RibonY",param2);
               _loc21_ = MeterPersentRibon.MeterPersentNum;
            }
            if(_loc4_["RibonAdd" + param2]["_add0"] == 1)
            {
               _loc5_ = 0;
               for(; _loc5_ <= 1; _loc5_++)
               {
                  if(_loc5_ == 0 && _loc7_ || _loc5_ == 1 && _loc8_)
                  {
                     try
                     {
                        if(_loc4_["RibonAdd" + param2]["_add0"] == 5 && _loc5_ == 1)
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
                     }
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
                     catch(myError:Error)
                     {
                        continue;
                     }
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
                  if(_loc4_["Ribon" + param2]["_reversal"] == 0)
                  {
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.scaleX = _loc22_;
                  }
                  else
                  {
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.scaleX = _loc22_ * -1;
                  }
               }
            }
            catch(myError:Error)
            {
            }
            new Move_Head(param1);
            new Chara_SetSize(param1,"HeadScale",param3);
            if(_loc4_["RibonAdd" + param2]["_add0"] == 2 || _loc4_["RibonAdd" + param2]["_add0"] == 3)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(0,-150,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(0,150,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 4)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(0,-200,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(0,200,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 5)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(0,-100,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(0,-100,param1,"RibonX",param2);
                     _loc11_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else if(_loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10)
            {
               if(_loc7_)
               {
                  try
                  {
                     new MeterPersentRibon(150,-250,param1,"RibonX",param2);
                     _loc9_["Ribon" + param2 + "_" + 0].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               if(_loc8_)
               {
                  try
                  {
                     new MeterPersentRibon(-150,250,param1,"RibonX",param2);
                     _loc11_["Ribon" + param2 + "_" + 1].ribon0.x = MeterPersentRibon.MeterPersentNum;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            try
            {
               if(_loc8_)
               {
                  if(_loc4_["RibonAdd" + param2]["_add0"] == 5)
                  {
                     _loc10_ = _loc11_;
                     if(_loc4_["Ribon" + param2]["_reversal"] == 0)
                     {
                        _loc10_["Ribon" + param2 + "_" + 1].ribon0.scaleX = _loc22_;
                     }
                     else
                     {
                        _loc10_["Ribon" + param2 + "_" + 1].ribon0.scaleX = _loc22_ * -1;
                     }
                  }
                  else if(_loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10)
                  {
                     _loc10_ = _loc11_;
                     if(_loc4_["Ribon" + param2]["_reversal"] == 0)
                     {
                        _loc10_["Ribon" + param2 + "_" + 1].ribon0.scaleX = _loc22_ * -1;
                     }
                     else
                     {
                        _loc10_["Ribon" + param2 + "_" + 1].ribon0.scaleX = _loc22_;
                     }
                  }
                  else
                  {
                     _loc10_ = _loc9_;
                     if(_loc4_["Ribon" + param2]["_reversal"] == 0)
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
            catch(myError:Error)
            {
            }
            _loc5_ = 0;
            while(_loc5_ <= 1)
            {
               try
               {
                  if((_loc4_["RibonAdd" + param2]["_add0"] == 5 || _loc4_["RibonAdd" + param2]["_add0"] == 6 || _loc4_["RibonAdd" + param2]["_add0"] == 7 || _loc4_["RibonAdd" + param2]["_add0"] == 8 || _loc4_["RibonAdd" + param2]["_add0"] == 9 || _loc4_["RibonAdd" + param2]["_add0"] == 10) && _loc5_ == 1)
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
               }
               if(_loc5_ == 0 && _loc7_ || _loc5_ == 1 && _loc8_)
               {
                  try
                  {
                     _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.scaleY = _loc23_;
                     _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0.y = _loc21_;
                  }
                  catch(myError:Error)
                  {
                  }
                  if(_loc4_["Ribon" + param2]["_shadow"] == 0)
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
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["light" + _loc24_].visible = false;
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["shadow" + _loc24_].visible = false;
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc25_ = 0;
                           while(_loc25_ <= 3)
                           {
                              try
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc25_]["kage" + _loc6_ + "_" + _loc24_].visible = false;
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc25_]["light" + _loc24_].visible = false;
                              }
                              catch(myError:Error)
                              {
                              }
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
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["light" + _loc24_].visible = true;
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["shadow" + _loc24_].visible = true;
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc25_ = 0;
                           while(_loc25_ <= 3)
                           {
                              try
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc25_]["kage" + _loc6_ + "_" + _loc24_].visible = true;
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 _loc10_["Ribon" + param2 + "_" + _loc5_].ribon0["ball" + _loc25_]["light" + _loc24_].visible = true;
                              }
                              catch(myError:Error)
                              {
                              }
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
               if(_loc4_["RibonAdd" + param2]["_add0"] == 0 || _loc4_["RibonAdd" + param2]["_add0"] == 1)
               {
                  try
                  {
                     MenuClass.charaAdd[param1]["Ribon" + param2 + "_" + 0].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     MenuClass.charaAdd[param1]["Ribon" + param2 + "_" + 1].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     MenuClass.charaAdd[param1].head["Ribon" + param2 + "_" + 0].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     MenuClass.charaAdd[param1].head["Ribon" + param2 + "_" + 1].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
         }
         else
         {
            deleteFc(param1,param2,0);
            deleteFc(param1,param2,1);
         }
      }
      
      public static function deleteFc(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Object = MenuClass.charaAdd[param1];
         try
         {
            _loc4_.removeChild(_loc4_["Ribon" + param2 + "_" + param3]);
            _loc4_["Ribon" + param2 + "_" + param3] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_.head.removeChild(_loc4_.head["Ribon" + param2 + "_" + param3]);
            _loc4_.head["Ribon" + param2 + "_" + param3] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_.dou.removeChild(_loc4_.dou["Ribon" + param2 + "_" + param3]);
            _loc4_.dou["Ribon" + param2 + "_" + param3] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_.mune.removeChild(_loc4_.mune["Ribon" + param2 + "_" + param3]);
            _loc4_.mune["Ribon" + param2 + "_" + param3] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc4_.HairBack.hairBack.removeChild(_loc4_.HairBack.hairBack["Ribon" + param2 + "_" + param3]);
            _loc4_.HairBack.hairBack["Ribon" + param2 + "_" + param3] = null;
         }
         catch(myError:Error)
         {
         }
         if(param3 == 0)
         {
            try
            {
               _loc4_.head.SideBurnLeft.SideBurn.removeChild(_loc4_.head.SideBurnLeft.SideBurn["Ribon" + param2 + "_" + 0]);
               _loc4_.head.SideBurnLeft.SideBurn["Ribon" + param2 + "_" + 0] = null;
            }
            catch(myError:Error)
            {
            }
            try
            {
               _loc4_.SideBurnMiddle.SideBurnLeft.SideBurn.removeChild(_loc4_.SideBurnMiddle.SideBurnLeft.SideBurn["Ribon" + param2 + "_" + 0]);
               _loc4_.SideBurnMiddle.SideBurnLeft.SideBurn["Ribon" + param2 + "_" + 0] = null;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               _loc4_.head.SideBurnRight.SideBurn.removeChild(_loc4_.head.SideBurnRight.SideBurn["Ribon" + param2 + "_" + 1]);
               _loc4_.head.SideBurnRight.SideBurn["Ribon" + param2 + "_" + 1] = null;
            }
            catch(myError:Error)
            {
            }
            try
            {
               _loc4_.SideBurnMiddle.SideBurnRight.SideBurn.removeChild(_loc4_.SideBurnMiddle.SideBurnRight.SideBurn["Ribon" + param2 + "_" + 1]);
               _loc4_.SideBurnMiddle.SideBurnRight.SideBurn["Ribon" + param2 + "_" + 1] = null;
            }
            catch(myError:Error)
            {
            }
         }
         if(param3 == 0)
         {
            try
            {
               _loc4_["HairEx" + 0 + "_" + 0].removeChild(_loc4_["HairEx" + 0 + "_" + 0]["Ribon" + param2 + "_" + 0]);
               _loc4_["HairEx" + 0 + "_" + 0]["Ribon" + param2 + "_" + 0] = null;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               _loc4_["HairEx" + 0 + "_" + 1].removeChild(_loc4_["HairEx" + 0 + "_" + 1]["Ribon" + param2 + "_" + 1]);
               _loc4_["HairEx" + 0 + "_" + 1]["Ribon" + param2 + "_" + 1] = null;
            }
            catch(myError:Error)
            {
            }
         }
         if(param3 == 0)
         {
            try
            {
               _loc4_["HairEx" + 1 + "_" + 0].removeChild(_loc4_["HairEx" + 1 + "_" + 0]["Ribon" + param2 + "_" + 0]);
               _loc4_["HairEx" + 1 + "_" + 0]["Ribon" + param2 + "_" + 0] = null;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               _loc4_["HairEx" + 1 + "_" + 1].removeChild(_loc4_["HairEx" + 1 + "_" + 1]["Ribon" + param2 + "_" + 1]);
               _loc4_["HairEx" + 1 + "_" + 1]["Ribon" + param2 + "_" + 1] = null;
            }
            catch(myError:Error)
            {
            }
         }
         if(param3 == 0)
         {
            try
            {
               _loc4_["HairEx" + 2 + "_" + 0].removeChild(_loc4_["HairEx" + 2 + "_" + 0]["Ribon" + param2 + "_" + 0]);
               _loc4_["HairEx" + 2 + "_" + 0]["Ribon" + param2 + "_" + 0] = null;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               _loc4_["HairEx" + 2 + "_" + 1].removeChild(_loc4_["HairEx" + 2 + "_" + 1]["Ribon" + param2 + "_" + 1]);
               _loc4_["HairEx" + 2 + "_" + 1]["Ribon" + param2 + "_" + 1] = null;
            }
            catch(myError:Error)
            {
            }
         }
         if(param3 == 0)
         {
            try
            {
               _loc4_["HairEx" + 3 + "_" + 0].removeChild(_loc4_["HairEx" + 3 + "_" + 0]["Ribon" + param2 + "_" + 0]);
               _loc4_["HairEx" + 3 + "_" + 0]["Ribon" + param2 + "_" + 0] = null;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               _loc4_["HairEx" + 3 + "_" + 1].removeChild(_loc4_["HairEx" + 3 + "_" + 1]["Ribon" + param2 + "_" + 1]);
               _loc4_["HairEx" + 3 + "_" + 1]["Ribon" + param2 + "_" + 1] = null;
            }
            catch(myError:Error)
            {
            }
         }
         if(param3 == 0)
         {
            try
            {
               _loc4_["HairEx" + 4 + "_" + 0].removeChild(_loc4_["HairEx" + 4 + "_" + 0]["Ribon" + param2 + "_" + 0]);
               _loc4_["HairEx" + 4 + "_" + 0]["Ribon" + param2 + "_" + 0] = null;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               _loc4_["HairEx" + 4 + "_" + 1].removeChild(_loc4_["HairEx" + 4 + "_" + 1]["Ribon" + param2 + "_" + 1]);
               _loc4_["HairEx" + 4 + "_" + 1]["Ribon" + param2 + "_" + 1] = null;
            }
            catch(myError:Error)
            {
            }
         }
      }
      
      public static function DepthSetFc2(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Object = MenuClass.charaData[param1];
         var _loc5_:Object = MenuClass.charaAdd[param1];
         if(_loc4_["Ribon" + param2]["_depth"] == 3)
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
         else if(_loc4_["Ribon" + param2]["_depth"] == 2)
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
         else if(_loc4_["Ribon" + param2]["_depth"] == 1)
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
         else if(_loc4_["Ribon" + param2]["_depth"] == 0)
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
