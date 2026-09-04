package menu
{
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class Huku_Item
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      private var handNum:int;
      
      private var handName:String;
      
      public function Huku_Item(param1:int, param2:String, param3:String)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(param2 == "Item0")
         {
            _loc5_ = Dress_data.menuCustom["Item0"].length - 1;
            _loc4_ = 0;
            while(_loc4_ <= _loc5_)
            {
               if(this.charaData["Item0"]["_menu"] == Dress_data.menuCustom["Item0"][_loc4_])
               {
                  Dress_data.menuCustomNum[this.charaNum]["Item0"] = _loc4_;
                  break;
               }
               _loc4_++;
            }
            this.charaData["Item0"]["_menu"] = Dress_data.menuCustom["Item0"][Dress_data.menuCustomNum[this.charaNum]["Item0"]];
            this.handNum = 0;
            this.handName = "LeftHand";
            this.SetFc(0);
            if(MenuClass.systemData["LinkItem"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
            {
               this.LinkFc();
            }
         }
         else
         {
            _loc5_ = Dress_data.menuCustom["Item1"].length - 1;
            _loc4_ = 0;
            while(_loc4_ <= _loc5_)
            {
               if(this.charaData["Item1"]["_menu"] == Dress_data.menuCustom["Item1"][_loc4_])
               {
                  Dress_data.menuCustomNum[this.charaNum]["Item1"] = _loc4_;
                  break;
               }
               _loc4_++;
            }
            this.charaData["Item1"]["_menu"] = Dress_data.menuCustom["Item1"][Dress_data.menuCustomNum[this.charaNum]["Item1"]];
            this.handNum = 1;
            this.handName = "RightHand";
            if(MenuClass.systemData["LinkItem"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
            {
               this.LinkFc();
            }
            else
            {
               this.SetFc(1);
            }
         }
      }
      
      private function LinkFc() : void
      {
         var _loc1_:int = 0;
         this.charaData["Item1"]["_menu"] = this.charaData["Item0"]["_menu"];
         Dress_data.menuCustomNum[this.charaNum]["Item1"] = Dress_data.menuCustomNum[this.charaNum]["Item0"];
         this.charaData["Item1"]["_visible"][0] = this.charaData["Item0"]["_visible"][0];
         _loc1_ = 0;
         while(_loc1_ <= 2)
         {
            try
            {
               this.charaData["Item1"]["_color" + _loc1_][0] = this.charaData["Item0"]["_color" + _loc1_][0];
               Dress_data.DressCharaData[this.charaNum]["Item1"][this.charaData["Item0"]["_menu"]]["_color" + _loc1_] = this.clone(Dress_data.DressCharaData[this.charaNum]["Item0"][this.charaData["Item0"]["_menu"]]["_color" + _loc1_]);
               Dress_data.DressCharaData[this.charaNum]["Item1"][this.charaData["Item0"]["_menu"]]["_color" + _loc1_][1] = Dress_data.DressCharaData[this.charaNum]["Item0"][this.charaData["Item0"]["_menu"]]["_color" + _loc1_][1];
            }
            catch(myError:Error)
            {
            }
            _loc1_++;
         }
         this.handNum = 1;
         this.handName = "RightHand";
         this.SetFc(1);
      }
      
      private function SetFc(param1:int) : void
      {
         this.charaAdd["handm1_" + this.handNum].hand.item.hand.actual.visible = this.charaData["Item" + param1]["_visible"][0];
         if(this.charaData["Item" + param1]["_visible"][0])
         {
            this.charaAdd["handm1_" + this.handNum].hand.item.hand.actual.gotoAndStop(this.charaData["Item" + param1]["_menu"] + 2);
            MenuClass.menuData[this.handName] = this.charaAdd["handm1_" + this.handNum].hand.item.hand.actual.hand.totalFrames - 1;
            if(this.charaData[this.handName]["_menu"] > MenuClass.menuData[this.handName])
            {
               this.charaData[this.handName]["_menu"] = 0;
            }
         }
         else
         {
            this.charaAdd["handm1_" + this.handNum].hand.item.hand.actual.gotoAndStop(1);
            MenuClass.menuData[this.handName] = this.charaAdd["handm1_" + this.handNum].hand.arm0.hand.actual.totalFrames - 1;
         }
         new Tab_TextInClass(1,this.handName,MenuClass.menuData[this.handName]);
         new Move_UdeClass(this.charaNum);
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
