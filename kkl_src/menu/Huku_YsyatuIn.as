package menu
{
   import parameter.Dress_data;
   
   public class Huku_YsyatuIn
   {
       
      
      public function Huku_YsyatuIn(param1:int)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaData[param1];
         _loc4_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt);
         _loc7_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt_swap0);
         if(_loc4_ < _loc7_)
         {
            _loc2_.dou.swapChildren(_loc2_.dou.dou_Skirt,_loc2_.dou.dou_Skirt_swap0);
         }
         _loc4_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt);
         _loc6_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt_swap1);
         if(_loc4_ < _loc6_)
         {
            _loc2_.dou.swapChildren(_loc2_.dou.dou_Skirt,_loc2_.dou.dou_Skirt_swap1);
         }
         _loc4_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt);
         _loc5_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt_swap2);
         if(_loc4_ < _loc5_)
         {
            _loc2_.dou.swapChildren(_loc2_.dou.dou_Skirt,_loc2_.dou.dou_Skirt_swap2);
         }
         _loc5_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt_swap2);
         if((_loc7_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt_swap0)) > _loc5_)
         {
            _loc2_.dou.swapChildren(_loc2_.dou.dou_Skirt_swap0,_loc2_.dou.dou_Skirt_swap2);
         }
         _loc6_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt_swap1);
         if((_loc7_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt_swap0)) > _loc6_)
         {
            _loc2_.dou.swapChildren(_loc2_.dou.dou_Skirt_swap0,_loc2_.dou.dou_Skirt_swap1);
         }
         _loc5_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt_swap2);
         if((_loc6_ = _loc2_.dou.getChildIndex(_loc2_.dou.dou_Skirt_swap1)) > _loc5_)
         {
            _loc2_.dou.swapChildren(_loc2_.dou.dou_Skirt_swap1,_loc2_.dou.dou_Skirt_swap2);
         }
         var _loc8_:int = _loc3_["TsyatuSkirt"]["_menu"];
         var _loc9_:Boolean = false;
         if(_loc3_["Tsyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc8_]["skirt"] != 0)
         {
            _loc9_ = true;
         }
         _loc8_ = _loc3_["YsyatuSkirt"]["_menu"];
         var _loc10_:Boolean = false;
         if(_loc3_["Ysyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc8_]["skirt"] != 0)
         {
            _loc10_ = true;
         }
         if(_loc9_ && _loc3_["Skirt"]["_depth"] >= 1 || _loc10_ && _loc3_["Skirt"]["_depth"] == 2)
         {
            _loc2_.dou.dou_Skirt.Skirt.scaleX = 1.07;
            _loc2_.dou.dou_Skirt.Skirt.x = -80.5;
            _loc2_.dou.dou_Skirt.Zubon.scaleX = 1.07;
         }
         else
         {
            _loc2_.dou.dou_Skirt.Skirt.scaleX = 1;
            _loc2_.dou.dou_Skirt.Skirt.x = -75.5;
            _loc2_.dou.dou_Skirt.Zubon.scaleX = 1;
         }
         new Huku_ZubonAshi(param1,0);
         new Huku_ZubonAshi(param1,1);
         if(Dress_data.ObjData["Waist"][_loc3_["Waist"]["_menu"]]["harabote"] != 0)
         {
            _loc2_.dou.swapChildren(_loc2_.dou.dou_Skirt,_loc2_.dou.dou_Skirt_swap0);
         }
         else if(_loc3_["Skirt"]["_depth"] == 1)
         {
            _loc2_.dou.swapChildren(_loc2_.dou.dou_Skirt,_loc2_.dou.dou_Skirt_swap2);
         }
         else if(_loc3_["Skirt"]["_depth"] == 0)
         {
            _loc2_.dou.swapChildren(_loc2_.dou.dou_Skirt,_loc2_.dou.dou_Skirt_swap1);
         }
         new Huku_YsyatuDouShime(param1);
      }
   }
}
