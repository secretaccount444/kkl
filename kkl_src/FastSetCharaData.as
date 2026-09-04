package {
    import menu.SetClass;
    import menu.Chara_s;
    import menu.Hair_Class;
    import menu.Chara_Waist;
    import menu.Tab_LoadURL2;
    import menu.Hair_HairExSet;
    import menu.Huku_BeltSet;
    import menu.Huku_RibonSet;
    import menu.Huku_MarkSet;

    public class FastSetCharaData {
        public static var SIMPLE_MAPPING: Object = {
            "Xmove": [["Xmove", "move"]],
            "Ymove": [["Ymove", null]],
            "Rmove": [["Rmove", null]],
            "Jump": [["Jump", null]],
            "Head": [["Head", "move"]],
            "BodySize": [["BodyYMove", null], ["BodyHeight", "move"]],
            "BodyYMove": [["BodyYMove", null]],
            "BodyHeight": [["BodyHeight", "move"]],
            "AshiHeight": [["BodyHeight", "move"]],
            "douHeight": [["BodyHeight", "move"]],
            "BodyWidth": [["BodyWidth", "move"]],
            "ShoulderWidth": [["ShoulderWidth", "move"]],
            "HipWidth": [["HipWidth", "move"]],
            "AshiWidth": [["HipWidth", "move"]],
            "ContourWidth": [["ContourWidth", "move"]],
            "ContourHeight": [["ContourHeight", "move"]],
            "HeadScale": [["HeadScale", "move"]],
            "Heso": [["Heso", "move"]],
            "Breast": [["Breast", "move"]],
            "Ashi": [["Ashi", "move"]],
            "Ashi2": [["Ashi", "move"]],
            "LeftArm": [["LeftArm", "move"]],
            "LeftArm2": [["LeftArm", "move"]],
            "LeftHand": [["LeftArm", "move"]],
            "LeftHand2": [["LeftArm", "move"]],
            "RightArm": [["LeftArm", "move"]],
            "RightArm2": [["LeftArm", "move"]],
            "RightHand": [["LeftArm", "move"]],
            "RightHand2": [["LeftArm", "move"]],
            "HandWidth": [["LeftArm", "move"]],
            "Bura": [["Bura", "move"]],
            "Pantu": [["Pantu", "move"]],
            "Nawa": [["Nawa", "move"]],
            "NippleGLeft": [["NippleGLeft", "move"]],
            "NippleGLeftSize": [["NippleGLeftSize", "move"]],
            "NippleGRight": [["NippleGRight", "move"]],
            "NippleGRightSize": [["NippleGRightSize", "move"]],
            "Vibrator": [["Vibrator", "move"]],
            "VibratorMove": [["Vibrator", "move"]],
            "VibratorSpeed": [["Vibrator", "move"]],
            "VibratorScale": [["Vibrator", "move"]],
            "SG": [["SG", "move"]],
            "SGSize": [["SGSize", "move"]],
            "Socks0": [["Socks0", "huku"]],
            "Socks1": [["Socks1", "huku"]],
            "Tights": [["Tights", "move"]],
            "NippleSize": [["NippleSize", "move"]],
            "NippleHeight": [["NippleHeight", "move"]],
            "NippleWidth": [["NippleWidth", "move"]],
            "Shadow": [["Shadow", "move"]],
            "CharaDropShadow": [["CharaDropShadow", "move"]],
            "CharaDropShadowIn": [["CharaDropShadow", "move"]],
            "CharaDropShadowOut": [["CharaDropShadow", "move"]],
            "CharaDropShadowHide": [["CharaDropShadow", "move"]],
            "CharaDropShadowAlpha": [["CharaDropShadow", "move"]],
            "CharaDropShadowStr": [["CharaDropShadow", "move"]],
            "CharaDropShadowX": [["CharaDropShadow", "move"]],
            "CharaDropShadowY": [["CharaDropShadow", "move"]],
            "CharaDropShadowRotation": [["CharaDropShadow", "move"]],
            "CharaDropShadowDistance": [["CharaDropShadow", "move"]],
            "CharaBlur": [["CharaBlur", "move"]],
            "CharaBlurX": [["CharaBlur", "move"]],
            "CharaBlurY": [["CharaBlur", "move"]],
            "Contour": [["Contour", "move"]],
            "Ear": [["Ear", "move"]],
            "EarScale": [["EarScale", "move"]],
            "EarRotation": [["EarRotation", "move"]],
            "EarX": [["EarX", "move"]],
            "EarY": [["EarY", "move"]],
            "Nose": [["Nose", "move"]],
            "NoseHeight": [["NoseHeight", "move"]],
            "NoseScaleX": [["NoseScaleX", "move"]],
            "NoseScaleY": [["NoseScaleY", "move"]],
            "NoseShadow": [["NoseShadow", "move"]],
            "NoseShadowAlpha": [["NoseShadowAlpha", "move"]],
            "NoseShadowHeight": [["NoseShadowHeight", "move"]],
            "NoseShadowScaleX": [["NoseShadowScaleX", "move"]],
            "NoseShadowScaleY": [["NoseShadowScaleY", "move"]],
            "Body": [["Body", null]],
            "BodyPlus": [["BodyPlus", "move"]],
            "BodyPlusMeter": [["BodyPlus", "move"]],
            "BodyAlpha": [["BodyAlpha", "move"]],
            "NeckHeight": [["NeckHeight", "move"]],
            "Hiyake": [["Hiyake", "move"]],
            "Nipple": [["Nipple", "move"]],
            "TamaSize": [["TamaSize", "move"]],
            "Bangs": [["Bangs", "move"]],
            "Bangs_Height": [["Bangs", "move"]],
            "HairBack": [["HairBack", "move"]],
            "HairBack_Height": [["HairBack", "move"]],
            "SideBurnLeft": [["SideBurnLeft", "move"]],
            "SideBurnLeft_Height": [["SideBurnLeft", "move"]],
            "SideBurnLeft_x": [["SideBurnLeft", "move"]],
            "SideBurnRight": [["SideBurnRight", "move"]],
            "SideBurnRight_Height": [["SideBurnRight", "move"]],
            "SideBurnRight_x": [["SideBurnRight", "move"]],
            // "HairExPlus": [["HairExPlus", "move"]],
            // "HairEx": [["HairExPlus", "move"]],
            // "HairExScaleX": [["HairExPlus", "move"]],
            // "HairExScaleY": [["HairExPlus", "move"]],
            // "HairExScaleB": [["HairExPlus", "move"]],
            // "HairExLine": [["HairExPlus", "move"]],
            // "HairExRotation": [["HairExPlus", "move"]],
            // "HairExRotationPlus": [["HairExPlus", "move"]],
            // "HairExX": [["HairExPlus", "move"]],
            // "HairExY": [["HairExPlus", "move"]],
            "FaceOption": [["FaceOption", "move"]],
            "UnderHair": [["UnderHair", "move"], ["UnderHairAlpha", "move"]],
            "UnderHairAlpha": [["UnderHair", "move"], ["UnderHairAlpha", "move"]],
            "Eyebrow": [["Eyebrow", null]],
            "EyebrowY": [["EyebrowY", null]],
            "EyebrowRotation": [["EyebrowY", null]],
            "EyeballLeft": [["EyeballLeft", "move"]],
            "EyeballRight": [["EyeballRight", "move"]],
            "EyeballScale": [["EyeballScale", "move"]],
            "EyeballScaleY": [["EyeballScale", "move"]],
            "EmotionEyeLeft": [["EyeballScale", "move"]],
            "EmotionEyeRight": [["EyeballScale", "move"]],
            "EyeballLight": [["EyeballLight", "move"]],
            "EyeballLightRotation": [["EyeballLightRotation", "move"]],
            "Eye": [["Eye", "move"]],
            "EyeY": [["EyeY", "move"]],
            "EyeX": [["EyeX", "move"]],
            "EyeScaleX": [["EyeScaleX", "move"]],
            "EyeScaleY": [["EyeScaleX", "move"]],
            "EyeRotation": [["EyeRotation", "move"]],
            "Eyelib": [["Eyelib", "move"]],
            "Eyelash": [["Eyelash", "move"]],
            "Lowerlash": [["Lowerlash", "move"]],
            "EmotionOption": [["EmotionOption", "move"]],
            "EyeOption": [["EyeOption", "move"]],
            "Hukidashi": [["Hukidashi", "move"]],
            "defoEye": [["defoEye", "move"]],
            "defoEyeScale": [["defoEyeScale", "move"]],
            "defoEyeX": [["defoEyeX", "move"]],
            "defoEyeY": [["defoEyeY", "move"]],
            "Hoho": [["Hoho", "move"]],
            "HeartPlus": [["HeartPlus", "move"]],
            "HeartMinus": [["HeartMinus", "move"]],
            "MouthY": [["MouthY", "move"]],
            "MouthYMove": [["MouthHeight", "move"]],
            "MouthHeight": [["MouthHeight", "move"]],
            "MouthWidth": [["MouthHeight", "move"]],
            "MouthScale": [["MouthHeight", "move"]],
            "MouthXMove": [["MouthHeight", "move"]],
            "MouthRotation": [["MouthHeight", "move"]],
            "EmotionMouth": [["EmotionMouth", "move"]],
            "EyeballXMove": [["EyeballXMove", "move"]],
            "EyeballYMove": [["EyeballXMove", "move"]],
            "EyeballWidth": [["EyeballXMove", "move"]],
            "EmotionEyebrowLeft": [["EmotionEyebrowLeft", null]],
            "EyebrowRotationLeft": [["EmotionEyebrowLeft", null]],
            "EyebrowMoveLeft": [["EmotionEyebrowLeft", null]],
            "EmotionEyebrowRight": [["EmotionEyebrowRight", null]],
            "EyebrowRotationRight": [["EmotionEyebrowRight", null]],
            "EyebrowMoveRight": [["EmotionEyebrowRight", null]],
            "Seihuku": [["Seihuku", "move"]],
            "SeihukuLeftArm": [["Seihuku", "move"]],
            "SeihukuRightArm": [["Seihuku", "move"]],
            "SeihukuBreastOption": [["Seihuku", "move"]],
            "SeihukuDouOption": [["Seihuku", "move"]],
            "Ysyatu": [["Ysyatu", "move"]],
            "YsyatuDou": [["Ysyatu", "move"]],
            "YsyatuSkirt": [["Ysyatu", "move"]],
            "YsyatuLeftArm": [["Ysyatu", "move"]],
            "YsyatuRightArm": [["Ysyatu", "move"]],
            "YsyatuOption": [["Ysyatu", "move"]],
            "YsyatuBreastOption": [["Ysyatu", "move"]],
            "YsyatuDouOption": [["Ysyatu", "move"]],
            "Tsyatu": [["Tsyatu", "move"]],
            "TsyatuDou": [["Tsyatu", "move"]],
            "TsyatuSkirt": [["Tsyatu", "move"]],
            "TsyatuLeftArm": [["Tsyatu", "move"]],
            "TsyatuRightArm": [["Tsyatu", "move"]],
            "TsyatuBreastOption": [["Tsyatu", "move"]],
            "TsyatuDouOption": [["Tsyatu", "move"]],
            "Vest": [["Vest", "move"]],
            "VestDou": [["Vest", "move"]],
            "VestSkirt": [["Vest", "move"]],
            "VestLeftArm": [["Vest", "move"]],
            "VestRightArm": [["Vest", "move"]],
            "VestBreastOption": [["Vest", "move"]],
            "VestDouOption": [["Vest", "move"]],
            "Item0": [["Item0", "huku"]],
            "Item1": [["Item1", "huku"]],
            "Skirt": [["Skirt", null]],
            "Zubon": [["Zubon", null]],
            "ZubonAshi0": [["ZubonAshi0", "move"]],
            "ZubonAshi1": [["ZubonAshi1", "move"]],
            "Megane": [["Megane", "move"]],
            "MeganeY": [["Megane", "move"]],
            "Headband": [["Headband", "move"]],
            "Hat": [["Hat", "move"]],
            // "MarkPlus": [["MarkPlus", "move"]],
            // "Mark": [["MarkPlus", "move"]],
            // "MarkScaleX": [["MarkPlus", "move"]],
            // "MarkScaleY": [["MarkPlus", "move"]],
            // "MarkScaleB": [["MarkPlus", "move"]],
            // "MarkRotation": [["MarkPlus", "move"]],
            // "MarkX": [["MarkPlus", "move"]],
            // "MarkY": [["MarkPlus", "move"]],
            // "MarkAlpha": [["MarkPlus", "move"]],
            // "RibonPlus": [["RibonPlus", "move"]],
            // "Ribon": [["RibonPlus", "move"]],
            // "RibonLine": [["RibonPlus", "move"]],
            // "RibonScale": [["RibonPlus", "move"]],
            // "RibonScaleY": [["RibonPlus", "move"]],
            // "RibonScaleB": [["RibonPlus", "move"]],
            // "RibonRotation": [["RibonPlus", "move"]],
            // "RibonX": [["RibonPlus", "move"]],
            // "RibonY": [["RibonPlus", "move"]],
            // "RibonAdd": [["RibonPlus", "move"]],
            // "BeltPlus": [["BeltPlus", "move"]],
            // "Belt": [["BeltPlus", "move"]],
            // "BeltScale": [["BeltPlus", "move"]],
            // "BeltScaleY": [["BeltPlus", "move"]],
            // "BeltScaleB": [["BeltPlus", "move"]],
            // "BeltLine": [["BeltPlus", "move"]],
            // "BeltRotation": [["BeltPlus", "move"]],
            // "BeltX": [["BeltPlus", "move"]],
            // "BeltY": [["BeltPlus", "move"]],
            // "BeltExtra": [["BeltPlus", "move"]],
            "Mimi": [["Mimi", "move"]],
            "Hane": [["Hane", "move"]],
            "HaneScale": [["Hane", "move"]],
            "HaneY": [["Hane", "move"]],
            "Tail": [["Tail", "move"]],
            "TailScale": [["Tail", "move"]],
            "Horn": [["Horn", "move"]],
            "HornScale": [["Horn", "move"]],
            "HornY": [["Horn", "move"]],
            "Collar": [["Collar", "move"]],
            "Necktie": [["Necktie", "move"]],
            "Necklace": [["Necklace", "move"]],
            "Gag": [["Gag", "move"]],
            "Kutu0": [["Kutu0", "huku"]],
            "KutuLong0": [["Kutu0", "huku"]],
            "Kutu1": [["Kutu1", "huku"]],
            "KutuLong1": [["Kutu1", "huku"]],
            "LegBand0": [["LegBand0", "huku"]],
            "LegBand1": [["LegBand1", "huku"]],
            "Wristband0": [["Wristband0", "huku"]],
            "Wristband1": [["Wristband1", "huku"]],
            "Glove0": [["Glove0", "huku"]],
            "GloveLength0": [["Glove0", "huku"]],
            "Glove1": [["Glove1", "huku"]],
            "GloveLength1": [["Glove1", "huku"]],
            "Bracelet0": [["Bracelet0", "huku"]],
            "Bracelet1": [["Bracelet1", "huku"]],
            "ArmBracelet0": [["ArmBracelet0", "huku"]],
            "ArmBracelet1": [["ArmBracelet1", "huku"]],
            "Armband0": [["Armband0", "huku"]],
            "Armband1": [["Armband1", "huku"]],
            "Elbowpad0": [["Elbowpad0", "huku"]],
            "Elbowpad1": [["Elbowpad1", "huku"]],
            "Headphone": [["Headphone", "huku"]],
            "Earring0": [["Earring0", "huku"]],
            "Earring1": [["Earring1", "huku"]]
        };

        public static var SPECIAL_CASE_KEYS: Object = {
            "Waist": "waist",
            "WaistAlpha": "waist",
            "Tin": "tin",
            "TinManualAuto": "tin",
            "TinBokki": "tin",
            "TinSwing": "tin",
            "TinKawa": "tin",
            "TinEx": "tin",
            "TinSize": "tin",
            "Tama": "tama",
            "s": "s",
            "Hair": "hair"
        };

        // public static var PLUS_PREFIXES: Object = {
        //     "HairEx": "HairExPlus",
        //     "Belt": "BeltPlus",
        //     "Mark": "MarkPlus",
        //     "Ribon": "RibonPlus"
        // };

        private var simple_set_calls: Object = {};
        private var character: int = 0;
        private var special_cases: Object = {};

        private var modifiedHairEx: Object = {};
        private var modifiedBelt: Object = {};
        private var modifiedRibbon: Object = {};
        private var modifiedMark: Object = {};
        private var modifiedAttachments: Object = {};

        public function FastSetCharaData (character_num: int) {
            this.character = character_num;
        }
        
        public function flagModification(main_key: String):void
        {
            var calls: Array = FastSetCharaData.SIMPLE_MAPPING[main_key];
            if (calls) {
                for (var i: uint = 0; i < calls.length; i++) {
                    this.simple_set_calls[calls[i][0]] = calls[i][1];
                }
            }

            var special: String = FastSetCharaData.SPECIAL_CASE_KEYS[main_key];
            if (special) {
                this.special_cases[special] = true;
            }

            // for (var sp_key: String in FastSetCharaData.PLUS_PREFIXES) {
            //     if (main_key.length >= sp_key.length && main_key.substr(0, sp_key.length) == sp_key) {
            //         this.simple_set_calls[FastSetCharaData.PLUS_PREFIXES[sp_key]] = "move";
            //     }
            // }

            // if (main_key.length >= 9 && main_key.substr(0, 9) == "CharaLoad") {
            //     this.special_cases["charaload"] = true;
            // }
        }

        public function flagModifiedHairEx(slot: int): void
        {
            this.modifiedHairEx[slot] = true;
        }

        public function flagModifiedBelt(slot: int): void
        {
            this.modifiedBelt[slot] = true;
        }

        public function flagModifiedRibbon(slot: int): void
        {
            this.modifiedRibbon[slot] = true;
        }

        public function flagModifiedMark(slot: int): void
        {
            this.modifiedMark[slot] = true;
        }

        public function flagModifiedAttachment(slot: int): void
        {
            this.modifiedAttachments[slot] = true;
            this.special_cases["charaload"] = true;
        }

        public function apply(mode: String): void
        {
            if (!MenuClass.charaData[this.character]["SelectCharacter"]["_visible"][0]) {
                return;
            }

            if (MenuClass._nowHeaderName == "SystemOption" && mode == "paste") {
                if (this.simple_set_calls["Xmove"] || (this.simple_set_calls["Xmove"] === null)) {
                    delete this.simple_set_calls["Xmove"];
                }
            }

            // trace("Applying data for character " + this.character);
            for (var key: String in this.simple_set_calls) {
                var m: String = this.simple_set_calls[key] || mode;
                new SetClass(this.character, key, mode);
            }

            for (var slot: int in this.modifiedHairEx) {
                Hair_HairExSet.setFc(this.character, slot, "move");
            }

            for (var slot: int in this.modifiedBelt) {
                new Huku_BeltSet(this.character, slot, "move");
            }

            for (var slot: int in this.modifiedRibbon) {
                Huku_RibonSet.setFc(this.character, slot, "move");
            }

            for (var slot: int in this.modifiedMark) {
                new Huku_MarkSet(this.character, slot, "move");
            }

            if (this.special_cases["waist"]) {
                new Chara_Waist(this.character);
                new SetClass(this.character, "WaistAlpha", "move");
            }

            if (this.special_cases["tin"]) {
                new SetClass(this.character, "Tin", "move");
                if(this.special_cases["tama"] && !MenuClass.charaData[this.character]["Tama"]["_visible"][0]) {
                    new SetClass(this.character, "Tama", "move");
                }
            } else if (this.special_cases["tama"]) {
                new SetClass(this.character, "Tama", "move");
            }

            if (this.special_cases["s"]) {
                MenuClass.charaData[this.character]["s"]["_hidaCount"] = 1;
                new Chara_s(this.character, "move");
            }

            if (this.special_cases["hair"]) {
                new Hair_Class(this.character);
            }

            for (var slot: int in this.modifiedAttachments) {
                if (MenuClass.charaData[this.character]["CharaLoadPlus"]["_visible"][slot] && 
                    MenuClass.charaData[this.character]["CharaLoadAdd" + slot]["_name"] != null)
                {
                    new Tab_LoadURL2("load", slot, this.character);
                }
                else
                {
                    MenuClass.charaData[this.character]["CharaLoadPlus"]["_visible"][slot] = false;
                    try {
                        MenuClass.charaAdd[this.character]["loadObj" + slot].visible = false;
                    } catch(e:Error) {}
                }
            }
        }
    }
}