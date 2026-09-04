package menu
{
   import system.MeterPersent;
   import system.MeterPersentRibon;
   
   public class Hair_ExRotation
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var menuNum:int;
      
      public function Hair_ExRotation(param1:int, param2:int)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         new MeterPersentRibon(360,0,param1,"HairExRotation",param2);
         _loc3_ = MeterPersentRibon.MeterPersentNum;
         new MeterPersentRibon(0,360,param1,"HairExRotation",param2);
         _loc4_ = MeterPersentRibon.MeterPersentNum;
         try
         {
            if(this.charaData["HairEx" + param2]["_turn"] == 0)
            {
               try
               {
                  this.charaAdd["HairEx" + param2 + "_" + 0].HairEx0.rotation = _loc3_;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["HairEx" + param2 + "_" + 1].HairEx0.rotation = _loc4_;
               }
               catch(myError:Error)
               {
               }
            }
            else if(this.charaData["HairEx" + param2]["_turn"] == 1)
            {
               if(this.charaData["HairExAdd" + param2]["_add0"] == 2)
               {
                  if(this.charaData["Bangs"]["_reversal"])
                  {
                     new MeterPersent(20,-20,"Head",param1);
                  }
                  else
                  {
                     new MeterPersent(-20,20,"Head",param1);
                  }
               }
               else
               {
                  new MeterPersent(20,-20,"Head",param1);
               }
               try
               {
                  this.charaAdd["HairEx" + param2 + "_" + 0].HairEx0.rotation = _loc3_ + MeterPersent.MeterPersentNum;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["HairEx" + param2 + "_" + 1].HairEx0.rotation = _loc4_ + MeterPersent.MeterPersentNum;
               }
               catch(myError:Error)
               {
               }
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            if(param2 == 0 || param2 == 1 || param2 == 2 || param2 == 3 || param2 == 4)
            {
               _loc5_ = 0;
               while(_loc5_ <= Main.RibonhukusuuNum)
               {
                  if(this.charaData["RibonPlus"]["_visible"][_loc5_])
                  {
                     if(this.charaData["HairEx" + param2]["_turn"] == 0)
                     {
                        try
                        {
                           this.charaAdd["HairEx" + param2 + "_" + 0]["Ribon" + _loc5_ + "_" + 0].rotation = _loc3_;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd["HairEx" + param2 + "_" + 1]["Ribon" + _loc5_ + "_" + 1].rotation = _loc4_;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else if(this.charaData["HairEx" + param2]["_turn"] == 1)
                     {
                        if(this.charaData["HairExAdd" + param2]["_add0"] == 2)
                        {
                           if(this.charaData["Bangs"]["_reversal"])
                           {
                              new MeterPersent(20,-20,"Head",param1);
                           }
                           else
                           {
                              new MeterPersent(-20,20,"Head",param1);
                           }
                        }
                        else
                        {
                           new MeterPersent(20,-20,"Head",param1);
                        }
                        try
                        {
                           this.charaAdd["HairEx" + param2 + "_" + 0]["Ribon" + _loc5_ + "_" + 0].y = this.charaAdd["HairEx" + param2 + "_" + 0].HairEx0.y;
                           this.charaAdd["HairEx" + param2 + "_" + 0]["Ribon" + _loc5_ + "_" + 0].x = this.charaAdd["HairEx" + param2 + "_" + 0].HairEx0.x;
                           this.charaAdd["HairEx" + param2 + "_" + 0]["Ribon" + _loc5_ + "_" + 0].rotation = _loc3_ + MeterPersent.MeterPersentNum;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd["HairEx" + param2 + "_" + 1]["Ribon" + _loc5_ + "_" + 1].y = this.charaAdd["HairEx" + param2 + "_" + 1].HairEx0.y;
                           this.charaAdd["HairEx" + param2 + "_" + 1]["Ribon" + _loc5_ + "_" + 1].x = this.charaAdd["HairEx" + param2 + "_" + 1].HairEx0.x;
                           this.charaAdd["HairEx" + param2 + "_" + 1]["Ribon" + _loc5_ + "_" + 1].rotation = _loc4_ + MeterPersent.MeterPersentNum;
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                  }
                  _loc5_++;
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
