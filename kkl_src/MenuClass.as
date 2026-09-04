package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.text.Font;
   import menu.Chara_Loading;
   import menu.HeaderbtnClass;
   import menu.Menu_Load;
   import menu.Move_DataClass;
   import menu.Stage_MoveClass;
   import menu.Tab_Class;
   import menu.Tab_ErrorWindowClass;
   import parameter.Chara_HairData;
   import parameter.Chara_IECharadata;
   import parameter.Chara_IESeihukudata;
   import parameter.Chara_IEdata;
   import parameter.Chara_data;
   import parameter.Color_data;
   import parameter.Dress_data;
   import parameter.Emotion_data;
   import parameter.Tab_IEData1;
   import parameter.Tab_IEDataOld;
   import parameter.Vibrator_data;
   import system.FullScreenClass;
   
   public class MenuClass
   {
      
      public static var stageMoveCheck:Boolean = true;
      
      public static var clickMoveCheck:Boolean = true;
      
      public static var _nowHeaderName:String = null;
      
      public static var _nowWindowName:String = null;
      
      public static var _nowTabName:String = null;
      
      public static var _beforeHeaderName:String = null;
      
      public static var menuSetFlag:Boolean = false;
      
      public static var _headerMenuNum:int = 4;
      
      public static var _nowHeaderMenuNum:int = 1;
      
      public static var AllMenuBtn:Boolean = false;
      
      public static const MY_MENUNAME:Array = [["AllCharacterSet","006798",null,1,true,"Non"],["CharacterSet","006798",null,1,true,"Non"],["AllHukuSet","006798",null,1,true,"Non"],["Character","006798",null,1,true,"Non"],["Pose","FFBF00",true,1,true,"chara"],["FootPose","FFBF00",true,1,true,"chara"],["CharaFilter","FFBF00",null,1,true,"chara"],["BodyHeight","EC2F5E",true,1,true,"chara"],["ArmHeight","EC2F5E",true,1,true,"chara"],["LegHeight","EC2F5E",true,1,true,"chara"],["Hiyake","EC2F5E",true,1,true,"chara"],["Tin","EC2F5E",true,1,false,"chara"],["Hair","339900",true,2,true,"chara"],["HairEx","339900",null,2,true,"chara"],["Eye","339900",true,2,true,"chara"],["Eyebrow","339900",true,2,true,"chara"],["Mark","339900",null,2,true,"chara"],["Mimi","339900",true,2,true,"chara"],["Heart","3399CC",true,2,true,"chara"],["Emotion","3399CC",true,2,true,"chara"],["Hand","3399CC",null,2,false,"chara"],["Seihuku","CC0000",true,3,true,"chara"],["Ysyatu","CC0000",true,3,true,"chara"],["Skirt","993366",true,3,true,"chara"],["Socks0","993366",true,3,true,"chara"],["Kutu","993366",true,3,true,"chara"],["Bura","009999",true,3,true,"chara"],["Vibrator","009999",true,3,false,"chara"],["Hat","999900",true,3,true,"chara"],["Ribon","999900",null,3,true,"chara"],["Belt","FF6600",null,3,true,"chara"],["Wristband0","FF6600",true,3,true,"chara"],["ArmBracelet0","FF6600",true,3,true,"chara"],["CharaLoad","666666",null,3,true,"chara"],["HeaderFreeHand","FFBF00",null,4,true,"system"],["HeaderFreeRibon","999900",null,4,true,"system"],["HeaderFreeBelt","999900",null,4,true,"system"],["HeaderFreeChair","9F8691",null,4,true,"system"],["HeaderFreeFlag","9F8691",null,4,true,"system"],["HeaderFreeHukidashi","9F8691",null,4,true,"system"],["Background","666666",null,4,true,"system"],["txt","666666",null,4,true,"system"],["Loadmenu","666666",null,4,true,"system"],["SystemOption","666666",null,4,true,"system"],["Story","bda057",null,4,true,"Non"],["Save","CC6699",null,0,true,"Non"],["Tool","666666",null,0,true,"system"],["Escape","669933",null,0,true,"Non"],["StoryTool","666666",null,0,true,"Non"],["EasyAllCharacterSet","006798",null,10,true,"Non"],["EasyCharacterSet","006798",null,10,true,"Non"],["EasyAllHukuSet","006798",null,10,true,"Non"],["EasyCharacter","006798",null,10,true,"Non"],["EasyPose","FFBF00",null,10,true,"chara"],["EasyFootPose","FFBF00",null,10,true,"chara"],["EasyBodyHeight","EC2F5E",null,10,true,"chara"],["EasyHair","339900",null,10,true,"chara"],["EasyEye","339900",null,10,true,"chara"],["EasySeihuku","CC0000",null,10,true,"chara"],["EasySkirt","993366",null,10,true,"chara"],["EasyBura","009999",null,10,true,"chara"],["EasyHat","999900",null,10,true,"chara"],["EasyWristband0","FF6600",null,10,true,"chara"],["EasyBackground","666666",null,10,true,"system"],["EasySave","CC6699",null,10,true,"Non"],["EasyTool","666666",null,10,true,"system"]];
      
      public static var DepthMeter:Array = new Array();
      
      public static var hederSwitchCheck:Boolean = true;
      
      public static var _nowHederSwitch:Boolean = true;
      
      public static var StoryTimeLineData:Array = [["chara0","chara1","chara2","chara3","chara4","chara5","chara6","chara7","chara8","fullData"]];
      
      public static var StoryTimeLineCopy:Array;
      
      public static var timeLineCheck:int = 0;
      
      public static var NowFrameCheck:int = 0;
      
      public static var BeforePage:int = 0;
      
      public static var StoryMode:Boolean = false;
      
      public static var StoryBackupData:Array;
      
      public static var bitmapDataList:Array;
      
      public static var clickCheck:Boolean = true;
      
      public static var storyFirstCheck:Boolean = false;
      
      public static var ClickRock:Boolean;
      
      public static var HukuRock:Boolean;
      
      public static var tabMenuAdd:Array = new Array();
      
      public static var tabAdd:Array = new Array();
      
      public static var txtFieldAdd:Array = new Array();
      
      public static var txtFieldAdd2:Array = new Array();
      
      public static var allFonts:Array = new Array();
      
      public static var FontList:Array = new Array("_sans","_serif","_typewriter","_等幅","_ゴシック","_明朝");
      
      public static var UmekomiFontFlag:Array = new Array(0,0,0,0,0);
      
      public static var UmekomiItemFlag:Array = new Array(0,0,0,0,0,0);
      
      public static var headerAdd:Array = new Array();
      
      public static var popRandomTabNameAdd:Array = new Array();
      
      public static var popAllRandomTabNameAdd:Array = new Array();
      
      public static var RamdomOpenCheck:Boolean;
      
      public static var AddOpenCheck:int = 0;
      
      public static var AddOpenAdd:Array = new Array();
      
      public static var AddCloseAdd:Array = new Array();
      
      public static var ColorOpenCheck:Boolean = false;
      
      public static var ColorCustomOpenCheck:Boolean = false;
      
      public static var PassWindowOpenCheck:Boolean = false;
      
      public static var colorAdd:Array = new Array();
      
      public static var colorPlusAdd:Array = new Array();
      
      public static var swfColorPlusAdd:Array = new Array();
      
      public static var colorMenuNum:int;
      
      public static var colorSelectNum:int;
      
      public static var colorPaletteCheck:Array = [0,0,0];
      
      public static var colorClickName:Array = [null,null];
      
      public static var bangsHeightData:Array = [[0,-39.95,-81.4,0.95,0.7,0,0,0,0],[0,-39.95,-81.4,0.95,0.7,0,0,0,0],[0,-39.95,-81.4,0.95,0.7,0,0,0,0],[0,-39.95,-81.4,0.95,0.7,0,0,0,0],[0,-39.95,-81.4,0.95,0.7,0,0,0,0],[0,-39.95,-81.4,0.95,0.7,0,0,0,0],[0,-39.95,-81.4,0.95,0.7,0,0,0,0],[0,-39.95,-81.4,0.95,0.7,0,0,0,0],[0,-39.95,-81.4,0.95,0.7,0,0,0,0]];
      
      public static var sideBurnLeftHeightData:Array = [[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0]];
      
      public static var sideBurnRightHeightData:Array = [[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0],[0,-39,-49.65,0.7354,0.5275,0]];
      
      public static var charaAdd:Array = new Array();
      
      public static var charaAddDepth:Array = new Array();
      
      public static var shadowAdd:Array = new Array();
      
      public static var shadowSide0X:Array = new Array();
      
      public static var shadowSide1X:Array = new Array();
      
      public static var hitLineY:Array = new Array();
      
      public static var hitCheckAdd:Array = new Array();
      
      public static var _characterNum:int = 8;
      
      public static var tabData:Array = new Array();
      
      public static var _nowCharaNum:int = 0;
      
      public static var _nowTargetMode:String = "Select";
      
      public static var _nowTargetModeLoadURL:Boolean = false;
      
      public static var _nowSelectChara:Array = new Array(false,false,false,false,false,false,false,false,false);
      
      public static var spaceKeyPress:Boolean = false;
      
      public static var shiftKeyPress:Boolean = false;

      public static var menuData:Object;
      
      public static var charaData:Array = new Array();
      
      public static var copyFragData:Array = new Array();
      
      public static var copyFragRibonData:Array = new Array();
      
      public static var HairData:Array = new Array();
      
      // public static var charaMotoData:Object;
      
      public static var systemDefoData:Object;
      
      public static var charaDefoData:Object;
      
      // public static var menuCustomResetNum:Object;
      
      public static var charaOldData:Array = new Array();
      
      public static var systemData:Object;
      
      public static var systemMotoData:Object;
      
      public static var systemOldData:Object;
      
      public static var systemChairData:Object;
      
      public static var charaSpace:int = 160;
      
      public static var HideIconCheck:Boolean = false;
      
      public static var ErrorWindow:MovieClip;
      
      public static var udeDepthBefore:Array = new Array();
      
      public static var KandoSetNum:Number = 0;
      
      public static var TabChara_randomCheck:int = 0;
      
      public static var tabAllRandomClose:MovieClip;
      
      public static var urlLoadCount:int = 0;
      
      public static var urlLoadCompCount:int = 0;
      
      public static var urlLoadCompCheck:Boolean = true;
      
      public static var firstLoadEmotionCount:int = 1;
      
      public static var beforeEmotionNum:Array = new Array(0,0,0,0,0,0,0,0,0);
      
      public static var DressSetCheck:Boolean = false;
      
      public static var alphaTest:Array = new Array(1,1,1,1,1,1,1,1,1);
      
      public static var muneMove:Array = new Array([0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0]);
      
      public static var AllCharacterSetAdd:Array = new Array();
      
      public static var AllHukuSetAdd:Array = new Array();
      
      public static var CharacterSetAdd:Array = new Array();
      
      public static var SaveRestoreData:Array = new Array();
      
      public static var so_Save:SharedObject;
      
      public static var so_StoryToolSaveWindow:SharedObject;
      
      public static var so_StorySaveWindow:SharedObject;
      
      public static var TimuLineSMenu:MovieClip;
      
      public static var TimuLineSMenuFlag:Boolean = false;
      
      public static var quickSaveData:Array = new Array(null,null,null);
      
      public static var quickSaveFlag:Array = new Array(false,false,false);
      
      public static var quickSaveText:MovieClip;
      
      public static var quickSaveTextFlag:Boolean = false;
      
      public static var importCheckAdd:Array = new Array();
      
      public static var importCheck:Array = new Array();
      
      public static var exportCheckAdd:Array = new Array();
      
      public static var exportCheck:Array = new Array();
      
      public static var TxtCountArea:MovieClip;
      
      public static var shortcutAdd:Array = new Array();
      
      public static var shortcutHeaderAr:Array = new Array();
      
      public static var shortcutHeaderbtnAdd:Array = new Array();
      
      public static var shortcutAr:Array = [["headerMenu","",""],["headerScrollDown",",",44],["headerScrollUp",".",46],["zoomPlus","q",113],["zoomMinus","w",119],["zoom100","e",101],["fullScreen","",""],["selecterDepth","v",118],["MeterNumView","m",109],["StoryTimeLinePlus2","",""],["StoryTimeLineMinus2","",""],["StoryTimeLineMinus","",""],["StoryTimeLinePlus","",""],["QuickSave1","",""],["QuickSave2","",""],["QuickSave3","",""],["QuickLoad1","",""],["QuickLoad2","",""],["QuickLoad3","",""]];
      
      public static var kirinukiWaku:MovieClip;
      
      public static var kCursor:MovieClip;
      
      public static var alphaMode:Boolean = false;
      
      public static var photoSize:Array;
      
      public static var CopyPhotoSize:Array = null;
      
      public static var cameraMode:int = 0;
      
      public static var jpgMeter:int = 1;
      
      public static var sCursor:MovieClip;
      
      public static var vibratorSpeedCount:Array = new Array(0,0,0,0,0,0,0,0,0);
      
      public static var vibratorMoveBefore:Array = new Array(0,0,0,0,0,0,0,0,0);
      
      public static var EmotionRandom:Array = new Array(1,1,1,1,1,1,1,1,1);
      
      public static var charaX:Array = [[500],[457,543],[412,500,587],[370,457,543,630],[325,412,500,587,675],[283,370,457,543,630,717],[237,325,412,500,587,675,762],[196,283,370,457,543,630,717,804],[150,237,325,412,500,587,675,762,850]];
       
      
      private var enterCount:int = 0;
      
      public function MenuClass()
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc7_:Array = null;
         super();
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         _loc1_ = (Main._stageWidth - 800) / -2;
         _loc2_ = (Main._stageHeight - 600) / -2;
         photoSize = new Array(_loc1_,_loc2_,Main._stageWidth,Main._stageHeight);
         MenuClass.allFonts = Font.enumerateFonts(true);
         var _loc6_:int = MenuClass.allFonts.length;
         _loc3_ = 0;
         while(_loc3_ < _loc6_)
         {
            FontList.push(MenuClass.allFonts[_loc3_].fontName);
            _loc3_++;
         }
         FontList.push("日本語-Light");
         FontList.push("日本語-Medium");
         FontList.push("日本語-Black");
         FontList.push("ABC-1");
         FontList.push("ABC-2");
         _loc6_ = MY_MENUNAME.length;
         _loc3_ = 0;
         while(_loc3_ < _loc6_)
         {
            if(MY_MENUNAME[_loc3_][3] != 10 && MY_MENUNAME[_loc3_][0] != "StoryTool")
            {
               (_loc7_ = new Array(0,"",""))[0] = MY_MENUNAME[_loc3_][0];
               shortcutHeaderAr.push(_loc7_);
            }
            _loc3_++;
         }
         _loc6_ = shortcutAr.length;
         _loc3_ = 0;
         while(_loc3_ < _loc6_)
         {
            (_loc7_ = new Array(0,"",""))[0] = shortcutAr[_loc3_][0];
            _loc7_[1] = shortcutAr[_loc3_][1];
            _loc7_[2] = shortcutAr[_loc3_][2];
            shortcutHeaderAr.push(_loc7_);
            _loc3_++;
         }
         if(Main.accessObj.shortcut)
         {
            _loc6_ = shortcutHeaderAr.length;
            _loc5_ = Main.accessObj.shortcut.length;
            _loc3_ = 0;
            while(_loc3_ < _loc6_)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc5_)
               {
                  if(shortcutHeaderAr[_loc3_][0] == Main.accessObj.shortcut[_loc4_][0])
                  {
                     shortcutHeaderAr[_loc3_][1] = Main.accessObj.shortcut[_loc4_][1];
                     shortcutHeaderAr[_loc3_][2] = Main.accessObj.shortcut[_loc4_][2];
                  }
                  _loc4_++;
               }
               _loc3_++;
            }
            Main.accessObj.shortcut = shortcutHeaderAr;
         }
         else
         {
            Main.accessObj.shortcut = shortcutHeaderAr;
         }
         Main.loadObj.addEventListener(Event.ENTER_FRAME,this.Enter);
      }
      
      private function Enter(param1:Event) : void
      {
         var e:Event = param1;
         if(this.enterCount == 0)
         {
            try
            {
               ++Main.loadCount;
               new Color_data();
               new Dress_data();
               new Emotion_data();
               new Vibrator_data();
               new Chara_HairData();
               this.DataSetting();
               new Chara_data();
               new Tab_IEData1();
               new Tab_IEDataOld();
            }
            catch(myError:Error)
            {
               trace("MenuClass DataSetting Error     ",myError);
            }
         }
         else if(this.enterCount == 1)
         {
            try
            {
               ++Main.loadCount;
               new Move_DataClass();
            }
            catch(myError:Error)
            {
               trace("MenuClass Move_DataClass Error     ",myError);
            }
         }
         else if(this.enterCount == 2)
         {
            try
            {
               ++Main.loadCount;
               new HeaderbtnClass();
            }
            catch(myError:Error)
            {
               trace("MenuClass  HeaderbtnClass Error    ",myError);
            }
         }
         else if(this.enterCount == 3)
         {
            try
            {
               ++Main.loadCount;
               new Tab_Class();
            }
            catch(myError:Error)
            {
               trace("MenuClass  Tab_Class Error    ",myError);
            }
         }
         else if(this.enterCount == 4)
         {
            try
            {
               ++Main.loadCount;
               new Stage_MoveClass(Main.stageVar);
            }
            catch(myError:Error)
            {
               trace("MenuClass Stage_MoveClass Error     ",myError);
            }
         }
         else if(this.enterCount == 5)
         {
            try
            {
               ++Main.loadCount;
               new FullScreenClass();
            }
            catch(myError:Error)
            {
               trace("MenuClass FullScreenClass Error     ",myError);
            }
         }
         else if(this.enterCount == 6)
         {
            try
            {
               ++Main.loadCount;
               new Tab_ErrorWindowClass();
            }
            catch(myError:Error)
            {
               trace("MenuClass Tab_ErrorWindowClass  Error    ",myError);
            }
         }
         else if(this.enterCount == 7)
         {
            try
            {
               ++Main.loadCount;
               new Chara_Loading("main");
            }
            catch(myError:Error)
            {
               trace("MenuClass Chara_Loading Error    ",myError);
            }
            Main.loadObj.removeEventListener(Event.ENTER_FRAME,this.Enter);
         }
         ++this.enterCount;
      }
      
      private function DataSetting() : void
      {
         tabData["AllCharacterSet"] = [["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["AllCharacterSet_Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["TabAllChara",new Menu_Load.TabCharaClass(),{"_sort":1}]];
         tabData["EasyAllCharacterSet"] = [["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["AllCharacterSet_Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["TabAllChara",new Menu_Load.TabCharaClass(),{"_sort":1}]];
         tabData["CharacterSet"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTarget2Class(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["CharacterSet_Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["TabChara",new Menu_Load.TabCharaClass(),{"_sort":1}]];
         tabData["EasyCharacterSet"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTarget2Class(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["CharacterSet_Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["TabChara",new Menu_Load.TabCharaClass(),{"_sort":1}]];
         tabData["AllHukuSet"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["AllHukuSet_Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["DeformerReal",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":1,
            "_random":true
         }],["BodyType",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":1,
            "_random":true,
            "_r18":2
         }],["HairType",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":1,
            "_random":true
         }],["TabAllHukuSet",new Menu_Load.TabCharaClass(),{"_sort":2}]];
         tabData["EasyAllHukuSet"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["AllHukuSet_Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["DeformerReal",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":1,
            "_random":true
         }],["BodyType",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":1,
            "_random":true,
            "_r18":2
         }],["HairType",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":1,
            "_random":true
         }],["TabAllHukuSet",new Menu_Load.TabCharaClass(),{"_sort":2}]];
         tabData["Character"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["SortTarget",new Menu_Load.TabSortTargetClass(),{"_sort":0}],["CopyAllCharacter",new Menu_Load.TabCopyAllBodyTargetClass(),{"_sort":0}],["ResetTargetAll",new Menu_Load.TabResetAllTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_menu":true,
            "_color0":true,
            "_meter":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["SelectCharacter",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"SelectCharacter",
            "_menu":"SelectCharacter",
            "_sort":1
         }],["PoseSet",new Menu_Load.TabMenu2ReversalClass(),{
            "_menu":"system",
            "_sort":1,
            "_random":true
         }],["AllBodySet",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":1,
            "_random":true
         }],["AllBodyHeightSet",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemAll",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["AllHairSet",new Menu_Load.TabMenu3ColorClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true,
            "_randomBox":true
         }],["AllFaceSet",new Menu_Load.TabMenu3ColorClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_randomBox":true
         }],["DressSet",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":2,
            "_random":true,
            "_randomBox":true
         }],["LinkDressSet",new Menu_Load.TabRandomLinkClass(),{"_sort":2}],["UnderwearSet",new Menu_Load.TabMenu3Class(),{
            "_menu":"system",
            "_sort":2,
            "_random":true,
            "_randomBox":true
         }],["BackgroundSet",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":2,
            "_random":true,
            "_randomBox":true
         }]];
         tabData["EasyCharacter"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_menu":true,
            "_color0":true,
            "_meter":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["SelectCharacter",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"SelectCharacter",
            "_menu":"SelectCharacter",
            "_sort":1
         }],["PoseSet",new Menu_Load.TabMenu3Class(),{
            "_menu":"system",
            "_sort":1,
            "_random":true
         }],["AllBodySet",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":1,
            "_random":true
         }],["AllBodyHeightSet",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"system",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["AllHairSet",new Menu_Load.TabMenu3ColorClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true,
            "_randomBox":true
         }],["AllFaceSet",new Menu_Load.TabMenu3ColorClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_randomBox":true
         }],["DressSet",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":2,
            "_random":true,
            "_randomBox":true
         }],["LinkDressSet",new Menu_Load.TabRandomLinkClass(),{"_sort":2}],["UnderwearSet",new Menu_Load.TabMenu3Class(),{
            "_menu":"system",
            "_sort":2,
            "_random":true,
            "_randomBox":true
         }],["BackgroundSet",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":2,
            "_random":true,
            "_randomBox":true
         }]];
         tabData["Pose"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["LeftArm",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":3
         }],["LeftArm2",new Menu_Load.TabMeter2ShortDepthClass(),{
            "_meterType":1,
            "_meter":"chara",
            "_depth":3,
            "_sort":1,
            "_random":true,
            "_free":3
         }],["LeftHand",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true
         }],["LeftHand2",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":3
         }],["LeftArmFreeRotation",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":false
         }],["LinkHand",new Menu_Load.TabLinkClass(),{"_sort":1}],["RightArm",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":3
         }],["RightArm2",new Menu_Load.TabMeter2ShortDepthClass(),{
            "_meterType":1,
            "_meter":"chara",
            "_depth":3,
            "_sort":2,
            "_random":true,
            "_free":3
         }],["RightHand",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":true
         }],["RightHand2",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":3
         }],["RightArmFreeRotation",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":2,
            "_random":false
         }],["Item0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["LinkItem",new Menu_Load.TabLinkClass(),{"_sort":3}],["Item1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }]];
         tabData["EasyPose"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["LeftArm",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":3
         }],["LeftArm2",new Menu_Load.TabMeter2ShortDepthClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_depth":1,
            "_sort":1,
            "_random":true,
            "_free":3
         }],["LeftHand",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true
         }],["LeftHand2",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":3
         }],["LinkHand",new Menu_Load.TabLinkClass(),{"_sort":1}],["RightArm",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":3
         }],["RightArm2",new Menu_Load.TabMeter2ShortDepthClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_depth":1,
            "_sort":2,
            "_random":true,
            "_free":3
         }],["RightHand",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":true
         }],["RightHand2",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":3
         }],["Item0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["LinkItem",new Menu_Load.TabLinkClass(),{"_sort":3}],["Item1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }]];
         tabData["FootPose"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true
         }],["SortTarget",new Menu_Load.TabSortTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Ashi",new Menu_Load.TabMenuReversalClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true
         }],["LinkAshi",new Menu_Load.TabLinkClass(),{"_sort":1}],["Ashi2",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true
         }],["Head",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":3
         }],["Rmove",new Menu_Load.TabMeter2Class(),{
            "_meterType":1,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":3
         }],["CharaShift",new Menu_Load.TabMoveClass(),{"_sort":2}],["Xmove",new Menu_Load.TabMeter2Class(),{
            "_meterType":2,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["Ymove",new Menu_Load.TabMeter2Class(),{
            "_meterType":2,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["BodyYMove",new Menu_Load.TabMeter2Class(),{
            "_meterType":2,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["Jump",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["Shadow",new Menu_Load.TabEyeClass(),{
            "_visible":"chara",
            "_sort":2,
            "_random":false
         }]
         ];
         tabData["CharaFilter"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_check":true,
            "_color0":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["BodyPlus",new Menu_Load.TabMenuColorClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":false
         }],["BodyPlusMeter",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":3
         }],["BodyAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":3
         }],["CharaDropShadow",new Menu_Load.TabEyeMenuColorClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["CharaDropShadowIn",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":2,
            "_random":true
         }],["CharaDropShadowOut",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":2,
            "_random":true
         }],["CharaDropShadowHide",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":2,
            "_random":true
         }],["CharaDropShadowAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true
         }],["CharaDropShadowStr",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true
         }],["CharaDropShadowX",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true
         }],["LinkCharaDropShadow",new Menu_Load.TabLinkClass(),{"_sort":3}],["CharaDropShadowY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true
         }],["CharaDropShadowRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"chara",
            "_sort":3,
            "_random":true
         }],["CharaDropShadowDistance",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true
         }],["CharaBlur",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_sort":4,
            "_random":true
         }],["CharaBlurX",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":true
         }],["LinkCharaBlur",new Menu_Load.TabLinkClass(),{"_sort":4}],["CharaBlurY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":true
         }],["CharaFilterEmotion",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":4,
            "_random":true
         }]];
         tabData["EasyFootPose"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Ashi",new Menu_Load.TabMenuReversalClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true
         }],["LinkAshi",new Menu_Load.TabLinkClass(),{"_sort":1}],["Ashi2",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true
         }],["Head",new Menu_Load.TabMeter2Class(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":3
         }],["Rmove",new Menu_Load.TabMeter2Class(),{
            "_meterType":1,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":3
         }],["Xmove",new Menu_Load.TabMeter2Class(),{
            "_meterType":2,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["Ymove",new Menu_Load.TabMeter2Class(),{
            "_meterType":2,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["Jump",new Menu_Load.TabMeter2Class(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }]];
         tabData["BodyHeight"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_menu":true,
            "_meter":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["BodySize",new Menu_Load.TabMeterClass(),{
            "_meterType":2,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["BodyHeight",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["LinkBodyHeight",new Menu_Load.TabLinkClass(),{"_sort":1}],["AshiHeight",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["AshiWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["HandWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":3
         }],["BodyWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["ShoulderWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["HipWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["Heso",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":3,
            "_random":true
         }],["Waist",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":3,
            "_random":false
         }],["WaistAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_free":3
         }],["douHeight",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_free":0
         }]
         ];
         tabData["ArmHeight"] = [
            ["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],
            ["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],
            ["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],
            ["Random",new Menu_Load.TabRandomTargetClass(),{
               "_sort":0,
               "_menu":true,
               "_meter":true
            }],
            ["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],
            ["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],
            ["LeftUpperArmScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":1,
               "_random":false,
               "_free":0
            }],
            ["LeftUpperArmOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":1,
               "_random":false,
               "_free":0
            }],
            ["LeftUpperArmScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":1,
               "_random":false,
               "_free":0
            }],
            ["LeftUpperArmOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":1,
               "_random":false,
               "_free":0
            }],
            ["LeftShoulderVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":1,
               "_random":false
            }],
            ["LeftUpperArmVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":1,
               "_random":false
            }],
            ["LinkUpperArmSettings",new Menu_Load.TabLinkClass(),{"_sort":1}],
            ["RightUpperArmScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":2,
               "_random":false,
               "_free":0
            }],
            ["RightUpperArmOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":2,
               "_random":false,
               "_free":0
            }],
            ["RightUpperArmScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":2,
               "_random":false,
               "_free":0
            }],
            ["RightUpperArmOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":2,
               "_random":false,
               "_free":0
            }],
            ["RightShoulderVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":2,
               "_random":false
            }],
            ["RightUpperArmVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":2,
               "_random":false
            }],
            ["LeftArmScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":3,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftArmOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":3,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftArmScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":3,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftArmOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":3,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftArmVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":3,
               "_random":false,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftArmFlip",new Menu_Load.TabCheckClass(),{
               "_check":"chara",
               "_sort":3,
               "_random":false,
               "_overrideMenuColor": "D272D9"
            }],
            ["LinkArmSettings",new Menu_Load.TabLinkClass(),{"_sort":3}],
            ["RightArmScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":4,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["RightArmOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":4,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["RightArmScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":4,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["RightArmOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":4,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["RightArmVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":4,
               "_random":false,
               "_overrideMenuColor": "D272D9"
            }],
            ["RightArmFlip",new Menu_Load.TabCheckClass(),{
               "_check":"chara",
               "_sort":4,
               "_random":false,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftHandScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":5,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["LeftHandOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":5,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["LeftHandScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":5,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["LeftHandOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":5,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["LeftHandVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":5,
               "_random":false,
               "_overrideMenuColor": "006798"
            }],
            ["LeftHandFlip",new Menu_Load.TabCheckClass(),{
               "_check":"chara",
               "_sort":5,
               "_random":false,
               "_overrideMenuColor": "006798"
            }],
            ["LinkHandSettings",new Menu_Load.TabLinkClass(),{"_sort":5}],
            ["RightHandScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":6,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["RightHandOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":6,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["RightHandScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":6,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["RightHandOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":6,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["RightHandVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":6,
               "_random":false,
               "_overrideMenuColor": "006798"
            }],
            ["RightHandFlip",new Menu_Load.TabCheckClass(),{
               "_check":"chara",
               "_sort":6,
               "_random":false,
               "_overrideMenuColor": "006798"
            }]
         ];
         tabData["LegHeight"] = [
            ["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],
            ["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],
            ["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],
            ["Random",new Menu_Load.TabRandomTargetClass(),{
               "_sort":0,
               "_menu":true,
               "_meter":true
            }],
            ["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],
            ["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],
            ["LeftThighRotation",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":1,
               "_meter":"chara",
               "_sort":1,
               "_random":false,
               "_free":0
            }],
            ["LeftThighScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":1,
               "_random":false,
               "_free":0
            }],
            ["LeftThighOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":1,
               "_random":false,
               "_free":0
            }],
            ["LeftThighScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":1,
               "_random":false,
               "_free":0
            }],
            ["LeftThighOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":1,
               "_random":false,
               "_free":0
            }],
            ["LeftThighVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":1,
               "_random":false
            }],
            ["LinkThighSettings",new Menu_Load.TabLinkClass(),{"_sort":1}],
            ["RightThighRotation",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":1,
               "_meter":"chara",
               "_sort":2,
               "_random":false,
               "_free":0
            }],
            ["RightThighScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":2,
               "_random":false,
               "_free":0
            }],
            ["RightThighOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":2,
               "_random":false,
               "_free":0
            }],
            ["RightThighScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":2,
               "_random":false,
               "_free":0
            }],
            ["RightThighOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":2,
               "_random":false,
               "_free":0
            }],
            ["RightThighVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":2,
               "_random":false
            }],
            ["LeftLegRotation",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":1,
               "_meter":"chara",
               "_sort":3,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftLegScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":3,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftLegOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":3,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftLegScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":3,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftLegOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":3,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftLegVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":3,
               "_random":false,
               "_overrideMenuColor": "D272D9"
            }],
            ["LinkLegSettings",new Menu_Load.TabLinkClass(),{"_sort":3}],
            ["RightLegRotation",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":1,
               "_meter":"chara",
               "_sort":4,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["RightLegScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":4,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["RightLegOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":4,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["RightLegScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":4,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["RightLegOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":4,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "D272D9"
            }],
            ["RightLegVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":4,
               "_random":false,
               "_overrideMenuColor": "D272D9"
            }],
            ["LeftFootRotation",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":1,
               "_meter":"chara",
               "_sort":5,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["LeftFootScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":5,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["LeftFootOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":5,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["LeftFootScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":5,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["LeftFootOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":5,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["LeftFootVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":5,
               "_random":false,
               "_overrideMenuColor": "006798"
            }],
            ["LinkFootSettings",new Menu_Load.TabLinkClass(),{"_sort":5}],
            ["RightFootRotation",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":1,
               "_meter":"chara",
               "_sort":6,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["RightFootScaleX",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":6,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["RightFootOffsetX",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":6,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["RightFootScaleY",new Menu_Load.TabMeterShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":6,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["RightFootOffsetY",new Menu_Load.TabMeter2ShortClass(),{
               "_meterType":0,
               "_meter":"chara",
               "_sort":6,
               "_random":false,
               "_free":0,
               "_overrideMenuColor": "006798"
            }],
            ["RightFootVisible",new Menu_Load.TabEyeClass(),{
               "_visible":"chara",
               "_sort":6,
               "_random":false,
               "_overrideMenuColor": "006798"
            }]
         ];
         tabData["Hiyake"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Body",new Menu_Load.TabColorClass(),{
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Hiyake",new Menu_Load.TabEyeMenuColorClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Hoho",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true
         }],["HeadScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["NeckHeight",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["Contour",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":false
         }],["ContourWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["ContourHeight",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["Breast",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":3,
            "_random":true
         }],["Nipple",new Menu_Load.TabEyeMenuColorClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":false,
            "_r18":1
         }],["NippleSize",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_r18":1,
            "_free":0
         }],["NippleHeight",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_r18":1,
            "_free":0
         }],["NippleWidth",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_r18":1,
            "_free":0
         }]];
         tabData["EasyBodyHeight"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Body",new Menu_Load.TabColorClass(),{
            "_color":"chara",
            "_sort":1,
            "_random":true,
            "_headerName":"Hiyake"
         }],["Hiyake",new Menu_Load.TabEyeMenuColorClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true,
            "_headerName":"Hiyake"
         }],["BodyHeight",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["BodyAllWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["Waist",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":false
         }],["Breast",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":true,
            "_headerName":"Hiyake"
         }],["Nipple",new Menu_Load.TabMenuColorClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":false,
            "_r18":1,
            "_headerName":"Hiyake"
         }],["NippleSize",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_r18":1,
            "_headerName":"Hiyake",
            "_free":0
         }],["Contour",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":true,
            "_headerName":"Hiyake"
         }],["UnderHair",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_r18":1,
            "_random":true,
            "_headerName":"Tin"
         }]];
         tabData["Tin"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_check":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Tin",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":2,
            "_sort":1,
            "_random":false
         }],["TinEx",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["TinKawa",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":false
         }],
         ["TinSize",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],
         ["TinSizeAuto",new Menu_Load.TabManualAutoClass(),{
            "_check":"chara",
            "_kando":0,
            "_sort":2
         }],
         ["TinScaleX",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],
         ["TinScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],
         ["TinOffsetX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],
         ["TinOffsetY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["TinManualAuto",new Menu_Load.TabManualAutoClass(),{
            "_check":"chara",
            "_kando":0,
            "_sort":3
         }],["TinBokki",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":3,
            "_random":false
         }],["TinSwing",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["Tama",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_sort":3,
            "_random":false
         }],["TamaSize",new Menu_Load.TabMeterShortClass(),{
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["s",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":4,
            "_random":false
         }],["UnderHair",new Menu_Load.TabEyeMenuColorClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":4,
            "_random":true
         }],["UnderHairAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":true,
            "_free":3
         }]];
         tabData["Hair"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":false,
            "_color2":false
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["HairAll",new Menu_Load.TabCCCClass(),{
            "_color":"system",
            "_sort":1
         }],["Hair",new Menu_Load.TabMenuCCCReversalClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Bangs",new Menu_Load.TabEyeMenuCCReversalDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_depth":1,
            "_random":true
         }],["Bangs_Height",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["HairBack",new Menu_Load.TabEyeMenuCCCTurnClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["HairBack_Height",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["HairBack_Width",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["HairBack_Y",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["SideBurnLeft",new Menu_Load.TabEyeMenuCCCDepthTurnClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":2,
            "_sort":3,
            "_random":true
         }],["SideBurnLeft_Height",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_free":0
         }],["SideBurnLeft_x",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_free":0
         }],["LinkSideBurn",new Menu_Load.TabLinkClass(),{"_sort":3}],["SideBurnRight",new Menu_Load.TabEyeMenuCCCDepthTurnClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":2,
            "_sort":4,
            "_random":true
         }],["SideBurnRight_Height",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":true,
            "_free":0
         }],["SideBurnRight_x",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":true,
            "_free":0
         }]];
         tabData["EasyHair"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Hair",new Menu_Load.TabMenuColorReversalClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["HairBack",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["HairBack_Height",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["Bangs",new Menu_Load.TabEyeMenuReversalClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_depth":1,
            "_random":true
         }],["Bangs_Height",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["SideBurnLeft",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":2,
            "_sort":2,
            "_random":true
         }],["SideBurnLeft_Height",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["HairExSetEasy",new Menu_Load.TabEyeMenu3Class(),{
            "_visible":"system",
            "_menu":"system",
            "_sort":2,
            "_random":true,
            "_headerName":"EasyHair"
         }]];
         tabData["HairEx"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["TabUpDown",new Menu_Load.TabUpDownTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyAllTargetClass(),{"_sort":0}],["CopyRibon",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":false,
            "_color2":false
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["HairExSet",new Menu_Load.TabMenu2Class(),{
            "_menu":"system",
            "_sort":1,
            "_random":true
         }],["HairExPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"chara",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1,
            "_random":false
         }],["HairExAdd",new Menu_Load.TabMenuAddClass(),{
            "_menu":"charaPlus",
            "_data":"HairExPlus",
            "_sort":1
         }],["HairEx",new Menu_Load.TabMenuCCCRRDepthTurnShadowClass(),{
            "_menu":"charaPlus",
            "_depth":2,
            "_color":"charaPlus",
            "_data":"HairExPlus",
            "_sort":1,
            "_random":false
         }],["HairExScaleX",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"HairExPlus",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["LinkHairExScale",new Menu_Load.TabLinkClass(),{"_sort":2}],["HairExScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"HairExPlus",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["LinkHairExLine",new Menu_Load.TabLinkClass(),{"_sort":2}],["HairExLine",new Menu_Load.TabMenuClass(),{
            "_menu":"charaPlus",
            "_data":"HairExPlus",
            "_sort":2,
            "_random":false
         }],["HairExAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"HairExPlus",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["HairExScaleB",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"HairExPlus",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["HairExRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"charaPlus",
            "_data":"HairExPlus",
            "_sort":3,
            "_random":false,
            "_free":3
         }],["HairExRotationPlus",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"charaPlus",
            "_data":"HairExPlus",
            "_sort":3,
            "_random":false,
            "_free":3
         }],["HairExX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"HairExPlus",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["HairExY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"HairExPlus",
            "_sort":3,
            "_random":false,
            "_free":0
         }]];
         tabData["Eye"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Eye",new Menu_Load.TabMenuColorDepthClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_depth":1,
            "_sort":1,
            "_random":true
         }],["EyeX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["EyeY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["EyeScaleX",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["EyeScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["EyeRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["Eyelib",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_sort":2,
            "_random":true
         }],["Eyelash",new Menu_Load.TabEyeMenu3Class(),{
            "_visible":"chara",
            "_menu":"chara",
            "_sort":2,
            "_random":false
         }],["Lowerlash",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_sort":2,
            "_random":false
         }],["EyeballLeft",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["LinkEyeball",new Menu_Load.TabLinkClass(),{"_sort":3}],["EyeballRight",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["EyeballScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["LinkEyeballScale",new Menu_Load.TabLinkClass(),{"_sort":3}],["EyeballScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["EyeballX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":false,
            "_free":0
         }],["EyeballY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":false,
            "_free":0
         }],["EyeballLight",new Menu_Load.TabEyeMenuReversalClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_sort":4,
            "_random":false
         }],["EyeballLightRotation",new Menu_Load.TabMeter2Class(),{
            "_meterType":1,
            "_meter":"chara",
            "_sort":4,
            "_random":false,
            "_free":3
         }]];
         tabData["Eyebrow"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Eyebrow",new Menu_Load.TabMenuCCDepthClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_depth":1,
            "_sort":1,
            "_random":true
         }],["EyebrowRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["EyebrowY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["EyebrowX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["MouthScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["MouthY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["FaceOption",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"chara",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":2,
            "_random":false
         }],["Nose",new Menu_Load.TabEyeMenuCCCReversalClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["NoseScaleX",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["LinkNoseScale",new Menu_Load.TabLinkClass(),{"_sort":3}],["NoseScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["NoseHeight",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["NoseShadow",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_sort":4,
            "_random":true
         }],["NoseShadowAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":false,
            "_free":3
         }],["NoseShadowScaleX",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":false,
            "_free":0
         }],["LinkNoseShadowScale",new Menu_Load.TabLinkClass(),{"_sort":4}],["NoseShadowScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":false,
            "_free":0
         }],["NoseShadowHeight",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":false,
            "_free":0
         }],["Ear",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":5,
            "_random":true
         }],["EarScale",new Menu_Load.TabMeterShort2Class(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":5,
            "_random":false,
            "_free":0
         }],["EarRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":5,
            "_random":false,
            "_free":3
         }],["EarX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":5,
            "_random":false,
            "_free":0
         }],["EarY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":5,
            "_random":false,
            "_free":0
         }]];
         tabData["Mark"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["TabUpDown",new Menu_Load.TabUpDownTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyAllTargetClass(),{"_sort":0}],["CopyRibon",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["MarkPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"chara",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1
         }],["Mark",new Menu_Load.TabMenuCCCReversal2DepthClass(),{
            "_menu":"charaPlus",
            "_color":"charaPlus",
            "_data":"MarkPlus",
            "_depth":1,
            "_sort":1,
            "_random":true
         }],["MarkAdd",new Menu_Load.TabMenuAddClass(),{
            "_menu":"charaPlus",
            "_data":"MarkPlus",
            "_sort":1
         }],["MarkAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"MarkPlus",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["MarkScaleX",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"MarkPlus",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["LinkMark",new Menu_Load.TabLinkClass(),{"_sort":1}],["MarkScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"MarkPlus",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["MarkScaleB",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"MarkPlus",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["MarkRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"charaPlus",
            "_data":"MarkPlus",
            "_sort":2,
            "_random":true,
            "_free":3
         }],["MarkX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"MarkPlus",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["MarkY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"MarkPlus",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["MarkVary",new Menu_Load.TabMenuClass(),{
            "_menu":"charaPlus",
            "_data":"MarkPlus",
            "_sort":2,
            "_random":false
         }]
         ];
         tabData["Mimi"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Mimi",new Menu_Load.TabEyeMenuCCCHatClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Tail",new Menu_Load.TabEyeMenuCCCReversalClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["TailScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["Hane",new Menu_Load.TabEyeMenuCCCReversalClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["HaneScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["HaneY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["Horn",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":2,
            "_sort":3,
            "_random":true
         }],["HornScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_free":0
         }],["HornY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_free":3
         }]];
         tabData["EasyEye"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Eye",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["EyeballLeft",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Eyebrow",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_depth":1,
            "_sort":1,
            "_random":true
         }],["Nose",new Menu_Load.TabMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Ear",new Menu_Load.TabMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_headerName":"Mimi"
         }],["Mimi",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_headerName":"Mimi"
         }],["Hane",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_headerName":"Mimi"
         }],["Tail",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_headerName":"Mimi"
         }],["Horn",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":2,
            "_sort":2,
            "_random":true,
            "_headerName":"Mimi"
         }]];
         tabData["Heart"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_check":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["EmotionManualAuto",new Menu_Load.TabManualAutoClass(),{
            "_check":"chara",
            "_kando":0,
            "_sort":1
         }],["ESituation",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true
         }],["Ahegao",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_r18":1,
            "_random":false
         }],["KandoSet",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["NamidaSet",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["ikiSet",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":0
         }],["defoEye",new Menu_Load.TabEyeMenuColorReversalClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["defoEyeScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["defoEyeX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["defoEyeY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["HeartPlus",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_free":3
         }],["HeartMinus",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_free":3
         }],["EyeOption",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"chara",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":3,
            "_random":true
         }],["EmotionOption",new Menu_Load.TabMenuINEyeReversalClass(),{
            "_visible":"chara",
            "_menu":"system",
            "_menuTarget":"single",
            "_reversal":"chara",
            "_sort":3,
            "_random":true
         }],["Hukidashi",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_sort":3,
            "_random":true
         }]];
         tabData["Emotion"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["EmotionEyeLeft",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":3
         }],["LinkEmotionEye",new Menu_Load.TabLinkClass(),{"_sort":1}],["EmotionEyeRight",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_free":3
         }],["EyeballWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["LinkEyeballWidth",new Menu_Load.TabLinkClass(),{"_sort":1}],["EyeballWidthRight",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":1,
            "_random":false,
            "_free":0
         }],["EyeballXMove",new Menu_Load.TabMeter2ReversalClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["LinkEyeballXMove",new Menu_Load.TabLinkClass(),{"_sort":2}],["EyeballXMoveRight",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["EyeballYMove",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["LinkEyeballYMove",new Menu_Load.TabLinkClass(),{"_sort":2}],["EyeballYMoveRight",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["EmotionEyebrowLeft",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":3,
            "_random":true
         }],["EyebrowRotationLeft",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_free":3
         }],["EyebrowMoveLeft",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_free":0
         }],
         ["EyebrowMoveHorizontalLeft",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_free":0
         }],["LinkEmotionEyebrow",new Menu_Load.TabLinkClass(),{"_sort":3}],["EmotionEyebrowRight",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":4,
            "_random":true
         }],["EyebrowRotationRight",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":true,
            "_free":3
         }],["EyebrowMoveRight",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":true,
            "_free":0
         }],["EyebrowMoveHorizontalRight",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":4,
            "_random":true,
            "_free":0
         }],["EmotionMouth",new Menu_Load.TabEyeMenuReversalClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_sort":5,
            "_random":true
         }],["MouthWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":5,
            "_random":true,
            "_free":0
         }],["LinkMouthWidth",new Menu_Load.TabLinkClass(),{"_sort":5}],["MouthHeight",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":5,
            "_random":true,
            "_free":0
         }],["MouthSen",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":5,
            "_random":false
         }],["MouthRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":6,
            "_random":true,
            "_free":0
         }],["MouthXMove",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":6,
            "_random":true,
            "_free":0
         }],["MouthYMove",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":6,
            "_random":true,
            "_free":0
         }]];
         if(Main.EmotionCheck)
         {
            tabData["Emotion"].push(["ESituation",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":4,
               "_random":true
            }]);
            tabData["Emotion"].push(["EKando",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":4,
               "_random":true
            }]);
            tabData["Emotion"].push(["EKanjyou",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":4,
               "_random":true
            }]);
            tabData["Emotion"].push(["EmotionTestAllPlay",new Menu_Load.TabMenuClass(),{
               "_sort":4,
               "_random":true
            }]);
            tabData["Emotion"].push(["EyeM",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":5,
               "_random":true
            }]);
            tabData["Emotion"].push(["EyeM2",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":5,
               "_random":true
            }]);
            tabData["Emotion"].push(["EyeM3",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":5,
               "_random":true
            }]);
            tabData["Emotion"].push(["EyebrowM",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":5,
               "_random":true
            }]);
            tabData["Emotion"].push(["EyebrowM2",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":5,
               "_random":true
            }]);
            tabData["Emotion"].push(["EyebrowM3",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":5,
               "_random":true
            }]);
            tabData["Emotion"].push(["MouthM",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":6,
               "_random":true
            }]);
            tabData["Emotion"].push(["MouthM2",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":6,
               "_random":true
            }]);
            tabData["Emotion"].push(["MouthM3",new Menu_Load.TabMenuClass(),{
               "_menu":"chara",
               "_sort":6,
               "_random":true
            }]);
         }
         tabData["Seihuku"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Seihuku",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["SeihukuLeftArm",new Menu_Load.TabMenuCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["LinkSeihukuArm",new Menu_Load.TabLinkClass(),{"_sort":1}],["SeihukuRightArm",new Menu_Load.TabMenuCC_sClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["SeihukuBreastOption",new Menu_Load.TabMenu3CCCReversal2Class(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["SeihukuDouOption",new Menu_Load.TabMenu3CCCNumClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["Vest",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["VestLeftArm",new Menu_Load.TabMenuCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["LinkVestArm",new Menu_Load.TabLinkClass(),{"_sort":3}],["VestRightArm",new Menu_Load.TabMenuCC_sClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["VestDou",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":4,
            "_random":true
         }],["VestSkirt",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":4,
            "_random":true
         }],["VestBreastOption",new Menu_Load.TabMenu3CCCReversal2Class(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":4,
            "_random":true
         }],["VestDouOption",new Menu_Load.TabMenu3CCCNumClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":4,
            "_random":true
         }]];
         tabData["Ysyatu"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Ysyatu",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["YsyatuOption",new Menu_Load.TabMenuNumClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true
         }],["YsyatuLeftArm",new Menu_Load.TabMenuCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["LinkYsyatuArm",new Menu_Load.TabLinkClass(),{"_sort":1}],["YsyatuRightArm",new Menu_Load.TabMenuCC_sClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["YsyatuDou",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":true
         }],["YsyatuSkirt",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["YsyatuBreastOption",new Menu_Load.TabMenu3CCCReversal2Class(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["YsyatuDouOption",new Menu_Load.TabMenu3CCCNumClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["Tsyatu",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["TsyatuLeftArm",new Menu_Load.TabMenuCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["LinkTsyatuArm",new Menu_Load.TabLinkClass(),{"_sort":3}],["TsyatuRightArm",new Menu_Load.TabMenuCC_sClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["TsyatuDou",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":4,
            "_random":true
         }],["TsyatuSkirt",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":4,
            "_random":true
         }],["TsyatuBreastOption",new Menu_Load.TabMenu3CCCReversal2Class(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":4,
            "_random":true
         }],["TsyatuDouOption",new Menu_Load.TabMenu3CCCNumClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":4,
            "_random":true
         }]];
         tabData["EasySeihuku"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Seihuku",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["SeihukuLeftArm",new Menu_Load.TabMenuCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Vest",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["VestDou",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":true
         }],["VestSkirt",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":true
         }],["VestLeftArm",new Menu_Load.TabMenuCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["Ysyatu",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["YsyatuDou",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":3,
            "_random":true
         }],["YsyatuSkirt",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":3,
            "_random":true
         }],["YsyatuLeftArm",new Menu_Load.TabMenuCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["Tsyatu",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":4,
            "_random":true
         }],["TsyatuDou",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":4,
            "_random":true
         }],["TsyatuSkirt",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":4,
            "_random":true
         }],["TsyatuLeftArm",new Menu_Load.TabMenuCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":4,
            "_random":true
         }]];
         tabData["Skirt"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Skirt",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":2,
            "_sort":1,
            "_random":true
         }],["Tights",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true,
            "_depth":2
         }],["Zubon",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":2,
            "_sort":2,
            "_random":true
         }],["ZubonAshi0",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["LinkZubon",new Menu_Load.TabLinkClass(),{"_sort":2}],["ZubonAshi1",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }]];
         tabData["EasySkirt"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Skirt",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":2,
            "_sort":1,
            "_random":true
         }],["Tights",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Zubon",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":2,
            "_sort":2,
            "_random":true
         }],["ZubonAshi0",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["Socks0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_headerName":"Kutu",
            "_easyLink":"Socks1"
         }],["LegBand0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true,
            "_headerName":"Kutu",
            "_easyLink":"LegBand1"
         }],["Kutu0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true,
            "_headerName":"Kutu",
            "_easyLink":"Kutu1"
         }],["KutuLong0",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true,
            "_headerName":"Kutu",
            "_easyLink":"KutuLong1"
         }]];
         tabData["Socks0"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Socks0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["LinkSocks",new Menu_Load.TabLinkClass(),{"_sort":1}],["Socks1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["LegBand0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["LinkLegBand",new Menu_Load.TabLinkClass(),{"_sort":2}],["LegBand1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }]];
         tabData["Kutu"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Kutu0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["KutuLong0",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["LinkKutu",new Menu_Load.TabLinkClass(),{"_sort":1}],["Kutu1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["KutuLong1",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }]];
         tabData["Bura"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":false,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Bura",new Menu_Load.TabEyeMenuCCCSeparateClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["LinkBura",new Menu_Load.TabLinkClass(),{"_sort":1}],["Pantu",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true,
            "_depth":1
         }],["Nawa",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_r18":1
         }],["SG",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_r18":1
         }],["SGSize",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":true,
            "_r18":1,
            "_free":0
         }],["NippleGLeft",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true,
            "_r18":1
         }],["NippleGLeftSize",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_r18":1,
            "_free":0
         }],["LinkNippleG",new Menu_Load.TabLinkClass(),{
            "_sort":3,
            "_r18":1
         }],["NippleGRight",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true,
            "_r18":1
         }],["NippleGRightSize",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":3,
            "_random":true,
            "_r18":1,
            "_free":0
         }]];
         if(Main.r18Check)
         {
            tabData["Bura"][6][1] = new Menu_Load.TabMenuCCCSeparateClass();
            tabData["Bura"][8][1] = new Menu_Load.TabMenuCCCDepthClass();
         }
         tabData["EasyBura"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Bura",new Menu_Load.TabEyeMenuCCCSeparateClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["LinkBura",new Menu_Load.TabLinkClass(),{"_sort":1}],["Pantu",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Nawa",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true,
            "_r18":1
         }],["NippleGLeft",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_r18":1,
            "_easyLink":"NippleGRight"
         }],["SG",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_r18":1
         }]];
         if(Main.r18Check)
         {
            tabData["EasyBura"][3][1] = new Menu_Load.TabMenuCCCSeparateClass();
            tabData["EasyBura"][5][1] = new Menu_Load.TabMenuCCCClass();
         }
         tabData["Vibrator"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":false,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Vibrator",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true,
            "_r18":1
         }],["VibratorScale",new Menu_Load.TabMeterShortClass(),{
            "_meter":"chara",
            "_sort":1,
            "_random":true,
            "_r18":1
         }],["VibratorThrough",new Menu_Load.TabCheckShortClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true,
            "_r18":1
         }],["VibratorMove",new Menu_Load.TabMenuRandomBodyClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true,
            "_r18":1
         }],["VibratorSpeed",new Menu_Load.TabMenuRandomClass(),{
            "_menu":"chara",
            "_sort":1,
            "_random":true,
            "_r18":1
         }]];
         tabData["Hat"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Hat",new Menu_Load.TabEyeMenuCCCRHairClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Headband",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_depth":1,
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Megane",new Menu_Load.TabEyeMenuCCCReversalDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_depth":2
         }],["MeganeY",new Menu_Load.TabMeter2Class(),{
            "_meterType":0,
            "_meter":"chara",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["Gag",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["Headphone",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["Earring0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["LinkEarring",new Menu_Load.TabLinkClass(),{"_sort":3}],["Earring1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["Collar",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_depth":1,
            "_sort":4,
            "_random":true
         }],["Necklace",new Menu_Load.TabEyeMenuCCCDepthClass(),{
            "_visible":"chara",
            "_depth":2,
            "_menu":"chara",
            "_color":"chara",
            "_depth":1,
            "_sort":4,
            "_random":true
         }],["Necktie",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":4,
            "_random":true
         }]];
         tabData["EasyHat"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Hat",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Megane",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Gag",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Headband",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_depth":1,
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["Headphone",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["Earring0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_easyLink":"Earring1"
         }],["Collar",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["Necklace",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["Necktie",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }]];
         tabData["Ribon"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["TabUpDown",new Menu_Load.TabUpDownTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyAllTargetClass(),{"_sort":0}],["CopyRibon",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["RibonPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"chara",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1
         }],["RibonAdd",new Menu_Load.TabMenuAddClass(),{
            "_menu":"charaPlus",
            "_data":"RibonPlus",
            "_sort":1
         }],["Ribon",new Menu_Load.TabMenuCCCRRDepthShadowClass(),{
            "_menu":"charaPlus",
            "_depth":3,
            "_color":"charaPlus",
            "_data":"RibonPlus",
            "_sort":1,
            "_random":true
         }],["RibonScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"RibonPlus",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["LinkRibonScale",new Menu_Load.TabLinkClass(),{"_sort":2}],["RibonScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"RibonPlus",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["LinkRibonLine",new Menu_Load.TabLinkClass(),{"_sort":2}],["RibonLine",new Menu_Load.TabMenuColorClass(),{
            "_menu":"charaPlus",
            "_color":"charaPlus",
            "_data":"RibonPlus",
            "_sort":2,
            "_random":false
         }],["RibonScaleB",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"RibonPlus",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["RibonRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"charaPlus",
            "_data":"RibonPlus",
            "_sort":3,
            "_random":true,
            "_free":3
         }],["RibonX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"RibonPlus",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["RibonY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"RibonPlus",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["RibonFineX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"RibonPlus",
            "_sort":4,
            "_random":false,
            "_free":0
         }],["RibonFineY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"RibonPlus",
            "_sort":4,
            "_random":false,
            "_free":0
         }],["RibonAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"RibonPlus",
            "_sort":4,
            "_random":false,
            "_free":0
         }]
         ];
         tabData["Belt"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["TabUpDown",new Menu_Load.TabUpDownTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyAllTargetClass(),{"_sort":0}],["CopyRibon",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["BeltPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"chara",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1
         }],["Belt",new Menu_Load.TabMenuCCCReversal2DepthMaskClass(),{
            "_menu":"charaPlus",
            "_color":"charaPlus",
            "_data":"BeltPlus",
            "_depth":3,
            "_sort":1,
            "_random":true
         }],["BeltExtra",new Menu_Load.TabMenuClass(),{
            "_menu":"charaPlus",
            "_data":"BeltPlus",
            "_sort":1,
            "_random":false
         }],["BeltScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"BeltPlus",
            "_sort":2,
            "_random":true,
            "_free":0
         }],["LinkBeltScale",new Menu_Load.TabLinkClass(),{"_sort":2}],["BeltScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"BeltPlus",
            "_sort":2,
            "_random":false,
            "_free":0
         }],["LinkBeltLine",new Menu_Load.TabLinkClass(),{"_sort":2}],["BeltLine",new Menu_Load.TabMenuColorClass(),{
            "_menu":"charaPlus",
            "_color":"charaPlus",
            "_data":"BeltPlus",
            "_sort":2,
            "_random":false
         }],["BeltScaleB",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"BeltPlus",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["BeltRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"charaPlus",
            "_data":"BeltPlus",
            "_sort":3,
            "_random":true,
            "_free":3
         }],["BeltX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"BeltPlus",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["BeltY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"BeltPlus",
            "_sort":3,
            "_random":false,
            "_free":0
         }],["BeltFineX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"BeltPlus",
            "_sort":4,
            "_random":false,
            "_free":0
         }],["BeltFineY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"BeltPlus",
            "_sort":4,
            "_random":false,
            "_free":0
         }],["BeltAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"BeltPlus",
            "_sort":4,
            "_random":false,
            "_free":0
         }]];
         tabData["Wristband0"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Wristband0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["LinkWristband",new Menu_Load.TabLinkClass(),{"_sort":1}],["Wristband1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Armband0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["LinkArmband",new Menu_Load.TabLinkClass(),{"_sort":2}],["Armband1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["Bracelet0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["LinkBracelet",new Menu_Load.TabLinkClass(),{"_sort":3}],["Bracelet1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }]];
         tabData["EasyWristband0"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Belt",new Menu_Load.TabEyeMenuCCCReversal2Class(),{
            "_visible":"charaPlus",
            "_menu":"charaPlus",
            "_color":"charaPlus",
            "_data":"BeltPlus",
            "_depth":2,
            "_sort":1,
            "_random":true,
            "_headerName":"Belt"
         }],["Wristband0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true,
            "_easyLink":"Wristband1"
         }],["Armband0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true,
            "_easyLink":"Armband1"
         }],["Bracelet0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_easyLink":"Bracelet1"
         }],["ArmBracelet0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_headerName":"ArmBracelet0",
            "_easyLink":"ArmBracelet1"
         }],["Elbowpad0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true,
            "_headerName":"ArmBracelet0",
            "_easyLink":"Elbowpad1"
         }],["Glove0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true,
            "_headerName":"ArmBracelet0",
            "_easyLink":"Glove1"
         }],["GloveLength0",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":3,
            "_random":true,
            "_headerName":"ArmBracelet0"
         }]];
         tabData["ArmBracelet0"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["ArmBracelet0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["LinkArmBracelet",new Menu_Load.TabLinkClass(),{"_sort":1}],["ArmBracelet1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":1,
            "_random":true
         }],["Elbowpad0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["LinkElbowpad",new Menu_Load.TabLinkClass(),{"_sort":2}],["Elbowpad1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":2,
            "_random":true
         }],["Glove0",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["GloveLength0",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":3,
            "_random":true
         }],["LinkGlove",new Menu_Load.TabLinkClass(),{"_sort":3}],["Glove1",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"chara",
            "_menu":"chara",
            "_color":"chara",
            "_sort":3,
            "_random":true
         }],["GloveLength1",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":3,
            "_random":true
         }]];
         tabData["Hand"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["Copy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["ResetTarget",new Menu_Load.TabResetTargetClass(),{"_sort":0}],["Random",new Menu_Load.TabRandomTargetClass(),{
            "_sort":0,
            "_menu":true,
            "_check":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Breast_Left_Up",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true
         }],["Breast_Right_Up",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true
         }],["Breast_Left_Sayuu",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true
         }],["Breast_Right_Sayuu",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true
         }],["Nipple_Left_Up",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true
         }],["Nipple_Right_Up",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true
         }],["Nipple_Left_Sayuu",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true
         }],["Nipple_Right_Sayuu",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true
         }],["sClick",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true
         }],["Kiss",new Menu_Load.TabCheckClass(),{
            "_check":"chara",
            "_sort":1,
            "_random":true
         }],["BreastManualAuto",new Menu_Load.TabManualAutoClass(),{
            "_check":"chara",
            "_sort":2
         }],["BreastLeft",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":false
         }],["BreastRight",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":false
         }],["NippleLeft",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":false
         }],["NippleRight",new Menu_Load.TabMenuClass(),{
            "_menu":"chara",
            "_sort":2,
            "_random":false
         }]];
         tabData["CharaLoad"] = [["TabUpDown",new Menu_Load.TabUpDownTargetRightClass(),{"_sort":0}],["CopyRibon",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["CharaURLLocal",new Menu_Load.TabURLLocalClass(),{
            "_check":"system",
            "_sort":1
         }],["CharaURLLoading",new Menu_Load.TabURLLoadingClass(),{"_sort":1}],["CharaURLText",new Menu_Load.TabURLTextClass(),{"_sort":1}],["CharaURLTextList",new Menu_Load.TabURLTextListClass(),{"_sort":1}],["CharaURLTextMenu",new Menu_Load.TabMenu4Class(),{
            "_menu":"system",
            "_sort":1
         }],["CharaLoadPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"chara",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":2
         }],["CharaLoadAdd",new Menu_Load.TabMenuAddClass(),{
            "_menu":"charaPlus",
            "_data":"CharaLoadPlus",
            "_sort":2
         }],["CharaLoadSwfColor",new Menu_Load.TabSwfColorClass(),{
            "_LoadSwf":"charaPlus",
            "_data":"CharaLoadPlus",
            "_sort":2
         }],["CharaLoadReversalDepth",new Menu_Load.TabReversalDepthClass(),{
            "_meter":"charaPlus",
            "_data":"CharaLoadPlus",
            "_depth":1,
            "_sort":2
         }],["CharaLoadAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"CharaLoadPlus",
            "_sort":2,
            "_free":3
         }],["CharaLoadScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"CharaLoadPlus",
            "_sort":2,
            "_free":0
         }],["CharaLinkLoadScale",new Menu_Load.TabLinkClass(),{"_sort":2}],["CharaLoadScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"CharaLoadPlus",
            "_depth":2,
            "_sort":2,
            "_free":0
         }],["CharaLoadScaleB",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"CharaLoadPlus",
            "_sort":3,
            "_free":0
         }],["CharaLoadRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"charaPlus",
            "_data":"CharaLoadPlus",
            "_sort":3,
            "_free":3
         }],["CharaLoadX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"CharaLoadPlus",
            "_sort":3,
            "_free":0
         }],["CharaLoadY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"charaPlus",
            "_data":"CharaLoadPlus",
            "_sort":3,
            "_free":0
         }],["CharaLoadFineX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"CharaLoadPlus",
            "_sort":3,
            "_free":0
         }],["CharaLoadFineY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"charaPlus",
            "_data":"CharaLoadPlus",
            "_sort":3,
            "_free":0
         }]];
         tabData["HeaderFreeHand"] = [["SystemUpDown",new Menu_Load.TabUpDownTargetRightClass(),{"_sort":0}],["SystemCopy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["FreeHandPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1
         }],["FreeHand",new Menu_Load.TabMenuColorReversalClass(),{
            "_menu":"systemPlus",
            "_data":"FreeHandPlus",
            "_color":"systemPlus",
            "_sort":1
         }],["FreeHandAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":1,
            "_free":3
         }],["FreeHandScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":1,
            "_free":0
         }],["FreeHandWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":1,
            "_free":3
         }],["FreeHandRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":2,
            "_free":3
         }],["FreeHandX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":2,
            "_free":0
         }],["FreeHandY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":2,
            "_free":0
         }],["FreeHandDepth",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":2,
            "_free":0
         }],["FreeHandFineX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":2,
            "_free":0
         }],["FreeHandFineY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":2,
            "_free":0
         }],["FreeHandWrist",new Menu_Load.TabMenuClass(),{
            "_menu":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":3
         }],["FreeHandWristRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeHandPlus",
            "_sort":3,
            "_free":3
         }],["FreeHandItem",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"systemPlus",
            "_menu":"systemPlus",
            "_data":"FreeHandPlus",
            "_color":"systemPlus",
            "_sort":3
         }],["FreeHandVest",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"systemPlus",
            "_menu":"systemPlus",
            "_data":"FreeHandPlus",
            "_color":"systemPlus",
            "_sort":4
         }],["FreeHandWristband",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"systemPlus",
            "_menu":"systemPlus",
            "_data":"FreeHandPlus",
            "_color":"systemPlus",
            "_sort":4
         }]];
         tabData["HeaderFreeRibon"] = [["SystemUpDown",new Menu_Load.TabUpDownTargetRightClass(),{"_sort":0}],["SystemCopy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["FreeRibonPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1
         }],["FreeRibon",new Menu_Load.TabMenuCCCRShadowClass(),{
            "_menu":"systemPlus",
            "_color":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":1
         }],["FreeRibonScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":2,
            "_free":0
         }],["LinkFreeRibonScale",new Menu_Load.TabLinkClass(),{"_sort":2}],["FreeRibonScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":2,
            "_free":0
         }],["LinkFreeRibonLine",new Menu_Load.TabLinkClass(),{"_sort":2}],["FreeRibonLine",new Menu_Load.TabMenuColorClass(),{
            "_menu":"systemPlus",
            "_color":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":2
         }],["FreeRibonScaleB",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":3,
            "_free":0
         }],["FreeRibonRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":3,
            "_free":3
         }],["FreeRibonX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":3,
            "_free":0
         }],["FreeRibonY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":3,
            "_free":0
         }],["FreeRibonDepth",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":3,
            "_free":0
         }],["FreeRibonFineX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":4,
            "_free":0
         }],["FreeRibonFineY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":4,
            "_free":0
         }],["FreeRibonAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeRibonPlus",
            "_sort":4,
            "_free":0
         }]
         ];
         tabData["HeaderFreeBelt"] = [["SystemUpDown",new Menu_Load.TabUpDownTargetRightClass(),{"_sort":0}],["SystemCopy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["FreeBeltPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1
         }],["FreeBelt",new Menu_Load.TabMenuCCCReversalClass(),{
            "_menu":"systemPlus",
            "_color":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":1
         }],["FreeBeltExtra",new Menu_Load.TabMenuClass(),{
            "_menu":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":1
         }],["FreeBeltScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":2,
            "_free":0
         }],["LinkFreeBeltScale",new Menu_Load.TabLinkClass(),{"_sort":2}],["FreeBeltScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":2,
            "_free":0
         }],["LinkFreeBeltLine",new Menu_Load.TabLinkClass(),{"_sort":2}],["FreeBeltLine",new Menu_Load.TabMenuColorClass(),{
            "_menu":"systemPlus",
            "_color":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":2
         }],["FreeBeltScaleB",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":3,
            "_free":0
         }],["FreeBeltRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":3,
            "_free":3
         }],["FreeBeltX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":3,
            "_free":0
         }],["FreeBeltY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":3,
            "_free":0
         }],["FreeBeltDepth",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":3,
            "_free":0
         }],["FreeBeltFineX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":4,
            "_free":0
         }],["FreeBeltFineY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":4,
            "_free":0
         }],["FreeBeltAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeBeltPlus",
            "_sort":4,
            "_free":0
         }]
         ];
         tabData["HeaderFreeChair"] = [["SystemUpDown",new Menu_Load.TabUpDownTargetRightClass(),{"_sort":0}],["SystemCopy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["FreeChairPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1
         }],["FreeChair",new Menu_Load.TabMenuCCCReversalClass(),{
            "_menu":"systemPlus",
            "_color":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":1
         }],["FreeChairExtra",new Menu_Load.TabMenuClass(),{
            "_menu":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":1
         }],["FreeChairScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":1,
            "_free":0
         }],["LinkFreeChairScale",new Menu_Load.TabLinkClass(),{"_sort":1}],["FreeChairLine",new Menu_Load.TabMenuColorClass(),{
            "_menu":"systemPlus",
            "_color":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":2
         }],["FreeChairRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":2,
            "_free":3
         }],["FreeChairX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":2,
            "_free":0
         }],["FreeChairY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":2,
            "_free":0
         }],["FreeChairDepth",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":2,
            "_free":0
         }],["FreeChairFineX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":3,
            "_free":0
         }],["FreeChairFineY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":3,
            "_free":0
         }],["FreeChairAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeChairPlus",
            "_sort":3,
            "_free":0
         }]];
         tabData["HeaderFreeFlag"] = [["SystemUpDown",new Menu_Load.TabUpDownTargetRightClass(),{"_sort":0}],["SystemCopy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["FreeFlagPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1
         }],["FreeFlag",new Menu_Load.TabMenu3Class(),{
            "_menu":"systemPlus",
            "_data":"FreeFlagPlus",
            "_sort":1
         }],["FreeFlagExtra",new Menu_Load.TabMenuClass(),{
            "_menu":"systemPlus",
            "_data":"FreeFlagPlus",
            "_sort":1
         }],["FreeFlagScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeFlagPlus",
            "_sort":1,
            "_free":0
         }],["LinkFreeFlagScale",new Menu_Load.TabLinkClass(),{"_sort":1}],["FreeFlagScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeFlagPlus",
            "_sort":1,
            "_free":0
         }],["FreeFlagScaleB",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeFlagPlus",
            "_sort":2,
            "_free":0
         }],["FreeFlagRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"systemPlus",
            "_data":"FreeFlagPlus",
            "_sort":2,
            "_free":3
         }],["FreeFlagX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeFlagPlus",
            "_sort":2,
            "_free":0
         }],["FreeFlagY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeFlagPlus",
            "_sort":2,
            "_free":0
         }],["FreeFlagDepth",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeFlagPlus",
            "_sort":2,
            "_free":0
         }]];
         tabData["HeaderFreeHukidashi"] = [["SystemUpDown",new Menu_Load.TabUpDownTargetRightClass(),{"_sort":0}],["SystemCopy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["FreeHukidashiPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1
         }],["FreeHukidashi",new Menu_Load.TabMenuCCCReversalClass(),{
            "_menu":"systemPlus",
            "_color":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":1
         }],["FreeHukidashiAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":1,
            "_free":3
         }],["FreeHukidashiBlend",new Menu_Load.TabMenuTextClass(),{
            "_menu":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":1
         }],["FreeHukidashiScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":2,
            "_free":0
         }],["LinkFreeHukidashiScale",new Menu_Load.TabLinkClass(),{"_sort":2}],["FreeHukidashiScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":2,
            "_free":0
         }],["FreeHukidashiLine",new Menu_Load.TabMenuColorClass(),{
            "_menu":"systemPlus",
            "_color":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":2
         }],["FreeHukidashiScaleB",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":2,
            "_free":0
         }],["FreeHukidashiRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":2,
            "_free":3
         }],["FreeHukidashiX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":3,
            "_free":0
         }],["FreeHukidashiY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":3,
            "_free":0
         }],["FreeHukidashiDepth",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":3,
            "_free":0
         }],["FreeHukidashiExtra",new Menu_Load.TabEyeMenuReversalClass(),{
            "_visible":"systemPlus",
            "_menu":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":3
         }],["FreeHukidashiExtraLine",new Menu_Load.TabMenuClass(),{
            "_menu":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":3
         }],["FreeHukidashiExtraScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":4,
            "_free":0
         }],["LinkFreeHukidashiExtraScale",new Menu_Load.TabLinkClass(),{"_sort":4}],["FreeHukidashiExtraScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":4,
            "_free":0
         }],["FreeHukidashiExtraRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":4,
            "_free":3
         }],["FreeHukidashiExtraX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":4,
            "_free":0
         }],["FreeHukidashiExtraY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"FreeHukidashiPlus",
            "_sort":4,
            "_free":0
         }]];
         tabData["Background"] = [["SystemCopy",new Menu_Load.TabCopyTargetRightClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Background",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"system",
            "_menuTarget":"single",
            "_color":"system",
            "_sort":1
         }],["BgY",new Menu_Load.TabMeter2Class(),{
            "_meterType":0,
            "_meter":"system",
            "_sort":1,
            "_free":0
         }],["BgFloor",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"system",
            "_menuTarget":"single",
            "_color":"system",
            "_sort":1
         }],["BgFront",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_color":"system",
            "_sort":2
         }],["Mob",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":2
         }]];
         tabData["EasyBackground"] = [["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Background",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"system",
            "_menuTarget":"single",
            "_color":"system",
            "_sort":1
         }],["BgY",new Menu_Load.TabMeter2Class(),{
            "_meterType":0,
            "_meter":"system",
            "_sort":1,
            "_free":0
         }],["BgFloor",new Menu_Load.TabMenuCCCClass(),{
            "_menu":"system",
            "_menuTarget":"single",
            "_color":"system",
            "_sort":1
         }],["BgFront",new Menu_Load.TabEyeMenuCCCClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_color":"system",
            "_sort":2
         }],["Mob",new Menu_Load.TabEyeMenuClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":2
         }]];
         tabData["txt"] = [["SystemUpDown",new Menu_Load.TabUpDownTargetRightClass(),{"_sort":0}],["SystemCopy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["txtFieldmenu",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"system",
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":1
         }],["FontType",new Menu_Load.TabMenu2ColorClass(),{
            "_menu":"systemPlus",
            "_menuTarget":"single",
            "_color":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":1
         }],["txtFieldTateYoko",new Menu_Load.TabTextTateYokoClass(),{
            "_menu":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":1
         }],["txtFieldFormatAlign",new Menu_Load.TabTextFormatAlignClass(),{
            "_menu":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":1
         }],["txtFieldAdd",new Menu_Load.TabMenuAddClass(),{
            "_menu":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":1
         }],["txtFieldDepth",new Menu_Load.TabDepthClass(),{
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_depth":2,
            "_sort":1
         }],["txtFieldAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":2,
            "_free":3
         }],["txtFieldScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":2,
            "_free":0
         }],["txtFieldBoxScaleX",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":2,
            "_free":0
         }],["LinktxtFieldBoxScale",new Menu_Load.TabLinkClass(),{"_sort":2}],["txtFieldBoxScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":2,
            "_free":0
         }],["txtFieldWidth",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":2,
            "_free":1
         }],["txtFieldScaleB",new Menu_Load.TabMeter2Short3Class(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":3,
            "_free":1
         }],["txtFieldRotation",new Menu_Load.TabMeter2Short3Class(),{
            "_meterType":1,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":3,
            "_free":3
         }],["txtFieldX",new Menu_Load.TabMeter2Short2Class(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":3,
            "_free":0
         }],["txtFieldY",new Menu_Load.TabMeter2Short2Class(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":3,
            "_free":0
         }],["txtFieldLeading",new Menu_Load.TabMeter2Short3Class(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":3,
            "_free":0
         }],["txtFieldLetter",new Menu_Load.TabMeter2Short3Class(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"txtFieldmenu",
            "_sort":3,
            "_free":1
         }]];
         tabData["Loadmenu"] = [["SystemUpDown",new Menu_Load.TabUpDownTargetRightClass(),{"_sort":0}],["SystemCopy",new Menu_Load.TabCopyTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["URLLocal",new Menu_Load.TabURLLocalClass(),{
            "_check":"system",
            "_sort":1
         }],["URLLoading",new Menu_Load.TabURLLoadingClass(),{"_sort":1}],["URLText",new Menu_Load.TabURLTextClass(),{"_sort":1}],["URLTextList",new Menu_Load.TabURLTextListClass(),{"_sort":1}],["URLTextMenu",new Menu_Load.TabMenu4Class(),{
            "_menu":"system",
            "_sort":1
         }],["LoadPlus",new Menu_Load.TabMenuINEyeClass(),{
            "_visible":"system",
            "_menu":"system",
            "_sort":2
         }],["LoadAdd",new Menu_Load.TabMenuAddClass(),{
            "_menu":"systemPlus",
            "_data":"LoadPlus",
            "_sort":2
         }],["LoadSwfColor",new Menu_Load.TabSwfColorClass(),{
            "_data":"LoadPlus",
            "_LoadSwf":"systemPlus",
            "_sort":2
         }],["LoadReversalDepth",new Menu_Load.TabReversalDepthClass(),{
            "_meter":"systemPlus",
            "_data":"LoadPlus",
            "_depth":2,
            "_sort":2
         }],["LoadAlpha",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"LoadPlus",
            "_sort":2,
            "_free":3
         }],["LoadScale",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"LoadPlus",
            "_sort":2,
            "_free":0
         }],["LinkLoadScale",new Menu_Load.TabLinkClass(),{"_sort":2}],["LoadScaleY",new Menu_Load.TabMeterShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"LoadPlus",
            "_depth":2,
            "_sort":2,
            "_free":0
         }],["LoadSize",new Menu_Load.TabSizeClass(),{
            "_data":"LoadPlus",
            "_check":"systemPlus",
            "_sort":2
         }],["LoadScaleB",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"LoadPlus",
            "_sort":3,
            "_free":0
         }],["LoadRotation",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":1,
            "_meter":"systemPlus",
            "_data":"LoadPlus",
            "_sort":3,
            "_free":3
         }],["LoadX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"LoadPlus",
            "_sort":3,
            "_free":0
         }],["LoadY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":2,
            "_meter":"systemPlus",
            "_data":"LoadPlus",
            "_sort":3,
            "_free":0
         }],["LoadFineX",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"LoadPlus",
            "_sort":3,
            "_free":0
         }],["LoadFineY",new Menu_Load.TabMeter2ShortClass(),{
            "_meterType":0,
            "_meter":"systemPlus",
            "_data":"LoadPlus",
            "_sort":3,
            "_free":0
         }]];
         tabData["SystemOption"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["CopyAllTool",new Menu_Load.TabCopyAllBodyTargetClass(),{"_sort":0}],["ResetTargetAll",new Menu_Load.TabResetAllTargetClass(),{"_sort":0}],["RandomAll",new Menu_Load.TabRandomAllTargetClass(),{
            "_sort":0,
            "_visible":true,
            "_menu":true,
            "_meter":true,
            "_color0":true,
            "_color1":true,
            "_color2":true
         }],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["HideIcon",new Menu_Load.TabCheckClass(),{
            "_check":"system",
            "_sort":1
         }],["selecterDepth",new Menu_Load.TabCheckClass(),{
            "_check":"system",
            "_sort":1
         }],["MeterNumView",new Menu_Load.TabCheckClass(),{
            "_check":"system",
            "_sort":1
         }],["SoundVolume",new Menu_Load.TabMeterClass(),{
            "_meter":"system",
            "_sort":1
         }],["SoundPan",new Menu_Load.TabCheckClass(),{
            "_check":"system",
            "_sort":1
         }],["Quality",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":2
         }],["Mosaic",new Menu_Load.TabMenuColorClass(),{
            "_menu":"system",
            "_color":"system",
            "_sort":2,
            "_r18":1
         }],["EExpert",new Menu_Load.TabEasyExpertClass(),{
            "_check":"system",
            "_sort":2
         }],["Shortcut",new Menu_Load.TabShortCutBtnClass(),{
            "_check":"system",
            "_sort":2
         }],["BreakBlock",new Menu_Load.TabBreakBlockBtnClass(),{
            "_check":"system",
            "_sort":2
         }],["OpenAge",new Menu_Load.TabOpenAgeClass(),{
            "_check":"system",
            "_sort":2,
            "_download":true
         }]];
         tabData["Story"] = [["Copy",new Menu_Load.TabCopyTargetRightClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["StoryPrev",new Menu_Load.TabPrevClass(),{"_sort":1}],["StorySaveLoad",new Menu_Load.TabSaveLoadClass(),{"_sort":1}],["StoryOldSave",new Menu_Load.TabOldSaveClass(),{"_sort":1}],["CameraGIF",new Menu_Load.TabCamera4Class(),{"_sort":1}],["CameraGIFSpeed",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":1
         }],["Story_TimeLine",new Menu_Load.TabTimeLineClass(),{"_sort":2}],["Story_PlusMinus",new Menu_Load.TabPlusMinusClass(),{"_sort":2}],["Story_Page",new Menu_Load.TabMenu2Class(),{
            "_menu":"system",
            "_menuTarget":"single",
            "_sort":2
         }]];
         tabData["StoryTool"] = [["DressUP",new Menu_Load.TabDressUPClass(),{"_sort":0}],["PageTop",new Menu_Load.TabPageTopClass(),{"_sort":0}],["StoryFullScreen",new Menu_Load.TabCheckClass(),{
            "_check":"system",
            "_sort":0
         }]];
         tabData["Save"] = [["SelectTarget",new Menu_Load.TabSelectTargetClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["SaveLoad",new Menu_Load.TabSaveLoadClass(),{"_sort":1}],["TabImportExport",new Menu_Load.TabImportExportClass(),{"_sort":1}],["OldSave",new Menu_Load.TabOldSaveClass(),{"_sort":1}],["AllSaveLoad",new Menu_Load.TabAllSaveLoadClass(),{"_sort":1}]];
         tabData["EasySave"] = [];
         tabData["Tool"] = [["SystemCopy",new Menu_Load.TabCopyTargetRightClass(),{"_sort":0}],["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Zoom",new Menu_Load.TabMeterLongClass(),{
            "_meterType":0,
            "_meter":"system",
            "_sort":1,
            "_free":0
         }],["FullScreen",new Menu_Load.TabCheckClass(),{
            "_check":"system",
            "_sort":1
         }],["ViewMode",new Menu_Load.TabCheckClass(),{
            "_check":"system",
            "_download":true,
            "_sort":1
         }],["CameraKaizoudo",new Menu_Load.TabMenuClass(),{
            "_menu":"system",
            "_sort":1
         }],["MenuScale",new Menu_Load.TabMeterClass(),{
            "_meterType":0,
            "_sort":1,
            "_meter":"system",
            "_free":3
         }],["MenuAlign",new Menu_Load.TabCheckClass(),{
            "_check":"system",
            "_sort":1
         }],
         ["CameraPNG",new Menu_Load.TabCamera2Class(),{"_sort":2}],
         ["CameraJPG",new Menu_Load.TabCameraJPGClass(),{
            "_meterType":0,
            "_sort":2,
            "_meter":"system",
            "_free":0
         }],["CameraKirinuki",new Menu_Load.TabCamera3Class(),{
            "_check":"system",
            "_sort":2
         }]];
         tabData["EasyTool"] = [["HeaderSwitch",new Menu_Load.TabHeaderSwitchClass(),{"_sort":0}],["Close",new Menu_Load.TabCloseClass(),{"_sort":0}],["Zoom",new Menu_Load.TabMeterLongClass(),{
            "_meterType":0,
            "_meter":"system",
            "_sort":1,
            "_free":0
         }],["Mosaic",new Menu_Load.TabMenuColorClass(),{
            "_menu":"system",
            "_color":"system",
            "_sort":1,
            "_r18":1
         }],["EasyCameraPNG",new Menu_Load.TabCameraEasyClass(),{"_sort":1}],["EExpert",new Menu_Load.TabEasyExpertClass(),{
            "_check":"system",
            "_sort":1
         }]];
         tabData["Escape"] = [["Escape",new Menu_Load.TabEscapeClass(),{"_sort":0}]];
         menuData = {
            "DeformerReal":0,
            "HairType":1,
            "BodyType":1,
            "SelectCharacter":8,
            "CharaSet":Chara_IECharadata.IEdata.length - 1,
            "DressSet":Chara_IECharadata.Dressdata.length - 1,
            "SeihukuSet0":Chara_IESeihukudata.Seihukudata.length - 1,
            "SeihukuSet1":Chara_IESeihukudata.Seihukudata[0].length - 1,
            "SeihukuSet2":Chara_IESeihukudata.Seihukudata[0][0].length - 1,
            "UnderwearSet":Chara_IEdata.UnderwearData.length - 1,
            "BackgroundSet":Chara_IEdata.BackgroundData.length - 1,
            "AllHairSet":Chara_IEdata.AllHairSetData.length - 1,
            "AllFaceSet":Chara_IEdata.AllFaceSetData.length - 1,
            "PoseSet":Chara_IEdata.PoseData.length - 1,
            "AllBodySet":Chara_IEdata.AllBodySetMotoData.length - 1,
            "LeftHand":42,
            "RightHand":42,
            "Item0":Dress_data.menuCustom["Item0"].length - 1,
            "Item1":Dress_data.menuCustom["Item0"].length - 1,
            "Ashi":Move_DataClass.AshiFrameData.length - 1,
            "Ashi2":Move_DataClass.AshiFrameData.length - 1,
            "CharaDropShadow":9,
            "CharaBlur":9,
            "BodyPlus":Dress_data.DressData["BodyPlus"].length - 1,
            "Hiyake":14,
            "Waist":Dress_data.menuCustom["Waist"].length - 1,
            "Heso":14,
            "Breast":14,
            "UnderHair":11,
            "Nipple":9,
            "Contour":35,
            "Eye":Dress_data.EyeData.length - 1,
            "Hoho":16,
            "Nose":Dress_data.DressData["Nose"].length - 1,
            "NoseShadow":21,
            "Ear":Dress_data.DressData["Ear"].length - 1,
            "EyeballLeft":95,
            "EyeballRight":95,
            "EyeballLight":51,
            "HairExSet":Chara_HairData.HairExData.length - 1,
            "HairExSetEasy":Chara_HairData.HairExData.length - 1,
            "Hair":Dress_data.HairData.length - 1,
            "Bangs":Dress_data.BangsData.length - 1,
            "HairBack":Dress_data.HairBackData.length - 1,
            "SideBurnLeft":Dress_data.SideBurnData.length - 1,
            "SideBurnRight":Dress_data.SideBurnData.length - 1,
            "HairExPlus":Main.hukusuuNum,
            "HairEx":86,
            "HairExLine":5,
            "Eyebrow":16,
            "MouthSen":4,
            "FaceOption":9,
            "Eyelib":Dress_data.EyelibData.length - 1,
            "Eyelash":200,
            "Lowerlash":10,
            "MarkPlus":Main.hukusuuNum,
            "Mark":Dress_data.DressData["Mark0"].length - 1,
            "MarkVary":6,
            "EyeOption":5,
            "EmotionOption":9,
            "Hukidashi":31,
            "defoEye":Dress_data.defoEyeData.length - 1,
            "Heart":9,
            "EmotionEye":Emotion_data.EyeData.length - 1,
            "EyeballMove":14,
            "EyeballWidth":5,
            "EmotionEyebrowLeft":4,
            "EmotionEyebrowRight":4,
            "EmotionMouth":100,
            "ESituation":Emotion_data.ESituationData.length - 1,
            "EKando":4,
            "EKanjyou":3,
            "EyeM":Emotion_data.EmotionEyeTopData.length - 1,
            "EyeM2":Emotion_data.EmotionEyeData.length - 1,
            "EyeM3":Emotion_data.EmotionEyeLastData.length - 1,
            "EyebrowM":Emotion_data.EmotionEyebrowTopData.length - 1,
            "EyebrowM2":Emotion_data.EmotionEyebrowData.length - 1,
            "EyebrowM3":Emotion_data.EmotionEyebrowLastData.length - 1,
            "MouthM":Emotion_data.EmotionMouthTopData.length - 1,
            "MouthM2":Emotion_data.EmotionMouthData.length - 1,
            "MouthM3":Emotion_data.EmotionMouthLastData.length - 1,
            "EmotionTestAllPlay":0,
            "EmotionTestTimeline":43,
            "Seihuku":Dress_data.SeihukuData.length - 1,
            "SeihukuLeftArm":Dress_data.ArmData.length - 1,
            "SeihukuRightArm":Dress_data.ArmData.length - 1,
            "Ysyatu":Dress_data.YsyatuData.length - 1,
            "YsyatuOption":5,
            "YsyatuDou":Dress_data.menuCustom["YsyatuDou"].length - 1,
            "YsyatuSkirt":Dress_data.menuCustom["YsyatuSkirt"].length - 1,
            "YsyatuLeftArm":Dress_data.ArmData.length - 1,
            "YsyatuRightArm":Dress_data.ArmData.length - 1,
            "Tsyatu":Dress_data.TsyatuData.length - 1,
            "TsyatuDou":Dress_data.menuCustom["TsyatuDou"].length - 1,
            "TsyatuSkirt":Dress_data.menuCustom["TsyatuSkirt"].length - 1,
            "TsyatuLeftArm":Dress_data.ArmData.length - 1,
            "TsyatuRightArm":Dress_data.ArmData.length - 1,
            "Vest":Dress_data.VestData.length - 1,
            "VestDou":Dress_data.menuCustom["VestDou"].length - 1,
            "VestSkirt":Dress_data.menuCustom["VestSkirt"].length - 1,
            "VestLeftArm":Dress_data.ArmData.length - 1,
            "VestRightArm":Dress_data.ArmData.length - 1,
            "SeihukuBreastOption":Dress_data.menuCustom["SeihukuBreastOption"].length - 1,
            "VestBreastOption":Dress_data.menuCustom["VestBreastOption"].length - 1,
            "TsyatuBreastOption":Dress_data.menuCustom["TsyatuBreastOption"].length - 1,
            "YsyatuBreastOption":Dress_data.menuCustom["TsyatuBreastOption"].length - 1,
            "YsyatuDouOption":Dress_data.menuCustom["VestDouOption"].length - 1,
            "TsyatuDouOption":Dress_data.menuCustom["VestDouOption"].length - 1,
            "VestDouOption":Dress_data.menuCustom["VestDouOption"].length - 1,
            "SeihukuDouOption":Dress_data.menuCustom["VestDouOption"].length - 1,
            "Skirt":Dress_data.SkirtData.length - 1,
            "Zubon":Dress_data.ZubonData.length - 1,
            "ZubonAshi0":Dress_data.ZubonAshiData.length - 1,
            "ZubonAshi1":Dress_data.ZubonAshiData.length - 1,
            "Bura":Dress_data.BuraData.length - 1,
            "Pantu":Dress_data.PantuData.length - 1,
            "Nawa":Dress_data.NawaData.length - 1,
            "NippleGLeft":Dress_data.NippleGData.length - 1,
            "NippleGRight":Dress_data.NippleGData.length - 1,
            "SG":Dress_data.SGData.length - 1,
            "Vibrator":Dress_data.DressData["Vibrator"].length - 1,
            "VibratorMove":Vibrator_data.vibratorData[0].length - 1,
            "VibratorSpeed":5,
            "Socks0":Dress_data.SocksData.length - 1,
            "Socks1":Dress_data.SocksData.length - 1,
            "Tights":Dress_data.TightsData.length - 1,
            "Kutu0":Dress_data.KutuData.length - 1,
            "Kutu1":Dress_data.KutuData.length - 1,
            "KutuLong0":Dress_data.KutuLongData.length - 1,
            "KutuLong1":Dress_data.KutuLongData.length - 1,
            "LegBand0":Dress_data.LegBandData.length - 1,
            "LegBand1":Dress_data.LegBandData.length - 1,
            "Megane":Dress_data.menuCustom["Megane"].length - 1,
            "Headband":Dress_data.HeadbandData.length - 1,
            "Hat":Dress_data.HatData.length - 1,
            "Mimi":Dress_data.MimiData.length - 1,
            "Horn":Dress_data.DressData["Horn"].length - 1,
            "Hane":Dress_data.HaneData.length - 1,
            "Tail":Dress_data.DressData["Tail"].length - 1,
            "Tin":Dress_data.TinData.length - 1,
            "TinKawa":Dress_data.TinKawaData.length - 1,
            "s":Dress_data.SujiData.length - 1,
            "Tama":11,
            "Collar":Dress_data.menuCustom["Collar"].length - 1,
            "Necklace":Dress_data.menuCustom["Necklace"].length - 1,
            "Necktie":Dress_data.NecktieData.length - 1,
            "RibonPlus":Main.RibonhukusuuNum,
            "Ribon":Dress_data.DressData["Ribon1"].length - 1,
            "RibonLine":5,
            "Wristband0":Dress_data.WristbandData.length - 1,
            "Wristband1":Dress_data.WristbandData.length - 1,
            "Glove0":Dress_data.GloveData.length - 1,
            "GloveLength0":4,
            "Glove1":Dress_data.GloveData.length - 1,
            "GloveLength1":4,
            "Bracelet0":Dress_data.BraceletData.length - 1,
            "Bracelet1":Dress_data.BraceletData.length - 1,
            "ArmBracelet0":Dress_data.ArmBraceletData.length - 1,
            "ArmBracelet1":Dress_data.ArmBraceletData.length - 1,
            "Armband0":Dress_data.ArmbandData.length - 1,
            "Armband1":Dress_data.ArmbandData.length - 1,
            "Elbowpad0":Dress_data.ElbowpadData.length - 1,
            "Elbowpad1":Dress_data.ElbowpadData.length - 1,
            "Gag":Dress_data.menuCustom["Gag"].length - 1,
            "Headphone":Dress_data.HeadphoneData.length - 1,
            "Earring0":Dress_data.EarringData.length - 1,
            "Earring1":Dress_data.EarringData.length - 1,
            "BeltPlus":Main.hukusuuNum,
            "Belt":Dress_data.DressData["Belt0"].length - 1,
            "BeltLine":5,
            "BeltExtra":11,
            "FreeHandPlus":98,
            "FreeHand":12,
            "FreeHandWrist":41,
            "FreeHandItem":Dress_data.menuCustom["Item0"].length - 1,
            "FreeHandVest":Dress_data.FreeHandVestData.length - 1,
            "FreeHandWristband":Dress_data.FreeHandWristbandData.length - 1,
            "FreeRibonPlus":98,
            "FreeRibon":Dress_data.DressData["Ribon0"].length - 1,
            "FreeRibonLine":5,
            "FreeBeltPlus":98,
            "FreeBelt":Dress_data.DressData["Belt0"].length - 1,
            "FreeBeltLine":5,
            "FreeBeltExtra":0,
            "FreeChairPlus":98,
            "FreeChair":Dress_data.DressData["FreeChair0"].length - 1,
            "FreeChairLine":5,
            "FreeChairExtra":0,
            "FreeFlagPlus":98,
            "FreeFlag":209,
            "FreeFlagExtra":7,
            "FreeHukidashiPlus":98,
            "FreeHukidashiMenu":4,
            "FreeHukidashiBlend":11,
            "FreeHukidashi":Dress_data.DressData["FreeHukidashi0"].length - 1,
            "FreeHukidashiLine":14,
            "FreeHukidashiExtra":9,
            "FreeHukidashiExtraLine":14,
            "txtFieldTateYoko":1,
            "BreastLeft":14,
            "BreastRight":14,
            "NippleLeft":8,
            "NippleRight":8,
            "SRight":23,
            "SLeft":23,
            "Quality":3,
            "Speed":5,
            "Story_Page":0,
            "CameraGIFSpeed":9,
            "Background":Dress_data.menuCustom["Background"].length - 1,
            "BgFloor":Dress_data.menuCustom["BgFloor"].length - 1,
            "BgFront":Dress_data.menuCustom["BgFront"].length - 1,
            "Mob":2,
            "Mosaic":Dress_data.DressData["Mosaic"].length - 1,
            "CameraKaizoudo":4,
            "txtFieldmenu":9,
            "FontType":MenuClass.FontList.length - 1,
            "LoadPlus":98,
            "LoadSwfMenu":0,
            "LoadSwfSen":5,
            "CharaLoadPlus":Main.hukusuuNum,
            "URLTextMenu":Main.urlTextData.length + Main.userUrlTextData.length - 1,
            "CharaURLTextMenu":Main.urlTextData.length + Main.userUrlTextData.length - 1
         };
      }
   }
}
