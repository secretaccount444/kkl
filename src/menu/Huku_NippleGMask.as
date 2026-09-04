package menu
{
   import parameter.Dress_data;
   
   public class Huku_NippleGMask
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var meterNum:int;
      
      public function Huku_NippleGMask(param1:int, param2:int)
      {
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         this.meterNum = param2;
         if(this.charaData["NippleGLeft"]["_visible"][0] && this.meterNum == 0)
         {
            this.SetFc(this.charaData["NippleGLeft"]["_menu"]);
         }
         else if(this.charaData["NippleGRight"]["_visible"][0] && this.meterNum == 1)
         {
            this.SetFc(this.charaData["NippleGRight"]["_menu"]);
         }
      }
      
      private function SetFc(param1:int) : void
      {
         var _loc2_:int = this.charaData["Bura"]["_menu"];
         if(!this.charaAdd.dou.SeihukuDou.visible && (!this.charaAdd.dou.YsyatuDou.visible || this.charaData["Ysyatu"]["_visible"][0] && this.charaData["YsyatuDou"]["_menu"] != 1) && (!this.charaAdd.dou.TsyatuDou.visible || this.charaData["Tsyatu"]["_visible"][0] && this.charaData["TsyatuDou"]["_menu"] != 1) && (!this.charaAdd.dou.VestDou.visible || this.charaData["Vest"]["_visible"][0] && this.charaData["VestDou"]["_menu"] != 1) && (!this.charaAdd.mune.Bura.visible || Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["nippleG"]))
         {
            this.charaAdd.mune["mune" + this.meterNum].mune.NippleG.mask = null;
         }
         else
         {
            this.charaAdd.mune["mune" + this.meterNum].mune.NippleG.mask = this.charaAdd.mune["mune" + this.meterNum].mune.nippleGMask;
         }
      }
   }
}
