package frocessing.shape
{
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import frocessing.core.F5Graphics;
   import frocessing.geom.FGradientMatrix;
   import frocessing.graphics.FGradientFill;
   
   public class FShapeGradient extends FGradientFill
   {
       
      
      public var name:String = "";
      
      public var isNormal:Boolean = false;
      
      public function FShapeGradient(param1:String, param2:Array, param3:Array, param4:Array, param5:FGradientMatrix = null, param6:String = "pad", param7:String = "rgb", param8:Number = 0.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      protected function _gradientMatrix(param1:IFShape) : Matrix
      {
         if(this.isNormal && param1 != null)
         {
            return matrix.map(param1.left,param1.top,param1.width,param1.height);
         }
         return matrix;
      }
      
      function applyFill(param1:F5Graphics, param2:IFShape = null) : void
      {
         param1.beginGradientFill(gradType,colors,alphas,ratios,this._gradientMatrix(param2),spreadMethod,interpolationMethod,focalPointRation);
      }
      
      function applyStroke(param1:F5Graphics, param2:IFShape = null) : void
      {
         param1.lineGradientStyle(gradType,colors,alphas,ratios,this._gradientMatrix(param2),spreadMethod,interpolationMethod,focalPointRation);
      }
      
      function applyFillToGraphics(param1:Graphics, param2:IFShape = null) : void
      {
         param1.beginGradientFill(gradType,colors,alphas,ratios,this._gradientMatrix(param2),spreadMethod,interpolationMethod,focalPointRation);
      }
      
      function applyStrokeToGraphics(param1:Graphics, param2:IFShape = null) : void
      {
         param1.lineGradientStyle(gradType,colors,alphas,ratios,this._gradientMatrix(param2),spreadMethod,interpolationMethod,focalPointRation);
      }
   }
}
