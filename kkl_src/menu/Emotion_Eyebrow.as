package menu
{
   import system.MeterPersent;
   
   public class Emotion_Eyebrow
   {
       
      
      public function Emotion_Eyebrow(param1:int)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         super();
         var _loc2_:Array = new Array();
         _loc2_ = [[1,false],[2,false],[2,true],[3,false],[3,true]];
         new MeterPersent(15,-15,"EyebrowY",param1);
         var _loc6_:Number = MeterPersent.MeterPersentNum;
         var _loc7_:Boolean = false;
         _loc3_ = 0;
         while(_loc3_ <= 1)
         {
            if(_loc3_ == 0)
            {
               _loc4_ = MenuClass.charaData[param1]["EmotionEyebrowLeft"]["_menu"];
               _loc5_ = "Left";
            }
            else
            {
               _loc4_ = MenuClass.charaData[param1]["EmotionEyebrowRight"]["_menu"];
               _loc5_ = "Right";
            }
            if(MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].currentFrame != _loc2_[_loc4_][0])
            {
               _loc7_ = true;
            }
            if(_loc2_[_loc4_][0] != MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].currentFrame)
            {
               MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].gotoAndStop(_loc2_[_loc4_][0]);
            }
            new MeterPersent(1,30,"EyebrowRotation" + _loc5_,param1);
            if(Math.floor(MeterPersent.MeterPersentNum) != MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].eyebrow.currentFrame)
            {
               MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].eyebrow.gotoAndStop(Math.floor(MeterPersent.MeterPersentNum));
            }
            new MeterPersent(-45,15,"EyebrowRotation",param1);
            MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].eyebrow.rotation = MeterPersent.MeterPersentNum;
            new MeterPersent(2,-0.5,"EyebrowRotation",param1);
            new MeterPersent(4.5,-1.5,"EyebrowRotation",param1);
            MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].eyebrow.y = MeterPersent.MeterPersentNum;
            new MeterPersent(8,-8,"EyebrowMove" + _loc5_,param1);
            MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].y = -30 + MeterPersent.MeterPersentNum + _loc6_;
            try
            {
               MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].eyebrow.obj.shiwa.visible = _loc2_[_loc4_][1];
            }
            catch(myError:Error)
            {
            }
            if(MenuClass.charaData[param1]["Eyebrow"]["_menu"] + 1 != MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].eyebrow.obj.currentFrame)
            {
               MenuClass.charaAdd[param1].head["eyebrow" + _loc3_].eyebrow.obj.gotoAndStop(MenuClass.charaData[param1]["Eyebrow"]["_menu"] + 1);
            }
            _loc3_++;
         }
         if(_loc7_)
         {
            new Chara_ColorClass(param1,"Eyebrow");
         }
      }
   }
}
