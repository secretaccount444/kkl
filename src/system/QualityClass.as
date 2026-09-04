package system
{
   import flash.display.StageQuality;
   
   public class QualityClass
   {
       
      
      private var qualityName:Array;
      
      public function QualityClass(param1:int)
      {
         this.qualityName = ["LOW","MEDIUM","HIGH"];
         super();
         Main.stageVar.quality = StageQuality[this.qualityName[param1]];
      }
   }
}
