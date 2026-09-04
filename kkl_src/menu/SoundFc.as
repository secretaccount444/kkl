package menu
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import system.MeterPersent;
   
   public class SoundFc
   {
       
      
      private var channel:SoundChannel;
      
      private var trans1:SoundTransform;
      
      private var sound_obj:Sound;
      
      public function SoundFc(param1:String, param2:Number, param3:Number)
      {
         super();
         this.channel = null;
         this.trans1 = null;
         this.sound_obj = null;
      }
      
      private function SoundCompFunc(param1:Event) : void
      {
         this.channel.removeEventListener(Event.SOUND_COMPLETE,this.SoundCompFunc);
         this.channel = null;
         this.trans1 = null;
         this.sound_obj = null;
      }
   }
}
