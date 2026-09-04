package menu
{
   public class Huku_PantuAlpha
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_PantuAlpha(param1:int)
      {
         var _loc2_:int = 0;
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(MenuClass.alphaTest[this.charaNum] != this.charaAdd["ashi" + _loc2_].shiri.shiri.Pantu.alpha)
         {
            _loc2_ = 0;
            while(_loc2_ <= 1)
            {
               this.charaAdd["ashi" + _loc2_].shiri.shiri.Pantu.alpha = MenuClass.alphaTest[this.charaNum];
               try
               {
                  this.charaAdd["ashi" + _loc2_].thigh.thigh.Pantu.alpha = MenuClass.alphaTest[this.charaNum];
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["ashi" + _loc2_].shiri.shiri.Spantu.alpha = MenuClass.alphaTest[this.charaNum];
                  this.charaAdd["ashi" + _loc2_].thigh.thigh.Spantu.alpha = MenuClass.alphaTest[this.charaNum];
               }
               catch(myError:Error)
               {
               }
               _loc2_++;
            }
         }
      }
   }
}
