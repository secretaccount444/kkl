package frocessing.text
{
   import flash.display.BitmapData;
   
   public class PChar
   {
       
      
      public var data:BitmapData;
      
      public var offsetX:Number;
      
      public var offsetY:Number;
      
      public var width:Number;
      
      public var height:Number;
      
      public function PChar(param1:BitmapData, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.data = param1;
         this.offsetX = param2;
         this.offsetY = param3;
         this.width = param4;
         this.height = param5;
      }
   }
}
