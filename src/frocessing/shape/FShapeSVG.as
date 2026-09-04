package frocessing.shape
{
   import flash.display.CapsStyle;
   import flash.display.GradientType;
   import flash.display.InterpolationMethod;
   import flash.display.JointStyle;
   import flash.display.SpreadMethod;
   import frocessing.color.ColorKey;
   import frocessing.geom.FGradientMatrix;
   import frocessing.geom.FMatrix2D;
   import frocessing.geom.FViewBox;
   import frocessing.utils.FUtil;
   
   public class FShapeSVG extends FShapeContainer
   {
      
      private static const ELEMENT_NOT_SUPPORT:int = -1;
      
      private static const ELEMENT_STRUCTURE:int = 0;
      
      private static const ELEMENT_SHAPE:int = 10;
      
      private static const ELEMENT_GRADIENT:int = 20;
      
      private static const MOVE_TO:int = 1;
      
      private static const LINE_TO:int = 2;
      
      private static const CURVE_TO:int = 3;
      
      private static const BEZIER_TO:int = 10;
      
      private static const CLOSE_PATH:int = 100;
      
      private static var _REG_ID:Object = {};
      
      private static var _ns:Namespace;
      
      private static var _xlink:Namespace;
      
      private static var _etypes:Object;
       
      
      public function FShapeSVG(param1:XML, param2:FShapeContainer = null)
      {
         super(param2);
         if(param1 != null)
         {
            this._parse_svg_document(param1);
         }
      }
      
      private static function parseShapeElement(param1:XML, param2:FShapeContainer = null) : FShapeObject
      {
         var _loc3_:String = String(param1.localName());
         switch(_loc3_)
         {
            case "path":
               return parsePath(param1,param2);
            case "line":
               return parseLine(param1,param2);
            case "circle":
               return parseCircle(param1,param2);
            case "ellipse":
               return parseEllipse(param1,param2);
            case "rect":
               return parseRect(param1,param2);
            case "polygon":
               return parsePolygon(param1,param2);
            case "polyline":
               return parsePolyline(param1,param2);
            case "image":
               return parseImage(param1,param2);
            default:
               return null;
         }
      }
      
      private static function parseStructureElement(param1:XML, param2:FShapeContainer = null, param3:FShapeContainer = null) : FShapeContainer
      {
         var _loc4_:String = String(param1.localName());
         switch(_loc4_)
         {
            case "svg":
               return parseSVG(param1,param2,param3);
            case "g":
               return parseGroup(param1,param2,param3);
            case "symbol":
               return parseSymbol(param1,param2,param3);
            case "use":
               return parseUse(param1,param2,param3);
            case "defs":
               return parseDefs(param1,param2,param3);
            default:
               return null;
         }
      }
      
      private static function parseStructureChildren(param1:XML, param2:FShapeContainer) : void
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:FShapeObject = null;
         var _loc7_:FShapeContainer = null;
         for each(_loc3_ in param1.children())
         {
            _loc4_ = String(_loc3_.localName());
            if((_loc5_ = ELEMENT_TYPE[_loc4_]) == ELEMENT_SHAPE)
            {
               if((_loc6_ = parseShapeElement(_loc3_,param2)) != null)
               {
                  param2.addChild(_loc6_);
               }
            }
            else if(_loc5_ == ELEMENT_STRUCTURE)
            {
               if((_loc7_ = parseStructureElement(_loc3_,param2)) != null)
               {
                  param2.addChild(_loc7_);
               }
            }
            else if(_loc5_ != ELEMENT_GRADIENT)
            {
               _err("<" + _loc4_ + "> element is not supported.");
            }
         }
      }
      
      private static function __initStructureModule(param1:XML, param2:FShapeContainer = null, param3:FShapeContainer = null) : FShapeContainer
      {
         if(param3 == null)
         {
            param3 = new FShapeContainer(param2);
         }
         parseCoreAttrib(param1,param3);
         parseGraphicsAttrib(param1,param3);
         parseStylesAttrib(param1,param3);
         param3.matrix = parseTransform(param1.@transform);
         return param3;
      }
      
      public static function parseSVG(param1:XML, param2:FShapeContainer = null, param3:FShapeContainer = null) : FShapeContainer
      {
         param3 = __initStructureModule(param1,param2,param3);
         var _loc4_:Number = parseLength(String(param1.@x),0);
         var _loc5_:Number = parseLength(String(param1.@y),0);
         var _loc6_:Number = parseLength(String(param1.@width),0);
         var _loc7_:Number = parseLength(String(param1.@height),0);
         param3.viewbox = parseViewBox(param1);
         parseStructureChildren(param1,param3);
         return param3;
      }
      
      public static function parseGroup(param1:XML, param2:FShapeContainer = null, param3:FShapeContainer = null) : FShapeContainer
      {
         param3 = __initStructureModule(param1,param2,param3);
         parseStructureChildren(param1,param3);
         return param3;
      }
      
      public static function parseDefs(param1:XML, param2:FShapeContainer = null, param3:FShapeContainer = null) : FShapeContainer
      {
         param3 = __initStructureModule(param1,param2,param3);
         parseStructureChildren(param1,param3);
         param3.visible = false;
         return param3;
      }
      
      public static function parseSymbol(param1:XML, param2:FShapeContainer = null, param3:FShapeContainer = null) : FShapeContainer
      {
         param3 = __initStructureModule(param1,param2,param3);
         param3.viewbox = parseViewBox(param1);
         parseStructureChildren(param1,param3);
         param3.visible = false;
         return param3;
      }
      
      public static function parseUse(param1:XML, param2:FShapeContainer = null, param3:FShapeContainer = null) : FShapeContainer
      {
         var _loc10_:FShapeContainer = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         param3 = __initStructureModule(param1,param2,param3);
         var _loc4_:Number = parseLength(String(param1.@x),0);
         var _loc5_:Number = parseLength(String(param1.@y),0);
         var _loc6_:Number = parseLength(String(param1.@width),0);
         var _loc7_:Number = parseLength(String(param1.@height),0);
         var _loc8_:String = _xlink != null ? param1._xlink::@href : param1.@href;
         if(param3.matrix == null)
         {
            param3.matrix = new FMatrix2D();
         }
         var _loc9_:*;
         if((_loc9_ = getObjectById(_loc8_.substring(1))) is FShapeContainer)
         {
            _loc11_ = (_loc10_ = FShapeContainer(_loc9_)).getChildCount();
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               param3.addChild(_loc10_.getChildAt(_loc12_));
               _loc12_++;
            }
            if(_loc10_.viewbox != null)
            {
               if(_loc6_ != 0 && _loc7_ != 0)
               {
                  param3.matrix.prepend(_loc10_.viewbox.getTransformMatrix(_loc4_,_loc5_,_loc6_,_loc7_));
               }
               else if(_loc10_.viewbox.x != 0 && _loc10_.viewbox.y != 0)
               {
                  param3.matrix.prependTranslation(_loc4_,_loc5_);
                  param3.matrix.prependTranslation(-_loc10_.viewbox.x,-_loc10_.viewbox.y);
               }
            }
            else
            {
               param3.matrix.prependTranslation(_loc4_,_loc5_);
            }
         }
         else
         {
            if(!(_loc9_ is FShapeObject))
            {
               return null;
            }
            param3.matrix.prependTranslation(_loc4_,_loc5_);
            param3.addChild(_loc9_);
         }
         return param3;
      }
      
      private static function __initImageModule(param1:XML, param2:FShapeObject) : void
      {
         parseCoreAttrib(param1,param2);
         parseGraphicsAttrib(param1,param2);
         parseStylesAttrib(param1,param2);
         param2.matrix = parseTransform(param1.@transform);
      }
      
      public static function parseImage(param1:XML, param2:FShapeContainer = null) : FShapeObject
      {
         var _loc3_:Number = parseLength(String(param1.@x),0);
         var _loc4_:Number = parseLength(String(param1.@y),0);
         var _loc5_:Number = parseLength(String(param1.@width),NaN);
         var _loc6_:Number = parseLength(String(param1.@height),NaN);
         var _loc7_:String = _xlink != null ? param1._xlink::@href : param1.@href;
         var _loc8_:FShapeImageLoader = new FShapeImageLoader(_loc7_,null,null,_loc3_,_loc4_,_loc5_,_loc6_,param2);
         __initImageModule(param1,_loc8_);
         return _loc8_;
      }
      
      private static function __initShapeModule(param1:XML, param2:FShapeObject) : void
      {
         parseCoreAttrib(param1,param2);
         parseGraphicsAttrib(param1,param2);
         parseStylesAttrib(param1,param2);
         param2.matrix = parseTransform(param1.@transform);
      }
      
      public static function parseRect(param1:XML, param2:FShapeContainer = null) : FShapeRect
      {
         var _loc3_:Number = parseLength(String(param1.@x),0);
         var _loc4_:Number = parseLength(String(param1.@y),0);
         var _loc5_:Number = parseLength(String(param1.@width),1);
         var _loc6_:Number = parseLength(String(param1.@height),1);
         var _loc7_:Number = parseLength(String(param1.@rx),0);
         var _loc8_:Number = parseLength(String(param1.@ry),0);
         var _loc9_:FShapeRect = new FShapeRect(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param2);
         __initShapeModule(param1,_loc9_);
         return _loc9_;
      }
      
      public static function parseCircle(param1:XML, param2:FShapeContainer = null) : FShapeCircle
      {
         var _loc3_:Number = parseLength(String(param1.@cx),0);
         var _loc4_:Number = parseLength(String(param1.@cy),0);
         var _loc5_:Number = parseLength(String(param1.@r),1);
         var _loc6_:FShapeCircle = new FShapeCircle(_loc3_,_loc4_,_loc5_,param2);
         __initShapeModule(param1,_loc6_);
         return _loc6_;
      }
      
      public static function parseEllipse(param1:XML, param2:FShapeContainer = null) : FShapeEllipse
      {
         var _loc3_:Number = parseLength(String(param1.@cx),0);
         var _loc4_:Number = parseLength(String(param1.@cy),0);
         var _loc5_:Number = parseLength(String(param1.@rx),1);
         var _loc6_:Number = parseLength(String(param1.@ry),1);
         var _loc7_:FShapeEllipse = new FShapeEllipse(_loc3_,_loc4_,_loc5_,_loc6_,param2);
         __initShapeModule(param1,_loc7_);
         return _loc7_;
      }
      
      public static function parseLine(param1:XML, param2:FShapeContainer = null) : FShapeLine
      {
         var _loc3_:Number = parseLength(String(param1.@x1),0);
         var _loc4_:Number = parseLength(String(param1.@y1),0);
         var _loc5_:Number = parseLength(String(param1.@x2),0);
         var _loc6_:Number = parseLength(String(param1.@y2),0);
         var _loc7_:FShapeLine = new FShapeLine(_loc3_,_loc4_,_loc5_,_loc6_,param2);
         __initShapeModule(param1,_loc7_);
         return _loc7_;
      }
      
      public static function parsePolyline(param1:XML, param2:FShapeContainer = null) : FShape
      {
         var _loc3_:FShape = __make_path_shape(parsePoints(String(param1.@points)),false,param2);
         __initShapeModule(param1,_loc3_);
         return _loc3_;
      }
      
      public static function parsePolygon(param1:XML, param2:FShapeContainer = null) : FShape
      {
         var _loc3_:FShape = __make_path_shape(parsePoints(String(param1.@points)),true,param2);
         __initShapeModule(param1,_loc3_);
         return _loc3_;
      }
      
      private static function __make_path_shape(param1:Array, param2:Boolean, param3:FShapeContainer = null) : FShape
      {
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:int;
         if((_loc4_ = param1.length) > 4 && _loc4_ % 2 == 0)
         {
            _loc5_ = [];
            _loc6_ = _loc4_ / 2;
            _loc5_[0] = MOVE_TO;
            _loc7_ = 1;
            while(_loc7_ < _loc6_)
            {
               _loc5_[_loc7_] = LINE_TO;
               _loc7_++;
            }
            if(param2)
            {
               _loc5_[_loc6_] = CLOSE_PATH;
            }
            return new FShape(_loc5_,param1,param3);
         }
         return null;
      }
      
      public static function parsePath(param1:XML, param2:FShapeContainer = null) : FShape
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = false;
         var _loc19_:* = false;
         var _loc24_:String = null;
         var _loc3_:String = String(param1.@d);
         var _loc4_:Array;
         var _loc5_:int = (_loc4_ = _loc3_.match(/[MmZzLlHhVvCcSsQqTtAa]|-?[\d.]+/g)).length;
         var _loc6_:String = "";
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc20_:Array = [];
         var _loc21_:Array = [];
         var _loc22_:int = 0;
         while(_loc22_ < _loc5_)
         {
            _loc24_ = _loc4_[_loc22_];
            switch(_loc24_)
            {
               case "M":
                  _loc7_ = Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc8_ = Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc20_.push(MOVE_TO);
                  _loc21_.push(_loc7_,_loc8_);
                  _loc22_ += 2;
                  break;
               case "m":
                  _loc7_ += Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc8_ += Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc20_.push(MOVE_TO);
                  _loc21_.push(_loc7_,_loc8_);
                  _loc22_ += 2;
                  break;
               case "L":
                  _loc7_ = Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc8_ = Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc20_.push(LINE_TO);
                  _loc21_.push(_loc7_,_loc8_);
                  _loc22_ += 2;
                  break;
               case "l":
                  _loc7_ += Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc8_ += Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc20_.push(LINE_TO);
                  _loc21_.push(_loc7_,_loc8_);
                  _loc22_ += 2;
                  break;
               case "H":
                  _loc7_ = Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc20_.push(LINE_TO);
                  _loc21_.push(_loc7_,_loc8_);
                  _loc22_++;
                  break;
               case "h":
                  _loc7_ += Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc20_.push(LINE_TO);
                  _loc21_.push(_loc7_,_loc8_);
                  _loc22_++;
                  break;
               case "V":
                  _loc8_ = Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc20_.push(LINE_TO);
                  _loc21_.push(_loc7_,_loc8_);
                  _loc22_++;
                  break;
               case "v":
                  _loc8_ += Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc20_.push(LINE_TO);
                  _loc21_.push(_loc7_,_loc8_);
                  _loc22_++;
                  break;
               case "C":
                  _loc11_ = Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc12_ = Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc9_ = Number(String(_loc4_[int(_loc22_ + 3)]));
                  _loc10_ = Number(String(_loc4_[int(_loc22_ + 4)]));
                  _loc7_ = Number(String(_loc4_[int(_loc22_ + 5)]));
                  _loc8_ = Number(String(_loc4_[int(_loc22_ + 6)]));
                  _loc20_.push(BEZIER_TO);
                  _loc21_.push(_loc11_,_loc12_,_loc9_,_loc10_,_loc7_,_loc8_);
                  _loc22_ += 6;
                  break;
               case "c":
                  _loc11_ = _loc7_ + Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc12_ = _loc8_ + Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc9_ = _loc7_ + Number(String(_loc4_[int(_loc22_ + 3)]));
                  _loc10_ = _loc8_ + Number(String(_loc4_[int(_loc22_ + 4)]));
                  _loc7_ += Number(String(_loc4_[int(_loc22_ + 5)]));
                  _loc8_ += Number(String(_loc4_[int(_loc22_ + 6)]));
                  _loc20_.push(BEZIER_TO);
                  _loc21_.push(_loc11_,_loc12_,_loc9_,_loc10_,_loc7_,_loc8_);
                  _loc22_ += 6;
                  break;
               case "S":
                  _loc11_ = _loc7_ + _loc7_ - _loc9_;
                  _loc12_ = _loc8_ + _loc8_ - _loc10_;
                  _loc9_ = Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc10_ = Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc7_ = Number(String(_loc4_[int(_loc22_ + 3)]));
                  _loc8_ = Number(String(_loc4_[int(_loc22_ + 4)]));
                  _loc20_.push(BEZIER_TO);
                  _loc21_.push(_loc11_,_loc12_,_loc9_,_loc10_,_loc7_,_loc8_);
                  _loc22_ += 4;
                  break;
               case "s":
                  _loc11_ = _loc7_ + _loc7_ - _loc9_;
                  _loc12_ = _loc8_ + _loc8_ - _loc10_;
                  _loc9_ = _loc7_ + Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc10_ = _loc8_ + Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc7_ += Number(String(_loc4_[int(_loc22_ + 3)]));
                  _loc8_ += Number(String(_loc4_[int(_loc22_ + 4)]));
                  _loc20_.push(BEZIER_TO);
                  _loc21_.push(_loc11_,_loc12_,_loc9_,_loc10_,_loc7_,_loc8_);
                  _loc22_ += 4;
                  break;
               case "Q":
                  _loc9_ = Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc10_ = Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc7_ = Number(String(_loc4_[int(_loc22_ + 3)]));
                  _loc8_ = Number(String(_loc4_[int(_loc22_ + 4)]));
                  _loc20_.push(CURVE_TO);
                  _loc21_.push(_loc9_,_loc10_,_loc7_,_loc8_);
                  _loc22_ += 4;
                  break;
               case "q":
                  _loc9_ = _loc7_ + Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc10_ = _loc7_ + Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc7_ += Number(String(_loc4_[int(_loc22_ + 3)]));
                  _loc8_ += Number(String(_loc4_[int(_loc22_ + 4)]));
                  _loc20_.push(CURVE_TO);
                  _loc21_.push(_loc9_,_loc10_,_loc7_,_loc8_);
                  _loc22_ += 4;
                  break;
               case "T":
                  _loc9_ = 2 * _loc7_ - _loc9_;
                  _loc10_ = 2 * _loc8_ - _loc10_;
                  _loc7_ = Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc8_ = Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc20_.push(CURVE_TO);
                  _loc21_.push(_loc9_,_loc10_,_loc7_,_loc8_);
                  _loc22_ += 2;
                  break;
               case "t":
                  _loc9_ = 2 * _loc7_ - _loc9_;
                  _loc10_ = 2 * _loc8_ - _loc10_;
                  _loc7_ += Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc8_ += Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc20_.push(CURVE_TO);
                  _loc21_.push(_loc9_,_loc10_,_loc7_,_loc8_);
                  _loc22_ += 2;
                  break;
               case "A":
                  _loc13_ = _loc7_;
                  _loc14_ = _loc8_;
                  _loc15_ = Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc16_ = Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc17_ = Number(String(_loc4_[int(_loc22_ + 3)])) * Math.PI / 180;
                  _loc18_ = String(_loc4_[int(_loc22_ + 4)]) == "1";
                  _loc19_ = String(_loc4_[int(_loc22_ + 5)]) == "1";
                  _loc7_ = Number(String(_loc4_[int(_loc22_ + 6)]));
                  _loc8_ = Number(String(_loc4_[int(_loc22_ + 7)]));
                  __arc_curve(_loc13_,_loc14_,_loc7_,_loc8_,_loc15_,_loc16_,_loc18_,_loc19_,_loc17_,_loc20_,_loc21_);
                  _loc22_ += 7;
                  break;
               case "a":
                  _loc13_ = _loc7_;
                  _loc14_ = _loc8_;
                  _loc15_ = Number(String(_loc4_[int(_loc22_ + 1)]));
                  _loc16_ = Number(String(_loc4_[int(_loc22_ + 2)]));
                  _loc17_ = Number(String(_loc4_[int(_loc22_ + 3)])) * Math.PI / 180;
                  _loc18_ = String(_loc4_[int(_loc22_ + 4)]) == "1";
                  _loc19_ = String(_loc4_[int(_loc22_ + 5)]) == "1";
                  _loc7_ += Number(String(_loc4_[int(_loc22_ + 6)]));
                  _loc8_ += Number(String(_loc4_[int(_loc22_ + 7)]));
                  __arc_curve(_loc13_,_loc14_,_loc7_,_loc8_,_loc15_,_loc16_,_loc18_,_loc19_,_loc17_,_loc20_,_loc21_);
                  _loc22_ += 7;
                  break;
               case "Z":
                  _loc20_.push(CLOSE_PATH);
                  break;
               case "z":
                  _loc20_.push(CLOSE_PATH);
                  break;
            }
            _loc22_++;
         }
         var _loc23_:FShape = new FShape(_loc20_,_loc21_,param2);
         __initShapeModule(param1,_loc23_);
         return _loc23_;
      }
      
      private static function __arc_curve(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Number, param10:Array, param11:Array) : void
      {
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc12_:Number = param5 / param6;
         var _loc13_:Number = (param3 - param1) * 0.5;
         var _loc14_:Number = (param4 - param2) * 0.5;
         var _loc15_:Number = param1 + _loc13_;
         var _loc16_:Number = param2 + _loc14_;
         if(param9 != 0)
         {
            _loc17_ = Math.cos(-param9);
            _loc18_ = Math.sin(-param9);
            _loc21_ = _loc13_ * _loc17_ - _loc14_ * _loc18_;
            _loc22_ = _loc13_ * _loc18_ + _loc14_ * _loc17_;
            _loc13_ = _loc21_;
            _loc14_ = _loc22_;
         }
         _loc14_ *= _loc12_;
         var _loc19_:Number;
         if((_loc19_ = Math.sqrt(_loc13_ * _loc13_ + _loc14_ * _loc14_)) < param5)
         {
            _loc23_ = param7 != param8 ? Number(Math.acos(_loc19_ / param5)) : Number(-Math.acos(_loc19_ / param5));
            _loc24_ = Math.tan(_loc23_);
            _loc25_ = -_loc14_ * _loc24_;
            _loc26_ = _loc13_ * _loc24_;
            _loc27_ = Math.PI - 2 * _loc23_;
            _loc20_ = Math.atan2(-_loc14_ - _loc26_,-_loc13_ - _loc25_);
            _loc26_ /= _loc12_;
            _loc17_ = Math.cos(param9);
            _loc18_ = Math.sin(param9);
            __arc(_loc15_ + _loc25_ * _loc17_ - _loc26_ * _loc18_,_loc16_ + _loc25_ * _loc18_ + _loc26_ * _loc17_,param5,param6,_loc20_,!!param8 ? Number(_loc20_ + _loc27_) : Number(_loc20_ - (2 * Math.PI - _loc27_)),param9,param10,param11);
         }
         else
         {
            param6 = (param5 = _loc19_) / _loc12_;
            _loc20_ = Math.atan2(-_loc14_,-_loc13_);
            __arc(_loc15_,_loc16_,param5,param6,_loc20_,!!param8 ? Number(_loc20_ + Math.PI) : Number(_loc20_ - Math.PI),param9,param10,param11);
         }
      }
      
      private static function __arc(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Array, param9:Array) : void
      {
         var _loc15_:int = 0;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc10_:int = Math.ceil(Math.abs(4 * (param6 - param5) / Math.PI));
         var _loc11_:Number = (param6 - param5) / _loc10_;
         var _loc12_:Number = 1 / Math.cos(_loc11_ * 0.5);
         var _loc13_:Number = param5;
         var _loc14_:Number = param5 - _loc11_ * 0.5;
         if(param7 == 0)
         {
            _loc15_ = 1;
            while(_loc15_ <= _loc10_)
            {
               _loc13_ += _loc11_;
               _loc14_ += _loc11_;
               param8.push(CURVE_TO);
               param9.push(param1 + param3 * _loc12_ * Math.cos(_loc14_),param2 + param4 * _loc12_ * Math.sin(_loc14_),param1 + param3 * Math.cos(_loc13_),param2 + param4 * Math.sin(_loc13_));
               _loc15_++;
            }
         }
         else
         {
            _loc16_ = Math.cos(param7);
            _loc17_ = Math.sin(param7);
            _loc15_ = 1;
            while(_loc15_ <= _loc10_)
            {
               _loc13_ += _loc11_;
               _loc14_ += _loc11_;
               _loc18_ = param3 * Math.cos(_loc13_);
               _loc19_ = param4 * Math.sin(_loc13_);
               _loc20_ = param3 * _loc12_ * Math.cos(_loc14_);
               _loc21_ = param4 * _loc12_ * Math.sin(_loc14_);
               param8.push(CURVE_TO);
               param9.push(param1 + _loc20_ * _loc16_ - _loc21_ * _loc17_,param2 + _loc20_ * _loc17_ + _loc21_ * _loc16_,param1 + _loc18_ * _loc16_ - _loc19_ * _loc17_,param2 + _loc18_ * _loc17_ + _loc19_ * _loc16_);
               _loc15_++;
            }
         }
      }
      
      private static function __initGradientModule(param1:XML, param2:String, param3:FGradientMatrix) : FShapeGradient
      {
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc12_:XML = null;
         var _loc13_:FMatrix2D = null;
         var _loc15_:uint = 0;
         var _loc16_:Number = NaN;
         var _loc17_:String = null;
         var _loc18_:Array = null;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:Array = null;
         var _loc22_:String = null;
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:Array = [];
         var _loc9_:* = String(param1.@gradientUnits) != "userSpaceOnUse";
         var _loc10_:String;
         if((_loc10_ = String(param1.@spreadMethod)) == "reflect")
         {
            _loc7_ = SpreadMethod.REFLECT;
         }
         else if(_loc10_ == "repeat")
         {
            _loc7_ = SpreadMethod.REPEAT;
         }
         else
         {
            _loc7_ = SpreadMethod.PAD;
         }
         var _loc11_:String;
         if((_loc11_ = String(param1["color-interpolation"])) == "linearRGB")
         {
            _loc8_ = InterpolationMethod.LINEAR_RGB;
         }
         else
         {
            _loc8_ = InterpolationMethod.RGB;
         }
         for each(_loc12_ in param1.children())
         {
            if(String(_loc12_.localName()) == "stop")
            {
               _loc15_ = parseColor(String(_loc12_["stop-color"]));
               _loc16_ = parseNumber(String(_loc12_["stop-opacity"]),1);
               if((_loc17_ = String(_loc12_.@style)) != "")
               {
                  _loc19_ = (_loc18_ = FUtil.splitTokens(_loc17_,";")).length;
                  _loc20_ = 0;
                  while(_loc20_ < _loc19_)
                  {
                     _loc21_ = FUtil.splitTokens(_loc18_[_loc20_],":");
                     if((_loc22_ = FUtil.trim(_loc21_[0])) == "stop-color")
                     {
                        _loc15_ = parseColor(_loc21_[1]);
                     }
                     else if(_loc22_ == "stop-opacity")
                     {
                        _loc16_ = parseNumber(_loc21_[1],1);
                     }
                     _loc20_++;
                  }
               }
               _loc6_.push(uint(255 * __parse_grad_offset(_loc12_.@offset)));
               _loc4_.push(_loc15_);
               _loc5_.push(_loc16_);
            }
         }
         if((_loc13_ = parseTransform(String(param1.@gradientTransform))) != null)
         {
            param3.concat(_loc13_);
         }
         var _loc14_:FShapeGradient;
         (_loc14_ = new FShapeGradient(param2,_loc4_,_loc5_,_loc6_,param3,_loc7_,_loc8_)).isNormal = _loc9_;
         return _loc14_;
      }
      
      public static function parseLinearGradient(param1:XML) : FShapeGradient
      {
         var _loc2_:Number = parseLength(String(param1.@x1),0);
         var _loc3_:Number = parseLength(String(param1.@y1),0);
         var _loc4_:Number = parseLength(String(param1.@x2),1);
         var _loc5_:Number = parseLength(String(param1.@y2),0);
         var _loc6_:FGradientMatrix;
         (_loc6_ = new FGradientMatrix()).createLinear(_loc2_,_loc3_,_loc4_,_loc5_);
         var _loc7_:FShapeGradient = __initGradientModule(param1,GradientType.LINEAR,_loc6_);
         parseCoreAttrib(param1,_loc7_);
         return _loc7_;
      }
      
      public static function parseRadialGradient(param1:XML) : FShapeGradient
      {
         var _loc2_:Number = parseLength(String(param1.@cx),0.5);
         var _loc3_:Number = parseLength(String(param1.@cy),0.5);
         var _loc4_:Number = parseLength(String(param1.@r),0.5);
         var _loc5_:Number = parseLength(String(param1.@fx),_loc2_);
         var _loc6_:Number = parseLength(String(param1.@fy),_loc3_);
         _loc5_ -= _loc2_;
         _loc6_ -= _loc3_;
         var _loc7_:Number = Math.atan2(-_loc6_,_loc5_);
         var _loc8_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_) / _loc4_;
         var _loc9_:FGradientMatrix;
         (_loc9_ = new FGradientMatrix()).createRadial(_loc2_,_loc3_,_loc4_,_loc7_);
         var _loc10_:FShapeGradient;
         (_loc10_ = __initGradientModule(param1,GradientType.RADIAL,_loc9_)).focalPointRation = _loc8_;
         parseCoreAttrib(param1,_loc10_);
         return _loc10_;
      }
      
      private static function __parse_grad_offset(param1:String) : Number
      {
         var _loc2_:int = param1.indexOf("%");
         if(_loc2_ > -1)
         {
            return Number(param1.substring(0,_loc2_)) / 100;
         }
         return Number(param1);
      }
      
      private static function parseCoreAttrib(param1:XML, param2:*) : void
      {
         var doc:XML = param1;
         var target:* = param2;
         var id:String = String(doc.@id);
         try
         {
            target["name"] = id;
            if(id != "")
            {
               registID(id,target);
            }
         }
         catch(e:Error)
         {
            _err(e.getStackTrace());
         }
      }
      
      private static function parseGraphicsAttrib(param1:XML, param2:FShapeObject) : void
      {
         param2.visible = String(param1.@display) != "none";
      }
      
      private static function parseStylesAttrib(param1:XML, param2:FShapeObject) : void
      {
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         setFill(param1.@fill,param2);
         setStroke(param1.@stroke,param2);
         _loc3_ = String(param1.@opacity);
         if(_loc3_ != "")
         {
            param2.alpha = opacity(_loc3_);
         }
         _loc3_ = String(param1["fill-opacity"]);
         if(_loc3_ != "")
         {
            param2.fillAlpha = opacity(_loc3_);
         }
         _loc3_ = String(param1["stroke-opacity"]);
         if(_loc3_ != "")
         {
            param2.strokeAlpha = opacity(_loc3_);
         }
         _loc3_ = String(param1["stroke-width"]);
         if(_loc3_ != "")
         {
            param2.thickness = strokeWeight(_loc3_);
         }
         _loc3_ = String(param1["stroke-linejoin"]);
         if(_loc3_ != "")
         {
            param2.joints = strokeJoin(_loc3_);
         }
         _loc3_ = String(param1["stroke-linecap"]);
         if(_loc3_ != "")
         {
            param2.caps = strokeCap(_loc3_);
         }
         _loc3_ = String(param1["stroke-miterlimit"]);
         if(_loc3_ != "")
         {
            param2.miterLimit = strokeMiterLimit(_loc3_);
         }
         _loc3_ = String(param1.@style);
         if(_loc3_ != "")
         {
            _loc5_ = (_loc4_ = FUtil.splitTokens(_loc3_,";")).length;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc7_ = FUtil.splitTokens(_loc4_[_loc6_],":");
               _loc8_ = FUtil.trim(_loc7_[0]);
               switch(_loc8_)
               {
                  case "fill":
                     setFill(_loc7_[1],param2);
                     break;
                  case "stroke":
                     setStroke(_loc7_[1],param2);
                     break;
                  case "fill-opacity":
                     param2.fillAlpha = opacity(_loc7_[1]);
                     break;
                  case "stroke-opacity":
                     param2.strokeAlpha = opacity(_loc7_[1]);
                     break;
                  case "stroke-width":
                     param2.thickness = strokeWeight(_loc7_[1]);
                     break;
                  case "stroke-linecap":
                     param2.caps = strokeCap(_loc7_[1]);
                     break;
                  case "stroke-linejoin":
                     param2.joints = strokeJoin(_loc7_[1]);
                     break;
                  case "stroke-miterlimit":
                     param2.miterLimit = strokeMiterLimit(_loc7_[1]);
                     break;
                  case "opacity":
                     param2.alpha = opacity(_loc7_[1]);
                     break;
               }
               _loc6_++;
            }
         }
      }
      
      private static function setStroke(param1:String, param2:FShapeObject) : void
      {
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         if(param1 == "")
         {
            return;
         }
         if(param1 == "none")
         {
            param2.strokeEnabled = false;
         }
         else if((_loc3_ = parseUrl(param1)) != "")
         {
            if((_loc4_ = getObjectById(_loc3_)) is FShapeGradient)
            {
               param2.strokeEnabled = true;
               param2.strokeGradient = FShapeGradient(_loc4_);
            }
            else
            {
               _err("url " + _loc3_ + " refers to unexpected data");
            }
         }
         else
         {
            param2.strokeEnabled = true;
            param2.strokeColor = parseColor(param1);
            param2.strokeGradient = null;
         }
      }
      
      private static function setFill(param1:String, param2:FShapeObject) : void
      {
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         if(param1 == "")
         {
            return;
         }
         if(param1 == "none")
         {
            param2.fillEnabled = false;
         }
         else if((_loc3_ = parseUrl(param1)) != "")
         {
            if((_loc4_ = getObjectById(_loc3_)) is FShapeGradient)
            {
               param2.fillEnabled = true;
               param2.fillGradient = FShapeGradient(_loc4_);
            }
            else
            {
               _err("url " + _loc3_ + " refers to unexpected data");
            }
         }
         else
         {
            param2.fillEnabled = true;
            param2.fillColor = parseColor(param1);
            param2.fillGradient = null;
         }
      }
      
      private static function opacity(param1:String) : Number
      {
         return Number(param1);
      }
      
      private static function strokeWeight(param1:String) : Number
      {
         var _loc2_:Number = parseLength(param1,0);
         if(_loc2_ <= 0.5)
         {
            return 0;
         }
         return _loc2_;
      }
      
      private static function strokeCap(param1:String) : String
      {
         if(param1 == "butt")
         {
            return CapsStyle.NONE;
         }
         if(param1 == "round")
         {
            return CapsStyle.ROUND;
         }
         if(param1 == "square")
         {
            return CapsStyle.SQUARE;
         }
         return CapsStyle.NONE;
      }
      
      private static function strokeJoin(param1:String) : String
      {
         if(param1 == "miter")
         {
            return JointStyle.MITER;
         }
         if(param1 == "round")
         {
            return JointStyle.ROUND;
         }
         if(param1 == "bevel")
         {
            return JointStyle.BEVEL;
         }
         return JointStyle.MITER;
      }
      
      private static function strokeMiterLimit(param1:String) : Number
      {
         return Number(param1);
      }
      
      private static function parseViewBox(param1:XML) : FViewBox
      {
         var _loc2_:FViewBox = null;
         var _loc4_:Array = null;
         var _loc3_:String = String(param1.@viewBox);
         if(_loc3_ != "")
         {
            if((_loc4_ = FUtil.splitTokens(_loc3_)).length == 4)
            {
               _loc2_ = new FViewBox(_loc4_[0],_loc4_[1],_loc4_[2],_loc4_[3]);
               parsePreserveAspectRatio(String(param1.@preserveAspectRatio),_loc2_);
               return _loc2_;
            }
            return null;
         }
         return null;
      }
      
      private static function parsePreserveAspectRatio(param1:String, param2:FViewBox) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         param2.align = FViewBox.CENTER;
         param2.scaleMode = FViewBox.SHOW_ALL;
         if(param1 != "")
         {
            _loc3_ = FUtil.splitTokens(param1);
            if(_loc3_.length > 0)
            {
               if(_loc3_[0] == "defer")
               {
                  _loc3_.shift();
               }
               if(_loc3_.length > 1 && _loc3_[1] == "slice")
               {
                  param2.scaleMode = FViewBox.NO_BORDER;
               }
               _loc4_ = _loc3_[0];
               switch(_loc4_)
               {
                  case "none":
                     param2.scaleMode = FViewBox.EXACT_FIT;
                     break;
                  case "xMinYMin":
                     param2.align = FViewBox.TOP_LEFT;
                     break;
                  case "xMinYMid":
                     param2.align = FViewBox.LEFT;
                     break;
                  case "xMinYMax":
                     param2.align = FViewBox.BOTTOM_LEFT;
                     break;
                  case "xMidYMin":
                     param2.align = FViewBox.TOP;
                     break;
                  case "xMidYMid":
                     param2.align = FViewBox.CENTER;
                     break;
                  case "xMidYMax":
                     param2.align = FViewBox.BOTTOM;
                     break;
                  case "xMaxYMin":
                     param2.align = FViewBox.TOP_RIGHT;
                     break;
                  case "xMaxYMid":
                     param2.align = FViewBox.RIGHT;
                     break;
                  case "xMaxYMax":
                     param2.align = FViewBox.BOTTOM_RIGHT;
               }
            }
         }
      }
      
      public static function parseColor(param1:String) : uint
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         if(param1.charAt(0) == " ")
         {
            param1 = FUtil.trim(param1);
         }
         if(param1.charAt(0) == "#")
         {
            if(param1.length == 4)
            {
               _loc2_ = param1.charAt(1);
               _loc3_ = param1.charAt(2);
               _loc4_ = param1.charAt(3);
               return parseInt(_loc2_ + _loc2_ + _loc3_ + _loc3_ + _loc4_ + _loc4_,16) & 16777215;
            }
            return parseInt(param1.substring(1),16) & 16777215;
         }
         if(param1.indexOf("rgb") == 0)
         {
            _loc5_ = param1.indexOf("(") + 1;
            _loc6_ = param1.indexOf(")");
            _loc7_ = FUtil.splitTokens(param1.substring(_loc5_,_loc6_),", ");
            return uint(_loc7_[0]) << 16 | uint(_loc7_[1]) << 8 | uint(_loc7_[2]);
         }
         return ColorKey[param1];
      }
      
      public static function parsePoints(param1:String) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         if(param1 != "")
         {
            _loc2_ = FUtil.splitTokens(param1,", \t\n\r");
            _loc3_ = _loc2_.length;
            _loc4_ = [];
            _loc5_ = 0;
            while(_loc5_ < _loc3_)
            {
               _loc4_[_loc5_] = Number(_loc2_[_loc5_]);
               _loc5_++;
            }
            return _loc4_;
         }
         return null;
      }
      
      public static function parseTransform(param1:String) : FMatrix2D
      {
         var _loc4_:FMatrix2D = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:Array = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         if(param1 == "")
         {
            return null;
         }
         var _loc2_:Array = param1.match(/\w+\(.*?\)/g);
         var _loc3_:int = _loc2_.length;
         if(_loc3_ > 0)
         {
            _loc4_ = new FMatrix2D();
            _loc5_ = 0;
            while(_loc5_ < _loc3_)
            {
               _loc7_ = (_loc6_ = _loc2_[_loc5_]).indexOf("(");
               _loc8_ = _loc6_.substring(0,_loc7_);
               _loc9_ = FUtil.splitTokens(_loc6_.substring(_loc7_ + 1,_loc6_.length - 1),", ");
               if(_loc8_ == "matrix")
               {
                  _loc4_.prependMatrix(Number(_loc9_[0]),Number(_loc9_[1]),Number(_loc9_[2]),Number(_loc9_[3]),Number(_loc9_[4]),Number(_loc9_[5]));
               }
               else if(_loc8_ == "translate")
               {
                  _loc10_ = Number(_loc9_[0]);
                  _loc11_ = _loc9_.length == 2 ? Number(Number(_loc9_[1])) : Number(_loc10_);
                  _loc4_.prependTranslation(_loc10_,_loc11_);
               }
               else if(_loc8_ == "scale")
               {
                  _loc12_ = Number(_loc9_[0]);
                  _loc13_ = _loc9_.length == 2 ? Number(Number(_loc9_[1])) : Number(_loc12_);
                  _loc4_.prependScale(_loc12_,_loc13_);
               }
               else if(_loc8_ == "rotate")
               {
                  if(_loc9_.length == 1)
                  {
                     _loc4_.prependRotation(_deg_to_radian(_loc9_[0]));
                  }
                  else if(_loc9_.length == 3)
                  {
                     _loc14_ = Number(_loc9_[1]);
                     _loc15_ = Number(_loc9_[2]);
                     _loc4_.prependMatrix(0,1,1,0,_loc14_,_loc15_);
                     _loc4_.prependRotation(_deg_to_radian(_loc9_[0]));
                     _loc4_.prependTranslation(-_loc14_,-_loc15_);
                  }
               }
               else if(_loc8_ == "skewX")
               {
                  _loc4_.prependMatrix(0,1,Math.tan(_deg_to_radian(_loc9_[0])),0,0,0);
               }
               else if(_loc8_ == "skewY")
               {
                  _loc4_.prependMatrix(0,Math.tan(_deg_to_radian(_loc9_[0])),1,0,0,0);
               }
               _loc5_++;
            }
            return _loc4_;
         }
         return null;
      }
      
      public static function parseLength(param1:String, param2:Number = 0) : Number
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         if(param1 != "")
         {
            _loc3_ = param1.length - 2;
            _loc4_ = param1.substr(_loc3_);
            switch(_loc4_)
            {
               case "pt":
                  return Number(param1.substring(0,_loc3_)) * 1.25;
               case "pc":
                  return Number(param1.substring(0,_loc3_)) * 15;
               case "mm":
                  return Number(param1.substring(0,_loc3_)) * 3.543307;
               case "cm":
                  return Number(param1.substring(0,_loc3_)) * 35.43307;
               case "in":
                  return Number(param1.substring(0,_loc3_)) * 90;
               case "px":
                  return Number(param1.substring(0,_loc3_));
               default:
                  return Number(param1);
            }
         }
         else
         {
            return param2;
         }
      }
      
      private static function parseNumber(param1:String, param2:Number = 0) : Number
      {
         if(param1 != "")
         {
            return Number(param1);
         }
         return param2;
      }
      
      private static function parseUrl(param1:String) : String
      {
         var _loc2_:int = param1.indexOf("url(#");
         if(_loc2_ >= 0)
         {
            return param1.substring(_loc2_ + 5,param1.indexOf(")"));
         }
         return "";
      }
      
      private static function _deg_to_radian(param1:String) : Number
      {
         return Number(param1) * Math.PI / 180;
      }
      
      private static function registID(param1:String, param2:*) : void
      {
         _REG_ID[param1] = param2;
      }
      
      private static function getObjectById(param1:String) : *
      {
         return _REG_ID[param1];
      }
      
      public static function findSVGRoot(param1:XML) : XML
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(String(param1.localName()) == "svg")
         {
            return param1;
         }
         for each(_loc2_ in param1.*)
         {
            _loc3_ = findSVGRoot(_loc2_);
            if(_loc3_ != null)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private static function get ELEMENT_TYPE() : Object
      {
         if(_etypes != null)
         {
            return _etypes;
         }
         _etypes = {};
         _etypes["svg"] = ELEMENT_STRUCTURE;
         _etypes["g"] = ELEMENT_STRUCTURE;
         _etypes["defs"] = ELEMENT_STRUCTURE;
         _etypes["desc"] = ELEMENT_NOT_SUPPORT;
         _etypes["title"] = ELEMENT_NOT_SUPPORT;
         _etypes["metadata"] = ELEMENT_NOT_SUPPORT;
         _etypes["symbol"] = ELEMENT_STRUCTURE;
         _etypes["use"] = ELEMENT_STRUCTURE;
         _etypes["image"] = ELEMENT_SHAPE;
         _etypes["switch"] = ELEMENT_NOT_SUPPORT;
         _etypes["style"] = ELEMENT_NOT_SUPPORT;
         _etypes["path"] = ELEMENT_SHAPE;
         _etypes["line"] = ELEMENT_SHAPE;
         _etypes["circle"] = ELEMENT_SHAPE;
         _etypes["ellipse"] = ELEMENT_SHAPE;
         _etypes["rect"] = ELEMENT_SHAPE;
         _etypes["polygon"] = ELEMENT_SHAPE;
         _etypes["polyline"] = ELEMENT_SHAPE;
         _etypes["text"] = ELEMENT_NOT_SUPPORT;
         _etypes["tspan"] = ELEMENT_NOT_SUPPORT;
         _etypes["tref"] = ELEMENT_NOT_SUPPORT;
         _etypes["textPath"] = ELEMENT_NOT_SUPPORT;
         _etypes["altGlyph"] = ELEMENT_NOT_SUPPORT;
         _etypes["altGlyphDef"] = ELEMENT_NOT_SUPPORT;
         _etypes["altGlyphItem"] = ELEMENT_NOT_SUPPORT;
         _etypes["glyphRef"] = ELEMENT_NOT_SUPPORT;
         _etypes["marker"] = ELEMENT_NOT_SUPPORT;
         _etypes["color-profile"] = ELEMENT_NOT_SUPPORT;
         _etypes["radialGradient"] = ELEMENT_GRADIENT;
         _etypes["linearGradient"] = ELEMENT_GRADIENT;
         _etypes["stop"] = ELEMENT_GRADIENT;
         _etypes["pattern"] = ELEMENT_NOT_SUPPORT;
         _etypes["clipPath"] = ELEMENT_NOT_SUPPORT;
         _etypes["mask"] = ELEMENT_NOT_SUPPORT;
         _etypes["filter"] = ELEMENT_NOT_SUPPORT;
         _etypes["feBlend"] = ELEMENT_NOT_SUPPORT;
         _etypes["feColorMatrix"] = ELEMENT_NOT_SUPPORT;
         _etypes["feComponentTransfer"] = ELEMENT_NOT_SUPPORT;
         _etypes["feComposite"] = ELEMENT_NOT_SUPPORT;
         _etypes["feConvolveMatrix"] = ELEMENT_NOT_SUPPORT;
         _etypes["feDiffuseLighting"] = ELEMENT_NOT_SUPPORT;
         _etypes["feDisplacementMap"] = ELEMENT_NOT_SUPPORT;
         _etypes["feFlood"] = ELEMENT_NOT_SUPPORT;
         _etypes["feGaussianBlur"] = ELEMENT_NOT_SUPPORT;
         _etypes["feImage"] = ELEMENT_NOT_SUPPORT;
         _etypes["feMerge"] = ELEMENT_NOT_SUPPORT;
         _etypes["feMergeNode"] = ELEMENT_NOT_SUPPORT;
         _etypes["feMorphology"] = ELEMENT_NOT_SUPPORT;
         _etypes["feOffset"] = ELEMENT_NOT_SUPPORT;
         _etypes["feSpecularLighting"] = ELEMENT_NOT_SUPPORT;
         _etypes["feTile"] = ELEMENT_NOT_SUPPORT;
         _etypes["feTurbulence"] = ELEMENT_NOT_SUPPORT;
         _etypes["feDistantLight"] = ELEMENT_NOT_SUPPORT;
         _etypes["fePointLight"] = ELEMENT_NOT_SUPPORT;
         _etypes["feSpotLight"] = ELEMENT_NOT_SUPPORT;
         _etypes["feFuncR"] = ELEMENT_NOT_SUPPORT;
         _etypes["feFuncG"] = ELEMENT_NOT_SUPPORT;
         _etypes["feFuncB"] = ELEMENT_NOT_SUPPORT;
         _etypes["feFuncA"] = ELEMENT_NOT_SUPPORT;
         _etypes["cursor"] = ELEMENT_NOT_SUPPORT;
         _etypes["view"] = ELEMENT_NOT_SUPPORT;
         _etypes["a"] = ELEMENT_NOT_SUPPORT;
         _etypes["script"] = ELEMENT_NOT_SUPPORT;
         _etypes["animate"] = ELEMENT_NOT_SUPPORT;
         _etypes["set"] = ELEMENT_NOT_SUPPORT;
         _etypes["animateMotion"] = ELEMENT_NOT_SUPPORT;
         _etypes["animateTransform"] = ELEMENT_NOT_SUPPORT;
         _etypes["animateColor"] = ELEMENT_NOT_SUPPORT;
         _etypes["mpath"] = ELEMENT_NOT_SUPPORT;
         _etypes["font"] = ELEMENT_NOT_SUPPORT;
         _etypes["font-face"] = ELEMENT_NOT_SUPPORT;
         _etypes["glyph"] = ELEMENT_NOT_SUPPORT;
         _etypes["missing-glyph"] = ELEMENT_NOT_SUPPORT;
         _etypes["hkern"] = ELEMENT_NOT_SUPPORT;
         _etypes["font-face-src"] = ELEMENT_NOT_SUPPORT;
         _etypes["font-face-name"] = ELEMENT_NOT_SUPPORT;
         return _etypes;
      }
      
      private static function _err(param1:String) : void
      {
      }
      
      protected function _parse_svg_document(param1:XML) : void
      {
         var _loc4_:FShapeObject = null;
         var _loc5_:XML = null;
         _sysData = {};
         _REG_ID = _sysData;
         _ns = param1.namespace();
         _xlink = param1.namespace("xlink");
         var _loc2_:String = String(param1.localName());
         var _loc3_:int = ELEMENT_TYPE[_loc2_];
         if(_loc3_ == ELEMENT_SHAPE)
         {
            if((_loc4_ = parseShapeElement(param1,this)) != null)
            {
               addChild(_loc4_);
            }
         }
         else if(_loc3_ == ELEMENT_STRUCTURE)
         {
            for each(_loc5_ in param1.._ns::linearGradient)
            {
               parseLinearGradient(_loc5_);
            }
            for each(_loc5_ in param1.._ns::radialGradient)
            {
               parseRadialGradient(_loc5_);
            }
            parseStructureElement(param1,null,this);
         }
         else
         {
            _err("<" + _loc2_ + "> element can not be root object.");
         }
      }
   }
}
