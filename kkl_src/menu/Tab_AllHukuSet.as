package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import parameter.Chara_IEAllCharadata;
   import parameter.Chara_IESeihukudata;
   import parameter.Chara_IEdata;
   import parameter.Dress_data;
   
   public class Tab_AllHukuSet
   {
      
      public static var randomNum_huku:int = 0;
      
      public static var randomNum_Sukumizu:int = 0;
      
      public static var randomNum_Mizugi:int = 0;
      
      public static var randomNum_MizugiKutu:int = 0;
      
      public static var randomNum_Bunny:int = 0;
      
      public static var randomNum_Maid:int = 0;
      
      public static var randomNum_Cheer:int = 0;
      
      public static var randomNum_Nurse:int = 0;
      
      public static var randomNum_Background:int = 0;
      
      public static var BackgroundRamdomBox:Array = new Array();
      
      public static var HukuRamdomBox:Array = new Array();
      
      public static var SukumizuRamdomBox:Array = new Array();
      
      public static var MizugiRamdomBox:Array = new Array();
      
      public static var MizugiKutuRamdomBox:Array = new Array();
      
      public static var BunnyRamdomBox:Array = new Array();
      
      public static var MaidRamdomBox:Array = new Array();
      
      public static var CheerRamdomBox:Array = new Array();
      
      public static var NurseRamdomBox:Array = new Array();
      
      public static var menuNum:int = 0;
      
      public static var strFlag:String;
      
      public static var AllHukuNum:int = 0;
      
      public static var selectNum:int = 0;
      
      public static var MaxNum:int = 1;
      
      public static var enterCount:int = 0;
      
      public static var HairRandomBox:Array = new Array();
      
      public static var FaceRandomBox:Array = new Array();
      
      public static var UnderwearRandomBox:Array = new Array();
      
      public static var AcceRamdomBox:Array = new Array();
       
      
      public function Tab_AllHukuSet()
      {
         super();
      }
      
      public static function setFc() : void
      {
         var _loc1_:int = 0;
         var _loc2_:MovieClip = null;
         try
         {
            _loc1_ = 0;
            while(_loc1_ <= 3)
            {
               _loc2_ = new Chara_Loading_item.allHukuSetClass();
               MenuClass.AllHukuSetAdd[_loc1_] = _loc2_;
               MenuClass.tabMenuAdd["TabAllHukuSet"].addChild(MenuClass.AllHukuSetAdd[_loc1_]);
               MenuClass.AllHukuSetAdd[_loc1_].Num = _loc1_;
               MenuClass.AllHukuSetAdd[_loc1_].gotoAndStop(_loc1_ + 1);
               MenuClass.AllHukuSetAdd[_loc1_].selectObj.visible = false;
               MenuClass.AllHukuSetAdd[_loc1_].y = 0;
               MenuClass.AllHukuSetAdd[_loc1_].x = _loc1_ * 180 + 31;
               _loc1_++;
            }
            menuBtnSet();
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function deleteFc() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ <= 3)
         {
            try
            {
               MenuClass.AllHukuSetAdd[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,charaBtnMouseDown);
            }
            catch(myError:Error)
            {
            }
            MenuClass.tabMenuAdd["TabAllHukuSet"].removeChild(MenuClass.AllHukuSetAdd[_loc1_]);
            MenuClass.AllHukuSetAdd[_loc1_] = null;
            _loc1_++;
         }
         MenuClass.tabMenuAdd["TabAllHukuSet"].prevBtn.removeEventListener(MouseEvent.MOUSE_DOWN,prevBtnMouseDown);
         MenuClass.tabMenuAdd["TabAllHukuSet"].nextBtn.removeEventListener(MouseEvent.MOUSE_DOWN,nextBtnMouseDown);
         try
         {
            MenuClass.tabMenuAdd["TabAllHukuSet"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
         }
         catch(myError:Error)
         {
         }
         enterCount = 0;
      }
      
      public static function menuBtnSet() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(_loc1_ <= 3)
         {
            _loc2_ = 4 * menuNum + _loc1_ + 1;
            MenuClass.AllHukuSetAdd[_loc1_].gotoAndStop(_loc2_);
            MenuClass.AllHukuSetAdd[_loc1_].selectObj.visible = false;
            MenuClass.AllHukuSetAdd[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,charaBtnMouseDown);
            if(_loc2_ > Chara_IEAllCharadata.IEAllHukuData.length)
            {
               MenuClass.AllHukuSetAdd[_loc1_].buttonMode = false;
            }
            else
            {
               MenuClass.AllHukuSetAdd[_loc1_].buttonMode = true;
               MenuClass.AllHukuSetAdd[_loc1_].addEventListener(MouseEvent.MOUSE_DOWN,charaBtnMouseDown);
               MenuClass.tabMenuAdd["TabAllHukuSet"].prevBtn.buttonMode = true;
               MenuClass.tabMenuAdd["TabAllHukuSet"].nextBtn.buttonMode = true;
               MenuClass.tabMenuAdd["TabAllHukuSet"].prevBtn.addEventListener(MouseEvent.MOUSE_DOWN,prevBtnMouseDown);
               MenuClass.tabMenuAdd["TabAllHukuSet"].nextBtn.addEventListener(MouseEvent.MOUSE_DOWN,nextBtnMouseDown);
            }
            _loc1_++;
         }
      }
      
      public static function prevBtnMouseDown(param1:MouseEvent) : void
      {
         if(menuNum == 0)
         {
            menuNum = MaxNum;
         }
         else
         {
            --menuNum;
         }
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd["TabAllHukuSet"].prevBtn.gotoAndStop(2);
         MenuClass.tabMenuAdd["TabAllHukuSet"].prevBtn.addEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
         menuBtnSet();
      }
      
      public static function prevBtnMouseUp(param1:MouseEvent) : void
      {
         MenuClass.tabMenuAdd["TabAllHukuSet"].prevBtn.gotoAndStop(1);
         MenuClass.tabMenuAdd["TabAllHukuSet"].prevBtn.removeEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,prevBtnMouseUp);
      }
      
      public static function nextBtnMouseDown(param1:MouseEvent) : void
      {
         if(menuNum == MaxNum)
         {
            menuNum = 0;
         }
         else
         {
            menuNum += 1;
         }
         new Stage_MoveCheckClass();
         MenuClass.tabMenuAdd["TabAllHukuSet"].nextBtn.gotoAndStop(2);
         MenuClass.tabMenuAdd["TabAllHukuSet"].nextBtn.addEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
         menuBtnSet();
      }
      
      public static function nextBtnMouseUp(param1:MouseEvent) : void
      {
         MenuClass.tabMenuAdd["TabAllHukuSet"].nextBtn.gotoAndStop(1);
         MenuClass.tabMenuAdd["TabAllHukuSet"].nextBtn.removeEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,nextBtnMouseUp);
      }
      
      public static function charaBtnMouseDown(param1:MouseEvent) : void
      {
         enterCount = 0;
         AllHukuNum = 4 * menuNum + param1.currentTarget.Num;
         selectNum = param1.currentTarget.Num;
         setFc2("btn");
      }
      
      // This function initializes variables that hukuset(), below, uses to
      // randomly generate default-chans.
      public static function setFc2(param1:String) : void
      {
         var _loc2_:int = 0;
         strFlag = param1;
         if(strFlag == "first")
         {
            enterCount = 0;
         }

         // AllHukuNum controls what random sets we load things from.

         Main.accessObj.AllHukuNumData = AllHukuNum;

         // Initialize our choices of backgrounds:
         BackgroundRamdomBox = new Array();
         _loc2_ = 0;
         while(_loc2_ < Chara_IEdata.BackgroundSetData[int(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum])].length)
         {
            BackgroundRamdomBox.push(_loc2_);
            _loc2_++;
         }
         BackgroundRamdomBox.splice(randomNum_Background,1);

         if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "0" || Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "1")
         {
            HukuRamdomBox = new Array();
            _loc2_ = 0;
            while(_loc2_ < Chara_IESeihukudata.Seihukudata[int(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum])].length)
            {
               HukuRamdomBox.push(_loc2_);
               _loc2_++;
            }
            HukuRamdomBox.splice(randomNum_huku,1);
            randomNum_huku = HukuRamdomBox[Math.floor(Math.random() * HukuRamdomBox.length)];
         }
         else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "2")
         {
            SukumizuRamdomBox = new Array();
            _loc2_ = 0;
            while(_loc2_ < Chara_IESeihukudata.SukumizuData.length)
            {
               SukumizuRamdomBox.push(_loc2_);
               _loc2_++;
            }
            SukumizuRamdomBox.splice(randomNum_Sukumizu,1);
            randomNum_Sukumizu = SukumizuRamdomBox[Math.floor(Math.random() * SukumizuRamdomBox.length)];
         }
         else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "3")
         {
            MizugiRamdomBox = new Array();
            _loc2_ = 0;
            while(_loc2_ < Chara_IESeihukudata.MizugiData.length)
            {
               MizugiRamdomBox.push(_loc2_);
               _loc2_++;
            }
            MizugiKutuRamdomBox = new Array();
            _loc2_ = 0;
            while(_loc2_ < Chara_IESeihukudata.MizugiKutuData.length)
            {
               MizugiKutuRamdomBox.push(_loc2_);
               _loc2_++;
            }
         }
         else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "4")
         {
            BunnyRamdomBox = new Array();
            _loc2_ = 0;
            while(_loc2_ < Chara_IESeihukudata.BunnyData.length)
            {
               BunnyRamdomBox.push(_loc2_);
               _loc2_++;
            }
            BunnyRamdomBox.splice(randomNum_Bunny,1);
            randomNum_Bunny = BunnyRamdomBox[Math.floor(Math.random() * BunnyRamdomBox.length)];
         }
         else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "5")
         {
            MaidRamdomBox = new Array();
            _loc2_ = 0;
            while(_loc2_ < Chara_IESeihukudata.MaidData.length)
            {
               MaidRamdomBox.push(_loc2_);
               _loc2_++;
            }
            MaidRamdomBox.splice(randomNum_Maid,1);
            randomNum_Maid = MaidRamdomBox[Math.floor(Math.random() * MaidRamdomBox.length)];
         }
         else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "6")
         {
            CheerRamdomBox = new Array();
            _loc2_ = 0;
            while(_loc2_ < Chara_IESeihukudata.CheerData.length)
            {
               CheerRamdomBox.push(_loc2_);
               _loc2_++;
            }
            CheerRamdomBox.splice(randomNum_Cheer,1);
            randomNum_Cheer = CheerRamdomBox[Math.floor(Math.random() * CheerRamdomBox.length)];
         }
         else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "7")
         {
            NurseRamdomBox = new Array();
            _loc2_ = 0;
            while(_loc2_ < Chara_IESeihukudata.NurseData.length)
            {
               NurseRamdomBox.push(_loc2_);
               _loc2_++;
            }
            NurseRamdomBox.splice(randomNum_Nurse,1);
            randomNum_Nurse = NurseRamdomBox[Math.floor(Math.random() * NurseRamdomBox.length)];
         }
         
         HairRandomBox = new Array();
         FaceRandomBox = new Array();
         UnderwearRandomBox = new Array();
         AcceRamdomBox = new Array();
         _loc2_ = 0;
         while(_loc2_ < Chara_IEdata.AllHairSetData.length)
         {
            HairRandomBox.push(_loc2_);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < Chara_IEdata.AllFaceSetData.length)
         {
            FaceRandomBox.push(_loc2_);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < Chara_IEdata.UnderwearData.length)
         {
            if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "6")
            {
               if(Chara_IEdata.UnderwearData[_loc2_][0] != 1)
               {
                  UnderwearRandomBox.push(_loc2_);
               }
            }
            else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "0" || Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "1" || Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "7")
            {
               UnderwearRandomBox.push(_loc2_);
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < Chara_IEdata.Accedata.length)
         {
            AcceRamdomBox.push(_loc2_);
            _loc2_++;
         }

         if(enterCount == 0)
         {
            if(strFlag == "btn")
            {
               _loc2_ = 0;
               while(_loc2_ <= 3)
               {
                  MenuClass.AllHukuSetAdd[_loc2_].selectObj.visible = false;
                  _loc2_++;
               }
               MenuClass.AllHukuSetAdd[selectNum].selectObj.visible = true;
               MenuClass.tabMenuAdd["TabAllHukuSet"].addEventListener(Event.ENTER_FRAME,EnterFrame);
            }
            else if(strFlag == "first")
            {
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  MenuClass.charaAddDepth[_loc2_].visible = true;
                  _loc2_++;
               }
               
               Main.stageVar.addEventListener(Event.ENTER_FRAME,EnterFrame);
            }
         }
      }
      
      public static function hukuset(param1:int, param2:String) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc7_:String = null;
         var _loc9_:int = 0;
         strFlag = param2;
         var _loc6_:Array = new Array();
         var _loc8_:Object = MenuClass.charaData[param1];
         _loc7_ = Chara_IEdata.defoSetData[0];
         _loc3_ = Math.floor(Math.random() * HairRandomBox.length);
         var skipFragmentSystem: Boolean = (strFlag != "first" && AllHukuNum != 0) || !Main.defaultChanGenerator.haveFragments();

         if (skipFragmentSystem) {
            _loc8_["AllHairSet"]["_menu"] = HairRandomBox[_loc3_];
            HairRandomBox.splice(_loc3_,1);
            if((Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "4" || Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "5" || Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "7") && Chara_IEdata.AllHairSetData[_loc8_["AllHairSet"]["_menu"]][1] != 0)
            {
               _loc6_ = Chara_IEdata.AllHairSetData[_loc8_["AllHairSet"]["_menu"]][1].split("**");
            }
            else
            {
               _loc6_ = Chara_IEdata.AllHairSetData[_loc8_["AllHairSet"]["_menu"]][0].split("**");
            }
            _loc6_.shift();
            _loc7_ = _loc7_ + "_" + String(_loc6_);
            _loc3_ = Math.floor(Math.random() * FaceRandomBox.length);
            _loc4_ = FaceRandomBox[_loc3_];
            FaceRandomBox.splice(_loc3_,1);
            (_loc6_ = Chara_IEdata.AllFaceSetData[_loc4_].split("**")).shift();
            _loc7_ = _loc7_ + "_" + String(_loc6_);
            if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "2" || Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "3" || Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "4")
            {
               if(MenuClass.systemData["BodyType"]["_menu"] == 0)
               {
                  _loc3_ = Math.floor(Math.random() * Chara_IEdata.AllBodySetMizugiData.length);
                  _loc6_ = Chara_IEdata.AllBodySetMizugiData[_loc3_].split("**");
               }
               else
               {
                  _loc3_ = Math.floor(Math.random() * Chara_IEdata.AllBodySet2MizugiData.length);
                  _loc6_ = Chara_IEdata.AllBodySet2MizugiData[_loc3_].split("**");
               }
            }
            else if(MenuClass.systemData["BodyType"]["_menu"] == 0)
            {
               _loc3_ = Math.floor(Math.random() * Chara_IEdata.AllBodySetData.length);
               _loc6_ = Chara_IEdata.AllBodySetData[_loc3_].split("**");
            }
            else
            {
               _loc3_ = Math.floor(Math.random() * Chara_IEdata.AllBodySet2Data.length);
               _loc6_ = Chara_IEdata.AllBodySet2Data[_loc3_].split("**");
            }
            _loc6_.shift();
            _loc7_ = _loc7_ + "_" + String(_loc6_);
            if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "0" || Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "1")
            {
               (_loc6_ = Chara_IESeihukudata.Hadakadata[0][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               _loc3_ = Math.floor(Math.random() * Chara_IESeihukudata.Seihukudata[int(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum])][randomNum_huku].length);
               (_loc6_ = Chara_IESeihukudata.Seihukudata[int(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum])][randomNum_huku][_loc3_][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               _loc3_ = Math.floor(Math.random() * UnderwearRandomBox.length);
               _loc4_ = UnderwearRandomBox[_loc3_];
               UnderwearRandomBox.splice(_loc3_,1);
               (_loc6_ = Chara_IEdata.UnderwearData[_loc4_][1].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               _loc3_ = Math.floor(Math.random() * AcceRamdomBox.length);
               _loc4_ = AcceRamdomBox[_loc3_];
               AcceRamdomBox.splice(_loc3_,1);
               if(Chara_IEdata.Accedata[_loc4_] != null)
               {
                  (_loc6_ = Chara_IEdata.Accedata[_loc4_].split("**")).shift();
                  _loc7_ = _loc7_ + "_" + String(_loc6_);
               }
            }
            else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "2")
            {
               (_loc6_ = Chara_IESeihukudata.Hadakadata[0][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               _loc3_ = Math.floor(Math.random() * Chara_IESeihukudata.SukumizuData[randomNum_Sukumizu].length);
               (_loc6_ = Chara_IESeihukudata.SukumizuData[randomNum_Sukumizu][_loc3_][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
            }
            else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "3")
            {
               (_loc6_ = Chara_IESeihukudata.Hadakadata[0][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               randomNum_Mizugi = Math.floor(Math.random() * MizugiRamdomBox.length);
               _loc9_ = MizugiRamdomBox[randomNum_Mizugi];
               MizugiRamdomBox.splice(randomNum_Mizugi,1);
               _loc3_ = Math.floor(Math.random() * Chara_IESeihukudata.MizugiData[_loc9_].length);
               (_loc6_ = Chara_IESeihukudata.MizugiData[_loc9_][_loc3_][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               randomNum_MizugiKutu = Math.floor(Math.random() * MizugiKutuRamdomBox.length);
               _loc9_ = MizugiKutuRamdomBox[randomNum_MizugiKutu];
               MizugiKutuRamdomBox.splice(randomNum_MizugiKutu,1);
               _loc3_ = Math.floor(Math.random() * Chara_IESeihukudata.MizugiKutuData.length);
               if(Chara_IESeihukudata.MizugiKutuData[_loc3_] != null)
               {
                  (_loc6_ = Chara_IESeihukudata.MizugiKutuData[_loc3_][0].split("**")).shift();
                  _loc7_ = _loc7_ + "_" + String(_loc6_);
               }
               _loc3_ = Math.floor(Math.random() * AcceRamdomBox.length);
               _loc4_ = AcceRamdomBox[_loc3_];
               AcceRamdomBox.splice(_loc3_,1);
               if(Chara_IEdata.Acce2data[_loc4_] != null)
               {
                  (_loc6_ = Chara_IEdata.Acce2data[_loc4_].split("**")).shift();
                  _loc7_ = _loc7_ + "_" + String(_loc6_);
               }
            }
            else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "4")
            {
               (_loc6_ = Chara_IESeihukudata.Hadakadata[0][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               (_loc6_ = Chara_IESeihukudata.BunnyData[randomNum_Bunny][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               _loc3_ = Math.floor(Math.random() * AcceRamdomBox.length);
               _loc4_ = AcceRamdomBox[_loc3_];
               AcceRamdomBox.splice(_loc3_,1);
               if(Chara_IEdata.Acce3data[_loc4_] != null)
               {
                  (_loc6_ = Chara_IEdata.Acce3data[_loc4_].split("**")).shift();
                  _loc7_ = _loc7_ + "_" + String(_loc6_);
               }
            }
            else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "5")
            {
               (_loc6_ = Chara_IESeihukudata.Hadakadata[0][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               (_loc6_ = Chara_IESeihukudata.MaidData[randomNum_Maid][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               _loc3_ = Math.floor(Math.random() * AcceRamdomBox.length);
               _loc4_ = AcceRamdomBox[_loc3_];
               AcceRamdomBox.splice(_loc3_,1);
               if(Chara_IEdata.Acce3data[_loc4_] != null)
               {
                  (_loc6_ = Chara_IEdata.Acce3data[_loc4_].split("**")).shift();
                  _loc7_ = _loc7_ + "_" + String(_loc6_);
               }
            }
            else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "6")
            {
               (_loc6_ = Chara_IESeihukudata.Hadakadata[0][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               (_loc6_ = Chara_IESeihukudata.CheerData[randomNum_Cheer][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               _loc3_ = Math.floor(Math.random() * UnderwearRandomBox.length);
               _loc4_ = UnderwearRandomBox[_loc3_];
               UnderwearRandomBox.splice(_loc3_,1);
               (_loc6_ = Chara_IEdata.UnderwearData[_loc4_][1].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               _loc3_ = Math.floor(Math.random() * AcceRamdomBox.length);
               _loc4_ = AcceRamdomBox[_loc3_];
               AcceRamdomBox.splice(_loc3_,1);
               if(Chara_IEdata.Acce3data[_loc4_] != null)
               {
                  (_loc6_ = Chara_IEdata.Acce3data[_loc4_].split("**")).shift();
                  _loc7_ = _loc7_ + "_" + String(_loc6_);
               }
            }
            else if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "7")
            {
               (_loc6_ = Chara_IESeihukudata.Hadakadata[0][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               (_loc6_ = Chara_IESeihukudata.NurseData[randomNum_Nurse][0].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               _loc3_ = Math.floor(Math.random() * UnderwearRandomBox.length);
               _loc4_ = UnderwearRandomBox[_loc3_];
               UnderwearRandomBox.splice(_loc3_,1);
               (_loc6_ = Chara_IEdata.UnderwearData[_loc4_][1].split("**")).shift();
               _loc7_ = _loc7_ + "_" + String(_loc6_);
               _loc3_ = Math.floor(Math.random() * AcceRamdomBox.length);
               _loc4_ = AcceRamdomBox[_loc3_];
               AcceRamdomBox.splice(_loc3_,1);
               if(Chara_IEdata.Acce3data[_loc4_] != null)
               {
                  (_loc6_ = Chara_IEdata.Acce3data[_loc4_].split("**")).shift();
                  _loc7_ = _loc7_ + "_" + String(_loc6_);
               }
            }
         } else {
            //  generate from default-chan data:
            new Chara_AllBodyHeight(param1,"random");
            new Chara_AllHair(param1,"AllHair");
            new Chara_AllBody(param1,"AllBody");
            new Chara_AllFace(param1,"AllFace");

            _loc7_ = Main.defaultChanGenerator.generate();
         }

         if (param1 == 4 && (Math.random() <= 0.5)) {
            _loc7_ = "104**aa7.0.0.0.50.7.0.0.0.50_ab_ac_ba50_bb5.1_bc500.510.8.0.1.0_bd5_be180_bi0.0.100.100_bf_bg_bh1_ca54.0.30.60.21.34.34.25.23.0.60.83_daFADDBC_db_dd9.3.34.50.44.52_dhFADDBC.30.50.50.0_di4_qa_qb_dc0.0.FADDBC.FADDBC.1.0_eh_ea14.E3C999.E3C999.56.0.0_ec0.66.E3C999.E3C999.56.48.57.0_ed10.32.0.1.E3C999.56_ef_eg_r00_fd3.0.56.E3C999.56.63_fe47.61_ff0000000000_fg0.50.56.0.0.1.0.0_fi_pa0.E3C999.0.0.40.50.85.85.0.1_t00_pb_pc_pd_pe_ga0_gb1.0.10.40.65_gc0.0_ge0000000000_gh0_gf_gg_gd000000_ha89.89_hb49.1.44.99.99.49.44_hc0.60.40.0.60.40_hd0.1.49.49.2.60.50.50_ad0.0.0.0.0.0.0.0.0.0_ae1.0.0.0.0_ia1.24.43.55.1.14.6.55.14.6.55.0.0.0.0.1.7.55.55.0.5_if8.42.42.42.1.0.0.0.0.0.0.0.0.33.0.0.0.0.1.0.0.0.0.0_ib0.55.55.55.0.0.0.1.5.0.0.5.0.0.33.0.0.0.0.1.0.1.0.0.0.0.0_id_ic0.57.57.57.0_jc_ie_ja_jb_jf16.55.55.55_jg16.55.55.55_jd6.48.48.0.0.60.0.0_je6.48.48.0.0.60.0.0_ka0.23.23.56.0_kb12.23.24.56.0_kc_kd_ke_kf_kg_la_lb_oa_os_ob_oc_od_oe9.56.0.0.0_of0.43.0.0.0_lc_m003.6.0.0.1.1.29.0.-12.871.4.61.29.500.0.0.1_s00_og_oh_oo_op_oq_or_om_on_ok_ol_oi_oj_f00";
            skipFragmentSystem = false;
            if (Math.random() < 0.50) {
               _loc7_ += "_fa6.50.50.50.50.65.56.0_fb7_fh_fk_fc5.6.55.5.6.55.40.61.61.40.50.49_fj";

               var roll = Math.random();
               if (roll < 0.2) {
                  _loc7_ += "_aa11.209.1.0.61.6.195.1.56.71_ab9.56.59.40_ac_ba39_bb4.1_bc500.510.8.0.1.0_bd6_be179"
               } else if (roll < 0.4) {
                  _loc7_ += "_aa8.191.0.34.23.6.182.1.55.25_ab_ac_ba42_bb4.1_bc494.500.0.0.1.0_bd7_be179_bi0.0.100.100_bf_bg_bh1_ga0_gb1.0.10.40.65_gc0.0_ge0000000000_gh0_gf_gg_gd000000_ha89.89_hb45.1.36.100.100.45.36_hc0.54.14.0.54.14_hd0.1.86.77.3.61.45.61.1_ad0.0.0.0.0.0.0.0.0.0_ae1.0.0.0.0_m003.6.0.0.1.1.29.0.-12.871.4.61.29.500.0.0.1.100_m0186.59.0.0.1.1.37.124.494.467.2.61.88.500.0.94.0.100_m0286.56.0.0.1.1.1.124.497.465.3.61.54.500.0.94.0.100_m03136.61.0.0.1.1.-8.327.512.471.0.61.-16.500.0.94.0.100_m04136.57.0.0.1.1.-15.327.512.471.0.61.-20.500.0.94.0.100_m05136.61.0.0.1.1.-9.86.484.452.5.61.-19.500.1.94.0.100_m06136.57.0.0.1.1.-15.86.484.452.0.61.-21.500.1.94.0.100_m0786.57.0.0.1.1.-5.124.495.466.2.61.70.500.0.94.0.100_m0886.57.0.0.1.1.-13.124.497.462.0.61.54.500.0.94.0.100_m0986.57.0.0.1.1.-27.116.498.462.0.61.66.461.0.94.0.100_m1086.57.0.0.1.1.-28.136.494.459.0.61.43.553.0.94.0.100_m11135.55.0.0.1.1.-2.213.499.481.5.61.7.500.0.94.0.100_m12135.55.0.0.1.1.-2.214.479.468.5.61.9.500.1.94.0.100_m1386.55.0.0.1.1.31.214.490.475.0.61.-13.500.1.94.0.100_m145.61.0.0.1.1.-28.50.498.483.5.61.-28.500.0.94.0.100_m155.61.0.0.1.1.-28.50.496.480.5.61.-28.500.0.94.0.100_m165.61.0.0.1.1.-28.50.481.469.5.61.-28.500.0.94.0.100_m175.61.0.0.1.1.-13.50.489.460.5.61.-13.500.0.94.0.100_m185.61.0.0.1.1.-13.50.502.469.5.61.-13.500.0.94.0.100_m1983.55.0.0.1.1.-12.34.496.465.5.61.39.500.0.94.0.100_m205.55.0.0.1.1.-17.50.502.469.5.61.-17.500.0.94.0.100_m215.55.0.0.1.1.-17.50.489.460.5.61.-17.500.0.94.0.100_m2283.55.0.0.1.1.-12.34.495.465.0.61.15.426.0.94.0.100_m2383.55.0.0.1.1.-13.34.496.464.0.61.14.426.0.94.0.100_m245.61.0.0.1.1.-23.50.502.469.5.61.-23.500.0.94.0.100_m255.61.0.0.1.1.-23.50.489.460.5.61.-23.500.0.94.0.100_m2686.57.0.0.1.1.-12.34.496.464.5.61.-26.500.0.94.0.100"
               }
            } else {
               _loc7_ += "_fa6.50.50.50.50.65.56.0_fb7_fh_fk_fc0.42.55.0.42.55.40.61.61.40.50.49_fj0.0.0";
            }
         }

         Tab_IEInOut.execute("textIN",_loc7_,param1);
         
         if(Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "0" || Chara_IEAllCharadata.IEAllHukuData[AllHukuNum] == "1")
         {
            if(MenuClass.systemData["BodyType"]["_menu"] == 1)
            {
               _loc8_["Bura"]["_visible"][0] = false;
               new SetClass(param1,"Bura","move");
            }
         }

         var _loc10_:Array = new Array(150,237,325,412,500,587,675,762,850);
         _loc8_["Xmove"]["_meter"] = _loc10_[param1];
         if(MenuClass._nowTargetMode == "All" || strFlag == "first")
         {
            if(param1 == 0 || param1 == 2 || param1 == 4 || param1 == 6 || param1 == 8)
            {
               _loc8_["Ymove"]["_meter"] = 510;
            }
            else
            {
               _loc8_["Ymove"]["_meter"] = 500;
            }
         }
         else
         {
            _loc8_["Ymove"]["_meter"] = 500;
         }
         _loc8_["BodyYMove"]["_meter"] = 0;
         _loc8_["Jump"]["_meter"] = 0;
         _loc8_["Shadow"]["_visible"][0] = true;
         new SetClass(param1,"Xmove","move");
         new SetClass(param1,"Ymove","move");
         new SetClass(param1,"BodyYMove","move");
         new SetClass(param1,"Jump","move");
         new SetClass(param1,"Shadow","move");
         
         if (skipFragmentSystem) {
         new Chara_AllBodyHeight(param1,"random");
         new Chara_AllHair(param1,"AllHair");
         new Chara_AllBody(param1,"AllBody");
         new Chara_AllFace(param1,"AllFace");
         }

         if(!Main.allCharaLoadFlag)
         {
            MenuClass.charaAddDepth[param1].visible = true;
         }

         // Disable default blush
         _loc8_["Hoho"]["_menu"] = 9;
         new SetClass(param1,"Hoho","move");

         // Change default emotion settings to manual
         _loc8_["EmotionManualAuto"]["_check"] = false;

         if(enterCount == 9)
         {
            Main.allCharaLoadFlag = true;
            try
            {
               MenuClass.AllHukuSetAdd[selectNum].selectObj.visible = false;
               MenuClass.tabMenuAdd["TabAllHukuSet"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
            }
            catch(myError:Error)
            {
            }
            try
            {
               Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
            }
            catch(myError:Error)
            {
            }
            enterCount = 0;

            if (strFlag == "first") {
               Main.onKisekaeReady();
            }
         }
         if(strFlag == "first")
         {
            // MenuClass.charaMotoData[param1] = clone(MenuClass.charaData[param1]);
            // Dress_data.DressCharaMotoData[param1] = clone(Dress_data.DressCharaData[param1]);
         }
      }
      
      public static function EnterFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(enterCount == 0)
         {
            if(strFlag != "first")
            {
            }
         }
         else if(MenuClass._nowTargetMode == "All" || strFlag == "first")
         {
            _loc3_ = enterCount - 1;
            hukuset(_loc3_,strFlag);
         }
         else if(MenuClass._nowTargetMode == "Select")
         {
            hukuset(MenuClass._nowCharaNum,strFlag);

            try
            {
               MenuClass.AllHukuSetAdd[selectNum].selectObj.visible = false;
               MenuClass.tabMenuAdd["TabAllHukuSet"].removeEventListener(Event.ENTER_FRAME,EnterFrame);
            }
            catch(myError:Error)
            {
            }

            try
            {
               Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
            }
            catch(myError:Error)
            {
            }
         }

         enterCount++;
      }
      
      public static function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
