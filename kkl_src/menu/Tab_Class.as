package menu
{
   import flash.net.SharedObject;
   import parameter.Tab_IEData1;
   
   public class Tab_Class
   {
       
      
      public function Tab_Class()
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         super();
         new System_MobBtn();
         new Tab_CharaWindow();
         new Tab_AllCharaWindow();
         new Tab_AllHukuSet();
         new Tab_CloseBtnClass();
         new Tab_SelectTargetClass();
         new Tab_ResetTargetClass();
         new Tab_CopyTargetClass();
         new Tab_UpDownTargetClass();
         new Tab_PasteTargetClass();
         new Tab_RandomTargetClass();
         new Tab_SortTargetClass();
         new Tab_RandomCostumClass();
         new Tab_AddCostumClass();
         new Tab_AddCostumOpen();
         new Tab_LinkClass();
         new Tab_NumberClass();
         new Tab_SeparateClass();
         new Tab_MimihatClass();
         new Tab_MenuClass();
         new Tab_MenuCheckClass();
         new Tab_MoveClass();
         new Tab_MeterClass();
         new Tab_ColorBtnClass();
         new Tab_EyeBoxClass();
         new Tab_CheckBoxClass();
         new Tab_ManualAutoClass();
         new Tab_URLLocalClass();
         new Tab_EasyExpertClass();
         new Tab_ReversalClass();
         new Tab_Reversal2Class();
         new Tab_DepthClass();
         new Tab_TurnClass();
         new Tab_HatHairClass();
         new Tab_ShadowClass();
         new Tab_Turn2Class();
         new Tab_tabMaskClass();
         new Tab_LoadClass();
         new Tab_StoryPlusMinus();
         new Tab_StoryTimeLine();
         new Tab_OldSaveBtn();
         new Tab_StoryOldSaveBtn();
         new Tab_TextSaveBtn();
         new Tab_TextLoadBtn();
         new Tab_PageTopBtn();
         new Tab_DressUPBtn();
         new Tab_headerSwitchBtn();
         new Tab_PrevBtn();
         new Tab_URLTextClass();
         MenuClass.so_StorySaveWindow = SharedObject.getLocal("story_data", "/");
         MenuClass.so_StoryToolSaveWindow = SharedObject.getLocal("storyTool_data", "/");
         MenuClass.so_Save = SharedObject.getLocal("my_data", "/");
         new Tab_SaveClass();
         new Tab_IE_Export();
         new Tab_IE_Import();
         _loc2_ = Tab_IEData1.IEGroup.length;
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            if(!MenuClass.MY_MENUNAME[_loc1_ + 4][4] && Main.r18Check)
            {
               MenuClass.importCheck[_loc1_] = false;
               MenuClass.exportCheck[_loc1_] = false;
            }
            else
            {
               MenuClass.importCheck[_loc1_] = true;
               MenuClass.exportCheck[_loc1_] = true;
            }
            _loc1_++;
         }
         new Tab_IEClass();
         new Tab_ShortcutBtn();
         new Tab_BreakBlockBtn();
         new Tab_OpenAgeBtn();
         new Tab_ShortcutClass();
         new Tab_URLTextWindow();
         new Tab_URLTextBtn();
         new Tab_ColorBtnSet2();
         new Tab_CameraClass();
         new SystemText();
         new SystemText2();
         new Huku_RibonSet();
         new Hair_HairExSet();
      }
   }
}
