package menu
{
   import parameter.Dress_data;
   
   public class Hair_Class
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var DressCharaData:Object;
      
      public function Hair_Class(param1:int)
      {
         var _loc2_:int = 0;
         super();
         this.charaData = MenuClass.charaData[param1];
         this.charaAdd = MenuClass.charaAdd[param1];
         this.DressCharaData = Dress_data.DressCharaData[param1];
         this.charaAdd.head.hair.gotoAndStop(this.charaData["Hair"]["_menu"] + 1);
         if(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_option"] == 0)
         {
            this.charaAdd.head.hairOption.visible = false;
            this.charaAdd.head.hairOption.gotoAndStop(1);
         }
         else if(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_option"] == 1)
         {
            this.charaAdd.head.hairOption.visible = true;
            this.charaAdd.head.hairOption.gotoAndStop(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_option"] + 1);
         }
         new SetClass(param1,"Hat","move");
         new SetClass(param1,"Horn","move");
         new SetClass(param1,"Mimi","move");
         if(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hage"] >= 2)
         {
            this.charaAdd.head.Bangs.visible = false;
            this.charaAdd.head.Bangs.gotoAndStop(1);
            this.charaAdd.head.hairUnder.visible = false;
            this.charaAdd.head.hairUnder.gotoAndStop(1);
         }
         else
         {
            if(this.charaData["Bangs"]["_visible"][0])
            {
               this.charaAdd.head.Bangs.visible = true;
               new SetClass(param1,"Bangs","move");
            }
            this.charaAdd.head.hairUnder.visible = true;
         }
         if(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hage"] > 0)
         {
            this.charaAdd.head.kage.visible = false;
            this.charaAdd.head.kage.gotoAndStop(1);
            this.charaAdd.head.HairBaseSen.visible = false;
            this.charaAdd.head.HairBaseSen.gotoAndStop(1);
            this.charaAdd.head.hairUnder.gotoAndStop(3);
            this.charaAdd.head.Bangs.y = 1;
         }
         else
         {
            if(this.charaData["ContourHeight"]["_meter"] >= 0)
            {
               this.charaAdd.head.kage.visible = true;
               this.charaAdd.head.kage.gotoAndStop(2);
               this.charaAdd.head.HairBaseSen.visible = true;
               this.charaAdd.head.HairBaseSen.gotoAndStop(2);
            }
            this.charaAdd.head.hairUnder.gotoAndStop(2);
            this.charaAdd.head.Bangs.y = -2;
         }
         this.charaAdd.head.faceSen.faceHair.gotoAndStop(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hage"] - 1);
         if(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_ushiro"] == 0)
         {
            this.charaAdd.HairUshiro.visible = false;
            this.charaAdd.HairUshiro.gotoAndStop(1);
         }
         else
         {
            this.charaAdd.HairUshiro.visible = true;
            this.charaAdd.HairUshiro.gotoAndStop(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_ushiro"] + 1);
         }
         new Hair_ScaleX(param1);
         new Hair_MaeSen(param1);
         new Hair_Sen(param1);
         new Chara_ColorClass(param1,"Hair");
         if(this.DressCharaData["Bangs"][0]["_color0"][1] == 2)
         {
            this.charaData["Bangs"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            this.DressCharaData["Bangs"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            if(this.DressCharaData["Bangs"][0]["_color1"][1] == 2)
            {
               this.charaData["Bangs"]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["Bangs"][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
            }
         }
         new Chara_ColorClass(param1,"Bangs");
         if(this.DressCharaData["HairBack"][0]["_color0"][1] == 2)
         {
            this.charaData["HairBack"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            this.DressCharaData["HairBack"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            if(this.DressCharaData["HairBack"][0]["_color1"][1] == 2)
            {
               this.charaData["HairBack"]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["HairBack"][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
            }
            if(this.DressCharaData["HairBack"][0]["_color2"][1] == 2)
            {
               this.charaData["HairBack"]["_color2"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["HairBack"][0]["_color2"][0] = this.charaData["Hair"]["_color0"][0];
            }
         }
         new Chara_ColorClass(param1,"HairBack");
         if(this.DressCharaData["UnderHair"][0]["_color0"][1] == 2)
         {
            this.charaData["UnderHair"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            this.DressCharaData["UnderHair"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            new Chara_ColorClass(param1,"UnderHair");
         }
         _loc2_ = 0;
         while(_loc2_ <= Main.hukusuuNum)
         {
            if(this.charaData["HairExPlus"]["_visible"][_loc2_])
            {
               if(this.DressCharaData["HairEx" + _loc2_][0]["_color0"][1] == 2)
               {
                  this.charaData["HairEx" + _loc2_]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
                  this.DressCharaData["HairEx" + _loc2_][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
                  if(this.DressCharaData["HairEx" + _loc2_][0]["_color1"][1] == 2)
                  {
                     this.charaData["HairEx" + _loc2_]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
                     this.DressCharaData["HairEx" + _loc2_][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
                  }
                  if(this.DressCharaData["HairEx" + _loc2_][0]["_color2"][1] == 2)
                  {
                     this.charaData["HairEx" + _loc2_]["_color2"][0] = this.charaData["Hair"]["_color0"][0];
                     this.DressCharaData["HairEx" + _loc2_][0]["_color2"][0] = this.charaData["Hair"]["_color0"][0];
                  }
                  new Chara_ColorClass(param1,"HairEx" + _loc2_);
               }
            }
            _loc2_++;
         }
         if(this.DressCharaData["SideBurnLeft"][0]["_color0"][1] == 2)
         {
            this.charaData["SideBurnLeft"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            this.DressCharaData["SideBurnLeft"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            if(this.DressCharaData["SideBurnLeft"][0]["_color1"][1] == 2)
            {
               this.charaData["SideBurnLeft"]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["SideBurnLeft"][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
            }
            if(this.DressCharaData["SideBurnLeft"][0]["_color2"][1] == 2)
            {
               this.charaData["SideBurnLeft"]["_color2"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["SideBurnLeft"][0]["_color2"][0] = this.charaData["Hair"]["_color0"][0];
            }
         }
         if(this.DressCharaData["SideBurnRight"][0]["_color0"][1] == 2)
         {
            this.charaData["SideBurnRight"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            this.DressCharaData["SideBurnRight"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            if(this.DressCharaData["SideBurnRight"][0]["_color1"][1] == 2)
            {
               this.charaData["SideBurnRight"]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["SideBurnRight"][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
            }
            if(this.DressCharaData["SideBurnRight"][0]["_color2"][1] == 2)
            {
               this.charaData["SideBurnRight"]["_color2"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["SideBurnRight"][0]["_color2"][0] = this.charaData["Hair"]["_color0"][0];
            }
         }
         if(this.DressCharaData["Eyebrow"][0]["_color0"][1] == 2)
         {
            this.charaData["Eyebrow"]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            this.DressCharaData["Eyebrow"][0]["_color0"][0] = this.charaData["Hair"]["_color0"][0];
            if(this.DressCharaData["Eyebrow"][0]["_color1"][1] == 2)
            {
               this.charaData["Eyebrow"]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
               this.DressCharaData["Eyebrow"][0]["_color1"][0] = this.charaData["Hair"]["_color0"][0];
            }
         }
         new Chara_ColorClass(param1,"SideBurnLeft");
         new Chara_ColorClass(param1,"SideBurnRight");
         new Chara_ColorClass(param1,"Eyebrow");
         new Chara_ColorClass(param1,"Hige");
      }
   }
}
