package menu
{
   import parameter.Dress_data;
   
   public class Huku_SodeMune
   {
       
      
      public function Huku_SodeMune(param1:int, param2:int)
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc9_:int = 0;
         super();
         var _loc3_:Object = MenuClass.charaAdd[param1];
         var _loc4_:Object = MenuClass.charaData[param1];
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         if(_loc4_["VestDou"]["_menu"] != 1 && _loc4_["VestSkirt"]["_menu"] != 0)
         {
            _loc8_ = true;
         }
         if(_loc4_["YsyatuDou"]["_menu"] != 1 && _loc4_["YsyatuSkirt"]["_menu"] != 0)
         {
            _loc7_ = true;
         }
         try
         {
            if(_loc4_["Ysyatu"]["_visible"][0])
            {
               try
               {
                  if(_loc4_["YsyatuDou"]["_menu"] == 1 && _loc8_ || _loc4_["YsyatuDou"]["_menu"] == 1 && _loc4_["YsyatuSkirt"]["_menu"] == 0)
                  {
                     _loc9_ = 4;
                  }
                  else
                  {
                     _loc9_ = Dress_data.ObjData["YsyatuDou"][_loc4_["YsyatuDou"]["_menu"]]["mune"] - 1;
                  }
               }
               catch(myError:Error)
               {
               }
               if(_loc9_ == 2 || _loc9_ == 3 || _loc9_ == 5)
               {
                  if(param2 == 0)
                  {
                     try
                     {
                        if(_loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        if(_loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu.maskKata.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu.maskKata.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(param2 == 1)
                  {
                     try
                     {
                        if(_loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        if(_loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu.maskKata.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu.maskKata.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  _loc5_ = 0;
                  for(; _loc5_ <= 2; _loc5_++)
                  {
                     try
                     {
                        _loc6_ = 0;
                        while(_loc6_ <= 1)
                        {
                           if(param2 == 0)
                           {
                              if(_loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0])
                              {
                                 _loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0]);
                              }
                           }
                           else if(param2 == 1)
                           {
                              if(_loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0])
                              {
                                 _loc3_.mune.YsyatuMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0]);
                              }
                           }
                           _loc6_++;
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            if(_loc4_["Tsyatu"]["_visible"][0])
            {
               try
               {
                  if(_loc4_["TsyatuDou"]["_menu"] == 1 && _loc8_ || _loc4_["TsyatuDou"]["_menu"] == 1 && _loc7_ || _loc4_["TsyatuDou"]["_menu"] == 1 && _loc4_["TsyatuSkirt"]["_menu"] == 0)
                  {
                     _loc9_ = 2;
                  }
                  else
                  {
                     _loc9_ = Dress_data.ObjData["TsyatuDou"][_loc4_["TsyatuDou"]["_menu"]]["mune"] - 1;
                  }
               }
               catch(myError:Error)
               {
               }
               if(_loc9_ == 3)
               {
                  if(param2 == 0)
                  {
                     try
                     {
                        if(_loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        if(_loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu.maskKata.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu.maskKata.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(param2 == 1)
                  {
                     try
                     {
                        if(_loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        if(_loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu.maskKata.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu.maskKata.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  _loc5_ = 0;
                  for(; _loc5_ <= 2; _loc5_++)
                  {
                     try
                     {
                        _loc6_ = 0;
                        while(_loc6_ <= 1)
                        {
                           if(param2 == 0)
                           {
                              if(_loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0])
                              {
                                 _loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0]);
                              }
                           }
                           else if(param2 == 1)
                           {
                              if(_loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0])
                              {
                                 _loc3_.mune.TsyatuMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0]);
                              }
                           }
                           _loc6_++;
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            if(_loc4_["Vest"]["_visible"][0])
            {
               try
               {
                  if(_loc4_["VestDou"]["_menu"] == 1 && _loc4_["VestSkirt"]["_menu"] == 0)
                  {
                     _loc9_ = 2;
                  }
                  else
                  {
                     _loc9_ = Dress_data.ObjData["VestDou"][_loc4_["VestDou"]["_menu"]]["mune"] - 1;
                  }
               }
               catch(myError:Error)
               {
               }
               if(_loc9_ == 3)
               {
                  if(param2 == 0)
                  {
                     try
                     {
                        if(_loc3_.mune.VestMune["ysyatu" + param2].ysyatu.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.VestMune["ysyatu" + param2].ysyatu.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        if(_loc3_.mune.VestMune["ysyatu" + param2].ysyatu.maskKata.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.VestMune["ysyatu" + param2].ysyatu.maskKata.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(param2 == 1)
                  {
                     try
                     {
                        if(_loc3_.mune.VestMune["ysyatu" + param2].ysyatu.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.VestMune["ysyatu" + param2].ysyatu.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        if(_loc3_.mune.VestMune["ysyatu" + param2].ysyatu.maskKata.currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0])
                        {
                           _loc3_.mune.VestMune["ysyatu" + param2].ysyatu.maskKata.gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0]);
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  _loc5_ = 0;
                  for(; _loc5_ <= 2; _loc5_++)
                  {
                     try
                     {
                        _loc6_ = 0;
                        while(_loc6_ <= 1)
                        {
                           if(param2 == 0)
                           {
                              if(_loc3_.mune.VestMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0])
                              {
                                 _loc3_.mune.VestMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune0.mune.currentFrame - 1][0]);
                              }
                           }
                           else if(param2 == 1)
                           {
                              if(_loc3_.mune.VestMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].currentFrame != Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0])
                              {
                                 _loc3_.mune.VestMune["ysyatu" + param2].ysyatu["m_color" + _loc5_ + "_" + _loc6_].gotoAndStop(Huku_BreastDepth.muneMoveData[_loc4_["Breast"]["_menu"]][_loc3_.mune.mune1.mune.currentFrame - 1][0]);
                              }
                           }
                           _loc6_++;
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
