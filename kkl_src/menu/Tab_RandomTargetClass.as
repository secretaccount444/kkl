package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import parameter.Chara_IEdata;
   
   public class Tab_RandomTargetClass
   {
      
      public static var headerName:String;
      
      public static var targetMC:MovieClip;
      
      public static var count:int = 0;
      
      public static var charaCount:int = 0;
      
      public static var randomNum:int;
      
      public static var randomArray:Array;
       
      
      public function Tab_RandomTargetClass()
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
            MenuClass.charaAdd[0].removeEventListener(Event.ENTER_FRAME,AllRandomFc);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.charaAdd[0].removeEventListener(Event.ENTER_FRAME,AllRandomCharaFc);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.charaAdd[0].removeEventListener(Event.ENTER_FRAME,AllRandomPlusFc);
         }
         catch(myError:Error)
         {
         }
         try
         {
            MenuClass.charaAdd[0].removeEventListener(Event.ENTER_FRAME,AllRandomCharaPlusFc);
         }
         catch(myError:Error)
         {
         }
         try
         {
            param1.removeEventListener(Event.ENTER_FRAME,RandomFc);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         return;

         // var _loc2_:int = 0;
         // var _loc3_:String = null;
         // var _loc4_:int = 0;
         // headerName = param1.currentTarget.headerName;
         // targetMC = param1.currentTarget as MovieClip;
         // if(count == 0)
         // {
         //    charaCount = 0;
         //    targetMC.gotoAndStop(2);
         //    targetMC.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         //    Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         //    if(headerName == "CharacterSet")
         //    {
         //       Tab_CharaWindow.setFc("random");
         //    }
         //    else
         //    {
         //       if(headerName == "Character")
         //       {
         //          if(!MenuClass.DressSetCheck)
         //          {
         //             MenuClass.DressSetCheck = true;
         //             Chara_IEdata.BuraData = new Array(1,1,1,1,1,1,1,1,1);
         //             Chara_IEdata.MimiData = new Array(1,1,1,1,1,1,1,1,1);
         //             Chara_IEdata.HornData = new Array(1,1,1,1,1,1,1,1,1);
         //             Chara_IEdata.HaneData = new Array(1,1,1,1,1,1,1,1,1);
         //             Chara_IEdata.TailData = new Array(1,1,1,1,1,1,1,1,1);
         //             Chara_IEdata.MeganeData = new Array(1,1,1,1,1,1,1,1,1);
         //             Chara_IEdata.Item0Data = new Array(1,1,1,1,1,1,1,1,1);
         //             Chara_IEdata.Item1Data = new Array(1,1,1,1,1,1,1,1,1);
         //             _loc2_ = 0;
         //             while(_loc2_ <= MenuClass._characterNum)
         //             {
         //                new Chara_DressSet(_loc2_);
         //                _loc2_++;
         //             }
         //          }
         //       }
         //       _loc4_ = MenuClass.MY_MENUNAME.length - 1;
         //       randomNum = 0;
         //       randomArray = new Array();
         //       _loc2_ = 0;
         //       while(_loc2_ <= _loc4_)
         //       {
         //          _loc3_ = MenuClass.MY_MENUNAME[_loc2_][0];
         //          if(MenuClass.MY_MENUNAME[_loc2_][2])
         //          {
         //             randomArray[randomNum] = _loc3_;
         //             ++randomNum;
         //          }
         //          _loc2_++;
         //       }
         //       if(MenuClass._nowTargetMode == "All")
         //       {
         //          if(headerName == "SystemOption")
         //          {
         //             if(randomArray.length > 0)
         //             {
         //                MenuClass.charaAdd[0].addEventListener(Event.ENTER_FRAME,AllRandomFc);
         //             }
         //          }
         //          else
         //          {
         //             MenuClass.charaAdd[0].addEventListener(Event.ENTER_FRAME,AllRandomCharaFc);
         //          }
         //       }
         //       else if(MenuClass._nowTargetMode == "SelectPlus")
         //       {
         //          if(headerName == "SystemOption")
         //          {
         //             if(randomArray.length > 0)
         //             {
         //                MenuClass.charaAdd[0].addEventListener(Event.ENTER_FRAME,AllRandomPlusFc);
         //             }
         //          }
         //          else
         //          {
         //             MenuClass.charaAdd[0].addEventListener(Event.ENTER_FRAME,AllRandomCharaPlusFc);
         //          }
         //       }
         //       else if(headerName == "SystemOption")
         //       {
         //          if(randomArray.length > 0)
         //          {
         //             targetMC.addEventListener(Event.ENTER_FRAME,RandomFc);
         //          }
         //       }
         //       else
         //       {
         //          new Tab_RandomClass(MenuClass._nowCharaNum,headerName);
         //       }
         //    }
         // }
      }
      
      public static function RandomFc(param1:Event) : void
      {
         return;
         // new Tab_RandomClass(MenuClass._nowCharaNum,randomArray[count]);
         // ++count;
         // if(count == randomNum)
         // {
         //    targetMC.gotoAndStop(1);
         //    count = 0;
         //    param1.currentTarget.removeEventListener(Event.ENTER_FRAME,RandomFc);
         // }
      }
      
      public static function AllRandomCharaFc(param1:Event) : void
      {
         return;

         // new Tab_RandomClass(charaCount,headerName);
         // ++charaCount;
         // if(charaCount == 9)
         // {
         //    targetMC.gotoAndStop(1);
         //    charaCount = 0;
         //    param1.currentTarget.removeEventListener(Event.ENTER_FRAME,AllRandomCharaFc);
         // }
      }
      
      public static function AllRandomFc(param1:Event) : void
      {
         return;
         // new Tab_RandomClass(charaCount,randomArray[count]);
         // ++count;
         // if(count == randomNum)
         // {
         //    count = 0;
         //    ++charaCount;
         //    if(charaCount == 9)
         //    {
         //       targetMC.gotoAndStop(1);
         //       charaCount = 0;
         //       param1.currentTarget.removeEventListener(Event.ENTER_FRAME,AllRandomFc);
         //    }
         // }
      }
      
      public static function AllRandomCharaPlusFc(param1:Event) : void
      {
         return;
         // if(MenuClass._nowSelectChara[charaCount])
         // {
         //    new Tab_RandomClass(charaCount,headerName);
         // }
         // ++charaCount;
         // if(charaCount == 9)
         // {
         //    targetMC.gotoAndStop(1);
         //    charaCount = 0;
         //    param1.currentTarget.removeEventListener(Event.ENTER_FRAME,AllRandomCharaPlusFc);
         // }
      }
      
      public static function AllRandomPlusFc(param1:Event) : void
      {
         return;
         // if(MenuClass._nowSelectChara[charaCount])
         // {
         //    new Tab_RandomClass(charaCount,randomArray[count]);
         // }
         // ++count;
         // if(count == randomNum || !MenuClass._nowSelectChara[charaCount])
         // {
         //    count = 0;
         //    ++charaCount;
         //    if(charaCount == 9)
         //    {
         //       targetMC.gotoAndStop(1);
         //       charaCount = 0;
         //       param1.currentTarget.removeEventListener(Event.ENTER_FRAME,AllRandomPlusFc);
         //    }
         // }
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         if(count == 0)
         {
            targetMC.gotoAndStop(1);
         }
         targetMC.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
      }
   }
}
