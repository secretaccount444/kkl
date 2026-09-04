package menu
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class HeaderbtnClass
   {
      
      public static var headerMenu:MovieClip;
       
      
      private var nowbtn:MovieClip;
      
      private var Nagaoshi_count:int;
      
      public function HeaderbtnClass()
      {
         var _loc1_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MovieClip = null;
         var _loc7_:String = null;
         super();
         var _loc2_:int = MenuClass.MY_MENUNAME.length - 1;
         headerMenu = new Menu_Load.HeaderMenuTabClass();
         Main.stageVar.addChild(headerMenu);
         headerMenu.x = 3;
         headerMenu.y = 568;
         Main.stageVar.setChildIndex(headerMenu,Main.stageVar.getChildIndex(Main.openingBg));
         headerMenu.minus.addEventListener(MouseEvent.MOUSE_DOWN,this.MenuMouseDown);
         headerMenu.minus.buttonMode = true;
         headerMenu.plus.addEventListener(MouseEvent.MOUSE_DOWN,this.MenuMouseDown);
         headerMenu.plus.buttonMode = true;
         headerMenu.menuBtn.addEventListener(MouseEvent.MOUSE_DOWN,this.AllMenuMouseDown);
         headerMenu.menuBtn.buttonMode = true;
         headerMenu.num0.text = MenuClass._nowHeaderMenuNum;
         var _loc3_:int = 1;
         var _loc4_:Number = -1;
         _loc1_ = 0;
         while(_loc1_ <= _loc2_)
         {
            if((_loc5_ = MenuClass.MY_MENUNAME[_loc1_][0]) == null)
            {
               MenuClass.headerAdd[_loc5_] = null;
            }
            else
            {
               _loc6_ = new Menu_Load.HeaderBtnClass();
               Main.stageVar.addChild(_loc6_);
               Main.stageVar.setChildIndex(_loc6_,Main.stageVar.getChildIndex(Main.openingBg) - 1);
               _loc6_.addEventListener(MouseEvent.MOUSE_DOWN,this.MouseDown);
               if(MenuClass.MY_MENUNAME[_loc1_][3] == 0)
               {
                  if(_loc5_ == "Tool")
                  {
                     _loc6_.x = 718;
                  }
                  else if(_loc5_ == "Escape")
                  {
                     _loc6_.x = 759;
                  }
                  else if(_loc5_ == "Save")
                  {
                     _loc6_.x = 677;
                  }
                  else if(_loc5_ == "StoryTool")
                  {
                     _loc6_.x = 759;
                     _loc6_.visible = false;
                  }
               }
               else
               {
                  if(MenuClass.MY_MENUNAME[_loc1_][4] == false && Main.r18Check)
                  {
                     _loc6_.x = -5000;
                     _loc6_.visible = false;
                     if(MenuClass.MY_MENUNAME[_loc1_][3] != _loc3_)
                     {
                        _loc4_ = -1;
                     }
                  }
                  else
                  {
                     if(MenuClass.MY_MENUNAME[_loc1_][3] == _loc3_)
                     {
                        _loc4_++;
                     }
                     else
                     {
                        _loc4_ = 0;
                     }
                     if(MenuClass.MY_MENUNAME[_loc1_][3] != 10)
                     {
                        _loc6_.x = 41 * _loc4_ + 127;
                     }
                     else if(_loc5_ == "EasyTool")
                     {
                        _loc6_.x = 718;
                     }
                     else if(_loc5_ == "EasySave")
                     {
                        _loc6_.x = 677;
                     }
                     else
                     {
                        _loc6_.x = 41 * _loc4_;
                     }
                  }
                  if(MenuClass.MY_MENUNAME[_loc1_][3] >= 2)
                  {
                     _loc6_.visible = false;
                  }
               }
               _loc6_.y = 568;
               new ColorChangeClass(_loc6_.bg.obj,MenuClass.MY_MENUNAME[_loc1_][1]);
               _loc7_ = _loc5_;
               if(_loc5_.substring(0,4) == "Easy")
               {
                  _loc7_ = _loc5_.substring(4,_loc5_.length);
               }
               _loc6_.icon.gotoAndStop(_loc7_);
               _loc6_.buttonMode = true;
               _loc6_.mouseChildren = false;
               _loc6_.name = _loc5_;
               MenuClass.headerAdd[_loc5_] = _loc6_;
               MenuClass.headerAdd[_loc5_].num = _loc1_;
               MenuClass.headerAdd[_loc5_].bg.shadow0.visible = false;
               new HeaderbtnShadow(_loc5_,false);
            }
            _loc3_ = MenuClass.MY_MENUNAME[_loc1_][3];
            _loc1_++;
         }
      }
      
      private function MenuMouseDown(param1:MouseEvent) : void
      {
         new Stage_MoveCheckClass();
         this.nowbtn = param1.currentTarget as MovieClip;
         this.nowbtn.gotoAndStop(2);
         new HeaderMenuClass(this.nowbtn.name);
         new HeaderbtnAllMenuClose();
         this.nowbtn.addEventListener(MouseEvent.MOUSE_UP,this.MenuMouseUp);
         Main.stageVar.addEventListener(MouseEvent.MOUSE_UP,this.MenuMouseUp);
         this.Nagaoshi_count = 0;
         Main.stageVar.addEventListener(Event.ENTER_FRAME,this.MenuEnterFrame);
      }
      
      private function AllMenuMouseDown(param1:MouseEvent) : void
      {
         new HeaderbtnAllMenu();
      }
      
      private function MenuMouseUp(param1:MouseEvent) : void
      {
         this.nowbtn.gotoAndStop(1);
         this.nowbtn.removeEventListener(MouseEvent.MOUSE_UP,this.MenuMouseUp);
         Main.stageVar.removeEventListener(MouseEvent.MOUSE_UP,this.MenuMouseUp);
         Main.stageVar.removeEventListener(Event.ENTER_FRAME,this.MenuEnterFrame);
      }
      
      private function MenuEnterFrame(param1:Event) : void
      {
         ++this.Nagaoshi_count;
         if(this.Nagaoshi_count >= 10)
         {
            this.Nagaoshi_count = 0;
            new HeaderMenuClass(this.nowbtn.name);
         }
      }
      
      private function MouseDown(param1:MouseEvent) : void
      {
         MenuClass._nowTabName = null;
         new HeaderbtnFc(param1.currentTarget.name);
      }
   }
}
