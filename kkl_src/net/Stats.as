package net
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   
   public class Stats extends Sprite
   {
       
      
      private var graph:BitmapData;
      
      private var fpsText:TextField;
      
      private var msText:TextField;
      
      private var memText:TextField;
      
      private var format:TextFormat;
      
      private var fps:int;
      
      private var timer:int;
      
      private var ms:int;
      
      private var msPrev:int = 0;
      
      private var mem:Number = 0;
      
      private var gBitmap:Bitmap;
      
      private var spr:Sprite;
      
      public function Stats()
      {
         this.spr = new Sprite();
         super();
         this.graph = new BitmapData(60,50,false,819);
         this.gBitmap = new Bitmap(this.graph);
         this.gBitmap.y = 35;
         addChild(this.gBitmap);
         this.format = new TextFormat("_sans",9);
         this.spr.graphics.beginFill(819);
         this.spr.graphics.drawRect(0,0,60,50);
         this.spr.graphics.endFill();
         addChild(this.spr);
         this.fpsText = new TextField();
         this.msText = new TextField();
         this.memText = new TextField();
         this.fpsText.defaultTextFormat = this.msText.defaultTextFormat = this.memText.defaultTextFormat = this.format;
         this.fpsText.width = this.msText.width = this.memText.width = 60;
         this.fpsText.selectable = this.msText.selectable = this.memText.selectable = false;
         this.fpsText.textColor = 16776960;
         this.fpsText.text = "FPS: ";
         addChild(this.fpsText);
         this.msText.y = 10;
         this.msText.textColor = 65280;
         this.msText.text = "MS: ";
         addChild(this.msText);
         this.memText.y = 20;
         this.memText.textColor = 65535;
         this.memText.text = "MEM: ";
         addChild(this.memText);
         addEventListener(MouseEvent.CLICK,this.mouseHandler);
         addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      private function mouseHandler(param1:MouseEvent) : void
      {
         if(Main.publishMode == "download_test" || Main.publishMode == "test")
         {
            if(this.gBitmap.alpha == 0)
            {
               this.spr.alpha = 100;
               this.gBitmap.alpha = 100;
               this.memText.alpha = 100;
               this.fpsText.alpha = 100;
               this.msText.alpha = 100;
            }
            else
            {
               this.spr.alpha = 0;
               this.gBitmap.alpha = 0;
               this.memText.alpha = 0;
               this.fpsText.alpha = 0;
               this.msText.alpha = 0;
            }
            if(this.mouseY > this.height * 0.35)
            {
               --stage.frameRate;
            }
            else
            {
               stage.frameRate += 22;
            }
            this.fpsText.text = "FPS: " + this.fps + " / " + stage.frameRate;
         }
         else if(this.mouseY > this.height * 0.35)
         {
            --stage.frameRate;
         }
         else
         {
            ++stage.frameRate;
         }
      }
      
      private function update(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         this.timer = getTimer();
         ++this.fps;
         if(this.timer - 1000 > this.msPrev)
         {
            this.msPrev = this.timer;
            this.mem = Number((System.totalMemory / 1048576).toFixed(3));
            _loc2_ = Math.min(50,50 / stage.frameRate * this.fps);
            _loc3_ = Math.min(50,Math.sqrt(Math.sqrt(this.mem * 5000))) - 2;
            this.graph.scroll(1,0);
            this.graph.fillRect(new Rectangle(0,0,1,this.graph.height),819);
            this.graph.setPixel(0,this.graph.height - _loc2_,16776960);
            this.graph.setPixel(0,this.graph.height - (this.timer - this.ms >> 1),65280);
            this.graph.setPixel(0,this.graph.height - _loc3_,65535);
            this.fpsText.text = "FPS: " + this.fps + " / " + stage.frameRate;
            this.memText.text = "MEM: " + this.mem;
            this.fps = 0;
         }
         this.msText.text = "MS: " + (this.timer - this.ms);
         this.ms = this.timer;
      }
   }
}
