package menu
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.FileReference;
   
   public class Tab_FileReference2
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
      
      public static var AddCheck:Array = new Array();
       
      
      public function Tab_FileReference2()
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         super();
         fileReference = new FileReference();
         _loc2_ = 0;
         while(_loc2_ <= MenuClass._characterNum)
         {
            Arloader.push(new Array());
            Arloader2.push(new Array());
            Arloader3.push(new Array());
            bitmapAr.push(new Array());
            AddCheck.push(new Array());
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ <= MenuClass._characterNum)
         {
            _loc1_ = 0;
            while(_loc1_ <= Main.hukusuuNum)
            {
               Arloader[_loc2_].push(0);
               Arloader2[_loc2_].push(0);
               Arloader3[_loc2_].push(0);
               bitmapAr[_loc2_].push(0);
               AddCheck[_loc2_].push(0);
               _loc1_++;
            }
            _loc2_++;
         }
         fileReference.addEventListener(Event.SELECT,this.selectHandler);
         fileReference.addEventListener(Event.CANCEL,this.cancelHandler);
         fileReference.addEventListener(Event.COMPLETE,this.completeHandler);
         fileReference.addEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
      }
      
      public static function setFc(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:MovieClip;
         (_loc4_ = new MovieClip()).name = "loadObj" + param1;
         _loc4_ = new Chara_Loading.SwapClass();
         MenuClass.charaAdd[param2].addChild(_loc4_);
         MenuClass.charaAdd[param2]["loadObj" + param1] = _loc4_;
         MenuClass.charaAdd[param2]["loadObj" + param1].name = "loadObj" + param1;
         var _loc5_:Loader = new Loader();
         Arloader[param2][param1] = _loc5_;
         var _loc6_:Loader = new Loader();
         Arloader2[param2][param1] = _loc6_;
         var _loc7_:Sprite = new Sprite();
         Arloader3[param2][param1] = _loc7_;
         var _loc8_:Bitmap = new Bitmap();
         bitmapAr[param2][param1] = _loc8_;
         new Add_LoadURL2("CharaLoadAdd",param2,param1,"Load");
         new Tab_FileDepth2(param1,param2);
      }
      
      private function selectHandler(param1:Event) : void
      {
         var _loc2_:int = MenuClass._nowCharaNum;
         var _loc3_:int = MenuClass.systemData["CharaLoadPlus"]["_menu"];
         try
         {
            MenuClass.tabMenuAdd["CharaURLText"].gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         MenuClass.charaData[_loc2_]["CharaLoadAdd" + _loc3_]["_name"] = "images/" + fileReference.name;
         if(fileReference.type == ".swf" || fileReference.type == ".svg")
         {
            Tab_FileReference.loadCheck = true;
            MenuClass.tabMenuAdd["CharaURLLoading"].TabURLLoadingBtn.gotoAndStop(1);
            try
            {
               MenuClass.tabMenuAdd["CharaURLText"].txt.text = "images/" + fileReference.name;
            }
            catch(myError:Error)
            {
            }
            new Tab_LoadURL2("menu",MenuClass.systemData["CharaLoadPlus"]["_menu"],_loc2_);
         }
         else
         {
            fileReference.load();
         }
      }
      
      private function completeHandler(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = MenuClass._nowCharaNum;
         if(!(fileReference.type == ".swf" || fileReference.type == ".svg"))
         {
            _loc3_ = MenuClass.systemData["CharaLoadPlus"]["_menu"];
            if(Arloader[_loc2_][_loc3_] == 0)
            {
               Tab_FileReference2.setFc(_loc3_,_loc2_);
            }
            Arloader[_loc2_][_loc3_].loadBytes(fileReference.data);
            Arloader[_loc2_][_loc3_].contentLoaderInfo.addEventListener(Event.INIT,this.initHandler);
            Arloader[_loc2_][_loc3_].contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
            Tab_FileReference.loadCheck = true;
         }
      }
      
      private function errorHandler(param1:IOErrorEvent) : void
      {
         var _loc2_:int = MenuClass._nowCharaNum;
         var _loc3_:int = MenuClass.systemData["CharaLoadPlus"]["_menu"];
         Tab_FileReference.loadCheck = true;
         MenuClass.ErrorWindow.gotoAndStop(3);
         MenuClass.ErrorWindow.visible = true;
         try
         {
            Arloader[_loc2_][_loc3_].removeEventListener(Event.INIT,this.initHandler);
            Arloader[_loc2_][_loc3_].removeEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
         }
         catch(myError:Error)
         {
         }
      }
      
      private function cancelHandler(param1:Event) : void
      {
         MenuClass.tabMenuAdd["CharaURLLoading"].TabURLLoadingBtn.gotoAndStop(1);
         Tab_FileReference.loadCheck = true;
      }
      
      private function initHandler(param1:Event) : void
      {
         var _loc2_:int = MenuClass._nowCharaNum;
         var _loc3_:int = MenuClass.systemData["CharaLoadPlus"]["_menu"];
         try
         {
            MenuClass.charaAdd[_loc2_]["loadObj" + _loc3_].removeChild(Arloader2[_loc2_][_loc3_]);
            Arloader2[_loc3_].unload();
         }
         catch(e:Error)
         {
         }
         try
         {
            MenuClass.charaAdd[_loc2_]["loadObj" + _loc3_].removeChild(Arloader3[_loc2_][_loc3_]);
            Arloader3[_loc3_].unload();
         }
         catch(e:Error)
         {
         }
         try
         {
            MenuClass.charaAdd[_loc2_]["loadObj" + _loc3_].removeChild(Arloader[_loc2_][_loc3_]);
            Arloader[_loc3_].unload();
         }
         catch(e:Error)
         {
         }
         try
         {
            MenuClass.charaAdd[_loc2_]["loadObj" + _loc3_].removeChild(bitmapAr[_loc2_][_loc3_]);
         }
         catch(e:Error)
         {
         }
         try
         {
            bitmapAr[_loc2_][_loc3_].bitmapData.dispose();
         }
         catch(e:Error)
         {
         }
         try
         {
            MenuClass.charaAdd[_loc2_]["loadObj" + _loc3_].visible = true;
         }
         catch(e:Error)
         {
         }
         MenuClass.charaData[_loc2_]["CharaLoadSwfColor" + _loc3_]["_swfMenu"] = 0;
         MenuClass.charaData[_loc2_]["CharaLoadSwfColor" + _loc3_]["_swfSen"] = 1;
         MenuClass.charaData[_loc2_]["CharaLoadSwfColor" + _loc3_]["_swfColor"] = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];
         bitmapAr[_loc2_][_loc3_] = Bitmap(param1.currentTarget.loader.content);
         bitmapAr[_loc2_][_loc3_].smoothing = true;
         MenuClass.charaAdd[_loc2_]["loadObj" + _loc3_].addChild(bitmapAr[_loc2_][_loc3_]);
         bitmapAr[_loc2_][_loc3_].x = bitmapAr[_loc2_][_loc3_].width / -2;
         bitmapAr[_loc2_][_loc3_].y = bitmapAr[_loc2_][_loc3_].height / -2;
         MenuClass.charaData[_loc2_]["CharaLoadPlus"]["_visible"][_loc3_] = true;
         new Tab_SetClass();
         new Add_LoadURL2("CharaLoadAdd",_loc2_,_loc3_,"Load");
         new Tab_FileDepth2(_loc3_,_loc2_);
         new Add_LoadURL2("CharaLoadAlpha",_loc2_,_loc3_,"Load");
         new Add_LoadURL2("CharaLoadScaleB",_loc2_,_loc3_,"Load");
         new Add_LoadURL2("CharaLoadSwfColor",_loc2_,_loc3_,"Load");
         Arloader[_loc2_][_loc3_].removeEventListener(Event.INIT,this.initHandler);
         Arloader[_loc2_][_loc3_].removeEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
      }
   }
}
