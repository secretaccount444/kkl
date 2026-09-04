package menu
{
   import parameter.Dress_data;
   
   public class Huku_Gag
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var menuNum:int;
      
      public function Huku_Gag(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         _loc3_ = Dress_data.menuCustom["Gag"].length - 1;
         _loc2_ = 0;
         while(_loc2_ <= _loc3_)
         {
            if(this.charaData["Gag"]["_menu"] == Dress_data.menuCustom["Gag"][_loc2_])
            {
               Dress_data.menuCustomNum[param1]["Gag"] = _loc2_;
               break;
            }
            _loc2_++;
         }
         this.charaData["Gag"]["_menu"] = Dress_data.menuCustom["Gag"][Dress_data.menuCustomNum[param1]["Gag"]];
         this.menuNum = this.charaData["Gag"]["_menu"];
         if(this.charaData["Gag"]["_visible"][0])
         {
            this.menuNum = this.charaData["Gag"]["_menu"];
            this.charaAdd.head.Gag.visible = true;
            this.charaAdd.head.mouth.visible = false;
            this.charaAdd.head.Gag.gotoAndStop(this.menuNum + 2);
            this.charaAdd.head.Gag.faceMask.gotoAndStop(this.charaData["Contour"]["_menu"] + 1);
            this.charaAdd.head.Gag.faceSen.gotoAndStop(this.charaData["Contour"]["_menu"] + 1);
            new Chara_SetSize(param1,"ContourWidth","move");
            new Chara_SetSize(param1,"ContourHeight","move");
            new Chara_ColorClass(param1,"Gag");
         }
         else
         {
            this.charaAdd.head.Gag.visible = false;
            this.charaAdd.head.mouth.visible = true;
            this.charaAdd.head.Gag.gotoAndStop(1);
         }
      }
   }
}
