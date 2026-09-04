package menu
{
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   import system.MeterPersent;
   
   public class Huku_Earring
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      private var menuNum:int;
      
      public function Huku_Earring(param1:int, param2:int, param3:String)
      {
         var _loc4_:int = 0;
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         if(param2 == 0)
         {
            this.menuNum = this.charaData["Earring0"]["_menu"];
            if(MenuClass.systemData["LinkEarring"]["_flag"] && (param3 == "menu" || param3 == "tab" || param3 == "random"))
            {
               this.charaData["Earring1"]["_menu"] = this.menuNum;
               this.charaData["Earring1"]["_visible"][0] = this.charaData["Earring0"]["_visible"][0];
               _loc4_ = 0;
               while(_loc4_ <= 2)
               {
                  try
                  {
                     this.charaData["Earring1"]["_color" + _loc4_][0] = this.charaData["Earring0"]["_color" + _loc4_][0];
                     Dress_data.DressCharaData[this.charaNum]["Earring1"][this.menuNum]["_color" + _loc4_] = this.clone(Dress_data.DressCharaData[this.charaNum]["Earring0"][this.menuNum]["_color" + _loc4_]);
                     Dress_data.DressCharaData[this.charaNum]["Earring1"][this.menuNum]["_color" + _loc4_][1] = Dress_data.DressCharaData[this.charaNum]["Earring0"][this.menuNum]["_color" + _loc4_][1];
                  }
                  catch(myError:Error)
                  {
                  }
                  _loc4_++;
               }
               this.SetFc(1,this.charaData["Earring1"]["_menu"]);
            }
            this.SetFc(0,this.menuNum);
         }
         else if(param2 == 1)
         {
            this.SetFc(1,this.charaData["Earring1"]["_menu"]);
         }
      }
      
      private function SetFc(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         this.charaAdd.head["ear" + param1].ear.Earring.gotoAndStop(1);
         this.charaAdd.head["ear" + param1].ear.Earring.Earring.gotoAndStop(1);
         if(this.charaData["Earring" + param1]["_visible"][0])
         {
            if(!Dress_data.EarringData[this.charaData["Earring" + param1]["_menu"]]["rotation"])
            {
               this.charaAdd.head["ear" + param1].ear.Earring.Earring.rotation = 0;
            }
            else
            {
               new MeterPersent(-30,30,"Head",this.charaNum);
               _loc3_ = MeterPersent.MeterPersentNum;
               if(this.charaData["Earring" + param1]["_visible"][0] && Dress_data.EarringData[this.charaData["Earring" + param1]["_menu"]]["rotation"])
               {
                  if(param1 == 0)
                  {
                     this.charaAdd.head["ear" + param1].ear.Earring.Earring.rotation = _loc3_ * -1;
                  }
                  else
                  {
                     this.charaAdd.head["ear" + param1].ear.Earring.Earring.rotation = _loc3_;
                  }
               }
            }
            this.charaAdd.head["ear" + param1].ear.Earring.visible = true;
            this.charaAdd.head["ear" + param1].ear.Earring.Earring.gotoAndStop(param2 + 2);
            new Chara_ColorClass(this.charaNum,"Earring" + param1);
         }
         else
         {
            this.charaAdd.head["ear" + param1].ear.Earring.visible = false;
            this.charaAdd.head["ear" + param1].ear.Earring.gotoAndStop(1);
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
