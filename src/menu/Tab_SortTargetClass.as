package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class Tab_SortTargetClass
   {
      
      public static var targetMC:MovieClip;
       
      
      public function Tab_SortTargetClass()
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
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         targetMC = param1.currentTarget as MovieClip;
         targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         targetMC.gotoAndStop(2);
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = 0;
         while(_loc2_ <= MenuClass._characterNum)
         {
            if(MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0])
            {
               _loc3_++;
            }
            _loc2_++;
         }
         var _loc5_:Array = new Array();
         if(_loc3_ != 0)
         {
            _loc2_ = 0;
            while(_loc2_ <= MenuClass._characterNum)
            {
               if(MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0])
               {
                  _loc5_.push({
                     "num":_loc2_,
                     "meter":MenuClass.charaData[_loc2_]["Xmove"]["_meter"] / 1000
                  });
               }
               _loc2_++;
            }
            _loc5_.sortOn("meter");
            _loc2_ = 0;
            while(_loc2_ < _loc5_.length)
            {
               MenuClass.charaData[_loc5_[_loc2_]["num"]]["Xmove"]["_meter"] = MenuClass.charaX[_loc3_ - 1][_loc2_];
               new SetClass(_loc5_[_loc2_]["num"],"Xmove","tab");
               _loc2_++;
            }
         }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         targetMC.gotoAndStop(1);
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
