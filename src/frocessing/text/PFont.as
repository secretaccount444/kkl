package frocessing.text
{
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import frocessing.geom.FMatrix2D;
   
   public class PFont implements IFont
   {
       
      
      private var data_input:IDataInput;
      
      public var charCount:int;
      
      private var images:Array;
      
      private var imgdat:ByteArray;
      
      private var imginx:Array;
      
      public var name:String;
      
      public var psname:String;
      
      public var twidth:int;
      
      public var theight:int;
      
      public var fwidth:Number;
      
      public var fheight:Number;
      
      private var _size:int;
      
      public var mbox2:int;
      
      public var value:Array;
      
      public var height:Array;
      
      public var width:Array;
      
      public var setWidth:Array;
      
      public var topExtent:Array;
      
      public var leftExtent:Array;
      
      private var _ascent:int;
      
      private var _descent:int;
      
      private var ascii:Array;
      
      private var char_i:uint;
      
      private var temprect:Rectangle;
      
      private var temppixels:ByteArray;
      
      public function PFont(param1:IDataInput)
      {
         this.char_i = String("i").charCodeAt(0);
         this.temprect = new Rectangle(0,0,0,0);
         this.temppixels = new ByteArray();
         super();
         if(param1 != null)
         {
            this.__init(param1);
         }
         else
         {
            this.__init_empty();
         }
      }
      
      protected function __init(param1:IDataInput) : void
      {
         var _loc2_:int = 0;
         this.data_input = param1;
         this.charCount = this.data_input.readInt();
         var _loc3_:int = this.data_input.readInt();
         this._size = this.data_input.readInt();
         this.mbox2 = this.data_input.readInt();
         this.fwidth = this._size;
         this.fheight = this._size;
         this.mbox2 = int(Math.pow(2,Math.ceil(Math.log(this.mbox2) / Math.log(2))));
         this.twidth = this.theight = this.mbox2;
         this._ascent = this.data_input.readInt();
         this._descent = this.data_input.readInt();
         this.value = new Array(this.charCount);
         this.height = new Array(this.charCount);
         this.width = new Array(this.charCount);
         this.setWidth = new Array(this.charCount);
         this.topExtent = new Array(this.charCount);
         this.leftExtent = new Array(this.charCount);
         this.ascii = new Array(128);
         _loc2_ = 0;
         while(_loc2_ < 128)
         {
            this.ascii[_loc2_] = -1;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.charCount)
         {
            this.value[_loc2_] = this.data_input.readInt();
            this.height[_loc2_] = this.data_input.readInt();
            this.width[_loc2_] = this.data_input.readInt();
            this.setWidth[_loc2_] = this.data_input.readInt();
            this.topExtent[_loc2_] = this.data_input.readInt();
            this.leftExtent[_loc2_] = this.data_input.readInt();
            this.data_input.readInt();
            if(this.value[_loc2_] < 128)
            {
               this.ascii[this.value[_loc2_]] = _loc2_;
            }
            if(this.value[_loc2_] == "d")
            {
               if(this._ascent == 0)
               {
                  this._ascent = this.topExtent[_loc2_];
               }
            }
            if(this.value[_loc2_] == "p")
            {
               if(this._descent == 0)
               {
                  this._descent = -this.topExtent[_loc2_] + this.height[_loc2_];
               }
            }
            _loc2_++;
         }
         if(this._ascent == 0 && this._descent == 0)
         {
            throw new Error("Please use \"Create Font\" to " + "re-create this font.");
         }
         this.images = [];
         this.imgdat = new ByteArray();
         this.imginx = new Array(this.charCount);
         var _loc4_:uint = 0;
         _loc2_ = 0;
         while(_loc2_ < this.charCount)
         {
            this.imginx[_loc2_] = _loc4_;
            _loc4_ += this.width[_loc2_] * this.height[_loc2_];
            _loc2_++;
         }
         this.data_input.readBytes(this.imgdat,0,_loc4_);
         if(_loc3_ >= 10)
         {
            this.name = this.data_input.readUTF();
            this.psname = this.data_input.readUTF();
         }
      }
      
      private function __init_empty() : void
      {
         this.charCount = 0;
         this._size = -1;
         this._ascent = 1;
         this._descent = 1;
         this.fwidth = 1;
         this.fheight = 1;
         this.images = [];
      }
      
      public function get size() : int
      {
         return this._size;
      }
      
      public function index(param1:uint) : int
      {
         if(this.charCount == 0)
         {
            return -1;
         }
         if(param1 < 128)
         {
            return this.ascii[param1];
         }
         return this.indexHunt(param1,0,this.charCount - 1);
      }
      
      private function indexHunt(param1:uint, param2:int, param3:int) : int
      {
         var _loc4_:* = param2 + param3 >> 1;
         if(param1 == this.value[_loc4_])
         {
            return _loc4_;
         }
         if(param2 >= param3)
         {
            return -1;
         }
         if(param1 < this.value[_loc4_])
         {
            return this.indexHunt(param1,param2,_loc4_ - 1);
         }
         return this.indexHunt(param1,_loc4_ + 1,param3);
      }
      
      public function get ascent() : Number
      {
         return this._ascent / this.fheight;
      }
      
      public function get descent() : Number
      {
         return this._descent / this.fheight;
      }
      
      public function charWidth(param1:uint) : Number
      {
         if(param1 == 32)
         {
            return this.charWidth(this.char_i);
         }
         var _loc2_:int = this.index(param1);
         if(_loc2_ == -1)
         {
            return 0;
         }
         return this.setWidth[_loc2_] / this.fwidth;
      }
      
      public function kern(param1:uint, param2:uint) : Number
      {
         return 0;
      }
      
      public function getFontImage(param1:uint) : BitmapData
      {
         var _loc2_:BitmapData = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         if(param1 < this.charCount)
         {
            _loc2_ = this.images[param1];
            if(_loc2_ == null)
            {
               _loc3_ = this.width[param1];
               _loc4_ = this.height[param1];
               this.temprect.width = _loc3_;
               this.temprect.height = _loc4_;
               _loc2_ = new BitmapData(_loc3_,_loc4_,true,0);
               _loc5_ = _loc3_ * _loc4_;
               this.temppixels.length = _loc5_ * 4;
               this.temppixels.position = 0;
               this.imgdat.position = uint(this.imginx[param1]);
               _loc6_ = 0;
               while(_loc6_ < _loc5_)
               {
                  this.temppixels.writeUnsignedInt(this.imgdat.readByte() << 24 | 16777215);
                  _loc6_++;
               }
               this.temppixels.position = 0;
               _loc2_.setPixels(this.temprect,this.temppixels);
               this.images[param1] = _loc2_;
               return _loc2_;
            }
            return _loc2_;
         }
         return null;
      }
      
      public function getChar(param1:uint, param2:Number) : PChar
      {
         var _loc3_:int = this.index(param1);
         if(_loc3_ == -1)
         {
            return null;
         }
         var _loc4_:Number = param2 / this.fwidth;
         var _loc5_:Number = param2 / this.fheight;
         return new PChar(this.getFontImage(_loc3_),this.leftExtent[_loc3_] * _loc4_,-this.topExtent[_loc3_] * _loc5_,this.width[_loc3_] * _loc4_,this.height[_loc3_] * _loc5_);
      }
      
      public function getWordImage(param1:String, param2:Number, param3:Number = 0) : BitmapData
      {
         var _loc4_:FMatrix2D = null;
         var _loc8_:PChar = null;
         var _loc12_:int = 0;
         _loc4_ = new FMatrix2D(param2 / this.fwidth,0,0,param2 / this.fheight);
         var _loc5_:Array = [];
         var _loc6_:Array = [];
         var _loc7_:Number = 0;
         var _loc9_:int = 0;
         while(_loc9_ < param1.length)
         {
            _loc12_ = param1.charCodeAt(_loc9_);
            if((_loc8_ = this.getChar(_loc12_,param2)) != null)
            {
               _loc5_.push(_loc8_);
               _loc6_.push(_loc7_);
               _loc7_ += this.charWidth(_loc12_) * param2 + param3;
            }
            _loc9_++;
         }
         var _loc10_:BitmapData = new BitmapData(_loc7_,(this.ascent + this.descent) * param2,true,0);
         var _loc11_:int = 0;
         while(_loc11_ < _loc5_.length)
         {
            _loc8_ = PChar(_loc5_[_loc11_]);
            _loc4_.tx = _loc6_[_loc11_] + _loc8_.offsetX;
            _loc4_.ty = _loc8_.offsetY + this.ascent * param2;
            _loc10_.draw(_loc8_.data,_loc4_,null,null,null,false);
            _loc11_++;
         }
         return _loc10_;
      }
      
      public function dispose() : void
      {
         var _loc1_:BitmapData = null;
         for each(_loc1_ in this.images)
         {
            _loc1_.dispose();
         }
         this.images = [];
      }
   }
}
