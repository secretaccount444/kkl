package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   
   public class Tab_TextLoadAllBtn
   {
      
      public static var targetMC:MovieClip;
      
      public static var fr:FileReference = new FileReference();
       
      
      public function Tab_TextLoadAllBtn()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip) : void
      {
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         try
         {
            param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            param1.gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         try
         {
            fr.removeEventListener(Event.SELECT,onSelect);
            fr.removeEventListener(Event.CANCEL,onCancel);
         }
         catch(myError:Error)
         {
         }
         try
         {
            fr.removeEventListener(Event.COMPLETE,onComplete);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd["OldSave"].gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.ErrorWindow.OkBtn.removeEventListener(MouseEvent.MOUSE_DOWN,OkMouseDown);
            MenuClass.ErrorWindow.CancelBtn.removeEventListener(MouseEvent.MOUSE_DOWN,CancelMouseDown);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.ErrorWindow.visible = false;
            MenuClass.ErrorWindow.gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget as MovieClip;
         targetMC.gotoAndStop(2);
         MenuClass.tabMenuAdd["OldSave"].gotoAndPlay(2);
         MenuClass.ErrorWindow.gotoAndStop(7);
         MenuClass.ErrorWindow.visible = true;
         MenuClass.ErrorWindow.closeBtn.visible = false;
         MenuClass.ErrorWindow.OkBtn.addEventListener(MouseEvent.MOUSE_DOWN,OkMouseDown);
         MenuClass.ErrorWindow.CancelBtn.addEventListener(MouseEvent.MOUSE_DOWN,CancelMouseDown);
         MenuClass.ErrorWindow.OkBtn.buttonMode = true;
         MenuClass.ErrorWindow.CancelBtn.buttonMode = true;
      }
      
      public static function OkMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         fr.addEventListener(Event.SELECT,onSelect);
         fr.addEventListener(Event.CANCEL,onCancel);
         var _loc2_:FileFilter = new FileFilter("Text Files (*.txt)","*.txt;");
         var _loc3_:FileFilter = new FileFilter("すべてのファイル形式 (*.*)","*;");
         var _loc4_:Array = new Array(_loc2_,_loc3_);
         fr.browse(_loc4_);
         MenuClass.tabMenuAdd["OldSave"].gotoAndStop(1);
         MenuClass.ErrorWindow.OkBtn.removeEventListener(MouseEvent.MOUSE_DOWN,OkMouseDown);
         MenuClass.ErrorWindow.CancelBtn.removeEventListener(MouseEvent.MOUSE_DOWN,CancelMouseDown);
         MenuClass.ErrorWindow.visible = false;
         MenuClass.ErrorWindow.gotoAndStop(1);
      }
      
      public static function CancelMouseDown(param1:MouseEvent) : void
      {
         targetMC.gotoAndStop(1);
         MenuClass.tabMenuAdd["OldSave"].gotoAndStop(1);
         MenuClass.ErrorWindow.OkBtn.removeEventListener(MouseEvent.MOUSE_DOWN,OkMouseDown);
         MenuClass.ErrorWindow.CancelBtn.removeEventListener(MouseEvent.MOUSE_DOWN,CancelMouseDown);
         MenuClass.ErrorWindow.visible = false;
         MenuClass.ErrorWindow.gotoAndStop(1);
      }
      
      public static function onSelect(param1:Event) : void
      {
         fr.addEventListener(Event.COMPLETE,onComplete);
         fr.load();
         fr.removeEventListener(Event.SELECT,onSelect);
         fr.removeEventListener(Event.CANCEL,onCancel);
      }
      
      public static function onComplete(param1:Event) : void
      {
         var i:int = 0;
         var str:String = null;
         var INArray0:Array = null;
         var INArray1:Array = null;
         var num:int = 0;
         var version:int = 0;
         var e:Event = param1;
         try
         {
            Tab_SaveClass.saveObj = MenuClass.so_Save.data;
            Tab_SaveClass.saveData = Tab_SaveClass.saveObj.saveData;
            str = String(fr.data);
            INArray0 = str.split("]#/");
            version = INArray0.shift();
            i = 0;
            while(i <= 155)
            {
               if(i == 0 || i == 3 || i == 6 || i == 9 || i == 12 || i == 15 || i == 18 || i == 21 || i == 24 || i == 27 || i == 30 || i == 33 || i == 36 || i == 39 || i == 42 || i == 45 || i == 48 || i == 51 || i == 54 || i == 57 || i == 60 || i == 63 || i == 66 || i == 69 || i == 72 || i == 75 || i == 78 || i == 81 || i == 84 || i == 87 || i == 90 || i == 93 || i == 96 || i == 99 || i == 102 || i == 105 || i == 108 || i == 111 || i == 114 || i == 117 || i == 120 || i == 123 || i == 126 || i == 129 || i == 132 || i == 135 || i == 138 || i == 141 || i == 144 || i == 147 || i == 150 || i == 153)
               {
                  num = i / 3;
                  if(INArray0[i] != "nodata")
                  {
                     INArray1 = new Array();
                     INArray1 = INArray0[i].split("_");
                     Tab_SaveClass.saveData[num].fullYearData = INArray1[0];
                     Tab_SaveClass.saveData[num].monthData = INArray1[1];
                     Tab_SaveClass.saveData[num].dateData = INArray1[2];
                     Tab_SaveClass.saveData[num].hoursData = INArray1[3];
                     Tab_SaveClass.saveData[num].minutesData = INArray1[4];
                     Tab_SaveClass.saveData[num].lockData = INArray1[5];
                     Tab_SaveClass.saveData[num].colorData = INArray1[6];
                  }
                  else
                  {
                     Tab_SaveClass.saveData[num].fullYearData = false;
                     Tab_SaveClass.saveData[num].monthData = false;
                     Tab_SaveClass.saveData[num].dateData = false;
                     Tab_SaveClass.saveData[num].hoursData = false;
                     Tab_SaveClass.saveData[num].minutesData = false;
                     Tab_SaveClass.saveData[num].lockData = false;
                     Tab_SaveClass.saveData[num].colorData = 0;
                  }
               }
               else if(i == 1 || i == 4 || i == 7 || i == 10 || i == 13 || i == 16 || i == 19 || i == 22 || i == 25 || i == 28 || i == 31 || i == 34 || i == 37 || i == 40 || i == 43 || i == 46 || i == 49 || i == 52 || i == 55 || i == 58 || i == 61 || i == 64 || i == 67 || i == 70 || i == 73 || i == 76 || i == 79 || i == 82 || i == 85 || i == 88 || i == 91 || i == 94 || i == 97 || i == 100 || i == 103 || i == 106 || i == 109 || i == 112 || i == 115 || i == 118 || i == 121 || i == 124 || i == 127 || i == 130 || i == 133 || i == 136 || i == 139 || i == 142 || i == 145 || i == 148 || i == 151 || i == 154)
               {
                  num = (i - 1) / 3;
                  if(INArray0[i] != "nodata")
                  {
                     Tab_SaveClass.saveData[num].memoData = INArray0[i];
                  }
                  else
                  {
                     Tab_SaveClass.saveData[num].memoData = "";
                  }
               }
               else
               {
                  num = (i - 2) / 3;
                  if(INArray0[i] != "nodata")
                  {
                     Tab_SaveClass.saveData[num].charaData = INArray0[i];
                     Tab_SaveClass.saveData[num].systemData = null;
                  }
                  else
                  {
                     Tab_SaveClass.saveData[num].charaData = false;
                     Tab_SaveClass.saveData[num].systemData = false;
                  }
               }
               i++;
            }
            Tab_SaveClass.saveObj.saveData = Tab_SaveClass.saveData;
            MenuClass.so_Save.flush();
            targetMC.gotoAndStop(1);
            fr.removeEventListener(Event.COMPLETE,onComplete);
         }
         catch(myError:Error)
         {
            targetMC.gotoAndStop(1);
            fr.removeEventListener(Event.COMPLETE,onComplete);
            MenuClass.ErrorWindow.gotoAndStop(2);
            MenuClass.ErrorWindow.visible = true;
         }
      }
      
      public static function onCancel(param1:Event) : void
      {
         targetMC.gotoAndStop(1);
         fr.removeEventListener(Event.SELECT,onSelect);
         fr.removeEventListener(Event.CANCEL,onCancel);
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
