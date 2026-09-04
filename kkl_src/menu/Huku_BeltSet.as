package menu
{
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import parameter.Dress_data;
   import system.MeterPersent;
   import system.MeterPersentRibon;
   
   public class Huku_BeltSet
   {
       
      
      private var charaNum:int;
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var flag0:Boolean;
      
      private var flag1:Boolean;
      
      public function Huku_BeltSet(param1:int, param2:int, param3:String)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Matrix = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:MovieClip = null;
         var _loc18_:MovieClip = null;
         super();
         this.charaNum = param1;
         this.charaData = MenuClass.charaData[this.charaNum];
         if(MenuClass._nowHeaderName == "EasyWristband0")
         {
            if(this.charaData["Belt" + param2]["_visible"][0])
            {
               this.charaData["BeltPlus"]["_visible"][param2] = true;
            }
            else
            {
               this.charaData["BeltPlus"]["_visible"][param2] = false;
            }
         }
         if(this.charaData["BeltPlus"]["_visible"][param2])
         {
            _loc7_ = -400;
            if(this.charaData["Belt" + param2]["_depth"] >= 2)
            {
               this.charaAdd = MenuClass.charaAdd[this.charaNum];
               _loc6_ = -750;
               try
               {
                  _loc7_ = MenuClass.charaAdd[this.charaNum].dou["belt" + param2 + "_" + 0].beltDou.belt0.y;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc7_ = MenuClass.charaAdd[this.charaNum].dou["belt" + param2 + "_" + 1].beltDou.belt0.y;
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               this.charaAdd = MenuClass.charaAdd[this.charaNum].dou;
               _loc6_ = -450;
               try
               {
                  _loc7_ = MenuClass.charaAdd[this.charaNum]["belt" + param2 + "_" + 0].beltDou.belt0.y;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc7_ = MenuClass.charaAdd[this.charaNum]["belt" + param2 + "_" + 1].beltDou.belt0.y;
               }
               catch(myError:Error)
               {
               }
            }
            _loc8_ = true;
            if(Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age" || Main.publishMode == "download" || Main.publishMode == "download_test" || Main.domainName == "pochi.x.fc2.com" || Main.domainName == "pochi.eek.jp")
            {
               _loc8_ = false;
            }
            this.flag0 = false;
            this.flag1 = false;
            if(param3 == "depth" || param3 == "move" || param3 == "paste" || param3 == "pasteRibon" || param3 == "reset")
            {
               this.deleteFc(this.charaNum,param2,0);
               this.deleteFc(this.charaNum,param2,1);
            }
            _loc9_ = false;
            if(this.charaData["Belt" + param2]["_reversal2"] == 0 || this.charaData["Belt" + param2]["_reversal2"] == 2)
            {
               if(this.charaAdd["belt" + param2 + "_" + 0] == undefined)
               {
                  (_loc17_ = new MovieClip()).name = "belt" + param2 + "_" + 0;
                  _loc17_ = new Chara_Loading.BeltClass();
                  // _loc17_.cacheAsBitmap = true;
                  this.charaAdd.addChild(_loc17_);
                  this.charaAdd["belt" + param2 + "_" + 0] = _loc17_;
                  this.charaAdd["belt" + param2 + "_" + 0].name = "belt" + param2 + "_" + 0;
                  this.charaAdd["belt" + param2 + "_" + 0].beltMask.ueMask.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltMask.nakaMask.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltDou.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltUeSen0.ueSen.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltUeSen0.ueSen.sen0.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltUeSen0.ueSen.sen1.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltUeSenMask0.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltNakaSen0.SenMask.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltNakaSen0.Sen.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltNakaSen0.Sen.sen0.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltNakaSen0.Sen.sen1.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0.gotoAndStop(1);
                  _loc5_ = 0;
                  while(_loc5_ <= 5)
                  {
                     try
                     {
                        this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0["sen" + _loc5_].gotoAndStop(1);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
                  if(_loc8_)
                  {
                     new HukuClickClass(this.charaAdd["belt" + param2 + "_" + 0].beltDou);
                  }
                  new Stage_MoveClass(this.charaAdd["belt" + param2 + "_" + 0].beltDou);
                  _loc9_ = true;
               }
               else if(param3 == "depth" || param3 == "move" || param3 == "reset")
               {
                  _loc9_ = true;
               }
               this.charaAdd["belt" + param2 + "_" + 0].beltDou.gotoAndStop(this.charaData["Belt" + param2]["_menu"] + 1);
               this.flag0 = true;
            }
            else
            {
               this.deleteFc(this.charaNum,param2,0);
            }
            if(this.charaData["Belt" + param2]["_reversal2"] == 0 || this.charaData["Belt" + param2]["_reversal2"] == 1)
            {
               if(this.charaAdd["belt" + param2 + "_" + 1] == undefined)
               {
                  (_loc18_ = new MovieClip()).name = "belt" + param2 + "_" + 1;
                  _loc18_ = new Chara_Loading.BeltClass();
                  // _loc18_.cacheAsBitmap = true;
                  this.charaAdd.addChild(_loc18_);
                  this.charaAdd["belt" + param2 + "_" + 1] = _loc18_;
                  this.charaAdd["belt" + param2 + "_" + 1].name = "belt" + param2 + "_" + 1;
                  this.charaAdd["belt" + param2 + "_" + 1].beltMask.ueMask.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltMask.nakaMask.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltDou.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltUeSen0.ueSen.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltUeSen0.ueSen.sen0.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltUeSen0.ueSen.sen1.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltUeSenMask0.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltNakaSen0.SenMask.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltNakaSen0.Sen.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltNakaSen0.Sen.sen0.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltNakaSen0.Sen.sen1.gotoAndStop(1);
                  this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0.gotoAndStop(1);
                  _loc5_ = 0;
                  while(_loc5_ <= 5)
                  {
                     try
                     {
                        this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0["sen" + _loc5_].gotoAndStop(1);
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
                  if(_loc8_)
                  {
                     new HukuClickClass(this.charaAdd["belt" + param2 + "_" + 1].beltDou);
                  }
                  new Stage_MoveClass(this.charaAdd["belt" + param2 + "_" + 1].beltDou);
                  _loc9_ = true;
               }
               else if(param3 == "depth" || param3 == "move" || param3 == "reset")
               {
                  _loc9_ = true;
               }
               this.charaAdd["belt" + param2 + "_" + 1].beltDou.gotoAndStop(this.charaData["Belt" + param2]["_menu"] + 1);
               this.flag1 = true;
            }
            else
            {
               this.deleteFc(this.charaNum,param2,1);
            }
            if(_loc9_)
            {
               _loc4_ = 0;
               while(_loc4_ <= Main.hukusuuNum)
               {
                  try
                  {
                     this.DepthSetFc2(Main.hukusuuNum - _loc4_,1);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.DepthSetFc2(Main.hukusuuNum - _loc4_,0);
                  }
                  catch(myError:Error)
                  {
                  }
                  _loc4_++;
               }

               // PartLayering.fixup(this.charaNum, ["mune", "dou"]);
            }
            if(param3 == "depth")
            {
               if(this.charaData["Belt" + param2]["_depth"] == 0 || this.charaData["Belt" + param2]["_depth"] == 2)
               {
                  this.charaData["BeltY" + param2]["_meter"] = Math.floor(_loc7_ * -1 / (_loc6_ * -1) * 1000);
               }
               if(this.charaData["BeltY" + param2]["_meter"] > 1000)
               {
                  this.charaData["BeltY" + param2]["_meter"] = 1000;
               }
            }
            if(param2 == MenuClass.systemData["BeltPlus"]["_menu"])
            {
               MenuClass.menuData["BeltExtra"] = Dress_data.ObjData["Belt"][this.charaData["Belt" + param2]["_menu"]]["extraNum"] - 1;
               if(MenuClass.menuData["BeltExtra"] < this.charaData["BeltExtra" + param2]["_menu"])
               {
                  this.charaData["BeltExtra" + param2]["_menu"] = MenuClass.menuData["BeltExtra"];
               }
               new Tab_TextInClass(1,"BeltExtra",MenuClass.menuData["BeltExtra"]);
            }
            _loc4_ = 0;
            for(; _loc4_ <= 1; _loc4_++)
            {
               if(_loc4_ == 0 && this.flag0 || _loc4_ == 1 && this.flag1)
               {
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0.gotoAndStop(this.charaData["BeltExtra" + param2]["_menu"] + 1);
                  try
                  {
                     if(param3 == "paste" || param3 == "pasteRibon")
                     {
                        if(this.charaData["BeltScale" + param2]["_meter"] != this.charaData["BeltScaleY" + param2]["_meter"])
                        {
                           MenuClass.systemData["LinkBeltScale"]["_flag"] = false;
                        }
                     }
                     if(MenuClass.systemData["LinkBeltLine"]["_flag"] && (MenuClass._nowTabName == "BeltScale" || param3 == "random"))
                     {
                        if(this.charaData["BeltScale" + param2]["_meter"] >= 80)
                        {
                           _loc5_ = 0;
                           while(_loc5_ <= 5)
                           {
                              try
                              {
                                 this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0["sen" + _loc5_].gotoAndStop(1);
                              }
                              catch(myError:Error)
                              {
                              }
                              _loc5_++;
                           }
                           this.charaData["BeltLine" + param2]["_menu"] = 1;
                        }
                        else if(this.charaData["BeltScale" + param2]["_meter"] >= 60)
                        {
                           _loc5_ = 0;
                           while(_loc5_ <= 5)
                           {
                              try
                              {
                                 this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0["sen" + _loc5_].gotoAndStop(2);
                              }
                              catch(myError:Error)
                              {
                              }
                              _loc5_++;
                           }
                           this.charaData["BeltLine" + param2]["_menu"] = 2;
                        }
                        else if(this.charaData["BeltScale" + param2]["_meter"] >= 40)
                        {
                           _loc5_ = 0;
                           while(_loc5_ <= 5)
                           {
                              try
                              {
                                 this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0["sen" + _loc5_].gotoAndStop(3);
                              }
                              catch(myError:Error)
                              {
                              }
                              _loc5_++;
                           }
                           this.charaData["BeltLine" + param2]["_menu"] = 3;
                        }
                        else if(this.charaData["BeltScale" + param2]["_meter"] >= 20)
                        {
                           _loc5_ = 0;
                           while(_loc5_ <= 5)
                           {
                              try
                              {
                                 this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0["sen" + _loc5_].gotoAndStop(4);
                              }
                              catch(myError:Error)
                              {
                              }
                              _loc5_++;
                           }
                           this.charaData["BeltLine" + param2]["_menu"] = 4;
                        }
                        else if(this.charaData["BeltScale" + param2]["_meter"] >= 0)
                        {
                           _loc5_ = 0;
                           while(_loc5_ <= 5)
                           {
                              try
                              {
                                 this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0["sen" + _loc5_].gotoAndStop(5);
                              }
                              catch(myError:Error)
                              {
                              }
                              _loc5_++;
                           }
                           this.charaData["BeltLine" + param2]["_menu"] = 5;
                        }
                     }
                     else if(this.charaData["BeltLine" + param2]["_menu"] == 0)
                     {
                        _loc5_ = 0;
                        while(_loc5_ <= 5)
                        {
                           try
                           {
                              this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0["sen" + _loc5_].gotoAndStop(6);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc5_++;
                        }
                     }
                     else
                     {
                        _loc5_ = 0;
                        while(_loc5_ <= 5)
                        {
                           try
                           {
                              this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0["sen" + _loc5_].gotoAndStop(this.charaData["BeltLine" + param2]["_menu"]);
                           }
                           catch(myError:Error)
                           {
                           }
                           _loc5_++;
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            if(this.charaData["BeltLine" + param2]["_menu"] == 0)
            {
               _loc4_ = 0;
               while(_loc4_ <= 1)
               {
                  if(_loc4_ == 0 && this.flag0 || _loc4_ == 1 && this.flag1)
                  {
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen0.gotoAndStop(6);
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen1.gotoAndStop(6);
                  }
                  _loc4_++;
               }
            }
            else
            {
               _loc4_ = 0;
               while(_loc4_ <= 1)
               {
                  if(_loc4_ == 0 && this.flag0 || _loc4_ == 1 && this.flag1)
                  {
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen0.gotoAndStop(this.charaData["BeltLine" + param2]["_menu"]);
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen1.gotoAndStop(this.charaData["BeltLine" + param2]["_menu"]);
                  }
                  _loc4_++;
               }
            }
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               if(_loc4_ == 0 && this.flag0 || _loc4_ == 1 && this.flag1)
               {
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.mouseChildren = false;
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.buttonMode = true;
               }
               _loc4_++;
            }
            if(this.charaData["Belt" + param2]["_mask"] == 1)
            {
               _loc4_ = 0;
               while(_loc4_ <= 1)
               {
                  if(_loc4_ == 0 && this.flag0 || _loc4_ == 1 && this.flag1)
                  {
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.mask = null;
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltMask.visible = false;
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.mask = null;
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.visible = false;
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.visible = false;
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSenMask0.visible = false;
                  }
                  _loc4_++;
               }
            }
            else
            {
               _loc4_ = 0;
               while(_loc4_ <= 1)
               {
                  if(_loc4_ == 0 && this.flag0 || _loc4_ == 1 && this.flag1)
                  {
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.mask = this.charaAdd["belt" + param2 + "_" + _loc4_].beltMask;
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltMask.visible = true;
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.mask = this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSenMask0;
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.visible = true;
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.visible = true;
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSenMask0.visible = true;
                  }
                  _loc4_++;
               }
            }
            if(this.charaData["Belt" + param2]["_reversal2"] == 0)
            {
               this.charaAdd["belt" + param2 + "_" + 0].beltUeSen0.ueSen.mask = this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0.maskMcUe;
               this.charaAdd["belt" + param2 + "_" + 1].beltUeSen0.ueSen.mask = this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0.maskMcUe;
               this.charaAdd["belt" + param2 + "_" + 0].beltNakaSen0.mask = this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0.maskMc;
               this.charaAdd["belt" + param2 + "_" + 1].beltNakaSen0.mask = this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0.maskMc;
            }
            else if(this.charaData["Belt" + param2]["_reversal2"] == 1)
            {
               this.charaAdd["belt" + param2 + "_" + 1].beltUeSen0.ueSen.mask = this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0.maskMcUe;
               this.charaAdd["belt" + param2 + "_" + 1].beltNakaSen0.mask = this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0.maskMc;
            }
            else if(this.charaData["Belt" + param2]["_reversal2"] == 2)
            {
               this.charaAdd["belt" + param2 + "_" + 0].beltUeSen0.ueSen.mask = this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0.maskMcUe;
               this.charaAdd["belt" + param2 + "_" + 0].beltNakaSen0.mask = this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0.maskMc;
            }
            _loc10_ = new Matrix();
            if(this.flag0)
            {
               new MeterPersentRibon(1.5,-1.5,this.charaNum,"BeltScaleB",param2);
               _loc10_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
               this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0.transform.matrix = _loc10_;
               new MeterPersentRibon(150,-150,this.charaNum,"BeltX",param2);
               this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0.x = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(2.5,-2.5,this.charaNum,"BeltFineX",param2);
               this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0.x += MeterPersentRibon.MeterPersentNum;
            }
            if(this.flag1)
            {
               new MeterPersentRibon(-1.5,1.5,this.charaNum,"BeltScaleB",param2);
               _loc10_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
               this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0.transform.matrix = _loc10_;
               new MeterPersentRibon(-150,150,this.charaNum,"BeltX",param2);
               this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0.x = MeterPersentRibon.MeterPersentNum;
               new MeterPersentRibon(-2.5,2.5,this.charaNum,"BeltFineX",param2);
               this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0.x += MeterPersentRibon.MeterPersentNum;
            }
            new MeterPersentRibon(360,0,this.charaNum,"BeltRotation",param2);
            _loc11_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0.5,1.5,this.charaNum,"BeltScale",param2);
            _loc12_ = MeterPersentRibon.MeterPersentNum;
            if(this.flag0)
            {
               this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0.rotation = _loc11_;
               this.charaAdd["belt" + param2 + "_" + 0].beltDou.belt0.scaleX = _loc12_;
            }
            if(this.flag1)
            {
               this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0.rotation = _loc11_ * -1;
               this.charaAdd["belt" + param2 + "_" + 1].beltDou.belt0.scaleX = _loc12_ * -1;
            }
            new MeterPersentRibon(0,_loc6_,this.charaNum,"BeltY",param2);
            _loc13_ = MeterPersentRibon.MeterPersentNum;
            if(MenuClass.systemData["LinkBeltScale"]["_flag"] && (MenuClass._nowTabName == "BeltScale" || param3 == "random"))
            {
               _loc14_ = _loc12_;
               this.charaData["BeltScaleY" + param2]["_meter"] = this.charaData["BeltScale" + param2]["_meter"];
            }
            else
            {
               new MeterPersentRibon(0.5,1.5,this.charaNum,"BeltScaleY",param2);
               _loc14_ = MeterPersentRibon.MeterPersentNum;
            }
            new MeterPersent(0.907,1.17,"BodyWidth",this.charaNum);
            _loc15_ = MeterPersent.MeterPersentNum;
            new MeterPersent(0.96,1.18,"HipWidth",this.charaNum);
            _loc16_ = MeterPersent.MeterPersentNum;
            _loc4_ = 0;

            new MeterPersentRibon(2.5, -2.5,this.charaNum,"BeltFineY",param2);
            var fineTuneY = MeterPersentRibon.MeterPersentNum;

            while(_loc4_ <= 1)
            {
               if(_loc4_ == 0 && this.flag0 || _loc4_ == 1 && this.flag1)
               {
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0.scaleY = _loc14_;
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0.y = _loc13_;
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0.y += fineTuneY;
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.scaleX = _loc15_;
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.SenMask.scaleX = _loc15_;
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltMask.ueMask.scaleX = _loc15_;
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltMask.nakaMask.scaleX = _loc16_;
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSenMask0.scaleX = _loc16_;
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.scaleX = _loc16_;
               }
               _loc4_++;
            }
            new Huku_Belt(this.charaNum,param2);
            new Chara_ColorClass(this.charaNum,"Belt" + param2);
            new Chara_SetSize(this.charaNum,"beltWidth",param3);
         }
         else
         {
            this.deleteFc(this.charaNum,param2,0);
            this.deleteFc(this.charaNum,param2,1);
         }
      }
      
      private function deleteFc(param1:int, param2:int, param3:int) : void
      {
         try
         {
            MenuClass.charaAdd[param1].removeChild(MenuClass.charaAdd[param1]["belt" + param2 + "_" + param3]);
            MenuClass.charaAdd[param1]["belt" + param2 + "_" + param3] = null;
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.charaAdd[param1].dou.removeChild(MenuClass.charaAdd[param1].dou["belt" + param2 + "_" + param3]);
            MenuClass.charaAdd[param1].dou["belt" + param2 + "_" + param3] = null;
         }
         catch(myError:Error)
         {
         }
      }
      
      private function DepthSetFc2(param1:int, param2:int) : void
      {
         var _loc3_:Number = 0;
         if(this.charaData["Belt" + param1]["_depth"] == 3)
         {
            if(this.charaAdd.getChildIndex(this.charaAdd.beltSwap1Guide) > this.charaAdd.getChildIndex(this.charaAdd["belt" + param1 + "_" + param2]))
            {
               this.charaAdd.setChildIndex(this.charaAdd["belt" + param1 + "_" + param2],this.charaAdd.getChildIndex(this.charaAdd.beltSwap1Guide));
            }
            else
            {
               this.charaAdd.setChildIndex(this.charaAdd["belt" + param1 + "_" + param2],this.charaAdd.getChildIndex(this.charaAdd.beltSwap1Guide) + 1);
            }
            _loc3_ = 0.05;
         }
         else if(this.charaData["Belt" + param1]["_depth"] == 2)
         {
            if(this.charaAdd.getChildIndex(this.charaAdd.beltSwap0Guide) > this.charaAdd.getChildIndex(this.charaAdd["belt" + param1 + "_" + param2]))
            {
               this.charaAdd.setChildIndex(this.charaAdd["belt" + param1 + "_" + param2],this.charaAdd.getChildIndex(this.charaAdd.beltSwap0Guide));
            }
            else
            {
               this.charaAdd.setChildIndex(this.charaAdd["belt" + param1 + "_" + param2],this.charaAdd.getChildIndex(this.charaAdd.beltSwap0Guide) + 1);
            }
            _loc3_ = 0.05;
         }
         else if(this.charaData["Belt" + param1]["_depth"] == 1)
         {
            if(this.charaAdd.getChildIndex(this.charaAdd.beltSwap0Guide) > this.charaAdd.getChildIndex(this.charaAdd["belt" + param1 + "_" + param2]))
            {
               this.charaAdd.setChildIndex(this.charaAdd["belt" + param1 + "_" + param2],this.charaAdd.getChildIndex(this.charaAdd.beltSwap0Guide));
            }
            else
            {
               this.charaAdd.setChildIndex(this.charaAdd["belt" + param1 + "_" + param2],this.charaAdd.getChildIndex(this.charaAdd.beltSwap0Guide) + 1);
            }
         }
         else if(this.charaData["Belt" + param1]["_depth"] == 0)
         {
            if(this.charaAdd.getChildIndex(this.charaAdd.beltGuide) > this.charaAdd.getChildIndex(this.charaAdd["belt" + param1 + "_" + param2]))
            {
               this.charaAdd.setChildIndex(this.charaAdd["belt" + param1 + "_" + param2],this.charaAdd.getChildIndex(this.charaAdd.beltGuide));
            }
            else
            {
               this.charaAdd.setChildIndex(this.charaAdd["belt" + param1 + "_" + param2],this.charaAdd.getChildIndex(this.charaAdd.beltGuide) + 1);
            }
         }
         this.charaAdd["belt" + param1 + "_" + param2].scaleX = 1 + _loc3_;
      }
   }
}
