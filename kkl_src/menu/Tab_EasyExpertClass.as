package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_EasyExpertClass
   {
       
      
      public function Tab_EasyExpertClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip) : void
      {
         param1.easyBtn.addEventListener(MouseEvent.MOUSE_DOWN,easyBtnClick);
         param1.expertBtn.addEventListener(MouseEvent.MOUSE_DOWN,expertBtnClick);
         param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.easyBtn.removeEventListener(MouseEvent.MOUSE_DOWN,easyBtnClick);
         param1.expertBtn.removeEventListener(MouseEvent.MOUSE_DOWN,expertBtnClick);
      }
      
      public static function easyBtnClick(param1:MouseEvent) : void
      {
         if(!MenuClass.systemData["EExpert"]["_check"])
         {
            new Tab_EasyExpertFc();
            Main.accessObj.menuMode = "easy";
            new Chara_SelectClass("open");
            new Tab_CloseClass();
         }
      }
      
      public static function expertBtnClick(param1:MouseEvent) : void
      {
         if(MenuClass.systemData["EExpert"]["_check"])
         {
            new Stage_MoveCheckClass();
            MenuClass.systemData["EExpert"]["_check"] = false;
            HeaderbtnClass.headerMenu.visible = true;
            MenuClass._nowHeaderMenuNum = 1;
            new HeaderMenuClass("");
            MenuClass.headerAdd["Tool"].visible = true;
            MenuClass.headerAdd["Save"].visible = true;
            Main.accessObj.menuMode = "expert";
            new Tab_CloseClass();
         }
      }
   }
}
