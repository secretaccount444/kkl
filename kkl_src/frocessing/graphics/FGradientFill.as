package frocessing.graphics
{
   import frocessing.geom.FGradientMatrix;
   
   public class FGradientFill implements IFGraphicsFill
   {
       
      
      public var gradType:String;
      
      public var colors:Array;
      
      public var ratios:Array;
      
      public var alphas:Array;
      
      public var matrix:FGradientMatrix;
      
      public var spreadMethod:String;
      
      public var interpolationMethod:String;
      
      public var focalPointRation:Number;
      
      public function FGradientFill(param1:String, param2:Array, param3:Array, param4:Array, param5:FGradientMatrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0.0)
      {
         super();
         this.gradType = param1;
         this.colors = param2;
         this.alphas = param3;
         this.ratios = param4;
         this.spreadMethod = param6;
         this.interpolationMethod = param7;
         this.focalPointRation = param8;
         this.matrix = param5;
      }
   }
}
