package menu
{
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import parameter.Dress_data;
   import system.MeterPersentRibon;
   
   public class Free_HukidashiSet
   {
       
      
      private var clickTarget:String;
      
      public function Free_HukidashiSet(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Matrix = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc20_:Boolean = false;
         super();
         this.clickTarget = param2;

         var anyBlendErase = false;
         for (var i = 0; i < MenuClass.systemData["FreeHukidashiPlus"]["_visible"].length; i++) {
            if (MenuClass.systemData["FreeHukidashiPlus"]["_visible"][i] && (MenuClass.systemData["FreeHukidashiBlend" + i]["_menu"] == 10 || MenuClass.systemData["FreeHukidashiBlend" + i]["_menu"] == 11)) {
               anyBlendErase = true;
               break;
            }
         }

         if (anyBlendErase) {
            Chara_Class.chara_m.blendMode = BlendMode.LAYER;
         } else {
            Chara_Class.chara_m.blendMode = BlendMode.NORMAL;
         }

         if(MenuClass.systemData["FreeHukidashiPlus"]["_visible"][param1])
         {
            _loc12_ = MenuClass.systemData["FreeHukidashiBlend" + param1]["_menu"];
            if(Chara_Class.chara_m["Hukidashi" + param1] == undefined)
            {
               (_loc5_ = new MovieClip()).name = "Hukidashi" + param1;
               _loc5_ = new Chara_Loading.HukidashiClass();
               Chara_Class.chara_m.addChild(_loc5_);
               Chara_Class.chara_m["Hukidashi" + param1] = _loc5_;
               Chara_Class.chara_m["Hukidashi" + param1].name = "Hukidashi" + param1;
               Chara_Class.chara_m["Hukidashi" + param1].Num = param1;
               Chara_Class.chara_m["Hukidashi" + param1].mouseChildren = false;
               Chara_Class.chara_m["Hukidashi" + param1].mouseEnabled = false;
            }
            else
            {
               Chara_Class.chara_m["Hukidashi" + param1].visible = true;
            }
            Chara_Class.chara_m["Hukidashi" + param1].gotoAndStop(1);
            Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.gotoAndStop(MenuClass.systemData["FreeHukidashi" + param1]["_menu"] + 1);
            Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.gotoAndStop(MenuClass.systemData["FreeHukidashi" + param1]["_menu"] + 1);
            new Free_HukidashiMenuSet(param1);
            try
            {
               if(_loc12_ == 0)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.NORMAL;
               }
               else if(_loc12_ == 1)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.MULTIPLY;
               }
               else if(_loc12_ == 2)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.SCREEN;
               }
               else if(_loc12_ == 3)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.LIGHTEN;
               }
               else if(_loc12_ == 4)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.DARKEN;
               }
               else if(_loc12_ == 5)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.DIFFERENCE;
               }
               else if(_loc12_ == 6)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.ADD;
               }
               else if(_loc12_ == 7)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.SUBTRACT;
               }
               else if(_loc12_ == 8)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.OVERLAY;
               }
               else if(_loc12_ == 9)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.HARDLIGHT;
               }
               else if(_loc12_ == 10)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.ERASE;
               }
               else if(_loc12_ == 11)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.ALPHA;
               }
            }
            catch(myError:Error)
            {
               trace(myError.getStackTrace());
            }
            _loc13_ = new Matrix();
            new MeterPersentRibon(1.5,-1.5,100,"FreeHukidashiScaleB",param1);
            _loc13_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
            Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.transform.matrix = _loc13_;
            Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.transform.matrix = _loc13_;
            new MeterPersentRibon(0,1,100,"FreeHukidashiAlpha",param1);
            if(MeterPersentRibon.MeterPersentNum < 1 && _loc12_ == 0)
            {
               Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.LAYER;
            }
            else if(MeterPersentRibon.MeterPersentNum == 1 && _loc12_ == 0)
            {
               Chara_Class.chara_m["Hukidashi" + param1].blendMode = BlendMode.NORMAL;
            }
            Chara_Class.chara_m["Hukidashi" + param1].alpha = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(-406,1700,100,"FreeHukidashiX",param1);
            Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.x = MeterPersentRibon.MeterPersentNum;
            Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.x = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(360,0,100,"FreeHukidashiRotation",param1);
            _loc6_ = MeterPersentRibon.MeterPersentNum;
            Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.rotation = _loc6_;
            Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.rotation = _loc6_;
            new MeterPersentRibon(-55,0,100,"FreeHukidashiDepth",param1);
            _loc7_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(400 + _loc7_,-1000 + _loc7_,100,"FreeHukidashiY",param1);
            _loc8_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0,0.3,100,"FreeHukidashiDepth",param1);
            _loc9_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0.1 + _loc9_,10 + _loc9_,100,"FreeHukidashiScale",param1);
            _loc10_ = MeterPersentRibon.MeterPersentNum;
            if(MenuClass.systemData["LinkFreeHukidashiScale"]["_flag"] && MenuClass._nowTabName == "FreeHukidashiScale")
            {
               _loc11_ = _loc10_;
               MenuClass.systemData["FreeHukidashiScaleY" + param1]["_meter"] = MenuClass.systemData["FreeHukidashiScale" + param1]["_meter"];
            }
            else
            {
               new MeterPersentRibon(0.1 + _loc9_,10 + _loc9_,100,"FreeHukidashiScaleY",param1);
               _loc11_ = MeterPersentRibon.MeterPersentNum;
            }
            if(Dress_data.FreeHukidashiData[MenuClass.systemData["FreeHukidashi" + param1]["_menu"]]["slice9"] == 0)
            {
               Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.scaleX = _loc10_;
               Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.scaleX = _loc10_;
               Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.scaleY = _loc11_;
               Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.scaleY = _loc11_;
               if(MenuClass.systemData["FreeHukidashi" + param1]["_reversal"])
               {
                  if(Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.scaleX < 0)
                  {
                     Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.scaleX *= -1;
                     Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.scaleX *= -1;
                  }
               }
               else if(Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.scaleX > 0)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.scaleX *= -1;
                  Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.scaleX *= -1;
               }
            }
            else if(Dress_data.FreeHukidashiData[MenuClass.systemData["FreeHukidashi" + param1]["_menu"]]["slice9"] == 1)
            {
               Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.color0_0.scaleX = _loc10_;
               try
               {
                  Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.color1_0.scaleX = _loc10_;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.color2_0.scaleX = _loc10_;
               }
               catch(myError:Error)
               {
               }
               Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.sen.scaleX = _loc10_;
               Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.color0_0.scaleY = _loc11_;
               try
               {
                  Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.color1_0.scaleY = _loc11_;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.color2_0.scaleY = _loc11_;
               }
               catch(myError:Error)
               {
               }
               Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.sen.scaleY = _loc11_;
            }
            Chara_Class.chara_m["Hukidashi" + param1].Hukidashi.y = _loc8_;
            Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.y = _loc8_;
            if(MenuClass.systemData["FreeHukidashiLine" + param1]["_menu"] == 0)
            {
               Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.sen.gotoAndStop(15);
            }
            else
            {
               Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen.sen.gotoAndStop(MenuClass.systemData["FreeHukidashiLine" + param1]["_menu"]);
            }
            if(MenuClass.systemData["FreeHukidashiExtra" + param1]["_visible"][0])
            {
               Chara_Class.chara_m["Hukidashi" + param1].tuno_color.visible = true;
               Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.visible = true;
            }
            else
            {
               Chara_Class.chara_m["Hukidashi" + param1].tuno_color.visible = false;
               Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.visible = false;
            }
            Chara_Class.chara_m["Hukidashi" + param1].tuno_color.gotoAndStop(MenuClass.systemData["FreeHukidashiExtra" + param1]["_menu"] + 1);
            new MeterPersentRibon(-406,1700,100,"FreeHukidashiExtraX",param1);
            Chara_Class.chara_m["Hukidashi" + param1].tuno_color.x = MeterPersentRibon.MeterPersentNum;
            Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.x = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(360,0,100,"FreeHukidashiExtraRotation",param1);
            Chara_Class.chara_m["Hukidashi" + param1].tuno_color.rotation = MeterPersentRibon.MeterPersentNum;
            Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.rotation = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0.1 + _loc9_,10 + _loc9_,100,"FreeHukidashiExtraScale",param1);
            _loc10_ = MeterPersentRibon.MeterPersentNum;
            if(MenuClass.systemData["LinkFreeHukidashiExtraScale"]["_flag"] && MenuClass._nowTabName == "FreeHukidashiExtraScale")
            {
               _loc11_ = _loc10_;
               MenuClass.systemData["FreeHukidashiExtraScaleY" + param1]["_meter"] = MenuClass.systemData["FreeHukidashiExtraScale" + param1]["_meter"];
            }
            else
            {
               new MeterPersentRibon(0.1 + _loc9_,10 + _loc9_,100,"FreeHukidashiExtraScaleY",param1);
               _loc11_ = MeterPersentRibon.MeterPersentNum;
            }
            Chara_Class.chara_m["Hukidashi" + param1].tuno_color.scaleX = _loc10_;
            Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.scaleX = _loc10_;
            Chara_Class.chara_m["Hukidashi" + param1].tuno_color.scaleY = _loc11_;
            Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.scaleY = _loc11_;
            new MeterPersentRibon(400 + _loc7_,-1000 + _loc7_,100,"FreeHukidashiExtraY",param1);
            Chara_Class.chara_m["Hukidashi" + param1].tuno_color.y = MeterPersentRibon.MeterPersentNum;
            Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.y = MeterPersentRibon.MeterPersentNum;
            if(MenuClass.systemData["FreeHukidashiExtra" + param1]["_reversal"])
            {
               if(Chara_Class.chara_m["Hukidashi" + param1].tuno_color.scaleX < 0)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].tuno_color.scaleX *= -1;
                  Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.scaleX *= -1;
               }
            }
            else if(Chara_Class.chara_m["Hukidashi" + param1].tuno_color.scaleX > 0)
            {
               Chara_Class.chara_m["Hukidashi" + param1].tuno_color.scaleX *= -1;
               Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.scaleX *= -1;
            }
            Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.gotoAndStop(MenuClass.systemData["FreeHukidashiExtra" + param1]["_menu"] + 1);
            if(MenuClass.systemData["FreeHukidashiExtraLine" + param1]["_menu"] == 0)
            {
               Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.sen.gotoAndStop(15);
            }
            else
            {
               Chara_Class.chara_m["Hukidashi" + param1].tuno_sen.sen.gotoAndStop(MenuClass.systemData["FreeHukidashiExtraLine" + param1]["_menu"]);
            }
            _loc14_ = Chara_Class.chara_m["Hukidashi" + param1].getChildIndex(Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen);
            _loc15_ = Chara_Class.chara_m["Hukidashi" + param1].getChildIndex(Chara_Class.chara_m["Hukidashi" + param1].swapMc);
            if(Dress_data.FreeHukidashiData[MenuClass.systemData["FreeHukidashi" + param1]["_menu"]]["senDepth"] == 0)
            {
               if(_loc14_ > _loc15_)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].swapChildren(Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen,Chara_Class.chara_m["Hukidashi" + param1].swapMc);
               }
            }
            else if(Dress_data.FreeHukidashiData[MenuClass.systemData["FreeHukidashi" + param1]["_menu"]]["senDepth"] == 1)
            {
               if(_loc14_ < _loc15_)
               {
                  Chara_Class.chara_m["Hukidashi" + param1].swapChildren(Chara_Class.chara_m["Hukidashi" + param1].Hukidashi_sen,Chara_Class.chara_m["Hukidashi" + param1].swapMc);
               }
            }
            MenuClass.DepthMeter[param1 + 306] = MenuClass.systemData["FreeHukidashiDepth" + param1]["_meter"];
            try
            {
               new Chara_Depth2(param1 + 306,"Ymove",this.clickTarget);
            }
            catch(myError:Error)
            {
            }
            new Chara_ColorClass(0,"FreeHukidashi" + param1);
         }
         else
         {
            try
            {
               _loc20_ = true;
               _loc3_ = 0;
               while(_loc3_ <= 9)
               {
                  _loc16_ = MenuClass.systemData["txtFieldAdd" + _loc3_]["_add0"];
                  _loc18_ = (_loc17_ = Tab_AddCostumOpen.openAr[_loc16_][0]).substring(0,13);
                  if((_loc19_ = _loc17_.substring(13,14)) == String(param1) && _loc18_ == "FreeHukidashi")
                  {
                     Chara_Class.chara_m["Hukidashi" + param1].visible = false;
                     _loc20_ = false;
                     break;
                  }
                  _loc3_++;
               }
               if(_loc20_)
               {
                  _loc3_ = 0;
                  while(_loc3_ <= 98)
                  {
                     _loc16_ = MenuClass.systemData["LoadAdd" + _loc3_]["_add0"];
                     _loc18_ = (_loc17_ = Tab_AddCostumOpen.openAr[_loc16_][0]).substring(0,13);
                     if((_loc19_ = _loc17_.substring(13,14)) == String(param1) && _loc18_ == "FreeHukidashi")
                     {
                        Chara_Class.chara_m["Hukidashi" + param1].visible = false;
                        _loc20_ = false;
                        break;
                     }
                     _loc3_++;
                  }
               }
               if(_loc20_)
               {
                  Chara_Class.chara_m.removeChild(Chara_Class.chara_m["Hukidashi" + param1]);
                  Chara_Class.chara_m["Hukidashi" + param1] = null;
               }
               if(_loc20_)
               {
                  Chara_Class.chara_m.removeChild(Chara_Class.chara_m["Hukidashi" + param1]);
                  Chara_Class.chara_m["Hukidashi" + param1] = null;
                  if(param1 <= 9)
                  {
                     _loc3_ = 0;
                     while(_loc3_ <= 9)
                     {
                        _loc16_ = MenuClass.systemData["txtFieldAdd" + _loc3_]["_add0"];
                        _loc18_ = (_loc17_ = Tab_AddCostumOpen.openAr[_loc16_][0]).substring(0,13);
                        _loc19_ = _loc17_.substring(13,14);
                        if(MenuClass.systemData["txtFieldmenu"]["_visible"][_loc3_] && _loc18_ == "FreeHukidashi")
                        {
                           MenuClass.systemData["txtFieldmenu"]["_visible"][_loc3_] = false;
                           SystemText2.loadFc("txtFc",_loc3_,this.clickTarget);
                        }
                        _loc3_++;
                     }
                     _loc3_ = 0;
                     while(_loc3_ <= 98)
                     {
                        _loc16_ = MenuClass.systemData["LoadAdd" + _loc3_]["_add0"];
                        _loc18_ = (_loc17_ = Tab_AddCostumOpen.openAr[_loc16_][0]).substring(0,13);
                        _loc19_ = _loc17_.substring(13,14);
                        if(MenuClass.systemData["LoadPlus"]["_visible"][_loc3_] && _loc18_ == "FreeHukidashi")
                        {
                           MenuClass.systemData["LoadPlus"]["_visible"][_loc3_] = false;
                           new Tab_LoadURL("load",_loc3_);
                        }
                        _loc3_++;
                     }
                  }
               }
            }
            catch(myError:Error)
            {
            }
            MenuClass.DepthMeter[param1 + 306] = null;
            MenuClass.systemData["FreeHukidashi" + param1]["_depth"] = 10000;
         }
      }
   }
}
