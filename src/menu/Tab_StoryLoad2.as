package menu
{
   import flash.utils.ByteArray;
   
   public class Tab_StoryLoad2
   {
       
      
      public function Tab_StoryLoad2(param1:Array, param2:String)
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         super();
         var _loc3_:int = param1.length;
         MenuClass.StoryBackupData = this.clone(MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]]);
         try
         {
            MenuClass.StoryTimeLineData = new Array();
            _loc6_ = 0;
            while(_loc6_ < _loc3_)
            {
               MenuClass.StoryTimeLineData.push(new Array(0,0,0,0,0,0,0,0,0,0));
               MenuClass.StoryTimeLineData[_loc6_][9] = param1[_loc6_];
               _loc6_++;
            }
            _loc6_ = 0;
            while(_loc6_ < _loc3_)
            {
               param1 = new Array();
               _loc5_ = new Array();
               param1 = (_loc5_ = MenuClass.StoryTimeLineData[_loc6_][9].split("#/]"))[0].split("***");
               param1.shift();
               _loc8_ = (_loc4_ = param1[0].split("*")).length;
               _loc7_ = 0;
               while(_loc7_ < _loc8_)
               {
                  MenuClass.StoryTimeLineData[_loc6_][_loc7_] = _loc4_[_loc7_];
                  _loc7_++;
               }
               _loc6_++;
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
