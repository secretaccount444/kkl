package menu
{
   import parameter.Dress_data;
   import system.MeterPersent;
   
   public class Huku_TinEnter
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_TinEnter(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:String = null;
         var _loc19_:Boolean = false;
         var _loc20_:Object = null;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         if(this.charaData["Tin"]["_visible"][0] || this.charaData["Tama"]["_visible"][0])
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = false;
            _loc7_ = false;
            if(this.charaData["Zubon"]["_visible"][0])
            {
               _loc5_ = true;
               _loc4_ = true;
            }
            if(this.charaData["Pantu"]["_visible"][0] || this.charaData["Bura"]["_visible"][0] && Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["Pantu"] != 0 && this.charaData["Bura"]["_separate"] != 1)
            {
               _loc5_ = true;
               if(Dress_data.PantuData[this.charaData["Pantu"]["_menu"]]["vibrator"] == 0)
               {
                  _loc4_ = true;
               }
            }
            if(this.charaData["Nawa"]["_visible"][0] && !Dress_data.NawaData[this.charaData["Nawa"]["_menu"]]["mosaic"])
            {
               _loc5_ = true;
            }
            if(this.charaData["Tights"]["_visible"][0])
            {
               if(Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["vibrator"] == 0)
               {
                  _loc5_ = true;
                  _loc4_ = true;
               }
            }
            if(_loc5_)
            {
               _loc6_ = true;
               _loc7_ = true;
            }
            if(this.charaData["Tin"]["_depth"] != 0)
            {
               _loc5_ = false;
            }
            if(this.charaData["Tin"]["_depth"] == 2)
            {
               _loc6_ = false;
            }
         }
         if(this.charaData["Tin"]["_visible"][0])
         {
            if(this.charaData["Tin"]["_depth"] == 0)
            {
               _loc9_ = this.charaAdd.dou.dou_shitaHuku.peni.Peni;
            }
            else
            {
               _loc9_ = this.charaAdd.peni.peni.Peni;
            }
            if(this.charaData["Tin"]["_tClick"] >= 20)
            {
               if(!this.charaData["TinBokki"]["_check"] && this.charaData["TinManualAuto"]["_check"])
               {
                  if(_loc5_)
                  {
                     this.charaData["TinMove"]["_mode"] = 4;
                     _loc9_.Tin.gotoAndPlay("UpSwing2");
                  }
                  else
                  {
                     this.charaData["TinMove"]["_mode"] = 5;
                     _loc9_.Tin.gotoAndPlay("DownUp");
                  }
                  this.charaData["TinBokki"]["_check"] = true;
                  new Huku_TinSet(param1);
                  if(MenuClass._nowHeaderName == "Tin")
                  {
                     new Tab_SetClass();
                  }
               }
            }
            else if(this.charaData["Tin"]["_tClick"] <= 10)
            {
               if(this.charaData["TinBokki"]["_check"] && this.charaData["TinManualAuto"]["_check"])
               {
                  if(_loc5_)
                  {
                     this.charaData["TinMove"]["_mode"] = 4;
                     _loc9_.Tin.gotoAndPlay("UpSwing2");
                  }
                  else
                  {
                     this.charaData["TinMove"]["_mode"] = 5;
                     _loc9_.Tin.gotoAndPlay("UpDown");
                  }
                  this.charaData["TinBokki"]["_check"] = false;
                  new Huku_TinSet(param1);
                  if(MenuClass._nowHeaderName == "Tin")
                  {
                     new Tab_SetClass();
                  }
               }
            }

            _loc10_ = false;
            _loc11_ = false;
            if(_loc7_ && this.charaData["Tin"]["_depth"] != 0 && !this.charaData["TinBokki"]["_check"])
            {
               if(_loc4_)
               {
                  _loc10_ = true;
               }
            }
            try
            {
               _loc9_.Tin.Tin.TinSen.visible = _loc10_;
            }
            catch(e:Error)
            {
            }

            if(_loc7_ && (this.charaData["Tin"]["_depth"] == 1 || this.charaData["Tin"]["_depth"] == 2 && !this.charaData["Tama"]["_visible"][0]))
            {
               _loc11_ = true;
            }

            try
            {
               _loc9_.Tin.TinUp.sen.visible = _loc11_;
            }
            catch(e:Error)
            {
            }

            if(this.charaData["TinMove"]["_mode"] == 0)
            {
               if(_loc5_ || this.charaData["TinBokki"]["_check"])
               {
                  if(_loc9_.Tin.currentFrame != 101)
                  {
                     _loc9_.Tin.gotoAndStop(101);
                  }
               }
               else if(_loc9_.Tin.currentFrame != 1)
               {
                  _loc9_.Tin.gotoAndStop(1);
               }
            }

            if(this.charaData["TinManualAuto"]["_check"])
            {
               if(_loc5_)
               {
                  if(_loc9_.TamaIn.currentFrame == 2)
                  {
                     _loc9_.TamaIn.gotoAndStop(3);
                     _loc9_.Tin.gotoAndPlay("UpSwing2");
                     this.charaData["TinMove"]["_mode"] = 4;
                  }
               }
               else if(_loc9_.TamaIn.currentFrame == 3)
               {
                  _loc9_.TamaIn.gotoAndStop(2);
                  this.charaData["TamaMove"]["_mode"] = 1;
                  if(this.charaData["TinBokki"]["_check"])
                  {
                     _loc9_.Tin.gotoAndPlay("UpSwing2");
                     this.charaData["TinMove"]["_mode"] = 4;
                  }
                  else
                  {
                     _loc9_.Tin.gotoAndPlay("DownSwing2");
                     this.charaData["TinMove"]["_mode"] = 4;
                  }
               }

               if(this.charaData["TinMove"]["_mode"] == 1)
               {
                  if(_loc5_)
                  {
                     _loc9_.Tin.gotoAndPlay("UpClick");
                  }
                  else
                  {
                     _loc9_.Tin.gotoAndPlay("DownClick");
                  }
                  this.charaData["TinMove"]["_mode"] = 4;
               }
               else if(this.charaData["TinMove"]["_mode"] == 2)
               {
                  _loc9_.Tin.gotoAndPlay("UpClick");
                  this.charaData["TinMove"]["_mode"] = 4;
               }

               _loc18_ = _loc9_.Tin.currentLabel;
               if(this.charaData["TinMove"]["_mode"] == 5 && (_loc18_ == "DownUpEnd" || _loc18_ == "UpDownEnd"))
               {
                  this.charaData["TinMove"]["_mode"] = 4;
               }
               else if(this.charaData["TinMove"]["_mode"] >= 4 && (_loc18_ == "DownUpEnd2" || _loc18_ == "UpDownEnd2" || _loc18_ == "UpClickEnd" || _loc18_ == "DownClickEnd" || _loc18_ == "DownSwingEnd" || _loc18_ == "UpSwingEnd"))
               {
                  this.charaData["TinMove"]["_mode"] = 0;
               }
               
               if(this.charaData["Tin"]["_tClick"] > 0)
               {
                  this.charaData["Tin"]["_tClick"] -= 0.1;
               }
               else
               {
                  this.charaData["Tin"]["_tClick"] = 0;
               }

               if(this.charaData["TinSwing"]["_meter"] != 50)
               {
                  this.charaData["TinSwing"]["_meter"] = 50;
                  _loc9_.Tin.rotation = 0;
               }
            }
            else
            {
               if(_loc5_)
               {
                  _loc9_.TamaIn.gotoAndStop(3);
                  new MeterPersent(-60,60,"TinSwing",param1);
               }
               else
               {
                  _loc9_.TamaIn.gotoAndStop(2);
                  if(this.charaData["TinBokki"]["_check"])
                  {
                     new MeterPersent(-60,60,"TinSwing",param1);
                  }
                  else
                  {
                     new MeterPersent(60,-60,"TinSwing",param1);
                  }
               }
               _loc9_.Tin.rotation = MeterPersent.MeterPersentNum;
            }

            if(this.charaData["TinSizeAuto"]["_check"])
            {
               _loc9_.Tin.x = 0;
               _loc9_.Tin.y = 0;
            } else {
               new MeterPersent(-25,25,"TinOffsetX",param1);
               _loc9_.Tin.x = MeterPersent.MeterPersentNum;

               new MeterPersent(25,-25,"TinOffsetY",param1);
               _loc9_.Tin.y = MeterPersent.MeterPersentNum;
            }

            if(_loc9_.Tin.TinUp.x > 20)
            {
               if(_loc9_.Tin.TinUp.visible)
               {
                  _loc14_ = this.charaData["Tin"]["_menu"];
                  _loc15_ = this.charaData["TinKawa"]["_menu"];
                  _loc16_ = MenuClass.systemData["Mosaic"]["_menu"];
                  if(!this.charaData["TinBokki"]["_check"])
                  {
                     _loc17_ = Dress_data.TinData[_loc14_]["Kawa"] + Dress_data.TinKawaData[_loc15_]["Kawa"][0];
                  }
                  else
                  {
                     _loc17_ = Dress_data.TinData[_loc14_]["Kawa"] + Dress_data.TinKawaData[_loc15_]["Kawa"][1];
                  }
                  _loc12_ = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Peni_swap);
                  _loc13_ = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.peni);
                  _loc2_ = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.s);
                  _loc3_ = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.s_swap);
                  _loc9_.Tin.TinUp.visible = false;
                  _loc9_.Tin.TinUp.gotoAndStop(1);
                  _loc9_.Tin.Tin.visible = true;
                  _loc9_.Tin.Tin.gotoAndStop(_loc17_ + 1);
                  _loc9_.Tin.Tin.mosaic.mosaic.gotoAndStop(MenuClass.systemData["Mosaic"]["_menu"] + 1);
                  new Chara_ColorClass(param1,"Mosaic");
                  if(_loc13_ > _loc12_)
                  {
                     this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Peni_swap,this.charaAdd.dou.dou_shitaHuku.peni);
                  }
                  if(_loc2_ > _loc3_)
                  {
                     this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.s_swap,this.charaAdd.dou.dou_shitaHuku.s);
                  }
                  new Chara_ColorClass(param1,"Tin");
               }
            }
            else if(_loc9_.Tin.Tin.visible)
            {
               _loc14_ = this.charaData["Tin"]["_menu"];
               _loc15_ = this.charaData["TinKawa"]["_menu"];
               _loc16_ = MenuClass.systemData["Mosaic"]["_menu"];
               if(!this.charaData["TinBokki"]["_check"])
               {
                  _loc17_ = Dress_data.TinData[_loc14_]["Kawa"] + Dress_data.TinKawaData[_loc15_]["Kawa"][0];
               }
               else
               {
                  _loc17_ = Dress_data.TinData[_loc14_]["Kawa"] + Dress_data.TinKawaData[_loc15_]["Kawa"][1];
               }
               _loc12_ = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Peni_swap);
               _loc13_ = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.peni);
               _loc2_ = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.s);
               _loc3_ = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.s_swap);
               _loc9_.Tin.TinUp.visible = true;
               _loc9_.Tin.TinUp.gotoAndStop(_loc17_ + 1);
               _loc9_.Tin.TinUp.mosaic.mosaic.gotoAndStop(MenuClass.systemData["Mosaic"]["_menu"] + 1);
               new Chara_ColorClass(param1,"Mosaic");
               _loc9_.Tin.Tin.visible = false;
               _loc9_.Tin.Tin.gotoAndStop(1);
               _loc9_.Tin.mask = null;
               if(_loc13_ < _loc12_)
               {
                  this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Peni_swap,this.charaAdd.dou.dou_shitaHuku.peni);
               }
               if(this.charaData["Tama"]["_visible"][0])
               {
                  if(_loc2_ < _loc3_)
                  {
                     this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.s_swap,this.charaAdd.dou.dou_shitaHuku.s);
                  }
               }
               new Chara_ColorClass(param1,"Tin");
            }
            if(this.charaData["TinMove"]["_mode"] < 5)
            {
               new Huku_Tin(param1);
            }
            if(this.charaData["Tin"]["_depth"] == 0 && this.charaData["Bura"]["_visible"][0] && Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["Pantu"] != 0 && !Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["separateTin"] && this.charaData["Bura"]["_separate"] != 1)
            {
               _loc9_.Tin.visible = false;
            }
            else
            {
               _loc9_.Tin.visible = true;
            }
            
            try {
               _loc9_.Tin.Tin.mosaic.mosaic.visible = false;
            } catch (error) {}

            try {
               _loc9_.Tin.TinUp.mosaic.mosaic.visible = false;
            } catch (error) {}

            try {
               this.charaAdd.mosaic.mosaic.visible = false;
            } catch (error) {}
         }
         else
         {
            _loc2_ = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.s);
            _loc3_ = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.s_swap);
            if(_loc2_ > _loc3_)
            {
               this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.s_swap,this.charaAdd.dou.dou_shitaHuku.s);
            }
         }

         if(this.charaData["Tama"]["_visible"][0])
         {
            _loc19_ = false;
            if(_loc7_ && this.charaData["Tin"]["_depth"] == 2)
            {
               if(_loc4_)
               {
                  _loc19_ = true;
               }
            }

            var offset = 0;
            if(this.charaData["TinSizeAuto"]["_check"]) {
               if(this.charaData["Tin"]["_depth"] == 2)
               {
                  _loc20_ = this.charaAdd.peni.peni.Peni;
               }
               else
               {
                  _loc20_ = this.charaAdd.dou.dou_shitaHuku.peni.Peni;
               }
            } else {
               new MeterPersent(25,-25,"TinOffsetY",param1);
               offset = MeterPersent.MeterPersentNum;

               /* Match with Tin positioning above */
               if(this.charaData["Tin"]["_depth"] == 0)
               {
                  _loc20_ = this.charaAdd.dou.dou_shitaHuku.peni.Peni;
                  try {
                     this.charaAdd.peni.peni.Peni.Tama.visible = false;
                     this.charaAdd.peni.peni.Peni.TamaIn.visible = false;
                  } catch (err) {};
               }
               else
               {
                  _loc20_ = this.charaAdd.peni.peni.Peni;
                  try {
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.visible = false;
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.visible = false;
                  } catch (err) {};
               }
            }
            
            if(this.charaData["TinBokki"]["_check"])
            {
               _loc20_.Tama.y = 3 + offset;
            }
            else
            {
               _loc20_.Tama.y = 7 + offset;
            }

            if (this.charaData["TinSizeAuto"]["_check"]) {
               _loc20_.Tama.x = 0;
            } else {
               new MeterPersent(-25,25,"TinOffsetX",param1);
               _loc20_.Tama.x = MeterPersent.MeterPersentNum;
            }

            if(this.charaData["TamaMove"]["_mode"] == 2)
            {
               _loc20_.Tama.gotoAndPlay("TamaClick");
               this.charaData["TamaMove"]["_mode"] = 0;
            }
            else if(this.charaData["TamaMove"]["_mode"] == 1)
            {
               _loc20_.Tama.gotoAndPlay("Swing");
               this.charaData["TamaMove"]["_mode"] = 0;
            }

            if(_loc6_)
            {
               if(_loc20_.Tama.Tama.currentFrame != 1)
               {
                  _loc20_.Tama.visible = false;
                  _loc20_.Tama.Tama.gotoAndStop(1);
               }
               if(_loc20_.TamaIn.currentFrame != 2)
               {
                  _loc20_.TamaIn.visible = true;
                  _loc20_.TamaIn.gotoAndStop(2);
                  new Chara_ColorClass(param1,"Tama");
               }
            }
            else
            {
               if(_loc20_.Tama.Tama.currentFrame != this.charaData["Tama"]["_menu"] + 2)
               {
                  _loc20_.Tama.visible = true;
                  _loc20_.Tama.Tama.gotoAndStop(this.charaData["Tama"]["_menu"] + 2);
               }
               if(_loc20_.TamaIn.currentFrame != 1)
               {
                  _loc20_.TamaIn.visible = false;
                  _loc20_.TamaIn.gotoAndStop(1);
                  new Chara_ColorClass(param1,"Tama");
               }
            }

            try
            {
               this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.Tama.TamaSen.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.peni.peni.Peni.Tama.Tama.TamaSen.visible = _loc19_;
            }
            catch(myError:Error)
            {
            }
            if(this.charaData["Tin"]["_visible"][0])
            {
               try
               {
                  _loc20_.Tama.Tama.kage1_0.visible = true;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc20_.TamaIn.kage1_0.visible = true;
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  _loc20_.Tama.Tama.kage1_0.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  _loc20_.TamaIn.kage1_0.visible = false;
               }
               catch(myError:Error)
               {
               }
            }

            if (!this.charaData["TinSizeAuto"]["_check"]) {
               /* Match with Tin positioning above */
               if(this.charaData["Tin"]["_depth"] == 0)
               {
                  try {
                     this.charaAdd.peni.peni.Peni.Tama.visible = false;
                     this.charaAdd.peni.peni.Peni.TamaIn.visible = false;
                  } catch (err) {};
               }
               else
               {
                  try {
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.visible = false;
                     this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.visible = false;
                  } catch (err) {};
               }
            }
         }
         else if(this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.visible || this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.visible || this.charaAdd.peni.peni.Peni.Tama.visible || this.charaAdd.peni.peni.Peni.TamaIn.visible)
         {
            this.charaAdd.peni.peni.Peni.Tama.visible = false;
            this.charaAdd.peni.peni.Peni.TamaIn.visible = false;
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.visible = false;
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.visible = false;
            this.charaAdd.peni.peni.Peni.Tama.Tama.gotoAndStop(1);
            this.charaAdd.peni.peni.Peni.TamaIn.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.Tama.Tama.gotoAndStop(1);
            this.charaAdd.dou.dou_shitaHuku.peni.Peni.TamaIn.gotoAndStop(1);
         }
      }
   }
}
