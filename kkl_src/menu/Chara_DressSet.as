package menu
{
   import flash.utils.ByteArray;
   import parameter.Chara_IEdata;
   import parameter.Dress_data;
   
   public class Chara_DressSet
   {
       
      
      public function Chara_DressSet(param1:int)
      {
         var _loc4_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaData[param1];
         var _loc3_:Object = Dress_data.DressCharaData[param1];
         Chara_IEdata.MimiData[param1] = this.clone(_loc2_["Mimi"]);
         Chara_IEdata.MimiColorData[param1] = this.clone(_loc3_["Mimi"]);
         Chara_IEdata.TailData[param1] = this.clone(_loc2_["Tail"]);
         Chara_IEdata.TailScaleData[param1] = this.clone(_loc2_["TailScale"]);
         Chara_IEdata.TailColorData[param1] = this.clone(_loc3_["Tail"]);
         Chara_IEdata.HaneData[param1] = this.clone(_loc2_["Hane"]);
         Chara_IEdata.HaneScaleData[param1] = this.clone(_loc2_["HaneScale"]);
         Chara_IEdata.HaneYData[param1] = this.clone(_loc2_["HaneY"]);
         Chara_IEdata.HaneColorData[param1] = this.clone(_loc3_["Hane"]);
         Chara_IEdata.HornData[param1] = this.clone(_loc2_["Horn"]);
         Chara_IEdata.HornScaleData[param1] = this.clone(_loc2_["HornScale"]);
         Chara_IEdata.HornYData[param1] = this.clone(_loc2_["HornY"]);
         Chara_IEdata.HornColorData[param1] = this.clone(_loc3_["Horn"]);
         Chara_IEdata.BuraData[param1] = this.clone(_loc2_["Bura"]);
         Chara_IEdata.PantuData[param1] = this.clone(_loc2_["Pantu"]);
         Chara_IEdata.BuraColorData[param1] = this.clone(_loc3_["Bura"]);
         Chara_IEdata.PantuColorData[param1] = this.clone(_loc3_["Pantu"]);
         Chara_IEdata.MeganeData[param1] = this.clone(_loc2_["Megane"]);
         Chara_IEdata.MeganeYData[param1] = this.clone(_loc2_["MeganeY"]);
         Chara_IEdata.MeganeColorData[param1] = this.clone(_loc3_["Megane"]);
         Chara_IEdata.Item0Data[param1] = this.clone(_loc2_["Item0"]);
         Chara_IEdata.Item0ColorData[param1] = this.clone(_loc3_["Item0"]);
         Chara_IEdata.Item1Data[param1] = this.clone(_loc2_["Item1"]);
         Chara_IEdata.Item1ColorData[param1] = this.clone(_loc3_["Item1"]);
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
