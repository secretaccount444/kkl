package parameter
{
   import flash.utils.ByteArray;
   import menu.Tab_R18Check;
   
   public class Chara_data
   {
       
      
      public function Chara_data()
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         super();
         _loc5_ = 0;
         while(_loc5_ <= MenuClass._characterNum)
         {
            MenuClass.charaData[_loc5_] = {
               "SelectCharacter":{"_visible":[true]},
               "AllHairSet":{
                  "_menu":0,
                  "_color0":[29]
               },
               "AllFaceSet":{
                  "_menu":0,
                  "_color0":[29]
               },
               "LeftArm":{"_meter":7},
               "LeftArm2":{
                  "_meter":0,
                  "_depth":0
               },
               "LeftHand":{"_menu":0},
               "LeftHand2":{"_meter":50},
               "RightArm":{"_meter":7},
               "RightArm2":{
                  "_meter":0,
                  "_depth":0
               },
               "RightHand":{"_menu":0},
               "RightHand2":{"_meter":50},
               "Item0":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Item1":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Ashi":{
                  "_menu":5,
                  "_reversal":1
               },
               "Ashi2":{"_menu":5},
               "Xmove":{"_meter":0},
               "Ymove":{
                  "_meter":50,
                  "_depth":0
               },
               "Rmove":{"_meter":180},
               "Jump":{"_meter":0},
               "Head":{"_meter":50},
               "HeadY":{"_meter":50},
               "Shadow":{"_visible":[false]},
               "BodyHeight":{"_meter":0},
               "AshiHeight":{"_meter":50},
               "douHeight":{"_meter":40},
               "Waist":{"_menu":0},
               "WaistAlpha":{"_meter":60},
               "Heso":{"_menu":0},
               "HeadScale":{"_meter":50},
               "AshiWidth":{"_meter":0},
               "ShoulderWidth":{"_meter":0},
               "Body":{"_color0":[0]},
               "BodyPlus":{
                  "_menu":0,
                  "_color0":[0]
               },
               "BodyPlusMeter":{"_meter":100},
               "BodyAlpha":{"_meter":100},
               "Hiyake":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0]
               },
               "Breast":{"_menu":0},
               "Hoho":{"_menu":0},
               "NeckHeight":{"_meter":50},
               "Contour":{"_menu":0},
               "ContourWidth":{"_meter":34},
               "ContourHeight":{"_meter":50},
               "Mimi":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_mimihat":0
               },
               "Hane":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_posi0":1,
                  "_posi1":1,
                  "_reversal":1
               },
               "HaneScale":{"_meter":50},
               "HaneY":{"_meter":60},
               "Horn":{
                  "_visible":[false],
                  "_menu":0,
                  "_depth":2,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "HornScale":{"_meter":50},
               "HornY":{"_meter":50},
               "Tail":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_posi0":1,
                  "_reversal":1
               },
               "TailScale":{"_meter":40},
               "TinManualAuto":{"_check":true},
               "TinBokki":{"_check":false},
               "TinSwing":{"_meter":50},
               "Tin":{
                  "_visible":[false],
                  "_menu":1,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_tClick":0,
                  "_depth":0
               },
               "TinKawa":{"_menu":12},
               "TinEx":{"_meter":50},
               "TinSize":{"_meter":50},
               "TinMove":{"_mode":0},
               "Tama":{
                  "_visible":[false],
                  "_menu":0
               },
               "TamaSize":{"_meter":50},
               "TamaMove":{"_mode":0},
               "Nipple":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0]
               },
               "NippleSize":{"_meter":30},
               "NippleHeight":{"_meter":50},
               "NippleWidth":{"_meter":50},
               "BreastMove":{
                  "_mode":["stop","stop"],
                  "_count":[0,0]
               },
               "NippleMove":{
                  "_mode":[0,0],
                  "_count":[0,0]
               },
               "BodyWidth":{"_meter":34},
               "BodyAllWidth":{"_meter":30},
               "HipWidth":{"_meter":34},
               "HandWidth":{"_meter":34},
               "BodySize":{"_meter":80},
               "BodyYMove":{"_meter":0},
               "s":{
                  "_visible":[false],
                  "_menu":0,
                  "_sClick":0,
                  "_color0":[0],
                  "_color1":[1],
                  "_color2":[1],
                  "_hidaCount":0,
                  "_hidaPlay":0
               },
               "CharaDropShadow":{
                  "_visible":[false],
                  "_menu":2,
                  "_color0":[61]
               },
               "CharaDropShadowIn":{"_check":0},
               "CharaDropShadowOut":{"_check":0},
               "CharaDropShadowHide":{"_check":0},
               "CharaDropShadowAlpha":{"_meter":30},
               "CharaDropShadowX":{"_meter":5},
               "CharaDropShadowY":{"_meter":5},
               "CharaDropShadowStr":{"_meter":5},
               "CharaDropShadowRotation":{"_meter":360},
               "CharaDropShadowDistance":{"_meter":5},
               "CharaBlur":{
                  "_visible":[false],
                  "_menu":2
               },
               "CharaBlurX":{"_meter":10},
               "CharaBlurY":{"_meter":10},
               "CharaFilterEmotion":{"_check":0},
               "Nose":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_reversal":1
               },
               "NoseHeight":{"_meter":50},
               "NoseScaleX":{"_meter":0},
               "NoseScaleY":{"_meter":0},
               "NoseShadow":{
                  "_visible":[false],
                  "_menu":0
               },
               "NoseShadowAlpha":{"_meter":70},
               "NoseShadowScaleX":{"_meter":30},
               "NoseShadowScaleY":{"_meter":30},
               "NoseShadowHeight":{"_meter":20},
               "Eye":{
                  "_menu":0,
                  "_color0":[0],
                  "_depth":0
               },
               "EyeY":{"_meter":50},
               "EyeX":{"_meter":50},
               "EyeScaleX":{"_meter":50},
               "EyeScaleY":{"_meter":50},
               "EyeRotation":{"_meter":65},
               "EyeballLeft":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "EyeballRight":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "EyeballScale":{"_meter":50},
               "EyeballScaleY":{"_meter":50},
               "EyeballX":{"_meter":50},
               "EyeballY":{"_meter":50},
               "EyeballLight":{
                  "_visible":[false],
                  "_menu":0,
                  "_reversal":0
               },
               "EyeballLightRotation":{"_meter":0},
               "Eyelib":{
                  "_visible":[false],
                  "_menu":0
               },
               "Eyelash":{
                  "_visible":[false],
                  "_menu":0
               },
               "Lowerlash":{
                  "_visible":[false],
                  "_menu":0
               },
               "Eyebrow":{
                  "_menu":0,
                  "_depth":0,
                  "_color0":[0],
                  "_color1":[0]
               },
               "EyebrowY":{"_meter":50},
               "EyebrowRotation":{"_meter":75},
               "MouthY":{"_meter":61},
               "MouthScale":{"_meter":50},
               "Ear":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_sen":0,
                  "_senColor":0
               },
               "EarScale":{"_meter":40},
               "EarRotation":{"_meter":50},
               "EarX":{"_meter":85},
               "EarY":{"_meter":85},
               "FaceOption":{"_visible":[false,false,false,false,false,false,false,false,false,false]},
               "Hair":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[56],
                  "_reversal":0,
                  "_sen":0
               },
               "Bangs":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[56],
                  "_reversal":1,
                  "_depth":1
               },
               "Bangs_Height":{"_meter":50},
               "HairBack":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[56],
                  "_turn":0
               },
               "SideBurnLeft":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[56],
                  "_depth":2,
                  "_turn":1
               },
               "SideBurnRight":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[56],
                  "_depth":2,
                  "_turn":1
               },
               "HairBack_Height":{"_meter":30},
               "HairBack_Width":{"_meter":30},
               "HairBack_Y":{"_meter":65},
               "SideBurnLeft_Height":{"_meter":50},
               "SideBurnRight_Height":{"_meter":50},
               "SideBurnLeft_x":{"_meter":50},
               "SideBurnRight_x":{"_meter":50},
               "UnderHair":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0]
               },
               "UnderHairAlpha":{"_meter":100},
               "EmotionManualAuto":{
                  "_check":false,
                  "_count":43,
                  "_kando":0,
                  "_flag":"stop"
               },
               "Ahegao":{"_check":true},
               "Hukidashi":{
                  "_visible":[false],
                  "_menu":0
               },
               "EmotionOption":{
                  "_visible":[false,false,false,false,false,false,false,false,false,false],
                  "_reversal":1
               },
               "defoEye":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_reversal":1
               },
               "defoEyeScale":{"_meter":50},
               "defoEyeX":{"_meter":50},
               "defoEyeY":{"_meter":50},
               "HeartPlus":{"_meter":0},
               "HeartMinus":{"_meter":0},
               "EyeOption":{"_visible":[false,false,false,false,false,false]},
               "EmotionEyeLeft":{"_meter":90},
               "EmotionEyeRight":{"_meter":90},
               "EyeballXMove":{
                  "_meter":50,
                  "_reversal":1
               },
               "EyeballXMoveRight":{
                  "_meter":50,
                  "_reversal":1
               },
               "EyeballYMove":{"_meter":45},
               "EyeballYMoveRight":{"_meter":45},
               "EyeballWidth":{"_meter":100},
               "EyeballWidthRight":{"_meter":100},
               "EmotionEyebrowLeft":{"_menu":0},
               "EyebrowRotationLeft":{"_meter":60},
               "EyebrowMoveLeft":{"_meter":40},
               "EmotionEyebrowRight":{"_menu":0},
               "EyebrowRotationRight":{"_meter":60},
               "EyebrowMoveRight":{"_meter":40},
               "EmotionMouth":{
                  "_menu":0,
                  "_reversal":1
               },
               "MouthYMove":{"_meter":60},
               "MouthXMove":{"_meter":50},
               "MouthWidth":{"_meter":50},
               "MouthHeight":{"_meter":50},
               "MouthSen":{"_menu":0},
               "MouthRotation":{"_menu":50},
               "KandoSet":{"_meter":10},
               "NamidaSet":{"_meter":40},
               "ikiSet":{"_meter":65},
               "ESituation":{"_menu":0},
               "EKando":{"_menu":0},
               "EKanjyou":{"_menu":0},
               "EmotionTestAllPlay":{"_menu":0},
               "EyeM":{"_menu":0},
               "EyeM2":{"_menu":0},
               "EyeM3":{"_menu":0},
               "EyebrowM":{"_menu":0},
               "EyebrowM2":{"_menu":0},
               "EyebrowM3":{"_menu":0},
               "MouthM":{"_menu":0},
               "MouthM2":{"_menu":0},
               "MouthM3":{"_menu":0},
               "Seihuku":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_g0":0
               },
               "SeihukuLeftArm":{
                  "_menu":8,
                  "_color0":[0],
                  "_color1":[0]
               },
               "SeihukuRightArm":{
                  "_menu":8,
                  "_color0":[0],
                  "_color1":[0]
               },
               "SeihukuBreastOption":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_reversal2":1
               },
               "SeihukuDouOption":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_number":0
               },
               "Vest":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_g0":0,
                  "_g1":0
               },
               "VestDou":{"_menu":1},
               "VestLeftArm":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0]
               },
               "VestRightArm":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0]
               },
               "VestSkirt":{"_menu":2},
               "VestBreastOption":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_reversal2":1
               },
               "VestDouOption":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_number":0
               },
               "Ysyatu":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_g0":0,
                  "_g1":0,
                  "_g2":0
               },
               "YsyatuDou":{"_menu":1},
               "YsyatuOption":{
                  "_menu":0,
                  "_number":0
               },
               "YsyatuLeftArm":{
                  "_menu":8,
                  "_color0":[0],
                  "_color1":[0]
               },
               "YsyatuRightArm":{
                  "_menu":8,
                  "_color0":[0],
                  "_color1":[0]
               },
               "YsyatuSkirt":{"_menu":2},
               "YsyatuBreastOption":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_reversal2":1
               },
               "YsyatuDouOption":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_number":0
               },
               "Tsyatu":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_g0":0,
                  "_g1":0
               },
               "TsyatuDou":{"_menu":1},
               "TsyatuLeftArm":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0]
               },
               "TsyatuRightArm":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0]
               },
               "TsyatuSkirt":{"_menu":2},
               "TsyatuBreastOption":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_reversal2":1
               },
               "TsyatuDouOption":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_number":0
               },
               "Skirt":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_depth":0
               },
               "Zubon":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_depth":0
               },
               "ZubonAshi0":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "ZubonAshi1":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Bura":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_separate":0
               },
               "Pantu":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_depth":0
               },
               "Nawa":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "NippleGLeft":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "NippleGLeftSize":{"_meter":50},
               "NippleGRight":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "NippleGRightSize":{"_meter":50},
               "SG":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "SGSize":{"_meter":50},
               "Vibrator":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "VibratorMove":{
                  "_menu":0,
                  "_flag":"stop",
                  "_count":0,
                  "_return":0,
                  "_mosaicMode":0,
                  "_turn":0,
                  "_turn2":1,
                  "_roop":0
               },
               "VibratorSpeed":{
                  "_menu":1,
                  "_turn":0
               },
               "VibratorScale":{"_meter":0},
               "VibratorThrough":{"_check":false},
               "VibratorX":{"_meter":0},
               "VibratorY":{"_meter":0},
               "VibratorRotation":{"_meter":0},
               "Socks0":{
                  "_visible":[false],
                  "_menu":4,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Socks1":{
                  "_visible":[false],
                  "_menu":4,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "LegBand0":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "LegBand1":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Tights":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_depth":0
               },
               "Hat":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_reversal":1,
                  "_hair0":1,
                  "_hair1":1,
                  "_hair2":1,
                  "_hair3":1,
                  "_hair4":1
               },
               "Megane":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_reversal":1,
                  "_g0":0,
                  "_depth":0
               },
               "MeganeY":{"_meter":50},
               "Headband":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_depth":0
               },
               "Gag":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_reversal":1
               },
               "Headphone":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_g0":0
               },
               "Earring0":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Earring1":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Collar":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_reversal":1,
                  "_g0":0,
                  "_depth":0
               },
               "Necklace":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_depth":0
               },
               "Necktie":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_g0":0
               },
               "Wristband0":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Wristband1":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Glove0":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "GloveLength0":{"_menu":0},
               "Glove1":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "GloveLength1":{"_menu":0},
               "Bracelet0":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Bracelet1":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "ArmBracelet0":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "ArmBracelet1":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Armband0":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Armband1":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Elbowpad0":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Elbowpad1":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Kutu0":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Kutu1":{
                  "_visible":[false],
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "KutuLong0":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "KutuLong1":{
                  "_menu":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "Breast_Left_Up":{"_check":false},
               "Breast_Left_Sayuu":{"_check":false},
               "Breast_Right_Up":{"_check":false},
               "Breast_Right_Sayuu":{"_check":false},
               "Nipple_Left_Up":{"_check":false},
               "Nipple_Left_Sayuu":{"_check":false},
               "Nipple_Right_Up":{"_check":false},
               "Nipple_Right_Sayuu":{"_check":false},
               "sClick":{
                  "_check":false,
                  "_count":0
               },
               "Kiss":{
                  "_check":false,
                  "_count":0
               },
               "BreastManualAuto":{"_check":true},
               "BreastLeft":{"_menu":0},
               "BreastRight":{"_menu":0},
               "NippleLeft":{"_menu":0},
               "NippleRight":{"_menu":0},
               "SRight":{"_menu":0},
               "SLeft":{"_menu":0},
               "MarkPlus":{"_visible":[false]},
               "Mark0":{
                  "_menu":0,
                  "_reversal2":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0],
                  "_depth":0
               },
               "MarkScaleX0":{"_meter":10},
               "MarkScaleY0":{"_meter":10},
               "MarkScaleB0":{"_meter":500},
               "MarkRotation0":{"_meter":0},
               "MarkX0":{"_meter":620},
               "MarkY0":{"_meter":360},
               "MarkAlpha0":{"_meter":100},
               "HairExPlus":{"_visible":[false]},
               "HairExAdd0":{"_add0":0},
               "HairEx0":{
                  "_menu":0,
                  "_reversal2":0,
                  "_depth":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[56],
                  "_turn":0,
                  "_shadow":1
               },
               "HairExScaleX0":{"_meter":50},
               "HairExScaleY0":{"_meter":50},
               "HairExScaleB0":{"_meter":500},
               "HairExLine0":{"_menu":2},
               "HairExRotation0":{"_meter":0},
               "HairExRotationPlus0":{"_meter":0},
               "HairExX0":{"_meter":620},
               "HairExY0":{"_meter":660},
               "RibonPlus":{"_visible":[false]},
               "RibonAdd0":{"_add0":0},
               "Ribon0":{
                  "_menu":0,
                  "_reversal2":0,
                  "_reversal":0,
                  "_depth":1,
                  "_shadow":1,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "RibonScale0":{"_meter":40},
               "RibonScaleY0":{"_meter":40},
               "RibonScaleB0":{"_meter":500},
               "RibonLine0":{
                  "_menu":3,
                  "_color0":[61]
               },
               "RibonRotation0":{"_meter":50},
               "RibonX0":{"_meter":600},
               "RibonY0":{"_meter":800},
               "HairpinPlus":{"_visible":[false]},
               "Hairpin0":{
                  "_menu":0,
                  "_reversal2":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "HairpinScale0":{"_meter":50},
               "HairpinScaleY0":{"_meter":50},
               "HairpinScaleB0":{"_meter":500},
               "HairpinLine0":{
                  "_menu":3,
                  "_color0":[61]
               },
               "HairpinRotation0":{"_meter":0},
               "HairpinX0":{"_meter":60},
               "HairpinY0":{"_meter":60},
               "BeltPlus":{"_visible":[false]},
               "Belt0":{
                  "_visible":[false],
                  "_menu":0,
                  "_reversal2":1,
                  "_depth":2,
                  "_mask":0,
                  "_color0":[0],
                  "_color1":[0],
                  "_color2":[0]
               },
               "BeltScale0":{"_meter":50},
               "BeltScaleY0":{"_meter":50},
               "BeltScaleB0":{"_meter":500},
               "BeltLine0":{
                  "_menu":3,
                  "_color0":[61]
               },
               "BeltRotation0":{"_meter":0},
               "BeltX0":{"_meter":500},
               "BeltY0":{"_meter":533},
               "BeltExtra0":{"_menu":0},
               "CharaLoadPlusCheck":{"_visibleCheck":[false]},
               "CharaLoadPlus":{"_visible":[false]},
               "CharaLoadAdd0":{
                  "_add0":0,
                  "_name":""
               },
               "CharaLoadReversalDepth0":{
                  "_depth":1,
                  "_reversal":0
               },
               "CharaLoadScale0":{"_meter":100},
               "CharaLoadScaleY0":{"_meter":100},
               "CharaLoadAlpha0":{"_meter":100},
               "CharaLoadScaleB0":{"_meter":500},
               "CharaLoadRotation0":{"_meter":0},
               "CharaLoadX0":{"_meter":500},
               "CharaLoadY0":{"_meter":500},
               "CharaLoadSwfColor0":{
                  "_swfColor":["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"],
                  "_swfMenu":0,
                  "_swfSen":1
               }
            };
            _loc1_ = 0;
            while(_loc1_ < Number(Main.hukusuuNum - 1))
            {
               MenuClass.charaData[_loc5_]["BeltPlus"]["_visible"].push(false);
               MenuClass.charaData[_loc5_]["HairpinPlus"]["_visible"].push(false);
               MenuClass.charaData[_loc5_]["HairExPlus"]["_visible"].push(false);
               MenuClass.charaData[_loc5_]["MarkPlus"]["_visible"].push(false);
               MenuClass.charaData[_loc5_]["CharaLoadPlusCheck"]["_visibleCheck"].push(false);
               MenuClass.charaData[_loc5_]["CharaLoadPlus"]["_visible"].push(false);
               _loc1_++;
            }
            _loc1_ = 0;
            while(_loc1_ < Number(Main.RibonhukusuuNum - 1))
            {
               MenuClass.charaData[_loc5_]["RibonPlus"]["_visible"].push(false);
               _loc1_++;
            }
            _loc1_ = 0;
            while(_loc1_ <= 8)
            {
               MenuClass.DepthMeter[_loc1_] = MenuClass.charaData[_loc5_]["Ymove"]["_meter"];
               _loc1_++;
            }
            _loc1_ = 1;
            while(_loc1_ <= Main.hukusuuNum)
            {
               MenuClass.charaData[_loc5_]["Mark" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["Mark0"]);
               MenuClass.charaData[_loc5_]["MarkScaleX" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["MarkScaleX0"]);
               MenuClass.charaData[_loc5_]["MarkScaleY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["MarkScaleY0"]);
               MenuClass.charaData[_loc5_]["MarkScaleB" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["MarkScaleB0"]);
               MenuClass.charaData[_loc5_]["MarkRotation" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["MarkRotation0"]);
               MenuClass.charaData[_loc5_]["MarkX" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["MarkX0"]);
               MenuClass.charaData[_loc5_]["MarkY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["MarkY0"]);
               MenuClass.charaData[_loc5_]["MarkAlpha" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["MarkAlpha0"]);
               _loc1_++;
            }
            _loc1_ = 1;
            while(_loc1_ <= Main.hukusuuNum)
            {
               MenuClass.charaData[_loc5_]["HairEx" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairEx0"]);
               MenuClass.charaData[_loc5_]["HairExAdd" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairExAdd0"]);
               MenuClass.charaData[_loc5_]["HairExScaleX" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairExScaleX0"]);
               MenuClass.charaData[_loc5_]["HairExScaleY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairExScaleY0"]);
               MenuClass.charaData[_loc5_]["HairExScaleB" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairExScaleB0"]);
               MenuClass.charaData[_loc5_]["HairExLine" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairExLine0"]);
               MenuClass.charaData[_loc5_]["HairExRotation" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairExRotation0"]);
               MenuClass.charaData[_loc5_]["HairExRotationPlus" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairExRotation0"]);
               MenuClass.charaData[_loc5_]["HairExX" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairExX0"]);
               MenuClass.charaData[_loc5_]["HairExY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairExY0"]);
               _loc1_++;
            }
            _loc1_ = 1;
            while(_loc1_ <= Main.RibonhukusuuNum)
            {
               MenuClass.charaData[_loc5_]["Ribon" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["Ribon0"]);
               MenuClass.charaData[_loc5_]["RibonAdd" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["RibonAdd0"]);
               MenuClass.charaData[_loc5_]["RibonScale" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["RibonScale0"]);
               MenuClass.charaData[_loc5_]["RibonScaleY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["RibonScaleY0"]);
               MenuClass.charaData[_loc5_]["RibonScaleB" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["RibonScaleB0"]);
               MenuClass.charaData[_loc5_]["RibonLine" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["RibonLine0"]);
               MenuClass.charaData[_loc5_]["RibonRotation" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["RibonRotation0"]);
               MenuClass.charaData[_loc5_]["RibonX" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["RibonX0"]);
               MenuClass.charaData[_loc5_]["RibonY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["RibonY0"]);
               _loc1_++;
            }
            _loc1_ = 1;
            while(_loc1_ <= Main.hukusuuNum)
            {
               MenuClass.charaData[_loc5_]["Hairpin" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["Hairpin0"]);
               MenuClass.charaData[_loc5_]["HairpinScale" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairpinScale0"]);
               MenuClass.charaData[_loc5_]["HairpinScaleY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairpinScaleY0"]);
               MenuClass.charaData[_loc5_]["HairpinScaleB" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairpinScaleB0"]);
               MenuClass.charaData[_loc5_]["HairpinLine" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairpinLine0"]);
               MenuClass.charaData[_loc5_]["HairpinRotation" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairpinRotation0"]);
               MenuClass.charaData[_loc5_]["HairpinX" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairpinX0"]);
               MenuClass.charaData[_loc5_]["HairpinY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["HairpinY0"]);
               _loc1_++;
            }
            _loc1_ = 1;
            while(_loc1_ <= Main.hukusuuNum)
            {
               MenuClass.charaData[_loc5_]["Belt" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["Belt0"]);
               MenuClass.charaData[_loc5_]["BeltScale" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["BeltScale0"]);
               MenuClass.charaData[_loc5_]["BeltScaleY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["BeltScaleY0"]);
               MenuClass.charaData[_loc5_]["BeltScaleB" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["BeltScaleB0"]);
               MenuClass.charaData[_loc5_]["BeltRotation" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["BeltRotation0"]);
               MenuClass.charaData[_loc5_]["BeltLine" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["BeltLine0"]);
               MenuClass.charaData[_loc5_]["BeltX" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["BeltX0"]);
               MenuClass.charaData[_loc5_]["BeltY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["BeltY0"]);
               MenuClass.charaData[_loc5_]["BeltExtra" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["BeltExtra0"]);
               _loc1_++;
            }
            _loc1_ = 1;
            while(_loc1_ <= Main.hukusuuNum)
            {
               MenuClass.charaData[_loc5_]["CharaLoadAdd" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["CharaLoadAdd0"]);
               MenuClass.charaData[_loc5_]["CharaLoadReversalDepth" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["CharaLoadReversalDepth0"]);
               MenuClass.charaData[_loc5_]["CharaLoadScale" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["CharaLoadScale0"]);
               MenuClass.charaData[_loc5_]["CharaLoadScaleY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["CharaLoadScaleY0"]);
               MenuClass.charaData[_loc5_]["CharaLoadAlpha" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["CharaLoadAlpha0"]);
               MenuClass.charaData[_loc5_]["CharaLoadScaleB" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["CharaLoadScaleB0"]);
               MenuClass.charaData[_loc5_]["CharaLoadRotation" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["CharaLoadRotation0"]);
               MenuClass.charaData[_loc5_]["CharaLoadX" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["CharaLoadX0"]);
               MenuClass.charaData[_loc5_]["CharaLoadY" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["CharaLoadY0"]);
               MenuClass.charaData[_loc5_]["CharaLoadSwfColor" + _loc1_] = this.clone(MenuClass.charaData[_loc5_]["CharaLoadSwfColor0"]);
               _loc1_++;
            }
            _loc5_++;
         }
         var _loc7_:Boolean = true;
         if(Main.urlData != "nodata")
         {
            _loc7_ = false;
         }
         MenuClass.systemData = {
            "DeformerReal":{"_menu":Main.accessObj.DeformerRealData},
            "HairType":{"_menu":Main.accessObj.HairTypeData},
            "BodyType":{"_menu":Main.accessObj.BodyTypeData},
            "TabAllCharaSet":{"_menu":0},
            "SelectCharacter":{"_menu":0},
            "TabAllHukuSet":{"_menu":0},
            "CharaSet":{"_menu":0},
            "DressSet":{"_menu":0},
            "PoseSet":{
               "_menu":0,
               "_reversal":0
            },
            "SeihukuSet0":{"_menu":0},
            "SeihukuSet1":{"_menu":0},
            "SeihukuSet2":{"_menu":0},
            "AllBodyHeightSet":{"_meter":50},
            "AllBodySet":{"_menu":0},
            "LinkDressSet":{"_flag":_loc7_},
            "UnderwearSet":{"_menu":0},
            "BackgroundSet":{"_menu":0},
            "HairExSet":{"_menu":0},
            "HairExSetEasy":{
               "_visible":[false],
               "_menu":0,
               "_reversal":0
            },
            "HairAll":{
               "_color0":[0],
               "_color1":[0],
               "_color2":[0]
            },
            "LinkCharaDropShadow":{"_flag":_loc7_},
            "LinkCharaBlur":{"_flag":_loc7_},
            "LinkNoseScale":{"_flag":_loc7_},
            "LinkNoseShadowScale":{"_flag":_loc7_},
            "LinkMark":{"_flag":_loc7_},
            "LinkHand":{"_flag":_loc7_},
            "LinkBodyHeight":{"_flag":_loc7_},
            "LinkAshi":{"_flag":_loc7_},
            "LinkItem":{"_flag":_loc7_},
            "LinkEmotionEye":{"_flag":_loc7_},
            "LinkSeihukuArm":{"_flag":_loc7_},
            "LinkYsyatuArm":{"_flag":_loc7_},
            "LinkTsyatuArm":{"_flag":_loc7_},
            "LinkVestArm":{"_flag":_loc7_},
            "LinkBura":{"_flag":_loc7_},
            "LinkNippleG":{"_flag":_loc7_},
            "LinkKutu":{"_flag":_loc7_},
            "LinkZubon":{"_flag":_loc7_},
            "LinkSocks":{"_flag":_loc7_},
            "LinkLegBand":{"_flag":_loc7_},
            "LinkWristband":{"_flag":_loc7_},
            "LinkGlove":{"_flag":_loc7_},
            "LinkBracelet":{"_flag":_loc7_},
            "LinkArmBracelet":{"_flag":_loc7_},
            "LinkArmband":{"_flag":_loc7_},
            "LinkElbowpad":{"_flag":_loc7_},
            "LinkEarring":{"_flag":_loc7_},
            "LinkSideBurn":{"_flag":_loc7_},
            "LinkHairExScale":{"_flag":_loc7_},
            "LinkHairExLine":{"_flag":_loc7_},
            "LinkBeltScale":{"_flag":_loc7_},
            "LinkBeltLine":{"_flag":_loc7_},
            "LinkEyeball":{"_flag":_loc7_},
            "LinkEyeballScale":{"_flag":_loc7_},
            "LinkEmotionEyebrow":{"_flag":_loc7_},
            "LinkEyeballWidth":{"_flag":_loc7_},
            "LinkEyeballXMove":{"_flag":_loc7_},
            "LinkEyeballYMove":{"_flag":_loc7_},
            "LinkMouthWidth":{"_flag":_loc7_},
            "CharaURLLocal":{"_check":true},
            "CharaURLTextMenu":{"_menu":0},
            "CharaLinkLoadScale":{"_flag":_loc7_},
            "LinkLoadScale":{"_flag":_loc7_},
            "FaceOption":{"_menu":0},
            "EyeOption":{"_menu":0},
            "EmotionOption":{"_menu":0},
            "MarkPlus":{"_menu":0},
            "HairExPlus":{"_menu":0},
            "RibonPlus":{"_menu":0},
            "CharaLoadPlus":{"_menu":0},
            "LinkRibonScale":{"_flag":_loc7_},
            "LinkRibonLine":{"_flag":_loc7_},
            "FreeHandPlus":{
               "_menu":0,
               "_visible":[false]
            },
            "FreeHand0":{
               "_menu":0,
               "_reversal":1,
               "_color0":[1],
               "_depth":1000
            },
            "FreeHandAlpha0":{"_meter":100},
            "FreeHandScale0":{"_meter":50},
            "FreeHandWidth0":{"_meter":34},
            "FreeHandRotation0":{"_meter":0},
            "FreeHandX0":{"_meter":500},
            "FreeHandY0":{"_meter":600},
            "FreeHandDepth0":{"_meter":600},
            "FreeHandWrist0":{"_menu":0},
            "FreeHandWristRotation0":{"_meter":50},
            "FreeHandItem0":{
               "_visible":[false],
               "_menu":0,
               "_color0":[55],
               "_color1":[34],
               "_color2":[0]
            },
            "FreeHandVest0":{
               "_visible":[false],
               "_menu":0,
               "_color0":[55],
               "_color1":[55],
               "_color2":[0]
            },
            "FreeHandWristband0":{
               "_visible":[false],
               "_menu":0,
               "_color0":[59],
               "_color1":[56],
               "_color2":[0]
            },
            "FreeRibonPlus":{
               "_menu":0,
               "_visible":[false]
            },
            "LinkFreeRibonScale":{"_flag":_loc7_},
            "LinkFreeRibonLine":{"_flag":_loc7_},
            "FreeRibon0":{
               "_menu":0,
               "_reversal":1,
               "_shadow":1,
               "_color0":[3],
               "_color1":[3],
               "_color2":[0],
               "_depth":1000
            },
            "FreeRibonScale0":{"_meter":50},
            "FreeRibonScaleY0":{"_meter":50},
            "FreeRibonScaleB0":{"_meter":500},
            "FreeRibonLine0":{
               "_menu":2,
               "_color0":[61]
            },
            "FreeRibonRotation0":{"_meter":0},
            "FreeRibonX0":{"_meter":500},
            "FreeRibonY0":{"_meter":600},
            "FreeRibonDepth0":{"_meter":600},
            "FreeBeltPlus":{
               "_menu":0,
               "_visible":[false]
            },
            "LinkFreeBeltScale":{"_flag":_loc7_},
            "LinkFreeBeltLine":{"_flag":_loc7_},
            "FreeBelt0":{
               "_menu":0,
               "_reversal":1,
               "_color0":[54],
               "_color1":[54],
               "_color2":[56],
               "_depth":1000
            },
            "FreeBeltScale0":{"_meter":50},
            "FreeBeltScaleY0":{"_meter":50},
            "FreeBeltScaleB0":{"_meter":500},
            "FreeBeltLine0":{
               "_menu":3,
               "_color0":[61]
            },
            "FreeBeltRotation0":{"_meter":0},
            "FreeBeltX0":{"_meter":500},
            "FreeBeltY0":{"_meter":600},
            "FreeBeltDepth0":{"_meter":600},
            "FreeBeltExtra0":{"_menu":0},
            "FreeChairPlus":{
               "_menu":0,
               "_visible":[false]
            },
            "LinkFreeChairScale":{"_flag":_loc7_},
            "FreeChair0":{
               "_menu":0,
               "_reversal":1,
               "_color0":[41],
               "_color1":[56],
               "_color2":[58],
               "_depth":1000,
               "_depth2":1000
            },
            "FreeChairScale0":{"_meter":50},
            "FreeChairRotation0":{"_meter":0},
            "FreeChairX0":{"_meter":500},
            "FreeChairY0":{"_meter":360},
            "FreeChairDepth0":{"_meter":600},
            "FreeChairExtra0":{"_menu":0},
            "FreeChairLine0":{
               "_menu":3,
               "_color0":[61]
            },
            "FreeFlagPlus":{
               "_menu":0,
               "_visible":[false]
            },
            "LinkFreeFlagScale":{"_flag":_loc7_},
            "FreeFlag0":{
               "_menu":0,
               "_depth":1000
            },
            "FreeFlagScale0":{"_meter":100},
            "FreeFlagScaleY0":{"_meter":100},
            "FreeFlagScaleB0":{"_meter":500},
            "FreeFlagRotation0":{"_meter":0},
            "FreeFlagX0":{"_meter":500},
            "FreeFlagY0":{"_meter":600},
            "FreeFlagDepth0":{"_meter":600},
            "FreeFlagExtra0":{"_menu":0},
            "FreeHukidashiPlus":{
               "_menu":0,
               "_visible":[false]
            },
            "LinkFreeHukidashiScale":{"_flag":_loc7_},
            "FreeHukidashi0":{
               "_menu":0,
               "_reversal":1,
               "_color0":[55],
               "_color1":[55],
               "_color2":[55],
               "_depth":1000
            },
            "FreeHukidashiAlpha0":{"_meter":100},
            "FreeHukidashiBlend0":{"_menu":0},
            "FreeHukidashiScale0":{"_meter":100},
            "FreeHukidashiScaleY0":{"_meter":100},
            "FreeHukidashiScaleB0":{"_meter":500},
            "FreeHukidashiRotation0":{"_meter":0},
            "FreeHukidashiX0":{"_meter":500},
            "FreeHukidashiY0":{"_meter":600},
            "FreeHukidashiDepth0":{"_meter":600},
            "FreeHukidashiLine0":{
               "_menu":0,
               "_color0":[61]
            },
            "FreeHukidashiExtra0":{
               "_visible":[false],
               "_menu":0,
               "_reversal":1
            },
            "FreeHukidashiExtraScale0":{"_meter":100},
            "LinkFreeHukidashiExtraScale":{"_flag":_loc7_},
            "FreeHukidashiExtraScaleY0":{"_meter":100},
            "FreeHukidashiExtraRotation0":{"_meter":0},
            "FreeHukidashiExtraX0":{"_meter":500},
            "FreeHukidashiExtraY0":{"_meter":550},
            "FreeHukidashiExtraLine0":{"_menu":0},
            "LinktxtFieldBoxScale":{"_flag":_loc7_},
            "HairpinPlus":{"_menu":0},
            "LinkHairpinLine":{"_flag":_loc7_},
            "BeltPlus":{"_menu":0},
            "Quality":{"_menu":3},
            "Background":{
               "_menu":1,
               "_color0":[0],
               "_color1":[0],
               "_color2":[0]
            },
            "LinkBackground":{"_flag":_loc7_},
            "BgFloor":{
               "_menu":0,
               "_color0":[3],
               "_color1":[0],
               "_color2":[0]
            },
            "BgY":{"_meter":0},
            "BgFront":{
               "_visible":[false],
               "_menu":0,
               "_color0":[3],
               "_color1":[0],
               "_color2":[0]
            },
            "Story_Page":{"_menu":0},
            "CameraGIFSpeed":{"_menu":4},
            "Mob":{
               "_visible":[false],
               "_menu":0
            },
            "Zoom":{
               "_meter":0,
               "_x":0,
               "_y":0
            },
            "CameraJPG":{"_meter":100},
            "FullScreen":{"_check":false},
            "selecterDepth":{"_check":false},
            "MeterNumView":{"_check":false},
            "ViewMode":{"_check":true},
            "StoryFullScreen":{"_check":false},
            "HideIcon":{"_check":false},
            "Mosaic":{
               "_menu":0,
               "_color0":[8],
               "_color1":[0],
               "_color2":[0]
            },
            "SoundVolume":{"_meter":Main.accessObj.soundVolume},
            "SoundPan":{"_check":Main.accessObj.soundPan},
            "EExpert":{"_check":false},
            "CameraKaizoudo":{"_menu":1},
            "LoadPlus":{
               "_visible":[false],
               "_menu":0
            },
            "LoadPlusCheck":{"_visibleCheck":[false]},
            "URLLocal":{"_check":true},
            "URLTextMenu":{"_menu":0},
            "CameraKirinuki":{
               "_check":false,
               "_x":0,
               "_y":0,
               "_width":800,
               "_height":600
            },
            "txtFieldmenu":{
               "_visible":[false,false,false,false,false,false,false,false,false,false],
               "_menu":0
            },
            "version":{"_menu":0},
            "storyTime":{"_menu":0},
            "storyBtnMenu":{"_visible":[false,false,false,false,false,false,false,false,false,false]},
            "storyBtnScaleX":{"_meter":50},
            "storyBtnScaleY":{"_meter":50},
            "storyBtnRotation":{"_meter":0},
            "storyBtnX":{"_meter":500},
            "storyBtnY":{"_meter":500}
         };
         _loc1_ = 1;
         while(_loc1_ <= 98)
         {
            MenuClass.systemData["FreeHandPlus"]["_visible"].push(false);
            MenuClass.systemData["FreeHand" + _loc1_] = this.clone(MenuClass.systemData["FreeHand0"]);
            MenuClass.systemData["FreeHandAlpha" + _loc1_] = this.clone(MenuClass.systemData["FreeHandAlpha0"]);
            MenuClass.systemData["FreeHandScale" + _loc1_] = this.clone(MenuClass.systemData["FreeHandScale0"]);
            MenuClass.systemData["FreeHandWidth" + _loc1_] = this.clone(MenuClass.systemData["FreeHandWidth0"]);
            MenuClass.systemData["FreeHandRotation" + _loc1_] = this.clone(MenuClass.systemData["FreeHandRotation0"]);
            MenuClass.systemData["FreeHandX" + _loc1_] = this.clone(MenuClass.systemData["FreeHandX0"]);
            MenuClass.systemData["FreeHandY" + _loc1_] = this.clone(MenuClass.systemData["FreeHandY0"]);
            MenuClass.systemData["FreeHandDepth" + _loc1_] = this.clone(MenuClass.systemData["FreeHandDepth0"]);
            MenuClass.systemData["FreeHandWrist" + _loc1_] = this.clone(MenuClass.systemData["FreeHandWrist0"]);
            MenuClass.systemData["FreeHandWristRotation" + _loc1_] = this.clone(MenuClass.systemData["FreeHandWristRotation0"]);
            MenuClass.systemData["FreeHandItem" + _loc1_] = this.clone(MenuClass.systemData["FreeHandItem0"]);
            MenuClass.systemData["FreeHandVest" + _loc1_] = this.clone(MenuClass.systemData["FreeHandVest0"]);
            MenuClass.systemData["FreeHandWristband" + _loc1_] = this.clone(MenuClass.systemData["FreeHandWristband0"]);
            MenuClass.systemData["FreeRibonPlus"]["_visible"].push(false);
            MenuClass.systemData["FreeRibon" + _loc1_] = this.clone(MenuClass.systemData["FreeRibon0"]);
            MenuClass.systemData["FreeRibonScale" + _loc1_] = this.clone(MenuClass.systemData["FreeRibonScale0"]);
            MenuClass.systemData["FreeRibonScaleY" + _loc1_] = this.clone(MenuClass.systemData["FreeRibonScaleY0"]);
            MenuClass.systemData["FreeRibonScaleB" + _loc1_] = this.clone(MenuClass.systemData["FreeRibonScaleB0"]);
            MenuClass.systemData["FreeRibonLine" + _loc1_] = this.clone(MenuClass.systemData["FreeRibonLine0"]);
            MenuClass.systemData["FreeRibonRotation" + _loc1_] = this.clone(MenuClass.systemData["FreeRibonRotation0"]);
            MenuClass.systemData["FreeRibonX" + _loc1_] = this.clone(MenuClass.systemData["FreeRibonX0"]);
            MenuClass.systemData["FreeRibonY" + _loc1_] = this.clone(MenuClass.systemData["FreeRibonY0"]);
            MenuClass.systemData["FreeRibonDepth" + _loc1_] = this.clone(MenuClass.systemData["FreeRibonDepth0"]);
            MenuClass.systemData["FreeBeltPlus"]["_visible"].push(false);
            MenuClass.systemData["FreeBelt" + _loc1_] = this.clone(MenuClass.systemData["FreeBelt0"]);
            MenuClass.systemData["FreeBeltScale" + _loc1_] = this.clone(MenuClass.systemData["FreeBeltScale0"]);
            MenuClass.systemData["FreeBeltScaleY" + _loc1_] = this.clone(MenuClass.systemData["FreeBeltScaleY0"]);
            MenuClass.systemData["FreeBeltScaleB" + _loc1_] = this.clone(MenuClass.systemData["FreeBeltScaleB0"]);
            MenuClass.systemData["FreeBeltLine" + _loc1_] = this.clone(MenuClass.systemData["FreeBeltLine0"]);
            MenuClass.systemData["FreeBeltRotation" + _loc1_] = this.clone(MenuClass.systemData["FreeBeltRotation0"]);
            MenuClass.systemData["FreeBeltX" + _loc1_] = this.clone(MenuClass.systemData["FreeBeltX0"]);
            MenuClass.systemData["FreeBeltY" + _loc1_] = this.clone(MenuClass.systemData["FreeBeltY0"]);
            MenuClass.systemData["FreeBeltDepth" + _loc1_] = this.clone(MenuClass.systemData["FreeBeltDepth0"]);
            MenuClass.systemData["FreeBeltExtra" + _loc1_] = this.clone(MenuClass.systemData["FreeBeltExtra0"]);
            MenuClass.systemData["FreeChairPlus"]["_visible"].push(false);
            MenuClass.systemData["FreeChair" + _loc1_] = this.clone(MenuClass.systemData["FreeChair0"]);
            MenuClass.systemData["FreeChairScale" + _loc1_] = this.clone(MenuClass.systemData["FreeChairScale0"]);
            MenuClass.systemData["FreeChairRotation" + _loc1_] = this.clone(MenuClass.systemData["FreeChairRotation0"]);
            MenuClass.systemData["FreeChairX" + _loc1_] = this.clone(MenuClass.systemData["FreeChairX0"]);
            MenuClass.systemData["FreeChairY" + _loc1_] = this.clone(MenuClass.systemData["FreeChairY0"]);
            MenuClass.systemData["FreeChairDepth" + _loc1_] = this.clone(MenuClass.systemData["FreeChairDepth0"]);
            MenuClass.systemData["FreeChairExtra" + _loc1_] = this.clone(MenuClass.systemData["FreeChairExtra0"]);
            MenuClass.systemData["FreeChairLine" + _loc1_] = this.clone(MenuClass.systemData["FreeChairLine0"]);
            MenuClass.systemData["FreeFlagPlus"]["_visible"].push(false);
            MenuClass.systemData["FreeFlag" + _loc1_] = this.clone(MenuClass.systemData["FreeFlag0"]);
            MenuClass.systemData["FreeFlagScale" + _loc1_] = this.clone(MenuClass.systemData["FreeFlagScale0"]);
            MenuClass.systemData["FreeFlagScaleY" + _loc1_] = this.clone(MenuClass.systemData["FreeFlagScaleY0"]);
            MenuClass.systemData["FreeFlagScaleB" + _loc1_] = this.clone(MenuClass.systemData["FreeFlagScaleB0"]);
            MenuClass.systemData["FreeFlagRotation" + _loc1_] = this.clone(MenuClass.systemData["FreeFlagRotation0"]);
            MenuClass.systemData["FreeFlagX" + _loc1_] = this.clone(MenuClass.systemData["FreeFlagX0"]);
            MenuClass.systemData["FreeFlagY" + _loc1_] = this.clone(MenuClass.systemData["FreeFlagY0"]);
            MenuClass.systemData["FreeFlagDepth" + _loc1_] = this.clone(MenuClass.systemData["FreeFlagDepth0"]);
            MenuClass.systemData["FreeFlagExtra" + _loc1_] = this.clone(MenuClass.systemData["FreeFlagExtra0"]);
            MenuClass.systemData["FreeHukidashiPlus"]["_visible"].push(false);
            MenuClass.systemData["FreeHukidashi" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashi0"]);
            MenuClass.systemData["FreeHukidashiAlpha" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiAlpha0"]);
            MenuClass.systemData["FreeHukidashiBlend" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiBlend0"]);
            MenuClass.systemData["FreeHukidashiScale" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiScale0"]);
            MenuClass.systemData["FreeHukidashiScaleY" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiScaleY0"]);
            MenuClass.systemData["FreeHukidashiScaleB" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiScaleB0"]);
            MenuClass.systemData["FreeHukidashiRotation" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiRotation0"]);
            MenuClass.systemData["FreeHukidashiX" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiX0"]);
            MenuClass.systemData["FreeHukidashiY" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiY0"]);
            MenuClass.systemData["FreeHukidashiDepth" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiDepth0"]);
            MenuClass.systemData["FreeHukidashiLine" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiLine0"]);
            MenuClass.systemData["FreeHukidashiExtra" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiExtra0"]);
            MenuClass.systemData["FreeHukidashiExtraScale" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiExtraScale0"]);
            MenuClass.systemData["FreeHukidashiExtraScaleY" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiExtraScaleY0"]);
            MenuClass.systemData["FreeHukidashiExtraRotation" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiExtraRotation0"]);
            MenuClass.systemData["FreeHukidashiExtraX" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiExtraX0"]);
            MenuClass.systemData["FreeHukidashiExtraY" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiExtraY0"]);
            MenuClass.systemData["FreeHukidashiExtraLine" + _loc1_] = this.clone(MenuClass.systemData["FreeHukidashiExtraLine0"]);
            MenuClass.systemData["LoadPlus"]["_visible"].push(false);
            MenuClass.systemData["LoadPlusCheck"]["_visibleCheck"].push(false);
            _loc1_++;
         }
         var _loc8_:int = MenuClass.DepthMeter.length;
         _loc1_ = 0;
         while(_loc1_ <= 98)
         {
            if(MenuClass.systemData["FreeRibonPlus"]["_visible"][_loc1_])
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = MenuClass.systemData["FreeRibonDepth" + _loc1_]["_meter"];
            }
            else
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = null;
            }
            _loc1_++;
         }
         _loc8_ = MenuClass.DepthMeter.length;
         _loc1_ = 0;
         while(_loc1_ <= 98)
         {
            if(MenuClass.systemData["FreeBeltPlus"]["_visible"][_loc1_])
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = MenuClass.systemData["FreeBeltDepth" + _loc1_]["_meter"];
            }
            else
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = null;
            }
            _loc1_++;
         }
         _loc8_ = MenuClass.DepthMeter.length;
         _loc1_ = 0;
         while(_loc1_ <= 98)
         {
            if(MenuClass.systemData["FreeChairPlus"]["_visible"][_loc1_])
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = MenuClass.systemData["FreeChairDepth" + _loc1_]["_meter"];
            }
            else
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = null;
            }
            _loc1_++;
         }
         _loc8_ = MenuClass.DepthMeter.length;
         _loc1_ = 0;
         while(_loc1_ <= 98)
         {
            if(MenuClass.systemData["FreeChairPlus"]["_visible"][_loc1_])
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = MenuClass.systemData["FreeChairDepth" + _loc1_]["_meter"];
            }
            else
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = null;
            }
            _loc1_++;
         }
         _loc8_ = MenuClass.DepthMeter.length;
         _loc1_ = 0;
         while(_loc1_ <= 98)
         {
            if(MenuClass.systemData["FreeFlagPlus"]["_visible"][_loc1_])
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = MenuClass.systemData["FreeFlagDepth" + _loc1_]["_meter"];
            }
            else
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = null;
            }
            _loc1_++;
         }
         _loc8_ = MenuClass.DepthMeter.length;
         _loc1_ = 0;
         while(_loc1_ <= 98)
         {
            if(MenuClass.systemData["FreeHukidashiPlus"]["_visible"][_loc1_])
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = MenuClass.systemData["FreeHukidashiDepth" + _loc1_]["_meter"];
            }
            else
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = null;
            }
            _loc1_++;
         }
         _loc8_ = MenuClass.DepthMeter.length;
         _loc1_ = 0;
         while(_loc1_ <= 98)
         {
            if(MenuClass.systemData["FreeHandPlus"]["_visible"][_loc1_])
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = MenuClass.systemData["FreeHandDepth" + _loc1_]["_meter"];
            }
            else
            {
               MenuClass.DepthMeter[_loc1_ + _loc8_] = null;
            }
            _loc1_++;
         }
         if(Main.r18Check)
         {
            MenuClass.systemData["Mob"]["_visible"][0] = false;
         }
         if(Main.publishMode == "download" || Main.publishMode == "download_test")
         {
            MenuClass.menuData["Quality"] = 1;
            MenuClass.systemData["Quality"]["_menu"] = 1;
         }
         new Tab_R18Check("system","Background",0);
         _loc2_ = MenuClass.systemData["txtFieldmenu"]["_visible"].length - 1;
         _loc1_ = 0;
         while(_loc1_ <= _loc2_)
         {
            MenuClass.systemData["FontType" + _loc1_] = {
               "_menu":0,
               "_color0":[Dress_data.DressData["FontType0"][0]["_color0"][1]],
               "_txt":"Text field" + (_loc1_ + 1),
               "_font":"font"
            };
            MenuClass.systemData["txtFieldScale" + _loc1_] = {"_meter":40};
            MenuClass.systemData["txtFieldAlpha" + _loc1_] = {"_meter":100};
            MenuClass.systemData["txtFieldX" + _loc1_] = {"_meter":340};
            MenuClass.systemData["txtFieldY" + _loc1_] = {"_meter":580};
            MenuClass.systemData["txtFieldLeading" + _loc1_] = {"_meter":40};
            MenuClass.systemData["txtFieldLetter" + _loc1_] = {"_meter":10};
            MenuClass.systemData["txtFieldWidth" + _loc1_] = {"_meter":50};
            MenuClass.systemData["txtFieldBoxScaleX" + _loc1_] = {"_meter":0};
            MenuClass.systemData["txtFieldBoxScaleY" + _loc1_] = {"_meter":0};
            MenuClass.systemData["txtFieldRotation" + _loc1_] = {"_meter":0};
            MenuClass.systemData["txtFieldTateYoko" + _loc1_] = {"_menu":0};
            MenuClass.systemData["txtFieldFormatAlign" + _loc1_] = {"_menu":0};
            MenuClass.systemData["txtFieldScaleB" + _loc1_] = {"_meter":50};
            MenuClass.systemData["txtFieldAdd" + _loc1_] = {"_add0":0};
            MenuClass.systemData["txtFieldDepth" + _loc1_] = {"_depth":2};
            _loc1_++;
         }
         _loc2_ = MenuClass.systemData["LoadPlus"]["_visible"].length - 1;
         _loc1_ = 0;
         while(_loc1_ <= _loc2_)
         {
            MenuClass.systemData["LoadAdd" + _loc1_] = {"_add0":0};
            MenuClass.systemData["LoadReversalDepth" + _loc1_] = {
               "_depth":1,
               "_reversal":0
            };
            MenuClass.systemData["LoadScale" + _loc1_] = {
               "_meter":100,
               "_name":""
            };
            MenuClass.systemData["LoadScaleY" + _loc1_] = {"_meter":100};
            MenuClass.systemData["LoadSize" + _loc1_] = {"_check":false};
            MenuClass.systemData["LoadAlpha" + _loc1_] = {"_meter":100};
            MenuClass.systemData["LoadScaleB" + _loc1_] = {"_meter":500};
            MenuClass.systemData["LoadRotation" + _loc1_] = {"_meter":0};
            MenuClass.systemData["LoadX" + _loc1_] = {"_meter":500};
            MenuClass.systemData["LoadY" + _loc1_] = {"_meter":500};
            MenuClass.systemData["LoadSwfColor" + _loc1_] = {
               "_swfColor":["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"],
               "_swfMenu":0,
               "_swfSen":1
            };
            _loc1_++;
         }
         for(_loc9_ in MenuClass.charaData)
         {
            for(_loc6_ in MenuClass.charaData[_loc9_])
            {
               try
               {
                  _loc1_ = 0;
                  while(_loc1_ <= 2)
                  {
                     MenuClass.charaData[_loc9_][_loc6_]["_color" + _loc1_][0] = Dress_data.DressData[_loc6_][MenuClass.charaData[_loc9_][_loc6_]["_menu"]]["_color" + _loc1_][1];
                     _loc1_++;
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         MenuClass.charaMotoData = this.clone(MenuClass.charaData);
         MenuClass.charaDefoData = this.clone(MenuClass.charaData);
         MenuClass.systemDefoData = this.clone(MenuClass.systemData);
         for(_loc10_ in MenuClass.MY_MENUNAME)
         {
            MenuClass.copyFragData[MenuClass.MY_MENUNAME[_loc10_][0]] = false;
            MenuClass.copyFragRibonData[MenuClass.MY_MENUNAME[_loc10_][0]] = false;
         }
      }
      
      private function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
