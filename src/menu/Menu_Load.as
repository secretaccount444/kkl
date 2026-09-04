package menu
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class Menu_Load
   {
      
      public static var LoadBarClass:Class;
      
      public static var LoadObjClass:Class;
      
      public static var MainMaskClass:Class;
      
      public static var HeaderBtnClass:Class;
      
      public static var errorWindowClass:Class;
      
      public static var TabAllSaveLoadClass:Class;
      
      public static var TabAllStorySaveLoadClass:Class;
      
      public static var TabBreakBlockBtnClass:Class;
      
      public static var TabCameraClass:Class;
      
      public static var TabCamera2Class:Class;
      
      public static var TabCamera3Class:Class;
      
      public static var TabCamera4Class:Class;
      
      public static var TabCameraEasyClass:Class;
      
      public static var TabCameraJPGClass:Class;
      
      public static var TabCCCClass:Class;
      
      public static var TabCheckClass:Class;
      
      public static var TabCheckShortClass:Class;
      
      public static var TabCloseClass:Class;
      
      public static var TabCloseHtmlClass:Class;
      
      public static var TabColorClass:Class;
      
      public static var TabDressUPClass:Class;
      
      public static var TabEasyExpertClass:Class;
      
      public static var TabEscapeClass:Class;
      
      public static var TabEyeClass:Class;
      
      public static var TabEyeColorClass:Class;
      
      public static var TabEyeMenuClass:Class;
      
      public static var TabEyeMenu3Class:Class;
      
      public static var TabEyeMenuCCClass:Class;
      
      public static var TabEyeMenuCCCClass:Class;
      
      public static var TabEyeMenuCCCDepthClass:Class;
      
      public static var TabEyeMenuCCCDepthTurnClass:Class;
      
      public static var TabEyeMenuCCCNumClass:Class;
      
      public static var TabEyeMenuCCCReversalClass:Class;
      
      public static var TabEyeMenuCCCReversal2Class:Class;
      
      public static var TabEyeMenuCCCReversalDepthClass:Class;
      
      public static var TabEyeMenuCCCReversal2DepthClass:Class;
      
      public static var TabEyeMenuCCCReversal2NumberClass:Class;
      
      public static var TabEyeMenuCCCRHairClass:Class;
      
      public static var TabEyeMenuCCCHatClass:Class;
      
      public static var TabEyeMenuCCCSeparateClass:Class;
      
      public static var TabEyeMenuCCCTurnClass:Class;
      
      public static var TabEyeMenuCCReversalClass:Class;
      
      public static var TabEyeMenuCCReversalDepthClass:Class;
      
      public static var TabEyeMenuColorClass:Class;
      
      public static var TabEyeMenuColorReversalClass:Class;
      
      public static var TabEyeMenuDepthClass:Class;
      
      public static var TabEyeMenuINColorClass:Class;
      
      public static var TabEyeMenuMoveClass:Class;
      
      public static var TabEyeMenuReversalClass:Class;
      
      public static var TabEyeMenuReversalDepthClass:Class;
      
      public static var TabEyeMenuReversalR3Class:Class;
      
      public static var TabImportExportClass:Class;
      
      public static var TabLoadDeleteClass:Class;
      
      public static var TabManualAutoClass:Class;
      
      public static var TabMenuClass:Class;
      
      public static var TabMenu1Class:Class;
      
      public static var TabMenu2Class:Class;
      
      public static var TabMenu2ColorClass:Class;
      
      public static var TabMenu2ColorDepthClass:Class;
      
      public static var TabMenu2ReversalClass:Class;
      
      public static var TabMenu3Class:Class;
      
      public static var TabMenu3CCCNumClass:Class;
      
      public static var TabMenu3CCCReversalClass:Class;
      
      public static var TabMenu3CCCReversal2Class:Class;
      
      public static var TabMenu3ColorClass:Class;
      
      public static var TabMenu4Class:Class;
      
      public static var TabMenuAddClass:Class;
      
      public static var TabMenuAdd2Class:Class;
      
      public static var TabMenuCCClass:Class;
      
      public static var TabMenuCC_sClass:Class;
      
      public static var TabMenuCCCClass:Class;
      
      public static var TabMenuCCCDepthClass:Class;
      
      public static var TabMenuCCCNumClass:Class;
      
      public static var TabMenuCCCReversalClass:Class;
      
      public static var TabMenuCCCReversal2Class:Class;
      
      public static var TabMenuCCCReversal2DepthClass:Class;
      
      public static var TabMenuCCCReversal2DepthMaskClass:Class;
      
      public static var TabMenuCCCReversalDepthClass:Class;
      
      public static var TabMenuCCCRRDepthShadowClass:Class;
      
      public static var TabMenuCCCRRDepthTurnShadowClass:Class;
      
      public static var TabMenuCCCRShadowClass:Class;
      
      public static var TabMenuCCCSeparateClass:Class;
      
      public static var TabMenuCCDepthClass:Class;
      
      public static var TabMenuCCReversal2DepthTurnClass:Class;
      
      public static var TabMenuColorClass:Class;
      
      public static var TabMenuColorDepthClass:Class;
      
      public static var TabMenuColorReversalClass:Class;
      
      public static var TabMenuDepthClass:Class;
      
      public static var TabMenuINEyeClass:Class;
      
      public static var TabMenuINEyeReversalClass:Class;
      
      public static var TabMenuNumClass:Class;
      
      public static var TabMenuRandomClass:Class;
      
      public static var TabMenuRandomBodyClass:Class;
      
      public static var TabMenuReversalClass:Class;
      
      public static var TabMenuTextClass:Class;
      
      public static var TabMeterClass:Class;
      
      public static var TabMeter2Class:Class;
      
      public static var TabMeter2DepthClass:Class;
      
      public static var TabMeter2ReversalClass:Class;
      
      public static var TabMeter2ShortClass:Class;
      
      public static var TabMeter2Short2Class:Class;
      
      public static var TabMeter2Short3Class:Class;
      
      public static var TabMeter2ShortDepthClass:Class;
      
      public static var TabMeter2ShortLeftClass:Class;
      
      public static var TabMeter2ShortMiddleClass:Class;
      
      public static var TabMeter2ShortRightClass:Class;
      
      public static var TabMeter2VeryShortClass:Class;
      
      public static var TabMeterColorClass:Class;
      
      public static var TabMeterLongClass:Class;
      
      public static var TabMeterReversalClass:Class;
      
      public static var TabMeterShortClass:Class;
      
      public static var TabMeterShort2Class:Class;
      
      public static var TabMeterShort3Class:Class;
      
      public static var TabMeterShortDepthClass:Class;
      
      public static var TabMeterShortDepthSizeClass:Class;
      
      public static var TabMeterVeryShortClass:Class;
      
      public static var TabMoveClass:Class;
      
      public static var TabOldSaveClass:Class;
      
      public static var TabOpenAgeClass:Class;
      
      public static var TabPageTopClass:Class;
      
      public static var TabPlusMinusClass:Class;
      
      public static var TabPrevClass:Class;
      
      public static var TabReversalClass:Class;
      
      public static var TabDepthClass:Class;
      
      public static var TabReversalDepthClass:Class;
      
      public static var TabSaveLoadClass:Class;
      
      public static var TabShortCutBtnClass:Class;
      
      public static var TabSizeClass:Class;
      
      public static var TabSwfColorClass:Class;
      
      public static var TabTextFormatAlignClass:Class;
      
      public static var TabTextTateYokoClass:Class;
      
      public static var TabTimeLineClass:Class;
      
      public static var TabURLLoadingClass:Class;
      
      public static var TabURLLocalClass:Class;
      
      public static var TabURLTextClass:Class;
      
      public static var TabURLTextListClass:Class;
      
      public static var TabZoomClass:Class;
      
      public static var TabZoomMeterClass:Class;
      
      public static var shortcutTextClass:Class;
      
      public static var TabSelectTargetClass:Class;
      
      public static var TabCharaClass:Class;
      
      public static var TabSaveClass:Class;
      
      public static var TabSaveViewClass:Class;
      
      public static var TabShortcutWindowClass:Class;
      
      public static var TabURLWindowClass:Class;
      
      public static var TabHeaderSwitchClass:Class;
      
      public static var TabResetAllTargetClass:Class;
      
      public static var TabResetTargetClass:Class;
      
      public static var TabSortTargetClass:Class;
      
      public static var TabURLClass:Class;
      
      public static var TabRandomBoxClass:Class;
      
      public static var TabRandomCheckBoxClass:Class;
      
      public static var TabRandomColor1Class:Class;
      
      public static var TabRandomColor2Class:Class;
      
      public static var TabRandomColor3Class:Class;
      
      public static var TabRandomMenuClass:Class;
      
      public static var TabRandomMeterClass:Class;
      
      public static var TabRandomTargetClass:Class;
      
      public static var TabRandomTarget2Class:Class;
      
      public static var TabRandomVisibleClass:Class;
      
      public static var TabRandomAllTargetClass:Class;
      
      public static var openAgeClass:Class;
      
      public static var HeaderMenuTabClass:Class;
      
      public static var QuickSaveTextClass:Class;
      
      public static var TimuLineShortCutMenuClass:Class;
      
      public static var TabRandomLinkClass:Class;
      
      public static var TabLinkClass:Class;
      
      public static var TabExportClass:Class;
      
      public static var TabImportClass:Class;
      
      public static var txtCountAreaClass:Class;
      
      public static var TabCopyAllBodyTargetClass:Class;
      
      public static var TabCopyAllTargetClass:Class;
      
      public static var TabCopyTargetClass:Class;
      
      public static var TabCopyTargetRightClass:Class;
      
      public static var TabUpDownTargetClass:Class;
      
      public static var TabUpDownTargetRightClass:Class;
      
      public static var ColorCustomClass:Class;
      
      public static var SmallColorCustomClass:Class;
      
      public static var colorMakeClass:Class;
      
      public static var SmallColorClass:Class;
      
      public static var SmallColor_BgClass:Class;
      
      public static var SmallColorLinkClass:Class;
      
      public static var kirinukiClass:Class;
      
      public static var kirinukiCursorClass:Class;
      
      public static var spuitCursorClass:Class;
      
      public static var LoadCheck:Array = new Array("nashi","nashi");
       
      
      private var itemName:String;
      
      private var loader:Loader;
      
      private var byteArrayLoader:Loader;
      
      private var request:URLRequest;
      
      public function Menu_Load(param1:String)
      {
         super();
         this.itemName = param1.substring(0,8);
         this.request = new URLRequest("k_kisekae2_swf/" + param1 + ".swf");
         this.loader = new Loader();
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.drawParts);
         this.loader.load(this.request);
      }
      
      private function drawParts(param1:Event) : void
      {
         if(this.itemName == "loadData")
         {
            LoadBarClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("LoadBar") as Class;
            LoadObjClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("LoadObj") as Class;
            LoadCheck[0] = "comp";
         }
         else if(this.itemName == "menuData")
         {
            MainMaskClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("MainMask") as Class;
            HeaderBtnClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("HeaderBtn") as Class;
            errorWindowClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("errorWindow") as Class;
            TabAllSaveLoadClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabAllSaveLoad") as Class;
            TabBreakBlockBtnClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabBreakBlockBtn") as Class;
            TabCameraClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCamera") as Class;
            TabCamera2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCamera2") as Class;
            TabCamera3Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCamera3") as Class;
            TabCamera4Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCamera4") as Class;
            TabCameraEasyClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCameraEasy") as Class;
            TabCameraJPGClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCameraJPG") as Class;
            TabCCCClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCCC") as Class;
            TabCheckClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCheck") as Class;
            TabCheckShortClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCheckShort") as Class;
            TabCloseClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabClose") as Class;
            TabCloseHtmlClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCloseHtml") as Class;
            TabColorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabColor") as Class;
            TabDressUPClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabDressUP") as Class;
            TabEasyExpertClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEasyExpert") as Class;
            TabEscapeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEscape") as Class;
            TabEyeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEye") as Class;
            TabEyeColorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeColor") as Class;
            TabEyeMenuClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenu") as Class;
            TabEyeMenu3Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenu3") as Class;
            TabEyeMenuCCClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCC") as Class;
            TabEyeMenuCCCClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCC") as Class;
            TabEyeMenuCCCDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCDepth") as Class;
            TabEyeMenuCCCDepthTurnClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCDepthTurn") as Class;
            TabEyeMenuCCCNumClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCNum") as Class;
            TabEyeMenuCCCReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCReversal") as Class;
            TabEyeMenuCCCReversal2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCReversal2") as Class;
            TabEyeMenuCCCReversalDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCReversalDepth") as Class;
            TabEyeMenuCCCReversal2DepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCReversal2Depth") as Class;
            TabEyeMenuCCCReversal2NumberClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCReversal2Number") as Class;
            TabEyeMenuCCCRHairClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCRHair") as Class;
            TabEyeMenuCCCHatClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCHat") as Class;
            TabEyeMenuCCCSeparateClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCSeparate") as Class;
            TabEyeMenuCCCTurnClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCCTurn") as Class;
            TabEyeMenuCCReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCReversal") as Class;
            TabEyeMenuCCReversalDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuCCReversalDepth") as Class;
            TabEyeMenuColorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuColor") as Class;
            TabEyeMenuColorReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuColorReversal") as Class;
            TabEyeMenuDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuDepth") as Class;
            TabEyeMenuINColorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuINColor") as Class;
            TabEyeMenuMoveClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuMove") as Class;
            TabEyeMenuReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuReversal") as Class;
            TabEyeMenuReversalDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuReversalDepth") as Class;
            TabEyeMenuReversalR3Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabEyeMenuReversalR3") as Class;
            TabImportExportClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabImportExport") as Class;
            TabLoadDeleteClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabLoadDelete") as Class;
            TabManualAutoClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabManualAuto") as Class;
            TabMenuClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu") as Class;
            TabMenu1Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu1") as Class;
            TabMenu2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu2") as Class;
            TabMenu2ColorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu2Color") as Class;
            TabMenu2ColorDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu2ColorDepth") as Class;
            TabMenu2ReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu2Reversal") as Class;
            TabMenu3Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu3") as Class;
            TabMenu3CCCNumClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu3CCCNum") as Class;
            TabMenu3CCCReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu3CCCReversal") as Class;
            TabMenu3CCCReversal2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu3CCCReversal2") as Class;
            TabMenu3ColorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu3Color") as Class;
            TabMenu4Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenu4") as Class;
            TabMenuAddClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuAdd") as Class;
            TabMenuAdd2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuAdd2") as Class;
            TabMenuCCClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCC") as Class;
            TabMenuCC_sClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCC_s") as Class;
            TabMenuCCCClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCC") as Class;
            TabMenuCCCDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCDepth") as Class;
            TabMenuCCCNumClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCNum") as Class;
            TabMenuCCCReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCReversal") as Class;
            TabMenuCCCReversal2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCReversal2") as Class;
            TabMenuCCCReversal2DepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCReversal2Depth") as Class;
            TabMenuCCCReversal2DepthMaskClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCReversal2DepthMask") as Class;
            TabMenuCCCReversalDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCReversalDepth") as Class;
            TabMenuCCCRRDepthShadowClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCRRDepthShadow") as Class;
            TabMenuCCCRRDepthTurnShadowClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCRRDepthTurnShadow") as Class;
            TabMenuCCCRShadowClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCRShadow") as Class;
            TabMenuCCCSeparateClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCCSeparate") as Class;
            TabMenuCCDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCDepth") as Class;
            TabMenuCCReversal2DepthTurnClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuCCReversal2DepthTurn") as Class;
            TabMenuColorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuColor") as Class;
            TabMenuColorDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuColorDepth") as Class;
            TabMenuColorReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuColorReversal") as Class;
            TabMenuDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuDepth") as Class;
            TabMenuINEyeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuINEye") as Class;
            TabMenuINEyeReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuINEyeReversal") as Class;
            TabMenuNumClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuNum") as Class;
            TabMenuRandomClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuRandom") as Class;
            TabMenuRandomBodyClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuRandomBody") as Class;
            TabMenuReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuReversal") as Class;
            TabMenuTextClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMenuText") as Class;
            TabMeterClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter") as Class;
            TabMeter2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2") as Class;
            TabMeter2DepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2Depth") as Class;
            TabMeter2ReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2Reversal") as Class;
            TabMeter2ShortClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2Short") as Class;
            TabMeter2Short2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2Short2") as Class;
            TabMeter2Short3Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2Short3") as Class;
            TabMeter2ShortDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2ShortDepth") as Class;
            TabMeter2ShortLeftClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2ShortLeft") as Class;
            TabMeter2ShortMiddleClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2ShortMiddle") as Class;
            TabMeter2ShortRightClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2ShortRight") as Class;
            TabMeter2VeryShortClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeter2VeryShort") as Class;
            TabMeterColorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeterColor") as Class;
            TabMeterLongClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeterLong") as Class;
            TabMeterReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeterReversal") as Class;
            TabMeterShortClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeterShort") as Class;
            TabMeterShort2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeterShort2") as Class;
            TabMeterShort3Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeterShort3") as Class;
            TabMeterShortDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeterShortDepth") as Class;
            TabMeterShortDepthSizeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeterShortDepthSize") as Class;
            TabMeterVeryShortClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMeterVeryShort") as Class;
            TabMoveClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabMove") as Class;
            TabOldSaveClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabOldSave") as Class;
            TabOpenAgeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabOpenAge") as Class;
            TabPageTopClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabPageTop") as Class;
            TabPlusMinusClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabPlusMinus") as Class;
            TabPrevClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabPrev") as Class;
            TabReversalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabReversal") as Class;
            TabDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabDepth") as Class;
            TabReversalDepthClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabReversalDepth") as Class;
            TabSaveLoadClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabSaveLoad") as Class;
            TabShortCutBtnClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabShortCutBtn") as Class;
            TabSizeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabSize") as Class;
            TabSwfColorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabSwfColor") as Class;
            TabTextFormatAlignClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabTextFormatAlign") as Class;
            TabTextTateYokoClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabTextTateYoko") as Class;
            TabTimeLineClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabTimeLine") as Class;
            TabURLLoadingClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabURLLoading") as Class;
            TabURLLocalClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabURLLocal") as Class;
            TabURLTextClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabURLText") as Class;
            TabURLTextListClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabURLTextList") as Class;
            TabZoomClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabZoom") as Class;
            TabZoomMeterClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabZoomMeter") as Class;
            shortcutTextClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("shortcutText") as Class;
            TabSelectTargetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabSelectTarget") as Class;
            TabCharaClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabChara") as Class;
            TabSaveClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabSave") as Class;
            TabSaveViewClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabSaveView") as Class;
            TabShortcutWindowClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabShortcutWindow") as Class;
            TabURLWindowClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabURLWindow") as Class;
            TabHeaderSwitchClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabHeaderSwitch") as Class;
            TabResetAllTargetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabResetAllTarget") as Class;
            TabResetTargetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabResetTarget") as Class;
            TabSortTargetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabSortTarget") as Class;
            TabURLClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabURL") as Class;
            TabRandomBoxClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomBox") as Class;
            TabRandomCheckBoxClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomCheckBox") as Class;
            TabRandomColor1Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomColor1") as Class;
            TabRandomColor2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomColor2") as Class;
            TabRandomColor3Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomColor3") as Class;
            TabRandomMenuClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomMenu") as Class;
            TabRandomMeterClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomMeter") as Class;
            TabRandomTargetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomTarget") as Class;
            TabRandomTarget2Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomTarget2") as Class;
            TabRandomVisibleClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomVisible") as Class;
            TabRandomAllTargetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomAllTarget") as Class;
            openAgeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("openAge") as Class;
            HeaderMenuTabClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("HeaderMenuTab") as Class;
            QuickSaveTextClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("QuickSaveText") as Class;
            TimuLineShortCutMenuClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TimuLineShortCutMenu") as Class;
            TabRandomLinkClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabRandomLink") as Class;
            TabLinkClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabLink") as Class;
            TabExportClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabExport") as Class;
            TabImportClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabImport") as Class;
            txtCountAreaClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("txtCountArea") as Class;
            TabCopyAllBodyTargetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCopyAllBodyTarget") as Class;
            TabCopyAllTargetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCopyAllTarget") as Class;
            TabCopyTargetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCopyTarget") as Class;
            TabCopyTargetRightClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabCopyTargetRight") as Class;
            TabUpDownTargetClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabUpDownTarget") as Class;
            TabUpDownTargetRightClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("TabUpDownTargetRight") as Class;
            ColorCustomClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("ColorCustom") as Class;
            SmallColorCustomClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("SmallColorCustom") as Class;
            colorMakeClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("colorMake") as Class;
            SmallColorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("SmallColor") as Class;
            SmallColor_BgClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("SmallColor_Bg") as Class;
            SmallColorLinkClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("SmallColorLink") as Class;
            kirinukiClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("kirinuki") as Class;
            kirinukiCursorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("kirinukiCursor") as Class;
            spuitCursorClass = this.loader.contentLoaderInfo.applicationDomain.getDefinition("spuitCursor") as Class;
            LoadCheck[1] = "comp";
         }
         this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.drawParts);
      }
   }
}
