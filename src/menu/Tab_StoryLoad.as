package menu
{
   import flash.utils.ByteArray;
   
   public class Tab_StoryLoad
   {
       
      
      public function Tab_StoryLoad(param1:Array, param2:String)
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         super();
         var _loc3_:int = param1.length - 1;
         MenuClass.StoryBackupData = this.clone(MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]]);
         try
         {
            _loc6_ = param1[0];
            param1.shift();
            MenuClass.StoryTimeLineData = new Array();
            _loc7_ = 0;
            while(_loc7_ < _loc3_)
            {
               MenuClass.StoryTimeLineData.push(new Array(0,0,0,0,0,0,0,0,0,0));
               MenuClass.StoryTimeLineData[_loc7_][9] = _loc6_ + "***" + param1[_loc7_];
               _loc7_++;
            }
            _loc7_ = 0;
            while(_loc7_ < _loc3_)
            {
               param1 = new Array();
               _loc5_ = new Array();
               param1 = (_loc5_ = MenuClass.StoryTimeLineData[_loc7_][9].split("#/]"))[0].split("***");
               param1.shift();
               _loc9_ = (_loc4_ = param1[0].split("*")).length;
               _loc8_ = 0;
               while(_loc8_ < _loc9_)
               {
                  MenuClass.StoryTimeLineData[_loc7_][_loc8_] = _loc4_[_loc8_];
                  _loc8_++;
               }
               _loc7_++;
            }
            MenuClass.BeforePage = 0;
            MenuClass.systemData["Story_Page"]["_menu"] = 0;
            MenuClass.menuData["Story_Page"] = MenuClass.StoryTimeLineData.length - 1;
            new Tab_TextInClass(1,"Story_Page",MenuClass.menuData["Story_Page"]);
            new Tab_SetClass();
            new Tab_IEInOut(param2,MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
         }
         catch(myError:Error)
         {
         }
      }
      
      private function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
