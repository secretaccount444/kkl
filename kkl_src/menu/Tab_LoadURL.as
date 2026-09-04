package menu
{
   import flash.display.Bitmap;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   // import frocessing.shape.FShapeSVG;
   
   public class Tab_LoadURL
   {
       
      
      private var _loader:URLLoader;
      
      private var info:LoaderInfo;
      
      private var menuNum:int;
      
      private var Str:String;
      
      private var flashCheck:String;
      
      public function Tab_LoadURL(param1:String, param2:int)
      {
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         super();
         this.menuNum = param2;
         this.Str = param1;
         if(this.Str == "menu")
         {
            MenuClass.systemData["LoadScale" + this.menuNum]["_name"] = MenuClass.tabMenuAdd["URLText"].txt.text;
         }
         var _loc3_:Boolean = true;
         try
         {
            if(!MenuClass.systemData["LoadPlus"]["_visible"][this.menuNum])
            {
               if(this.Str != "menu")
               {
                  try
                  {
                     Main.mainWindow["loadObj" + this.menuNum].visible = false;
                  }
                  catch(e:Error)
                  {
                  }
                  _loc3_ = false;
               }
            }
            else if(MenuClass.systemOldData["LoadPlus"]["_visible"][this.menuNum] && MenuClass.systemOldData["LoadScale" + this.menuNum]["_name"] == MenuClass.systemData["LoadScale" + this.menuNum]["_name"] && MenuClass.systemOldData["LoadAdd" + this.menuNum]["_add0"] == MenuClass.systemData["LoadAdd" + this.menuNum]["_add0"])
            {
               _loc3_ = false;
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
         MenuClass.systemData["LoadPlusCheck"]["_visibleCheck"][this.menuNum] = MenuClass.systemData["LoadPlus"]["_visible"][this.menuNum];
         if(_loc3_)
         {
            try
            {
               Main.mainWindow["loadObj" + this.menuNum].removeChild(Tab_FileReference.Arloader[this.menuNum]);
               Tab_FileReference.Arloader[this.menuNum].unload();
            }
            catch(e:Error)
            {
            }
            try
            {
               Main.mainWindow["loadObj" + this.menuNum].removeChild(Tab_FileReference.Arloader2[this.menuNum]);
               Tab_FileReference.Arloader2[this.menuNum].unload();
            }
            catch(e:Error)
            {
            }
            try
            {
               Main.mainWindow["loadObj" + this.menuNum].removeChild(Tab_FileReference.Arloader3[this.menuNum]);
               Tab_FileReference.Arloader3[this.menuNum].unload();
            }
            catch(e:Error)
            {
            }
            try
            {
               Main.mainWindow["loadObj" + this.menuNum].removeChild(Tab_FileReference.bitmapAr[this.menuNum]);
            }
            catch(e:Error)
            {
            }
            _loc4_ = MenuClass.systemData["LoadScale" + this.menuNum]["_name"].length;
            _loc5_ = MenuClass.systemData["LoadScale" + this.menuNum]["_name"].slice(_loc4_ - 3,_loc4_);
            if(Tab_FileReference.Arloader[this.menuNum] == 0)
            {
               Tab_FileReference.setFc(this.menuNum);
            }
            if(_loc5_ == "svg")
            {
               this._loader = new URLLoader();
               this._loader.addEventListener(Event.COMPLETE,this.completeEventHandler);
               this._loader.addEventListener(IOErrorEvent.IO_ERROR,this.errorEventHandler);
               try
               {
                  this._loader.load(new URLRequest(MenuClass.systemData["LoadScale" + this.menuNum]["_name"]));
               }
               catch(error:Error)
               {
               }
            }
            else
            {
               _loc6_ = new URLRequest(MenuClass.systemData["LoadScale" + this.menuNum]["_name"]);
               this.info = Tab_FileReference.Arloader2[this.menuNum].contentLoaderInfo;
               this.info.addEventListener(Event.INIT,this.LoaderInfoInitFunc);
               this.info.addEventListener(Event.COMPLETE,this.LoaderInfoCompleteFunc);
               this.info.addEventListener(IOErrorEvent.IO_ERROR,this.LoaderInfoIOErrorFunc);
               Tab_FileReference.Arloader2[this.menuNum].load(_loc6_);
            }
         }
         else if(MenuClass.systemData["LoadPlus"]["_visible"][this.menuNum])
         {
            Main.mainWindow["loadObj" + this.menuNum].visible = true;
            new SetClass(this.menuNum,"LoadAdd","Load");
            new Tab_FileDepth(this.menuNum);
            new SetClass(this.menuNum,"LoadAlpha","Load");
            new SetClass(this.menuNum,"LoadScaleB","Load");
            new SetClass(this.menuNum,"LoadSize","Load");
            new SetClass(this.menuNum,"LoadSwfColor","Load");
         }
         else
         {
            try
            {
               Main.mainWindow["loadObj" + this.menuNum].visible = false;
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private function completeEventHandler(param1:Event) : void
      {
         var _loc2_:XML = null;
         var _loc3_ = null;
         var _loc4_:Sprite = null;
         if(MenuClass.systemData["LoadPlusCheck"]["_visibleCheck"][this.menuNum] || this.Str == "menu")
         {
            try
            {
               MenuClass.tabMenuAdd["URLText"].gotoAndStop(1);
            }
            catch(e:Error)
            {
            }
            Main.mainWindow["loadObj" + this.menuNum].visible = true;
            MenuClass.systemData["LoadPlus"]["_visible"][this.menuNum] = true;
            _loc2_ = XML(this._loader.data);
            _loc3_ = new Main.FShapeSVG(_loc2_);
            _loc4_ = _loc3_.toSprite();
            Tab_FileReference.Arloader3[this.menuNum] = _loc4_;
            Tab_FileReference.Arloader3[this.menuNum].x = _loc4_.width / -2;
            Tab_FileReference.Arloader3[this.menuNum].y = _loc4_.height / -2;
            Main.mainWindow["loadObj" + this.menuNum].addChild(Tab_FileReference.Arloader3[this.menuNum]);
            Tab_FileReference.loadCheck = true;
            try
            {
               Tab_FileReference.bitmapAr[this.menuNum].bitmapData.dispose();
            }
            catch(e:Error)
            {
            }
            MenuClass.systemData["LoadSwfColor" + this.menuNum]["_swfMenu"] = 0;
            MenuClass.systemData["LoadSwfColor" + this.menuNum]["_swfSen"] = 1;
            MenuClass.systemData["LoadSwfColor" + this.menuNum]["_swfColor"] = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];
            new Tab_SetClass();
            new SetClass(this.menuNum,"LoadAdd","Load");
            new Tab_FileDepth(this.menuNum);
            new SetClass(this.menuNum,"LoadAlpha","Load");
            new SetClass(this.menuNum,"LoadScaleB","Load");
            new SetClass(this.menuNum,"LoadSize","Load");
            new SetClass(this.menuNum,"LoadSwfColor","Load");
         }
         else
         {
            Tab_FileReference.loadCheck = true;
            try
            {
               Tab_FileReference.bitmapAr[this.menuNum].bitmapData.dispose();
            }
            catch(e:Error)
            {
            }
            Main.mainWindow["loadObj" + this.menuNum].visible = false;
            MenuClass.systemData["LoadPlus"]["_visible"][this.menuNum] = false;
            ++MenuClass.urlLoadCompCount;
            if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
            {
               MenuClass.urlLoadCompCheck = true;
            }
            new Tab_SetClass();
            try
            {
               MenuClass.tabMenuAdd["URLText"].gotoAndStop(2);
            }
            catch(e:Error)
            {
            }
            MenuClass.systemData["LoadPlusCheck"]["_visibleCheck"][this.menuNum] = false;
         }
         this._loader.removeEventListener(Event.COMPLETE,this.completeEventHandler);
         this._loader.removeEventListener(IOErrorEvent.IO_ERROR,this.errorEventHandler);
      }
      
      private function errorEventHandler(param1:IOErrorEvent) : void
      {
         Tab_FileReference.loadCheck = true;
         try
         {
            Tab_FileReference.bitmapAr[this.menuNum].bitmapData.dispose();
         }
         catch(e:Error)
         {
         }
         Main.mainWindow["loadObj" + this.menuNum].visible = false;
         MenuClass.systemData["LoadPlus"]["_visible"][this.menuNum] = false;
         ++MenuClass.urlLoadCompCount;
         if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
         {
            MenuClass.urlLoadCompCheck = true;
         }
         new Tab_SetClass();
         try
         {
            MenuClass.tabMenuAdd["URLText"].gotoAndStop(2);
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
                  Tab_FileReference.Arloader2[this.menuNum].x = this.info.width / -2;
                  Tab_FileReference.Arloader2[this.menuNum].y = this.info.height / -2;
                  Tab_FileReference.Arloader2[this.menuNum].visible = true;
               }
               else
               {
                  Tab_FileReference.bitmapAr[this.menuNum].x = this.info.width / -2;
                  Tab_FileReference.bitmapAr[this.menuNum].y = this.info.height / -2;
                  Tab_FileReference.bitmapAr[this.menuNum].visible = true;
               }
               ++MenuClass.urlLoadCompCount;
               if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
               {
                  MenuClass.urlLoadCompCheck = true;
               }
               Tab_FileReference.Arloader2[this.menuNum].removeEventListener(Event.ENTER_FRAME,this.EnterFrame);
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
         if(MenuClass.systemData["LoadPlusCheck"]["_visibleCheck"][this.menuNum] || this.Str == "menu")
         {
            try
            {
               MenuClass.tabMenuAdd["URLText"].gotoAndStop(1);
            }
            catch(e:Error)
            {
            }
            if(Tab_FileReference.Arloader[this.menuNum] == 0)
            {
               Tab_FileReference.setFc(this.menuNum);
            }
            Main.mainWindow["loadObj" + this.menuNum].visible = true;
            MenuClass.systemData["LoadPlus"]["_visible"][this.menuNum] = true;
            try
            {
               Tab_FileReference.Arloader2[this.menuNum].removeEventListener(Event.ENTER_FRAME,this.EnterFrame);
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
                        MenuClass.systemData["LoadSwfColor" + this.menuNum]["_swfMenu"] = 0;
                     }
                     catch(e:Error)
                     {
                     }
                     i = 0;
                     while(i <= 23)
                     {
                        try
                        {
                           MenuClass.systemData["LoadSwfColor" + this.menuNum]["_swfColor"][i] = Tab_FileReference.Arloader2[this.menuNum].getChildAt(0)["color" + i];
                        }
                        catch(e:Error)
                        {
                           MenuClass.systemData["LoadSwfColor" + menuNum]["_swfColor"][i] = "0";
                        }
                        i++;
                     }
                     try
                     {
                        if(Tab_FileReference.Arloader2[this.menuNum].getChildAt(0).senAr.length == 0)
                        {
                           MenuClass.systemData["LoadSwfColor" + this.menuNum]["_swfSen"] = 0;
                        }
                        else
                        {
                           MenuClass.systemData["LoadSwfColor" + this.menuNum]["_swfSen"] = 1;
                        }
                     }
                     catch(e:Error)
                     {
                        MenuClass.systemData["LoadSwfColor" + menuNum]["_swfSen"] = 0;
                     }
                  }
               }
               catch(e:Error)
               {
               }
               Main.mainWindow["loadObj" + this.menuNum].addChild(Tab_FileReference.Arloader2[this.menuNum]);
               Tab_FileReference.Arloader2[this.menuNum].addEventListener(Event.ENTER_FRAME,this.EnterFrame);
               Tab_FileReference.Arloader2[this.menuNum].visible = false;
               Tab_FileReference.Arloader2[this.menuNum].x = this.info.width / -2;
               Tab_FileReference.Arloader2[this.menuNum].y = this.info.height / -2;
               try
               {
                  Tab_FileReference.bitmapAr[this.menuNum].bitmapData.dispose();
               }
               catch(e:Error)
               {
               }
            }
            else
            {
               MenuClass.systemData["LoadSwfColor" + this.menuNum]["_swfMenu"] = 0;
               MenuClass.systemData["LoadSwfColor" + this.menuNum]["_swfSen"] = 1;
               MenuClass.systemData["LoadSwfColor" + this.menuNum]["_swfColor"] = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];
               Tab_FileReference.bitmapAr[this.menuNum] = Bitmap(e.currentTarget.loader.content);
               Tab_FileReference.bitmapAr[this.menuNum].smoothing = true;
               Main.mainWindow["loadObj" + this.menuNum].addChild(Tab_FileReference.bitmapAr[this.menuNum]);
               Tab_FileReference.Arloader2[this.menuNum].addEventListener(Event.ENTER_FRAME,this.EnterFrame);
               Tab_FileReference.bitmapAr[this.menuNum].visible = false;
               Tab_FileReference.bitmapAr[this.menuNum].x = this.info.width / -2;
               Tab_FileReference.bitmapAr[this.menuNum].y = this.info.height / -2;
               MenuClass.systemData["LoadPlusCheck"]["_visibleCheck"][this.menuNum] = false;
            }
            Tab_FileReference.loadCheck = true;
            new Tab_SetClass();
            new SetClass(this.menuNum,"LoadAdd","Load");
            new Tab_FileDepth(this.menuNum);
            new SetClass(this.menuNum,"LoadAlpha","Load");
            new SetClass(this.menuNum,"LoadScaleB","Load");
            new SetClass(this.menuNum,"LoadSize","Load");
            new SetClass(this.menuNum,"LoadSwfColor","Load");
         }
         else
         {
            Tab_FileReference.loadCheck = true;
            try
            {
               Tab_FileReference.bitmapAr[this.menuNum].bitmapData.dispose();
            }
            catch(e:Error)
            {
            }
            Main.mainWindow["loadObj" + this.menuNum].visible = false;
            MenuClass.systemData["LoadPlus"]["_visible"][this.menuNum] = false;
            ++MenuClass.urlLoadCompCount;
            if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
            {
               MenuClass.urlLoadCompCheck = true;
            }
            new Tab_SetClass();
            try
            {
               MenuClass.tabMenuAdd["URLText"].gotoAndStop(2);
            }
            catch(e:Error)
            {
            }
         }
         this.info.removeEventListener(Event.COMPLETE,this.LoaderInfoCompleteFunc);
         this.info.removeEventListener(IOErrorEvent.IO_ERROR,this.LoaderInfoIOErrorFunc);
      }
      
      private function LoaderInfoIOErrorFunc(param1:IOErrorEvent) : void
      {
         Tab_FileReference.loadCheck = true;
         try
         {
            Tab_FileReference.bitmapAr[this.menuNum].bitmapData.dispose();
         }
         catch(e:Error)
         {
         }
         Main.mainWindow["loadObj" + this.menuNum].visible = false;
         MenuClass.systemData["LoadPlus"]["_visible"][this.menuNum] = false;
         ++MenuClass.urlLoadCompCount;
         if(MenuClass.urlLoadCompCount == MenuClass.urlLoadCount)
         {
            MenuClass.urlLoadCompCheck = true;
         }
         new Tab_SetClass();
         try
         {
            MenuClass.tabMenuAdd["URLText"].gotoAndStop(2);
         }
         catch(e:Error)
         {
         }
         this.info.removeEventListener(Event.COMPLETE,this.LoaderInfoCompleteFunc);
         this.info.removeEventListener(IOErrorEvent.IO_ERROR,this.LoaderInfoIOErrorFunc);
      }
   }
}
