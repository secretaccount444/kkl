package menu
{
   import parameter.Dress_data;
   
   public class Move_UdeSenClass
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Move_UdeSenClass(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         super();
         this.charaData = MenuClass.charaData[param1];
         var _loc8_:Boolean = true;
         if(param2 == "LeftHand" || param2 == "RightHand")
         {
            if(param2 == "LeftHand")
            {
               _loc4_ = 0;
            }
            else
            {
               _loc4_ = 1;
            }
            this.charaAdd = MenuClass.charaAdd[param1]["handm1_" + _loc4_].hand;
            _loc5_ = this.charaData["Item" + _loc4_]["_visible"][0];
            _loc6_ = this.charaData["Item" + _loc4_]["_menu"];
            _loc7_ = MenuClass.charaData[param1][param2]["_menu"] + 1;
         }
         else if(param2 == "FreeHand")
         {
            this.charaAdd = Chara_Class.chara_m["FreeHand" + param1];
            _loc5_ = MenuClass.systemData["FreeHandItem" + param1]["_visible"][0];
            _loc6_ = MenuClass.systemData["FreeHandItem" + param1]["_menu"];
            _loc7_ = MenuClass.systemData["FreeHandWrist" + param1]["_menu"] + 1;
         }
         if(_loc5_ && this.charaAdd.item.hand.actual.hand != null)
         {
            this.charaAdd.item.hand.actual.hand.gotoAndStop(_loc7_);
            if(Dress_data.ObjData["Item0"][_loc6_]["arm1"] != 0)
            {
               try
               {
                  if(this.charaAdd.arm1.arm1.arm1.actual.item.item.totalFrames > 1)
                  {
                     this.charaAdd.arm1.arm1.arm1.actual.item.item.gotoAndStop(this.charaAdd.item.hand.actual.hand.currentFrame);
                  }
               }
               catch(myError:Error)
               {
               }
            }
            try
            {
               try
               {
                  this.charaAdd.item.hand.actual.hand.sen.mask = this.charaAdd.item.hand.actual.hand.item.MaskMc;
               }
               catch(myError:Error)
               {
               }
               if(param2 == "FreeHand" && MenuClass.systemData["FreeHand" + param1]["_menu"] == 12)
               {
                  _loc8_ = false;
               }
               if(this.charaAdd.item.hand.actual.hand.maskNashi)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(1);
                  this.charaAdd.item.hand.actual.hand.maskNashi.visible = false;
               }
               else if(this.charaAdd.item.hand.actual.hand.mask0)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(43);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask0;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask0.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask1)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(44);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask1;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask1.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask2)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(45);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask2;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask2.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask3)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(1);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask3;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask3.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask4)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(46);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask4;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask4.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask5)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(47);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask5;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask5.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask6)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(48);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask6;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask6.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask7)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(49);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask7;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask7.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask8)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(50);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask8;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask8.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask9)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(51);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask9;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask9.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask10)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(52);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask10;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask10.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask11)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(53);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask11;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask11.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask12)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(54);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask12;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask12.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask13)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(56);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask13;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask13.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask14)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(57);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask14;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask14.visible = false;
                  }
               }
               else if(this.charaAdd.item.hand.actual.hand.mask15)
               {
                  this.charaAdd.arm0.hand.actual.gotoAndStop(4);
                  if(_loc8_)
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = this.charaAdd.item.hand.actual.hand.mask15;
                  }
                  else
                  {
                     this.charaAdd.item.hand.actual.hand.item.mask = null;
                     this.charaAdd.item.hand.actual.hand.mask15.visible = false;
                  }
               }
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            this.charaAdd.arm0.hand.actual.gotoAndStop(_loc7_);
         }
         try
         {
            if(this.charaAdd.arm0.hand.actual.MaskMc0)
            {
               this.charaAdd.arm1.arm1.arm1.actual.gotoAndStop(1);
            }
            else
            {
               this.charaAdd.arm1.arm1.arm1.actual.gotoAndStop(2);
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
