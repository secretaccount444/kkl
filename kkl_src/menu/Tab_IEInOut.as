package menu
{
   import flash.utils.ByteArray;
   import parameter.Chara_IECharadata;
   import parameter.Dress_data;
   import parameter.Tab_IEData1;
   import parameter.Tab_IEDataOld;
   
   public class Tab_IEInOut
   {
      
      public static var dataStr:String;
      
      public static var firstCheck:Boolean = false;
      
      public static var systemOutCheck:Boolean = false;
      
      public static var INNameCharaAr:Array;
      
      public static var INNameSystemAr:Array;
      
      public static var SaveUpdateTabName:Array = new Array();
      
      public static var SaveUpdateTabNameSystem:Array = new Array();
      
      public static var HairExCheck:Boolean;
      
      public static var BeltCheck:Boolean;
      
      public static var MarkCheck:Boolean;
      
      public static var LoadCheck:Boolean;
      
      public static var EyeOptionCheck:Boolean;
      
      public static var kobitoCheck:Boolean;
      
      public static var kobitoCheck2:Boolean;
      
      public static var KutuOldData:Array = new Array();
      
      public static var renCheckText:Boolean = false;

      private static var cloneBuf:ByteArray = new ByteArray();
       
      
      private var strPlus:String;
      
      private var charaNum:int;
      
      private var Flag:String;
      
      private var dataTxt:String;
      
      private var charaData:Object;
      
      private var DressCharaData:Object;
      
      private var selectMode:Boolean = false;
      
      private var allSelectOneMode:Boolean = false;
      
      private var firstRead:int = 0;
      
      private var i:int;
      
      private var j:int;
      
      private var n:int;
      
      private var m:int;
      
      private var k:int;
      
      private var p:int;
      
      private var q:int;
      
      private var r:int;
      
      private var s:int;
      
      private var a:int;
      
      private var t:int;
      
      private var u:int;
      
      private var INArray:Array;
      
      private var INArray0:Array;
      
      private var INArray1:Array;
      
      private var INArray2:Array;
      
      private var oldImportFlag:Array;
      
      private var IEName:String;
      
      private var IENameFirst:String;
      
      private var IENameLast:String;
      
      private var IEtabName:String;
      
      private var IETopTabName:String;
      
      private var IEtabParameter:String;
      
      private var menuNum:int;
      
      private var str:String;
      
      private var dataVersion:int;
      
      private var motodataVersion:int;
      
      private var renTabName:String;
      
      private var renCheck:Boolean;
      
      private var periodCheck:String;
      
      private var textArray:Array;
      
      private var textArray2:Array;
      
      private var systemArray:Array;
      
      private var br:RegExp;
      
      private var importCheckFlag:int;
      
      private var storyLoadCheck:Boolean;
      
      private var firstLoadCheck:Boolean;
      
      private var firstVisible:Boolean = true;
      
      private var hukidashiCheck:Boolean = true;
      
      private var hukidashiCheck2:Boolean = true;
      
      private var addName0:String;
      
      private var addNameFirst1:String;
      
      private var addNameLast1:String;

      private var cloned:Object;

      public function Tab_IEInOut(param1:String, param2:String, param3:int)
      {
         this.INArray = new Array();
         this.INArray0 = new Array();
         this.INArray1 = new Array();
         this.INArray2 = new Array();
         this.oldImportFlag = new Array();
         super();
         KutuOldData["Kutu0"] = {
            "_color0":0,
            "_color1":0,
            "_color2":0
         };
         KutuOldData["Kutu1"] = {
            "_color0":0,
            "_color1":0,
            "_color2":0
         };
         kobitoCheck2 = false;
         this.storyLoadCheck = false;
         this.charaNum = param3;
         this.Flag = param1;
         this.dataTxt = param2;
         this.charaData = MenuClass.charaData[this.charaNum];
         this.DressCharaData = Dress_data.DressCharaData[this.charaNum];
         this.dataVersion = 0;
         this.cloned = {};
      }

      public static function execute(param1:String, param2:String, param3:int)
      {
         var inst = new Tab_IEInOut(param1, param2, param3);
         inst.exec();
      }
      
      private function ensureCloned(character: int) {
         if (this.Flag == "IN" && !this.cloned[character]) {
            // trace("IEInOut: cloning character " + character);
            MenuClass.charaOldData[character] = this.clone(MenuClass.charaData[character]);
            this.cloned[character] = true;
         }
      }

      public function exec()
      {
         var bbb:Array = null;
         var charaVisibleCheck:Boolean = false;
         var timeLineCheck:Boolean = false;
         var aaa:Array = null;
         var CharaLoadCheck:Boolean = false;
         var IENameNextCheck:Boolean = false;
         var IENameNext:String = null;
         var swfColorStr:String = null;
         var txtData:String = null;
         if(this.Flag == "IN" || this.Flag == "setIN" || this.Flag == "firstIN" || this.Flag == "textIN" || this.Flag == "hairSet" || this.Flag == "allHairSet" || this.Flag == "allFaceSet" || this.Flag == "allBodySet" || this.Flag == "resetIN")
         {
            Main.undoTimeline.reset();
            if (this.Flag != "IN") {
               MenuClass.charaOldData = this.clone(MenuClass.charaData);
            } else {
               MenuClass.charaOldData = [];
            }

            MenuClass.systemOldData = this.clone(MenuClass.systemData);
            this.textArray = new Array();
            this.textArray2 = new Array();
            this.systemArray = new Array();
            try
            {
               this.textArray = this.dataTxt.split("#/]");
               this.INArray0 = this.textArray[0].split("**");
               this.textArray.shift();
               this.textArray = this.textArray[0].split("/#]");
               this.systemArray = this.textArray[0].split("_");
               this.textArray.shift();
            }
            catch(myError:Error)
            {
            }
            if(this.INArray0.length >= 2)
            {
               this.dataVersion = this.INArray0[0];
               this.motodataVersion = this.dataVersion;
               this.INArray0.shift();
            }
            this.br = /\n/g;
            this.INArray0[0] = this.INArray0[0].replace(this.br,"");
            this.br = /\r/g;
            this.INArray0[0] = this.INArray0[0].replace(this.br,"");
            this.br = /\r\n/g;
            this.INArray0[0] = this.INArray0[0].replace(this.br,"");
            this.INArray0[0] = this.INArray0[0].split(" ").join("");
            this.INArray0[0] = this.INArray0[0].split("　").join("");
            this.INArray0 = this.INArray0[0].split("*");

            try
            {
               this.s = 0;
               while(this.s < this.systemArray.length)
               {
                  this.br = /\n/g;
                  this.systemArray[this.s] = this.systemArray[this.s].replace(this.br,"");
                  this.br = /\r/g;
                  this.systemArray[this.s] = this.systemArray[this.s].replace(this.br,"");
                  this.br = /\r\n/g;
                  this.systemArray[this.s] = this.systemArray[this.s].replace(this.br,"");
                  this.systemArray[this.s] = this.systemArray[this.s].split(" ").join("");
                  this.systemArray[this.s] = this.systemArray[this.s].split("　").join("");
                  ++this.s;
               }
            }
            catch(myError:Error)
            {
            }

            if(this.INArray0.length >= 2)
            {
               if(this.INArray0.length > 2)
               {
                  this.selectMode = true;
               }
               else
               {
                  this.allSelectOneMode = true;
                  this.s = 0;
                  while(this.s <= MenuClass._characterNum)
                  {
                     if (this.Flag == "IN" && !MenuClass.charaData[this.s]["SelectCharacter"]["_visible"][0]) {
                        ++this.s;
                        continue;
                     }
                     MenuClass.charaData[this.s]["SelectCharacter"]["_visible"][0] = false;
                     SetCharaData.execute(this.s,"first",0);
                     ++this.s;
                  }
               }
               this.INArray0.shift();
            }


            if(this.systemArray.length != 0)
            {
               this.dataVersion = this.motodataVersion;
               this.fcSystemIn();
            }

            if(this.INArray0.length == 1)
            {

               if(this.dataVersion >= 28)
               {
                  if(this.INArray0[0].length != 0)
                  {
                     // trace("IEInOut: single import");
                     this.fcIn(0);
                  }
               }
               else if(this.INArray0[0] != "")
               {
                  // trace("IEInOut: single import (old)");
                  this.fcIn_old(0);
               }
            }
            else
            {
               charaVisibleCheck = false;
               this.s = 0;
               while(this.s <= MenuClass._characterNum)
               {
                  if(this.INArray0[this.s] != 0)
                  {
                     charaVisibleCheck = true;
                  }
                  ++this.s;
               }


               this.s = 0;
               while(this.s <= MenuClass._characterNum)
               {

                  this.firstLoadCheck = false;
                  if(this.INArray0[this.s] != undefined)
                  {
                     if(this.dataVersion >= 28)
                     {
                        if(this.INArray0[this.s].length != 0)
                        {
                           this.storyLoadCheck = true;
                           timeLineCheck = true;
                           if(this.Flag == "setIN")
                           {
                              try
                              {
                                 if(MenuClass.StoryBackupData[this.s] == MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][this.s])
                                 {
                                    timeLineCheck = false;
                                 }
                              }
                              catch(myError:Error)
                              {
                                 try
                                 {
                                    if(MenuClass.StoryTimeLineData[MenuClass.BeforePage][s] == MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][s])
                                    {
                                       timeLineCheck = false;
                                    }
                                 }
                                 catch(myError:Error)
                                 {
                                 }
                              }
                           }


                           if(timeLineCheck)
                           {
                              if(this.INArray0[this.s] == 0)
                              {
                                 var prevVisible = MenuClass.charaData[this.s]["SelectCharacter"]["_visible"][0];
                                 MenuClass.charaData[this.s]["SelectCharacter"]["_visible"][0] = false;
                                 if(this.Flag == "firstIN")
                                 {
                                    // trace("IEInOut: hiding character " + this.s + " via ALL code (firstIN)");
                                    this.ensureCloned(this.s);
                                    MenuClass.charaOldData[this.s]["SelectCharacter"]["_visible"][0] = prevVisible;

                                    aaa = Chara_IECharadata.IEdata[this.s].split("**");
                                    this.dataVersion = aaa[0];
                                    aaa.shift();

                                    this.INArray0[this.s] = String(this.clone(aaa));
                                    this.firstVisible = false;
                                    this.fcIn(this.s);
                                 }
                                 else
                                 {
                                    if (this.Flag != "IN" || prevVisible) {
                                       // trace("IEInOut: hiding character " + this.s + " via ALL code");
                                       this.ensureCloned(this.s);
                                       MenuClass.charaOldData[this.s]["SelectCharacter"]["_visible"][0] = prevVisible;
                                       SetCharaData.execute(this.s,"first",0);
                                    }
                                 }

                                 if(MenuClass._nowCharaNum == MenuClass._characterNum)
                                 {
                                    new Tab_CloseSelectMove();
                                 }
                                 else if(MenuClass._nowCharaNum == this.s)
                                 {
                                    if(charaVisibleCheck)
                                    {
                                       MenuClass._nowCharaNum += 1;
                                    }
                                 }
                              }
                              else
                              {
                                 // trace("IEInOut: importing data for character " + this.s + " via ALL code");
                                 this.dataVersion = this.motodataVersion;
                                 this.firstVisible = true;
                                 this.fcIn(this.s);
                              }
                           }
                        }
                     }
                     else
                     {
                        // trace("IEInOut: importing data for character " + this.s + " (old)");
                        this.fcIn_old(this.s);
                     }
                  }
                  else
                  {
                     if (this.Flag != "IN" || MenuClass.charaData[this.s]["SelectCharacter"]["_visible"][0]) {
                        // trace("IEInOut: resetting character " + this.s + "?");
                        this.ensureCloned(this.s);
                        MenuClass.charaData[this.s]["SelectCharacter"]["_visible"][0] = false;
                        SetCharaData.execute(this.s,"first",0);
                     }
                  }
                  ++this.s;
               }
            }


            if(this.Flag == "textIN")
            {
               MenuClass.firstLoadEmotionCount = 1;
            }

            // MenuClass.menuCustomResetNum = this.clone(Dress_data.menuCustomNum);
            MenuClass.StoryBackupData = null;
            MenuClass.charaOldData = null;
            MenuClass.systemOldData = null;
         }
         else if(this.Flag == "OUT" || this.Flag == "OUTTXT")
         {
            this.strPlus = "";
            CharaLoadCheck = false;
            this.n = Tab_IEData1.IEGroup.length;
            this.i = 0;
            while(this.i <= this.n)
            {
               if(MenuClass.MY_MENUNAME[this.i + 4][5] == "chara")
               {
                  this.p = Tab_IEData1.IEGroup[this.i].length - 1;
                  this.strPlus = this.strPlus;
                  if(MenuClass.exportCheck[this.i] || this.Flag == "OUTTXT")
                  {
                     this.periodCheck = this.strPlus.substring(this.strPlus.length - 1,this.strPlus.length);
                     if(this.periodCheck == ".")
                     {
                        this.strPlus = this.strPlus.substring(0,this.strPlus.length - 1) + "_";
                     }
                     this.k = 0;
                     while(this.k <= this.p)
                     {
                        this.IENameFirst = Tab_IEData1.IEGroup[this.i][this.k].substring(0,1);
                        IENameNextCheck = false;
                        IENameNext = Tab_IEData1.IEGroup[this.i][this.k].substring(1,2);
                        if(IENameNext == "0" || IENameNext == "1" || IENameNext == "2" || IENameNext == "3" || IENameNext == "4" || IENameNext == "5" || IENameNext == "6" || IENameNext == "7" || IENameNext == "8" || IENameNext == "9")
                        {
                           IENameNextCheck = true;
                        }
                        this.IEName = Tab_IEData1.IEGroup[this.i][this.k];
                        this.m = Tab_IEData1.IEData[this.IEName].length - 1;
                        this.strPlus += this.IEName;
                        this.IETopTabName = Tab_IEData1.IEData[this.IEName][0][0];
                        this.j = 0;
                        for(; this.j <= this.m; ++this.j)
                        {
                           this.IEtabName = Tab_IEData1.IEData[this.IEName][this.j][0];
                           this.IEtabParameter = Tab_IEData1.IEData[this.IEName][this.j][1];
                           if(IENameNextCheck && (this.IENameFirst == "t" || this.IENameFirst == "s" || this.IENameFirst == "n" || this.IENameFirst == "m" || this.IENameFirst == "r" || this.IENameFirst == "f"))
                           {
                              // what if we change the substring here?
                              this.IENameLast = String(int(Tab_IEData1.IEGroup[this.i][this.k].substring(1,3)));

                              if(this.IENameFirst == "t")
                              {
                                 this.renTabName = "MarkPlus";
                              }
                              else if(this.IENameFirst == "s")
                              {
                                 this.renTabName = "BeltPlus";
                              }
                              else if(this.IENameFirst == "n")
                              {
                                 this.renTabName = "HairpinPlus";
                              }
                              else if(this.IENameFirst == "r")
                              {
                                 this.renTabName = "HairExPlus";
                              }
                              else if(this.IENameFirst == "m")
                              {
                                 this.renTabName = "RibonPlus";
                              }
                              else if(this.IENameFirst == "f")
                              {
                                 this.renTabName = "CharaLoadPlus";
                                 CharaLoadCheck = true;
                              }
                              if(this.charaData[this.renTabName]["_visible"][this.IENameLast])
                              {
                                 if(this.j == this.m)
                                 {
                                    this.strPlus = this.strPlus + this.charaData[this.IEtabName][this.IEtabParameter] + "_";
                                 }
                                 else if(this.IEtabParameter == "_swfColor")
                                 {
                                    swfColorStr = "";
                                    this.a = 0;
                                    while(this.a < this.charaData[this.IEtabName]["_swfColor"].length)
                                    {
                                       if(this.charaData[this.IEtabName]["_swfColor"][this.a] != "0" && this.charaData[this.IEtabName]["_swfColor"][this.a] != undefined)
                                       {
                                          swfColorStr += this.charaData[this.IEtabName]["_swfColor"][this.a];
                                       }
                                       ++this.a;
                                    }
                                    if(swfColorStr == "")
                                    {
                                       swfColorStr = "0";
                                    }
                                    this.strPlus = this.strPlus + swfColorStr + ".";
                                 }
                                 else
                                 {
                                    this.strPlus = this.strPlus + this.charaData[this.IEtabName][this.IEtabParameter] + ".";
                                 }
                              }
                              else if(this.j == this.m)
                              {
                                 this.strPlus = this.strPlus.substring(0,this.strPlus.length - 3);
                                 this.renCheck = false;
                                 if(this.renTabName == "RibonPlus")
                                 {
                                    this.a = 0;
                                    while(this.a <= Main.RibonhukusuuNum)
                                    {
                                       if(this.charaData[this.renTabName]["_visible"][this.a])
                                       {
                                          this.renCheck = true;
                                       }
                                       ++this.a;
                                    }
                                    if(this.IENameLast == String(Main.RibonhukusuuNum) && this.renCheck == false)
                                    {
                                       this.strPlus = this.strPlus + this.IENameFirst + "00_";
                                    }
                                 }
                                 else
                                 {
                                    this.a = 0;
                                    while(this.a <= Main.hukusuuNum)
                                    {
                                       if(this.charaData[this.renTabName]["_visible"][this.a])
                                       {
                                          this.renCheck = true;
                                       }
                                       ++this.a;
                                    }
                                    if(this.IENameLast == String(Main.hukusuuNum) && this.renCheck == false)
                                    {
                                       this.strPlus = this.strPlus + this.IENameFirst + "00_";
                                    }
                                 }
                              }
                           }
                           else if(this.j == this.m)
                           {
                              if(this.IEtabParameter == "_visible")
                              {
                                 this.visibleCheck(this.IEtabName,"_",this.charaData);
                              }
                              else if(this.IETopTabName == "EmotionOption")
                              {
                                 this.reversalCheck(this.IEtabName,"_",this.charaData);
                              }
                              else if(this.charaData[this.IETopTabName]["_visible"] == undefined || this.charaData[this.IETopTabName]["_visible"][0])
                              {
                                 if(this.IEtabParameter == "_check")
                                 {
                                    this.checkCheck(this.IEtabName,"_",this.charaData);
                                 }
                                 else if(this.IEtabParameter == "_reversal")
                                 {
                                    this.reversalCheck(this.IEtabName,"_",this.charaData);
                                 }
                                 else if(this.IEtabParameter == "_meter")
                                 {
                                    this.strPlus = this.strPlus + Math.floor(this.charaData[this.IEtabName][this.IEtabParameter]) + "_";
                                 }
                                 else
                                 {
                                    this.strPlus = this.strPlus + this.charaData[this.IEtabName][this.IEtabParameter] + "_";
                                 }
                              }
                              else
                              {
                                 this.strPlus += "_";
                              }
                           }
                           else if(this.IEtabParameter == "_visible")
                           {
                              this.visibleCheck(this.IEtabName,".",this.charaData);
                           }
                           else
                           {
                              try
                              {
                                 if(this.charaData[this.IETopTabName]["_visible"] == undefined || this.charaData[this.IETopTabName]["_visible"][0])
                                 {
                                    if(this.IEtabParameter == "_check")
                                    {
                                       this.checkCheck(this.IEtabName,".",this.charaData);
                                    }
                                    else if(this.IEtabParameter == "_reversal")
                                    {
                                       this.reversalCheck(this.IEtabName,".",this.charaData);
                                    }
                                    else if(this.IEtabParameter == "_meter")
                                    {
                                       this.strPlus = this.strPlus + Math.floor(this.charaData[this.IEtabName][this.IEtabParameter]) + ".";
                                    }
                                    else
                                    {
                                       this.strPlus = this.strPlus + this.charaData[this.IEtabName][this.IEtabParameter] + ".";
                                    }
                                 }
                              }
                              catch(myError:Error)
                              {
                                 continue;
                              }
                           }
                        }
                        ++this.k;
                     }
                  }
               }
               ++this.i;
            }
            this.strPlus = this.strPlus.substring(0,this.strPlus.length - 1);
            if (Main.version >= 107) {
               this.strPlus += "_fv" + Main.minor_version + "." + Main.alpha_version;
            }
            if(CharaLoadCheck)
            {
               this.k = 0;
               while(this.k <= Main.hukusuuNum)
               {
                  if(this.charaData["CharaLoadPlus"]["_visible"][this.k])
                  {
                     this.strPlus = this.strPlus + "/#]" + this.charaData["CharaLoadAdd" + this.k]["_name"];
                  }
                  ++this.k;
               }
            }
            if((MenuClass._nowTargetMode == "Select" || MenuClass._nowTargetMode == "SelectPlus") && this.Flag == "OUT")
            {
               dataStr = String(Main.version) + "**" + this.strPlus;
            }
            else
            {
               if(firstCheck)
               {
                  dataStr = String(Main.version) + "***" + this.strPlus;
               }
               else
               {
                  dataStr = dataStr + "*" + this.strPlus;
               }
               MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][this.charaNum] = this.strPlus;
               firstCheck = false;
            }
         }
         else if(this.Flag == "CharaNoData")
         {
            dataStr = String(Main.version) + "***0";
            firstCheck = false;
         }
         else if(this.Flag == "FreeHand")
         {
            this.fcSystemOut(30);
         }
         else if(this.Flag == "FreeRibon")
         {
            this.fcSystemOut(31);
         }
         else if(this.Flag == "FreeBelt")
         {
            this.fcSystemOut(32);
         }
         else if(this.Flag == "FreeChair")
         {
            this.fcSystemOut(33);
         }
         else if(this.Flag == "FreeFlag")
         {
            this.fcSystemOut(34);
         }
         else if(this.Flag == "FreeHukidashi")
         {
            this.fcSystemOut(35);
         }
         else if(this.Flag == "Background")
         {
            this.fcSystemOut(36);
         }
         else if(this.Flag == "txt")
         {
            this.fcSystemOut(37);
         }
         else if(this.Flag == "Loadmenu")
         {
            this.fcSystemOut(38);
         }
         else if(this.Flag == "SystemOption")
         {
            this.fcSystemOut(39);
         }
         else if(this.Flag == "Tool")
         {
            this.fcSystemOut(40);
         }
         else if(this.Flag == "OUTText")
         {
            this.strPlus = "";
            this.k = 0;
            while(this.k <= 9)
            {
               if(MenuClass.systemData["txtFieldmenu"]["_visible"][this.k])
               {
                  this.strPlus = this.strPlus + "/#]" + MenuClass.systemData["FontType" + this.k]["_font"];
                  txtData = MenuClass.systemData["FontType" + this.k]["_txt"].replace(/\r|\n|\r\n/gi,"<br>");
                  this.strPlus = this.strPlus + "/#]" + txtData;
               }
               ++this.k;
            }
            dataStr = dataStr + "" + this.strPlus;
         }
         else if(this.Flag == "LoadmenuText")
         {
            this.strPlus = "";
            this.k = 0;
            while(this.k <= 98)
            {
               if(MenuClass.systemData["LoadPlus"]["_visible"][this.k])
               {
                  this.strPlus = this.strPlus + "/#]" + MenuClass.systemData["LoadScale" + this.k]["_name"];
               }
               ++this.k;
            }
            dataStr = dataStr + "" + this.strPlus;
         }
         else if(this.Flag == "OUTLast")
         {
            if(MenuClass.quickSaveFlag[0])
            {
               MenuClass.quickSaveData[0] = dataStr;
            }
            else if(MenuClass.quickSaveFlag[1])
            {
               MenuClass.quickSaveData[1] = dataStr;
            }
            else if(MenuClass.quickSaveFlag[2])
            {
               MenuClass.quickSaveData[2] = dataStr;
            }
            else
            {
               Tab_TextSaveBtn.txtSaveData = dataStr;
               if(MenuClass._nowWindowName == "tabExportWindow")
               {
                  MenuClass.tabMenuAdd["tabExportWindow"].myTa.text = dataStr;

                  /* Is this really necessary? Could just use dataStr.length here */
                  var tmp = new ByteArray();
                  tmp.writeUTFBytes(dataStr);

                  var dataLen = tmp.length;
                  if (dataLen < 1000) {
                     MenuClass.TxtCountArea.num1.text = "Size: " + dataLen + " B";
                  } else if (dataLen < 1000000) {
                     MenuClass.TxtCountArea.num1.text = "Size: " + (dataLen / 1000).toFixed(2) + " KB";
                  } else {
                     // Highly unlikely, but...
                     MenuClass.TxtCountArea.num1.text = "Size: " + (dataLen / 1000000).toFixed(2) + " MB";
                  }
               }
               if((MenuClass._nowTargetMode == "Select" || MenuClass._nowTargetMode == "SelectPlus") && this.Flag == "OUTLast")
               {
                  if(MenuClass._nowHeaderName == "Story" || KeyPressClass.storyShortcutCheck)
                  {
                     MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9] = dataStr;
                  }
               }
               else
               {
                  MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9] = dataStr;
               }
            }
         }
      } 
      
      private function fcSystemOut(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         this.strPlus = "";
         this.p = Tab_IEData1.IEGroup[param1].length - 1;
         this.strPlus = this.strPlus;
         this.k = 0;
         while(this.k <= this.p)
         {
            _loc2_ = true;
            this.IENameFirst = Tab_IEData1.IEGroup[param1][this.k].substring(0,1);
            _loc3_ = false;
            if((_loc4_ = Tab_IEData1.IEGroup[param1][this.k].substring(1,2)) == "0" || _loc4_ == "1" || _loc4_ == "2" || _loc4_ == "3" || _loc4_ == "4" || _loc4_ == "5" || _loc4_ == "6" || _loc4_ == "7" || _loc4_ == "8" || _loc4_ == "9")
            {
               _loc3_ = true;
            }
            this.IEName = Tab_IEData1.IEGroup[param1][this.k];
            this.m = Tab_IEData1.IEData[this.IEName].length - 1;
            this.strPlus += this.IEName;
            this.IETopTabName = Tab_IEData1.IEData[this.IEName][0][0];
            this.j = 0;
            while(this.j <= this.m)
            {
               this.IEtabName = Tab_IEData1.IEData[this.IEName][this.j][0];
               this.IEtabParameter = Tab_IEData1.IEData[this.IEName][this.j][1];
               this.hukidashiCheck = true;
               this.hukidashiCheck2 = true;
               if(_loc3_ && (this.IENameFirst == "a" || this.IENameFirst == "b" || this.IENameFirst == "c" || this.IENameFirst == "d" || this.IENameFirst == "w" || this.IENameFirst == "x" || this.IENameFirst == "e" || this.IENameFirst == "y" || this.IENameFirst == "z" || this.IENameFirst == "v"))
               {
                  if(this.IENameFirst == "a")
                  {
                     this.renTabName = "FreeHandPlus";
                  }
                  else if(this.IENameFirst == "b")
                  {
                     this.renTabName = "FreeHandItem";
                  }
                  else if(this.IENameFirst == "c")
                  {
                     this.renTabName = "FreeHandVest";
                  }
                  else if(this.IENameFirst == "d")
                  {
                     this.renTabName = "FreeHandWristband";
                  }
                  else if(this.IENameFirst == "w")
                  {
                     this.renTabName = "FreeRibonPlus";
                  }
                  else if(this.IENameFirst == "x")
                  {
                     this.renTabName = "FreeBeltPlus";
                  }
                  else if(this.IENameFirst == "e")
                  {
                     this.renTabName = "FreeChairPlus";
                  }
                  else if(this.IENameFirst == "y")
                  {
                     this.renTabName = "FreeFlagPlus";
                  }
                  else if(this.IENameFirst == "z")
                  {
                     this.renTabName = "FreeHukidashiPlus";
                  }
                  else if(this.IENameFirst == "v")
                  {
                     this.renTabName = "LoadPlus";
                  }
                  this.IENameLast = String(int(Tab_IEData1.IEGroup[param1][this.k].substring(1,4)));
                  _loc5_ = false;
                  if(this.IENameFirst == "b" || this.IENameFirst == "c" || this.IENameFirst == "d")
                  {
                     if(MenuClass.systemData["FreeHandPlus"]["_visible"][this.IENameLast])
                     {
                        _loc5_ = MenuClass.systemData[this.renTabName + this.IENameLast]["_visible"][0];
                     }
                     else
                     {
                        _loc5_ = false;
                     }
                  }
                  else
                  {
                     _loc5_ = MenuClass.systemData[this.renTabName]["_visible"][this.IENameLast];
                  }
                  if(this.IEtabParameter == "_visible")
                  {
                     _loc6_ = 0;
                     if(MenuClass.systemData[this.IEtabName][this.IEtabParameter])
                     {
                        _loc6_ = 1;
                     }
                  }
                  if(_loc5_)
                  {
                     if(this.renTabName == "LoadPlus" && this.IEtabParameter == "_check")
                     {
                        this.checkCheck(this.IEtabName,".",MenuClass.systemData);
                     }
                     else if(this.IEtabParameter == "_swfMenu")
                     {
                        this.strPlus += MenuClass.systemData[this.IEtabName]["_swfMenu"];
                     }
                     else if(this.IEtabParameter == "_swfSen")
                     {
                        this.strPlus = this.strPlus + "." + MenuClass.systemData[this.IEtabName]["_swfSen"];
                     }
                     else if(this.IEtabParameter == "_swfColor")
                     {
                        _loc7_ = "";
                        this.a = 0;
                        while(this.a < MenuClass.systemData[this.IEtabName]["_swfColor"].length)
                        {
                           if(MenuClass.systemData[this.IEtabName]["_swfColor"][this.a] != "0" && MenuClass.systemData[this.IEtabName]["_swfColor"][this.a] != undefined)
                           {
                              _loc7_ += MenuClass.systemData[this.IEtabName]["_swfColor"][this.a];
                           }
                           ++this.a;
                        }
                        if(_loc7_ == "")
                        {
                           _loc7_ = "0";
                        }
                        this.strPlus = this.strPlus + "." + _loc7_ + ".";
                     }
                     else
                     {
                        if((_loc8_ = this.IEtabName.substring(0,19)) == "FreeHukidashiScaleB")
                        {
                           if(!MenuClass.systemData["FreeHukidashiExtra" + this.IENameLast]["_visible"][0])
                           {
                              _loc2_ = false;
                              this.strPlus = this.strPlus + MenuClass.systemData[this.IEtabName][this.IEtabParameter] + "_";
                           }
                        }
                        if(_loc2_)
                        {
                           if(this.j == this.m)
                           {
                              this.strPlus = this.strPlus + MenuClass.systemData[this.IEtabName][this.IEtabParameter] + "_";
                           }
                           else if(this.IEtabParameter == "_visible")
                           {
                              this.strPlus = this.strPlus + _loc6_ + ".";
                           }
                           else
                           {
                              this.strPlus = this.strPlus + MenuClass.systemData[this.IEtabName][this.IEtabParameter] + ".";
                           }
                        }
                     }
                  }
                  else if(this.j == this.m)
                  {
                     this.strPlus = this.strPlus.substring(0,this.strPlus.length - 3);
                     this.renCheck = false;
                     this.a = 0;
                     while(this.a <= 98)
                     {
                        if(this.IENameFirst == "b" || this.IENameFirst == "c" || this.IENameFirst == "d")
                        {
                           if(MenuClass.systemData[this.renTabName + this.a]["_visible"][0])
                           {
                              this.renCheck = true;
                           }
                        }
                        else if(MenuClass.systemData[this.renTabName]["_visible"][this.a])
                        {
                           this.renCheck = true;
                        }
                        ++this.a;
                     }
                     if(this.IENameLast == "98" && this.renCheck == false)
                     {
                        this.strPlus = this.strPlus + this.IENameFirst + "00_";
                     }
                  }
               }
               else if(this.IEName == "u0" || this.IEName == "u1" || this.IEName == "u2" || this.IEName == "u3" || this.IEName == "u4" || this.IEName == "u5" || this.IEName == "u6" || this.IEName == "u7" || this.IEName == "u8" || this.IEName == "u9")
               {
                  this.IENameLast = Tab_IEData1.IEGroup[param1][this.k].substring(1,2);
                  if(this.IENameFirst == "u")
                  {
                     this.renTabName = "txtFieldmenu";
                  }
                  if(MenuClass.systemData[this.renTabName]["_visible"][this.IENameLast])
                  {
                     if(this.IEtabParameter == "_check")
                     {
                        this.checkCheck(this.IEtabName,"_",MenuClass.systemData);
                     }
                     else if(this.j == this.m)
                     {
                        this.strPlus = this.strPlus + MenuClass.systemData[this.IEtabName][this.IEtabParameter] + "_";
                     }
                     else
                     {
                        this.strPlus = this.strPlus + MenuClass.systemData[this.IEtabName][this.IEtabParameter] + ".";
                     }
                  }
                  else if(this.j == this.m)
                  {
                     this.strPlus = this.strPlus.substring(0,this.strPlus.length - 2);
                     this.renCheck = false;
                     this.a = 0;
                     while(this.a <= 9)
                     {
                        if(MenuClass.systemData[this.renTabName]["_visible"][this.a])
                        {
                           this.renCheck = true;
                        }
                        ++this.a;
                     }
                     if(this.IENameLast == "9" && this.renCheck == false)
                     {
                        this.strPlus = this.strPlus + this.IENameFirst + "0_";
                     }
                  }
               }
               else if(this.j == this.m)
               {
                  if(this.IEtabParameter == "_visible")
                  {
                     this.visibleCheck(this.IEtabName,"_",MenuClass.systemData);
                  }
                  else if (this.IEName == "cc" || this.IEName == "cd" || this.IEName == "ce" || this.IEName == "cf" || this.IEName == "cg" || this.IEName == "ch")
                  {
                     ++this.j;
                     continue;
                  }
                  else if(MenuClass.systemData[this.IETopTabName]["_visible"] == undefined || MenuClass.systemData[this.IETopTabName]["_visible"][0])
                  {
                     if(this.IEtabParameter == "_check")
                     {
                        this.checkCheck(this.IEtabName,"_",MenuClass.systemData);
                     }
                     else if(this.IEtabParameter == "_reversal")
                     {
                        this.reversalCheck(this.IEtabName,"_",MenuClass.systemData);
                     }
                     else if(this.IEtabParameter == "_meter")
                     {
                        this.strPlus = this.strPlus + Math.floor(MenuClass.systemData[this.IEtabName][this.IEtabParameter]) + "_";
                     }
                     else if(this.IEtabName == "Zoom" && this.IEtabParameter == "_y")
                     {
                        this.strPlus = this.strPlus + MenuClass.systemData[this.IEtabName][this.IEtabParameter] * -1 + "_";
                     }
                     else
                     {
                        this.strPlus = this.strPlus + MenuClass.systemData[this.IEtabName][this.IEtabParameter] + "_";
                     }
                  }
                  else
                  {
                     this.strPlus += "_";
                  }
               }
               else if(this.IEtabParameter == "_visible")
               {
                  this.visibleCheck(this.IEtabName,".",MenuClass.systemData);
               }
               else if (this.IEName == "cc" || this.IEName == "cd" || this.IEName == "ce" || this.IEName == "cf" || this.IEName == "cg" || this.IEName == "ch")
               {
                  ++this.j;
                  continue;
               }
               else if(MenuClass.systemData[this.IETopTabName]["_visible"] == undefined || MenuClass.systemData[this.IETopTabName]["_visible"][0])
               {
                  if(this.IEtabParameter == "_check")
                  {
                     this.checkCheck(this.IEtabName,".",MenuClass.systemData);
                  }
                  else if(this.IEtabParameter == "_reversal")
                  {
                     this.reversalCheck(this.IEtabName,".",MenuClass.systemData);
                  }
                  else if(this.IEtabParameter == "_meter")
                  {
                     this.strPlus = this.strPlus + Math.floor(MenuClass.systemData[this.IEtabName][this.IEtabParameter]) + ".";
                  }
                  else if(this.IEtabName == "Zoom" && this.IEtabParameter == "_x")
                  {
                     this.strPlus = this.strPlus + MenuClass.systemData[this.IEtabName][this.IEtabParameter] * -1 + ".";
                  }
                  else
                  {
                     this.strPlus = this.strPlus + MenuClass.systemData[this.IEtabName][this.IEtabParameter] + ".";
                  }
               }
               ++this.j;
            }
            ++this.k;
         }
         this.strPlus = this.strPlus.substring(0,this.strPlus.length - 1);
         if(systemOutCheck)
         {
            dataStr = dataStr + "_" + this.strPlus;
         }
         else
         {
            if (Main.version >= 107) {
               dataStr = dataStr + "#/]fv" + Main.minor_version + "." + Main.alpha_version;
               if (this.strPlus.length > 0) {
                  dataStr = dataStr + "_" + this.strPlus;
               }
            } else {
               dataStr = dataStr + "#/]" + this.strPlus;
            }
            systemOutCheck = true;
         }
      }
      
      private function fcIn(param1:int) : void
      {

         var IENameNextCheck:Boolean = false;
         var IENameNext:String = null;
         var sliceData:Array = null;
         var sliceData2:Array = null;
         var loadNameCheckCount:int = 0;
         var s:int = param1;
         SaveUpdateTabName = new Array();
         INNameCharaAr = new Array();
         if(this.selectMode)
         {
            this.ensureCloned(s);
            MenuClass.charaData[s]["SelectCharacter"]["_visible"][0] = true;
         }
         else
         {
            this.ensureCloned(this.charaNum);
            MenuClass.charaData[this.charaNum]["SelectCharacter"]["_visible"][0] = true;
         }
         this.INArray = new Array();
         this.INArray2 = new Array();
         if(this.selectMode)
         {
            this.charaData = MenuClass.charaData[s];
            this.DressCharaData = Dress_data.DressCharaData[s];
            this.charaNum = s;
         }
         this.ensureCloned(this.charaNum);
         var itemBeforeCheck:Array = new Array(0,0);
         var itemBeforeHandType:Array = new Array(0,0);
         var itemCheck:Array = new Array(0,0);
         if(MenuClass.charaData[this.charaNum]["Item0"]["_visible"][0])
         {
            itemBeforeCheck[0] = 1;
            itemBeforeHandType[0] = MenuClass.charaData[this.charaNum]["LeftHand"]["_menu"];
         }
         if(MenuClass.charaData[this.charaNum]["Item1"]["_visible"][0])
         {
            itemBeforeCheck[1] = 1;
            itemBeforeHandType[1] = MenuClass.charaData[this.charaNum]["RightHand"]["_menu"];
         }


         var CharaLoadName:Array = new Array();

         try
         {
            CharaLoadName = this.INArray0[s].split("/#]");
            this.INArray0[s] = CharaLoadName[0];
            CharaLoadName.shift();
         }
         catch(myError:Error)
         {
         }

         this.INArray = this.INArray0[s].split("_");
         this.n = this.INArray.length - 1;
         var renCheckRibon:Boolean = false;
         var renCheckRibonAr:Array = new Array();
         var renCheckHairpin:Boolean = false;
         var renCheckHairpinAr:Array = new Array();
         var renCheckHairEx:Boolean = false;
         var renCheckHairExAr:Array = new Array();
         var renCheckBelt:Boolean = false;
         var renCheckBeltAr:Array = new Array();
         var renCheckMark:Boolean = false;
         var renCheckMarkAr:Array = new Array();
         var renCheckLoad:Boolean = false;
         var renCheckLoadAr:Array = new Array();
         this.i = 0;
         
         while(this.i <= Main.hukusuuNum)
         {
            renCheckHairExAr.push(false);
            renCheckHairpinAr.push(false);
            renCheckBeltAr.push(false);
            renCheckMarkAr.push(false);
            renCheckLoadAr.push(false);
            ++this.i;
         }
         this.i = 0;
         while(this.i <= Main.RibonhukusuuNum)
         {
            renCheckRibonAr.push(false);
            ++this.i;
         }
         HairExCheck = false;
         BeltCheck = false;
         MarkCheck = false;
         LoadCheck = false;
         EyeOptionCheck = false;
         this.i = 0;

         MenuClass.charaData[this.charaNum]["SourceVersion"]["_minor"] = 0;
         MenuClass.charaData[this.charaNum]["SourceVersion"]["_alpha"] = 0;

         while(this.i <= this.n)
         {


            this.IENameFirst = this.INArray[this.i].substring(0,1);
            IENameNextCheck = false;
            IENameNext = this.INArray[this.i].substring(1,2);
            if(IENameNext == "0" || IENameNext == "1" || IENameNext == "2" || IENameNext == "3" || IENameNext == "4" || IENameNext == "5" || IENameNext == "6" || IENameNext == "7" || IENameNext == "8" || IENameNext == "9")
            {
               IENameNextCheck = true;
            }
            if(this.IENameFirst == "r" && IENameNextCheck && this.dataVersion >= 42)
            {
               this.IEName = this.INArray[this.i].substring(0,3);
               this.str = this.INArray[this.i].substring(3,this.INArray[this.i].length);
               this.IENameLast = this.IEName.substring(1,3);
               this.IENameLast = String(int(this.IENameLast));
            }
            else if(this.IENameFirst == "r" && IENameNextCheck && this.dataVersion <= 41)
            {
               this.IEName = this.INArray[this.i].substring(0,1);
               this.str = this.INArray[this.i].substring(2,this.INArray[this.i].length);
               this.IENameLast = this.INArray[this.i].substring(1,2);
               this.IEName = this.IEName + "0" + this.IENameLast;
            }
            else if(this.IENameFirst == "m" && IENameNextCheck && this.dataVersion >= 43)
            {
               this.IEName = this.INArray[this.i].substring(0,3);
               this.str = this.INArray[this.i].substring(3,this.INArray[this.i].length);
               this.IENameLast = this.IEName.substring(1,3);
               this.IENameLast = String(int(this.IENameLast));
            }
            else if(this.IENameFirst == "m" && IENameNextCheck && this.dataVersion <= 42)
            {
               this.IEName = this.INArray[this.i].substring(0,1);
               this.str = this.INArray[this.i].substring(2,this.INArray[this.i].length);
               this.IENameLast = this.INArray[this.i].substring(1,2);
               this.IEName = this.IEName + "0" + this.IENameLast;
            }
            else if(this.IENameFirst == "n" && IENameNextCheck && this.dataVersion >= 44)
            {
               this.IEName = this.INArray[this.i].substring(0,3);
               this.str = this.INArray[this.i].substring(3,this.INArray[this.i].length);
               this.IENameLast = this.IEName.substring(1,3);
               this.IENameLast = String(int(this.IENameLast));
            }
            else if(this.IENameFirst == "n" && IENameNextCheck && this.dataVersion <= 43)
            {
               this.IEName = this.INArray[this.i].substring(0,1);
               this.str = this.INArray[this.i].substring(2,this.INArray[this.i].length);
               this.IENameLast = this.INArray[this.i].substring(1,2);
               this.IEName = this.IEName + "0" + this.IENameLast;
            }
            else if(this.IENameFirst == "s" && IENameNextCheck && this.dataVersion >= 44)
            {
               this.IEName = this.INArray[this.i].substring(0,3);
               this.str = this.INArray[this.i].substring(3,this.INArray[this.i].length);
               this.IENameLast = this.IEName.substring(1,3);
               this.IENameLast = String(int(this.IENameLast));
            }
            else if(this.IENameFirst == "s" && IENameNextCheck && this.dataVersion <= 43)
            {
               this.IEName = this.INArray[this.i].substring(0,1);
               this.str = this.INArray[this.i].substring(2,this.INArray[this.i].length);
               this.IENameLast = this.INArray[this.i].substring(1,2);
               this.IEName = this.IEName + "0" + this.IENameLast;
            }
            else if(this.IENameFirst == "t" && IENameNextCheck && this.dataVersion >= 45)
            {
               this.IEName = this.INArray[this.i].substring(0,3);
               this.str = this.INArray[this.i].substring(3,this.INArray[this.i].length);
               this.IENameLast = this.IEName.substring(1,3);
               this.IENameLast = String(int(this.IENameLast));
            }
            else if(this.IENameFirst == "t" && IENameNextCheck && this.dataVersion <= 44)
            {
               this.IEName = this.INArray[this.i].substring(0,1);
               this.str = this.INArray[this.i].substring(2,this.INArray[this.i].length);
               this.IENameLast = this.INArray[this.i].substring(1,2);
               this.IEName = this.IEName + "0" + this.IENameLast;
            }
            else if(this.IENameFirst == "f" && IENameNextCheck && this.dataVersion >= 67)
            {
               this.IEName = this.INArray[this.i].substring(0,3);
               this.str = this.INArray[this.i].substring(3,this.INArray[this.i].length);
               this.IENameLast = this.IEName.substring(1,3);
               this.IENameLast = String(int(this.IENameLast));
            }
            else
            {
               this.IEName = this.INArray[this.i].substring(0,2);
               this.str = this.INArray[this.i].substring(2,this.INArray[this.i].length);
               this.IENameLast = this.IEName.substring(1,2);
            }



            this.INArray2[this.IEName] = this.str.split(".");
            if(this.IEName == "cb")
            {
               if(this.str == "0")
               {
                  kobitoCheck = false;
               }
               else
               {
                  kobitoCheck = true;
               }
               kobitoCheck2 = true;
            }
            else
            {
               if(this.IENameFirst == "s" && this.dataVersion == 80 && this.INArray2[this.IEName].length == 17)
               {
                  sliceData = this.INArray2[this.IEName].slice(0,9);
                  sliceData2 = this.INArray2[this.IEName].slice(10,17);
                  this.INArray2[this.IEName] = sliceData.concat(sliceData2);
               }

               if (!(this.IEName in Tab_IEData1.IEData) && this.Flag == "IN") {
                  trace("skipping unknown import data: " + this.IEName);
                  ++this.i;
                  continue;
               }

               this.IETopTabName = Tab_IEData1.IEData[this.IEName][0][0];
               this.m = Tab_IEData1.IEData[this.IEName].length - 1;
               this.j = 0;

               var prevMenu = {};

               while(this.j <= this.m)
               {
                  this.t = MenuClass.importCheck.length - 1;
                  var importEnabled = false;

                  for (var u=0; u < MenuClass.importCheck.length; u++) {
                     if (!MenuClass.importCheck[u]) {
                        continue;
                     }

                     for (var j=0; j < Tab_IEData1.IEGroup[u].length; j++) {
                        if (Tab_IEData1.IEGroup[u][j] == this.IEName) {
                           importEnabled = true;
                           break;
                        }
                     }

                     if (importEnabled) break;
                  }

                  // this.u = 0;
                  // while(this.u <= this.t)
                  // {
                  //    if(this.IEName == Tab_IEData1.IEGroup[this.u][this.j])
                  //    {
                  //       this.importCheckFlag = this.u;
                  //    }
                  //    ++this.u;
                  // }

                  if(importEnabled || this.Flag != "IN")
                  {


                     SaveUpdateTabName.push(this.IETopTabName);
                     this.IEtabName = Tab_IEData1.IEData[this.IEName][this.j][0];
                     this.IEtabParameter = Tab_IEData1.IEData[this.IEName][this.j][1];
                     INNameCharaAr.push(this.IEtabName);

                     if (("_menu" in this.charaData[this.IEtabName]) && !(this.IEtabName in prevMenu)) {
                        prevMenu[this.IEtabName] = this.charaData[this.IEtabName]["_menu"];
                     }

                     if(this.IETopTabName != "Xmove" || this.selectMode || this.allSelectOneMode)
                     {
                        if(this.IENameFirst == "m" && IENameNextCheck)
                        {
                           renCheckRibon = true;
                           if(this.INArray2[this.IEName].length != 1)
                           {
                              renCheckRibonAr[this.IENameLast] = true;
                           }
                        }
                        else if(this.IENameFirst == "n" && IENameNextCheck)
                        {
                           renCheckHairpin = true;
                           if(this.INArray2[this.IEName].length != 1)
                           {
                              renCheckHairpinAr[this.IENameLast] = true;
                           }
                        }
                        else if(this.IENameFirst == "r" && IENameNextCheck)
                        {
                           renCheckHairEx = true;
                           if(this.INArray2[this.IEName].length != 1)
                           {
                              renCheckHairExAr[this.IENameLast] = true;
                              HairExCheck = true;
                           }
                        }
                        else if(this.IENameFirst == "s" && IENameNextCheck)
                        {
                           renCheckBelt = true;
                           if(this.INArray2[this.IEName].length != 1)
                           {
                              renCheckBeltAr[this.IENameLast] = true;
                              BeltCheck = true;
                           }
                        }
                        else if(this.IENameFirst == "t" && IENameNextCheck)
                        {
                           renCheckMark = true;
                           if(this.INArray2[this.IEName].length != 1)
                           {
                              renCheckMarkAr[this.IENameLast] = true;
                              MarkCheck = true;
                           }
                        }
                        else if(this.IENameFirst == "f" && IENameNextCheck)
                        {
                           renCheckLoad = true;
                           if(this.INArray2[this.IEName].length != 1)
                           {
                              renCheckLoadAr[this.IENameLast] = true;
                              LoadCheck = true;
                           }
                        }
                        else if(this.IEName == "gd")
                        {
                           EyeOptionCheck = true;
                        }
                        else if(this.IEName == "da" && this.dataVersion <= 92)
                        {
                           this.charaData["BodyPlus"]["_menu"] = int(this.INArray2[this.IEName][1]);
                           this.charaData["BodyPlus"]["_color0"][0] = this.INArray2[this.IEName][2];
                           try
                           {
                              this.DressCharaData["BodyPlus"][this.charaData["BodyPlus"]["_menu"]]["_color0"][0] = this.INArray2[this.IEName][2];
                           }
                           catch(myError:Error)
                           {
                           }
                           this.charaData["BodyAlpha"]["_meter"] = int(this.INArray2[this.IEName][3]);
                           this.charaData["BodyPlusMeter"]["_meter"] = 100;
                        }
                        if(this.IETopTabName == "Item0")
                        {
                           itemCheck[0] = 1;
                        }
                        if(this.IETopTabName == "Item1")
                        {
                           itemCheck[1] = 1;
                        }



                        if(this.charaData[this.IETopTabName]["_menu"] != undefined)
                        {
                           if(this.charaData[this.IETopTabName]["_menu"] >= MenuClass.menuData[this.IETopTabName] && this.IETopTabName != "Item0" && this.IETopTabName != "Item1")
                           {
                              this.charaData[this.IETopTabName]["_menu"] = MenuClass.menuData[this.IETopTabName];
                           }
                        }
                        if(this.INArray2[this.IEName] == "" && (this.IEName != "ff" && this.IEName != "gd" && this.IEName != "ge" && this.IEName != "gh"))
                        {
                           if(this.charaData[this.IETopTabName]["_visible"] != undefined)
                           {
                              this.charaData[this.IETopTabName]["_visible"][0] = false;
                           }
                        }
                        else if (this.IEtabParameter == "_visible" && (
                           this.IEtabName == "EmotionMouth" ||
                           this.IEtabName == "LeftShoulderVisible" ||
                           this.IEtabName == "RightShoulderVisible" ||
                           this.IEtabName == "LeftUpperArmVisible" ||
                           this.IEtabName == "RightUpperArmVisible" ||
                           this.IEtabName == "LeftArmVisible" ||
                           this.IEtabName == "RightArmVisible" ||
                           this.IEtabName == "LeftHandVisible" ||
                           this.IEtabName == "RightHandVisible" ||
                           this.IEtabName == "LeftThighVisible" ||
                           this.IEtabName == "RightThighVisible" ||
                           this.IEtabName == "LeftLegVisible" ||
                           this.IEtabName == "RightLegVisible" ||
                           this.IEtabName == "LeftFootVisible" ||
                           this.IEtabName == "RightFootVisible"
                        ))
                        {
                           this.q = this.charaData[this.IEtabName]["_visible"].length - 1;
                           this.r = 0;
                           if (this.INArray2[this.IEName][this.j]) {
                              this.charaData[this.IEtabName][this.IEtabParameter][this.r] = int(this.INArray2[this.IEName][this.j].substring(this.r,this.r + 1));
                           } else {
                              this.charaData[this.IEtabName][this.IEtabParameter][this.r] = true;
                           }
                        }
                        else if(this.IEtabParameter == "_visible")
                        {
                           this.q = this.charaData[this.IEtabName]["_visible"].length - 1;
                           this.r = 0;
                           while(this.r <= this.q)
                           {
                              this.charaData[this.IEtabName][this.IEtabParameter][this.r] = int(this.INArray2[this.IEName][this.j].substring(this.r,this.r + 1));
                              ++this.r;
                           }
                        }
                        else
                        {
                           if(this.charaData[this.IETopTabName]["_visible"] != undefined && this.charaData[this.IETopTabName]["_visible"].length == 1)
                           {
                              this.charaData[this.IETopTabName]["_visible"][0] = true;
                           }
                           if(this.IEtabParameter == "_color0" || this.IEtabParameter == "_color1" || this.IEtabParameter == "_color2")
                           {
                              if(this.Flag != "allHairSet" || this.IENameFirst == "m")
                              {
                                 if(this.dataVersion <= 76 && (this.IEtabName == "Kutu0" || this.IEtabName == "Kutu1"))
                                 {
                                    KutuOldData[this.IEtabName][this.IEtabParameter] = this.INArray2[this.IEName][this.j];
                                 }


                                 try
                                 {
                                    if(this.INArray2[this.IEName][this.j].length == 6)
                                    {

                                       try
                                       {
                                          if(this.charaData[this.IEtabName]["_menu"] == undefined || Dress_data.DressData[this.IEtabName].length == 1)
                                          {
                                             this.menuNum = 0;
                                          }
                                          else
                                          {
                                             this.menuNum = this.charaData[this.IEtabName]["_menu"];
                                          }
                                       }
                                       catch(myError:Error)
                                       {
                                          menuNum = 0;
                                       }
                                       this.charaData[this.IEtabName][this.IEtabParameter][0] = String(this.INArray2[this.IEName][this.j]);
                                       try
                                       {
                                          this.DressCharaData[this.IEtabName][this.menuNum][this.IEtabParameter][0] = String(this.INArray2[this.IEName][this.j]);
                                       }
                                       catch(myError:Error)
                                       {
                                       }
                                    }
                                    else
                                    {

                                       try
                                       {
                                          if(this.charaData[this.IEtabName]["_menu"] == undefined || Dress_data.DressData[this.IEtabName].length == 1)
                                          {
                                             this.menuNum = 0;
                                          }
                                          else
                                          {
                                             this.menuNum = this.charaData[this.IEtabName]["_menu"];
                                          }
                                       }
                                       catch(myError:Error)
                                       {
                                          menuNum = 0;
                                       }
                                       if(this.Flag != "hairSet" && (this.Flag != "allHairSet" || renCheckRibon || renCheckHairpin))
                                       {
                                          this.charaData[this.IEtabName][this.IEtabParameter][0] = int(this.INArray2[this.IEName][this.j]);
                                          try
                                          {
                                             this.DressCharaData[this.IEtabName][this.menuNum][this.IEtabParameter][0] = int(this.INArray2[this.IEName][this.j]);
                                          }
                                          catch(myError:Error)
                                          {
                                          }
                                       }
                                       else if(this.Flag == "hairSet" && this.IEtabName != "HairEx0")
                                       {
                                          this.charaData[this.IEtabName][this.IEtabParameter][0] = this.charaData["HairEx0"][this.IEtabParameter][0];
                                          try
                                          {
                                             this.DressCharaData[this.IEtabName][this.menuNum][this.IEtabParameter][0] = this.charaData["HairEx0"][this.IEtabParameter][0];
                                          }
                                          catch(myError:Error)
                                          {
                                          }
                                       }
                                    }


                                    if(this.IEtabName != "UnderHair")
                                    {
                                       new Tab_ColorLinkCheck(this.charaNum,this.IEtabName,"chara");
                                    }
                                    if(this.IEtabName == "Hair")
                                    {
                                       new Tab_ColorLinkCheck(this.charaNum,"UnderHair","chara");
                                    }
                                 }
                                 catch(myError:Error)
                                 {
                                 }
                              }
                           }
                           else if(this.INArray2[this.IEName][this.j] == undefined && this.IEtabParameter == "_menu")
                           {

                              try
                              {
                                 // trace("read from CharaMotoData[" + this.IEtabName + "][\"_menu\"]");
                                 this.charaData[this.IEtabName]["_menu"] = prevMenu[this.IEtabName];
                                 // this.charaData[this.IEtabName]["_menu"] = MenuClass.charaMotoData[s][this.IEtabName]["_menu"];
                              }
                              catch(myError:Error)
                              {

                              }
                           }
                           else if(this.INArray2[this.IEName][this.j] == undefined)
                           {
                              // trace("clone: " + this.IEtabName + " " + this.IEtabParameter);
                              this.charaData[this.IEtabName][this.IEtabParameter] = this.clone(MenuClass.charaDefoData[this.charaNum][this.IEtabName][this.IEtabParameter]);
                           }
                           else if(this.IEtabParameter == "_swfColor")
                           {
                              try
                              {

                                 this.r = 0;
                                 while(this.r <= 23)
                                 {

                                    this.charaData[this.IEtabName][this.IEtabParameter][this.r] = 0;
                                    ++this.r;
                                 }
                                 this.q = this.INArray2[this.IEName][this.j].length / 6;
                                 this.r = 0;
                                 while(this.r < this.q)
                                 {

                                    this.charaData[this.IEtabName][this.IEtabParameter][this.r] = this.INArray2[this.IEName][this.j].substring(this.r * 6,this.r * 6 + 6);
                                    ++this.r;
                                 }
                              }
                              catch(myError:Error)
                              {
                              }
                           }
                           else
                           {

                              this.charaData[this.IEtabName][this.IEtabParameter] = int(this.INArray2[this.IEName][this.j]);
                           }
                        }
                     }
                     if(this.j == this.m)
                     {

                        new Tab_R18Check("chara",this.IEtabName,this.charaNum);
                     }
                  }
                  ++this.j;
               }
            }
            ++this.i;
         }



         if(itemCheck[0] == 0 && itemBeforeCheck[0] == 1)
         {
            MenuClass.charaData[this.charaNum]["LeftHand"]["_menu"] = itemBeforeHandType[0];
         }
         if(itemCheck[1] == 0 && itemBeforeCheck[1] == 1)
         {
            MenuClass.charaData[this.charaNum]["RightHand"]["_menu"] = itemBeforeHandType[1];
         }



         this.i = 0;
         while(this.i <= Main.hukusuuNum)
         {
            if(renCheckMark)
            {
               this.charaData["MarkPlus"]["_visible"][this.i] = renCheckMarkAr[this.i];
            }
            if(renCheckBelt)
            {
               this.charaData["BeltPlus"]["_visible"][this.i] = renCheckBeltAr[this.i];
            }
            if(renCheckHairpin)
            {
               this.charaData["HairpinPlus"]["_visible"][this.i] = renCheckHairpinAr[this.i];
            }
            if(renCheckHairEx)
            {
               this.charaData["HairExPlus"]["_visible"][this.i] = renCheckHairExAr[this.i];
            }
            if(renCheckLoad)
            {
               this.charaData["CharaLoadPlus"]["_visible"][this.i] = renCheckLoadAr[this.i];
            }
            ++this.i;
         }


         this.i = 0;
         while(this.i <= Main.RibonhukusuuNum)
         {
            if(renCheckRibon)
            {
               this.charaData["RibonPlus"]["_visible"][this.i] = renCheckRibonAr[this.i];
            }
            ++this.i;
         }


         if(this.Flag != "hairSet")
         {
            if(this.charaData["Tin"]["_visible"][0] && !this.charaData["TinManualAuto"]["_check"])
            {
               this.charaData["TinMove"]["_mode"] = 0;
            }
            if(this.selectMode || this.allSelectOneMode)
            {
               new Tab_SaveUpdate(this.charaNum,this.dataVersion,"Xmove");
            }
            else
            {
               new Tab_SaveUpdate(this.charaNum,this.dataVersion,"Non");
            }


            if (renCheckLoad)
            {
               loadNameCheckCount = 0;
               this.i = 0;
               while(this.i <= Main.hukusuuNum)
               {
                  if(this.charaData["CharaLoadPlus"]["_visible"][this.i])
                  {
                     if(CharaLoadName[loadNameCheckCount] != null)
                     {
                        this.charaData["CharaLoadAdd" + this.i]["_name"] = CharaLoadName[loadNameCheckCount];
                     }
                     loadNameCheckCount++;
                  }
                  ++this.i;
               }
            }

            if(this.Flag == "IN" || this.Flag == "textIN" || this.Flag == "setIN" || this.Flag == "firstIN" || this.Flag == "allHairSet" || this.Flag == "allFaceSet" || this.Flag == "allBodySet" || this.Flag == "LoveLive")
            {
               if(this.Flag == "firstIN")
               {
                  try
                  {
                     SetCharaData.execute(this.charaNum,"move",1);
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else if(this.Flag == "allFaceSet")
               {
                  SetCharaData.execute(this.charaNum,"allFaceSet",0);
               }
               else if(this.Flag == "allBodySet")
               {
                  SetCharaData.execute(this.charaNum,"allBodySet",0);
               }
               else
               {
                  SetCharaData.execute(this.charaNum,"move",0);
               }
               if(this.charaData["SelectCharacter"]["_visible"][0])
               {
                  MenuClass.charaAddDepth[s].visible = true;
               }
            }


            if(MenuClass._nowHeaderName != "Story" && MenuClass._nowHeaderName != "Character" && MenuClass._nowHeaderName != "AllCharacterSet" && MenuClass._nowHeaderName != "CharacterSet" && MenuClass._nowHeaderName != "AllHukuSet" && !MenuClass.StoryMode && Main.allCharaLoadFlag)
            {
               // trace("clone: charaMotoData / DressCharaMotoData");
               // MenuClass.charaMotoData[s] = this.clone(MenuClass.charaData[s]);
               // Dress_data.DressCharaMotoData[s] = this.clone(this.DressCharaData);
            }
         }
         else
         {

            new Tab_SaveUpdate(this.charaNum,this.dataVersion,"hairSet");
            new SetClass(this.charaNum,"HairExPlus","hairSet");
         }
         if(this.Flag == "firstIN")
         {

            this.charaData["SelectCharacter"]["_visible"][0] = this.firstVisible;
            new SetClass(this.charaNum,"SelectCharacter_visible","move");
         }


         if(MenuClass._nowTargetMode == "Select" || MenuClass._nowTargetMode == "SelectPlus")
         {
            if(MenuClass._nowCharaNum != s)
            {
               if(!(MenuClass._nowTargetMode == "SelectPlus" && s == 0))
               {

                  MenuClass.charaAddDepth[s].charaSelect.visible = false;
                  MenuClass.charaAddDepth[s].charaSelect.gotoAndStop(1);
               }
            }
         }

         // trace("Performing post-load mod attach sprite sorting for character " + this.charaNum);
         PartLayering.fixup(this.charaNum, ["mune", "dou", "thigh", "leg", "foot", "upperArm", "lowerArm", "hand"]);
         // trace("Post-load mod attach sprite sorting for character " + this.charaNum + " complete");
      }
      
      private function fcSystemIn() : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:String = null;
         var _loc24_:int = 0;
         SaveUpdateTabNameSystem = new Array();
         this.DressCharaData = Dress_data.DressCharaData[0];
         INNameSystemAr = new Array();
         var _loc1_:Array = new Array(false,false,false,false,false,false,false,false,false,false);
         var _loc2_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:Boolean = false;
         var _loc5_:Array = new Array();
         var _loc6_:Boolean = false;
         var _loc7_:Array = new Array();
         var _loc8_:Boolean = false;
         var _loc9_:Array = new Array();
         var _loc10_:Boolean = false;
         var _loc11_:Array = new Array();
         var _loc12_:Boolean = false;
         var _loc13_:Array = new Array();
         var _loc14_:Boolean = false;
         var _loc15_:Array = new Array();
         var _loc16_:Boolean = false;
         var _loc17_:Array = new Array();
         var _loc18_:Boolean = false;
         var _loc19_:Array = new Array();
         var _loc20_:Boolean = false;
         var _loc21_:Array = new Array();
         this.i = 0;
         while(this.i <= 98)
         {
            _loc5_.push(false);
            _loc7_.push(false);
            _loc13_.push(false);
            _loc15_.push(false);
            _loc17_.push(false);
            _loc19_.push(false);
            _loc21_.push(false);
            _loc3_.push(false);
            ++this.i;
         }
         if(this.dataVersion <= 29)
         {
            this.systemArray.push("w00");
         }
         if(this.dataVersion <= 30)
         {
            this.systemArray.push("x00");
         }
         if(this.dataVersion <= 31)
         {
            this.systemArray.push("y00");
         }
         if(this.dataVersion <= 32)
         {
            this.systemArray.push("z00");
         }
         MenuClass.systemData["SourceVersion"]["_minor"] = 0;
         MenuClass.systemData["SourceVersion"]["_alpha"] = 0;
         try
         {
            this.INArray = new Array();
            this.INArray = this.systemArray;
            this.INArray2 = new Array();
            this.n = this.systemArray.length - 1;
            this.i = 0;
            while(this.i <= this.n)
            {
               this.IENameFirst = this.INArray[this.i].substring(0,1);
               _loc22_ = false;
               if((_loc23_ = this.INArray[this.i].substring(1,2)) == "0" || _loc23_ == "1" || _loc23_ == "2" || _loc23_ == "3" || _loc23_ == "4" || _loc23_ == "5" || _loc23_ == "6" || _loc23_ == "7" || _loc23_ == "8" || _loc23_ == "9")
               {
                  _loc22_ = true;
               }
               if(this.dataVersion <= 61 && this.IENameFirst == "v")
               {
                  this.IEName = this.INArray[this.i].substring(0,2);
                  this.str = this.INArray[this.i].substring(2,this.INArray[this.i].length);
                  this.IENameLast = this.IEName.substring(1,2);
                  this.IEName = "v0" + this.IENameLast;
               }
               else if(_loc22_ && (this.IENameFirst == "a" || this.IENameFirst == "b" || this.IENameFirst == "c" || this.IENameFirst == "d" || this.IENameFirst == "w" || this.IENameFirst == "x" || this.IENameFirst == "e" || this.IENameFirst == "y" || this.IENameFirst == "z" || this.IENameFirst == "v"))
               {
                  this.IEName = this.INArray[this.i].substring(0,3);
                  this.str = this.INArray[this.i].substring(3,this.INArray[this.i].length);
                  this.IENameLast = this.IEName.substring(1,3);
                  this.IENameLast = String(int(this.IENameLast));
               }
               else
               {
                  this.IEName = this.INArray[this.i].substring(0,2);
                  this.str = this.INArray[this.i].substring(2,this.INArray[this.i].length);
                  this.IENameLast = this.IEName.substring(1,2);
               }
               this.INArray2[this.IEName] = this.str.split(".");
               
               if (!(this.IEName in Tab_IEData1.IEData) && this.Flag == "IN") {
                  trace("skipping unknown import data: " + this.IEName);
                  ++this.i;
                  continue;
               }

               this.IETopTabName = Tab_IEData1.IEData[this.IEName][0][0];
               SaveUpdateTabNameSystem.push(this.IETopTabName);
               if(this.IEName == "u0" || this.IEName == "u1" || this.IEName == "u2" || this.IEName == "u3" || this.IEName == "u4" || this.IEName == "u5" || this.IEName == "u6" || this.IEName == "u7" || this.IEName == "u8" || this.IEName == "u9")
               {
                  renCheckText = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc1_[this.IENameLast] = true;
                  }
               }
               if(this.IENameFirst == "v" && _loc22_)
               {
                  _loc2_ = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc3_[this.IENameLast] = true;
                  }
               }
               if(this.IENameFirst == "a" && _loc22_)
               {
                  _loc4_ = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc5_[this.IENameLast] = true;
                  }
               }
               if(this.IENameFirst == "b" && _loc22_)
               {
                  _loc6_ = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc7_[this.IENameLast] = true;
                  }
               }
               if(this.IENameFirst == "c" && _loc22_)
               {
                  _loc8_ = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc9_[this.IENameLast] = true;
                  }
               }
               if(this.IENameFirst == "d" && _loc22_)
               {
                  _loc10_ = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc11_[this.IENameLast] = true;
                  }
               }
               if(this.IENameFirst == "w" && _loc22_)
               {
                  _loc12_ = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc13_[this.IENameLast] = true;
                  }
               }
               if(this.IENameFirst == "x" && _loc22_)
               {
                  _loc14_ = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc15_[this.IENameLast] = true;
                  }
               }
               if(this.IENameFirst == "e" && _loc22_)
               {
                  _loc16_ = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc17_[this.IENameLast] = true;
                  }
               }
               if(this.IENameFirst == "y" && _loc22_)
               {
                  _loc18_ = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc19_[this.IENameLast] = true;
                  }
               }
               if(this.IENameFirst == "z" && _loc22_)
               {
                  _loc20_ = true;
                  if(this.INArray2[this.IEName].length != 1)
                  {
                     _loc21_[this.IENameLast] = true;
                     if(this.INArray2[this.IEName].length <= 13 && this.dataVersion <= 40)
                     {
                        MenuClass.systemData["FreeHukidashiExtra" + this.IENameLast]["_visible"][0] = false;
                     }
                     else if(this.INArray2[this.IEName].length > 14 && this.dataVersion < 65)
                     {
                        this.INArray2[this.IEName].splice(16,0,"500");
                     }
                     else if(this.INArray2[this.IEName].length <= 14 && this.dataVersion <= 65)
                     {
                        MenuClass.systemData["FreeHukidashiExtra" + this.IENameLast]["_visible"][0] = false;
                     }
                     else if(this.INArray2[this.IEName].length <= 15 && this.dataVersion > 40)
                     {
                        MenuClass.systemData["FreeHukidashiExtra" + this.IENameLast]["_visible"][0] = false;
                     }
                  }
               }
               if(MenuClass.systemData[this.IETopTabName]["_menu"] != undefined)
               {
                  if(MenuClass.systemData[this.IETopTabName]["_menu"] >= MenuClass.menuData[this.IETopTabName])
                  {
                     MenuClass.systemData[this.IETopTabName]["_menu"] = MenuClass.menuData[this.IETopTabName];
                  }
               }
               if(this.INArray2[this.IEName] == "")
               {
                  if(MenuClass.systemData[this.IETopTabName]["_visible"] != undefined)
                  {
                     MenuClass.systemData[this.IETopTabName]["_visible"][0] = false;
                  }
               }
               else
               {
                  this.m = Tab_IEData1.IEData[this.IEName].length - 1;
                  this.j = 0;
                  while(this.j <= this.m)
                  {
                     this.t = MenuClass.importCheck.length - 1;
                     this.u = 0;
                     while(this.u <= this.t)
                     {
                        if(this.IEName == Tab_IEData1.IEGroup[this.u][this.j])
                        {
                           this.importCheckFlag = this.u;
                        }
                        ++this.u;
                     }
                     if(MenuClass.importCheck[this.importCheckFlag] || this.Flag != "IN")
                     {
                        this.IEtabName = Tab_IEData1.IEData[this.IEName][this.j][0];
                        this.IEtabParameter = Tab_IEData1.IEData[this.IEName][this.j][1];
                        INNameSystemAr.push(this.IEtabName);
                        if(this.IEtabParameter == "_swfMenu" || this.IEtabParameter == "_swfSen")
                        {
                           try
                           {
                              MenuClass.systemData[this.IEtabName][this.IEtabParameter] = int(this.INArray2[this.IEName][this.j]);
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                        else if(this.IEtabParameter == "_swfColor")
                        {
                           try
                           {
                              this.r = 0;
                              while(this.r <= 23)
                              {
                                 MenuClass.systemData[this.IEtabName][this.IEtabParameter][this.r] = 0;
                                 ++this.r;
                              }
                              this.q = this.INArray2[this.IEName][this.j].length / 6;
                              this.r = 0;
                              while(this.r < this.q)
                              {
                                 MenuClass.systemData[this.IEtabName][this.IEtabParameter][this.r] = this.INArray2[this.IEName][this.j].substring(this.r * 6,this.r * 6 + 6);
                                 ++this.r;
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                        else if(this.IEtabParameter == "_visible")
                        {
                           this.q = MenuClass.systemData[this.IEtabName]["_visible"].length - 1;
                           try
                           {
                              this.r = 0;
                              while(this.r <= this.q)
                              {
                                 MenuClass.systemData[this.IEtabName][this.IEtabParameter][this.r] = int(this.INArray2[this.IEName][this.j].substring(this.r,this.r + 1));
                                 ++this.r;
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                        }
                        else
                        {
                           // if (this.IEName == "cc" || this.IEName == "cd" || this.IEName == "ce")
                           // {
                           //    ++this.j;
                           //    continue;
                           // }
                           if(MenuClass.systemData[this.IETopTabName]["_visible"] != undefined && MenuClass.systemData[this.IETopTabName]["_visible"].length == 1)
                           {
                              MenuClass.systemData[this.IETopTabName]["_visible"][0] = true;
                           }
                           if(this.IEtabParameter == "_color0" || this.IEtabParameter == "_color1" || this.IEtabParameter == "_color2")
                           {
                              try
                              {
                                 if(this.INArray2[this.IEName][this.j].length == 6)
                                 {
                                    if(MenuClass.systemData[this.IEtabName]["_menu"] == undefined || Dress_data.DressData[this.IEtabName].length == 1)
                                    {
                                       this.menuNum = 0;
                                    }
                                    else
                                    {
                                       this.menuNum = MenuClass.systemData[this.IEtabName]["_menu"];
                                    }
                                    this.DressCharaData[this.IEtabName][this.menuNum][this.IEtabParameter][0] = String(this.INArray2[this.IEName][this.j]);
                                    MenuClass.systemData[this.IEtabName][this.IEtabParameter][0] = String(this.INArray2[this.IEName][this.j]);
                                 }
                                 else
                                 {
                                    if(MenuClass.systemData[this.IEtabName]["_menu"] == undefined || Dress_data.DressData[this.IEtabName].length == 1)
                                    {
                                       this.menuNum = 0;
                                    }
                                    else
                                    {
                                       this.menuNum = MenuClass.systemData[this.IEtabName]["_menu"];
                                    }
                                    this.DressCharaData[this.IEtabName][this.menuNum][this.IEtabParameter][0] = int(this.INArray2[this.IEName][this.j]);
                                    MenuClass.systemData[this.IEtabName][this.IEtabParameter][0] = int(this.INArray2[this.IEName][this.j]);
                                 }
                                 new Tab_ColorLinkCheck(0,this.IEtabName,"system");
                              }
                              catch(myError:Error)
                              {
                              }
                           }
                           else if(this.IEtabName == "Zoom" && this.IEtabParameter != "_meter")
                           {
                              MenuClass.systemData[this.IEtabName][this.IEtabParameter] = this.INArray2[this.IEName][this.j] * -1;
                           }
                           else if(this.INArray2[this.IEName][this.j] != " ")
                           {
                              MenuClass.systemData[this.IEtabName][this.IEtabParameter] = int(this.INArray2[this.IEName][this.j]);
                           }
                        }
                        if(this.j == this.m)
                        {
                           new Tab_R18Check("system",this.IEtabName,0);
                        }
                     }
                     ++this.j;
                  }
               }
               new Tab_SaveUpdateSystem(Tab_IEData1.IEData[this.IEName][0][0],this.dataVersion,"Non");
               if(Tab_IEData1.IEData[this.IEName][0][0] == "Background")
               {
                  if(this.Flag == "firstIN")
                  {
                     new SetClass(0,Tab_IEData1.IEData[this.IEName][0][0],"first");
                  }
                  else
                  {
                     new SetClass(0,Tab_IEData1.IEData[this.IEName][0][0],"move");
                  }
               }
               else
               {
                  new SetClass(0,Tab_IEData1.IEData[this.IEName][0][0],"move");
               }
               ++this.i;
            }
         }
         catch(myError:Error)
         {
         }
         if(renCheckText)
         {
            this.i = 0;
            while(this.i <= 9)
            {
               MenuClass.systemData["txtFieldmenu"]["_visible"][this.i] = _loc1_[this.i];
               if(MenuClass.systemData["txtFieldmenu"]["_visible"][this.i])
               {
                  MenuClass.systemData["FontType" + this.i]["_font"] = this.textArray[0];
                  this.m = MenuClass.FontList.length;
                  this.j = 0;
                  while(this.j <= this.m)
                  {
                     if(MenuClass.FontList[this.j] == MenuClass.systemData["FontType" + this.i]["_font"])
                     {
                        MenuClass.systemData["FontType" + this.i]["_menu"] = this.j;
                        break;
                     }
                     ++this.j;
                  }
                  this.textArray.shift();
                  MenuClass.systemData["FontType" + this.i]["_txt"] = this.textArray[0];
                  try
                  {
                     MenuClass.txtFieldAdd[this.i].htmlText = MenuClass.systemData["FontType" + this.i]["_txt"];
                  }
                  catch(myError:Error)
                  {
                  }
                  this.textArray.shift();
               }
               ++this.i;
            }
            new Tab_SaveUpdateSystem("txtField",this.dataVersion,"Non");
            this.i = 0;
            while(this.i <= 9)
            {
               SystemText2.loadFc("txtFieldmenu",this.i,"Load");
               ++this.i;
            }
         }
         MenuClass.systemChairData = this.clone(MenuClass.systemData);
         if(_loc4_)
         {
            this.i = 0;
            while(this.i <= 98)
            {
               MenuClass.systemData["FreeHandPlus"]["_visible"][this.i] = _loc5_[this.i];
               ++this.i;
            }
            new Tab_SaveUpdateSystem("FreeHand",this.dataVersion,"Non");
            this.i = 0;
            while(this.i <= 98)
            {
               new Free_HandSet(this.i,"move");
               ++this.i;
            }
         }
         if(_loc6_)
         {
            this.i = 0;
            while(this.i <= 98)
            {
               MenuClass.systemData["FreeHandItem" + this.i]["_visible"][0] = _loc7_[this.i];
               ++this.i;
            }
            new Tab_SaveUpdateSystem("FreeHandItem",this.dataVersion,"Non");
            this.i = 0;
            while(this.i <= 98)
            {
               new Free_HandSet(this.i,"move");
               ++this.i;
            }
         }
         if(_loc12_)
         {
            this.i = 0;
            while(this.i <= 98)
            {
               MenuClass.systemData["FreeRibonPlus"]["_visible"][this.i] = _loc13_[this.i];
               ++this.i;
            }
            new Tab_SaveUpdateSystem("FreeRibon",this.dataVersion,"Non");
            _loc24_ = MenuClass.systemData["FreeRibonPlus"]["_menu"];
            this.i = 0;
            while(this.i <= 98)
            {
               MenuClass.systemData["FreeRibonPlus"]["_menu"] = this.i;
               new SetLinkSystemData();
               new Free_RibonSet(this.i,"move");
               ++this.i;
            }
            MenuClass.systemData["FreeRibonPlus"]["_menu"] = _loc24_;
         }
         if(_loc14_)
         {
            this.i = 0;
            while(this.i <= 98)
            {
               MenuClass.systemData["FreeBeltPlus"]["_visible"][this.i] = _loc15_[this.i];
               ++this.i;
            }
            new Tab_SaveUpdateSystem("FreeBelt",this.dataVersion,"Non");
            new SetLinkSystemData();
            this.i = 0;
            while(this.i <= 98)
            {
               new Free_BeltSet(this.i,"move");
               ++this.i;
            }
         }
         if(_loc16_)
         {
            this.i = 0;
            while(this.i <= 98)
            {
               MenuClass.systemData["FreeChairPlus"]["_visible"][this.i] = _loc17_[this.i];
               ++this.i;
            }
            new Tab_SaveUpdateSystem("FreeChair",this.dataVersion,"Non");
            new SetLinkSystemData();
            this.i = 0;
            while(this.i <= 98)
            {
               new Free_ChairSet(this.i,"move");
               ++this.i;
            }
         }
         if(_loc18_)
         {
            this.i = 0;
            while(this.i <= 98)
            {
               MenuClass.systemData["FreeFlagPlus"]["_visible"][this.i] = _loc19_[this.i];
               ++this.i;
            }
            new Tab_SaveUpdateSystem("FreeFlag",this.dataVersion,"Non");
            new SetLinkSystemData();
            this.i = 0;
            while(this.i <= 98)
            {
               new Free_FlagSet(this.i,"move");
               ++this.i;
            }
         }
         if(_loc20_)
         {
            this.i = 0;
            while(this.i <= 98)
            {
               MenuClass.systemData["FreeHukidashiPlus"]["_visible"][this.i] = _loc21_[this.i];
               ++this.i;
            }
            new Tab_SaveUpdateSystem("FreeHukidashi",this.dataVersion,"Non");
            new SetLinkSystemData();
            this.i = 0;
            while(this.i <= 98)
            {
               new Free_HukidashiSet(this.i,"move");
               ++this.i;
            }
         }
         if(_loc2_)
         {
            MenuClass.urlLoadCount = 0;
            MenuClass.urlLoadCompCount = 0;
            MenuClass.urlLoadCompCheck = false;
            this.i = 0;
            while(this.i <= 98)
            {
               MenuClass.systemData["LoadPlus"]["_visible"][this.i] = _loc3_[this.i];
               if(MenuClass.systemData["LoadPlus"]["_visible"][this.i])
               {
                  ++MenuClass.urlLoadCount;
               }
               ++this.i;
            }
            if(MenuClass.urlLoadCount == 0)
            {
               MenuClass.urlLoadCompCheck = true;
            }
            this.i = 0;
            while(this.i <= 98)
            {
               if(MenuClass.systemData["LoadPlus"]["_visible"][this.i])
               {
                  MenuClass.systemData["LoadScale" + this.i]["_name"] = this.textArray[0];
                  this.textArray.shift();
               }
               else
               {
                  MenuClass.systemData["LoadScale" + this.i]["_name"] = "";
               }
               ++this.i;
            }
            new Tab_SaveUpdateSystem("urlLoad",this.dataVersion,"Non");
            this.i = 0;
            while(this.i <= 98)
            {
               new Tab_LoadURL("load",this.i);
               ++this.i;
            }
         }
         MenuClass.systemMotoData = this.clone(MenuClass.systemData);
      }
      
      private function fcIn_old(param1:int) : void
      {
         var s:int = param1;
         if(this.firstRead == 1 && s != 0)
         {
            this.ensureCloned(s);
            MenuClass._nowCharaNum = 0;
            MenuClass.charaData[s]["SelectCharacter"]["_visible"][0] = false;
         }
         else if(this.firstRead != 2)
         {
            this.ensureCloned(MenuClass._nowCharaNum);
            MenuClass.charaData[MenuClass._nowCharaNum]["SelectCharacter"]["_visible"][0] = true;
         }
         this.INArray = new Array();
         this.INArray1 = new Array();
         this.INArray2 = new Array();
         if(this.selectMode)
         {
            this.charaData = MenuClass.charaData[s];
            this.DressCharaData = Dress_data.DressCharaData[s];
            this.charaNum = s;
         }
         this.ensureCloned(this.charaNum);
         this.INArray1 = this.INArray0[s].split("!");
         this.INArray1.shift();
         this.n = this.INArray1.length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            this.oldImportFlag[this.i] = this.INArray1[this.i].substring(0,1);
            this.INArray1[this.i] = this.INArray1[this.i].substring(2,this.INArray1[this.i].length);
            ++this.i;
         }
         this.n = this.INArray1.length - 1;
         var txtTest:String = "";
         this.i = 0;
         while(this.i <= this.n)
         {
            txtTest += this.INArray1[this.i];
            ++this.i;
         }
         if(txtTest.substring(txtTest.length - 1,txtTest.length) == "_")
         {
            txtTest = txtTest.substring(0,txtTest.length - 1);
         }
         this.INArray = txtTest.split("_");
         this.n = this.INArray.length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            this.IEName = this.INArray[this.i].substring(0,2);
            this.str = this.INArray[this.i].substring(2,this.INArray[this.i].length);
            this.INArray2[this.IEName] = this.str.split(".");
            ++this.i;
         }
         this.n = Tab_IEDataOld.IEGroup.length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            if(this.oldImportFlag[this.i] == 1)
            {
               this.p = Tab_IEDataOld.IEGroup[this.i].length - 2;
               this.k = 0;
               while(this.k <= this.p)
               {
                  this.IEName = Tab_IEDataOld.IEGroup[this.i][this.k + 1];
                  this.IENameFirst = Tab_IEDataOld.IEGroup[this.i][this.k + 1].substring(0,1);
                  this.m = Tab_IEDataOld.IEData[this.IEName].length - 1;
                  this.IETopTabName = Tab_IEDataOld.IEData[this.IEName][0][0];
                  if(this.IETopTabName != "Kobito")
                  {
                     this.j = 0;
                     while(this.j <= this.m)
                     {
                        this.IEtabName = Tab_IEDataOld.IEData[this.IEName][this.j][0];
                        this.IEtabParameter = Tab_IEDataOld.IEData[this.IEName][this.j][1];
                        if(this.IETopTabName != "Xmove" || this.selectMode || this.allSelectOneMode)
                        {
                           if(this.IENameFirst == "m")
                           {
                              this.IENameLast = Tab_IEDataOld.IEGroup[this.i][this.k + 1].substring(1,2);
                              if(this.INArray2[this.IEName] != undefined)
                              {
                                 this.charaData["RibonPlus"]["_visible"][this.IENameLast] = true;
                              }
                              else
                              {
                                 this.charaData["RibonPlus"]["_visible"][this.IENameLast] = false;
                              }
                           }
                           else if(this.IENameFirst == "n")
                           {
                              this.IENameLast = Tab_IEDataOld.IEGroup[this.i][this.k + 1].substring(1,2);
                              if(this.INArray2[this.IEName] != undefined)
                              {
                                 this.charaData["HairpinPlus"]["_visible"][this.IENameLast] = true;
                              }
                              else
                              {
                                 this.charaData["HairpinPlus"]["_visible"][this.IENameLast] = false;
                              }
                           }
                           else if(this.IENameFirst == "r")
                           {
                              this.IENameLast = Tab_IEDataOld.IEGroup[this.i][this.k + 1].substring(1,2);
                              if(this.INArray2[this.IEName] != undefined)
                              {
                                 this.charaData["HairExPlus"]["_visible"][this.IENameLast] = true;
                              }
                              else
                              {
                                 this.charaData["HairExPlus"]["_visible"][this.IENameLast] = false;
                              }
                           }
                           else if(this.IENameFirst == "s")
                           {
                              this.IENameLast = Tab_IEDataOld.IEGroup[this.i][this.k + 1].substring(1,2);
                              if(this.INArray2[this.IEName] != undefined)
                              {
                                 this.charaData["BeltPlus"]["_visible"][this.IENameLast] = true;
                              }
                              else
                              {
                                 this.charaData["BeltPlus"]["_visible"][this.IENameLast] = false;
                              }
                           }
                           else if(this.IENameFirst == "t")
                           {
                              this.IENameLast = Tab_IEDataOld.IEGroup[this.i][this.k + 1].substring(1,2);
                              if(this.INArray2[this.IEName] != undefined)
                              {
                                 this.charaData["MarkPlus"]["_visible"][this.IENameLast] = true;
                              }
                              else
                              {
                                 this.charaData["MarkPlus"]["_visible"][this.IENameLast] = false;
                              }
                           }
                           if(this.charaData[this.IETopTabName]["_menu"] != undefined)
                           {
                              if(this.charaData[this.IETopTabName]["_menu"] >= MenuClass.menuData[this.IETopTabName])
                              {
                                 this.charaData[this.IETopTabName]["_menu"] = MenuClass.menuData[this.IETopTabName];
                              }
                           }
                           if(this.INArray2[this.IEName] == undefined)
                           {
                              if(this.charaData[this.IETopTabName]["_visible"] != undefined)
                              {
                                 this.charaData[this.IETopTabName]["_visible"][0] = false;
                              }
                           }
                           else if(this.IEtabParameter == "_visible")
                           {
                              this.q = this.charaData[this.IEtabName]["_visible"].length - 1;
                              this.r = 0;
                              while(this.r <= this.q)
                              {
                                 this.charaData[this.IEtabName][this.IEtabParameter][this.r] = int(this.INArray2[this.IEName][this.j].substring(this.r,this.r + 1));
                                 ++this.r;
                              }
                           }
                           else
                           {
                              if(this.charaData[this.IETopTabName]["_visible"] != undefined && this.charaData[this.IETopTabName]["_visible"].length == 1)
                              {
                                 this.charaData[this.IETopTabName]["_visible"][0] = true;
                              }
                              if(this.IEtabParameter == "_color0" || this.IEtabParameter == "_color1" || this.IEtabParameter == "_color2")
                              {
                                 try
                                 {
                                    if(this.INArray2[this.IEName][this.j].length == 6)
                                    {
                                       try
                                       {
                                          if(this.charaData[this.IEtabName]["_menu"] == undefined || Dress_data.DressData[this.IEtabName].length == 1)
                                          {
                                             this.menuNum = 0;
                                          }
                                          else
                                          {
                                             this.menuNum = this.charaData[this.IEtabName]["_menu"];
                                          }
                                       }
                                       catch(myError:Error)
                                       {
                                          menuNum = 0;
                                       }
                                       this.charaData[this.IEtabName][this.IEtabParameter][0] = this.INArray2[this.IEName][this.j];
                                       try
                                       {
                                          this.DressCharaData[this.IEtabName][this.menuNum][this.IEtabParameter][0] = this.INArray2[this.IEName][this.j];
                                       }
                                       catch(myError:Error)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       try
                                       {
                                          if(this.charaData[this.IEtabName]["_menu"] == undefined || Dress_data.DressData[this.IEtabName].length == 1)
                                          {
                                             this.menuNum = 0;
                                          }
                                          else
                                          {
                                             this.menuNum = this.charaData[this.IEtabName]["_menu"];
                                          }
                                       }
                                       catch(myError:Error)
                                       {
                                          menuNum = 0;
                                       }
                                       this.charaData[this.IEtabName][this.IEtabParameter][0] = int(this.INArray2[this.IEName][this.j]);
                                       try
                                       {
                                          this.DressCharaData[this.IEtabName][this.menuNum][this.IEtabParameter][0] = int(this.INArray2[this.IEName][this.j]);
                                       }
                                       catch(myError:Error)
                                       {
                                       }
                                    }
                                    new Tab_ColorLinkCheck(this.charaNum,this.IEtabName,"chara");
                                 }
                                 catch(myError:Error)
                                 {
                                 }
                              }
                              else
                              {
                                 this.charaData[this.IEtabName][this.IEtabParameter] = int(this.INArray2[this.IEName][this.j]);
                              }
                           }
                        }
                        if(this.j == this.m)
                        {
                           new Tab_R18Check("chara",this.IEtabName,this.charaNum);
                        }
                        ++this.j;
                     }
                  }
                  ++this.k;
               }
            }
            ++this.i;
         }
         if(this.charaData["Tin"]["_visible"][0] && !this.charaData["TinManualAuto"]["_check"])
         {
            this.charaData["TinMove"]["_mode"] = 0;
         }
         if(this.selectMode || this.allSelectOneMode)
         {
            new Tab_SaveUpdate(this.charaNum,this.dataVersion,"Xmove");
         }
         else
         {
            new Tab_SaveUpdate(this.charaNum,this.dataVersion,"Non");
         }
         if(this.Flag == "IN" || this.Flag == "textIN" || this.Flag == "setIN" || this.Flag == "LoveLive")
         {
            if(this.charaData["SelectCharacter"]["_visible"][0])
            {
               MenuClass.charaAddDepth[s].visible = true;
            }
            SetCharaData.execute(this.charaNum,"move",0);
         }
         // MenuClass.charaMotoData = this.clone(MenuClass.charaData);
         // Dress_data.DressCharaMotoData[s] = this.clone(this.DressCharaData);
         MenuClass.systemMotoData = this.clone(MenuClass.systemData);
         // MenuClass.menuCustomResetNum = this.clone(Dress_data.menuCustomNum);
      }
      
      private function reversalCheck(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:String = "";
         var _loc5_:int = int(param3[param1]["_reversal"]);
         _loc4_ += String(_loc5_);
         this.strPlus = this.strPlus + _loc4_ + param2;
      }
      
      private function checkCheck(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:String = "";
         var _loc5_:int = int(param3[param1]["_check"]);
         _loc4_ += String(_loc5_);
         this.strPlus = this.strPlus + _loc4_ + param2;
      }
      
      private function visibleCheck(param1:String, param2:String, param3:Object) : void
      {
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc5_:int = param3[param1]["_visible"].length - 1;
         var _loc6_:String = "";
         _loc4_ = 0;
         while(_loc4_ <= _loc5_)
         {
            _loc7_ = int(param3[param1]["_visible"][_loc4_]);
            _loc6_ += String(_loc7_);
            _loc4_++;
         }
         this.strPlus = this.strPlus + _loc6_ + param2;
      }
      
      private function clone(param1:*) : *
      {
         if (typeof param1 !== "object") {
            return param1;
         }

         // var _loc2_:ByteArray = new ByteArray();
         cloneBuf.position = 0;
         cloneBuf.writeObject(param1);
         cloneBuf.position = 0;
         return cloneBuf.readObject();
      }
   }
}
