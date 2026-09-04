package menu
{
   import parameter.Dress_data;
   
   public class Hair_All
   {
       
      
      private var charaData:Object;
      
      private var charaAdd:Object;
      
      private var DressCharaData:Object;
      
      public function Hair_All(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         super();
         this.charaData = MenuClass.charaData[param1];
         this.DressCharaData = Dress_data.DressCharaData[param1];
         this.charaAdd = MenuClass.charaAdd[param1];
         if(MenuClass.colorPaletteCheck[0] == 1)
         {
            this.charaData["Hair"]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
            this.DressCharaData["Hair"][0]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
         }
         if(MenuClass.colorPaletteCheck[1] == 1)
         {
            this.charaData["Hair"]["_color1"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
            this.DressCharaData["Hair"][0]["_color1"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
         }
         if(MenuClass.colorPaletteCheck[2] == 1)
         {
            this.charaData["Hair"]["_color2"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
            this.DressCharaData["Hair"][0]["_color2"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
         }
         new Chara_ColorClass(param1,"Hair");
         if(MenuClass.colorPaletteCheck[1] == 1)
         {
            this.charaData["Bangs"]["_color0"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
            this.DressCharaData["Bangs"][0]["_color0"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
         }
         if(MenuClass.colorPaletteCheck[2] == 1)
         {
            this.charaData["Bangs"]["_color1"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
            this.DressCharaData["Bangs"][0]["_color1"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
         }
         new Chara_ColorClass(param1,"Bangs");
         if(MenuClass.colorPaletteCheck[0] == 1)
         {
            this.charaData["HairBack"]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
            this.DressCharaData["HairBack"][0]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
         }
         if(MenuClass.colorPaletteCheck[1] == 1)
         {
            this.charaData["HairBack"]["_color1"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
            this.DressCharaData["HairBack"][0]["_color1"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
         }
         if(MenuClass.colorPaletteCheck[2] == 1)
         {
            this.charaData["HairBack"]["_color2"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
            this.DressCharaData["HairBack"][0]["_color2"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
         }
         new Chara_ColorClass(param1,"HairBack");
         if(MenuClass.colorPaletteCheck[0] == 1)
         {
            this.charaData["SideBurnLeft"]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
            this.DressCharaData["SideBurnLeft"][0]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
         }
         if(MenuClass.colorPaletteCheck[1] == 1)
         {
            this.charaData["SideBurnLeft"]["_color1"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
            this.DressCharaData["SideBurnLeft"][0]["_color1"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
         }
         if(MenuClass.colorPaletteCheck[2] == 1)
         {
            this.charaData["SideBurnLeft"]["_color2"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
            this.DressCharaData["SideBurnLeft"][0]["_color2"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
         }
         new Chara_ColorClass(param1,"SideBurnLeft");
         if(MenuClass.colorPaletteCheck[0] == 1)
         {
            this.charaData["SideBurnRight"]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
            this.DressCharaData["SideBurnRight"][0]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
         }
         if(MenuClass.colorPaletteCheck[1] == 1)
         {
            this.charaData["SideBurnRight"]["_color1"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
            this.DressCharaData["SideBurnRight"][0]["_color1"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
         }
         if(MenuClass.colorPaletteCheck[2] == 1)
         {
            this.charaData["SideBurnRight"]["_color2"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
            this.DressCharaData["SideBurnRight"][0]["_color2"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
         }
         new Chara_ColorClass(param1,"SideBurnRight");
         _loc3_ = 0;
         while(_loc3_ <= Main.hukusuuNum)
         {
            this.charaData["HairEx" + _loc3_]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
            this.DressCharaData["HairEx" + _loc3_][0]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
            this.charaData["HairEx" + _loc3_]["_color1"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
            this.DressCharaData["HairEx" + _loc3_][0]["_color1"][0] = MenuClass.systemData["HairAll"]["_color1"][0];
            this.charaData["HairEx" + _loc3_]["_color2"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
            this.DressCharaData["HairEx" + _loc3_][0]["_color2"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
            new Chara_ColorClass(param1,"HairEx" + _loc3_);
            _loc3_++;
         }
         if(param2 == "HairAll")
         {
            this.charaData["Ear"]["_senColor"] = 1;
            try
            {
               if(MenuClass.colorPaletteCheck[0] == 1)
               {
                  this.charaData["Mimi"]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
                  this.DressCharaData["Mimi"][this.charaData["Mimi"]["_menu"]]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
               }
               new Chara_ColorClass(param1,"Mimi");
            }
            catch(myError:Error)
            {
            }
            this.charaData["Ear"]["_senColor"] = 1;
            try
            {
               if(MenuClass.colorPaletteCheck[0] == 1)
               {
                  this.charaData["Ear"]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
                  this.DressCharaData["Ear"][this.charaData["Ear"]["_menu"]]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
               }
               new Chara_ColorClass(param1,"Ear");
            }
            catch(myError:Error)
            {
            }
            this.charaData["Ear"]["_senColor"] = 1;
            if(MenuClass.colorPaletteCheck[0] == 1)
            {
               this.charaData["Tail"]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
               this.DressCharaData["Tail"][this.charaData["Tail"]["_menu"]]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
            }
            new Chara_ColorClass(param1,"Tail");
         }
         try
         {
            if(MenuClass.colorPaletteCheck[0] == 1)
            {
               this.charaData["UnderHair"]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
               this.DressCharaData["UnderHair"][0]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
               new Chara_ColorClass(param1,"UnderHair");
            }
         }
         catch(myError:Error)
         {
         }
         try
         {
            if(MenuClass.colorPaletteCheck[0] == 1)
            {
               this.charaData["Eyebrow"]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
               this.DressCharaData["Eyebrow"][0]["_color0"][0] = MenuClass.systemData["HairAll"]["_color0"][0];
            }
            if(MenuClass.colorPaletteCheck[2] == 1)
            {
               this.charaData["Eyebrow"]["_color1"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
               this.DressCharaData["Eyebrow"][0]["_color1"][0] = MenuClass.systemData["HairAll"]["_color2"][0];
            }
            new Chara_ColorClass(param1,"Eyebrow");
         }
         catch(myError:Error)
         {
         }
         new Chara_ColorClass(param1,"Hige");
      }
   }
}
