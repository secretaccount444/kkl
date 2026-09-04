package frocessing.text
{
   public interface IFont
   {
       
      
      function get size() : int;
      
      function get ascent() : Number;
      
      function get descent() : Number;
      
      function index(param1:uint) : int;
      
      function charWidth(param1:uint) : Number;
   }
}
