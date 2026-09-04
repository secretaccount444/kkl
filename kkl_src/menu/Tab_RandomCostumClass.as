package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_RandomCostumClass
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_RandomCostumClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String) : void
      {
         param1.headerName = param2;
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget as MovieClip;
         if(MenuClass.RamdomOpenCheck)
         {
            if(targetMC.headerName == "SystemOption")
            {
               Tab_RandomCostumOpen.toolSetFc(targetMC.headerName);
            }
            else
            {
               Tab_RandomCostumOpen.setFc(targetMC.headerName);
            }
         }
         else if(targetMC.headerName == "SystemOption")
         {
            Tab_RandomCostumOpen.toolDeleteFc();
         }
         else
         {
            Tab_RandomCostumOpen.deleteFc(targetMC.headerName);
         }
         targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         targetMC.gotoAndStop(2);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         targetMC.gotoAndStop(1);
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
