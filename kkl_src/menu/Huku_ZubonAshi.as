package menu
{
   import parameter.Dress_data;
   
   public class Huku_ZubonAshi
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_ZubonAshi(param1:int, param2:int)
      {
         var _loc3_:int = 0;
         var _loc4_:Array = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         this.charaAdd["ashi" + param2].thigh.actual.thigh.Zubon.gotoAndStop(1);
         this.charaAdd["ashi" + param2].shiri.actual.shiri.Zubon.gotoAndStop(1);
         try {
            this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.gotoAndStop(1);
            this.charaAdd["ashi" + param2].leg.actual.leg.Zubon.gotoAndStop(1);
         } catch(myError:Error) {}

         if(!this.charaData["Zubon"]["_visible"][0])
         {
            this.charaAdd["ashi" + param2].thigh.actual.thigh.Zubon.visible = false;
            this.charaAdd["ashi" + param2].thigh.actual.thigh.Zubon.gotoAndStop(1);
            this.charaAdd["ashi" + param2].shiri.actual.shiri.Zubon.visible = false;
            this.charaAdd["ashi" + param2].shiri.actual.shiri.Zubon.gotoAndStop(1);
            try
            {
               this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.visible = false;
               this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.gotoAndStop(1);
               this.charaAdd["ashi" + param2].leg.actual.leg.Zubon.visible = false;
               this.charaAdd["ashi" + param2].leg.actual.leg.Zubon.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            this.charaAdd["ashi" + param2].thigh.actual.mask = this.charaAdd.dou.thighMask["thighMask" + param2];
         }
         else
         {
            _loc3_ = this.charaData["ZubonAshi" + param2]["_menu"];
            _loc4_ = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
            _loc5_ = Dress_data.ZubonAshiData[_loc3_]["dou"];
            _loc6_ = this.charaData["TsyatuSkirt"]["_menu"];
            _loc7_ = false;
            if(this.charaData["Tsyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc6_]["skirt"] != 0)
            {
               _loc7_ = true;
            }
            _loc6_ = this.charaData["YsyatuSkirt"]["_menu"];
            _loc8_ = false;
            if(this.charaData["Ysyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc6_]["skirt"] != 0)
            {
               _loc8_ = true;
            }
            if(_loc7_ && this.charaData["Skirt"]["_depth"] >= 1 || _loc8_ && this.charaData["Skirt"]["_depth"] == 2)
            {
               _loc5_ = 3;
            }

            try
            {
               if(_loc4_[0] >= 1 && _loc4_[1] >= 1)
               {
                  this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + param2].gotoAndStop(5);
                  if(Dress_data.ZubonData[this.charaData["Zubon"]["_menu"]]["burumaColor"] != "0")
                  {
                     if(Dress_data.ZubonAshiData[_loc3_]["dou"] != 3)
                     {
                        this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + param2][Dress_data.ZubonData[this.charaData["Zubon"]["_menu"]]["burumaColor"]].visible = false;
                     }
                     else
                     {
                        this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + param2][Dress_data.ZubonData[this.charaData["Zubon"]["_menu"]]["burumaColor"]].visible = true;
                     }
                  }
               }
               else if(_loc4_[0] >= 1 || _loc4_[1] >= 1)
               {
                  this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + param2].gotoAndStop(_loc5_ + 1);
               }
               else
               {
                  this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + param2].gotoAndStop(_loc5_);
               }
            }
            catch(myError:Error)
            {
            }

            if(param2 == 0)
            {
               try
               {
                  this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + param2].right.visible = false;
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + param2].left.visible = false;
               }
               catch(myError:Error)
               {
               }
            }

            new Chara_ColorClass(param1,"ZubonSuso");

            try
            {
               this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.gotoAndStop(1);
               if(Dress_data.ZubonAshiData[_loc3_]["leg"] == 0)
               {
                  this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.visible = false;
                  this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.gotoAndStop(1);
               }
               else
               {
                  this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.visible = true;
                  this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.gotoAndStop(Dress_data.ZubonAshiData[_loc3_]["leg"] + 1);
               }
            }
            catch(myError:Error)
            {
            }
            
            this.charaAdd["ashi" + param2].shiri.actual.shiri.Zubon.gotoAndStop(1);
            if(Dress_data.ZubonAshiData[_loc3_]["thigh"] == 11)
            {
               this.charaAdd["ashi" + param2].shiri.actual.shiri.Zubon.visible = false;
               this.charaAdd["ashi" + param2].shiri.actual.shiri.Zubon.gotoAndStop(1);
            }
            else
            {
               this.charaAdd["ashi" + param2].shiri.actual.shiri.Zubon.visible = true;
               this.charaAdd["ashi" + param2].shiri.actual.shiri.Zubon.gotoAndStop(2);
            }
            this.charaAdd["ashi" + param2].thigh.actual.thigh.Zubon.visible = true;
            this.charaAdd["ashi" + param2].thigh.actual.thigh.Zubon.gotoAndStop(Dress_data.ZubonAshiData[_loc3_]["thigh"] + 1);
            try
            {
               this.charaAdd.dou.dou_Skirt.Zubon["Zubon" + param2].sen.mask = this.charaAdd["ashi" + param2].thigh.actual.thigh.Zubon.douSenMask;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + param2].thigh.actual.thigh.Zubon.douSenMask.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["ashi" + param2].thigh.actual.thigh.Zubon.sen.mask = this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.legMask;
               this.charaAdd["ashi" + param2].leg_huku.actual.leg.Zubon.legMask.visible = false;
            }
            catch(myError:Error)
            {
            }
            new Huku_ZubonLeg(param1,param2);
            new Chara_ColorClass(param1,"Zubon");
            new Chara_ColorClass(param1,"ZubonAshi" + param2);
            if(_loc3_ == 0)
            {
               this.charaAdd["ashi" + param2].thigh.actual.mask = this.charaAdd.dou.thighMask["thighMask" + param2];
            }
            else
            {
               this.charaAdd["ashi" + param2].thigh.actual.mask = null;
            }
         }
      }
   }
}
