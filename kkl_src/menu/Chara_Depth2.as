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
         var charaNum:int = param1;
         var str:String = param2;
         var clickTarget:String = param3;
         super();
         var bbb:Number = 0;
         var ccc:Number = 0;
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
                  if (charaNum < 504) {
                     if (i < charaNum)
                     {
                        bbb++;
                     }
                     if (str == "select" && charaNum < 9 && i < 9)
                     {
                        ccc++;
                     }
                  } else if (charaNum < 603) {
                     if (i < charaNum || i >= 603 && i < 702 && i - 99 < charaNum)
                     {
                        bbb++;
                     }
                  } else if (charaNum < 702) {
                     if (i < 503 || i >= 504 && i < 603 && i < charaNum - 99 || i >= 604 && i < charaNum)
                     {
                        bbb++;
                     }
                  }
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
