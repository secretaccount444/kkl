package menu
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class Tab_StoryPlusMinusFc
   {
       
      
      private var i:int;
      
      private var n:int;
      
      private var enterCount:int = 1;
      
      private var storyLoadFlag:Boolean = false;
      
      public function Tab_StoryPlusMinusFc(param1:String)
      {
         var _loc2_:Array = null;
         super();
         if(param1 == "plus")
         {
            if(MenuClass.StoryTimeLineData.length < 1000)
            {
               if(MenuClass.StoryTimeLineData.length == MenuClass.systemData["Story_Page"]["_menu"] + 1)
               {
                  MenuClass.StoryTimeLineData.push(this.clone(MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]]));
               }
               else
               {
                  _loc2_ = this.clone(MenuClass.StoryTimeLineData);
                  this.n = MenuClass.StoryTimeLineData.length;
                  MenuClass.StoryTimeLineData = new Array();
                  this.i = 0;
                  while(this.i <= this.n)
                  {
                     if(this.i > MenuClass.systemData["Story_Page"]["_menu"])
                     {
                        MenuClass.StoryTimeLineData.push(this.clone(_loc2_[this.i - 1]));
                     }
                     else
                     {
                        MenuClass.StoryTimeLineData.push(this.clone(_loc2_[this.i]));
                     }
                     ++this.i;
                  }
               }
            }
         }
         else if(param1 == "minus")
         {
            if(MenuClass.StoryTimeLineData.length != 1)
            {
               MenuClass.StoryBackupData = this.clone(MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]]);
               MenuClass.StoryTimeLineData.splice(MenuClass.systemData["Story_Page"]["_menu"],1);
               MenuClass.BeforePage = MenuClass.systemData["Story_Page"]["_menu"];
               if(MenuClass.systemData["Story_Page"]["_menu"] == MenuClass.StoryTimeLineData.length)
               {
                  MenuClass.systemData["Story_Page"]["_menu"] = MenuClass.StoryTimeLineData.length - 1;
               }
               this.enterCount = 0;
               if(!this.storyLoadFlag)
               {
                  Main.mainWindow.addEventListener(Event.ENTER_FRAME,this.EnterFrame);
               }
            }
         }
         MenuClass.menuData["Story_Page"] = MenuClass.StoryTimeLineData.length - 1;
         new Tab_TextInClass(1,"Story_Page",MenuClass.menuData["Story_Page"]);
         new Tab_SetClass();
      }
      
      private function EnterFrame(param1:Event) : void
      {
         this.storyLoadFlag = true;
         ++this.enterCount;
         if(this.enterCount == 1)
         {
            new Tab_IEInOut("setIN",MenuClass.StoryTimeLineData[MenuClass.systemData["Story_Page"]["_menu"]][9],MenuClass._nowCharaNum);
            this.storyLoadFlag = false;
            Main.mainWindow.removeEventListener(Event.ENTER_FRAME,this.EnterFrame);
         }
      }
      
      private function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
