package menu
{
   import parameter.Dress_data;
   import parts.Part;
   
   public class Tab_ColorLinkCheck
   {
       
      
      private var tabName:String;
      
      private var headerName:String;
      
      private var menuNum:int;
      
      private var DressCharaData:Object;
      
      private var charaData:Object;
      
      public function Tab_ColorLinkCheck(param1:int, param2:String, param3:String)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         super();
         this.tabName = param2;
         this.charaData = MenuClass.charaData[param1];
         this.DressCharaData = Dress_data.DressCharaData[param1];
         var defaultDressData = Part.getDefaultDressData(param2);

         try
         {
            if(defaultDressData.length == 1)
            {
               this.menuNum = 0;
            }
            else
            {
               this.menuNum = this.charaData[this.tabName]["_menu"];
            }
         }
         catch(myError:Error)
         {
         }
         var _loc7_:Number = 0;
         try
         {
            _loc6_ = defaultDressData[0]["_color0"][4];
            _loc7_ = 0;
         }
         catch(myError:Error)
         {
         }
         try
         {
            _loc6_ = defaultDressData[1]["_color0"][4];
            _loc7_ = 1;
         }
         catch(myError:Error)
         {
         }
         _loc4_ = 0;
         for(; _loc4_ <= 2; _loc4_++)
         {
            if(param3 == "chara")
            {
               if(!MenuClass.ColorOpenCheck)
               {
                  try
                  {
                     if(_loc4_ == 0)
                     {
                        if(defaultDressData[_loc7_]["_color0"][4] != undefined)
                        {
                           if(String(this.charaData[this.tabName]["_color0"][0]) == String(this.charaData[_loc6_]["_color0"][0]))
                           {
                              this.DressCharaData[this.tabName][this.menuNum]["_color0"][1] = 2;
                           }
                           else
                           {
                              this.DressCharaData[this.tabName][this.menuNum]["_color0"][1] = 1;
                           }
                        }
                     }
                     else if(String(this.charaData[this.tabName]["_color0"][0]) == String(this.charaData[this.tabName]["_color" + _loc4_][0]))
                     {
                        this.DressCharaData[this.tabName][this.menuNum]["_color" + _loc4_][1] = 2;
                     }
                     else
                     {
                        this.DressCharaData[this.tabName][this.menuNum]["_color" + _loc4_][1] = 1;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else if(param3 == "system")
            {
               if(!MenuClass.ColorOpenCheck)
               {
                  try
                  {
                     if(_loc4_ == 0)
                     {
                        if(defaultDressData[_loc7_]["_color0"][4] != undefined)
                        {
                           if(String(MenuClass.systemData[this.tabName]["_color0"][0]) == String(MenuClass.systemData[_loc6_]["_color0"][0]))
                           {
                              Dress_data.DressCharaData[0][this.tabName][this.menuNum]["_color0"][1] = 2;
                           }
                           else
                           {
                              Dress_data.DressCharaData[0][this.tabName][this.menuNum]["_color0"][1] = 1;
                           }
                        }
                     }
                     else if(String(MenuClass.systemData[this.tabName]["_color0"][0]) == String(MenuClass.systemData[this.tabName]["_color" + _loc4_][0]))
                     {
                        Dress_data.DressCharaData[0][this.tabName][this.menuNum]["_color" + _loc4_][1] = 2;
                     }
                     else
                     {
                        Dress_data.DressCharaData[0][this.tabName][this.menuNum]["_color" + _loc4_][1] = 1;
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
