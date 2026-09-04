package frocessing.shape
{
   import flash.display.Sprite;
   import frocessing.core.F5Graphics;
   
   public interface IFShape
   {
       
      
      function draw(param1:F5Graphics) : void;
      
      function toSprite() : Sprite;
      
      function get name() : String;
      
      function get left() : Number;
      
      function get top() : Number;
      
      function get width() : Number;
      
      function get height() : Number;
   }
}
