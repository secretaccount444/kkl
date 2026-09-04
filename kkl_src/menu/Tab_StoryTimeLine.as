package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_StoryTimeLine
   {
      
      public static var targetMc:MovieClip;
       
      
      public function Tab_StoryTimeLine()
      {
         super();
      }
      
      public static function setFc() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ <= 49)
         {
            MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine["bar" + _loc1_].addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine["bar" + _loc1_].buttonMode = true;
            MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine["bar" + _loc1_].num = _loc1_;
            _loc1_++;
         }
         MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine.plus.addEventListener(MouseEvent.MOUSE_DOWN,plusMouseDown);
         MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine.plus.buttonMode = true;
         MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine.minus.addEventListener(MouseEvent.MOUSE_DOWN,minusMouseDown);
         MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine.minus.buttonMode = true;
      }
      
      public static function deleteFc() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ <= 49)
         {
            try
            {
               MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine["bar" + _loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
            }
            catch(myError:Error)
            {
            }
            _loc1_++;
         }
         try
         {
            MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine.plus.removeEventListener(MouseEvent.MOUSE_DOWN,plusMouseDown);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.tabMenuAdd["Story_TimeLine"].storyTimeLine.minus.removeEventListener(MouseEvent.MOUSE_DOWN,minusMouseDown);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function plusMouseDown(param1:MouseEvent) : void
      {
         targetMc = param1.currentTarget as MovieClip;
         if(targetMc.currentFrame == 1)
         {
            targetMc.gotoAndStop(2);
            if(MenuClass.NowFrameCheck == MenuClass.timeLineCheck)
            {
               MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
               MenuClass.systemData["Story_Page"]["_menu"] = MenuClass.StoryTimeLineData.length - 1;
            }
            else
            {
               MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
               MenuClass.systemData["Story_Page"]["_menu"] = MenuClass.NowFrameCheck + 50;
            }
            new Tab_SetClass();
            new Tab_IEInOut("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
            targetMc.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
            Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         }
      }
      
      public static function minusMouseDown(param1:MouseEvent) : void
      {
         targetMc = param1.currentTarget as MovieClip;
         if(targetMc.currentFrame == 1)
         {
            targetMc.gotoAndStop(2);
            if(MenuClass.NowFrameCheck >= 50)
            {
               MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
               MenuClass.systemData["Story_Page"]["_menu"] = MenuClass.NowFrameCheck - 1;
            }
            else
            {
               MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
               MenuClass.systemData["Story_Page"]["_menu"] = 0;
            }
            new Tab_SetClass();
            new Tab_IEInOut("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
            targetMc.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
            Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         targetMc.gotoAndStop(1);
         new Tab_SetClass();
         targetMc.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         if(param1.target.num != MenuClass.systemData["Story_Page"]["_menu"] - MenuClass.timeLineCheck)
         {
            if(param1.target.num <= MenuClass.StoryTimeLineData.length - MenuClass.NowFrameCheck - 1)
            {
               MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
               MenuClass.systemData["Story_Page"]["_menu"] = param1.target.num + MenuClass.NowFrameCheck;
               new Tab_SetClass();
               new Tab_IEInOut("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
            }
         }
      }
   }
}
