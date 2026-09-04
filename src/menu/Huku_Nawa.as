package menu
{
   import parameter.Dress_data;
   
   public class Huku_Nawa
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      private var clickTarget:String;
      
      public function Huku_Nawa(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super();
         this.charaNum = param1;
         this.clickTarget = param2;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         var _loc6_:int = this.charaData["Nawa"]["_menu"];
         this.charaAdd.mune.Nawa.visible = this.charaData["Nawa"]["_visible"][0];
         this.charaAdd.dou.Nawa.visible = this.charaData["Nawa"]["_visible"][0];
         this.charaAdd.dou.dou_shitaHuku.Nawa.visible = this.charaData["Nawa"]["_visible"][0];
         new Huku_Vibrator(this.charaNum);
         new Tab_SetClass();
         if(this.charaData["Nawa"]["_visible"][0])
         {
            this.charaAdd.mune.Nawa.Nawa.gotoAndStop(Dress_data.NawaData[_loc6_]["mune"] + 1);
            this.charaAdd.dou.dou_shitaHuku.Nawa.gotoAndStop(Dress_data.NawaData[_loc6_]["Pantu"] + 1);
            this.charaData["BreastMove"]["_mode"][_loc3_] = "buraSet";
            if(Dress_data.NawaData[_loc6_]["Dou"] == 0)
            {
               this.charaAdd.dou.Nawa.visible = false;
               this.charaAdd.dou.Nawa.gotoAndStop(1);
            }
            else
            {
               this.charaAdd.dou.Nawa.gotoAndStop(Dress_data.NawaData[_loc6_]["Dou"] + 1);
            }
            new Huku_BuraHarabote(this.charaNum);
            new Huku_PantuMask(this.charaNum);
            new Huku_Breast("Nawa",this.charaNum);
         }
         else
         {
            this.charaAdd.mune.Nawa.Nawa.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.Nawa.gotoAndStop(1);
            _loc3_ = 0;
            while(_loc3_ <= 1)
            {
               this.charaAdd.dou.Nawa.gotoAndStop(1);
               _loc3_++;
            }
         }
      }
   }
}
