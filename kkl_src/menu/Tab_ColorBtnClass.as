package menu
{
   import flash.events.MouseEvent;
   
   public class Tab_ColorBtnClass
   {
       
      
      public function Tab_ColorBtnClass()
      {
         super();
      }
      
      public static function setFc(param1:String, param2:int, param3:String) : void
      {
         var _loc4_:int = 0;
         try
         {
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               MenuClass.tabMenuAdd[param1]["color" + _loc4_].targetJ = param2;
               MenuClass.tabMenuAdd[param1]["color" + _loc4_].headerName = param3;
               MenuClass.tabMenuAdd[param1]["color" + _loc4_].tabName = param1;
               MenuClass.tabMenuAdd[param1]["color" + _loc4_].addEventListener(MouseEvent.MOUSE_DOWN,TargetMouseDown);
               MenuClass.tabMenuAdd[param1]["color" + _loc4_].buttonMode = true;
               MenuClass.tabMenuAdd[param1]["color" + _loc4_].number = _loc4_;
               _loc4_++;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function deleteFc(param1:String) : void
      {
         var _loc2_:int = 0;
         try
         {
            _loc2_ = 0;
            while(_loc2_ <= 2)
            {
               MenuClass.tabMenuAdd[param1]["color" + _loc2_].removeEventListener(MouseEvent.MOUSE_DOWN,TargetMouseDown);
               _loc2_++;
            }
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function TargetMouseDown(param1:MouseEvent) : void
      {
         if(!MenuClass.ColorOpenCheck && (MenuClass.colorClickName[0] != param1.currentTarget.tabName || MenuClass.colorClickName[1] != param1.currentTarget.number))
         {
            Tab_ColorBtnSet2.setFc(param1.currentTarget.headerName,param1.currentTarget.targetJ,param1.currentTarget.tabName,param1.currentTarget.number);
            MenuClass.colorClickName[0] = param1.currentTarget.tabName;
            MenuClass.colorClickName[1] = param1.currentTarget.number;
         }
         else if(MenuClass.colorClickName[0] != param1.currentTarget.tabName || MenuClass.colorClickName[1] != param1.currentTarget.number)
         {
            Tab_ColorBtnSet2.deleteFc();
            Tab_ColorBtnSet2.setFc(param1.currentTarget.headerName,param1.currentTarget.targetJ,param1.currentTarget.tabName,param1.currentTarget.number);
            MenuClass.colorClickName[0] = param1.currentTarget.tabName;
            MenuClass.colorClickName[1] = param1.currentTarget.number;
         }
         else
         {
            Tab_ColorBtnSet2.deleteFc();
         }
      }
   }
}
