package menu
{
   import system.MeterPersent;
   
   public class Huku_HanePosi
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_HanePosi(param1:int)
      {
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         new MeterPersent(25,-25,"douHeight",param1);
         var _loc2_:Number = 0;
         var _loc3_:Array = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
         if(_loc3_[0] >= 1 && _loc3_[1] >= 1)
         {
            _loc2_ = 20;
         }
         else if(_loc3_[0] >= 1 || _loc3_[1] >= 1)
         {
            _loc2_ = 10;
         }
         this.charaAdd.hane.y = SizeDataClass.bodyDefault_y["hane"] + MeterPersent.MeterPersentNum + _loc2_;
      }
   }
}
