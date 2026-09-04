package menu
{
   import parameter.Dress_data;
   
   public class Huku_Headphone
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      private var menuNum:int;
      
      public function Huku_Headphone(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         this.menuNum = this.charaData["Headphone"]["_menu"];
         if(this.charaData["Headphone"]["_visible"][0])
         {
            _loc3_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Headphone0);
            _loc4_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Headphone0_swap);
            if(Dress_data.HeadphoneData[this.menuNum]["depth"] == 1)
            {
               if(_loc3_ < _loc4_)
               {
                  this.charaAdd.head.swapChildren(this.charaAdd.head.Headphone0,this.charaAdd.head.Headphone0_swap);
                  this.charaAdd.head.swapChildren(this.charaAdd.head.Headphone1,this.charaAdd.head.Headphone1_swap);
               }
            }
            else if(_loc3_ > _loc4_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Headphone0,this.charaAdd.head.Headphone0_swap);
               this.charaAdd.head.swapChildren(this.charaAdd.head.Headphone1,this.charaAdd.head.Headphone1_swap);
            }
            _loc2_ = 0;
            while(_loc2_ <= 1)
            {
               if(this.charaData["Headphone"]["_g0"] == 0)
               {
                  this.charaAdd.head["Headphone" + _loc2_].visible = true;
                  this.charaAdd.head["Headphone" + _loc2_].gotoAndStop(this.menuNum + 2);
                  this.charaAdd["Headphone" + _loc2_].visible = false;
                  this.charaAdd["Headphone" + _loc2_].gotoAndStop(1);
                  this.charaAdd["HeadphoneNeck" + _loc2_].visible = false;
                  this.charaAdd["HeadphoneNeck" + _loc2_].gotoAndStop(1);
                  if(Dress_data.HeadphoneData[this.menuNum]["top"] == 0)
                  {
                     this.charaAdd.head.Headphone_Top.visible = false;
                     this.charaAdd.head.Headphone_Top.gotoAndStop(1);
                  }
                  else
                  {
                     this.charaAdd.head.Headphone_Top.visible = true;
                     this.charaAdd.head.Headphone_Top.gotoAndStop(Dress_data.HeadphoneData[this.menuNum]["top"] + 1);
                  }
               }
               else if(this.charaData["Headphone"]["_g0"] == 1)
               {
                  this.charaAdd.head["Headphone" + _loc2_].visible = false;
                  this.charaAdd.head["Headphone" + _loc2_].gotoAndStop(1);
                  this.charaAdd["Headphone" + _loc2_].visible = true;
                  this.charaAdd["Headphone" + _loc2_].gotoAndStop(this.menuNum + 2);
                  this.charaAdd["HeadphoneNeck" + _loc2_].visible = true;
                  this.charaAdd["HeadphoneNeck" + _loc2_].gotoAndStop(this.menuNum + 2);
                  this.charaAdd.head.Headphone_Top.visible = false;
                  this.charaAdd.head.Headphone_Top.gotoAndStop(1);
               }
               _loc2_++;
            }
            try
            {
               if(this.charaAdd["Headphone" + 0].left)
               {
                  this.charaAdd["Headphone" + 1].left.visible = false;
               }
               else if(this.charaAdd["Headphone" + 1].right)
               {
                  this.charaAdd["Headphone" + 0].right.visible = false;
               }
            }
            catch(myError:Error)
            {
            }
            new Chara_ColorClass(this.charaNum,"Headphone");
         }
         else
         {
            this.charaAdd.head.Headphone_Top.visible = false;
            this.charaAdd.head.Headphone_Top.gotoAndStop(1);
            _loc2_ = 0;
            while(_loc2_ <= 1)
            {
               this.charaAdd.head["Headphone" + _loc2_].visible = false;
               this.charaAdd["Headphone" + _loc2_].visible = false;
               this.charaAdd["HeadphoneNeck" + _loc2_].visible = false;
               this.charaAdd.head["Headphone" + _loc2_].gotoAndStop(1);
               this.charaAdd["Headphone" + _loc2_].gotoAndStop(1);
               this.charaAdd["HeadphoneNeck" + _loc2_].gotoAndStop(1);
               _loc2_++;
            }
         }
      }
   }
}
