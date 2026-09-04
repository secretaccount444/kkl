package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_AddCostumClass
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_AddCostumClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String) : void
      {
         param1.headerName = param2;
         param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.buttonMode = true;
         new Tab_SetClass();
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         MenuClass.AddOpenCheck = 0;
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget as MovieClip;
         if(MenuClass._nowHeaderName == "txt")
         {
            if(MenuClass.AddOpenCheck == 0)
            {
               MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.gotoAndStop(2);
               MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.scaleY = 0.9;
               MenuClass.tabMenuAdd["txtFieldAdd"].addBox0.icon.x = 28;
               Tab_AddCostumOpen.setFc(targetMC.headerName);
            }
            else if(MenuClass.AddOpenCheck == 1)
            {
               Tab_AddCostumOpen.deleteFc(targetMC.headerName);
            }
         }
         else if(MenuClass._nowHeaderName == "Loadmenu")
         {
            if(MenuClass.AddOpenCheck == 0)
            {
               MenuClass.tabMenuAdd["LoadAdd"].addBox0.gotoAndStop(2);
               MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.scaleY = 0.9;
               MenuClass.tabMenuAdd["LoadAdd"].addBox0.icon.x = 28;
               Tab_AddCostumOpen.setFc(targetMC.headerName);
            }
            else if(MenuClass.AddOpenCheck == 1)
            {
               Tab_AddCostumOpen.deleteFc(targetMC.headerName);
            }
         }
         else if(MenuClass._nowHeaderName == "Ribon")
         {
            if(MenuClass.AddOpenCheck == 0)
            {
               MenuClass.tabMenuAdd["RibonAdd"].addBox0.gotoAndStop(2);
               MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.scaleY = 0.9;
               MenuClass.tabMenuAdd["RibonAdd"].addBox0.icon.x = 28;
               Tab_AddCostumOpen3.setFc(targetMC.headerName,MenuClass._nowCharaNum);
            }
            else if(MenuClass.AddOpenCheck == 1)
            {
               Tab_AddCostumOpen3.deleteFc(targetMC.headerName);
            }
         }
         else if(MenuClass._nowHeaderName == "HairEx")
         {
            if(MenuClass.AddOpenCheck == 0)
            {
               MenuClass.tabMenuAdd["HairExAdd"].addBox0.gotoAndStop(2);
               MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.scaleY = 0.9;
               MenuClass.tabMenuAdd["HairExAdd"].addBox0.icon.x = 28;
               Tab_AddCostumOpen4.setFc(targetMC.headerName,MenuClass._nowCharaNum);
            }
            else if(MenuClass.AddOpenCheck == 1)
            {
               Tab_AddCostumOpen4.deleteFc(targetMC.headerName);
            }
         }
         else if(MenuClass._nowHeaderName == "CharaLoad")
         {
            if(MenuClass.AddOpenCheck == 0)
            {
               MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.gotoAndStop(2);
               MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.scaleX = MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.scaleY = 0.9;
               MenuClass.tabMenuAdd["CharaLoadAdd"].addBox0.icon.x = 28;
               Tab_AddCostumOpen2.setFc(targetMC.headerName,MenuClass._nowCharaNum);
            }
            else if(MenuClass.AddOpenCheck == 1)
            {
               Tab_AddCostumOpen2.deleteFc(targetMC.headerName);
            }
         }
         targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
