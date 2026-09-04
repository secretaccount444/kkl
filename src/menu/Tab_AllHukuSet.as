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
      
      public static function setFc2(param1:String) : void
      {
         var _loc2_:int = 0;
         strFlag = param1;
         if(strFlag == "first")
         {
            enterCount = 0;
         }
         Main.accessObj.AllHukuNumData = AllHukuNum;
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
                  MenuClass.charaAddDepth[_loc2_].visible = false;
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
         new Tab_IEInOut("textIN",_loc7_,param1);
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
         new Chara_AllBodyHeight(param1,"random");
         new Chara_AllHair(param1,"AllHair");
         new Chara_AllBody(param1,"AllBody");
         new Chara_AllFace(param1,"AllFace");
         if(!Main.allCharaLoadFlag)
         {
            MenuClass.charaAddDepth[param1].visible = true;
         }
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
         }
         if(strFlag == "first")
         {
            MenuClass.charaMotoData[param1] = clone(MenuClass.charaData[param1]);
            Dress_data.DressCharaMotoData[param1] = clone(Dress_data.DressCharaData[param1]);
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
         ++enterCount;
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
