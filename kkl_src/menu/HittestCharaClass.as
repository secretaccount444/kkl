package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class HittestCharaClass
   {
       
      
      private var blockBreak:MovieClip;
      
      private var blockBreak2:MovieClip;
      
      private var blockHeart:MovieClip;
      
      private var blockBreakCount:int = 0;
      
      private var blockBreak2Count:int = 0;
      
      private var blockHeartCount:int = 0;
      
      private var blockBreakRandom:Number = 0;
      
      private var blockBreak2Random:Number = 0;
      
      private var blockHeartRandom:Number = 0;
      
      public function HittestCharaClass(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = false;
         this.blockBreak = new MovieClip();
         this.blockBreak2 = new MovieClip();
         this.blockHeart = new MovieClip();
         super();
         _loc4_ = MenuClass.charaData[param1];
         var _loc5_:Object = MenuClass.charaAdd[param1];
         var _loc8_:Array = new Array(-10,10,0,0);
         var _loc9_:Array = new Array(0,0,-10,10);
         HukuClickClass.targetName = "";
         HukuClickClass.targetNameP = "";
         HukuClickClass.targetNamePP = "";
         HukuClickClass.targetNamePPP = "";
         HukuClickClass.targetNum = 0;
         HukuClickClass.targetNumPPP = 0;
         _loc2_ = 0;
         while(_loc2_ <= 3)
         {
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Megane"]["_visible"][0])
            {
               if(_loc5_.head.Megane.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Megane";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Seihuku"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 0].hand.arm1.arm1.arm1.actual.Seihuku.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 1].hand.arm1.arm1.arm1.actual.Seihuku.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 0].hand.arm2.actual.arm2.Seihuku.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 1].hand.arm2.actual.arm2.Seihuku.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.mune.SeihukuMune.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "SeihukuMune";
                  this.fc1(param1,_loc2_);
                  break;
               }
               if(_loc5_.dou.SeihukuDou.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "SeihukuDou";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Vest"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 0].hand.arm1.arm1.arm1.actual.Vest.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 1].hand.arm1.arm1.arm1.actual.Vest.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 0].hand.arm2.actual.arm2.Vest.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 1].hand.arm2.actual.arm2.Vest.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.mune.VestMune2.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.mune.VestMune.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "VestMune";
                  this.fc1(param1,_loc2_);
                  break;
               }
               if(_loc5_.dou.VestDou.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "VestDou";
                  this.fc1(param1,_loc2_);
                  break;
               }
               if(_loc5_.dou.VestOnePiece.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "VestOnePiece";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Ysyatu"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 0].hand.arm1.arm1.arm1.actual.Ysyatu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 1].hand.arm1.arm1.arm1.actual.Ysyatu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 0].hand.arm2.actual.arm2.Ysyatu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 1].hand.arm2.actual.arm2.Ysyatu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.mune.YsyatuMune2.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.mune.YsyatuMune.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "YsyatuMune";
                  this.fc1(param1,_loc2_);
                  break;
               }
               if(_loc5_.dou.YsyatuDou.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "YsyatuDou";
                  this.fc1(param1,_loc2_);
                  break;
               }
               if(_loc5_.dou.YsyatuOnePiece.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "YsyatuOnePiece";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Tsyatu"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 0].hand.arm1.arm1.arm1.actual.Tsyatu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 1].hand.arm1.arm1.arm1.actual.Tsyatu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 0].hand.arm2.actual.arm2.Tsyatu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 1].hand.arm2.actual.arm2.Tsyatu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.mune.TsyatuMune.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "TsyatuMune";
                  this.fc1(param1,_loc2_);
                  break;
               }
               if(_loc5_.dou.TsyatuDou.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "TsyatuDou";
                  this.fc1(param1,_loc2_);
                  break;
               }
               if(_loc5_.dou.TsyatuOnePiece.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "TsyatuOnePiece";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Skirt"]["_visible"][0])
            {
               if(_loc5_.dou.dou_Skirt.Skirt.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Skirt";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Kutu0"]["_visible"][0])
            {
               if(_loc5_["ashi" + 0].leg.actual.leg.Kutu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 0].leg_huku.actual.leg.Kutu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 0].foot.actual.foot.Kutu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Kutu";
                  HukuClickClass.targetNumPPP = 0;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Kutu1"]["_visible"][0])
            {
               if(_loc5_["ashi" + 1].leg.actual.leg.Kutu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].leg_huku.actual.leg.Kutu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].foot.actual.foot.Kutu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Kutu";
                  HukuClickClass.targetNumPPP = 1;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Socks0"]["_visible"][0])
            {
               _loc10_ = false;
               try
               {
                  if((!_loc4_["Kutu0"]["_visible"][0] || _loc2_ == 3) && _loc5_["ashi" + 0].leg.actual.leg.Socks.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 0].leg_huku.actual.leg.Socks.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                  {
                     _loc10_ = true;
                  }
               }
               catch(myError:Error)
               {
               }
               if(_loc5_["ashi" + 0].thigh.actual.thigh.Socks.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || !_loc4_["Kutu0"]["_visible"][0] && _loc5_["ashi" + 0].foot.actual.foot.Socks.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 0].thigh.actual.thigh.SocksTop.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc10_)
               {
                  HukuClickClass.targetName = "Socks";
                  HukuClickClass.targetNumPPP = 0;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Socks1"]["_visible"][0])
            {
               _loc11_ = false;
               try
               {
                  if((!_loc4_["Kutu1"]["_visible"][0] || _loc2_ == 3) && _loc5_["ashi" + 1].leg.actual.leg.Socks.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].leg_huku.actual.leg.Socks.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                  {
                     _loc11_ = true;
                  }
               }
               catch(myError:Error)
               {
               }
               if(_loc5_["ashi" + 1].thigh.actual.thigh.Socks.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || !_loc4_["Kutu1"]["_visible"][0] && _loc5_["ashi" + 1].foot.actual.foot.Socks.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].thigh.actual.thigh.SocksTop.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc11_)
               {
                  HukuClickClass.targetName = "Socks";
                  HukuClickClass.targetNumPPP = 1;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Pantu"]["_visible"][0])
            {
               _loc12_ = false;
               try
               {
                  if(_loc5_["ashi" + 0].thigh.actual.thigh.Pantu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].thigh.actual.thigh.Pantu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 0].thigh.actual.thigh.Spantu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].thigh.actual.thigh.Spantu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                  {
                     _loc12_ = true;
                  }
               }
               catch(myError:Error)
               {
               }
               if(_loc5_.dou.dou_shitaHuku.Pantu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.dou.dou_shitaHuku.Spantu.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc12_)
               {
                  HukuClickClass.targetName = "Pantu";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Bura"]["_visible"][0])
            {
               if(_loc5_.mune.Bura.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.dou.Bura.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Bura";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Tights"]["_visible"][0])
            {
               _loc13_ = false;
               try
               {
                  if((!_loc4_["Kutu0"]["_visible"][0] || _loc2_ == 3) && _loc5_["ashi" + 0].leg.actual.leg.Tights.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || (!_loc4_["Kutu1"]["_visible"][0] || _loc2_ == 3) && _loc5_["ashi" + 1].leg.actual.leg.Tights.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                  {
                     _loc13_ = true;
                  }
               }
               catch(myError:Error)
               {
               }
               if(_loc5_.dou.dou_shitaHuku.Tights.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 0].thigh.actual.thigh.Tights.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].thigh.actual.thigh.Tights.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc13_)
               {
                  HukuClickClass.targetName = "Tights";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Necktie"]["_visible"][0])
            {
               if(_loc5_.mune.Necktie0.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.mune.Necktie1.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Necktie";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Collar"]["_visible"][0])
            {
               if(_loc5_.mune.Collar0.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.mune.Collar1.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.Collar.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Collar";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Necklace"]["_visible"][0])
            {
               if(_loc5_.mune.Necklace0.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Necklace";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Bracelet0"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 0].hand.arm1.arm1.arm1.actual.Bracelet.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Bracelet";
                  HukuClickClass.targetNum = 0;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Bracelet1"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 1].hand.arm1.arm1.arm1.actual.Bracelet.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Bracelet";
                  HukuClickClass.targetNum = 1;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Wristband0"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 0].hand.arm1.arm1.arm1.actual.Wristband.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 0].hand.arm2.actual.arm2.Wristband.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Wristband";
                  HukuClickClass.targetNum = 0;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Wristband1"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 1].hand.arm1.arm1.arm1.actual.Wristband.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 1].hand.arm2.actual.arm2.Wristband.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Wristband";
                  HukuClickClass.targetNum = 1;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Glove0"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 0].hand.arm0.hand.actual.glove.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 0].hand.arm1.arm1.arm1.actual.Glove.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 0].hand.arm2.actual.arm2.Glove.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 0].hand.arm1.arm1.arm1.actual.Glove_mask.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 0].hand.arm2.actual.arm2.Glove_mask.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Glove";
                  HukuClickClass.targetNum = 0;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Glove1"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 1].hand.arm0.hand.actual.glove.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 1].hand.arm1.arm1.arm1.actual.Glove.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 1].hand.arm2.actual.arm2.Glove.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 1].hand.arm1.arm1.arm1.actual.Glove_mask.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm0_" + 1].hand.arm2.actual.arm2.Glove_mask.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Glove";
                  HukuClickClass.targetNum = 1;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["ArmBracelet0"]["_visible"][0])
            {
               if(_loc5_["handm0_" + 0].hand.arm2.actual.arm2.ArmBracelet.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "ArmBracelet";
                  HukuClickClass.targetNum = 0;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["ArmBracelet1"]["_visible"][0])
            {
               if(_loc5_["handm0_" + 1].hand.arm2.actual.arm2.ArmBracelet.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "ArmBracelet";
                  HukuClickClass.targetNum = 1;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Armband0"]["_visible"][0])
            {
               if(_loc5_["handm0_" + 0].hand.arm2.actual.arm2.Armband.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Armband";
                  HukuClickClass.targetNum = 0;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Armband1"]["_visible"][0])
            {
               if(_loc5_["handm0_" + 1].hand.arm2.actual.arm2.Armband.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Armband";
                  HukuClickClass.targetNum = 1;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Elbowpad0"]["_visible"][0])
            {
               if(_loc5_["handm0_" + 0].hand.arm2.actual.arm2.Elbowpad.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 0].hand.arm1.arm1.arm1.actual.Elbowpad.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Elbowpad";
                  HukuClickClass.targetNum = 0;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Elbowpad1"]["_visible"][0])
            {
               if(_loc5_["handm0_" + 1].hand.arm2.actual.arm2.Elbowpad.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 1].hand.arm1.arm1.arm1.actual.Elbowpad.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Elbowpad";
                  HukuClickClass.targetNum = 1;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["LegBand0"]["_visible"][0])
            {
               if(_loc5_["ashi" + 0].leg.actual.leg.LegBand.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 0].leg_huku.actual.leg.LegBand.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 0].foot.actual.foot.LegBand.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "LegBand";
                  HukuClickClass.targetNumPPP = 0;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["LegBand1"]["_visible"][0])
            {
               if(_loc5_["ashi" + 1].leg.actual.leg.LegBand.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].leg_huku.actual.leg.LegBand.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].foot.actual.foot.LegBand.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "LegBand";
                  HukuClickClass.targetNumPPP = 1;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Earring0"]["_visible"][0])
            {
               if(_loc5_.head["ear" + 0].ear.Earring.Earring.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Earring";
                  HukuClickClass.targetNamePP = "Earring0";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Earring1"]["_visible"][0])
            {
               if(_loc5_.head["ear" + 1].ear.Earring.Earring.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Earring";
                  HukuClickClass.targetNamePP = "Earring1";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Gag"]["_visible"][0])
            {
               if(_loc5_.head.Gag.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Gag";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Headband"]["_visible"][0])
            {
               if(_loc5_.head["Headband" + 0].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.head["Headband" + 1].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.head["Headband" + 2].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Headband";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Headphone"]["_visible"][0])
            {
               if(_loc5_.head.Headphone_Top.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.head["Headphone" + 0].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.head["Headphone" + 1].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["Headphone" + 0].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["Headphone" + 1].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["HeadphoneNeck" + 0].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["HeadphoneNeck" + 1].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Headphone";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Hat"]["_visible"][0])
            {
               if(_loc5_.head.Hat.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.HatBack.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Hat";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Vibrator"]["_visible"][0])
            {
               if(_loc5_.vibrator.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "vibrator";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["SG"]["_visible"][0])
            {
               if(_loc5_.dou.dou_shitaHuku.SG.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "SG";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0)
            {
               if(_loc5_.dou.dou_shitaHuku.peni.Peni.Tin.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.peni.peni.Peni.Tin.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Tin";
                  new HukuClickFc(param1);
                  EnterFrameClass.hitFlag = 1;
                  _loc4_["HeartPlus"]["_meter"] += 4;
                  _loc4_["Tin"]["_tClick"] += 40;
                  if(_loc2_ == 0 || _loc2_ == 1)
                  {
                     EnterFrameClass.ballY *= -1;
                  }
                  else
                  {
                     EnterFrameClass.ballX *= -1;
                  }
                  this.fc2();
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0)
            {
               if(_loc5_.dou.dou_shitaHuku.peni.Peni.Tama.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.peni.peni.Peni.Tama.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Tama";
                  new HukuClickFc(param1);
                  EnterFrameClass.hitFlag = 1;
                  _loc4_["HeartPlus"]["_meter"] += 1;
                  if(_loc2_ == 0 || _loc2_ == 1)
                  {
                     EnterFrameClass.ballY *= -1;
                  }
                  else
                  {
                     EnterFrameClass.ballX *= -1;
                  }
                  this.fc2();
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0)
            {
               if(_loc5_.dou.dou_shitaHuku.s.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "s_btn0";
                  new HukuClickFc(param1);
                  EnterFrameClass.hitFlag = 1;
                  _loc4_["HeartPlus"]["_meter"] += 6;
                  _loc4_["s"]["_sClick"] += 7;
                  this.fc2();
                  break;
               }
            }
            new Huku_BreastOpen(param1);
            if(EnterFrameClass.hitFlag == 0 && _loc4_["BreastManualAuto"]["_check"] && Huku_BreastOpen.muneOpen)
            {
               if(_loc5_.mune["mune" + 0].mune.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "mune0";
                  new HukuClickFc(param1);
                  if(_loc4_["NippleGLeft"]["_visible"][0])
                  {
                     HukuClickClass.targetName = "NippleGLeft";
                     new HukuClickFc(param1);
                     if(_loc2_ == 0 || _loc2_ == 1)
                     {
                        EnterFrameClass.ballY *= -1;
                     }
                     else
                     {
                        EnterFrameClass.ballX *= -1;
                     }
                     _loc4_["HeartPlus"]["_meter"] += 1;
                  }
                  else if(_loc4_["Breast"]["_menu"] >= 5)
                  {
                     if(_loc2_ == 0 || _loc2_ == 1)
                     {
                        EnterFrameClass.ballY *= -1;
                     }
                     else
                     {
                        EnterFrameClass.ballX *= -1;
                     }
                     _loc4_["HeartPlus"]["_meter"] += 2;
                  }
                  else
                  {
                     _loc4_["HeartPlus"]["_meter"] += 1;
                  }
                  EnterFrameClass.hitFlag = 1;
                  this.fc2();
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["BreastManualAuto"]["_check"] && Huku_BreastOpen.muneOpen)
            {
               if(_loc5_.mune["mune" + 1].mune.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "mune1";
                  new HukuClickFc(param1);
                  if(_loc4_["NippleGRight"]["_visible"][0])
                  {
                     HukuClickClass.targetName = "NippleGRight";
                     new HukuClickFc(param1);
                     if(_loc2_ == 0 || _loc2_ == 1)
                     {
                        EnterFrameClass.ballY *= -1;
                     }
                     else
                     {
                        EnterFrameClass.ballX *= -1;
                     }
                     _loc4_["HeartPlus"]["_meter"] += 1;
                  }
                  else if(_loc4_["Breast"]["_menu"] >= 5)
                  {
                     if(_loc2_ == 0 || _loc2_ == 1)
                     {
                        EnterFrameClass.ballY *= -1;
                     }
                     else
                     {
                        EnterFrameClass.ballX *= -1;
                     }
                     _loc4_["HeartPlus"]["_meter"] += 2;
                  }
                  else
                  {
                     _loc4_["HeartPlus"]["_meter"] += 1;
                  }
                  EnterFrameClass.hitFlag = 1;
                  this.fc2();
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["SideBurnLeft"]["_visible"][0] && _loc4_["SideBurnLeft"]["_depth"] != 0)
            {
               if(_loc5_.head["SideBurnLeft"].SideBurn.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.SideBurnMiddle["SideBurnLeft"].SideBurn.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  _loc4_["SideBurnLeft"]["_depth"] = 2;
                  HukuClickClass.targetName = "SideBurnLeft";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["SideBurnRight"]["_visible"][0] && _loc4_["SideBurnRight"]["_depth"] != 0)
            {
               if(_loc5_.head["SideBurnRight"].SideBurn.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.SideBurnMiddle["SideBurnRight"].SideBurn.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  _loc4_["SideBurnRight"]["_depth"] = 2;
                  HukuClickClass.targetName = "SideBurnRight";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Nawa"]["_visible"][0])
            {
               if(_loc5_.mune.Nawa.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.dou.Nawa.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_.dou.dou_shitaHuku.Nawa.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "Nawa";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Zubon"]["_visible"][0])
            {
               _loc14_ = false;
               try
               {
                  if(_loc5_["ashi" + 0].leg_huku.actual.leg.Zubon.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 0].leg.actual.leg.Zubon.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].leg_huku.actual.leg.Zubon.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].leg.actual.leg.Zubon.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                  {
                     _loc14_ = true;
                  }
               }
               catch(myError:Error)
               {
               }
               if(_loc5_.dou.dou_Skirt.Zubon.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 0].thigh.actual.thigh.Zubon.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["ashi" + 1].thigh.actual.thigh.Zubon.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc14_)
               {
                  HukuClickClass.targetName = "Zubon";
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Item0"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 0].hand.item.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 0].hand.arm1.arm1.arm1.actual.item.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "item";
                  HukuClickClass.targetNum = 0;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            if(EnterFrameClass.hitFlag == 0 && _loc4_["Item1"]["_visible"][0])
            {
               if(_loc5_["handm1_" + 1].hand.item.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true) || _loc5_["handm1_" + 1].hand.arm1.arm1.arm1.actual.item.hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
               {
                  HukuClickClass.targetName = "item";
                  HukuClickClass.targetNum = 1;
                  this.fc1(param1,_loc2_);
                  break;
               }
            }
            _loc3_ = 0;
            while(_loc3_ <= Main.RibonhukusuuNum)
            {
               if(EnterFrameClass.hitFlag == 0 && _loc4_["RibonPlus"]["_visible"][_loc3_])
               {
                  if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 0)
                  {
                     _loc6_ = _loc5_;
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 1)
                  {
                     _loc6_ = _loc5_.head;
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 2)
                  {
                     _loc6_ = _loc5_.mune;
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 3)
                  {
                     _loc6_ = _loc5_.dou;
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 4)
                  {
                     _loc6_ = _loc5_.HairBack.hairBack;
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 5)
                  {
                     if(_loc4_["SideBurnLeft"]["_depth"] == 0)
                     {
                        _loc6_ = _loc5_.SideBurnMiddle.SideBurnLeft.SideBurn;
                     }
                     else
                     {
                        _loc6_ = _loc5_.head.SideBurnLeft.SideBurn;
                     }
                     if(_loc4_["SideBurnRight"]["_depth"] == 0)
                     {
                        _loc7_ = _loc5_.SideBurnMiddle.SideBurnRight.SideBurn;
                     }
                     else
                     {
                        _loc7_ = _loc5_.head.SideBurnRight.SideBurn;
                     }
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 6)
                  {
                     try
                     {
                        _loc6_ = _loc5_["HairEx" + 0 + "_" + 0];
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc7_ = _loc5_["HairEx" + 0 + "_" + 1];
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 7)
                  {
                     try
                     {
                        _loc6_ = _loc5_["HairEx" + 1 + "_" + 0];
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc7_ = _loc5_["HairEx" + 1 + "_" + 1];
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 8)
                  {
                     try
                     {
                        _loc6_ = _loc5_["HairEx" + 2 + "_" + 0];
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc7_ = _loc5_["HairEx" + 2 + "_" + 1];
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 9)
                  {
                     try
                     {
                        _loc6_ = _loc5_["HairEx" + 3 + "_" + 0];
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc7_ = _loc5_["HairEx" + 3 + "_" + 1];
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 10)
                  {
                     try
                     {
                        _loc6_ = _loc5_["HairEx" + 4 + "_" + 0];
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc7_ = _loc5_["HairEx" + 4 + "_" + 1];
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 95)
                  {
                     try
                     {
                        _loc6_ = _loc5_.ashi0.thigh.actual.thigh;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc7_ = _loc5_.ashi1.thigh.actual.thigh;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 96)
                  {
                     try
                     {
                        _loc6_ = _loc5_.ashi0.leg.actual.leg;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc7_ = _loc5_.ashi1.leg.actual.leg;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else if(_loc4_["RibonAdd" + _loc3_]["_add0"] == 97)
                  {
                     try
                     {
                        _loc6_ = _loc5_.ashi0.foot.actual.foot;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        _loc7_ = _loc5_.ashi1.foot.actual.foot;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  _loc15_ = false;
                  _loc16_ = false;
                  _loc17_ = false;
                  _loc18_ = false;
                  try
                  {
                     if(_loc6_["Ribon" + _loc3_ + "_" + 0].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                     {
                        _loc15_ = true;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if(_loc6_["Ribon" + _loc3_ + "_" + 1].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                     {
                        _loc16_ = true;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if(_loc7_["Ribon" + _loc3_ + "_" + 0].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                     {
                        _loc17_ = true;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if(_loc7_["Ribon" + _loc3_ + "_" + 1].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                     {
                        _loc18_ = true;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  if(_loc15_ || _loc17_)
                  {
                     HukuClickClass.targetName = "ribon0";
                     HukuClickClass.targetNameP = "Ribon" + _loc3_ + "_0";
                     this.fc1(param1,_loc2_);
                     break;
                  }
                  if(_loc16_ || _loc18_)
                  {
                     HukuClickClass.targetName = "ribon0";
                     HukuClickClass.targetNameP = "Ribon" + _loc3_ + "_1";
                     this.fc1(param1,_loc2_);
                     break;
                  }
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ <= Main.hukusuuNum)
            {
               if(EnterFrameClass.hitFlag == 0 && _loc4_["BeltPlus"]["_visible"][_loc3_])
               {
                  if(_loc4_["Belt" + _loc3_]["_depth"] >= 2)
                  {
                     _loc6_ = _loc5_;
                  }
                  else
                  {
                     _loc6_ = _loc5_.dou;
                  }
                  _loc19_ = false;
                  _loc20_ = false;
                  try
                  {
                     if(_loc6_["belt" + _loc3_ + "_" + 0].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                     {
                        _loc19_ = true;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if(_loc6_["belt" + _loc3_ + "_" + 1].hitTestPoint(Tab_BreakBlockBtn.ball.x + _loc9_[_loc2_],Tab_BreakBlockBtn.ball.y + _loc8_[_loc2_],true))
                     {
                        _loc20_ = true;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  if(_loc19_)
                  {
                     HukuClickClass.targetName = "beltDou";
                     HukuClickClass.targetNameP = "belt" + _loc3_ + "_0";
                     this.fc1(param1,_loc2_);
                     break;
                  }
                  if(_loc20_)
                  {
                     HukuClickClass.targetName = "beltDou";
                     HukuClickClass.targetNameP = "belt" + _loc3_ + "_1";
                     this.fc1(param1,_loc2_);
                     break;
                  }
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function fc2() : void
      {
         this.blockHeart = new Chara_Loading.blockHeartClass();
         Main.mainWindow.addChild(this.blockHeart);
         this.blockHeart.x = Tab_BreakBlockBtn.ball.x;
         this.blockHeart.y = Tab_BreakBlockBtn.ball.y;
         this.blockHeartCount = 0;
         this.blockHeartRandom = Math.random() * 0.2 + 0.2;
         var _loc1_:int = Math.floor(Math.random() * 360);
         this.blockHeart.rotation = _loc1_;
         this.blockHeart.obj0.rotation = _loc1_ * -1;
         this.blockHeart.obj1.rotation = _loc1_ * -1;
         this.blockHeart.obj2.rotation = _loc1_ * -1;
         Main.stageVar.addEventListener(Event.ENTER_FRAME,this.Enter3);
      }
      
      private function Enter3(param1:Event) : void
      {
         this.blockHeart.scaleX += this.blockHeartRandom;
         this.blockHeart.scaleY += this.blockHeartRandom;
         if(this.blockHeartCount == 6)
         {
            this.blockHeart.alpha = 0.5;
         }
         else if(this.blockHeartCount == 7)
         {
            this.blockHeart.alpha = 0.2;
         }
         else if(this.blockHeartCount == 8)
         {
            Main.mainWindow.removeChild(this.blockHeart);
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.Enter3);
         }
         ++this.blockHeartCount;
      }
      
      private function fc1(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         this.blockBreak = new Chara_Loading.blockBreakClass();
         Main.mainWindow.addChild(this.blockBreak);
         this.blockBreak.x = Tab_BreakBlockBtn.ball.x;
         this.blockBreak.y = Tab_BreakBlockBtn.ball.y;
         this.blockBreakCount = 0;
         this.blockBreakRandom = Math.random() * 0.01 + 0.01;
         _loc3_ = Math.floor(Math.random() * 360);
         this.blockBreak.rotation = _loc3_;
         Main.stageVar.addEventListener(Event.ENTER_FRAME,this.Enter);
         this.blockBreak.gotoAndStop(Math.floor(Math.random() * 12) + 1);
         this.blockBreak2 = new Chara_Loading.blockBreakClass();
         Main.mainWindow.addChild(this.blockBreak2);
         this.blockBreak2.x = Tab_BreakBlockBtn.ball.x;
         this.blockBreak2.y = Tab_BreakBlockBtn.ball.y;
         this.blockBreak2Count = 0;
         this.blockBreak2Random = Math.random() * 0.15 + 0.15;
         _loc3_ = Math.floor(Math.random() * 360);
         this.blockBreak2.rotation = _loc3_;
         Main.stageVar.addEventListener(Event.ENTER_FRAME,this.Enter2);
         this.blockBreak2.gotoAndStop(Math.floor(Math.random() * 12) + 1);
         new HukuClickFc(param1);
         if(param2 == 0 || param2 == 1)
         {
            EnterFrameClass.ballY *= -1;
         }
         else
         {
            EnterFrameClass.ballX *= -1;
         }
         EnterFrameClass.hitFlag = 1;
      }
      
      private function Enter(param1:Event) : void
      {
         this.blockBreak.scaleX += this.blockBreakRandom;
         this.blockBreak.scaleY += 0.1 + this.blockBreakRandom;
         if(this.blockBreakCount == 4)
         {
            this.blockBreak.alpha = 0.5;
         }
         else if(this.blockBreakCount == 5)
         {
            this.blockBreak.alpha = 0.2;
         }
         else if(this.blockBreakCount == 6)
         {
            Main.mainWindow.removeChild(this.blockBreak);
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.Enter);
         }
         ++this.blockBreakCount;
      }
      
      private function Enter2(param1:Event) : void
      {
         this.blockBreak2.scaleX += this.blockBreak2Random;
         this.blockBreak2.scaleY += this.blockBreak2Random;
         if(this.blockBreak2Count == 6)
         {
            this.blockBreak2.alpha = 0.5;
         }
         else if(this.blockBreak2Count == 7)
         {
            this.blockBreak2.alpha = 0.2;
         }
         else if(this.blockBreak2Count == 8)
         {
            Main.mainWindow.removeChild(this.blockBreak2);
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.Enter2);
         }
         ++this.blockBreak2Count;
      }
   }
}
