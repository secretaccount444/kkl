package menu
{
   public class SizeDataClass
   {
      
      public static var thighScaleX:Array = new Array();
      
      public static var legSize:Array = new Array();
      
      public static var footSize:Array = new Array();
      
      public static var dou_shitaSize:Array = new Array();
      
      public static var bodyDefault_y:Object;
      
      public static var muneSetChildIndex:int;
       
      
      public function SizeDataClass(param1:int)
      {
         super();
         var _loc2_:Object = MenuClass.charaAdd[param1];
         var _loc3_:Object = MenuClass.charaAddDepth[param1];
         thighScaleX.push(_loc2_.ashi0.thigh.thigh.scaleX);
         _loc2_.ashi0.thigh.gotoAndStop(2);
         thighScaleX.push(_loc2_.ashi0.thigh.thigh.scaleX);
         _loc2_.ashi0.thigh.gotoAndStop(1);
         legSize.push(_loc2_.ashi0.leg.leg.scaleX);
         _loc2_.ashi0.leg.gotoAndStop(2);
         legSize.push(_loc2_.ashi0.leg.leg.scaleX);
         _loc2_.ashi0.leg.gotoAndStop(1);
         footSize.push(_loc2_.ashi0.foot.foot.scaleX);
         _loc2_.ashi0.foot.gotoAndStop(2);
         footSize.push(_loc2_.ashi0.foot.foot.scaleX);
         _loc2_.ashi0.foot.gotoAndStop(1);
         muneSetChildIndex = _loc2_.mune.getChildIndex(_loc2_.mune.mune0);
         bodyDefault_y = {
            "ashi":_loc2_.ashi0.y,
            "ashi0X":_loc2_.ashi0.x,
            "ashi1X":_loc2_.ashi1.x,
            "HairBack":_loc2_.HairBack.y,
            "HatBack":_loc2_.HatBack.y,
            "Ribon":-608,
            "Collar":_loc2_.Collar.y,
            "Headphone":_loc2_.Headphone0.y,
            "HeadphoneNeck":_loc2_.HeadphoneNeck0.y,
            "hand":_loc2_.handm0_0.y,
            "SideBurnMiddle":_loc2_.SideBurnMiddle.y,
            "dou":_loc2_.dou.y,
            "mune":_loc2_.mune.y,
            "head":_loc2_.head.y,
            "hane":_loc2_.hane.y,
            "Tail":_loc2_.Tail.y,
            "face":_loc2_.head.face.y,
            "mouth":_loc2_.head.mouth.y,
            "Gag":_loc2_.head.Gag.y,
            "GagFaceMask":-92.6,
            "charaSelect":_loc3_.charaSelect.y,
            "Hukidashi":_loc2_.Hukidashi.y,
            "mosaic":_loc2_.mosaic.y,
            "eyebrow0X":_loc2_.head.eyebrow0.x,
            "eyebrow1X":_loc2_.head.eyebrow1.x,
            "defoEyeballX":_loc2_.head.eye0.eyeball.x,
            "defoEyeballY":_loc2_.head.eye0.eyeball.y,
            "eyeLightY":_loc2_.head.eye0.eyeball.eyeLight.y
         };
      }
   }
}
