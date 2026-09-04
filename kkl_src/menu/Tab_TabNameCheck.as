package menu
{
   public class Tab_TabNameCheck
   {
      
      public static var headerName:String;
      
      public static var targetJ:int;

      public static var expertModeMap:Object = null;
      public static var easyModeMap:Object = null;
      
      public function Tab_TabNameCheck(param1:String)
      {
         super();
         lookup(param1);
      }

      public static function lookup(param1:String) {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:* = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc4_:int = MenuClass.MY_MENUNAME.length - 1;

         // param1 = key into CharaData
         // This class converts charaData keys into UI tab and menu item indices/keys

         if (expertModeMap === null || easyModeMap === null) {
            buildMappings();
         }
         
         if(!MenuClass.systemData["EExpert"]["_check"])
         {
            // expert mode
            var mapResult = expertModeMap[param1];
            if (mapResult) {
               targetJ = mapResult[0];
               headerName = mapResult[1];
               return;
            }

            // shouldn't happen, but just in case...
            // iterate over all tabs
            _loc2_ = 0;
            while(_loc2_ <= _loc4_)
            {
               // if tab is not for easy mode
               if((_loc6_ = MenuClass.MY_MENUNAME[_loc2_][0]).substring(0,4) != "Easy")
               {
                  // check all items in tab
                  for(_loc5_ in MenuClass.tabData[_loc6_])
                  {
                     _loc3_ = _loc5_ as int; // cast to int
                     _loc7_ = MenuClass.tabData[_loc6_][_loc3_][0];
                     if(param1 == _loc7_)
                     {
                        targetJ = _loc3_;
                        headerName = _loc6_;
                        break;
                     }
                  }
               }
               _loc2_++;
            }
         }
         else
         {
            // easy mode
            var mapResult = easyModeMap[param1];
            if (mapResult) {
               targetJ = mapResult[0];
               headerName = mapResult[1];
               return;
            }
            
            // shouldn't happen, but just in case...
            _loc2_ = 0;
            while(_loc2_ <= _loc4_)
            {
               _loc6_ = MenuClass.MY_MENUNAME[_loc2_][0];
               for(_loc5_ in MenuClass.tabData[_loc6_])
               {
                  _loc3_ = _loc5_ as int;
                  _loc7_ = MenuClass.tabData[_loc6_][_loc3_][0];
                  if(param1 == _loc7_)
                  {
                     targetJ = _loc3_;
                     headerName = _loc6_;
                     break;
                  }
               }
               _loc2_++;
            }
         }
      }

      public static function buildMappings() {
         expertModeMap = {};
         easyModeMap = {};

         for (var i = 0; i < MenuClass.MY_MENUNAME.length; i++) {
            var curHeaderName = MenuClass.MY_MENUNAME[i][0];
            var isEasy = (curHeaderName.substring(0,4) == "Easy");
            var subMap = {};
            
            for(var j in MenuClass.tabData[curHeaderName])
            {
               var curTargetJ = j as int;
               var key = MenuClass.tabData[curHeaderName][curTargetJ][0];
               easyModeMap[key] = [curTargetJ, curHeaderName];

               if (!isEasy) {
                  expertModeMap[key] = [curTargetJ, curHeaderName];
               }
            }
         }
      }
   }
}
