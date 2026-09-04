package menu
{
   import parameter.Tab_IEData1;
   
   public class Tab_IESet
   {
       
      
      public function Tab_IESet(param1:String)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         super();
         if((MenuClass._nowTargetMode == "Select" || MenuClass._nowTargetMode == "SelectPlus") && param1 == "export")
         {
            Tab_IEInOut.dataStr = "";
            Tab_IEInOut.execute("OUT","0",MenuClass._nowCharaNum);
            Tab_IEInOut.execute("OUTLast","0",0);
            if(!MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0])
            {
               MenuClass.tabMenuAdd["tabExportWindow"].myTa.text = "";
            }
         }
         else
         {
            Tab_IEInOut.dataStr = "";
            Tab_IEInOut.firstCheck = true;
            _loc3_ = Tab_IEData1.IEGroup.length;
            _loc4_ = false;
            _loc2_ = 0;
            while(_loc2_ <= MenuClass._characterNum)
            {
               if(MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0])
               {
                  if(param1 == "txtSave")
                  {
                     Tab_IEInOut.execute("OUTTXT","0",_loc2_);
                  }
                  else
                  {
                     Tab_IEInOut.execute("OUT","0",_loc2_);
                  }
               }
               else
               {
                  if(_loc2_ == 0)
                  {
                     Tab_IEInOut.execute("CharaNoData","0",0);
                  }
                  else
                  {
                     Tab_IEInOut.dataStr += "*0";
                  }
                  MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][_loc2_] = "0";
               }
               _loc2_++;
            }
            if(param1 == "txtSave")
            {
               _loc4_ = true;
            }
            else
            {
               _loc2_ = 0;
               while(_loc2_ <= _loc3_)
               {
                  if(MenuClass.exportCheck[_loc2_] && _loc2_ < 29)
                  {
                     _loc4_ = true;
                  }
                  _loc2_++;
               }
            }
            if(Tab_IEInOut.dataStr == Main.version + "***********" || !_loc4_)
            {
               Tab_IEInOut.dataStr = Main.version + "**";
            }
            Tab_IEInOut.systemOutCheck = false;
            if(MenuClass.exportCheck[29] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("FreeHand","0",0);
            }
            if(MenuClass.exportCheck[30] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("FreeRibon","0",0);
            }
            if(MenuClass.exportCheck[31] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("FreeBelt","0",0);
            }
            if(MenuClass.exportCheck[32] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("FreeChair","0",0);
            }
            if(MenuClass.exportCheck[33] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("FreeFlag","0",0);
            }
            if(MenuClass.exportCheck[34] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("FreeHukidashi","0",0);
            }
            if(MenuClass.exportCheck[35] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("Background","0",0);
            }
            if(MenuClass.exportCheck[36] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("txt","0",0);
            }
            if(MenuClass.exportCheck[37] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("Loadmenu","0",0);
            }
            if(MenuClass.exportCheck[38] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("SystemOption","0",0);
            }
            if(MenuClass.exportCheck[39] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("Tool","0",0);
            }
            if(MenuClass.exportCheck[36] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("OUTText","0",0);
            }
            if(MenuClass.exportCheck[37] || param1 == "txtSave")
            {
               Tab_IEInOut.execute("LoadmenuText","0",0);
            }
            Tab_IEInOut.execute("OUTLast","0",0);
            if(Tab_IEInOut.firstCheck)
            {
               MenuClass.tabMenuAdd["tabExportWindow"].myTa.text = "";
            }
         }
      }
   }
}
