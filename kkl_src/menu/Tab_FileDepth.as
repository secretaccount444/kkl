package menu
{
   public class Tab_FileDepth
   {
       
      
      private var CheckAddNameFirst1:String;
      
      private var CheckAddName0:String;
      
      private var CheckAddNameLast1:String;
      
      public function Tab_FileDepth(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super();
         var _loc7_:int = MenuClass.systemData["LoadAdd" + param1]["_add0"];
         var _loc8_:String;
         var _loc9_:String = (_loc8_ = Tab_AddCostumOpen.openAr[_loc7_][0]).substring(0,13);
         var _loc10_:String = _loc8_.substring(13,14);
         if(_loc9_ == "FreeHukidashi")
         {
            if(MenuClass.systemData["LoadReversalDepth" + param1]["_depth"] == 0)
            {
               Chara_Class.chara_m["Hukidashi" + _loc10_].setChildIndex(Main.mainWindow["loadObj" + param1],Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Chara_Class.chara_m["Hukidashi" + _loc10_].loadAddGuide));
               _loc4_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Chara_Class.chara_m["Hukidashi" + _loc10_].loadAddGuide);
               _loc5_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Main.mainWindow["loadObj" + param1]);
               if(_loc4_ > _loc5_)
               {
                  Chara_Class.chara_m["Hukidashi" + _loc10_].swapChildren(Main.mainWindow["loadObj" + param1],Chara_Class.chara_m["Hukidashi" + _loc10_].loadAddGuide);
               }
               _loc6_ = 0;
               for(; _loc6_ <= Main.hukusuuNum; _loc6_++)
               {
                  try
                  {
                     this.FcNameCheck(_loc6_);
                     if(MenuClass.systemData["LoadReversalDepth" + _loc6_]["_depth"] == 0 && Tab_FileReference.Arloader[_loc6_] != 0 && this.CheckAddNameFirst1 == "FreeHukidashi" && this.CheckAddNameLast1 == _loc10_)
                     {
                        _loc2_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Main.mainWindow["loadObj" + param1]);
                        _loc3_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Main.mainWindow["loadObj" + _loc6_]);
                        if(_loc2_ < _loc3_ && param1 > _loc6_)
                        {
                           Chara_Class.chara_m["Hukidashi" + _loc10_].swapChildren(Main.mainWindow["loadObj" + param1],Main.mainWindow["loadObj" + _loc6_]);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass.systemData["LoadReversalDepth" + param1]["_depth"] == 1)
            {
               Chara_Class.chara_m["Hukidashi" + _loc10_].setChildIndex(Main.mainWindow["loadObj" + param1],Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Chara_Class.chara_m["Hukidashi" + _loc10_].loadAddGuide2));
               _loc4_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Chara_Class.chara_m["Hukidashi" + _loc10_].loadAddGuide2);
               _loc5_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Main.mainWindow["loadObj" + param1]);
               if(_loc4_ > _loc5_)
               {
                  Chara_Class.chara_m["Hukidashi" + _loc10_].swapChildren(Main.mainWindow["loadObj" + param1],Chara_Class.chara_m["Hukidashi" + _loc10_].loadAddGuide2);
               }
               _loc6_ = 0;
               for(; _loc6_ <= Main.hukusuuNum; _loc6_++)
               {
                  try
                  {
                     this.FcNameCheck(_loc6_);
                     if(MenuClass.systemData["LoadReversalDepth" + _loc6_]["_depth"] == 1 && Tab_FileReference.Arloader[_loc6_] != 0 && this.CheckAddNameFirst1 == "FreeHukidashi" && this.CheckAddNameLast1 == _loc10_)
                     {
                        _loc2_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Main.mainWindow["loadObj" + param1]);
                        _loc3_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Main.mainWindow["loadObj" + _loc6_]);
                        if(_loc2_ < _loc3_ && param1 > _loc6_)
                        {
                           Chara_Class.chara_m["Hukidashi" + _loc10_].swapChildren(Main.mainWindow["loadObj" + param1],Main.mainWindow["loadObj" + _loc6_]);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass.systemData["LoadReversalDepth" + param1]["_depth"] == 2)
            {
               Chara_Class.chara_m["Hukidashi" + _loc10_].setChildIndex(Main.mainWindow["loadObj" + param1],Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Chara_Class.chara_m["Hukidashi" + _loc10_].loadAddGuide3));
               _loc4_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Chara_Class.chara_m["Hukidashi" + _loc10_].loadAddGuide3);
               _loc5_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Main.mainWindow["loadObj" + param1]);
               if(_loc4_ > _loc5_)
               {
                  Chara_Class.chara_m["Hukidashi" + _loc10_].swapChildren(Main.mainWindow["loadObj" + param1],Chara_Class.chara_m["Hukidashi" + _loc10_].loadAddGuide3);
               }
               _loc6_ = 0;
               for(; _loc6_ <= Main.hukusuuNum; _loc6_++)
               {
                  try
                  {
                     this.FcNameCheck(_loc6_);
                     if(MenuClass.systemData["LoadReversalDepth" + _loc6_]["_depth"] == 2 && Tab_FileReference.Arloader[_loc6_] != 0 && this.CheckAddNameFirst1 == "FreeHukidashi" && this.CheckAddNameLast1 == _loc10_)
                     {
                        _loc2_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Main.mainWindow["loadObj" + param1]);
                        _loc3_ = Chara_Class.chara_m["Hukidashi" + _loc10_].getChildIndex(Main.mainWindow["loadObj" + _loc6_]);
                        if(_loc2_ < _loc3_ && param1 > _loc6_)
                        {
                           Chara_Class.chara_m["Hukidashi" + _loc10_].swapChildren(Main.mainWindow["loadObj" + param1],Main.mainWindow["loadObj" + _loc6_]);
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
         else if(_loc8_ == "Background")
         {
            if(MenuClass.systemData["LoadReversalDepth" + param1]["_depth"] == 0)
            {
               Main.mainWindow.setChildIndex(Main.mainWindow["loadObj" + param1],Main.mainWindow.getChildIndex(Main.mainWindow.bg));
               _loc4_ = Main.mainWindow.getChildIndex(Main.mainWindow.bg);
               _loc5_ = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + param1]);
               if(_loc4_ > _loc5_)
               {
                  Main.mainWindow.swapChildren(Main.mainWindow["loadObj" + param1],Main.mainWindow.bg);
               }
               _loc6_ = 0;
               for(; _loc6_ <= Main.hukusuuNum; _loc6_++)
               {
                  try
                  {
                     this.FcNameCheck(_loc6_);
                     if(MenuClass.systemData["LoadReversalDepth" + _loc6_]["_depth"] == 0 && Tab_FileReference.Arloader[_loc6_] != 0 && this.CheckAddName0 == "Background")
                     {
                        _loc2_ = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + param1]);
                        _loc3_ = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + _loc6_]);
                        if(_loc2_ < _loc3_ && param1 > _loc6_)
                        {
                           Main.mainWindow.swapChildren(Main.mainWindow["loadObj" + param1],Main.mainWindow["loadObj" + _loc6_]);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass.systemData["LoadReversalDepth" + param1]["_depth"] == 1)
            {
               Main.mainWindow.setChildIndex(Main.mainWindow["loadObj" + param1],Main.mainWindow.getChildIndex(Main.mainWindow.chara_obj));
               _loc4_ = Main.mainWindow.getChildIndex(Main.mainWindow.chara_obj);
               _loc5_ = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + param1]);
               if(_loc4_ > _loc5_)
               {
                  Main.mainWindow.swapChildren(Main.mainWindow["loadObj" + param1],Main.mainWindow.chara_obj);
               }
               _loc6_ = 0;
               for(; _loc6_ <= Main.hukusuuNum; _loc6_++)
               {
                  try
                  {
                     this.FcNameCheck(_loc6_);
                     if(MenuClass.systemData["LoadReversalDepth" + _loc6_]["_depth"] == 1 && Tab_FileReference.Arloader[_loc6_] != 0 && this.CheckAddName0 == "Background")
                     {
                        _loc2_ = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + param1]);
                        _loc3_ = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + _loc6_]);
                        if(_loc2_ < _loc3_ && param1 > _loc6_)
                        {
                           Main.mainWindow.swapChildren(Main.mainWindow["loadObj" + param1],Main.mainWindow["loadObj" + _loc6_]);
                        }
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
            }
            else if(MenuClass.systemData["LoadReversalDepth" + param1]["_depth"] == 2)
            {
               Main.mainWindow.setChildIndex(Main.mainWindow["loadObj" + param1],Main.mainWindow.getChildIndex(Main.mainWindow.mob));
               _loc4_ = Main.mainWindow.getChildIndex(Main.mainWindow.mob);
               _loc5_ = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + param1]);
               if(_loc4_ > _loc5_)
               {
                  Main.mainWindow.swapChildren(Main.mainWindow["loadObj" + param1],Main.mainWindow.mob);
               }
               _loc6_ = 0;
               for(; _loc6_ <= Main.hukusuuNum; _loc6_++)
               {
                  try
                  {
                     this.FcNameCheck(_loc6_);
                     if(MenuClass.systemData["LoadReversalDepth" + _loc6_]["_depth"] == 2 && Tab_FileReference.Arloader[_loc6_] != 0 && this.CheckAddName0 == "Background")
                     {
                        _loc2_ = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + param1]);
                        _loc3_ = Main.mainWindow.getChildIndex(Main.mainWindow["loadObj" + _loc6_]);
                        if(_loc2_ < _loc3_ && param1 > _loc6_)
                        {
                           Main.mainWindow.swapChildren(Main.mainWindow["loadObj" + param1],Main.mainWindow["loadObj" + _loc6_]);
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
      }
      
      private function FcNameCheck(param1:int) : void
      {
         var _loc2_:int = MenuClass.systemData["LoadAdd" + param1]["_add0"];
         this.CheckAddName0 = Tab_AddCostumOpen.openAr[_loc2_][0];
         this.CheckAddNameFirst1 = this.CheckAddName0.substring(0,13);
         this.CheckAddNameLast1 = this.CheckAddName0.substring(13,14);
      }
   }
}
