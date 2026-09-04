package menu
{
   import parameter.Dress_data;
   import parameter.Vibrator_data;
   
   public class Chara_s
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Chara_s(param1:int, param2:String)
      {
         super();
         this.charaData = MenuClass.charaData[param1];
         this.charaAdd = MenuClass.charaAdd[param1];
         var _loc3_:int = Math.floor(this.charaData["s"]["_sClick"] / 10 + 1);
         if(param2 == "menu")
         {
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.chitu.gotoAndStop(1);
            this.charaData["s"]["_hidaPlay"] = 0;
            this.charaData["s"]["_hidaCount"] = 0;
         }

         var _loc4_:int = this.charaData["s"]["_menu"];
         var _loc5_:Array = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);

         if(param2 == "huku")
         {
            if(Math.floor(Math.random() * 7) == 0 && this.charaAdd.dou.dou_shitaHuku.s.tare.currentFrame == 1 && this.charaData["s"]["_sClick"] >= 50)
            {
               if(_loc5_[0] >= 1 || _loc5_[1] >= 1)
               {
                  if(this.charaAdd.dou.dou_shitaHuku.s.currentFrame == 1)
                  {
                     this.charaAdd.dou.dou_shitaHuku.s.tare.gotoAndPlay("p2");
                  }
               }
               else if(!this.charaData["Vibrator"]["_visible"][0])
               {
                  this.charaAdd.dou.dou_shitaHuku.s.tare.gotoAndPlay(2);
               }
            }
         }

         if(this.charaAdd.dou.dou_shitaHuku.s.eki.currentFrame <= 20 && _loc3_ <= 20)
         {
            this.charaAdd.dou.dou_shitaHuku.s.eki.gotoAndStop(_loc3_);
            try
            {
               this.charaAdd["ashi" + 1].thigh.actual.thigh.eki.gotoAndStop(_loc3_);
               this.charaAdd["ashi" + 0].thigh.actual.thigh.eki.gotoAndStop(_loc3_ + 20);
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            this.charaAdd.dou.dou_shitaHuku.s.eki.gotoAndStop(20);
            try
            {
               this.charaAdd["ashi" + 1].thigh.actual.thigh.eki.gotoAndStop(20);
               this.charaAdd["ashi" + 0].thigh.actual.thigh.eki.gotoAndStop(40);
            }
            catch(myError:Error)
            {
            }
         }

         this.charaAdd.dou.dou_shitaHuku.s.gotoAndStop(Dress_data.SujiData[_loc4_]["type"]);
         this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.s_btn0.mouseChildren = false;
         this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.s_btn1.mouseChildren = false;
         this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.s_btn2.mouseChildren = false;
         this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.s_btn0.buttonMode = true;
         this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.s_btn1.buttonMode = true;
         this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.s_btn2.buttonMode = true;
         var _loc6_:int = this.charaAdd.getChildIndex(this.charaAdd.vibrator_swap0);
         var _loc7_:int = this.charaAdd.getChildIndex(this.charaAdd.vibrator);

         if(_loc5_[0] >= 1 && _loc5_[1] >= 1)
         {
            if(_loc5_[0] == 2 && _loc5_[1] == 2)
            {
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.y = this.charaAdd.dou.dou_shitaHuku.s.color0_0.y = this.charaAdd.dou.dou_shitaHuku.s.eki.y = this.charaAdd.dou.dou_shitaHuku.s.chitu.y = Dress_data.SujiData[_loc4_]["_y"] - 18;
               this.charaAdd.dou.dou_shitaHuku.s.ana.y = -11;
               this.charaAdd.dou.dou_shitaHuku.s.tare.y = Dress_data.SujiData[_loc4_]["_y"] - 4;
               this.charaAdd.dou.dou_shitaHuku.s.eki.y = Dress_data.SujiData[_loc4_]["_y"] - 4;
               this.charaAdd.dou.dou_shitaHuku.s.maskMc.gotoAndStop(2);
               this.charaAdd.dou.dou_shitaHuku.s.sen.gotoAndStop(2);
               this.charaAdd.mosaic.y = SizeDataClass.bodyDefault_y["mosaic"] + Dress_data.SujiData[this.charaData["s"]["_menu"]]["_y"];

               if (this.charaData["TinSizeAuto"]["_check"]) {
                  this.charaAdd.dou.dou_shitaHuku.peni.y = -28;
                  this.charaAdd.peni.peni.y = -28;
               } else {
                  this.charaAdd.dou.dou_shitaHuku.peni.y = 0;
                  this.charaAdd.peni.peni.y = 0;
               }

               try
               {
                  this.charaAdd.vibrator.senMc.y = this.charaAdd.vibrator.maskMc.y = -325 + Dress_data.SujiData[this.charaData["s"]["_menu"]]["_vibrator"];
                  this.charaAdd.vibrator.vibrator.y = -18;
                  if(Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][7] != 2)
                  {
                     this.charaAdd.vibrator.maskMc.gotoAndStop(1);
                  }
                  if(_loc6_ > _loc7_)
                  {
                     this.charaAdd.swapChildren(this.charaAdd.vibrator,this.charaAdd.vibrator_swap0);
                  }
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.y = this.charaAdd.dou.dou_shitaHuku.s.color0_0.y = this.charaAdd.dou.dou_shitaHuku.s.eki.y = this.charaAdd.dou.dou_shitaHuku.s.chitu.y = Dress_data.SujiData[_loc4_]["_y"] - 30;
               this.charaAdd.dou.dou_shitaHuku.s.ana.y = -23;
               this.charaAdd.dou.dou_shitaHuku.s.tare.y = Dress_data.SujiData[_loc4_]["_y"] - 16;
               this.charaAdd.dou.dou_shitaHuku.s.eki.y = Dress_data.SujiData[_loc4_]["_y"] - 16;
               this.charaAdd.dou.dou_shitaHuku.s.maskMc.gotoAndStop(2);
               this.charaAdd.dou.dou_shitaHuku.s.sen.gotoAndStop(2);
               this.charaAdd.mosaic.y = SizeDataClass.bodyDefault_y["mosaic"] - 6 + Dress_data.SujiData[this.charaData["s"]["_menu"]]["_y"];
               if (this.charaData["TinSizeAuto"]["_check"]) {
                  this.charaAdd.dou.dou_shitaHuku.peni.y = -40;
                  this.charaAdd.peni.peni.y = -40;
               } else {
                  this.charaAdd.dou.dou_shitaHuku.peni.y = 0;
                  this.charaAdd.peni.peni.y = 0;
               }
               try
               {
                  this.charaAdd.vibrator.senMc.y = this.charaAdd.vibrator.maskMc.y = -330 + Dress_data.SujiData[this.charaData["s"]["_menu"]]["_vibrator"];
                  this.charaAdd.vibrator.vibrator.y = -23;
                  if(Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][7] != 2)
                  {
                     this.charaAdd.vibrator.maskMc.gotoAndStop(1);
                  }
                  if(_loc6_ > _loc7_)
                  {
                     this.charaAdd.swapChildren(this.charaAdd.vibrator,this.charaAdd.vibrator_swap0);
                  }
               }
               catch(myError:Error)
               {
               }
            }
         }
         else if(_loc5_[0] >= 1 || _loc5_[1] >= 1)
         {
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.y = this.charaAdd.dou.dou_shitaHuku.s.color0_0.y = this.charaAdd.dou.dou_shitaHuku.s.eki.y = this.charaAdd.dou.dou_shitaHuku.s.chitu.y = Dress_data.SujiData[_loc4_]["_y"] - 26;
            this.charaAdd.dou.dou_shitaHuku.s.ana.y = -19;
            this.charaAdd.dou.dou_shitaHuku.s.tare.y = Dress_data.SujiData[_loc4_]["_y"] - 12;
            this.charaAdd.dou.dou_shitaHuku.s.eki.y = Dress_data.SujiData[_loc4_]["_y"] - 12;
            this.charaAdd.dou.dou_shitaHuku.s.maskMc.gotoAndStop(2);
            this.charaAdd.dou.dou_shitaHuku.s.sen.gotoAndStop(2);
            this.charaAdd.mosaic.y = SizeDataClass.bodyDefault_y["mosaic"] - 4 + Dress_data.SujiData[this.charaData["s"]["_menu"]]["_y"];
            if (this.charaData["TinSizeAuto"]["_check"]) {
               this.charaAdd.dou.dou_shitaHuku.peni.y = -36;
               this.charaAdd.peni.peni.y = -36;
            } else {
               this.charaAdd.dou.dou_shitaHuku.peni.y = 0;
               this.charaAdd.peni.peni.y = 0;
            }
            try
            {
               this.charaAdd.vibrator.senMc.y = this.charaAdd.vibrator.maskMc.y = -328 + Dress_data.SujiData[this.charaData["s"]["_menu"]]["_vibrator"];
               this.charaAdd.vibrator.vibrator.y = -23;
               if(Vibrator_data.vibratorData[this.charaData["Vibrator"]["_menu"]][this.charaData["VibratorMove"]["_menu"]][this.charaData["VibratorMove"]["_count"]][7] != 2)
               {
                  this.charaAdd.vibrator.maskMc.gotoAndStop(1);
               }
               if(_loc6_ > _loc7_)
               {
                  this.charaAdd.swapChildren(this.charaAdd.vibrator,this.charaAdd.vibrator_swap0);
               }
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.y = this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.y = this.charaAdd.dou.dou_shitaHuku.s.chitu.y = Dress_data.SujiData[_loc4_]["_y"] + 2;
            this.charaAdd.dou.dou_shitaHuku.s.color0_0.y = this.charaAdd.dou.dou_shitaHuku.s.eki.y = Dress_data.SujiData[_loc4_]["_y"];
            this.charaAdd.dou.dou_shitaHuku.s.tare.y = 0;
            this.charaAdd.dou.dou_shitaHuku.s.eki.y = 0;
            this.charaAdd.dou.dou_shitaHuku.s.ana.y = 0;
            this.charaAdd.dou.dou_shitaHuku.s.maskMc.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.s.sen.gotoAndStop(1);
            this.charaAdd.mosaic.y = SizeDataClass.bodyDefault_y["mosaic"];
            if (this.charaData["TinSizeAuto"]["_check"]) {
               this.charaAdd.dou.dou_shitaHuku.peni.y = -8;
               this.charaAdd.peni.peni.y = -8;
            } else {
               this.charaAdd.dou.dou_shitaHuku.peni.y = 0;
               this.charaAdd.peni.peni.y = 0;
            }
            try
            {
               this.charaAdd.vibrator.senMc.y = this.charaAdd.vibrator.maskMc.y = -333 + Dress_data.SujiData[this.charaData["s"]["_menu"]]["_vibrator"];
               this.charaAdd.vibrator.vibrator.y = 0;
               this.charaAdd.vibrator.maskMc.gotoAndStop(2);
               if(_loc6_ < _loc7_)
               {
                  this.charaAdd.swapChildren(this.charaAdd.vibrator,this.charaAdd.vibrator_swap0);
               }
            }
            catch(myError:Error)
            {
            }
         }

         if(Main.r18Check)
         {
            this.charaData["s"]["_visible"][0] = false;
            this.charaAdd.dou.dou_shitaHuku.s.tare.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.ana.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.eki.visible = false;
            try
            {
               this.charaAdd["ashi" + 0].thigh.actual.thigh.eki.visible = false;
               this.charaAdd["ashi" + 1].thigh.actual.thigh.eki.visible = false;
            }
            catch(myError:Error)
            {
            }
         }

         if(this.charaData["s"]["_visible"][0])
         {
            this.charaAdd.mosaic.mosaic.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.chitu.visible = true;
            if(this.charaData["Body"]["_color0"][0] != this.charaData["s"]["_color0"][0])
            {
               this.charaAdd.dou.dou_shitaHuku.s.color0_0.visible = true;
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku.s.color0_0.visible = false;
            }
            this.charaAdd.dou.dou_shitaHuku.s.tare.visible = true;
            this.charaAdd.dou.dou_shitaHuku.s.eki.visible = true;
         }
         else
         {
            this.charaAdd.mosaic.mosaic.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage1.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_kage2.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color1.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main0_color2.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage1.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_kage2.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color1.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_main1_color2.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_color1.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida0_kage1.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_color1.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_hida1_kage1.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_clear.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.b_s_kuri.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.chitu.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.color0_0.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.tare.visible = false;
            this.charaAdd.dou.dou_shitaHuku.s.eki.visible = false;
         }
         
         if(param2 != "huku")
         {
            try
            {
               this.charaAdd.dou.dou_shitaHuku.SG.SG.suji.gotoAndStop(this.charaData["s"]["_menu"] + 1);
               new Chara_ColorClass(param1,"SG");
            }
            catch(myError:Error)
            {
            }
            new Huku_Pantu(param1,"Pantu");
            new Huku_Pantu(param1,"Spantu");
            new Chara_ColorClass(param1,"Pantu");
            new Chara_ColorClass(param1,"SG");
            new Chara_ColorClass(param1,"s");
         }
      }
   }
}
