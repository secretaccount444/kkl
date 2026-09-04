package menu
{
   import parameter.Dress_data;
   
   public class Huku_Mosaic
   {
      
      public static var SGCheck:Boolean;
      
      public static var TsyatuCheck:Boolean;
      
      public static var YsyatuCheck:Boolean;
      
      public static var VestCheck:Boolean;
      
      public static var NawaCheck:Boolean;
      
      public static var PantuCheck:Boolean;
      
      public static var SkirtCheck:Boolean;
      
      public static var ZubonCheck:Boolean;
      
      public static var TightsCheck:Boolean;
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_Mosaic(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         PantuCheck = false;
         if(this.charaAdd.dou.dou_shitaHuku.Pantu.visible == false && this.charaAdd.dou.dou_shitaHuku.Spantu.visible == false)
         {
            PantuCheck = true;
         }
         else
         {
            if(Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["mosaic"] || Dress_data.PantuData[this.charaData["Pantu"]["_menu"]]["mosaic"] == 1)
            {
               PantuCheck = true;
            }
            if(this.charaData["Bura"]["_visible"][0] && Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["link"] == 0 && !Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["mosaic"])
            {
               PantuCheck = false;
            }
         }
         NawaCheck = false;
         if(this.charaAdd.dou.dou_shitaHuku.Nawa.visible == false)
         {
            NawaCheck = true;
         }
         else if(Dress_data.NawaData[this.charaData["Nawa"]["_menu"]]["harabote"])
         {
            if(Dress_data.NawaData[this.charaData["Nawa"]["_menu"]]["mosaic"])
            {
               NawaCheck = true;
            }
         }
         else if(Dress_data.NawaData[this.charaData["Nawa"]["_menu"]]["mosaic"])
         {
            NawaCheck = true;
         }
         VestCheck = false;
         if(this.charaAdd.dou.VestOnePiece.visible == false)
         {
            VestCheck = true;
         }
         else if((_loc4_ = Dress_data.ObjData["onePieceSkirt"][this.charaData["VestSkirt"]["_menu"]]["skirt"] - 1) != -1)
         {
            if(Dress_data.onePieceDouData[_loc4_]["mosaic"])
            {
               VestCheck = true;
            }
         }
         YsyatuCheck = false;
         if(this.charaAdd.dou.YsyatuOnePiece.visible == false)
         {
            YsyatuCheck = true;
         }
         else if((_loc4_ = Dress_data.ObjData["onePieceSkirt"][this.charaData["YsyatuSkirt"]["_menu"]]["skirt"] - 1) != -1)
         {
            if(Dress_data.onePieceDouData[_loc4_]["mosaic"])
            {
               YsyatuCheck = true;
            }
         }
         TsyatuCheck = false;
         if(this.charaAdd.dou.TsyatuOnePiece.visible == false)
         {
            TsyatuCheck = true;
         }
         else if((_loc4_ = Dress_data.ObjData["onePieceSkirt"][this.charaData["TsyatuSkirt"]["_menu"]]["skirt"] - 1) != -1)
         {
            if(Dress_data.onePieceDouData[_loc4_]["mosaic"])
            {
               TsyatuCheck = true;
            }
         }
         SGCheck = false;
         if(this.charaAdd.dou.dou_shitaHuku.SG.visible == false)
         {
            SGCheck = true;
         }
         else if(Dress_data.SGData[this.charaData["SG"]["_menu"]]["mosaic"] == 1)
         {
            SGCheck = true;
         }
         SkirtCheck = false;
         if(this.charaAdd.dou.dou_Skirt.Skirt.visible == false)
         {
            SkirtCheck = true;
         }
         else if(Dress_data.SkirtData[this.charaData["Skirt"]["_menu"]]["mosaic"] == 1)
         {
            SkirtCheck = true;
         }
         ZubonCheck = false;
         if(this.charaAdd.dou.dou_Skirt.Zubon.visible == false)
         {
            ZubonCheck = true;
         }
         else if(Dress_data.ZubonData[this.charaData["Zubon"]["_menu"]]["mosaic"] == 1)
         {
            ZubonCheck = true;
         }
         TightsCheck = false;
         if(this.charaAdd.dou.dou_shitaHuku.Tights.visible == false)
         {
            TightsCheck = true;
         }
         else if(Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["mosaic"] == 1)
         {
            TightsCheck = true;
         }
         if(VestCheck && YsyatuCheck && TsyatuCheck && PantuCheck && NawaCheck && SkirtCheck && ZubonCheck && TightsCheck && SGCheck && this.charaData["SelectCharacter"]["_visible"][0] && !this.charaData["Tama"]["_visible"][0])
         {
            if(this.charaData["Tin"]["_visible"][0] && this.charaData["TinBokki"]["_check"] || !this.charaData["Tin"]["_visible"][0])
            {
               this.charaAdd.mosaic.visible = true;
            }
            else
            {
               this.charaAdd.mosaic.visible = false;
            }
         }
         else
         {
            this.charaAdd.mosaic.visible = false;
         }
      }
   }
}
