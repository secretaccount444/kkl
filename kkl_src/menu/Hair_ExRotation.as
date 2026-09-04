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

         MeterPersentRibon.get(360,0,param1,"HairExRotation",param2);
         _loc3_ = MeterPersentRibon.MeterPersentNum;

         MeterPersentRibon.get(0,360,param1,"HairExRotation",param2);
         _loc4_ = MeterPersentRibon.MeterPersentNum;

         // try {
         //    if (this.charaData["HairExAdd" + param2]["_add0"] == 93) {
         //       _loc3_ += this.charaAdd.handm1_0.hand.arm0.rotation;
         //       _loc4_ -= this.charaAdd.handm1_1.hand.arm0.rotation;
         //    }
         // }
         // catch(myError:Error)
         // {
         // }

         var side0 = this.charaAdd["HairEx" + param2 + "_0"];
         var side1 = this.charaAdd["HairEx" + param2 + "_1"];

         try
         {
            if(this.charaData["HairEx" + param2]["_turn"] == 0)
            {
               try
               {
                  if (side0) {
                     side0.HairEx0.rotation = _loc3_;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if (side1) {
                     side1.HairEx0.rotation = _loc4_;
                  }
               }
               catch(myError:Error)
               {
               }
            }
            else if(this.charaData["HairEx" + param2]["_turn"] == 1)
            {
               if (side0 || side1) {
                  if(this.charaData["HairExAdd" + param2]["_add0"] == 2)
                  {
                     if(this.charaData["Bangs"]["_reversal"])
                     {
                        MeterPersent.get(20,-20,"Head",param1);
                     }
                     else
                     {
                        MeterPersent.get(-20,20,"Head",param1);
                     }
                  }
                  else
                  {
                     MeterPersent.get(20,-20,"Head",param1);
                  }

                  try
                  {
                     if (side0) {
                        side0.HairEx0.rotation = _loc3_ + MeterPersent.MeterPersentNum;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if (side1) {
                        side1.HairEx0.rotation = _loc4_ + MeterPersent.MeterPersentNum;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
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
                           if (side0 && side0["Ribon" + _loc5_ + "_0"]) {
                              side0["Ribon" + _loc5_ + "_0"].rotation = _loc3_;
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           if (side1 && side1["Ribon" + _loc5_ + "_1"]) {
                              side1["Ribon" + _loc5_ + "_1"].rotation = _loc4_;
                           }
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
                              MeterPersent.get(20,-20,"Head",param1);
                           }
                           else
                           {
                              MeterPersent.get(-20,20,"Head",param1);
                           }
                        }
                        else
                        {
                           MeterPersent.get(20,-20,"Head",param1);
                        }
                        try
                        {
                           var ribbonSprite = side0["Ribon" + _loc5_ + "_0"];
                           if (side0 && ribbonSprite) {
                              ribbonSprite.y = side0.HairEx0.y;
                              ribbonSprite.x = side0.HairEx0.x;
                              ribbonSprite.rotation = _loc3_ + MeterPersent.MeterPersentNum;
                           }
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           var ribbonSprite = side1["Ribon" + _loc5_ + "_1"];
                           if (side1 && ribbonSprite) {
                              ribbonSprite.y = side1.HairEx0.y;
                              ribbonSprite.x = side1.HairEx0.x;
                              ribbonSprite.rotation = _loc4_ + MeterPersent.MeterPersentNum;
                           }
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
