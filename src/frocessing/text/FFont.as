package frocessing.text
{
   import flash.utils.IDataInput;
   
   public class FFont implements IFont
   {
       
      
      public var charCount:int;
      
      public var commands:Array;
      
      public var paths:Array;
      
      private var _size:int;
      
      public var height:int;
      
      public var value:Array;
      
      public var setWidth:Array;
      
      public var cmdLen:Array;
      
      public var pathLen:Array;
      
      private var _ascent:Number;
      
      private var _descent:Number;
      
      private var ascii:Array;
      
      private var char_i:uint;
      
      public function FFont(param1:IDataInput)
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.char_i = String("i").charCodeAt(0);
         super();
         this.charCount = param1.readInt();
         var _loc3_:int = param1.readInt();
         this._size = param1.readInt();
         this.height = param1.readInt();
         this._ascent = param1.readFloat();
         this._descent = param1.readFloat();
         this.value = new Array(this.charCount);
         this.setWidth = new Array(this.charCount);
         this.cmdLen = new Array(this.charCount);
         this.pathLen = new Array(this.charCount);
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
            this.value[_loc2_] = param1.readInt();
            this.setWidth[_loc2_] = param1.readInt();
            this.cmdLen[_loc2_] = param1.readInt();
            this.pathLen[_loc2_] = param1.readInt();
            if(this.value[_loc2_] < 128)
            {
               this.ascii[this.value[_loc2_]] = _loc2_;
            }
            _loc2_++;
         }
         this.commands = [];
         this.paths = [];
         _loc2_ = 0;
         while(_loc2_ < this.charCount)
         {
            _loc4_ = this.cmdLen[_loc2_];
            _loc5_ = this.pathLen[_loc2_];
            _loc6_ = [];
            _loc7_ = [];
            _loc8_ = 0;
            while(_loc8_ < _loc4_)
            {
               _loc6_[_loc8_] = param1.readByte();
               _loc8_++;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc5_)
            {
               _loc7_[_loc9_] = param1.readFloat();
               _loc9_++;
            }
            this.commands[_loc2_] = _loc6_;
            this.paths[_loc2_] = _loc7_;
            _loc2_++;
         }
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
         return this._ascent;
      }
      
      public function get descent() : Number
      {
         return this._descent;
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
         return this.setWidth[_loc2_] / this._size;
      }
      
      public function kern(param1:uint, param2:uint) : Number
      {
         return 0;
      }
   }
}
