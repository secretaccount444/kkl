package menu
{
   public class Tab_FileDepth2
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Tab_FileDepth2(param1:int, param2:int)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         super();
         this.charaAdd = MenuClass.charaAdd[param2];
         this.charaData = MenuClass.charaData[param2];
         var _loc6_:String;
         if((_loc6_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + param1]["_add0"]][0]) == "Body")
         {
            if(this.charaData["CharaLoadReversalDepth" + param1]["_depth"] == 0)
            {
               _loc3_ = 0;
               for(; _loc3_ <= Main.hukusuuNum; _loc3_++)
               {
                  try
                  {
                     _loc5_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + (Main.hukusuuNum - _loc3_)]["_add0"]][0];
                     if(this.charaData["CharaLoadReversalDepth" + (Main.hukusuuNum - _loc3_)]["_depth"] == 0 && Tab_FileReference2.Arloader[param2][Main.hukusuuNum - _loc3_] != 0 && _loc5_ == _loc6_)
                     {
                        this.charaAdd.setChildIndex(this.charaAdd["loadObj" + (Main.hukusuuNum - _loc3_)],0);
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(this.charaData["CharaLoadReversalDepth" + param1]["_depth"] == 1)
            {
               _loc3_ = 0;
               for(; _loc3_ <= Main.hukusuuNum; _loc3_++)
               {
                  try
                  {
                     _loc5_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + (Main.hukusuuNum - _loc3_)]["_add0"]][0];
                     if(this.charaData["CharaLoadReversalDepth" + (Main.hukusuuNum - _loc3_)]["_depth"] == 1 && Tab_FileReference2.Arloader[param2][Main.hukusuuNum - _loc3_] != 0 && _loc5_ == _loc6_)
                     {
                        this.charaAdd.setChildIndex(this.charaAdd["loadObj" + (Main.hukusuuNum - _loc3_)],Number(this.charaAdd.getChildIndex(this.charaAdd.CharaloadAdd1)) + 1);
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
               _loc3_ = 0;
               for(; _loc3_ <= Main.hukusuuNum; _loc3_++)
               {
                  try
                  {
                     _loc5_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + (Main.hukusuuNum - _loc3_)]["_add0"]][0];
                     if(this.charaData["CharaLoadReversalDepth" + (Main.hukusuuNum - _loc3_)]["_depth"] == 1 && Tab_FileReference2.Arloader[param2][Main.hukusuuNum - _loc3_] != 0 && _loc5_ == _loc6_)
                     {
                        this.charaAdd.setChildIndex(this.charaAdd["loadObj" + (Main.hukusuuNum - _loc3_)],Number(this.charaAdd.getChildIndex(this.charaAdd.CharaloadAdd1)) + 1);
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
         }
         else if(_loc6_ == "headAdd")
         {
            if(this.charaData["CharaLoadReversalDepth" + param1]["_depth"] == 0)
            {
               this.charaAdd.CharaloadAdd.addChild(this.charaAdd["loadObj" + param1]);
            }
            else if(this.charaData["CharaLoadReversalDepth" + param1]["_depth"] == 1)
            {
               this.charaAdd.CharaloadAdd1.addChild(this.charaAdd["loadObj" + param1]);
            }
            _loc3_ = 0;
            for(; _loc3_ <= Main.hukusuuNum; _loc3_++)
            {
               try
               {
                  _loc5_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + (Main.hukusuuNum - _loc3_)]["_add0"]][0];
                  if(this.charaData["CharaLoadReversalDepth" + (Main.hukusuuNum - _loc3_)]["_depth"] == 0 && Tab_FileReference2.Arloader[param2][Main.hukusuuNum - _loc3_] != 0 && _loc5_ == _loc6_)
                  {
                     this.charaAdd.CharaloadAdd.setChildIndex(this.charaAdd["loadObj" + (Main.hukusuuNum - _loc3_)],0);
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc5_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + (Main.hukusuuNum - _loc3_)]["_add0"]][0];
                  if(this.charaData["CharaLoadReversalDepth" + (Main.hukusuuNum - _loc3_)]["_depth"] == 1 && Tab_FileReference2.Arloader[param2][Main.hukusuuNum - _loc3_] != 0 && _loc5_ == _loc6_)
                  {
                     this.charaAdd.CharaloadAdd1.setChildIndex(this.charaAdd["loadObj" + (Main.hukusuuNum - _loc3_)],0);
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         else if(_loc6_ == "LoadLeftArm" || _loc6_ == "LoadRightArm")
         {
            if(_loc6_ == "LoadLeftArm")
            {
               _loc4_ = 0;
            }
            else if(_loc6_ == "LoadRightArm")
            {
               _loc4_ = 1;
            }
            if(this.charaData["CharaLoadReversalDepth" + param1]["_depth"] == 0)
            {
               _loc3_ = 0;
               for(; _loc3_ <= Main.hukusuuNum; _loc3_++)
               {
                  try
                  {
                     _loc5_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + (Main.hukusuuNum - _loc3_)]["_add0"]][0];
                     if(this.charaData["CharaLoadReversalDepth" + (Main.hukusuuNum - _loc3_)]["_depth"] == 0 && Tab_FileReference2.Arloader[param2][Main.hukusuuNum - _loc3_] != 0 && _loc5_ == _loc6_)
                     {
                        this.charaAdd["handm1_" + _loc4_].hand.setChildIndex(this.charaAdd["loadObj" + (Main.hukusuuNum - _loc3_)],0);
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(this.charaData["CharaLoadReversalDepth" + param1]["_depth"] == 1)
            {
               _loc3_ = 0;
               for(; _loc3_ <= Main.hukusuuNum; _loc3_++)
               {
                  try
                  {
                     _loc5_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + (Main.hukusuuNum - _loc3_)]["_add0"]][0];
                     if(this.charaData["CharaLoadReversalDepth" + (Main.hukusuuNum - _loc3_)]["_depth"] == 1 && Tab_FileReference2.Arloader[param2][Main.hukusuuNum - _loc3_] != 0 && _loc5_ == _loc6_)
                     {
                        this.charaAdd["handm1_" + _loc4_].hand.setChildIndex(this.charaAdd["loadObj" + (Main.hukusuuNum - _loc3_)],this.charaAdd["handm1_" + _loc4_].hand.getChildIndex(this.charaAdd["handm1_" + _loc4_].hand.charaLoadswap) + 1);
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
               _loc3_ = 0;
               for(; _loc3_ <= Main.hukusuuNum; _loc3_++)
               {
                  try
                  {
                     _loc5_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + (Main.hukusuuNum - _loc3_)]["_add0"]][0];
                     if(this.charaData["CharaLoadReversalDepth" + (Main.hukusuuNum - _loc3_)]["_depth"] == 1 && Tab_FileReference2.Arloader[param2][Main.hukusuuNum - _loc3_] != 0 && _loc5_ == _loc6_)
                     {
                        this.charaAdd["handm1_" + _loc4_].hand.setChildIndex(this.charaAdd["loadObj" + (Main.hukusuuNum - _loc3_)],this.charaAdd["handm1_" + _loc4_].hand.getChildIndex(this.charaAdd["handm1_" + _loc4_].hand.charaLoadswap) + 1);
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
         }
         else if(_loc6_ == "LoadLeftHand" || _loc6_ == "LoadRightHand")
         {
            if(_loc6_ == "LoadLeftHand")
            {
               _loc4_ = 0;
            }
            else if(_loc6_ == "LoadRightHand")
            {
               _loc4_ = 1;
            }
            if(this.charaData["CharaLoadReversalDepth" + param1]["_depth"] == 0)
            {
               this.charaAdd["handm1_" + _loc4_].hand.arm0.addChild(this.charaAdd["loadObj" + param1]);
            }
            else if(this.charaData["CharaLoadReversalDepth" + param1]["_depth"] == 1)
            {
               this.charaAdd["handm1_" + _loc4_].hand.charaLoadswap2.addChild(this.charaAdd["loadObj" + param1]);
            }
            if(this.charaData["CharaLoadReversalDepth" + param1]["_depth"] == 0)
            {
               _loc3_ = 0;
               for(; _loc3_ <= Main.hukusuuNum; _loc3_++)
               {
                  try
                  {
                     _loc5_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + (Main.hukusuuNum - _loc3_)]["_add0"]][0];
                     if(this.charaData["CharaLoadReversalDepth" + (Main.hukusuuNum - _loc3_)]["_depth"] == 0 && Tab_FileReference2.Arloader[param2][Main.hukusuuNum - _loc3_] != 0 && _loc5_ == _loc6_)
                     {
                        this.charaAdd["handm1_" + _loc4_].hand.arm0.setChildIndex(this.charaAdd["loadObj" + (Main.hukusuuNum - _loc3_)],0);
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(this.charaData["CharaLoadReversalDepth" + param1]["_depth"] == 1)
            {
               _loc3_ = 0;
               for(; _loc3_ <= Main.hukusuuNum; _loc3_++)
               {
                  try
                  {
                     _loc5_ = Tab_AddCostumOpen2.openAr[this.charaData["CharaLoadAdd" + (Main.hukusuuNum - _loc3_)]["_add0"]][0];
                     if(this.charaData["CharaLoadReversalDepth" + (Main.hukusuuNum - _loc3_)]["_depth"] == 1 && Tab_FileReference2.Arloader[param2][Main.hukusuuNum - _loc3_] != 0 && _loc5_ == _loc6_)
                     {
                        this.charaAdd["handm1_" + _loc4_].hand.charaLoadswap2.setChildIndex(this.charaAdd["loadObj" + (Main.hukusuuNum - _loc3_)],0);
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
   }
}
