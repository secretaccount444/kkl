package menu
{
   public class Stage_ZoomClass
   {
       
      
      private var _stageWidth:uint = 800;
      
      private var _stageHeight:uint = 600;
      
      public function Stage_ZoomClass(param1:Number, param2:String)
      {
         var _loc7_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:int = 0;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         super();
         var _loc3_:Number = Math.floor(Main.mainMask.width);
         var _loc4_:Number = Main.mainMask.height;
         var _loc5_:Number = Main.mainMask.width - this._stageWidth;
         var _loc6_:Number = Main.mainWindow.x * -1;
         var _loc8_:Number = Main.mainMask.height - this._stageHeight;
         var _loc9_:Number = Main.mainWindow.y * -1;
         if(_loc3_ == this._stageWidth)
         {
            _loc7_ = 0.5;
            _loc10_ = 0.18;
         }
         else
         {
            _loc7_ = _loc6_ / _loc5_;
            _loc10_ = _loc9_ / _loc8_;
         }
         var _loc11_:Number;
         var _loc12_:Number = (_loc11_ = MenuClass.systemData["Zoom"]["_meter"] * -1) / 100;
         var _loc13_:Number = 1 - _loc12_;
         if(param1 >= 1)
         {
            Main.mainWindow.scaleX = Main.mainWindow.scaleY = Main.mainMask.scaleX = Main.mainMask.scaleY = param1;
         }
         else if(_loc13_ >= 0)
         {
            Main.mainWindow.scaleX = Main.mainWindow.scaleY = Main.mainMask.scaleX = Main.mainMask.scaleY = _loc13_;
         }
         else
         {
            Main.mainWindow.scaleX = Main.mainWindow.scaleY = Main.mainMask.scaleX = Main.mainMask.scaleY = 0;
         }
         _loc14_ = 0;
         while(_loc14_ <= MenuClass._characterNum)
         {
            new SetClass(_loc14_,"CharaDropShadowX","zoom");
            new SetClass(_loc14_,"CharaDropShadowY","zoom");
            new SetClass(_loc14_,"CharaDropShadowDistance","zoom");
            new SetClass(_loc14_,"CharaBlurX","zoom");
            new SetClass(_loc14_,"CharaBlurY","zoom");
            _loc14_++;
         }
         if(param2 == "move" || param2 == "paste")
         {
            Main.mainWindow.x = MenuClass.systemData["Zoom"]["_x"];
            Main.mainWindow.y = MenuClass.systemData["Zoom"]["_y"];
         }
         else
         {
            if(MenuClass.systemData["Zoom"]["_meter"] < 0)
            {
               Main.mainWindow.x = (this._stageWidth - Main.mainMask.width) / 2;
               Main.mainWindow.y = (_loc4_ - Main.mainMask.height) / 2;
            }
            else
            {
               Main.mainWindow.x -= (Main.mainMask.width - _loc3_) * _loc7_;
               Main.mainWindow.y -= (Main.mainMask.height - _loc4_) * _loc10_;
               _loc15_ = this._stageWidth - Main.mainMask.width;
               if(Main.mainWindow.x > 0)
               {
                  Main.mainWindow.x = 0;
               }
               else if(Main.mainWindow.x < _loc15_)
               {
                  Main.mainWindow.x = _loc15_;
               }
               _loc16_ = this._stageHeight - Main.mainMask.height;
               if(Main.mainWindow.y > 0)
               {
                  Main.mainWindow.y = 0;
               }
               else if(Main.mainWindow.y < _loc16_)
               {
                  Main.mainWindow.y = _loc16_;
               }
            }
            MenuClass.systemData["Zoom"]["_x"] = Math.floor(Main.mainWindow.x);
            MenuClass.systemData["Zoom"]["_y"] = Math.floor(Main.mainWindow.y);
         }
      }
   }
}
