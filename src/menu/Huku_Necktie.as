package menu
{
   import parameter.Dress_data;
   
   public class Huku_Necktie
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var menuNum:int;
      
      public function Huku_Necktie(param1:int)
      {
         var _loc2_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         if(this.charaData["Ysyatu"]["_visible"][0] && this.charaData["YsyatuDou"]["_menu"] != 0)
         {
            this.menuNum = this.charaData["Ysyatu"]["_menu"];
            if(Dress_data.YsyatuData[this.menuNum]["necktie"] == 0)
            {
               try
               {
                  if(this.charaData["Necktie"]["_g0"] == 0)
                  {
                     this.charaAdd.mune.Necktie0.necktie.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd.mune.Necktie0.necktie.gotoAndStop(2);
                  }
               }
               catch(myError:Error)
               {
               }
               if(this.charaData["Ysyatu"]["_g1"] != 0)
               {
                  if(this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.currentLabel == "flag0" || this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.currentLabel == "flag1")
                  {
                     try
                     {
                        this.charaAdd.mune.Necktie0.himo.gotoAndStop(5);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else
                  {
                     try
                     {
                        this.charaAdd.mune.Necktie0.himo.gotoAndStop(2);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  _loc2_ = 0;
                  while(_loc2_ <= 1)
                  {
                     this.charaAdd.mune["Necktie" + _loc2_].y = -550;
                     _loc2_++;
                  }
                  try
                  {
                     this.charaAdd.mune.Necktie0.maskMc.y = -24;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else if(this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.currentLabel == "flag0" || this.charaAdd.mune.YsyatuMune2.ysyatu.ysyatu0.option.currentLabel == "flag1")
               {
                  try
                  {
                     this.charaAdd.mune.Necktie0.himo.gotoAndStop(4);
                  }
                  catch(myError:Error)
                  {
                  }
                  _loc2_ = 0;
                  while(_loc2_ <= 1)
                  {
                     this.charaAdd.mune["Necktie" + _loc2_].y = -564;
                     _loc2_++;
                  }
                  try
                  {
                     this.charaAdd.mune.Necktie0.maskMc.y = -10;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  try
                  {
                     this.charaAdd.mune.Necktie0.himo.gotoAndStop(1);
                  }
                  catch(myError:Error)
                  {
                  }
                  _loc2_ = 0;
                  while(_loc2_ <= 1)
                  {
                     this.charaAdd.mune["Necktie" + _loc2_].y = -574;
                     _loc2_++;
                  }
                  try
                  {
                     this.charaAdd.mune.Necktie0.maskMc.y = 0;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else if(Dress_data.YsyatuData[this.menuNum]["necktie"] == 1)
            {
               try
               {
                  this.charaAdd.mune.Necktie0.himo.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(this.charaData["Necktie"]["_g0"] == 0)
                  {
                     this.charaAdd.mune.Necktie0.necktie.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd.mune.Necktie0.necktie.gotoAndStop(2);
                  }
               }
               catch(myError:Error)
               {
               }
               if(this.charaData["Ysyatu"]["_g1"] != 0)
               {
                  _loc2_ = 0;
                  while(_loc2_ <= 1)
                  {
                     this.charaAdd.mune["Necktie" + _loc2_].y = -538;
                     _loc2_++;
                  }
                  try
                  {
                     this.charaAdd.mune.Necktie0.maskMc.y = -36;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else
               {
                  _loc2_ = 0;
                  while(_loc2_ <= 1)
                  {
                     this.charaAdd.mune["Necktie" + _loc2_].y = -550;
                     _loc2_++;
                  }
                  try
                  {
                     this.charaAdd.mune.Necktie0.maskMc.y = -24;
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else if(Dress_data.YsyatuData[this.menuNum]["necktie"] == 2)
            {
               try
               {
                  this.charaAdd.mune.Necktie0.himo.gotoAndStop(3);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune.Necktie0.necktie.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
               _loc2_ = 0;
               while(_loc2_ <= 1)
               {
                  this.charaAdd.mune["Necktie" + _loc2_].y = -510;
                  _loc2_++;
               }
               try
               {
                  this.charaAdd.mune.Necktie0.maskMc.y = -64;
               }
               catch(myError:Error)
               {
               }
            }
            else if(Dress_data.YsyatuData[this.menuNum]["necktie"] == 3)
            {
               try
               {
                  this.charaAdd.mune.Necktie0.himo.gotoAndStop(3);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune.Necktie0.necktie.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
               _loc2_ = 0;
               while(_loc2_ <= 1)
               {
                  this.charaAdd.mune["Necktie" + _loc2_].y = -518;
                  _loc2_++;
               }
               try
               {
                  this.charaAdd.mune.Necktie0.maskMc.y = -56;
               }
               catch(myError:Error)
               {
               }
            }
            else if(Dress_data.YsyatuData[this.menuNum]["necktie"] == 4)
            {
               try
               {
                  this.charaAdd.mune.Necktie0.himo.gotoAndStop(3);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune.Necktie0.necktie.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
               _loc2_ = 0;
               while(_loc2_ <= 1)
               {
                  this.charaAdd.mune["Necktie" + _loc2_].y = -528;
                  _loc2_++;
               }
               try
               {
                  this.charaAdd.mune.Necktie0.maskMc.y = -46;
               }
               catch(myError:Error)
               {
               }
            }
         }
         else
         {
            try
            {
               this.charaAdd.mune.Necktie0.himo.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(this.charaData["Necktie"]["_g0"] == 0)
               {
                  this.charaAdd.mune.Necktie0.necktie.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd.mune.Necktie0.necktie.gotoAndStop(2);
               }
            }
            catch(myError:Error)
            {
            }
            _loc2_ = 0;
            while(_loc2_ <= 1)
            {
               this.charaAdd.mune["Necktie" + _loc2_].y = -574;
               _loc2_++;
            }
            try
            {
               this.charaAdd.mune.Necktie0.maskMc.y = 0;
            }
            catch(myError:Error)
            {
            }
         }
         new Huku_NecktieCut(param1);
         new Chara_ColorClass(param1,"Necktie");
      }
   }
}
