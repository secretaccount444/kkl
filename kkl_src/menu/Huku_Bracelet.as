package menu
{
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class Huku_Bracelet
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_Bracelet(param1:int, param2:int, param3:String)
      {
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(param2 == 0)
         {
            this.SetFc(0);
            if(MenuClass.systemData["LinkBracelet"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
            {
               this.LinkFc();
            }
         }
         else if(MenuClass.systemData["LinkBracelet"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
         {
            this.LinkFc();
         }
         else
         {
            this.SetFc(1);
         }
      }
      
      private function LinkFc() : void
      {
         var _loc1_:int = 0;
         this.charaData["Bracelet1"]["_menu"] = this.charaData["Bracelet0"]["_menu"];
         this.charaData["Bracelet1"]["_visible"][0] = this.charaData["Bracelet0"]["_visible"][0];
         _loc1_ = 0;
         while(_loc1_ <= 2)
         {
            try
            {
               this.charaData["Bracelet1"]["_color" + _loc1_][0] = this.charaData["Bracelet0"]["_color" + _loc1_][0];
               Dress_data.DressCharaData[this.charaNum]["Bracelet1"][this.charaData["Bracelet0"]["_menu"]]["_color" + _loc1_] = this.clone(Dress_data.DressCharaData[this.charaNum]["Bracelet0"][this.charaData["Bracelet0"]["_menu"]]["_color" + _loc1_]);
               Dress_data.DressCharaData[this.charaNum]["Bracelet1"][this.charaData["Bracelet0"]["_menu"]]["_color" + _loc1_][1] = Dress_data.DressCharaData[this.charaNum]["Bracelet0"][this.charaData["Bracelet0"]["_menu"]]["_color" + _loc1_][1];
            }
            catch(myError:Error)
            {
            }
            _loc1_++;
         }
         this.SetFc(1);
      }
      
      private function SetFc(param1:int) : void
      {
         if(this.charaData["Bracelet" + param1]["_visible"][0])
         {
            new Huku_Ude("Bracelet" + param1,this.charaNum,param1);
         }
         else
         {
            this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.actual.Bracelet.visible = false;
            this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.actual.Bracelet.gotoAndStop(1);
            if(param1 == 0)
            {
               new Chara_ColorClass(this.charaNum,"LeftHand");
            }
            else
            {
               new Chara_ColorClass(this.charaNum,"RightHand");
            }
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
