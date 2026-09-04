package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class Tab_SelectTargetClass
   {
      
      public static var Nagaoshi_count:int;
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_SelectTargetClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip) : void
      {
         targetMC = param1;
         param1.select.addEventListener(MouseEvent.MOUSE_DOWN,SelectMouseDown);
         param1.select.addEventListener(MouseEvent.MOUSE_UP,SelectMouseUp);
         param1.select.buttonMode = true;
         param1.all.addEventListener(MouseEvent.MOUSE_DOWN,AllMouseDown);
         param1.all.buttonMode = true;
         if(MenuClass._nowTargetMode != "SelectPlus")
         {
            param1.selectPlus.visible = false;
         }
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.select.removeEventListener(MouseEvent.MOUSE_DOWN,SelectMouseDown);
         param1.select.removeEventListener(MouseEvent.MOUSE_UP,SelectMouseUp);
         param1.all.removeEventListener(MouseEvent.MOUSE_DOWN,AllMouseDown);
         try
         {
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function SelectMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(MenuClass._nowTargetMode == "All")
         {
            MenuClass._nowTargetMode = "Select";
            param1.currentTarget.gotoAndStop(1);
            param1.currentTarget.parent.all.gotoAndStop(2);
            targetMC.selectPlus.visible = false;
            _loc2_ = 0;
            while(_loc2_ <= MenuClass._characterNum)
            {
               MenuClass._nowSelectChara[_loc2_] = false;
               _loc2_++;
            }
            new Chara_SelectClass("open");
         }
         else if(MenuClass._nowTargetMode == "SelectPlus")
         {
            MenuClass._nowTargetMode = "Select";
            targetMC.selectPlus.visible = false;
            _loc2_ = 0;
            while(_loc2_ <= MenuClass._characterNum)
            {
               MenuClass._nowSelectChara[_loc2_] = false;
               _loc2_++;
            }
            new Chara_SelectClass("open");
         }
         else
         {
            Nagaoshi_count = 0;
            Main.stageVar.addEventListener(Event.ENTER_FRAME,EnterFrame);
         }
      }
      
      public static function SelectMouseUp(param1:MouseEvent) : void
      {
         try
         {
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function AllMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(MenuClass._nowTargetMode == "Select" || MenuClass._nowTargetMode == "SelectPlus")
         {
            MenuClass._nowTargetMode = "All";
            param1.currentTarget.parent.select.gotoAndStop(2);
            param1.currentTarget.gotoAndStop(1);
            new Chara_SelectClass("open");
            _loc2_ = 0;
            while(_loc2_ <= MenuClass._characterNum)
            {
               MenuClass._nowSelectChara[_loc2_] = false;
               _loc2_++;
            }
            targetMC.selectPlus.visible = false;
         }
      }
      
      public static function EnterFrame(param1:Event) : void
      {
         ++Nagaoshi_count;
         if(Nagaoshi_count >= 15)
         {
            MenuClass._nowTargetMode = "SelectPlus";
            targetMC.selectPlus.visible = true;
            MenuClass._nowSelectChara[MenuClass._nowCharaNum] = true;
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
         }
      }
   }
}
