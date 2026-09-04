package menu
{
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import parameter.Chara_IEdata;
   import parameter.Dress_data;
   
   public class Chara_Class
   {
      
      public static var chara_m:MovieClip = new MovieClip();
      
      public static var hukuClickCheck:Boolean = true;
       
      
      private var j:int;
      
      private var k:int;
      
      private var chara_obj:MovieClip;
      
      private var enterCount:int = 0;
      
      private var charaCount:int = 0;
      
      public function Chara_Class()
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         this.chara_obj = new MovieClip();
         super();
         Main.mainWindow = new MovieClip();
         Main.mainWindow.name = "mainWindow";
         Main.stageVar.addChild(Main.mainWindow);
         Main.stageVar.setChildIndex(Main.mainWindow,Main.stageVar.getChildIndex(MenuClass.headerAdd[MenuClass.MY_MENUNAME[0][0]]));
         var _loc1_:MovieClip = new MovieClip();
         _loc1_.name = "bg";
         _loc1_ = new Chara_Loading.bgClass();
         Main.mainWindow.addChild(_loc1_);
         Main.mainWindow.bg = _loc1_;
         Main.mainWindow.bg.gotoAndStop(2);
         Main.mainWindow.bg.mouseChildren = false;
         Main.mainWindow.bg.mouseEnabled = false;
         Main.mainWindow.bg.opaqueBackground = 0;
         Main.mainWindow.setChildIndex(Main.mainWindow.bg,0);
         var _loc2_:MovieClip = new MovieClip();
         _loc2_.name = "mob";
         _loc2_ = new Chara_Loading.MobClass();
         Main.mainWindow.addChild(_loc2_);
         Main.mainWindow.mob = _loc2_;
         Main.mainWindow.mob.visible = false;
         Main.mainWindow.mob.gotoAndStop(1);
         Main.mainWindow.setChildIndex(Main.mainWindow.mob,1);
         this.chara_obj.name = "chara_obj";
         this.chara_obj = new Chara_Loading.CharacterClass();
         Main.mainWindow.addChild(this.chara_obj);
         Main.mainWindow["chara_obj"] = this.chara_obj;
         Main.mainWindow.chara_obj.name = "chara_obj";
         Main.mainWindow.chara_obj.scaleX = Main.mainWindow.chara_obj.scaleY = 0.51;
         Main.mainWindow.chara_obj.x = 70;
         Main.mainWindow.chara_obj.y = 440;
         Main.mainWindow.swapChildren(Main.mainWindow.chara_obj,Main.mainWindow.mob);
         Main.mainWindow.chara_obj.addChild(chara_m);
         this.j = 0;
         while(this.j <= 8)
         {
            Main.mainWindow.chara_obj.shadow_m["shadow" + this.j].visible = false;
            ++this.j;
         }
         for(_loc3_ in MenuClass.headerAdd)
         {
            if(_loc3_ != "null")
            {
               MenuClass.headerAdd[_loc3_].visible = false;
            }
         }
         HeaderbtnClass.headerMenu.visible = false;
         if(Main.urlData == "nodata")
         {
            _loc4_ = Math.floor(Math.random() * Chara_IEdata.BackgroundSetData[Main.accessObj.AllHukuNumData].length);
            new Tab_IEInOut("textIN",Chara_IEdata.BackgroundData[Chara_IEdata.BackgroundSetData[Main.accessObj.AllHukuNumData][_loc4_]][0],0);
         }
         new Stage_ClickClass();
         if(Main.urlData == "nodata")
         {
            Main.openingBg.alpha = 0.6;
         }
         Main.stageVar.addEventListener(Event.ENTER_FRAME,this.Enter);
      }
      
      private function Enter(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:Number = NaN;
         if(this.charaCount == 9)
         {
            new HeaderMenuClass("");
            HeaderbtnClass.headerMenu.visible = true;
            MenuClass.headerAdd["Escape"].visible = true;
            MenuClass.headerAdd["Tool"].visible = true;
            MenuClass.headerAdd["Save"].visible = true;
            new SetClass(0,"HideIcon","tab");
            new SetClass(0,"Quality","tab");
            if((_loc8_ = (_loc6_ = String(Main.fistCharaData)).indexOf("]/#")) == -1)
            {
               _loc2_ = (_loc7_ = _loc6_.split("***")).length - 1;
               if(_loc2_ > 1 || Main.urlData != "nodata")
               {
                  if(Main.publishMode != "download")
                  {
                     MenuClass.StoryMode = true;
                  }
                  new Tab_StoryLoad(_loc7_,"firstIN");
                  _loc4_ = MenuClass.MY_MENUNAME.length - 1;
                  Main.allCharaLoadFlag = true;
                  if(Main.publishMode != "download")
                  {
                     MenuClass.HideIconCheck = false;
                     HeaderbtnClass.headerMenu.visible = false;
                     MenuClass.ClickRock = true;
                     MenuClass.HukuRock = true;
                     _loc3_ = 0;
                     while(_loc3_ <= _loc4_)
                     {
                        if((_loc5_ = MenuClass.MY_MENUNAME[_loc3_][0]) == "StoryTool")
                        {
                           MenuClass.headerAdd[_loc5_].visible = true;
                        }
                        else
                        {
                           MenuClass.headerAdd[_loc5_].visible = false;
                        }
                        _loc3_++;
                     }
                     Main.openingBg.width = 5800;
                     Main.openingBg.height = 5600;
                     Main.openingBg.x = -2500;
                     Main.openingBg.y = -2500;
                  }
               }
               else
               {
                  new Tab_IEInOut("firstIN",_loc6_,MenuClass._nowCharaNum);
                  Tab_AllHukuSet.AllHukuNum = Main.accessObj.AllHukuNumData;
                  Tab_AllHukuSet.setFc2("first");
                  if(Main.accessObj.menuMode == "easy")
                  {
                     new Tab_EasyExpertFc();
                  }
               }
            }
            else
            {
               _loc7_ = _loc6_.split("]/#");
               if(Main.publishMode != "download")
               {
                  MenuClass.StoryMode = true;
               }
               new Tab_StoryLoad2(_loc7_,"firstIN");
               Main.allCharaLoadFlag = true;
               if(Main.publishMode != "download")
               {
                  _loc4_ = MenuClass.MY_MENUNAME.length - 1;
                  MenuClass.HideIconCheck = false;
                  HeaderbtnClass.headerMenu.visible = false;
                  MenuClass.ClickRock = true;
                  MenuClass.HukuRock = true;
                  Main.openingBg.width = 5800;
                  Main.openingBg.height = 5600;
                  Main.openingBg.x = -2500;
                  Main.openingBg.y = -2500;
                  _loc3_ = 0;
                  while(_loc3_ <= _loc4_)
                  {
                     if((_loc5_ = MenuClass.MY_MENUNAME[_loc3_][0]) == "StoryTool")
                     {
                        MenuClass.headerAdd[_loc5_].visible = true;
                     }
                     else
                     {
                        MenuClass.headerAdd[_loc5_].visible = false;
                     }
                     _loc3_++;
                  }
               }
            }
            ++Main.loadCount;
            _loc3_ = 0;
            while(_loc3_ <= MenuClass._characterNum)
            {
               MenuClass.charaAddDepth[_loc3_].charaSelect.visible = false;
               MenuClass.charaAddDepth[_loc3_].charaSelect.gotoAndStop(1);
               _loc3_++;
            }
            MenuClass.charaMotoData = this.clone(MenuClass.charaData);
            _loc3_ = 0;
            while(_loc3_ <= MenuClass._characterNum)
            {
               MenuClass.charaMotoData[_loc3_]["SelectCharacter"]["_visible"][0] = true;
               _loc3_++;
            }
            Main.mainWindow.setChildIndex(Main.mainWindow.chara_obj,Main.mainWindow.getChildIndex(Main.mainWindow.bg) + 1);
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.Enter);
         }
         else if(this.enterCount == 0)
         {
            this.CharacterSet(this.charaCount);
            ++this.enterCount;
         }
         else if(this.enterCount == 1)
         {
            this.CharacterSet2(this.charaCount);
            this.enterCount = 0;
            if(this.charaCount == 9)
            {
               new KeyPressClass();
            }
         }
      }
      
      private function CharacterSet(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         if(Main.publishMode == "test" || Main.publishMode == "18_age" || Main.publishMode == "all_age" || Main.publishMode == "download" || Main.publishMode == "download_test" || Main.domainName == "pochi.x.fc2.com" || Main.domainName == "pochi.lix.jp" || Main.domainName == "pochi.eek.jp")
         {
            hukuClickCheck = false;
         }
         ++Main.loadCount;
         MenuClass.udeDepthBefore[param1] = new Array(0,0);
         MenuClass.charaData[param1]["Ymove"]["_depth"] = param1;
         Main.mainWindow.chara_obj.shadow_m["shadow" + param1].visible = true;
         MenuClass.shadowAdd[param1] = Main.mainWindow.chara_obj.shadow_m["shadow" + param1];
         MenuClass.shadowAdd[param1].visible = false;
         MenuClass.shadowAdd[param1].mouseChildren = false;
         MenuClass.shadowAdd[param1].mouseEnabled = false;
         MenuClass.shadowSide0X[param1] = 0;
         MenuClass.shadowSide1X[param1] = 0;
         MenuClass.hitLineY[param1] = 0;
         _loc2_ = new Chara_Loading.HeadClass();
         chara_m.addChild(_loc2_);
         _loc2_.chara.Num = param1;
         _loc2_.Num = param1;
         MenuClass.charaAdd[param1] = _loc2_.chara;
         if(Main.r18Check)
         {
            MenuClass.charaAdd[param1].buttonMode = true;
         }
         MenuClass.charaAddDepth[param1] = _loc2_;
         MenuClass.charaAddDepth[param1].visible = false;
         new Chara_Class_Load(param1);
         new Stage_MoveClass(MenuClass.charaAdd[param1].Tail);
         MenuClass.charaAddDepth[param1].x = MenuClass.shadowAdd[param1].x = MenuClass.charaSpace * param1;
         if(param1 == 0)
         {
            new SizeDataClass(param1);
         }
      }
      
      private function CharacterSet2(param1:int) : void
      {
         var i:int = param1;
         ++Main.loadCount;
         MenuClass.charaAddDepth[i].cacheAsBitmap = true;
         new Chara_Class_First(i);
         i++;
         ++this.charaCount;
         if(i == MenuClass._characterNum + 1)
         {
            Dress_data.DressCharaMotoData = this.clone(Dress_data.DressCharaData);
            Main.mainWindow.chara_obj.shadow_m.alpha = 0.3;
            Main.mainWindow.chara_obj.shadow_m.blendMode = BlendMode.LAYER;
            try
            {
               new Chara_SelectClass("first");
            }
            catch(myError:Error)
            {
               trace("MenuClass Chara_SelectClass Error    ",myError);
            }
            Main.allLoadFlag = true;
            try
            {
               new EnterFrameClass();
            }
            catch(myError:Error)
            {
               trace("MenuClass EnterFrameClass Error    ",myError);
            }
            try
            {
               new Tab_FileReference();
            }
            catch(myError:Error)
            {
               trace("MenuClass Tab_FileReference  Error    ",myError);
            }
            new Tab_FileReference2();
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
