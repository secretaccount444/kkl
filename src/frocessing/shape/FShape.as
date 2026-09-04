package frocessing.shape
{
   import flash.display.Graphics;
   import frocessing.core.F5Graphics;
   
   public class FShape extends FShapeObject implements IFShape
   {
      
      protected static const MOVE_TO:int = 1;
      
      protected static const LINE_TO:int = 2;
      
      protected static const CURVE_TO:int = 3;
      
      protected static const BEZIER_TO:int = 10;
      
      protected static const CLOSE_PATH:int = 100;
       
      
      protected var _commands:Array;
      
      protected var _vertices:Array;
      
      public var bezierDetail:uint = 20;
      
      public function FShape(param1:Array = null, param2:Array = null, param3:FShapeContainer = null)
      {
         super(param3);
         this._commands = param1 != null ? param1 : [];
         this._vertices = param2 != null ? param2 : [];
      }
      
      public function get commands() : Array
      {
         return this._commands;
      }
      
      public function get vertices() : Array
      {
         return this._vertices;
      }
      
      override protected function _draw_to_f5(param1:F5Graphics) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:int = this._commands.length;
         if(_loc2_ == 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 1;
         var _loc7_:int = 0;
         while(_loc7_ < _loc2_)
         {
            if((_loc8_ = this._commands[_loc7_]) == LINE_TO)
            {
               param1.lineTo(this._vertices[_loc3_],this._vertices[_loc4_]);
               _loc3_ += 2;
               _loc4_ += 2;
            }
            else if(_loc8_ == CURVE_TO)
            {
               _loc5_ = _loc3_ + 2;
               _loc6_ = _loc4_ + 2;
               param1.curveTo(this._vertices[_loc3_],this._vertices[_loc4_],this._vertices[_loc5_],this._vertices[_loc6_]);
               _loc3_ += 4;
               _loc4_ += 4;
            }
            else if(_loc8_ == MOVE_TO)
            {
               param1.moveTo(this._vertices[_loc3_],this._vertices[_loc4_]);
               _loc3_ += 2;
               _loc4_ += 2;
            }
            else if(_loc8_ == CLOSE_PATH)
            {
               param1.closePath();
            }
            else if(_loc8_ == BEZIER_TO)
            {
               param1.bezierTo(this._vertices[_loc3_],this._vertices[_loc4_],this._vertices[int(_loc3_ + 2)],this._vertices[int(_loc4_ + 2)],this._vertices[int(_loc3_ + 4)],this._vertices[int(_loc4_ + 4)]);
               _loc3_ += 6;
               _loc4_ += 6;
            }
            _loc7_++;
         }
      }
      
      override protected function _draw_to_graphics(param1:Graphics) : void
      {
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:int = this._commands.length;
         if(_loc2_ == 0)
         {
            return;
         }
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 1;
         var _loc9_:int = 0;
         while(_loc9_ < _loc2_)
         {
            if((_loc10_ = this._commands[_loc9_]) == LINE_TO)
            {
               _loc5_ = this._vertices[_loc7_];
               _loc6_ = this._vertices[_loc8_];
               param1.lineTo(_loc5_,_loc6_);
               _loc7_ += 2;
               _loc8_ += 2;
            }
            else if(_loc10_ == CURVE_TO)
            {
               _loc5_ = this._vertices[int(_loc7_ + 2)];
               _loc6_ = this._vertices[int(_loc8_ + 2)];
               param1.curveTo(this._vertices[_loc7_],this._vertices[_loc8_],_loc5_,_loc6_);
               _loc7_ += 4;
               _loc8_ += 4;
            }
            else if(_loc10_ == MOVE_TO)
            {
               _loc3_ = _loc5_ = this._vertices[_loc7_];
               _loc4_ = _loc6_ = this._vertices[_loc8_];
               param1.moveTo(_loc3_,_loc4_);
               _loc7_ += 2;
               _loc8_ += 2;
            }
            else if(_loc10_ == CLOSE_PATH)
            {
               param1.lineTo(_loc3_,_loc4_);
               _loc5_ = _loc3_;
               _loc6_ = _loc4_;
            }
            else if(_loc10_ == BEZIER_TO)
            {
               _loc11_ = this._vertices[int(_loc7_ + 4)];
               _loc12_ = this._vertices[int(_loc8_ + 4)];
               this._draw_bezier(param1,_loc5_,_loc6_,this._vertices[_loc7_],this._vertices[_loc8_],this._vertices[int(_loc7_ + 2)],this._vertices[int(_loc8_ + 2)],_loc11_,_loc12_);
               _loc5_ = _loc11_;
               _loc6_ = _loc12_;
               _loc7_ += 6;
               _loc8_ += 6;
            }
            _loc9_++;
         }
      }
      
      private function _draw_bezier(param1:Graphics, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc12_:Number = NaN;
         var _loc10_:Number = 1 / this.bezierDetail;
         var _loc11_:Number = 0;
         var _loc13_:int = 1;
         while(_loc13_ <= this.bezierDetail)
         {
            _loc11_ += _loc10_;
            _loc12_ = 1 - _loc11_;
            param1.lineTo(param2 * _loc12_ * _loc12_ * _loc12_ + 3 * param4 * _loc11_ * _loc12_ * _loc12_ + 3 * param6 * _loc11_ * _loc11_ * _loc12_ + param8 * _loc11_ * _loc11_ * _loc11_,param3 * _loc12_ * _loc12_ * _loc12_ + 3 * param5 * _loc11_ * _loc12_ * _loc12_ + 3 * param7 * _loc11_ * _loc11_ * _loc12_ + param9 * _loc11_ * _loc11_ * _loc11_);
            _loc13_++;
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this._commands.push(MOVE_TO);
         this._vertices.push(param1,param2);
      }
      
      public function lineTo(param1:Number, param2:Number) : void
      {
         this._commands.push(LINE_TO);
         this._vertices.push(param1,param2);
         _geom_changed = true;
      }
      
      public function curveTo(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this._commands.push(CURVE_TO);
         this._vertices.push(param1,param2,param3,param4);
         _geom_changed = true;
      }
      
      public function bezierTo(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this._commands.push(BEZIER_TO);
         this._vertices.push(param1,param2,param3,param4,param5,param6);
         _geom_changed = true;
      }
      
      public function closePath() : void
      {
         this._commands.push(CLOSE_PATH);
      }
   }
}
