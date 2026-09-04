package menu
{
   public class Hair_SenColorSet
   {
       
      
      public function Hair_SenColorSet(param1:int, param2:int)
      {
         var _loc3_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         super();
         var _loc4_:Object = MenuClass.charaData[param1];
         var _loc5_:Object = MenuClass.charaAdd[param1];
         if(_loc4_["Ear"]["_sen"] == 2)
         {
            _loc6_ = false;
            _loc7_ = 1;
         }
         else if(_loc4_["Ear"]["_sen"] == 1)
         {
            _loc6_ = true;
            _loc7_ = 0.5;
         }
         else
         {
            _loc6_ = true;
            _loc7_ = 1;
         }
         if(param2 == 0)
         {
            try
            {
               _loc3_ = 0;
               while(_loc3_ <= 1)
               {
                  _loc5_.head["ear" + _loc3_].ear.ear.senColor.visible = _loc6_;
                  _loc5_.head["ear" + _loc3_].ear.ear.senColor.alpha = _loc7_;
                  _loc3_++;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(param2 == 1)
         {
            try
            {
               _loc3_ = 0;
               while(_loc3_ <= 1)
               {
                  _loc5_.head.Mimi["mimi" + _loc3_].mimi.senColor.visible = _loc6_;
                  _loc5_.head.Mimi["mimi" + _loc3_].mimi.senColor.alpha = _loc7_;
                  _loc3_++;
               }
               _loc3_ = 0;
               while(_loc3_ <= 1)
               {
                  _loc5_.head.Mimi["mimi" + _loc3_].senColorTop.visible = _loc6_;
                  _loc5_.head.Mimi["mimi" + _loc3_].senColorTop.alpha = _loc7_;
                  _loc3_++;
               }
            }
            catch(myError:Error)
            {
            }
         }
         else if(param2 == 2)
         {
            try
            {
               _loc3_ = 0;
               while(_loc3_ <= 8)
               {
                  _loc5_.Tail.tail["tail" + _loc3_].senColor.visible = _loc6_;
                  _loc5_.Tail.tail["tail" + _loc3_].senColor.alpha = _loc7_;
                  _loc3_++;
               }
            }
            catch(myError:Error)
            {
            }
         }
      }
   }
}
