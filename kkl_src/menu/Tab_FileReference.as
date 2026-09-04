package menu
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.FileReference;
   
   public class Tab_FileReference
   {
      
      public static var fileReference:FileReference;
      
      public static var loadX:Number;
      
      public static var loadY:Number;
      
      public static var objX:Number;
      
      public static var objY:Number;
      
      public static var Arloader:Array = new Array();
      
      public static var Arloader3:Array = new Array();
      
      public static var Arloader2:Array = new Array();
      
      public static var bitmapAr:Array = new Array();
      
      public static var loadCheck:Boolean = true;
       
      
      public function Tab_FileReference()
      {
         var _loc1_:int = 0;
         super();
         fileReference = new FileReference();
         _loc1_ = 0;
         while(_loc1_ <= 98)
         {
            Arloader.push(0);
            Arloader2.push(0);
            Arloader3.push(0);
            bitmapAr.push(0);
            _loc1_++;
         }
         fileReference.addEventListener(Event.SELECT,this.selectHandler);
         fileReference.addEventListener(Event.CANCEL,this.cancelHandler);
         fileReference.addEventListener(Event.COMPLETE,this.completeHandler);
         fileReference.addEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
      }
      
      public static function setFc(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = new MovieClip();
         _loc3_.name = "loadObj" + param1;
         _loc3_ = new Chara_Loading.SwapClass();
         Main.mainWindow.addChild(_loc3_);
         Main.mainWindow["loadObj" + param1] = _loc3_;
         Main.mainWindow["loadObj" + param1].name = "loadObj" + param1;
         var _loc4_:Loader = new Loader();
         Arloader[param1] = _loc4_;
         var _loc5_:Loader = new Loader();
         Arloader2[param1] = _loc5_;
         var _loc6_:Sprite = new Sprite();
         Arloader3[param1] = _loc6_;
         Main.mainWindow["loadObj" + param1].addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
         Main.mainWindow["loadObj" + param1].num = param1;
         var _loc7_:Bitmap = new Bitmap();
         bitmapAr[param1] = _loc7_;
         new SetClass(param1,"LoadAdd","Load");
         new Tab_FileDepth(param1);
      }
      
      public static function onMouseMOVE(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(MenuClass._nowHeaderName == "Loadmenu")
         {
            _loc2_ = MenuClass.systemData["LoadPlus"]["_menu"];
            _loc3_ = MenuClass.systemData["LoadAdd" + _loc2_]["_add0"];
            if((_loc4_ = Tab_AddCostumOpen.openAr[_loc3_][0]) == "Background")
            {
               _loc5_ = objX + Main.stageVar.mouseX - loadX;
               _loc6_ = objY + Main.stageVar.mouseY - loadY;
               if(_loc5_ <= -100)
               {
                  _loc5_ = -100;
               }
               else if(_loc5_ >= 900)
               {
                  _loc5_ = 900;
               }
               if(_loc6_ <= -200)
               {
                  _loc6_ = -200;
               }
               else if(_loc6_ >= 800)
               {
                  _loc6_ = 800;
               }
               Main.mainWindow["loadObj" + _loc2_].x = _loc5_;
               Main.mainWindow["loadObj" + _loc2_].y = _loc6_;
               MenuClass.systemData["LoadX" + _loc2_]["_meter"] = _loc5_ + 100;
               MenuClass.systemData["LoadY" + _loc2_]["_meter"] = 1000 - (_loc6_ + 200);
               new Tab_SetClass();
            }
         }
      }
      
      public static function onMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         if(MenuClass._nowHeaderName == "Loadmenu")
         {
            if(!MenuClass.ColorCustomOpenCheck)
            {
               _loc2_ = MenuClass.systemData["LoadAdd" + _loc4_]["_add0"];
               _loc3_ = Tab_AddCostumOpen.openAr[_loc2_][0];
               if(_loc3_ == "Background")
               {
                  MenuClass.systemData["LoadPlus"]["_menu"] = int(param1.currentTarget.num);
                  new Tab_SetClass();
                  _loc4_ = MenuClass.systemData["LoadPlus"]["_menu"];
                  if(MenuClass.systemData["Zoom"]["_meter"] == 0)
                  {
                     Main.stageVar.addEventListener(MouseEvent.MOUSE_MOVE,onMouseMOVE);
                     Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,onMouseUp);
                     loadX = Main.stageVar.mouseX;
                     loadY = Main.stageVar.mouseY;
                     objX = Main.mainWindow["loadObj" + _loc4_].x;
                     objY = Main.mainWindow["loadObj" + _loc4_].y;
                  }
               }
            }
         }
      }
      
      public static function onMouseUp(param1:MouseEvent) : void
      {
         if(MenuClass._nowHeaderName == "Loadmenu")
         {
            Main.stageVar.removeEventListener(MouseEvent.MOUSE_MOVE,onMouseMOVE);
            Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,onMouseUp);
         }
      }
      
      private function selectHandler(param1:Event) : void
      {
         var _loc2_:int = MenuClass.systemData["LoadPlus"]["_menu"];
         try
         {
            MenuClass.tabMenuAdd["URLText"].gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         
         MenuClass.systemData["LoadScale" + _loc2_]["_name"] = "images/" + fileReference.name;
         Tab_LoadClass.pushUndoAction("images/" + fileReference.name);

         if(fileReference.type == ".swf" || fileReference.type == ".svg")
         {
            loadCheck = true;
            MenuClass.tabMenuAdd["URLLoading"].TabURLLoadingBtn.gotoAndStop(1);
            try
            {
               MenuClass.tabMenuAdd["URLText"].txt.text = "images/" + fileReference.name;
            }
            catch(myError:Error)
            {
            }
            new Tab_LoadURL("menu",MenuClass.systemData["LoadPlus"]["_menu"]);
         }
         else
         {
            fileReference.load();
         }
      }
      
      private function completeHandler(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(!(fileReference.type == ".swf" || fileReference.type == ".svg"))
         {
            _loc2_ = MenuClass.systemData["LoadPlus"]["_menu"];
            if(Tab_FileReference.Arloader[_loc2_] == 0)
            {
               Tab_FileReference.setFc(_loc2_);
            }
            Arloader[_loc2_].loadBytes(fileReference.data);
            Arloader[_loc2_].contentLoaderInfo.addEventListener(Event.INIT,this.initHandler);
            Arloader[_loc2_].contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
            loadCheck = true;
         }
      }
      
      private function errorHandler(param1:IOErrorEvent) : void
      {
         var _loc2_:int = MenuClass.systemData["LoadPlus"]["_menu"];
         loadCheck = true;
         MenuClass.ErrorWindow.gotoAndStop(3);
         MenuClass.ErrorWindow.visible = true;
         try
         {
            Arloader[_loc2_].removeEventListener(Event.INIT,this.initHandler);
            Arloader[_loc2_].removeEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
         }
         catch(myError:Error)
         {
         }
      }
      
      private function cancelHandler(param1:Event) : void
      {
         MenuClass.tabMenuAdd["URLLoading"].TabURLLoadingBtn.gotoAndStop(1);
         loadCheck = true;
      }
      
      private function initHandler(param1:Event) : void
      {
         var _loc2_:int = MenuClass.systemData["LoadPlus"]["_menu"];
         try
         {
            Main.mainWindow["loadObj" + _loc2_].removeChild(Arloader2[_loc2_]);
            Arloader2[_loc2_].unload();
         }
         catch(e:Error)
         {
         }
         try
         {
            Main.mainWindow["loadObj" + _loc2_].removeChild(Arloader3[_loc2_]);
            Arloader3[_loc2_].unload();
         }
         catch(e:Error)
         {
         }
         try
         {
            Main.mainWindow["loadObj" + _loc2_].removeChild(Arloader[_loc2_]);
            Arloader[_loc2_].unload();
         }
         catch(e:Error)
         {
         }
         try
         {
            Main.mainWindow["loadObj" + _loc2_].removeChild(bitmapAr[_loc2_]);
         }
         catch(e:Error)
         {
         }
         try
         {
            bitmapAr[_loc2_].bitmapData.dispose();
         }
         catch(e:Error)
         {
         }
         try
         {
            Main.mainWindow["loadObj" + _loc2_].visible = true;
         }
         catch(e:Error)
         {
         }
         MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfMenu"] = 0;
         MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfSen"] = 1;
         MenuClass.systemData["LoadSwfColor" + _loc2_]["_swfColor"] = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];
         bitmapAr[_loc2_] = Bitmap(param1.currentTarget.loader.content);
         bitmapAr[_loc2_].smoothing = true;
         Main.mainWindow["loadObj" + _loc2_].addChild(bitmapAr[_loc2_]);
         bitmapAr[_loc2_].x = bitmapAr[_loc2_].width / -2;
         bitmapAr[_loc2_].y = bitmapAr[_loc2_].height / -2;
         MenuClass.systemData["LoadPlus"]["_visible"][_loc2_] = true;
         new Tab_SetClass();
         new SetClass(_loc2_,"LoadAdd","Load");
         new Tab_FileDepth(_loc2_);
         new SetClass(_loc2_,"LoadAlpha","Load");
         new SetClass(_loc2_,"LoadScaleB","Load");
         new SetClass(_loc2_,"LoadSize","Load");
         new SetClass(_loc2_,"LoadSwfColor","Load");
         Arloader[_loc2_].removeEventListener(Event.INIT,this.initHandler);
         Arloader[_loc2_].removeEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
      }
   }
}
