package menu
{
   public class Huku_TailPosi
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_TailPosi(param1:int)
      {
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         this.charaAdd.Tail.y = SizeDataClass.bodyDefault_y["Tail"];
      }
   }
}
