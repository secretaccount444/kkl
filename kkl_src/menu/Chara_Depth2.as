package menu
{
   public class Chara_Depth2
   {
       
      
      public function Chara_Depth2(param1:int, param2:String, param3:String)
      {
         var i:int = 0;
         var j:int = 0;
         var nnn:Number = NaN;
         var eee:Number = NaN;
         var DepthNum:int = 0;
         var DepthNum2:int = 0;
         var charaNum:int = param1;
         var str:String = param2;
         var clickTarget:String = param3;
         super();
         var bbb:Number = 0;
         var ccc:Number = 0;
         if(charaNum < 9)
         {
            DepthNum = MenuClass.charaData[charaNum]["Ymove"]["_depth"];
         }
         else if(charaNum < 108)
         {
            DepthNum = MenuClass.systemData["FreeRibon" + (charaNum - 9)]["_depth"];
         }
         else if(charaNum < 207)
         {
            DepthNum = MenuClass.systemData["FreeBelt" + (charaNum - 108)]["_depth"];
         }
         else if(charaNum < 306)
         {
            DepthNum = MenuClass.systemData["FreeFlag" + (charaNum - 207)]["_depth"];
         }
         else if(charaNum < 405)
         {
            DepthNum = MenuClass.systemData["FreeHukidashi" + (charaNum - 306)]["_depth"];
         }
         else if(charaNum < 504)
         {
            DepthNum = MenuClass.systemData["FreeHand" + (charaNum - 405)]["_depth"];
         }
         else if(charaNum < 603)
         {
            DepthNum = MenuClass.systemData["FreeChair" + (charaNum - 504)]["_depth"];
         }
         else if(charaNum < 702)
         {
            DepthNum = MenuClass.systemData["FreeChair" + (charaNum - 603)]["_depth2"];
         }
         i = 0;
         while(i < MenuClass.DepthMeter.length)
         {
            if(MenuClass.DepthMeter[i] != null && i != charaNum)
            {
               if(MenuClass.DepthMeter[charaNum] > MenuClass.DepthMeter[i])
               {
                  bbb++;
                  ccc++;
               }
               else if(MenuClass.DepthMeter[charaNum] == MenuClass.DepthMeter[i])
               {
                  if(i < 9)
                  {
                     DepthNum2 = MenuClass.charaData[i]["Ymove"]["_depth"];
                  }
                  else if(i < 108)
                  {
                     DepthNum2 = MenuClass.systemData["FreeRibon" + (i - 9)]["_depth"];
                  }
                  else if(i < 207)
                  {
                     DepthNum2 = MenuClass.systemData["FreeBelt" + (i - 108)]["_depth"];
                  }
                  else if(i < 306)
                  {
                     DepthNum2 = MenuClass.systemData["FreeFlag" + (i - 207)]["_depth"];
                  }
                  else if(i < 405)
                  {
                     DepthNum2 = MenuClass.systemData["FreeHukidashi" + (i - 306)]["_depth"];
                  }
                  else if(i < 504)
                  {
                     DepthNum2 = MenuClass.systemData["FreeHand" + (i - 405)]["_depth"];
                  }
                  else if(i < 603)
                  {
                     nnn = i - 504;
                     if(MenuClass.systemData["FreeChair" + nnn]["_depth"] < MenuClass.systemData["FreeChair" + nnn]["_depth2"])
                     {
                        eee = MenuClass.systemData["FreeChair" + nnn]["_depth"];
                        MenuClass.systemData["FreeChair" + nnn]["_depth"] = MenuClass.systemData["FreeChair" + nnn]["_depth2"];
                        MenuClass.systemData["FreeChair" + nnn]["_depth2"] = eee;
                     }
                     DepthNum2 = MenuClass.systemData["FreeChair" + nnn]["_depth"];
                  }
                  else if(i < 702)
                  {
                     nnn = i - 603;
                     if(MenuClass.systemData["FreeChair" + nnn]["_depth"] < MenuClass.systemData["FreeChair" + nnn]["_depth2"])
                     {
                        eee = MenuClass.systemData["FreeChair" + nnn]["_depth"];
                        MenuClass.systemData["FreeChair" + nnn]["_depth"] = MenuClass.systemData["FreeChair" + nnn]["_depth2"];
                        MenuClass.systemData["FreeChair" + nnn]["_depth2"] = eee;
                     }
                     DepthNum2 = MenuClass.systemData["FreeChair" + nnn]["_depth2"];
                  }
                  if(str == "Ymove")
                  {
                     if(DepthNum > DepthNum2)
                     {
                        bbb++;
                     }
                  }
                  ccc++;
               }
            }
            i++;
         }
         if(str == "select")
         {
            bbb = ccc;
         }
         if(charaNum < 9)
         {
            try
            {
               Chara_Class.chara_m.setChildIndex(MenuClass.charaAddDepth[charaNum],bbb);
            }
            catch(myError:Error)
            {
            }
         }
         else if(charaNum < 108)
         {
            try
            {
               Chara_Class.chara_m.setChildIndex(Chara_Class.chara_m["Ribon" + (charaNum - 9)],bbb);
            }
            catch(myError:Error)
            {
               MenuClass.systemData["FreeRibon" + (i - 9)]["_depth"] = 10000;
            }
         }
         else if(charaNum < 207)
         {
            try
            {
               Chara_Class.chara_m.setChildIndex(Chara_Class.chara_m["Belt" + (charaNum - 108)],bbb);
            }
            catch(myError:Error)
            {
               MenuClass.systemData["FreeBelt" + (i - 108)]["_depth"] = 10000;
            }
         }
         else if(charaNum < 306)
         {
            try
            {
               Chara_Class.chara_m.setChildIndex(Chara_Class.chara_m["Flag" + (charaNum - 207)],bbb);
            }
            catch(myError:Error)
            {
               MenuClass.systemData["FreeFlag" + (i - 207)]["_depth"] = 10000;
            }
         }
         else if(charaNum < 405)
         {
            try
            {
               Chara_Class.chara_m.setChildIndex(Chara_Class.chara_m["Hukidashi" + (charaNum - 306)],bbb);
            }
            catch(myError:Error)
            {
               MenuClass.systemData["FreeHukidashi" + (i - 306)]["_depth"] = 10000;
            }
         }
         else if(charaNum < 504)
         {
            try
            {
               Chara_Class.chara_m.setChildIndex(Chara_Class.chara_m["FreeHand" + (charaNum - 405)],bbb);
            }
            catch(myError:Error)
            {
               MenuClass.systemData["FreeHand" + (i - 405)]["_depth"] = 10000;
            }
         }
         else if(charaNum < 603)
         {
            try
            {
               Chara_Class.chara_m.setChildIndex(Chara_Class.chara_m["Chair" + (charaNum - 504)],bbb);
            }
            catch(myError:Error)
            {
               MenuClass.systemData["FreeChair" + (i - 504)]["_depth"] = 10000;
            }
         }
         else if(charaNum < 702)
         {
            try
            {
               Chara_Class.chara_m.setChildIndex(Chara_Class.chara_m["ChairBack" + (charaNum - 603)],bbb);
            }
            catch(myError:Error)
            {
               MenuClass.systemData["FreeChair" + (i - 603)]["_depth2"] = 10000;
            }
         }
         if(clickTarget != "move")
         {
            i = 0;
            while(i < MenuClass.DepthMeter.length)
            {
               if(i < 9)
               {
                  MenuClass.charaData[i]["Ymove"]["_depth"] = Chara_Class.chara_m.getChildIndex(MenuClass.charaAddDepth[i]);
               }
               else if(i < 108)
               {
                  try
                  {
                     MenuClass.systemData["FreeRibon" + (i - 9)]["_depth"] = Chara_Class.chara_m.getChildIndex(Chara_Class.chara_m["Ribon" + (i - 9)]);
                  }
                  catch(myError:Error)
                  {
                     MenuClass.systemData["FreeRibon" + (i - 9)]["_depth"] = 10000;
                  }
               }
               else if(i < 207)
               {
                  try
                  {
                     MenuClass.systemData["FreeBelt" + (i - 108)]["_depth"] = Chara_Class.chara_m.getChildIndex(Chara_Class.chara_m["Belt" + (i - 108)]);
                  }
                  catch(myError:Error)
                  {
                     MenuClass.systemData["FreeBelt" + (i - 108)]["_depth"] = 10000;
                  }
               }
               else if(i < 306)
               {
                  try
                  {
                     MenuClass.systemData["FreeFlag" + (i - 207)]["_depth"] = Chara_Class.chara_m.getChildIndex(Chara_Class.chara_m["Flag" + (i - 207)]);
                  }
                  catch(myError:Error)
                  {
                     MenuClass.systemData["FreeFlag" + (i - 207)]["_depth"] = 10000;
                  }
               }
               else if(i < 405)
               {
                  try
                  {
                     MenuClass.systemData["FreeHukidashi" + (i - 306)]["_depth"] = Chara_Class.chara_m.getChildIndex(Chara_Class.chara_m["Hukidashi" + (i - 306)]);
                  }
                  catch(myError:Error)
                  {
                     MenuClass.systemData["FreeHukidashi" + (i - 306)]["_depth"] = 10000;
                  }
               }
               else if(i < 504)
               {
                  try
                  {
                     MenuClass.systemData["FreeHand" + (i - 405)]["_depth"] = Chara_Class.chara_m.getChildIndex(Chara_Class.chara_m["FreeHand" + (i - 405)]);
                  }
                  catch(myError:Error)
                  {
                     MenuClass.systemData["FreeHand" + (i - 405)]["_depth"] = 10000;
                  }
               }
               else if(i < 603)
               {
                  try
                  {
                     MenuClass.systemData["FreeChair" + (i - 504)]["_depth"] = Chara_Class.chara_m.getChildIndex(Chara_Class.chara_m["Chair" + (i - 504)]);
                  }
                  catch(myError:Error)
                  {
                     MenuClass.systemData["FreeChair" + (i - 504)]["_depth"] = 10000;
                  }
               }
               else if(i < 702)
               {
                  try
                  {
                     MenuClass.systemData["FreeChair" + (i - 603)]["_depth2"] = Chara_Class.chara_m.getChildIndex(Chara_Class.chara_m["ChairBack" + (i - 603)]);
                  }
                  catch(myError:Error)
                  {
                     MenuClass.systemData["FreeChair" + (i - 603)]["_depth2"] = 10000;
                  }
               }
               i++;
            }
         }
      }
   }
}
