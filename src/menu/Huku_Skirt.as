package menu
{
   import parameter.Dress_data;
   
   public class Huku_Skirt
   {
       
      
      private var charaAdd:Object;
      
      private var charaAddSkirt:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_Skirt(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:int = 0;
         var _loc17_:Array = null;
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(param2 == "Skirt")
         {
            this.charaAddSkirt = MenuClass.charaAdd[this.charaNum].dou.dou_Skirt.Skirt;
            _loc6_ = this.charaData["Skirt"]["_menu"];
            _loc7_ = Dress_data.SkirtData[_loc6_]["ashi"];
            this.charaAddSkirt.visible = this.charaData["Skirt"]["_visible"][0];
            if(this.charaData["Skirt"]["_visible"][0])
            {
               this.charaAddSkirt.gotoAndStop(_loc6_ + 2);
            }
            else
            {
               this.charaAddSkirt.gotoAndStop(1);
            }
         }
         else if(param2 == "Tsyatu")
         {
            this.charaAddSkirt = MenuClass.charaAdd[this.charaNum].dou.TsyatuOnePiece.Skirt;
            _loc6_ = Dress_data.ObjData["onePieceSkirt"][this.charaData["TsyatuSkirt"]["_menu"]]["skirt"] - 1;
            _loc7_ = Dress_data.onePieceDouData[_loc6_]["ashi"];
         }
         else if(param2 == "Ysyatu")
         {
            this.charaAddSkirt = MenuClass.charaAdd[this.charaNum].dou.YsyatuOnePiece.Skirt;
            _loc6_ = Dress_data.ObjData["onePieceSkirt"][this.charaData["YsyatuSkirt"]["_menu"]]["skirt"] - 1;
            _loc7_ = Dress_data.onePieceDouData[_loc6_]["ashi"];
         }
         else if(param2 == "Vest")
         {
            this.charaAddSkirt = MenuClass.charaAdd[this.charaNum].dou.VestOnePiece.Skirt;
            _loc6_ = Dress_data.ObjData["onePieceSkirt"][this.charaData["VestSkirt"]["_menu"]]["skirt"] - 1;
            _loc7_ = Dress_data.onePieceDouData[_loc6_]["ashi"];
         }
         if(_loc7_ == 0)
         {
            _loc3_ = 0;
            for(; _loc3_ <= 1; _loc3_++)
            {
               try
               {
                  _loc4_ = 0;
                  while(_loc4_ <= 15)
                  {
                     this.charaAdd["ashi" + _loc3_].thigh.thigh["SHitTest" + _loc4_].visible = false;
                     _loc4_++;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         var _loc9_:Array = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
         var _loc10_:Array = new Array(this.charaData["Ashi"]["_menu"],this.charaData["Ashi2"]["_menu"]);
         var _loc15_:int = 0;
         var _loc16_:Boolean = true;
         try
         {
            if(_loc9_[0] >= 1 && _loc9_[1] >= 1)
            {
               _loc3_ = 0;
               while(_loc3_ <= 1)
               {
                  this.charaAddSkirt["skirt" + _loc3_].visible = true;
                  if(_loc7_ == 0)
                  {
                     this.charaAddSkirt["skirt" + _loc3_].gotoAndStop(3);
                  }
                  else
                  {
                     this.charaAddSkirt["skirt" + _loc3_].gotoAndStop(21);
                     _loc16_ = false;
                  }
                  _loc3_++;
               }
            }
            else if(_loc9_[0] >= 1)
            {
               this.charaAddSkirt["skirt" + 0].visible = false;
               this.charaAddSkirt["skirt" + 1].visible = true;
               _loc15_ = 10;
               if(_loc7_ == 0)
               {
                  this.charaAddSkirt["skirt" + 1].gotoAndStop(2);
               }
            }
            else if(_loc9_[1] >= 1)
            {
               this.charaAddSkirt["skirt" + 0].visible = true;
               this.charaAddSkirt["skirt" + 1].visible = false;
               _loc15_ = 10;
               if(_loc7_ == 0)
               {
                  this.charaAddSkirt["skirt" + 0].gotoAndStop(2);
               }
            }
            else
            {
               _loc3_ = 0;
               while(_loc3_ <= 1)
               {
                  this.charaAddSkirt["skirt" + _loc3_].visible = true;
                  if(_loc7_ == 0)
                  {
                     this.charaAddSkirt["skirt" + _loc3_].gotoAndStop(1);
                  }
                  _loc3_++;
               }
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc11_ = false;
            _loc17_ = new Array(0,0);
            if(_loc16_)
            {
               if(_loc7_ >= 1)
               {
                  _loc14_ = 0;
                  while(_loc14_ <= 1)
                  {
                     if(_loc14_ == 0 || this.charaData["Ashi"]["_menu"] != this.charaData["Ashi2"]["_menu"])
                     {
                        _loc3_ = 0;
                        for(; _loc3_ <= 9; _loc3_++)
                        {
                           try
                           {
                              _loc4_ = 0;
                              while(_loc4_ <= 12)
                              {
                                 if(_loc11_ = this.charaAddSkirt["hit" + _loc14_]["hitTest" + (_loc7_ - 1) + "_" + _loc3_].hitTestObject(this.charaAdd["ashi" + _loc14_].thigh.thigh["SHitTest" + _loc4_]))
                                 {
                                    _loc17_[_loc14_] = _loc3_ + 1;
                                 }
                                 _loc4_++;
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
                        _loc17_[1] = _loc17_[0];
                     }
                     this.charaAddSkirt["skirt" + _loc14_].gotoAndStop(_loc17_[_loc14_] + 1 + _loc15_);
                     _loc14_++;
                  }
               }
            }
            if(this.charaData["Vibrator"]["_visible"][0] && (_loc9_[0] >= 1 || _loc9_[1] >= 1))
            {
               _loc14_ = 0;
               while(_loc14_ <= 1)
               {
                  if(_loc7_ == 0)
                  {
                     this.charaAddSkirt["skirt" + _loc14_].gotoAndStop(4);
                     this.charaAddSkirt["skirt" + _loc14_].visible = true;
                  }
                  else
                  {
                     this.charaAddSkirt["skirt" + _loc14_].gotoAndStop(22);
                     this.charaAddSkirt["skirt" + _loc14_].visible = true;
                  }
                  _loc14_++;
               }
               _loc3_ = 0;
               while(_loc3_ <= 2)
               {
                  _loc5_ = 0;
                  while(_loc5_ <= 2)
                  {
                     try
                     {
                        this.charaAddSkirt["skirt" + 0]["right" + _loc3_ + "_" + _loc5_].visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        this.charaAddSkirt["skirt" + 1]["left" + _loc3_ + "_" + _loc5_].visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
                  _loc3_++;
               }
            }
            else if(_loc15_ != 10)
            {
               _loc3_ = 0;
               while(_loc3_ <= 2)
               {
                  _loc5_ = 0;
                  while(_loc5_ <= 2)
                  {
                     try
                     {
                        this.charaAddSkirt["skirt" + 0]["right" + _loc3_ + "_" + _loc5_].visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        this.charaAddSkirt["skirt" + 1]["left" + _loc3_ + "_" + _loc5_].visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     _loc5_++;
                  }
                  _loc3_++;
               }
            }
            else if(_loc9_[0] >= 1)
            {
               _loc5_ = 0;
               while(_loc5_ <= 2)
               {
                  try
                  {
                     this.charaAddSkirt["skirt" + 1]["right" + 1 + "_" + _loc5_].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAddSkirt["skirt" + 1]["left" + 0 + "_" + _loc5_].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  _loc5_++;
               }
            }
            else if(_loc9_[1] >= 1)
            {
               _loc5_ = 0;
               while(_loc5_ <= 2)
               {
                  try
                  {
                     this.charaAddSkirt["skirt" + 0]["right" + 0 + "_" + _loc5_].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAddSkirt["skirt" + 0]["left" + 1 + "_" + _loc5_].visible = false;
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
         }
         try
         {
            new Huku_MjiSen(this.charaNum);
            new Huku_Mosaic(this.charaNum);
            new Huku_YsyatuIn(this.charaNum);
            if(param2 == "Skirt")
            {
               new Huku_PantuMask(this.charaNum);
               new Huku_PantuHarabote(this.charaNum);
               new Chara_ColorClass(this.charaNum,"Skirt");
            }
            else if(param2 == "Tsyatu")
            {
               new Chara_ColorClass(this.charaNum,"TsyatuOnePiece");
            }
            else if(param2 == "Ysyatu")
            {
               new Chara_ColorClass(this.charaNum,"YsyatuOnePiece");
            }
            else if(param2 == "Vest")
            {
               new Chara_ColorClass(this.charaNum,"VestOnePiece");
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
