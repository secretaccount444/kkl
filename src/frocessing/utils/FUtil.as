package frocessing.utils
{
   public class FUtil
   {
       
      
      public function FUtil()
      {
         super();
      }
      
      public static function splitTokens(param1:String, param2:String = " ") : Array
      {
         var _loc3_:RegExp = new RegExp("[" + param2 + "]+");
         return trim(param1).split(_loc3_);
      }
      
      public static function trim(param1:String) : String
      {
         return param1.replace(/^ +/,"").replace(/ +$/,"");
      }
      
      public static function nf(param1:Number, param2:uint, param3:uint = 0) : String
      {
         var _loc4_:String = "";
         if(param1 < 0)
         {
            param1 *= -1;
            _loc4_ = "-";
         }
         var _loc5_:String = param1.toFixed(param3);
         var _loc6_:int = param3 > 0 ? int(_loc5_.length - param3 - 1) : int(_loc5_.length);
         if(param2 < _loc6_)
         {
            return _loc4_ + _loc5_.substring(_loc6_ - param2);
         }
         if(param2 > _loc6_)
         {
            return _loc4_ + __zero(param2 - _loc6_) + _loc5_;
         }
         return _loc4_ + _loc5_;
      }
      
      public static function nfs(param1:Number, param2:uint, param3:uint = 0) : String
      {
         if(param1 >= 0)
         {
            return " " + nf(param1,param2,param3);
         }
         return nf(param1,param2,param3);
      }
      
      public static function nfp(param1:Number, param2:uint, param3:uint = 0) : String
      {
         if(param1 >= 0)
         {
            return "+" + nf(param1,param2,param3);
         }
         return nf(param1,param2,param3);
      }
      
      public static function nfc(param1:Number, param2:uint = 0) : String
      {
         var _loc3_:String = "";
         if(param1 < 0)
         {
            param1 *= -1;
            _loc3_ = "-";
         }
         var _loc5_:int;
         var _loc4_:String;
         if((_loc5_ = (_loc4_ = param1.toFixed(param2)).indexOf(".")) < 0)
         {
            _loc5_ = _loc4_.length;
         }
         var _loc6_:int = _loc5_ - 3;
         while(_loc6_ > 0)
         {
            _loc4_ = insert(_loc4_,_loc6_,",");
            _loc6_ -= 3;
         }
         return _loc3_ + _loc4_;
      }
      
      public static function binary(param1:int, param2:int = 0) : String
      {
         return uint2str(param1,param2,2);
      }
      
      public static function unbinary(param1:String) : uint
      {
         return parseInt(param1,2);
      }
      
      public static function hex(param1:int, param2:int = 0) : String
      {
         return uint2str(param1,param2,16);
      }
      
      public static function unhex(param1:String) : uint
      {
         return parseInt(param1,16);
      }
      
      private static function uint2str(param1:uint, param2:int = 0, param3:int = 10) : String
      {
         var _loc5_:int = 0;
         var _loc4_:String = param1.toString(param3);
         if(param2 > 0)
         {
            _loc5_ = _loc4_.length;
            if(param2 < _loc5_)
            {
               return _loc4_.substr(_loc5_ - param2,param2);
            }
            if(param2 > _loc5_)
            {
               return __zero(param2 - _loc5_) + _loc4_;
            }
            return _loc4_;
         }
         return _loc4_;
      }
      
      private static function __zero(param1:int) : String
      {
         return Math.pow(2,param1).toString(2).substring(1);
      }
      
      public static function insert(param1:String, param2:int, param3:String) : String
      {
         return param1.substring(0,param2) + param3 + param1.substring(param2);
      }
      
      public static function year() : Number
      {
         return new Date().getFullYear();
      }
      
      public static function month() : Number
      {
         return new Date().getMonth() + 1;
      }
      
      public static function day() : Number
      {
         return new Date().getDate();
      }
      
      public static function weekday() : Number
      {
         return new Date().getDay();
      }
      
      public static function hour() : Number
      {
         return new Date().getHours();
      }
      
      public static function minute() : Number
      {
         return new Date().getMinutes();
      }
      
      public static function second() : Number
      {
         return new Date().getSeconds();
      }
      
      public static function millis() : Number
      {
         return new Date().getMilliseconds();
      }
   }
}
