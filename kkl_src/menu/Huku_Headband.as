package menu
{
   import parameter.Dress_data;
   import system.MeterPersent;
   
   public class Huku_Headband
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var menuNum:int;
      
      public function Huku_Headband(param1:int)
      {
         var _loc4_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         this.menuNum = this.charaData["Headband"]["_menu"];
         var _loc2_:int = this.charaAdd.head.getChildIndex(this.charaAdd.head.Headband0);
         var _loc3_:int = this.charaAdd.head.getChildIndex(this.charaAdd.head.Headband0_swap);
         if(this.charaData["Headband"]["_depth"] == 0)
         {
            if(_loc2_ > _loc3_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Headband0,this.charaAdd.head.Headband0_swap);
               this.charaAdd.head.swapChildren(this.charaAdd.head.Headband1,this.charaAdd.head.Headband1_swap);
            }
         }
         else if(_loc2_ < _loc3_)
         {
            this.charaAdd.head.swapChildren(this.charaAdd.head.Headband0,this.charaAdd.head.Headband0_swap);
            this.charaAdd.head.swapChildren(this.charaAdd.head.Headband1,this.charaAdd.head.Headband1_swap);
         }
         if(this.charaData["Headband"]["_visible"][0])
         {
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               if(Dress_data.HeadbandData[this.menuNum]["depth" + _loc4_] == 0)
               {
                  this.charaAdd.head["Headband" + _loc4_].visible = false;
                  this.charaAdd.head["Headband" + _loc4_].gotoAndStop(1);
               }
               else
               {
                  this.charaAdd.head["Headband" + _loc4_].visible = true;
                  if(_loc4_ == 0)
                  {
                     this.charaAdd.head["Headband" + 0].gotoAndStop(Dress_data.HeadbandData[this.menuNum]["depth" + _loc4_] + 1);
                     new MeterPersent(0.92,1.1,"ContourWidth",param1);
                     this.charaAdd.head["Headband" + 0].scaleX = MeterPersent.MeterPersentNum;
                  }
                  else
                  {
                     this.charaAdd.head["Headband" + _loc4_].gotoAndStop(Dress_data.HeadbandData[this.menuNum]["depth" + _loc4_] + 1);
                  }
               }
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               this.charaAdd.head["Headband" + _loc4_].visible = false;
               this.charaAdd.head["Headband" + _loc4_].gotoAndStop(1);
               _loc4_++;
            }
         }
         new Chara_ColorClass(param1,"Headband");
      }
   }
}
