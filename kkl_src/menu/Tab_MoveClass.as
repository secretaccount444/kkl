package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import undo.MoveAction;
   
   public class Tab_MoveClass
   {
      
      public static var nowbtn:MovieClip;
      
      public static var Nagaoshi_count:int;

      public static var curUndoAction: MoveAction;
       
      
      public function Tab_MoveClass()
      {
         super();
      }
      
      public static function setFc(param1:MovieClip) : void
      {
         curUndoAction = null;
         param1.left.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.left.buttonMode = true;
         param1.right.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.right.buttonMode = true;
      }
      
      public static function deleteFc(param1:MovieClip) : void
      {
         curUndoAction = null;
         param1.left.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         param1.right.removeEventListener(MouseEvent.MOUSE_DOWN,MouseDown);
         try
         {
            Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);
         }
         catch(myError:Error)
         {
         }
      }
      
      public static function MouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         nowbtn = param1.currentTarget as MovieClip;
         nowbtn.gotoAndStop(2);

         curUndoAction = new MoveAction();
         MenuAction(nowbtn);

         nowbtn.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Nagaoshi_count = 0;
         Main.stageVar.addEventListener(Event.ENTER_FRAME,EnterFrame);
      }
      
      public static function MouseUp(param1:MouseEvent) : void
      {
         nowbtn.gotoAndStop(1);
         nowbtn.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,MouseUp);
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,EnterFrame);

         if (curUndoAction) {
            Main.undoTimeline.push(curUndoAction);
         }
         curUndoAction = null;
      }
      
      public static function MenuAction(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:Array = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc4_:Array = new Array(0,0);

         if(MenuClass._nowTargetMode == "All")
         {
            _loc5_ = new Array();
            _loc2_ = 0;
            while(_loc2_ <= MenuClass._characterNum)
            {
               if(MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0])
               {
                  _loc5_.push({
                     "num":_loc2_,
                     "meter":MenuClass.charaData[_loc2_]["Xmove"]["_meter"] / 1000
                  });
               }
               _loc2_++;
            }
            _loc5_.sortOn("meter");
            _loc6_ = int(_loc5_.length) - 1;
            _loc2_ = 0;
            while(_loc2_ < _loc5_.length)
            {
               if(param1.name == "right")
               {
                  if(_loc2_ == _loc6_)
                  {
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Xmove"]["_meter"] = _loc5_[0]["meter"] * 1000;
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Ymove"]["_meter"] = MenuClass.charaData[_loc5_[0]["num"]]["Ymove"]["_meter"];
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Jump"]["_meter"] = MenuClass.charaData[_loc5_[0]["num"]]["Jump"]["_meter"];
                  }
                  else
                  {
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Xmove"]["_meter"] = _loc5_[_loc2_ + 1]["meter"] * 1000;
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Ymove"]["_meter"] = MenuClass.charaData[_loc5_[_loc2_ + 1]["num"]]["Ymove"]["_meter"];
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Jump"]["_meter"] = MenuClass.charaData[_loc5_[_loc2_ + 1]["num"]]["Jump"]["_meter"];
                  }
               }
               else if(param1.name == "left")
               {
                  if(_loc2_ == 0)
                  {
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Xmove"]["_meter"] = _loc5_[_loc6_]["meter"] * 1000;
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Ymove"]["_meter"] = MenuClass.charaData[_loc5_[_loc6_]["num"]]["Ymove"]["_meter"];
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Jump"]["_meter"] = MenuClass.charaData[_loc5_[_loc6_]["num"]]["Jump"]["_meter"];
                  }
                  else
                  {
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Xmove"]["_meter"] = _loc5_[_loc2_ - 1]["meter"] * 1000;
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Ymove"]["_meter"] = MenuClass.charaData[_loc5_[_loc2_ - 1]["num"]]["Ymove"]["_meter"];
                     MenuClass.charaData[_loc5_[_loc2_]["num"]]["Jump"]["_meter"] = MenuClass.charaData[_loc5_[_loc2_ - 1]["num"]]["Jump"]["_meter"];
                  }
               }
               new SetClass(_loc5_[_loc2_]["num"],"Xmove","tab");
               new SetClass(_loc5_[_loc2_]["num"],"Ymove","tab");
               new SetClass(_loc5_[_loc2_]["num"],"Jump","tab");
               _loc2_++;
            }
         }
         else
         {
            _loc5_ = new Array(null);
            if(param1.name == "right")
            {
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  if(MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0] && _loc2_ != MenuClass._nowCharaNum)
                  {
                     if(MenuClass.charaData[_loc2_]["Xmove"]["_meter"] > MenuClass.charaData[MenuClass._nowCharaNum]["Xmove"]["_meter"])
                     {
                        if(_loc5_[0] == null)
                        {
                           _loc5_ = new Array();
                        }
                        _loc5_.push([_loc2_,MenuClass.charaData[_loc2_]["Xmove"]["_meter"]]);
                     }
                  }
                  _loc2_++;
               }
               if(_loc5_[0] == null)
               {
                  _loc4_[0] = MenuClass._nowCharaNum;
                  _loc4_[1] = MenuClass.charaData[MenuClass._nowCharaNum]["Xmove"]["_meter"];
                  _loc2_ = 0;
                  while(_loc2_ <= MenuClass._characterNum)
                  {
                     if(MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0] && _loc2_ != MenuClass._nowCharaNum)
                     {
                        if(MenuClass.charaData[_loc2_]["Xmove"]["_meter"] < _loc4_[1])
                        {
                           _loc4_[0] = _loc2_;
                           _loc4_[1] = MenuClass.charaData[_loc2_]["Xmove"]["_meter"];
                        }
                     }
                     _loc2_++;
                  }
               }
               else
               {
                  _loc4_[0] = _loc5_[0][0];
                  _loc4_[1] = _loc5_[0][1];
                  _loc2_ = 0;
                  while(_loc2_ < _loc5_.length)
                  {
                     if(_loc4_[1] > _loc5_[_loc2_][1])
                     {
                        _loc4_[0] = _loc5_[_loc2_][0];
                        _loc4_[1] = _loc5_[_loc2_][1];
                     }
                     _loc2_++;
                  }
               }
            }
            else if(param1.name == "left")
            {
               _loc2_ = 0;
               while(_loc2_ <= MenuClass._characterNum)
               {
                  if(MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0] && _loc2_ != MenuClass._nowCharaNum)
                  {
                     if(MenuClass.charaData[_loc2_]["Xmove"]["_meter"] < MenuClass.charaData[MenuClass._nowCharaNum]["Xmove"]["_meter"])
                     {
                        if(_loc5_[0] == null)
                        {
                           _loc5_ = new Array();
                        }
                        _loc5_.push([_loc2_,MenuClass.charaData[_loc2_]["Xmove"]["_meter"]]);
                     }
                  }
                  _loc2_++;
               }
               if(_loc5_[0] == null)
               {
                  _loc4_[0] = MenuClass._nowCharaNum;
                  _loc4_[1] = MenuClass.charaData[MenuClass._nowCharaNum]["Xmove"]["_meter"];
                  _loc2_ = 0;
                  while(_loc2_ <= MenuClass._characterNum)
                  {
                     if(MenuClass.charaData[_loc2_]["SelectCharacter"]["_visible"][0] && _loc2_ != MenuClass._nowCharaNum)
                     {
                        if(MenuClass.charaData[_loc2_]["Xmove"]["_meter"] > _loc4_[1])
                        {
                           _loc4_[0] = _loc2_;
                           _loc4_[1] = MenuClass.charaData[_loc2_]["Xmove"]["_meter"];
                        }
                     }
                     _loc2_++;
                  }
               }
               else
               {
                  _loc4_[0] = _loc5_[0][0];
                  _loc4_[1] = _loc5_[0][1];
                  _loc2_ = 0;
                  while(_loc2_ < _loc5_.length)
                  {
                     if(_loc4_[1] < _loc5_[_loc2_][1])
                     {
                        _loc4_[0] = _loc5_[_loc2_][0];
                        _loc4_[1] = _loc5_[_loc2_][1];
                     }
                     _loc2_++;
                  }
               }
            }
            _loc7_ = MenuClass.charaData[_loc4_[0]]["Ymove"]["_meter"];
            _loc8_ = MenuClass.charaData[_loc4_[0]]["Jump"]["_meter"];
            MenuClass.charaData[_loc4_[0]]["Xmove"]["_meter"] = MenuClass.charaData[MenuClass._nowCharaNum]["Xmove"]["_meter"];
            MenuClass.charaData[_loc4_[0]]["Ymove"]["_meter"] = MenuClass.charaData[MenuClass._nowCharaNum]["Ymove"]["_meter"];
            MenuClass.charaData[_loc4_[0]]["Jump"]["_meter"] = MenuClass.charaData[MenuClass._nowCharaNum]["Jump"]["_meter"];
            MenuClass.charaData[MenuClass._nowCharaNum]["Xmove"]["_meter"] = _loc4_[1];
            MenuClass.charaData[MenuClass._nowCharaNum]["Ymove"]["_meter"] = _loc7_;
            MenuClass.charaData[MenuClass._nowCharaNum]["Jump"]["_meter"] = _loc8_;

            if (curUndoAction) {
               curUndoAction.recordNewData();
            }

            new SetClass(_loc4_[0],"Xmove","tab");
            new SetClass(_loc4_[0],"Ymove","tab");
            new SetClass(_loc4_[0],"Jump","tab");
            new SetClass(MenuClass._nowCharaNum,"Xmove","tab");
            new SetClass(MenuClass._nowCharaNum,"Ymove","tab");
            new SetClass(MenuClass._nowCharaNum,"Jump","tab");
            new Tab_SetClass();
         }
      }
      
      public static function EnterFrame(param1:Event) : void
      {
         ++Nagaoshi_count;
         if(Nagaoshi_count >= 10)
         {
            MenuAction(nowbtn);
         }
      }
   }
}
