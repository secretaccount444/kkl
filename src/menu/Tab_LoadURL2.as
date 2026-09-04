package menu
{
   import flash.display.Bitmap;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import frocessing.shape.FShapeSVG;
   
   public class Tab_LoadURL2
   {
       
      
      private var _loader:URLLoader;
      
      private var info:LoaderInfo;
      
      private var menuNum:int;
      
      private var Str:String;
      
      private var flashCheck:String;
      
      private var charaNum:int;
      
      public function Tab_LoadURL2(param1:String, param2:int, param3:int)
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc7_:URLRequest = null;
         super();
         this.charaNum = param3;
         this.menuNum = param2;
         this.Str = param1;
         if(this.Str == "menu")
         {
            MenuClass.charaData[this.charaNum]["CharaLoadAdd" + this.menuNum]["_name"] = MenuClass.tabMenuAdd["CharaURLText"].txt.text;
         }
         var _loc4_:Boolean = true;
         try
         {
            if(!MenuClass.charaData[this.charaNum]["CharaLoadPlus"]["_visible"][this.menuNum])
            {
               if(this.Str != "menu")
               {
                  try
                  {
                     MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].visible = false;
                  }
                  catch(e:Error)
                  {
                  }
                  _loc4_ = false;
               }
            }
            else if(MenuClass.charaOldData[this.charaNum]["CharaLoadPlus"]["_visible"][this.menuNum] && MenuClass.charaOldData[this.charaNum]["CharaLoadAdd" + this.menuNum]["_name"] == MenuClass.charaData[this.charaNum]["CharaLoadAdd" + this.menuNum]["_name"] && MenuClass.charaOldData[this.charaNum]["CharaLoadScale" + this.menuNum]["_add0"] == MenuClass.charaData[this.charaNum]["CharaLoadScale" + this.menuNum]["_add0"])
            {
               _loc4_ = false;
               ++MenuClass.urlLoadCompCount;
               if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
               {
                  MenuClass.urlLoadCompCheck = true;
               }
            }
         }
         catch(myError:Error)
         {
         }
         MenuClass.charaData[this.charaNum]["CharaLoadPlusCheck"]["_visibleCheck"][this.menuNum] = MenuClass.charaData[this.charaNum]["CharaLoadPlus"]["_visible"][this.menuNum];
         if(_loc4_)
         {
            try
            {
               MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].removeChild(Tab_FileReference2.Arloader[this.charaNum][this.menuNum]);
               Tab_FileReference2.Arloader[this.charaNum][this.menuNum].unload();
            }
            catch(e:Error)
            {
            }
            try
            {
               MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].removeChild(Tab_FileReference2.Arloader2[this.charaNum][this.menuNum]);
               Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].unload();
            }
            catch(e:Error)
            {
            }
            try
            {
               MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].removeChild(Tab_FileReference2.Arloader3[this.charaNum][this.menuNum]);
               Tab_FileReference2.Arloader3[this.charaNum][this.menuNum].unload();
            }
            catch(e:Error)
            {
            }
            try
            {
               MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].removeChild(Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum]);
            }
            catch(e:Error)
            {
            }
            _loc5_ = MenuClass.charaData[this.charaNum]["CharaLoadAdd" + this.menuNum]["_name"].length;
            _loc6_ = MenuClass.charaData[this.charaNum]["CharaLoadAdd" + this.menuNum]["_name"].slice(_loc5_ - 3,_loc5_);
            if(Tab_FileReference2.Arloader[this.charaNum][this.menuNum] == 0)
            {
               Tab_FileReference2.setFc(this.menuNum,this.charaNum);
            }
            if(_loc6_ == "svg")
            {
               this._loader = new URLLoader();
               this._loader.addEventListener(Event.COMPLETE,this.completeEventHandler);
               this._loader.addEventListener(IOErrorEvent.IO_ERROR,this.errorEventHandler);
               try
               {
                  this._loader.load(new URLRequest(MenuClass.charaData[this.charaNum]["CharaLoadAdd" + this.menuNum]["_name"]));
               }
               catch(error:Error)
               {
               }
            }
            else
            {
               _loc7_ = new URLRequest(MenuClass.charaData[this.charaNum]["CharaLoadAdd" + this.menuNum]["_name"]);
               this.info = Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].contentLoaderInfo;
               this.info.addEventListener(Event.INIT,this.LoaderInfoInitFunc);
               this.info.addEventListener(Event.COMPLETE,this.LoaderInfoCompleteFunc);
               this.info.addEventListener(IOErrorEvent.IO_ERROR,this.LoaderInfoIOErrorFunc);
               Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].load(_loc7_);
            }
         }
         else if(MenuClass.charaData[this.charaNum]["CharaLoadPlus"]["_visible"][this.menuNum])
         {
            MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].visible = true;
            new Add_LoadURL2("CharaLoadAdd",this.charaNum,this.menuNum,"Load");
            new Tab_FileDepth2(this.menuNum,this.charaNum);
            new Add_LoadURL2("CharaLoadAlpha",this.charaNum,this.menuNum,"Load");
            new Add_LoadURL2("CharaLoadScaleB",this.charaNum,this.menuNum,"Load");
            new Add_LoadURL2("CharaLoadSwfColor",this.charaNum,this.menuNum,"Load");
         }
         else
         {
            try
            {
               MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].visible = false;
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private function completeEventHandler(param1:Event) : void
      {
         var _loc2_:XML = null;
         var _loc3_:FShapeSVG = null;
         var _loc4_:Sprite = null;
         if(MenuClass.charaData[this.charaNum]["CharaLoadPlusCheck"]["_visibleCheck"][this.menuNum] || this.Str == "menu")
         {
            try
            {
               MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(1);
            }
            catch(e:Error)
            {
            }
            MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].visible = true;
            MenuClass.charaData[this.charaNum]["CharaLoadPlus"]["_visible"][this.menuNum] = true;
            _loc2_ = XML(this._loader.data);
            _loc3_ = new FShapeSVG(_loc2_);
            _loc4_ = _loc3_.toSprite();
            Tab_FileReference2.Arloader3[this.charaNum][this.menuNum] = _loc4_;
            Tab_FileReference2.Arloader3[this.charaNum][this.menuNum].x = _loc4_.width / -2;
            Tab_FileReference2.Arloader3[this.charaNum][this.menuNum].y = _loc4_.height / -2;
            MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].addChild(Tab_FileReference2.Arloader3[this.charaNum][this.menuNum]);
            Tab_FileReference.loadCheck = true;
            try
            {
               Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].bitmapData.dispose();
            }
            catch(e:Error)
            {
            }
            MenuClass.charaData[this.charaNum]["CharaLoadSwfColor" + this.menuNum]["_swfMenu"] = 0;
            MenuClass.charaData[this.charaNum]["CharaLoadSwfColor" + this.menuNum]["_swfSen"] = 1;
            MenuClass.charaData[this.charaNum]["CharaLoadSwfColor" + this.menuNum]["_swfColor"] = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];
            new Tab_SetClass();
            new Add_LoadURL2("CharaLoadAdd",this.charaNum,this.menuNum,"Load");
            new Tab_FileDepth2(this.menuNum,this.charaNum);
            new Add_LoadURL2("CharaLoadAlpha",this.charaNum,this.menuNum,"Load");
            new Add_LoadURL2("CharaLoadScaleB",this.charaNum,this.menuNum,"Load");
            new Add_LoadURL2("CharaLoadSwfColor",this.charaNum,this.menuNum,"Load");
         }
         else
         {
            Tab_FileReference.loadCheck = true;
            try
            {
               Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].bitmapData.dispose();
            }
            catch(e:Error)
            {
            }
            MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].visible = false;
            MenuClass.charaData[this.charaNum]["CharaLoadPlus"]["_visible"][this.menuNum] = false;
            ++MenuClass.urlLoadCompCount;
            if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
            {
               MenuClass.urlLoadCompCheck = true;
            }
            new Tab_SetClass();
            try
            {
               MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(2);
            }
            catch(e:Error)
            {
            }
            MenuClass.charaData[this.charaNum]["CharaLoadPlusCheck"]["_visibleCheck"][this.menuNum] = false;
         }
         this._loader.removeEventListener(Event.COMPLETE,this.completeEventHandler);
         this._loader.removeEventListener(IOErrorEvent.IO_ERROR,this.errorEventHandler);
      }
      
      private function errorEventHandler(param1:IOErrorEvent) : void
      {
         Tab_FileReference.loadCheck = true;
         try
         {
            Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].bitmapData.dispose();
         }
         catch(e:Error)
         {
         }
         MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].visible = false;
         MenuClass.charaData[this.charaNum]["CharaLoadPlus"]["_visible"][this.menuNum] = false;
         ++MenuClass.urlLoadCompCount;
         if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
         {
            MenuClass.urlLoadCompCheck = true;
         }
         new Tab_SetClass();
         try
         {
            MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(2);
         }
         catch(e:Error)
         {
         }
         this._loader.removeEventListener(Event.COMPLETE,this.completeEventHandler);
         this._loader.removeEventListener(IOErrorEvent.IO_ERROR,this.errorEventHandler);
      }
      
      private function LoaderInfoInitFunc(param1:Event) : void
      {
         this.flashCheck = this.info.contentType;
      }
      
      private function EnterFrame(param1:Event) : void
      {
         try
         {
            if(this.info.width != 0)
            {
               if(this.flashCheck == "application/x-shockwave-flash")
               {
                  Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].x = this.info.width / -2;
                  Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].y = this.info.height / -2;
                  Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].visible = true;
               }
               else
               {
                  Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].x = this.info.width / -2;
                  Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].y = this.info.height / -2;
                  Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].visible = true;
               }
               ++MenuClass.urlLoadCompCount;
               if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
               {
                  MenuClass.urlLoadCompCheck = true;
               }
               Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].removeEventListener(Event.ENTER_FRAME,this.EnterFrame);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function LoaderInfoCompleteFunc(param1:Event) : void
      {
         var i:int = 0;
         var e:Event = param1;
         if(MenuClass.charaData[this.charaNum]["CharaLoadPlusCheck"]["_visibleCheck"][this.menuNum] || this.Str == "menu")
         {
            try
            {
               MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(1);
            }
            catch(e:Error)
            {
            }
            if(Tab_FileReference2.Arloader[this.charaNum][this.menuNum] == 0)
            {
               Tab_FileReference2.setFc(this.menuNum,this.charaNum);
            }
            MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].visible = true;
            MenuClass.charaData[this.charaNum]["CharaLoadPlus"]["_visible"][this.menuNum] = true;
            try
            {
               Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].removeEventListener(Event.ENTER_FRAME,this.EnterFrame);
            }
            catch(e:Error)
            {
            }
            if(this.flashCheck == "application/x-shockwave-flash")
            {
               try
               {
                  if(this.Str == "menu")
                  {
                     try
                     {
                        MenuClass.charaData[this.charaNum]["CharaLoadSwfColor" + this.menuNum]["_swfMenu"] = 0;
                     }
                     catch(e:Error)
                     {
                     }
                     i = 0;
                     while(i <= 23)
                     {
                        try
                        {
                           MenuClass.charaData[this.charaNum]["CharaLoadSwfColor" + this.menuNum]["_swfColor"][i] = Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].getChildAt(0)["color" + i];
                        }
                        catch(e:Error)
                        {
                           MenuClass.charaData[charaNum]["CharaLoadSwfColor" + menuNum]["_swfColor"][i] = "0";
                        }
                        i++;
                     }
                     try
                     {
                        if(Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].getChildAt(0).senAr.length == 0)
                        {
                           MenuClass.charaData[this.charaNum]["CharaLoadSwfColor" + this.menuNum]["_swfSen"] = 0;
                        }
                        else
                        {
                           MenuClass.charaData[this.charaNum]["CharaLoadSwfColor" + this.menuNum]["_swfSen"] = 1;
                        }
                     }
                     catch(e:Error)
                     {
                        MenuClass.charaData[charaNum]["CharaLoadSwfColor" + menuNum]["_swfSen"] = 0;
                     }
                  }
               }
               catch(e:Error)
               {
               }
               MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].addChild(Tab_FileReference2.Arloader2[this.charaNum][this.menuNum]);
               Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].addEventListener(Event.ENTER_FRAME,this.EnterFrame);
               Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].visible = false;
               Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].x = this.info.width / -2;
               Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].y = this.info.height / -2;
               try
               {
                  Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].bitmapData.dispose();
               }
               catch(e:Error)
               {
               }
            }
            else
            {
               MenuClass.charaData[this.charaNum]["CharaLoadSwfColor" + this.menuNum]["_swfMenu"] = 0;
               MenuClass.charaData[this.charaNum]["CharaLoadSwfColor" + this.menuNum]["_swfSen"] = 1;
               MenuClass.charaData[this.charaNum]["CharaLoadSwfColor" + this.menuNum]["_swfColor"] = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];
               Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum] = Bitmap(e.currentTarget.loader.content);
               Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].smoothing = true;
               MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].addChild(Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum]);
               Tab_FileReference2.Arloader2[this.charaNum][this.menuNum].addEventListener(Event.ENTER_FRAME,this.EnterFrame);
               Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].visible = false;
               Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].x = this.info.width / -2;
               Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].y = this.info.height / -2;
            }
            Tab_FileReference.loadCheck = true;
            new Tab_SetClass();
            new Add_LoadURL2("CharaLoadAdd",this.charaNum,this.menuNum,"Load");
            new Tab_FileDepth2(this.menuNum,this.charaNum);
            new Add_LoadURL2("CharaLoadAlpha",this.charaNum,this.menuNum,"Load");
            new Add_LoadURL2("CharaLoadScaleB",this.charaNum,this.menuNum,"Load");
            new Add_LoadURL2("CharaLoadSwfColor",this.charaNum,this.menuNum,"Load");
         }
         else
         {
            Tab_FileReference.loadCheck = true;
            try
            {
               Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].bitmapData.dispose();
            }
            catch(e:Error)
            {
            }
            MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].visible = false;
            MenuClass.charaData[this.charaNum]["CharaLoadPlus"]["_visible"][this.menuNum] = false;
            ++MenuClass.urlLoadCompCount;
            if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
            {
               MenuClass.urlLoadCompCheck = true;
            }
            new Tab_SetClass();
            try
            {
               MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(2);
            }
            catch(e:Error)
            {
            }
            MenuClass.charaData[this.charaNum]["CharaLoadPlusCheck"]["_visibleCheck"][this.menuNum] = false;
         }
         this.info.removeEventListener(Event.COMPLETE,this.LoaderInfoCompleteFunc);
         this.info.removeEventListener(IOErrorEvent.IO_ERROR,this.LoaderInfoIOErrorFunc);
      }
      
      private function LoaderInfoIOErrorFunc(param1:IOErrorEvent) : void
      {
         Tab_FileReference.loadCheck = true;
         try
         {
            Tab_FileReference2.bitmapAr[this.charaNum][this.menuNum].bitmapData.dispose();
         }
         catch(e:Error)
         {
         }
         MenuClass.charaAdd[this.charaNum]["loadObj" + this.menuNum].visible = false;
         MenuClass.charaData[this.charaNum]["CharaLoadPlus"]["_visible"][this.menuNum] = false;
         ++MenuClass.urlLoadCompCount;
         if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
         {
            MenuClass.urlLoadCompCheck = true;
         }
         new Tab_SetClass();
         try
         {
            MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(2);
         }
         catch(e:Error)
         {
         }
         this.info.removeEventListener(Event.COMPLETE,this.LoaderInfoCompleteFunc);
         this.info.removeEventListener(IOErrorEvent.IO_ERROR,this.LoaderInfoIOErrorFunc);
      }
   }
}
