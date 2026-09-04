package menu
{
   import parameter.Dress_data;
   
   public class Hair_ScaleX
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Hair_ScaleX(param1:int)
      {
         var _loc2_:Number = NaN;
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(this.charaData["Hair"]["_reversal"])
         {
            _loc2_ = -1;
         }
         else
         {
            _loc2_ = 1;
         }
         if(this.charaData["Hat"]["_visible"][0] && Dress_data.HatData[this.charaData["Hat"]["_menu"]]["cap"] == 1)
         {
            this.charaAdd.head.hair.scaleX = Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_scaleX"] * _loc2_;
            this.charaAdd.head.hair.mask = null;
            this.charaAdd.head.Hat.maskMC.visible = false;
         }
         else if(this.charaData["Hat"]["_visible"][0] && Dress_data.HatData[this.charaData["Hat"]["_menu"]]["cap"] == 2)
         {
            try
            {
               this.charaAdd.head.Hat.maskMC.gotoAndStop(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hathood"]);
               this.charaAdd.head.hair.mask = this.charaAdd.head.Hat.maskMC;
               this.charaAdd.head.Hat.maskMC.visible = true;
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            this.charaAdd.head.hair.scaleX = 1 * _loc2_;
            this.charaAdd.head.hair.mask = null;
            this.charaAdd.head.Hat.maskMC.visible = false;
         }
      }
   }
}
