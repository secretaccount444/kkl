package menu
{
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class Huku_Glove
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_Glove(param1:int, param2:int, param3:String)
      {
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(param2 == 0)
         {
            this.SetFc(0);
            if(MenuClass.systemData["LinkGlove"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
            {
               this.LinkFc();
            }
         }
         else if(MenuClass.systemData["LinkGlove"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
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
         this.charaData["Glove1"]["_menu"] = this.charaData["Glove0"]["_menu"];
         this.charaData["Glove1"]["_visible"][0] = this.charaData["Glove0"]["_visible"][0];
         this.charaData["GloveLength1"]["_menu"] = this.charaData["GloveLength0"]["_menu"];
         _loc1_ = 0;
         while(_loc1_ <= 2)
         {
            try
            {
               this.charaData["Glove1"]["_color" + _loc1_][0] = this.charaData["Glove0"]["_color" + _loc1_][0];
               Dress_data.DressCharaData[this.charaNum]["Glove1"][this.charaData["Glove0"]["_menu"]]["_color" + _loc1_] = this.clone(Dress_data.DressCharaData[this.charaNum]["Glove0"][this.charaData["Glove0"]["_menu"]]["_color" + _loc1_]);
               Dress_data.DressCharaData[this.charaNum]["Glove1"][this.charaData["Glove0"]["_menu"]]["_color" + _loc1_][1] = Dress_data.DressCharaData[this.charaNum]["Glove0"][this.charaData["Glove0"]["_menu"]]["_color" + _loc1_][1];
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
         if(this.charaData["Glove" + param1]["_visible"][0])
         {
            new Huku_Ude("Glove" + param1,this.charaNum,param1);
            this.charaAdd["handm1_" + param1].hand.arm0.hand.mouseChildren = false;
            this.charaAdd["handm1_" + param1].hand.arm0.hand.buttonMode = true;
         }
         else
         {
            this.charaAdd["handm1_" + param1].hand.arm0.hand.glove.visible = false;
            this.charaAdd["handm1_" + param1].hand.arm0.hand.glove.gotoAndStop(1);
            this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Glove.visible = false;
            this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Glove.gotoAndStop(1);
            this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Glove_mask.visible = false;
            this.charaAdd["handm1_" + param1].hand.arm1.arm1.arm1.Glove_mask.gotoAndStop(1);
            this.charaAdd["handm0_" + param1].hand.arm2.arm2.Glove.visible = false;
            this.charaAdd["handm0_" + param1].hand.arm2.arm2.Glove.gotoAndStop(1);
            this.charaAdd["handm0_" + param1].hand.arm2.arm2.Glove_mask.visible = false;
            this.charaAdd["handm0_" + param1].hand.arm2.arm2.Glove_mask.gotoAndStop(1);
            if(param1 == 0)
            {
               new Chara_ColorClass(this.charaNum,"LeftHand");
            }
            else
            {
               new Chara_ColorClass(this.charaNum,"RightHand");
            }
            this.charaAdd["handm1_" + param1].hand.arm0.hand.mouseChildren = true;
            this.charaAdd["handm1_" + param1].hand.arm0.hand.buttonMode = false;
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
