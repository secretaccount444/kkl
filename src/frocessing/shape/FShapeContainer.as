package frocessing.shape
{
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import frocessing.core.F5Graphics;
   import frocessing.f5internal;
   import frocessing.geom.FViewBox;
   
   use namespace f5internal;
   
   public class FShapeContainer extends FShapeObject implements IFShape
   {
       
      
      protected var _children:Array;
      
      protected var _childCount:int;
      
      public var viewbox:FViewBox;
      
      public function FShapeContainer(param1:FShapeContainer = null)
      {
         super(param1);
         this._children = [];
         this._childCount = 0;
      }
      
      override public function enableStyle() : void
      {
         styleEnabled = true;
         var _loc1_:int = 0;
         while(_loc1_ < this._childCount)
         {
            FShapeObject(this._children[_loc1_]).enableStyle();
            _loc1_++;
         }
      }
      
      override public function disableStyle() : void
      {
         styleEnabled = false;
         var _loc1_:int = 0;
         while(_loc1_ < this._childCount)
         {
            FShapeObject(this._children[_loc1_]).disableStyle();
            _loc1_++;
         }
      }
      
      public function getChildCount() : uint
      {
         return this._childCount;
      }
      
      public function getChildAt(param1:int) : FShapeObject
      {
         if(param1 < this._childCount)
         {
            return FShapeObject(this._children[param1]);
         }
         return null;
      }
      
      public function getChild(param1:String) : FShapeObject
      {
         var _loc3_:FShapeObject = null;
         var _loc4_:FShapeObject = null;
         if(_name == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this._childCount)
         {
            _loc3_ = FShapeObject(this._children[_loc2_]);
            if(_loc3_.name == param1)
            {
               return _loc3_;
            }
            if(_loc3_ is FShapeContainer)
            {
               if((_loc4_ = FShapeContainer(_loc3_).getChild(param1)) != null)
               {
                  return _loc4_;
               }
            }
            _loc2_++;
         }
         return null;
      }
      
      public function findChild(param1:String) : FShapeObject
      {
         if(_parent == null)
         {
            return this.getChild(param1);
         }
         return _parent.findChild(param1);
      }
      
      public function addChild(param1:FShapeObject) : FShapeObject
      {
         if(param1 !== this)
         {
            this._children[this._childCount] = param1;
            ++this._childCount;
            _geom_changed = true;
            return param1;
         }
         return null;
      }
      
      public function removeChild(param1:FShapeObject) : FShapeObject
      {
         var _loc2_:int = this._children.indexOf(param1);
         if(_loc2_ > -1)
         {
            this._children.splice(_loc2_,1);
            --this._childCount;
            _geom_changed = true;
            return param1;
         }
         return null;
      }
      
      override protected function _draw_to_f5(param1:F5Graphics) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._childCount)
         {
            FShapeObject(this._children[_loc2_]).draw(param1);
            _loc2_++;
         }
      }
      
      override protected function _drawImp(param1:F5Graphics) : void
      {
         this._draw_to_f5(param1);
      }
      
      override public function drawGraphics(param1:Graphics) : void
      {
         _draw_to_graphics(param1);
      }
      
      override public function toSprite() : Sprite
      {
         var _loc3_:Sprite = null;
         if(visible == false)
         {
            return null;
         }
         var _loc1_:Sprite = new Sprite();
         if(matrix != null)
         {
            _loc1_.transform.matrix = matrix;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this._childCount)
         {
            _loc3_ = FShapeObject(this._children[_loc2_]).toSprite();
            if(_loc3_ != null)
            {
               _loc1_.addChild(_loc3_);
            }
            _loc2_++;
         }
         _loc1_.alpha = alpha;
         return _loc1_;
      }
      
      override function _check_sprite_geom(param1:Sprite = null, param2:DisplayObject = null) : void
      {
         if(visible == false)
         {
            return;
         }
         var _loc3_:Sprite = new Sprite();
         if(matrix != null)
         {
            _loc3_.transform.matrix = matrix;
         }
         if(param2 == null)
         {
            param2 = _loc3_;
         }
         if(param1 != null)
         {
            param1.addChild(_loc3_);
         }
         var _loc4_:int = 0;
         while(_loc4_ < this._childCount)
         {
            FShapeObject(this._children[_loc4_])._check_sprite_geom(_loc3_,param2);
            _loc4_++;
         }
         _loc3_ = null;
      }
      
      override protected function _check_geom() : void
      {
         if(_geom_changed)
         {
            __minX = __minY = Number.MAX_VALUE;
            __maxX = __maxY = Number.MIN_VALUE;
            this._check_sprite_geom(null,null);
            _left = __minX;
            _top = __minY;
            _width = __maxX - __minX;
            _height = __maxY - __minY;
            _geom_changed = false;
         }
      }
   }
}
