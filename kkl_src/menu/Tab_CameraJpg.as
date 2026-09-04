package menu
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import net.JPGSaver;
   import system.MeterPersent;
   
   public class Tab_CameraJpg
   {
       
      
      private var saver:JPGSaver;
      
      private var bitmap:Bitmap;
      
      public function Tab_CameraJpg()
      {
         var _loc3_:BitmapData = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         super();
         if(!MenuClass.systemData["CameraKirinuki"]["_check"])
         {
            _loc12_ = 0;
            _loc13_ = 0;
            _loc12_ = (Main._stageWidth - 800) / -2;
            _loc13_ = (Main._stageHeight - 600) / -2;
            MenuClass.photoSize = new Array(_loc12_,_loc13_,Main._stageWidth,Main._stageHeight);
         }
         else
         {
            MenuClass.photoSize = new Array(MenuClass.systemData["CameraKirinuki"]["_x"],MenuClass.systemData["CameraKirinuki"]["_y"],MenuClass.systemData["CameraKirinuki"]["_width"],MenuClass.systemData["CameraKirinuki"]["_height"]);
         }
         if(MenuClass.alphaMode && MenuClass.cameraMode == 1)
         {
            Main.mainWindow.bg.visible = true;
         }
         _loc5_ = 0;
         while(_loc5_ <= MenuClass._characterNum)
         {
            new SetClass(_loc5_,"CharaDropShadowX","camera");
            new SetClass(_loc5_,"CharaDropShadowY","camera");
            new SetClass(_loc5_,"CharaDropShadowDistance","camera");
            new SetClass(_loc5_,"CharaBlurX","camera");
            new SetClass(_loc5_,"CharaBlurY","camera");
            _loc5_++;
         }
         new MeterPersent(1,100,"CameraJPG",0);
         MenuClass.jpgMeter = Math.floor(MeterPersent.MeterPersentNum);
         this.saver = new JPGSaver();
         this.saver.addEventListener(Event.COMPLETE,this.complete,false,0,true);
         var _loc1_:Array = [0.5,1,1.5,2,2.5];
         var _loc2_:int = MenuClass.systemData["CameraKaizoudo"]["_menu"];
         if(MenuClass.cameraMode == 0)
         {
            _loc3_ = new BitmapData(MenuClass.photoSize[2] * _loc1_[_loc2_],MenuClass.photoSize[3] * _loc1_[_loc2_],true);
         }
         else if(MenuClass.cameraMode == 1)
         {
            _loc3_ = new BitmapData(MenuClass.photoSize[2] * _loc1_[_loc2_],MenuClass.photoSize[3] * _loc1_[_loc2_],true,16777215);
         }
         new MeterPersent(1,5,"Zoom",0);
         if(MeterPersent.MeterPersentNum < 1)
         {
            MeterPersent.MeterPersentNum = Main.mainWindow.scaleX;
         }
         var _loc4_:Number = _loc1_[_loc2_] * MeterPersent.MeterPersentNum;
         Main.mainWindow.scaleX = _loc4_;
         Main.mainWindow.scaleY = _loc4_;
         Main.mainMask.scaleX = _loc4_;
         Main.mainMask.scaleY = _loc4_;
         Main.mainWindow.x = MenuClass.systemData["Zoom"]["_x"] * _loc1_[_loc2_] + MenuClass.photoSize[0] * _loc1_[_loc2_] * -1;
         Main.mainMask.x = MenuClass.systemData["Zoom"]["_x"] * _loc1_[_loc2_] + MenuClass.photoSize[0] * _loc1_[_loc2_] * -1;
         Main.mainWindow.y = MenuClass.systemData["Zoom"]["_y"] * _loc1_[_loc2_] + MenuClass.photoSize[1] * _loc1_[_loc2_] * -1;
         Main.mainMask.y = MenuClass.systemData["Zoom"]["_y"] * _loc1_[_loc2_] + MenuClass.photoSize[1] * _loc1_[_loc2_] * -1;
         Main.cameraCheck = true;
         for(_loc6_ in MenuClass.headerAdd)
         {
            MenuClass.headerAdd[_loc6_].visible = false;
         }
         if(MenuClass._nowHeaderName != null)
         {
            new Tab_ClassDelete(MenuClass._nowHeaderName);
         }
         HeaderbtnClass.headerMenu.visible = false;
         if(MenuClass._nowHeaderName == "EasyTool")
         {
            _loc5_ = 0;
            while(_loc5_ <= MenuClass._characterNum)
            {
               MenuClass.charaAddDepth[_loc5_].charaSelect.visible = false;
               _loc5_++;
            }
         }
         if(MenuClass.alphaMode && (MenuClass.cameraMode == 1 || MenuClass.cameraMode == 2))
         {
            Main.mainWindow.bg.visible = false;
         }
         Tab_ColorBtnSet2.deleteFc();
         Tab_ColorBtnSet2.customDeleteFc();
         if(MenuClass._nowHeaderName == "SystemOption")
         {
            Tab_RandomCostumOpen.toolDeleteFc();
         }
         else
         {
            Tab_RandomCostumOpen.deleteFc(MenuClass._nowHeaderName);
         }
         _loc3_.draw(Main.stageVar);
         var _loc7_:Date = new Date();
         var _loc8_:* = (_loc8_ = String(_loc7_.getFullYear())).substring(2,4);
         var _loc9_:String;
         if((_loc9_ = String(_loc7_.getMonth() + 1)).length == 1)
         {
            _loc9_ = "0" + _loc9_;
         }
         var _loc10_:String;
         if((_loc10_ = String(_loc7_.getDate())).length == 1)
         {
            _loc10_ = "0" + _loc10_;
         }
         _loc8_ = _loc8_ + _loc9_ + _loc10_ + "kisekae";
         if(MenuClass.cameraMode == 0)
         {
            this.saver.save(_loc3_,_loc8_ + ".jpg");
         }
         else if(MenuClass.cameraMode == 1)
         {
            this.saver.save(_loc3_,_loc8_ + ".png");
         }
         Main.mainWindow.scaleX = MeterPersent.MeterPersentNum;
         Main.mainWindow.scaleY = MeterPersent.MeterPersentNum;
         Main.mainMask.scaleX = MeterPersent.MeterPersentNum;
         Main.mainMask.scaleY = MeterPersent.MeterPersentNum;
         Main.mainWindow.x = MenuClass.systemData["Zoom"]["_x"];
         Main.mainMask.x = MenuClass.systemData["Zoom"]["_x"];
         Main.mainWindow.y = MenuClass.systemData["Zoom"]["_y"];
         Main.mainMask.y = MenuClass.systemData["Zoom"]["_y"];
         var _loc11_:int = MenuClass.MY_MENUNAME.length - 1;
         _loc5_ = 0;
         while(_loc5_ <= _loc11_)
         {
            if((MenuClass.MY_MENUNAME[_loc5_][3] == MenuClass._nowHeaderMenuNum || MenuClass.MY_MENUNAME[_loc5_][3] == 0) && MenuClass.MY_MENUNAME[_loc5_][0] != "StoryTool")
            {
               MenuClass.headerAdd[MenuClass.MY_MENUNAME[_loc5_][0]].visible = true;
            }
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ <= MenuClass._characterNum)
         {
            new SetClass(_loc5_,"CharaDropShadowX","off");
            new SetClass(_loc5_,"CharaDropShadowY","off");
            new SetClass(_loc5_,"CharaDropShadowDistance","off");
            new SetClass(_loc5_,"CharaBlurX","off");
            new SetClass(_loc5_,"CharaBlurY","off");
            _loc5_++;
         }
         if(MenuClass._nowHeaderName != null)
         {
            new Tab_ClassSet(MenuClass._nowHeaderName);
         }
         if(!MenuClass.systemData["EExpert"]["_check"])
         {
            HeaderbtnClass.headerMenu.visible = true;
         }
         if(MenuClass._nowHeaderName == "EasyTool")
         {
            if(MenuClass._nowTargetMode == "All")
            {
               _loc5_ = 0;
               while(_loc5_ <= MenuClass._characterNum)
               {
                  if(MenuClass.charaData[_loc5_]["SelectCharacter"]["_visible"][0])
                  {
                     MenuClass.charaAddDepth[_loc5_].charaSelect.visible = true;
                     MenuClass.charaAddDepth[_loc5_].charaSelect.gotoAndStop(2);
                     if(_loc5_ == MenuClass._nowCharaNum)
                     {
                        MenuClass.charaAddDepth[_loc5_].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[_loc5_].charaSelect.obj.obj.scaleY = 0.9;
                     }
                     else
                     {
                        MenuClass.charaAddDepth[_loc5_].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[_loc5_].charaSelect.obj.obj.scaleY = 0.5;
                     }
                  }
                  _loc5_++;
               }
            }
            else if(MenuClass._nowTargetMode == "SelectPlus")
            {
               _loc5_ = 0;
               while(_loc5_ <= MenuClass._characterNum)
               {
                  if(MenuClass.charaData[_loc5_]["SelectCharacter"]["_visible"][0])
                  {
                     if(MenuClass._nowSelectChara[_loc5_])
                     {
                        MenuClass.charaAddDepth[_loc5_].charaSelect.visible = true;
                        MenuClass.charaAddDepth[_loc5_].charaSelect.gotoAndStop(2);
                        if(_loc5_ == MenuClass._nowCharaNum)
                        {
                           MenuClass.charaAddDepth[_loc5_].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[_loc5_].charaSelect.obj.obj.scaleY = 0.9;
                        }
                        else
                        {
                           MenuClass.charaAddDepth[_loc5_].charaSelect.obj.obj.scaleX = MenuClass.charaAddDepth[_loc5_].charaSelect.obj.obj.scaleY = 0.5;
                        }
                     }
                  }
                  _loc5_++;
               }
            }
            else if(MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0])
            {
               new Chara_SelectIcon(MenuClass._nowCharaNum);
               MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.visible = true;
               MenuClass.charaAddDepth[MenuClass._nowCharaNum].charaSelect.gotoAndStop(2);
            }
         }
         _loc3_.dispose();
         if(MenuClass.alphaMode && MenuClass.cameraMode == 1)
         {
            Main.mainWindow.bg.visible = true;
         }
      }
      
      private function complete(param1:Event) : void
      {
      }
   }
}
