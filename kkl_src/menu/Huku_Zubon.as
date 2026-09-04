package menu
{
   public class Huku_Zubon
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_Zubon(param1:int)
      {
         var _loc2_:int = 0;
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         this.charaAdd.dou.dou_Skirt.Zubon.visible = this.charaData["Zubon"]["_visible"][0];
         new Huku_Vibrator(this.charaNum);
         new Tab_SetClass();
         new Huku_YsyatuIn(this.charaNum);
         new Huku_Mosaic(this.charaNum);
         new Huku_PantuMask(this.charaNum);
         new Huku_PantuHarabote(this.charaNum);
         if(this.charaData["Zubon"]["_visible"][0])
         {
            this.charaAdd.dou.dou_Skirt.Zubon.gotoAndStop(this.charaData["Zubon"]["_menu"] + 2);
         }
         else
         {
            this.charaAdd.dou.dou_Skirt.Zubon.gotoAndStop(1);
         }
         new Huku_ZubonAshi(this.charaNum,0);
         new Huku_ZubonAshi(this.charaNum,1);
         if(this.charaData["Zubon"]["_visible"][0])
         {
            new Chara_ColorClass(this.charaNum,"Zubon");
         }
      }
   }
}
