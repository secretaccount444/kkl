package menu
{
   import system.MeterPersent;
   
   public class Move_HitLine
   {
      
      public static var num:Number;
       
      
      private var charaAdd:Object;
      
      private var shadowAdd:Object;
      
      private var charaNum:int;
      
      private var charaAddDepth:Object;
      
      private var charaData:Object;
      
      public function Move_HitLine(param1:int)
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         super();
         this.charaNum = param1;
         this.charaData = MenuClass.charaData[this.charaNum];
         this.charaAddDepth = MenuClass.charaAddDepth[this.charaNum];
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.shadowAdd = MenuClass.shadowAdd[this.charaNum];
         var _loc7_:int = 500;
         var _loc8_:int = 0;
         this.shadowAdd.hitLineSide0.x = _loc7_ * -1;
         this.shadowAdd.hitLineSide1.x = _loc7_;
         new MeterPersent(0,-930,"Jump",this.charaNum);
         var _loc9_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(0,6000,"BodyYMove",this.charaNum);
         this.shadowAdd.hitLine.y = _loc9_;
         this.charaAddDepth.y = -1000 + _loc9_ + MeterPersent.MeterPersentNum;
         try
         {
            this.hitCheckSide0();
            this.hitCheckSide1();
            this.hitCheckLine();
         }
         catch(myError:Error)
         {
         }
         new MeterPersent(0,100,"Jump",this.charaNum);
         var _loc10_:Number = MeterPersent.MeterPersentNum;
         var _loc11_:Number;
         if((_loc11_ = MenuClass.shadowSide0X[this.charaNum] * -1 + MenuClass.shadowSide1X[this.charaNum] - _loc10_) <= 0)
         {
            this.shadowAdd.shadow.width = 0;
         }
         else
         {
            this.shadowAdd.shadow.width = _loc11_;
         }
         this.shadowAdd.shadow.x = MenuClass.shadowSide0X[this.charaNum] + _loc10_ / 2;
         new MeterPersent(-10,100,"BodySize",this.charaNum);
         var _loc12_:Number = MeterPersent.MeterPersentNum;
         new MeterPersent(34,0,"Jump",this.charaNum);
         var _loc13_:Number;
         if((_loc13_ = MeterPersent.MeterPersentNum - _loc8_ + _loc12_) <= 0)
         {
            this.shadowAdd.shadow.height = 0;
         }
         else
         {
            this.shadowAdd.shadow.height = _loc13_;
         }
      }
      
      private function hitCheckLine() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:Array = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
         if(_loc3_[0] == 1 || _loc3_[0] == 2)
         {
            _loc1_ = this.shadowAdd.hitLine.hitTestObject(this.charaAdd["ashi" + 0].thigh.actual.thigh.hitTest2);
         }
         else
         {
            _loc1_ = this.shadowAdd.hitLine.hitTestObject(this.charaAdd["ashi" + 0].foot.actual.foot.hitTest);
         }
         if(_loc3_[1] == 1 || _loc3_[1] == 2)
         {
            _loc2_ = this.shadowAdd.hitLine.hitTestObject(this.charaAdd["ashi" + 1].thigh.actual.thigh.hitTest2);
         }
         else
         {
            _loc2_ = this.shadowAdd.hitLine.hitTestObject(this.charaAdd["ashi" + 1].foot.actual.foot.hitTest);
         }
         if(!(_loc1_ || _loc2_ || this.shadowAdd.hitLine.hitTestObject(this.charaAdd["ashi" + 0].thigh.actual.thigh.hitTest) || this.shadowAdd.hitLine.hitTestObject(this.charaAdd["ashi" + 1].thigh.actual.thigh.hitTest) || this.shadowAdd.hitLine.hitTestObject(this.charaAdd.head.hitTest) || this.shadowAdd.hitLine.hitTestObject(this.charaAdd.dou.dou_shita)))
         {
            this.charaAddDepth.y += 1;
            this.hitCheckLine();
         }
      }
      
      private function hitCheckSide0() : void
      {
         if(this.shadowAdd.hitLineSide0.hitTestObject(this.charaAdd["ashi" + 0].foot.actual.foot.hitTest) || this.shadowAdd.hitLineSide0.hitTestObject(this.charaAdd["ashi" + 0].thigh.actual.thigh.hitTest) || this.shadowAdd.hitLineSide0.hitTestObject(this.charaAdd["ashi" + 1].foot.actual.foot.hitTest) || this.shadowAdd.hitLineSide0.hitTestObject(this.charaAdd["ashi" + 1].thigh.actual.thigh.hitTest) || this.shadowAdd.hitLineSide0.hitTestObject(this.charaAdd.head.hitTest) || this.shadowAdd.hitLineSide0.hitTestObject(this.charaAdd.dou.dou_shita))
         {
            MenuClass.shadowSide0X[this.charaNum] = this.shadowAdd.hitLineSide0.x;
         }
         else
         {
            this.shadowAdd.hitLineSide0.x += 1;
            this.hitCheckSide0();
         }
      }
      
      private function hitCheckSide1() : void
      {
         if(this.shadowAdd.hitLineSide1.hitTestObject(this.charaAdd["ashi" + 0].foot.actual.foot.hitTest) || this.shadowAdd.hitLineSide1.hitTestObject(this.charaAdd["ashi" + 0].thigh.actual.thigh.hitTest) || this.shadowAdd.hitLineSide1.hitTestObject(this.charaAdd["ashi" + 1].foot.actual.foot.hitTest) || this.shadowAdd.hitLineSide1.hitTestObject(this.charaAdd["ashi" + 1].thigh.actual.thigh.hitTest) || this.shadowAdd.hitLineSide1.hitTestObject(this.charaAdd.head.hitTest) || this.shadowAdd.hitLineSide1.hitTestObject(this.charaAdd.dou.dou_shita))
         {
            MenuClass.shadowSide1X[this.charaNum] = this.shadowAdd.hitLineSide1.x;
         }
         else
         {
            --this.shadowAdd.hitLineSide1.x;
            this.hitCheckSide1();
         }
      }
   }
}
