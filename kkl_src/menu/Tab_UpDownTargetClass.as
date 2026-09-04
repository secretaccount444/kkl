package menu
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   import undo.SlotShiftAction;
   
   public class Tab_UpDownTargetClass
   {
      
      public static var targetMC:MovieClip;
      
      public static var RibonPlusNum:Boolean;
      
      public static var charaRibonCopyData:Array = new Array("nashi");
      
      public static var systemCopyData:Object = "nashi";
      
      public static var dressRibonCopyData:Array = new Array();
      
      public static var menuCustomRibonCopyNum:Array = new Array();
       
      
      public function Tab_UpDownTargetClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip, param2:String, param3:String) : void
      {
         param1.upTarget.headerName = param2;
         param1.upTarget.tabName = param3;
         param1.upTarget.addEventListener(MouseEvent.MOUSE_DOWN,upMouseDown);
         param1.upTarget.buttonMode = true;
         param1.downTarget.headerName = param2;
         param1.downTarget.tabName = param3;
         param1.downTarget.addEventListener(MouseEvent.MOUSE_DOWN,downMouseDown);
         param1.downTarget.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         param1.upTarget.removeEventListener(MouseEvent.MOUSE_DOWN,upMouseDown);
         param1.downTarget.removeEventListener(MouseEvent.MOUSE_DOWN,downMouseDown);
      }
      
      public static function upMouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget.parent as MovieClip;
         targetMC.upTarget.gotoAndStop(2);
         targetMC.upTarget.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         btnFc(param1.currentTarget.tabName,param1.currentTarget.headerName,1);
      }
      
      public static function downMouseDown(param1:MouseEvent) : void
      {
         targetMC = param1.currentTarget.parent as MovieClip;
         targetMC.downTarget.gotoAndStop(2);
         targetMC.downTarget.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         btnFc(param1.currentTarget.tabName,param1.currentTarget.headerName,-1);
      }
      
      public static function btnFc(param1:String, param2:String, param3:Number) : void
      {
         var undoAction = null;
         if (param1 == "SystemUpDown") {
            undoAction = new SlotShiftAction(param2, param3, 100);
         } else {
            undoAction = new SlotShiftAction(param2, param3, MenuClass._nowCharaNum);
         }

         undoAction.redo();
         undoAction.switchMenuToSlot(true);
         Main.undoTimeline.push(undoAction);

         // var dataBaseKey:String = null;
         // var updateItemIdx:int = 0;
         // var tabDataIdx:* = null;
         // var tabId:String = null;
         // var srcSlotKey:String = null;
         // var tgtSlotKey:String = null;
         // var targetSlot:Number = NaN;
         // var firstLoop:Boolean = true;

         // var currentlySelected = null;

         // // param2 = tab we're modifying
         // // param3 == movement direction (+1 or -1)
         // if(param1 == "SystemUpDown")
         // {
         //    for(tabDataIdx in MenuClass.tabData[param2])
         //    {
         //       // base key for charaData
         //       dataBaseKey = MenuClass.tabData[param2][tabDataIdx][0];

         //       // identifier for tab?
         //       if((tabId = MenuClass.tabData[param2][tabDataIdx][2]["_data"]) != null)
         //       {
         //          currentlySelected = MenuClass.systemData[tabId]["_menu"];

         //          // slot we're moving to
         //          if((targetSlot = Number(MenuClass.systemData[tabId]["_menu"]) + param3) == -1)
         //          {
         //             // wrap around to end
         //             targetSlot = MenuClass.systemData[tabId]["_visible"].length - 1;
         //          }
         //          else if(targetSlot == MenuClass.systemData[tabId]["_visible"].length)
         //          {
         //             // wrap around to start
         //             targetSlot = 0;
         //          }

         //          // Swap visibility values on first iteration
         //          if(firstLoop)
         //          {
         //             RibonPlusNum = MenuClass.systemData[tabId]["_visible"][targetSlot];
         //             MenuClass.systemData[tabId]["_visible"][targetSlot] = MenuClass.systemData[tabId]["_visible"][MenuClass.systemData[tabId]["_menu"]];
         //             MenuClass.systemData[tabId]["_visible"][MenuClass.systemData[tabId]["_menu"]] = RibonPlusNum;
         //             firstLoop = false;
         //          }

         //          // source and target slot keys for charaData
         //          srcSlotKey = dataBaseKey + MenuClass.systemData[tabId]["_menu"];
         //          tgtSlotKey = dataBaseKey + targetSlot;

         //          // Copy data from source to target
         //          dressRibonCopyData[0] = clone(Dress_data.DressCharaData[0][tgtSlotKey]);
         //          charaRibonCopyData[0] = clone(MenuClass.systemData[tgtSlotKey]);
         //          try
         //          {
         //             menuCustomRibonCopyNum[0] = clone(Dress_data.menuCustomNum[0][tgtSlotKey]);
         //          }
         //          catch(myError:Error)
         //          {
         //          }
         //          Dress_data.DressCharaData[0][tgtSlotKey] = clone(Dress_data.DressCharaData[0][srcSlotKey]);
         //          MenuClass.systemData[tgtSlotKey] = clone(MenuClass.systemData[srcSlotKey]);

         //          // Copy prev target data to source
         //          try
         //          {
         //             Dress_data.menuCustomNum[0][tgtSlotKey] = clone(Dress_data.menuCustomNum[0][srcSlotKey]);
         //          }
         //          catch(myError:Error)
         //          {
         //          }
         //          Dress_data.DressCharaData[0][srcSlotKey] = clone(dressRibonCopyData[0]);
         //          MenuClass.systemData[srcSlotKey] = clone(charaRibonCopyData[0]);
         //          try
         //          {
         //             Dress_data.menuCustomNum[0][srcSlotKey] = clone(menuCustomRibonCopyNum[0]);
         //          }
         //          catch(myError:Error)
         //          {
         //          }
         //       }
         //    }

         //    // Switch selected menu slot
         //    MenuClass.systemData[tabId]["_menu"] = targetSlot;

         //    // Update items
         //    if(tabId == "LoadPlus")
         //    {
         //       updateItemIdx = 0;
         //       while(updateItemIdx <= 98)
         //       {
         //          new Tab_LoadURL("load",updateItemIdx);
         //          updateItemIdx++;
         //       }
         //    }
         //    else if(tabId == "txtFieldmenu")
         //    {
         //       updateItemIdx = 0;
         //       while(updateItemIdx <= 9)
         //       {
         //          SystemText2.loadFc("txtFieldmenu",updateItemIdx,"menu");
         //          updateItemIdx++;
         //       }
         //    }
         //    else
         //    {
         //       new SetClass(0,tabId,"move");
         //    }
         // }
         // else
         // {
         //    for(tabDataIdx in MenuClass.tabData[param2]) // tabDataIdx = index into array
         //    {
         //       dataBaseKey = MenuClass.tabData[param2][tabDataIdx][0]; // charaData key
         //       if((tabId = MenuClass.tabData[param2][tabDataIdx][2]["_data"]) != null) // tabId == "_data" attr for current tab item?
         //       {
         //          currentlySelected = MenuClass.systemData[tabId]["_menu"];

         //          // targetSlot = slot we're moving to
         //          if((targetSlot = Number(MenuClass.systemData[tabId]["_menu"]) + param3) == -1)
         //          {
         //             targetSlot = MenuClass.charaData[MenuClass._nowCharaNum][tabId]["_visible"].length - 1;
         //          }
         //          else if(targetSlot == MenuClass.charaData[MenuClass._nowCharaNum][tabId]["_visible"].length)
         //          {
         //             targetSlot = 0;
         //          }

         //          // first time around the loop - swap visibility values
         //          if(firstLoop)
         //          {
         //             RibonPlusNum = MenuClass.charaData[MenuClass._nowCharaNum][tabId]["_visible"][targetSlot];
         //             MenuClass.charaData[MenuClass._nowCharaNum][tabId]["_visible"][targetSlot] = MenuClass.charaData[MenuClass._nowCharaNum][tabId]["_visible"][MenuClass.systemData[tabId]["_menu"]];
         //             MenuClass.charaData[MenuClass._nowCharaNum][tabId]["_visible"][MenuClass.systemData[tabId]["_menu"]] = RibonPlusNum;
         //             firstLoop = false;
         //          }

         //          // source and target slot keys for charaData
         //          srcSlotKey = dataBaseKey + MenuClass.systemData[tabId]["_menu"];
         //          tgtSlotKey = dataBaseKey + targetSlot;

         //          // copy data from source to target
         //          dressRibonCopyData[0] = clone(Dress_data.DressCharaData[MenuClass._nowCharaNum][tgtSlotKey]);
         //          charaRibonCopyData[0] = clone(MenuClass.charaData[MenuClass._nowCharaNum][tgtSlotKey]);
         //          try
         //          {
         //             menuCustomRibonCopyNum[0] = clone(Dress_data.menuCustomNum[MenuClass._nowCharaNum][tgtSlotKey]);
         //          }
         //          catch(myError:Error)
         //          {
         //          }
         //          Dress_data.DressCharaData[MenuClass._nowCharaNum][tgtSlotKey] = clone(Dress_data.DressCharaData[MenuClass._nowCharaNum][srcSlotKey]);
         //          MenuClass.charaData[MenuClass._nowCharaNum][tgtSlotKey] = clone(MenuClass.charaData[MenuClass._nowCharaNum][srcSlotKey]);

         //          // copy prev target data to source
         //          try
         //          {
         //             Dress_data.menuCustomNum[MenuClass._nowCharaNum][tgtSlotKey] = clone(Dress_data.menuCustomNum[MenuClass._nowCharaNum][srcSlotKey]);
         //          }
         //          catch(myError:Error)
         //          {
         //          }
         //          Dress_data.DressCharaData[MenuClass._nowCharaNum][srcSlotKey] = clone(dressRibonCopyData[0]);
         //          MenuClass.charaData[MenuClass._nowCharaNum][srcSlotKey] = clone(charaRibonCopyData[0]);
         //          try
         //          {
         //             Dress_data.menuCustomNum[MenuClass._nowCharaNum][srcSlotKey] = clone(menuCustomRibonCopyNum[0]);
         //          }
         //          catch(myError:Error)
         //          {
         //          }
         //       }
         //    }

         //    // change selected slot in menu
         //    MenuClass.systemData[tabId]["_menu"] = targetSlot;

         //    // update sprites
         //    if (tabId == "CharaLoadPlus" && currentlySelected !== null)
         //    {
         //       Tab_LoadURL2.updateSingleSlot(MenuClass._nowCharaNum, currentlySelected);
         //       Tab_LoadURL2.updateSingleSlot(MenuClass._nowCharaNum, targetSlot);
         //    }
         //    else if(tabId == "CharaLoadPlus")
         //    {
         //       updateItemIdx = 0;
         //       while(updateItemIdx <= Main.hukusuuNum)
         //       {
         //          if(MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadPlus"]["_visible"][updateItemIdx] && MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadAdd" + updateItemIdx]["_name"] != null)
         //          {
         //             new Tab_LoadURL2("load",updateItemIdx,MenuClass._nowCharaNum);
         //          }
         //          else
         //          {
         //             MenuClass.charaData[MenuClass._nowCharaNum]["CharaLoadPlus"]["_visible"][updateItemIdx] = false;
         //             try
         //             {
         //                MenuClass.charaAdd[MenuClass._nowCharaNum]["loadObj" + updateItemIdx].visible = false;
         //             }
         //             catch(e:Error)
         //             {
         //             }
         //          }
         //          updateItemIdx++;
         //       }
         //    }
         //    else if (tabId == "RibonPlus" && currentlySelected !== null)
         //    {
         //       // Fast path - only update source and target slots
         //       Huku_RibonSet.setFc(MenuClass._nowCharaNum, currentlySelected, "move");
         //       Huku_RibonSet.setFc(MenuClass._nowCharaNum, targetSlot, "move");
         //    }
         //    else if (tabId == "HairExPlus" && currentlySelected !== null)
         //    {
         //       Hair_HairExSet.setFc(MenuClass._nowCharaNum, currentlySelected, "move");
         //       Hair_HairExSet.setFc(MenuClass._nowCharaNum, targetSlot, "move");
         //    }
         //    else if (tabId == "MarkPlus" && currentlySelected !== null)
         //    {
         //       new Huku_MarkSet(MenuClass._nowCharaNum, currentlySelected, "move");
         //       new Huku_MarkSet(MenuClass._nowCharaNum, targetSlot, "move");
         //    }
         //    else if (tabId == "BeltPlus" && currentlySelected !== null)
         //    {
         //       new Huku_BeltSet(MenuClass._nowCharaNum, currentlySelected, "move");
         //       new Huku_BeltSet(MenuClass._nowCharaNum, targetSlot, "move");
         //    }
         //    else
         //    {
         //       new SetClass(MenuClass._nowCharaNum,tabId,"move");
         //    }
         // }

         new Tab_SetClass();
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         param1.currentTarget.gotoAndStop(1);
         param1.currentTarget.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
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
