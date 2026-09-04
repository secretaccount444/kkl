package menu
{
   import system.MeterPersent;
   import system.MeterPersentRibon;
   import parts.Ribbon;
   import parts.Hairpiece;
   
   public class Hair_ExRotation
   {
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var menuNum:int;
      
      public function Hair_ExRotation(param1:int, param2:int)
      {
         var slotData:Hairpiece = Hairpiece.fromCharacter(param1, param2);
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

         var side0 = slotData.leftSprite;
         var side1 = slotData.rightSprite;
         try
         {
            if (slotData.turn == 0)
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
            else if (slotData.turn == 1)
            {
               if (side0 || side1) {
                  if (slotData.attachPoint == 2)
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
               var rotation = 0;
               if (slotData.turn == 1) {
                  if (slotData.attachPoint == 2) {
                     if(this.charaData["Bangs"]["_reversal"]) {
                        MeterPersent.get(20,-20,"Head",param1);
                     } else {
                        MeterPersent.get(-20,20,"Head",param1);
                     }
                  } else {
                     MeterPersent.get(20,-20,"Head",param1);
                  }

                  rotation = MeterPersent.MeterPersentNum;
               }
               
               for each (var ribbon in Ribbon.getVisibleRibbons(param1)) {
                  if (ribbon.attachPoint == (param2 + 6)) {
                     if (slotData.turn == 0) {
                        try {
                           if (ribbon.leftSprite) {
                              ribbon.leftSprite.rotation = _loc3_;
                           }
                        } catch(myError:Error) { }

                        try {
                           if (ribbon.rightSprite) {
                              ribbon.rightSprite.rotation = _loc3_;
                           }
                        } catch(myError:Error) { }
                     } else if (slotData.turn == 1) {
                        try {
                           if (side0 && ribbon.leftSprite) {
                              ribbon.leftSprite.y = side0.HairEx0.y;
                              ribbon.leftSprite.x = side0.HairEx0.x;
                              ribbon.leftSprite.rotation = _loc3_ + rotation;
                           }
                        } catch(myError:Error) { }
                        
                        try {
                           if (side1 && ribbon.rightSprite) {
                              ribbon.rightSprite.y = side1.HairEx0.y;
                              ribbon.rightSprite.x = side1.HairEx0.x;
                              ribbon.rightSprite.rotation = _loc4_ + rotation;
                           }
                        } catch(myError:Error) { }
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
