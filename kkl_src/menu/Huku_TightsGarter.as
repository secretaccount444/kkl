package menu
{
   import system.MeterPersent;
   
   public class Huku_TightsGarter
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_TightsGarter(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Array = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         if(this.charaData["Tights"]["_visible"][0])
         {
            new MeterPersent(0,-5,"HipWidth",param1);
            _loc3_ = MeterPersent.MeterPersentNum;
            new MeterPersent(1,0.7,"HipWidth",param1);
            _loc4_ = MeterPersent.MeterPersentNum;
            _loc7_ = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
            _loc8_ = 0;
            _loc9_ = 0;
            _loc5_ = 0;
            while(_loc5_ <= 1)
            {
               _loc2_ = this.charaAdd["ashi" + _loc5_].currentFrame - 1;
               if(_loc5_ == 0 && _loc7_[0] == 0 && _loc7_[1] >= 1 || _loc5_ == 1 && _loc7_[0] >= 1 && _loc7_[1] == 0)
               {
                  new MeterPersent(Move_DataClass.AshiFrameData[_loc2_]["_tightsLine"][2],Move_DataClass.AshiFrameData[_loc2_]["_tightsLine"][3],"HipWidth",param1);
                  _loc6_ = MeterPersent.MeterPersentNum;
                  new MeterPersent(0,2,"douHeight",param1);
                  _loc10_ = MeterPersent.MeterPersentNum;
               }
               else
               {
                  new MeterPersent(Move_DataClass.AshiFrameData[_loc2_]["_tightsLine"][0],Move_DataClass.AshiFrameData[_loc2_]["_tightsLine"][1],"HipWidth",param1);
                  _loc6_ = MeterPersent.MeterPersentNum;
                  new MeterPersent(0,2,"douHeight",param1);
                  _loc10_ = MeterPersent.MeterPersentNum;
               }
               try
               {
                  this.charaAdd["ashi" + _loc5_].thigh.actual.thigh.Tights.line.rotation = _loc3_ + _loc10_ + _loc6_;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd["ashi" + _loc5_].thigh.actual.thigh.Tights.line.scaleX = _loc4_;
               }
               catch(myError:Error)
               {
               }
               _loc5_++;
            }
         }
      }
   }
}
