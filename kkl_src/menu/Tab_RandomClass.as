package menu
{
   import flash.events.Event;
   import parameter.Color_data;
   import parameter.Dress_data;
   
   public class Tab_RandomClass
   {
       
      
      private var charaNum:int;
      
      private var charaData:Object;
      
      private var tabData:Object;
      
      private var tabName:String;
      
      private var tabNamePlus:String;
      
      private var randomNum:int = 0;
      
      private var headerName:String;
      
      private var timecount:int = 0;
      
      public function Tab_RandomClass(param1:int, param2:String)
      {
         super();
         this.headerName = param2;
         this.charaNum = param1;
         this.charaData = MenuClass.charaData[this.charaNum];
         this.tabData = MenuClass.tabData[this.headerName];
         Main.stageVar.addEventListener(Event.ENTER_FRAME,this.RandomFc);
      }
      
      private function RandomFc(param1:Event) : void
      {
         this.randomSet(this.timecount);
         ++this.timecount;
         if(this.timecount == this.tabData.length)
         {
            this.timecount = 0;
            new Tab_SetClass();
            param1.currentTarget.removeEventListener(Event.ENTER_FRAME,this.RandomFc);
         }
      }
      
      private function randomSet(param1:int) : void
      {
         var i:int = 0;
         var plusFlag:Boolean = false;
         var plusStr:String = null;
         var tadDataName:String = null;
         var plusNum:int = 0;
         var r18Num:int = 0;
         var undefinedCheck:Boolean = false;
         var n:int = 0;
         var count:int = param1;
         if(this.tabData[count][0] == "Random")
         {
            this.randomNum = count;
         }
         if(this.tabData[count][2]["_random"])
         {
            this.tabName = this.tabData[count][0];
            plusFlag = false;
            plusStr = this.tabData[count][2]["_data"];
            tadDataName = this.tabData[count][2]["_menu"];
            if(tadDataName == "charaPlus")
            {
               plusFlag = true;
               plusNum = MenuClass.systemData[plusStr]["_menu"];
            }
            tadDataName = this.tabData[count][2]["_meter"];
            if(tadDataName == "charaPlus")
            {
               plusFlag = true;
               plusNum = MenuClass.systemData[plusStr]["_meter"];
            }
            if(plusFlag)
            {
               this.tabNamePlus = this.tabName + plusNum;
            }
            else
            {
               this.tabNamePlus = this.tabName;
            }
            if(MenuClass.menuData[this.tabName] != undefined && this.tabData[this.randomNum][2]["_menu"])
            {
               r18Num = Math.floor(Math.random() * (MenuClass.menuData[this.tabName] + 1));
               if(Dress_data.menuCustom[this.tabNamePlus])
               {
                  if(this.tabData[count][2]["_menu"] == "system")
                  {
                     if(this.tabName == "BackgroundSet")
                     {
                        if(MenuClass._nowTargetMode == "All" && this.charaNum == 8)
                        {
                           MenuClass.systemData[this.tabNamePlus]["_menu"] = Dress_data.menuCustom[this.tabNamePlus][r18Num];
                           Dress_data.menuCustomNum[this.charaNum][this.tabNamePlus] = r18Num;
                        }
                     }
                     else
                     {
                        MenuClass.systemData[this.tabNamePlus]["_menu"] = Dress_data.menuCustom[this.tabNamePlus][r18Num];
                        Dress_data.menuCustomNum[this.charaNum][this.tabNamePlus] = r18Num;
                     }
                  }
                  else
                  {
                     this.charaData[this.tabNamePlus]["_menu"] = Dress_data.menuCustom[this.tabNamePlus][r18Num];
                     Dress_data.menuCustomNum[this.charaNum][this.tabNamePlus] = r18Num;
                  }
               }
               else if(this.tabData[count][2]["_menu"] == "system")
               {
                  MenuClass.systemData[this.tabNamePlus]["_menu"] = r18Num;
               }
               else
               {
                  this.charaData[this.tabNamePlus]["_menu"] = r18Num;
               }
               new Tab_MenuColorIn(this.headerName,count,this.tabNamePlus,this.charaNum);
            }
            undefinedCheck = true;
            try
            {
               if(this.charaData[this.tabNamePlus]["_meter"] == undefined)
               {
                  undefinedCheck = false;
               }
            }
            catch(myError:Error)
            {
               undefinedCheck = false;
            }
            if(undefinedCheck && this.tabData[this.randomNum][2]["_meter"])
            {
               this.charaData[this.tabNamePlus]["_meter"] = Math.floor(Math.random() * 100);
               try
               {
                  if(this.tabData[count][2]["_meterType"] == 1)
                  {
                     this.charaData[this.tabNamePlus]["_meter"] = Math.floor(Math.random() * 360);
                  }
                  else if(this.tabData[count][2]["_meterType"] == 2)
                  {
                     this.charaData[this.tabNamePlus]["_meter"] = Math.floor(Math.random() * 1000);
                  }
               }
               catch(myError:Error)
               {
               }
            }
            undefinedCheck = true;
            try
            {
               if(this.charaData[this.tabNamePlus]["_reversal"] == undefined)
               {
                  undefinedCheck = false;
               }
            }
            catch(myError:Error)
            {
               undefinedCheck = false;
            }
            if(undefinedCheck)
            {
               if(this.charaData[this.tabNamePlus]["_menu"] != undefined && this.tabData[this.randomNum][2]["_menu"] || this.charaData[this.tabNamePlus]["_meter"] != undefined && this.tabData[this.randomNum][2]["_meter"])
               {
                  this.charaData[this.tabNamePlus]["_reversal"] = Math.round(Math.random());
               }
            }
            undefinedCheck = true;
            try
            {
               if(this.charaData[this.tabNamePlus]["_depth"] == undefined)
               {
                  undefinedCheck = false;
               }
            }
            catch(myError:Error)
            {
               undefinedCheck = false;
            }
            if(undefinedCheck && this.tabData[this.randomNum][2]["_menu"])
            {
               this.charaData[this.tabNamePlus]["_depth"] = Math.floor(Math.random() * 2);
            }
            undefinedCheck = true;
            try
            {
               if(this.charaData[this.tabNamePlus]["_color2"] == undefined)
               {
                  undefinedCheck = false;
               }
            }
            catch(myError:Error)
            {
               undefinedCheck = false;
            }
            if(undefinedCheck)
            {
               this.colorSet(2);
            }
            undefinedCheck = true;
            try
            {
               if(this.charaData[this.tabNamePlus]["_color1"] == undefined)
               {
                  undefinedCheck = false;
               }
            }
            catch(myError:Error)
            {
               undefinedCheck = false;
            }
            if(undefinedCheck)
            {
               this.colorSet(1);
            }
            undefinedCheck = true;
            try
            {
               if(this.charaData[this.tabNamePlus]["_color0"] == undefined)
               {
                  undefinedCheck = false;
               }
            }
            catch(myError:Error)
            {
               undefinedCheck = false;
            }
            if(undefinedCheck)
            {
               this.colorSet(0);
            }
            undefinedCheck = true;
            try
            {
               if(this.charaData[this.tabNamePlus]["_visible"] == undefined)
               {
                  undefinedCheck = false;
               }
            }
            catch(myError:Error)
            {
               undefinedCheck = false;
            }
            if(undefinedCheck && this.tabData[this.randomNum][2]["_visible"])
            {
               if(this.charaData[this.tabNamePlus]["_visible"].length == 1)
               {
                  this.charaData[this.tabNamePlus]["_visible"][0] = Math.round(Math.random());
               }
               else
               {
                  n = this.charaData[this.tabNamePlus]["_visible"].length - 1;
                  i = 0;
                  while(i <= n)
                  {
                     this.charaData[this.tabNamePlus]["_visible"][i] = Math.round(Math.random());
                     i++;
                  }
               }
            }
            undefinedCheck = true;
            try
            {
               if(this.charaData[this.tabNamePlus]["_check"] == undefined)
               {
                  undefinedCheck = false;
               }
            }
            catch(myError:Error)
            {
               undefinedCheck = false;
            }
            if(undefinedCheck && this.tabData[this.randomNum][2]["_check"])
            {
               this.charaData[this.tabNamePlus]["_check"] = Math.round(Math.random());
            }
            new SetClass(this.charaNum,this.tabName,"random");
         }
      }
      
      private function colorSet(param1:int) : void
      {
         var colorNum:int = 0;
         var colorNum2:int = 0;
         var i:int = 0;
         var undefinedCheck:Boolean = false;
         var linkName:String = null;
         var colorInt:int = param1;
         if(Dress_data.DressData[this.tabNamePlus].length == 1)
         {
            colorNum2 = 0;
         }
         else
         {
            colorNum2 = this.charaData[this.tabNamePlus]["_menu"];
         }
         try
         {
            if(this.tabData[this.randomNum][2]["_color" + colorInt] && (Dress_data.DressCharaData[this.charaNum][this.tabNamePlus][colorNum2]["_color" + colorInt][1] == 1 || colorInt == 0))
            {
               undefinedCheck = true;
               try
               {
                  if(this.charaData[this.tabNamePlus]["_menu"] == undefined)
                  {
                     undefinedCheck = false;
                  }
               }
               catch(myError:Error)
               {
                  undefinedCheck = false;
               }
               if(undefinedCheck)
               {
                  if(this.charaData[this.tabNamePlus]["_color" + colorInt].length == 1)
                  {
                     colorNum = 0;
                  }
                  else
                  {
                     colorNum = colorNum2;
                  }
               }
               else
               {
                  colorNum = 0;
               }
               Dress_data.DressCharaData[this.charaNum][this.tabNamePlus][colorNum2]["_color" + colorInt][0] = this.charaData[this.tabNamePlus]["_color" + colorInt][colorNum] = Math.floor(Math.random() * Color_data.ColorData[Dress_data.DressData[this.tabNamePlus][colorNum2]["_color" + colorInt][0]].length);
               if(colorInt == 0)
               {
                  i = 0;
                  for(; i <= 2; i++)
                  {
                     try
                     {
                        if(i == 0)
                        {
                           if(Dress_data.DressCharaData[this.charaNum][this.tabNamePlus][colorNum2]["_color0"][1] == 2)
                           {
                              try
                              {
                                 linkName = Dress_data.DressData[this.tabNamePlus][0]["_color0"][4];
                              }
                              catch(myError:Error)
                              {
                              }
                              try
                              {
                                 linkName = Dress_data.DressData[this.tabNamePlus][1]["_color0"][4];
                              }
                              catch(myError:Error)
                              {
                              }
                              Dress_data.DressCharaData[this.charaNum][this.tabNamePlus][colorNum2]["_color0"][0] = this.charaData[this.tabNamePlus]["_color0"][colorNum] = this.charaData[linkName]["_color0"][0];
                           }
                        }
                        else if(Dress_data.DressCharaData[this.charaNum][this.tabNamePlus][colorNum2]["_color" + i][1] == 2)
                        {
                           Dress_data.DressCharaData[this.charaNum][this.tabNamePlus][colorNum2]["_color" + i][0] = this.charaData[this.tabNamePlus]["_color" + i][colorNum] = this.charaData[this.tabNamePlus]["_color0"][colorNum];
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
