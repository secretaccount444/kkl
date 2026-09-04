package menu
{
   import parameter.Dress_data;
   
   public class SetLinkColorClass
   {
       
      
      private var charaData:Object;
      
      public function SetLinkColorClass(param1:String)
      {
         var _loc2_:Boolean = false;
         super();
         this.charaData = MenuClass.charaData[MenuClass._nowCharaNum];
         if(param1 == "BodyPlus")
         {
            if(this.charaData["BodyPlus"]["_menu"] >= 1)
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["BodyPlusMeter"],false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["BodyPlusMeter"],true,-0.4,"link");
            }
         }
         else if(param1 == "Waist")
         {
            if(Dress_data.ObjData["Waist"][this.charaData["Waist"]["_menu"]]["hukin"] >= 1)
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["WaistAlpha"],false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["WaistAlpha"],true,-0.4,"link");
            }
         }
         else if(param1 == "UnderHair")
         {
            _loc2_ = this.charaData["UnderHair"]["_visible"][0];
            if(_loc2_)
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["UnderHairAlpha"],false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["UnderHairAlpha"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkDressSet")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["UnderwearSet"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "CharaDropShadow")
         {
            if(this.charaData["CharaDropShadow"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowIn"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowOut"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowHide"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowAlpha"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowStr"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowX"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkCharaDropShadow"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowY"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowRotation"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowDistance"],false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowIn"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowOut"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowHide"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowAlpha"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowStr"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowX"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkCharaDropShadow"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowY"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowRotation"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowDistance"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkCharaDropShadow")
         {
            if(this.charaData["CharaDropShadow"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowY"],true,-0.4,"link");
            }
         }
         else if(param1 == "CharaDropShadowOut")
         {
            if(this.charaData["CharaDropShadow"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowHide"],this.charaData[param1]["_check"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaDropShadowHide"],true,-0.4,"link");
            }
         }
         else if(param1 == "CharaBlur")
         {
            if(this.charaData["CharaBlur"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaBlurX"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkCharaBlur"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaBlurY"],false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaBlurX"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkCharaBlur"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaBlurY"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkCharaBlur")
         {
            if(this.charaData["CharaBlur"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaBlurY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaBlurY"],true,-0.4,"link");
            }
         }
         else if(param1 == "Nose")
         {
            if(this.charaData["Nose"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseScaleX"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkNoseScale"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseScaleY"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseHeight"],false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseScaleX"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkNoseScale"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseScaleY"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseHeight"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkNoseScale")
         {
            if(this.charaData["Nose"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseScaleY"],true,-0.4,"link");
            }
         }
         else if(param1 == "NoseShadow")
         {
            if(this.charaData["NoseShadow"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseShadowAlpha"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseShadowScaleX"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkNoseShadowScale"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseShadowScaleY"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseShadowHeight"],false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseShadowAlpha"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseShadowScaleX"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkNoseShadowScale"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseShadowScaleY"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseShadowHeight"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkNoseShadowScale")
         {
            if(this.charaData["NoseShadow"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseShadowScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["NoseShadowScaleY"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkMark")
         {
            if(this.charaData["MarkPlus"]["_visible"][MenuClass.systemData["MarkPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["MarkScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "MarkPlus")
         {
            _loc2_ = this.charaData["MarkPlus"]["_visible"][MenuClass.systemData["MarkPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["Mark"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["MarkRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["MarkY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["MarkX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["MarkScaleX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["MarkScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["MarkScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkMark"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["MarkAdd"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["MarkAlpha"],!_loc2_,-0.4,"link");

            if (_loc2_) {
               var slot = MenuClass.systemData["MarkPlus"]["_menu"];
               var selectedType = this.charaData["Mark" + slot]["_menu"];
               var selectedData = Dress_data.DressData["Mark" + slot][selectedType];
               var hasVary = "_varyA" in selectedData;
               new ColorFilterClass(MenuClass.tabMenuAdd["MarkVary"],!hasVary,-0.4,"link");
            } else {
               new ColorFilterClass(MenuClass.tabMenuAdd["MarkVary"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkHand")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["RightArm"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightArm2"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightHand"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightHand2"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightArmFreeRotation"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkAshi")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["Ashi2"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkBodyHeight")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["AshiHeight"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkEyeball")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["EyeballRight"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkEyeballScale")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["EyeballScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "EyeballLight")
         {
            if(this.charaData["EyeballLight"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["EyeballLightRotation"],false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["EyeballLightRotation"],true,-0.4,"link");
            }
         }
         else if(param1 == "defoEye")
         {
            _loc2_ = this.charaData["defoEye"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["defoEyeScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["defoEyeY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["defoEyeX"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkEmotionEye" || param1 == "LinkEmotionEyebrow")
         {
            this.fcEmotionManualAuto();
            if(!this.charaData["EmotionManualAuto"]["_check"])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["EmotionEyeRight"],MenuClass.systemData["LinkEmotionEye"]["_flag"],-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["EmotionEyebrowRight"],MenuClass.systemData["LinkEmotionEyebrow"]["_flag"],-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["EyebrowRotationRight"],MenuClass.systemData["LinkEmotionEyebrow"]["_flag"],-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["EyebrowMoveRight"],MenuClass.systemData["LinkEmotionEyebrow"]["_flag"],-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["EyebrowMoveHorizontalRight"],MenuClass.systemData["LinkEmotionEyebrow"]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "LinkEyeballWidth")
         {
            if(!this.charaData["EmotionManualAuto"]["_check"])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["EyeballWidthRight"],MenuClass.systemData["LinkEyeballWidth"]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["EyeballWidthRight"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkEyeballXMove")
         {
            if(!this.charaData["EmotionManualAuto"]["_check"])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["EyeballXMoveRight"],MenuClass.systemData["LinkEyeballXMove"]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["EyeballXMoveRight"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkEyeballYMove")
         {
            if(!this.charaData["EmotionManualAuto"]["_check"])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["EyeballYMoveRight"],MenuClass.systemData["LinkEyeballYMove"]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["EyeballYMoveRight"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkMouthWidth")
         {
            if(!this.charaData["EmotionManualAuto"]["_check"])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["MouthHeight"],MenuClass.systemData["LinkMouthWidth"]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["MouthHeight"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkSeihukuArm")
         {
            _loc2_ = this.charaData["Seihuku"]["_visible"][0];
            if(_loc2_)
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["SeihukuRightArm"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["SeihukuRightArm"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkVestArm")
         {
            _loc2_ = this.charaData["Vest"]["_visible"][0];
            if(_loc2_)
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["VestRightArm"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["VestRightArm"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkYsyatuArm")
         {
            _loc2_ = this.charaData["Ysyatu"]["_visible"][0];
            if(_loc2_)
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["YsyatuRightArm"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["YsyatuRightArm"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkTsyatuArm")
         {
            _loc2_ = this.charaData["Tsyatu"]["_visible"][0];
            if(_loc2_)
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["TsyatuRightArm"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["TsyatuRightArm"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkItem")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["Item1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "Bura")
         {
            if(Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["separate"] > 0)
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["Bura"].separate,false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["Bura"].separate,true,-0.4,"link");
            }
         }
         else if(param1 == "LinkBura")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["Pantu"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkNippleG")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["NippleGRight"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            new SetLinkColorClass("NippleGRight");
         }
         else if(param1 == "Zubon")
         {
            if(this.charaData["Zubon"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["ZubonAshi0"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkZubon"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["ZubonAshi1"],MenuClass.systemData["LinkZubon"]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["ZubonAshi0"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkZubon"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["ZubonAshi1"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkZubon")
         {
            if(this.charaData["Zubon"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["ZubonAshi1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "Kutu0")
         {
            if(this.charaData["Kutu0"]["_visible"][0])
            {
               if(!Dress_data.KutuData[this.charaData["Kutu0"]["_menu"]]["footSen"])
               {
                  new ColorFilterClass(MenuClass.tabMenuAdd["KutuLong0"],false,-0.4,"link");
               }
               else
               {
                  new ColorFilterClass(MenuClass.tabMenuAdd["KutuLong0"],true,-0.4,"link");
               }
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["KutuLong0"],true,-0.4,"link");
            }
         }
         else if(param1 == "Kutu1")
         {
            if(this.charaData["Kutu1"]["_visible"][0])
            {
               if(!Dress_data.KutuData[this.charaData["Kutu1"]["_menu"]]["footSen"])
               {
                  new ColorFilterClass(MenuClass.tabMenuAdd["KutuLong1"],MenuClass.systemData["LinkKutu"]["_flag"],-0.4,"link");
               }
               else
               {
                  new ColorFilterClass(MenuClass.tabMenuAdd["KutuLong1"],true,-0.4,"link");
               }
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["KutuLong1"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkKutu")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["Kutu1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["KutuLong1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkLegBand")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["LegBand1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkSocks")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["Socks1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkWristband")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["Wristband1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "Glove0")
         {
            if(this.charaData["Glove0"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["GloveLength0"],false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["GloveLength0"],true,-0.4,"link");
            }
         }
         else if(param1 == "Glove1")
         {
            if(this.charaData["Glove1"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["GloveLength1"],MenuClass.systemData["LinkGlove"]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["GloveLength1"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkGlove")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["Glove1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            if(this.charaData["Glove1"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["GloveLength1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["GloveLength1"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkBracelet")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["Bracelet1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkArmBracelet")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["ArmBracelet1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkElbowpad")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["Elbowpad1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "LinkArmband")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["Armband1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
         }
         else if(param1 == "Earring0")
         {
            if(this.charaData["Ear"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["Earring0"],false,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkEarring"],false,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["Earring0"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkEarring"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["Earring1"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkEarring")
         {
            if(this.charaData["Ear"]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["Earring1"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "LinkSideBurn")
         {
            new ColorFilterClass(MenuClass.tabMenuAdd["SideBurnRight"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            new SetLinkColorClass("SideBurnRight");
         }
         else if(param1 == "EmotionManualAuto")
         {
            this.fcEmotionManualAuto();
         }
         else if(param1 == "Tin")
         {
            _loc2_ = this.charaData["Tin"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["TinEx"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TinKawa"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TinSize"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["SG"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["SGSize"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TinManualAuto"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TinSizeAuto"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TinScaleX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TinScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TinOffsetX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TinOffsetY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TinBokki"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TinSwing"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "TinManualAuto")
         {
            if(this.charaData["Tin"]["_visible"][0])
            {
               _loc2_ = this.charaData["TinManualAuto"]["_check"];
               new ColorFilterClass(MenuClass.tabMenuAdd["TinBokki"],_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["TinSwing"],_loc2_,-0.4,"link");
            }
         }
         else if(param1 == "TinSizeAuto")
         {
            if(this.charaData["Tin"]["_visible"][0])
            {
               _loc2_ = this.charaData["TinSizeAuto"]["_check"];
               // new ColorFilterClass(MenuClass.tabMenuAdd["TinEx"],!_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["TinSize"],!_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["TinScaleX"],_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["TinScaleY"],_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["TinOffsetX"],_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["TinOffsetY"],_loc2_,-0.4,"link");
            }
         }
         else if(param1 == "Tama")
         {
            _loc2_ = this.charaData["Tama"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["TamaSize"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Nipple")
         {
            _loc2_ = this.charaData["Nipple"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["NippleSize"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["NippleHeight"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["NippleWidth"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Ear")
         {
            _loc2_ = this.charaData["Ear"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["EarScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["EarRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["EarX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["EarY"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Horn")
         {
            _loc2_ = this.charaData["Horn"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["HornScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HornY"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Tail")
         {
            _loc2_ = this.charaData["Tail"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["TailScale"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Hane")
         {
            _loc2_ = this.charaData["Hane"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["HaneScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HaneY"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "SG")
         {
            _loc2_ = this.charaData["SG"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["SGSize"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "NippleGLeft")
         {
            _loc2_ = this.charaData["NippleGLeft"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["NippleGLeftSize"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "NippleGRight")
         {
            _loc2_ = this.charaData["NippleGRight"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["NippleGRightSize"],!_loc2_,-0.4,"link");
            if(MenuClass.systemData["LinkNippleG"]["_flag"])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["NippleGRightSize"],true,-0.4,"link");
            }
         }
         else if(param1 == "Vibrator")
         {
            _loc2_ = this.charaData["Vibrator"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["VibratorScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["VibratorThrough"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["VibratorMove"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["VibratorSpeed"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Hair")
         {
            if(Dress_data.HairData[this.charaData["Hair"]["_menu"]]["_hage"] >= 2)
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["Bangs"],true,-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["Bangs"],false,-0.4,"link");
            }
         }
         else if(param1 == "HairBack")
         {
            _loc2_ = this.charaData["HairBack"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["HairBack_Height"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairBack_Width"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairBack_Y"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Bangs")
         {
            _loc2_ = this.charaData["Bangs"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["Bangs_Height"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "SideBurnLeft")
         {
            _loc2_ = this.charaData["SideBurnLeft"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["SideBurnLeft_Height"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["SideBurnLeft_x"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "SideBurnRight")
         {
            _loc2_ = this.charaData["SideBurnRight"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["SideBurnRight_Height"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["SideBurnRight_x"],!_loc2_,-0.4,"link");
            if(MenuClass.systemData["LinkSideBurn"]["_flag"])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["SideBurnRight_Height"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["SideBurnRight_x"],true,-0.4,"link");
            }
         }
         else if(param1 == "LinkHairExScale")
         {
            if(this.charaData["HairExPlus"]["_visible"][MenuClass.systemData["HairExPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["HairExScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
               new SetLinkColorClass("HairExScaleY");
            }
         }
         else if(param1 == "LinkHairExLine")
         {
            if(this.charaData["HairExPlus"]["_visible"][MenuClass.systemData["HairExPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["HairExLine"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "HairExPlus")
         {
            _loc2_ = this.charaData["HairExPlus"]["_visible"][MenuClass.systemData["HairExPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["HairEx"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairExRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairExRotationPlus"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairExY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairExX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairExScaleX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairExScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairExScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairExLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkHairExScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkHairExLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairExAdd"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["HairExAlpha"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkRibonScale")
         {
            if(this.charaData["RibonPlus"]["_visible"][MenuClass.systemData["RibonPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["RibonScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "LinkRibonLine")
         {
            if(this.charaData["RibonPlus"]["_visible"][MenuClass.systemData["RibonPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["RibonLine"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "RibonPlus")
         {
            _loc2_ = this.charaData["RibonPlus"]["_visible"][MenuClass.systemData["RibonPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["Ribon"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkRibonScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkRibonLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonAdd"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonAlpha"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonFineX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RibonFineY"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkFreeRibonScale")
         {
            if(MenuClass.systemData["FreeRibonPlus"]["_visible"][MenuClass.systemData["FreeRibonPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "LinkFreeRibonLine")
         {
            if(MenuClass.systemData["FreeRibonPlus"]["_visible"][MenuClass.systemData["FreeRibonPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonLine"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "FreeRibonPlus")
         {
            _loc2_ = MenuClass.systemData["FreeRibonPlus"]["_visible"][MenuClass.systemData["FreeRibonPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibon"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkFreeRibonLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkFreeRibonScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonDepth"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonAlpha"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonFineX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeRibonFineY"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "FreeHandPlus")
         {
            _loc2_ = MenuClass.systemData["FreeHandPlus"]["_visible"][MenuClass.systemData["FreeHandPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHand"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandAlpha"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandWidth"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandDepth"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandWrist"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandWristRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandItem"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandWristband"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandVest"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandFineY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHandFineX"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "BeltPlus")
         {
            _loc2_ = this.charaData["BeltPlus"]["_visible"][MenuClass.systemData["BeltPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["Belt"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltExtra"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkBeltScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkBeltLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltAlpha"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltFineX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BeltFineY"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkBeltScale")
         {
            if(this.charaData["BeltPlus"]["_visible"][MenuClass.systemData["BeltPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["BeltScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
               new SetLinkColorClass("BeltScaleY");
            }
         }
         else if(param1 == "LinkBeltLine")
         {
            if(this.charaData["BeltPlus"]["_visible"][MenuClass.systemData["BeltPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["BeltLine"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
               new SetLinkColorClass("BeltScaleY");
            }
         }
         else if(param1 == "FreeBeltPlus")
         {
            _loc2_ = MenuClass.systemData["FreeBeltPlus"]["_visible"][MenuClass.systemData["FreeBeltPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBelt"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltExtra"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkFreeBeltScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkFreeBeltLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltDepth"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltFineX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltFineY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltAlpha"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkFreeBeltScale")
         {
            if(MenuClass.systemData["FreeBeltPlus"]["_visible"][MenuClass.systemData["FreeBeltPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
               new SetLinkColorClass("FreeBeltScaleY");
            }
         }
         else if(param1 == "LinkFreeBeltLine")
         {
            if(MenuClass.systemData["FreeBeltPlus"]["_visible"][MenuClass.systemData["FreeBeltPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeBeltLine"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
               new SetLinkColorClass("FreeBeltScaleY");
            }
         }
         else if(param1 == "FreeChairPlus")
         {
            _loc2_ = MenuClass.systemData["FreeChairPlus"]["_visible"][MenuClass.systemData["FreeChairPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChair"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairExtra"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkFreeChairScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairDepth"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairFineX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairFineY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairAlpha"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkFreeChairScale")
         {
            if(MenuClass.systemData["FreeChairPlus"]["_visible"][MenuClass.systemData["FreeChairPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeChairLine"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "FreeFlagPlus")
         {
            _loc2_ = MenuClass.systemData["FreeFlagPlus"]["_visible"][MenuClass.systemData["FreeFlagPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeFlag"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeFlagExtra"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeFlagRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeFlagY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeFlagX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeFlagScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeFlagScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeFlagScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkFreeFlagScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeFlagDepth"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkFreeFlagScale")
         {
            if(MenuClass.systemData["FreeFlagPlus"]["_visible"][MenuClass.systemData["FreeFlagPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeFlagScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
               new SetLinkColorClass("FreeFlagScaleY");
            }
         }
         else if(param1 == "FreeHukidashiPlus")
         {
            _loc2_ = MenuClass.systemData["FreeHukidashiPlus"]["_visible"][MenuClass.systemData["FreeHukidashiPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashi"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiAlpha"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiBlend"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtra"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkFreeHukidashiScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiDepth"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraLine"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkFreeHukidashiExtraScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraRotation"],!_loc2_,-0.4,"link");
            if(MenuClass.systemData["FreeHukidashiBlend" + MenuClass.systemData["FreeHukidashiPlus"]["_menu"]]["_menu"] > 11)
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiLine"],true,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiDepth"],true,-0.4,"link");
            }
         }
         else if(param1 == "FreeHukidashiExtra")
         {
            if(MenuClass.systemData["FreeHukidashiPlus"]["_visible"][MenuClass.systemData["FreeHukidashiPlus"]["_menu"]])
            {
               _loc2_ = MenuClass.systemData["FreeHukidashiExtra" + MenuClass.systemData["FreeHukidashiPlus"]["_menu"]]["_visible"][0];
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraLine"],!_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraX"],!_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraY"],!_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraScale"],!_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["LinkFreeHukidashiExtraScale"],!_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraScaleY"],!_loc2_,-0.4,"link");
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraRotation"],!_loc2_,-0.4,"link");
               if(MenuClass.systemData["FreeHukidashiBlend" + MenuClass.systemData["FreeHukidashiPlus"]["_menu"]]["_menu"] > 9)
               {
                  new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraLine"],true,-0.4,"link");
               }
            }
         }
         else if(param1 == "LinkFreeHukidashiScale")
         {
            if(MenuClass.systemData["FreeHukidashiPlus"]["_visible"][MenuClass.systemData["FreeHukidashiPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
               new SetLinkColorClass("FreeHukidashiScaleY");
            }
         }
         else if(param1 == "LinkFreeHukidashiExtraScale")
         {
            if(MenuClass.systemData["FreeHukidashiPlus"]["_visible"][MenuClass.systemData["FreeHukidashiPlus"]["_menu"]] && MenuClass.systemData["FreeHukidashiExtra" + MenuClass.systemData["FreeHukidashiPlus"]["_menu"]]["_visible"][0])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["FreeHukidashiExtraScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
               new SetLinkColorClass("FreeHukidashiExtraScaleY");
            }
         }
         else if(param1 == "Seihuku")
         {
            _loc2_ = this.charaData["Seihuku"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["SeihukuLeftArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkSeihukuArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["SeihukuRightArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["SeihukuBreastOption"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["SeihukuDouOption"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Vest")
         {
            _loc2_ = this.charaData["Vest"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["VestDou"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["VestSkirt"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["VestLeftArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkVestArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["VestRightArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["VestBreastOption"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["VestDouOption"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Ysyatu")
         {
            _loc2_ = this.charaData["Ysyatu"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["YsyatuOption"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["YsyatuDou"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["YsyatuSkirt"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["YsyatuLeftArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkYsyatuArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["YsyatuRightArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["YsyatuBreastOption"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["YsyatuDouOption"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Tsyatu")
         {
            _loc2_ = this.charaData["Tsyatu"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["TsyatuDou"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TsyatuSkirt"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TsyatuLeftArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkTsyatuArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TsyatuRightArm"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TsyatuBreastOption"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["TsyatuDouOption"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "Megane")
         {
            _loc2_ = this.charaData["Megane"]["_visible"][0];
            new ColorFilterClass(MenuClass.tabMenuAdd["MeganeY"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "BreastManualAuto")
         {
            _loc2_ = this.charaData["BreastManualAuto"]["_check"];
            new ColorFilterClass(MenuClass.tabMenuAdd["BreastLeft"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BreastRight"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["NippleLeft"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["NippleRight"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["Breast_Left_Up"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["Breast_Right_Up"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["Breast_Left_Sayuu"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["Breast_Right_Sayuu"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["Nipple_Left_Up"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["Nipple_Right_Up"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["Nipple_Left_Sayuu"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["Nipple_Right_Sayuu"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "CharaLoadPlus")
         {
            _loc2_ = this.charaData["CharaLoadPlus"]["_visible"][MenuClass.systemData["CharaLoadPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadAdd"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadAlpha"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLinkLoadScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadReversalDepth"],!_loc2_,-0.4,"link");
            try
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadSwfColor"],!_loc2_,-0.4,"link");
            }
            catch(myError:Error)
            {
            }
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadFineX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadFineY"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "CharaLinkLoadScale")
         {
            _loc2_ = this.charaData["CharaLoadPlus"]["_visible"][MenuClass.systemData["CharaLoadPlus"]["_menu"]];
            if(this.charaData["CharaLoadPlus"]["_visible"][MenuClass.systemData["CharaLoadPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["CharaLoadScaleY"],!_loc2_,-0.4,"link");
            }
         }
         else if(param1 == "LoadPlus")
         {
            _loc2_ = MenuClass.systemData["LoadPlus"]["_visible"][MenuClass.systemData["LoadPlus"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadAdd"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadAlpha"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinkLoadScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadSize"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadReversalDepth"],!_loc2_,-0.4,"link");
            try
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["LoadSwfColor"],!_loc2_,-0.4,"link");
            }
            catch(myError:Error)
            {
            }
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadFineX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LoadFineY"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkLoadScale")
         {
            _loc2_ = MenuClass.systemData["LoadPlus"]["_visible"][MenuClass.systemData["LoadPlus"]["_menu"]];
            if(MenuClass.systemData["LoadPlus"]["_visible"][MenuClass.systemData["LoadPlus"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["LoadScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
            else
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["LoadScaleY"],!_loc2_,-0.4,"link");
            }
         }
         else if(param1 == "Background")
         {
            if(Dress_data.ObjData["Background"][Dress_data.menuCustom["Background"][Dress_data.menuCustomNum[0]["Background"]]]["wall"] != 0)
            {
               _loc2_ = true;
            }
            else
            {
               _loc2_ = false;
            }
            new ColorFilterClass(MenuClass.tabMenuAdd["BgFloor"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BgY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["BgFront"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "txtFieldmenu")
         {
            _loc2_ = MenuClass.systemData["txtFieldmenu"]["_visible"][MenuClass.systemData["txtFieldmenu"]["_menu"]];
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["FontType"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldLeading"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldLetter"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldBoxScaleX"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldBoxScaleY"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldWidth"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldRotation"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldTateYoko"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldFormatAlign"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldAlpha"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["LinktxtFieldBoxScale"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldScaleB"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldAdd"],!_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldDepth"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "LinktxtFieldBoxScale")
         {
            if(MenuClass.systemData["txtFieldmenu"]["_visible"][MenuClass.systemData["txtFieldmenu"]["_menu"]])
            {
               new ColorFilterClass(MenuClass.tabMenuAdd["txtFieldBoxScaleY"],MenuClass.systemData[param1]["_flag"],-0.4,"link");
            }
         }
         else if(param1 == "FullScreen" || param1 == "StoryFullScreen")
         {
            _loc2_ = MenuClass.systemData["FullScreen"]["_check"];
            new ColorFilterClass(MenuClass.tabMenuAdd["CameraJPG"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["CameraPNG"],_loc2_,-0.4,"link");
         }
         else if(param1 == "URLLocal")
         {
            _loc2_ = MenuClass.systemData["URLLocal"]["_check"];
            new ColorFilterClass(MenuClass.tabMenuAdd["URLText"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "CharaURLLocal")
         {
            _loc2_ = MenuClass.systemData["CharaURLLocal"]["_check"];
            new ColorFilterClass(MenuClass.tabMenuAdd["CharaURLText"],!_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkThighSettings")
         {
            _loc2_ = MenuClass.systemData["LinkThighSettings"]["_flag"];
            new ColorFilterClass(MenuClass.tabMenuAdd["RightThighRotation"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightThighScaleX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightThighScaleY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightThighOffsetX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightThighOffsetY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightThighVisible"],_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkLegSettings")
         {
            _loc2_ = MenuClass.systemData["LinkLegSettings"]["_flag"];
            new ColorFilterClass(MenuClass.tabMenuAdd["RightLegRotation"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightLegScaleX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightLegScaleY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightLegOffsetX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightLegOffsetY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightLegVisible"],_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkFootSettings")
         {
            _loc2_ = MenuClass.systemData["LinkFootSettings"]["_flag"];
            new ColorFilterClass(MenuClass.tabMenuAdd["RightFootRotation"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightFootScaleX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightFootScaleY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightFootOffsetX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightFootOffsetY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightFootVisible"],_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkUpperArmSettings")
         {
            _loc2_ = MenuClass.systemData["LinkUpperArmSettings"]["_flag"];
            new ColorFilterClass(MenuClass.tabMenuAdd["RightThighRotation"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightUpperArmScaleX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightUpperArmScaleY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightUpperArmOffsetX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightUpperArmOffsetY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightUpperArmVisible"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightShoulderVisible"],_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkArmSettings")
         {
            _loc2_ = MenuClass.systemData["LinkArmSettings"]["_flag"];
            new ColorFilterClass(MenuClass.tabMenuAdd["RightArmScaleX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightArmScaleY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightArmOffsetX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightArmOffsetY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightArmVisible"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightArmFlip"],_loc2_,-0.4,"link");
         }
         else if(param1 == "LinkHandSettings")
         {
            _loc2_ = MenuClass.systemData["LinkHandSettings"]["_flag"];
            new ColorFilterClass(MenuClass.tabMenuAdd["RightFootRotation"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightHandScaleX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightHandScaleY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightHandOffsetX"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightHandOffsetY"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightHandVisible"],_loc2_,-0.4,"link");
            new ColorFilterClass(MenuClass.tabMenuAdd["RightHandFlip"],_loc2_,-0.4,"link");
         }
      }
      
      private function fcEmotionManualAuto() : void
      {
         var _loc1_:Boolean = this.charaData["EmotionManualAuto"]["_check"];
         new ColorFilterClass(MenuClass.tabMenuAdd["EyeOption"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["ESituation"],!_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["Ahegao"],!_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["KandoSet"],!_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["NamidaSet"],!_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["ikiSet"],!_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EmotionEyeLeft"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["LinkEmotionEye"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EmotionEyeRight"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["LinkEyeballXMove"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EyeballXMove"],_loc1_,-0.4,"link");
         new SetLinkColorClass("LinkEyeballXMove");
         new ColorFilterClass(MenuClass.tabMenuAdd["LinkEyeballYMove"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EyeballYMove"],_loc1_,-0.4,"link");
         new SetLinkColorClass("LinkEyeballYMove");
         new ColorFilterClass(MenuClass.tabMenuAdd["LinkEyeballWidth"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EyeballWidth"],_loc1_,-0.4,"link");
         new SetLinkColorClass("LinkEyeballWidth");
         new ColorFilterClass(MenuClass.tabMenuAdd["EmotionEyebrowLeft"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EyebrowRotationLeft"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EyebrowMoveLeft"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["LinkEmotionEyebrow"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EmotionEyebrowRight"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EyebrowRotationRight"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EyebrowMoveRight"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EyebrowMoveHorizontalLeft"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EyebrowMoveHorizontalRight"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["EmotionMouth"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["MouthYMove"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["MouthWidth"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["MouthHeight"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["MouthXMove"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["MouthRotation"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["MouthSen"],_loc1_,-0.4,"link");
         new ColorFilterClass(MenuClass.tabMenuAdd["LinkMouthWidth"],_loc1_,-0.4,"link");
         new SetLinkColorClass("LinkMouthWidth");
      }
   }
}
