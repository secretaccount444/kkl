package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class Tab_ResetTargetClass
   {
      
      public static var targetMC:MovieClip;
      
      public static var headerName:String;
      
      public static var count:int = 0;
       
      
      public function Tab_ResetTargetClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String) : void
      {
         param1.headerName = param2;
         param1.alpha = 0;
         param1.visible = false;
         // param1.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         // param1.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         try
         {
            param1.removeEventListener(Event.ENTER_FRAME,ResetFc);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget as MovieClip;
         headerName = param1.currentTarget.headerName;
         if(count == 0)
         {
            targetMC.gotoAndStop(2);
            // targetMC.addEventListener(Event.ENTER_FRAME,ResetFc);
            // MenuClass.charaOldData = clone(MenuClass.charaMotoData);
            // MenuClass.systemOldData = clone(MenuClass.systemMotoData);
         }
      }
      
      public static function ResetFc(param1:Event) : void
      {
         return;

         // var i:int = 0;
         // var event:Event = param1;
         // try
         // {
         //    ++count;
         //    if(count == 2)
         //    {
         //       if(MenuClass._nowTargetMode == "All")
         //       {
         //          i = 0;
         //          while(i <= MenuClass._characterNum)
         //          {
         //             if(headerName == "Character" || headerName == "SystemOption")
         //             {
         //                MenuClass.systemData["SelectCharacter"]["_menu"] = i;
         //                SetCharaData.execute(i,"reset",0);
         //             }
         //             else
         //             {
         //                dataIn(i);
         //             }
         //             i++;
         //          }
         //          MenuClass.systemData["SelectCharacter"]["_menu"] = MenuClass._nowCharaNum;
         //       }
         //       else if(MenuClass._nowTargetMode == "SelectPlus")
         //       {
         //          i = 0;
         //          while(i <= MenuClass._characterNum)
         //          {
         //             if(MenuClass._nowSelectChara[i])
         //             {
         //                if(headerName == "Character" || headerName == "SystemOption")
         //                {
         //                   MenuClass.systemData["SelectCharacter"]["_menu"] = i;
         //                   SetCharaData.execute(i,"reset",0);
         //                }
         //                else
         //                {
         //                   dataIn(i);
         //                }
         //             }
         //             i++;
         //          }
         //          MenuClass.systemData["SelectCharacter"]["_menu"] = MenuClass._nowCharaNum;
         //       }
         //       else if(headerName == "Character" || headerName == "SystemOption")
         //       {
         //          MenuClass.systemData["SelectCharacter"]["_menu"] = MenuClass._nowCharaNum;
         //          new SetClass(MenuClass._nowCharaNum,"Xmove","reset");
         //          SetCharaData.execute(MenuClass._nowCharaNum,"reset",0);
         //       }
         //       else
         //       {
         //          dataIn(MenuClass._nowCharaNum);
         //       }
         //       new Tab_SetClass();
         //       targetMC.gotoAndStop(1);
         //       count = 0;
         //       event.currentTarget.removeEventListener(Event.ENTER_FRAME,ResetFc);
         //       MenuClass.charaOldData = null;
         //       MenuClass.systemOldData = null;
         //    }
         // }
         // catch(myError:Error)
         // {
         //    new Tab_SetClass();
         //    targetMC.gotoAndStop(1);
         //    count = 0;
         //    event.currentTarget.removeEventListener(Event.ENTER_FRAME,ResetFc);
         //    MenuClass.charaOldData = null;
         //    MenuClass.systemOldData = null;
         // }
      }
      
      public static function dataIn(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         for(_loc3_ in MenuClass.tabData[headerName])
         {
            _loc2_ = MenuClass.tabData[headerName][_loc3_][0];
            _loc5_ = false;
            if((_loc6_ = MenuClass.tabData[headerName][_loc3_][2]["_menu"]) == "charaPlus")
            {
               _loc5_ = true;
            }
            if((_loc6_ = MenuClass.tabData[headerName][_loc3_][2]["_meter"]) == "charaPlus")
            {
               _loc5_ = true;
            }
            if(_loc5_)
            {
               _loc7_ = MenuClass.tabData[headerName][_loc3_][2]["_data"];
               _loc8_ = MenuClass.charaData[param1][_loc7_]["_visible"].length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc8_)
               {
                  _loc9_ = _loc2_ + _loc4_;
                  // MenuClass.charaData[param1][_loc9_] = clone(MenuClass.charaMotoData[param1][_loc9_]);
                  // Dress_data.DressCharaData[param1][_loc9_] = clone(Dress_data.DressCharaMotoData[param1][_loc9_]);
                  try
                  {
                     // Dress_data.menuCustomNum[param1][_loc9_] = clone(MenuClass.menuCustomResetNum[param1][_loc9_]);
                  }
                  catch(myError:Error)
                  {
                  }
                  _loc4_++;
               }
            }
            else
            {
               // MenuClass.charaData[param1][_loc2_] = clone(MenuClass.charaMotoData[param1][_loc2_]);
               // Dress_data.DressCharaData[param1][_loc2_] = clone(Dress_data.DressCharaMotoData[param1][_loc2_]);
               try
               {
                  // Dress_data.menuCustomNum[param1][_loc2_] = clone(MenuClass.menuCustomResetNum[param1][_loc2_]);
               }
               catch(myError:Error)
               {
               }
            }
            new SetClass(param1,_loc2_,"reset");
         }
      }
      
      public static function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
