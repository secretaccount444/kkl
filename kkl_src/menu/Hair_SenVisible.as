package menu
{
   import parameter.Dress_data;
   
   public class Hair_SenVisible
   {
       
      
      public function Hair_SenVisible(param1:int)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         super();
         var _loc2_:Object = MenuClass.charaData[param1];
         var _loc3_:Object = MenuClass.charaAdd[param1];
         if(_loc2_["Hair"]["_sen"] == 2)
         {
            _loc4_ = false;
         }
         else
         {
            _loc4_ = true;
         }
         var _loc6_:int = _loc2_["Bangs"]["_menu"];
         if(!_loc2_["Bangs"]["_visible"][0] || _loc2_["Hat"]["_visible"][0] && _loc2_["Hat"]["_hair0"] == 0)
         {
            _loc5_ = true;
         }
         else if(Dress_data.BangsData[_loc6_]["mae"] == 1)
         {
            _loc5_ = true;
         }
         else
         {
            _loc5_ = false;
         }
         var _loc7_:Boolean = true;
         if(!_loc4_ || !_loc5_)
         {
            _loc7_ = false;
         }
         try
         {
            _loc3_.head.hair.mae_sen.visible = _loc7_;
         }
         catch(myError:Error)
         {
         }
      }
   }
}
