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
         var _loc4_:URLRequest = new URLRequest("sound/" + param1 + ".mp3");
         this.sound_obj = new Sound(_loc4_);
         this.channel = this.sound_obj.play();
         this.trans1 = this.channel.soundTransform;
         new MeterPersent(0,param2,"SoundVolume",0);
         this.trans1.volume = MeterPersent.MeterPersentNum;
         if(MenuClass.systemData["SoundPan"]["_check"])
         {
            this.trans1.pan = param3;
         }
         else
         {
            this.trans1.pan = 0;
         }
         this.channel.soundTransform = this.trans1;
         this.channel.addEventListener(Event.SOUND_COMPLETE,this.SoundCompFunc);
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
