package menu
{
   import flash.events.MouseEvent;
   import net.Stats;
   
   public class System_MobBtn
   {
       
      
      public function System_MobBtn()
      {
         super();
      }
      
      public static function setFc() : void
      {
         try
         {
            Main.mainWindow.mob.clear0_mc.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown0);
            Main.mainWindow.mob.clear0_mc.gotoAndStop(1);
            Main.mainWindow.mob.clear1_mc.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown1);
            Main.mainWindow.mob.clear1_mc.gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function deleteFc() : void
      {
         try
         {
            Main.mainWindow.mob.clear0_mc.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown0);
            Main.mainWindow.mob.clear0_mc.gotoAndStop(1);
            Main.mainWindow.mob.clear1_mc.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown1);
            Main.mainWindow.mob.clear1_mc.gotoAndStop(1);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown0(param1:MouseEvent) : void
      {
         if(MenuClass.shiftKeyPress && MenuClass.spaceKeyPress)
         {
            if(Main.mainWindow.mob.clear0_mc.currentFrame == 1)
            {
               Main.mainWindow.mob.clear0_mc.gotoAndStop(2);
               Main.mainWindow.mob.clear0_mc.txtNum.text = Main.accessObj.accessCount + "access";
            }
            else
            {
               Main.mainWindow.mob.clear0_mc.gotoAndStop(1);
            }
         }
      }
      
      public static function MouseDown1(param1:MouseEvent) : void
      {
         if(MenuClass.shiftKeyPress && MenuClass.spaceKeyPress)
         {
            if(Main.statsOn == "first")
            {
               Main.stageVar.addChild(Main.statsMov);
               Main.statsMov.addChild(new Stats());
               Main.statsOn = "on";
            }
            else if(Main.statsOn == "on")
            {
               Main.statsOn = "off";
               Main.statsMov.visible = false;
            }
            else
            {
               Main.statsOn = "on";
               Main.statsMov.visible = true;
            }
         }
      }
   }
}
