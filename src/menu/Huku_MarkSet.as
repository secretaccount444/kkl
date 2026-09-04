package menu
{
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import system.MeterPersent;
   import system.MeterPersentRibon;
   
   public class Huku_MarkSet
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var flag0:Boolean;
      
      private var flag1:Boolean;
      
      public function Huku_MarkSet(param1:int, param2:int, param3:String)
      {
         var _loc4_:int = 0;
         var _loc6_:Matrix = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         super();
         this.charaAdd = MenuClass.charaAdd[param1].head;
         this.charaData = MenuClass.charaData[param1];
         var _loc5_:Boolean = false;
         this.flag0 = false;
         this.flag1 = false;
         if(this.charaData["MarkPlus"]["_visible"][param2])
         {
            if(this.charaData["Mark" + param2]["_reversal2"] == 0 || this.charaData["Mark" + param2]["_reversal2"] == 2)
            {
               if(this.charaAdd["mark" + param2 + "_" + 0] == undefined)
               {
                  (_loc11_ = new MovieClip()).name = "mark" + param2 + "_" + 0;
                  _loc11_ = new Chara_Loading.MarkClass();
                  this.charaAdd.addChild(_loc11_);
                  this.charaAdd["mark" + param2 + "_" + 0] = _loc11_;
                  this.charaAdd["mark" + param2 + "_" + 0].name = "mark" + param2 + "_" + 0;
                  _loc5_ = true;
               }
               else if(param3 == "depth" || param3 == "move" || param3 == "hairSet" || param3 == "reset")
               {
                  _loc5_ = true;
               }
               this.charaAdd["mark" + param2 + "_" + 0].gotoAndStop(this.charaData["Mark" + param2]["_menu"] + 2);
               this.flag0 = true;
            }
            else
            {
               this.deleteFc(param2,0);
            }
            if(this.charaData["Mark" + param2]["_reversal2"] == 0 || this.charaData["Mark" + param2]["_reversal2"] == 1)
            {
               if(this.charaAdd["mark" + param2 + "_" + 1] == undefined)
               {
                  (_loc12_ = new MovieClip()).name = "mark" + param2 + "_" + 1;
                  _loc12_ = new Chara_Loading.MarkClass();
                  this.charaAdd.addChild(_loc12_);
                  this.charaAdd["mark" + param2 + "_" + 1] = _loc12_;
                  this.charaAdd["mark" + param2 + "_" + 1].name = "mark" + param2 + "_" + 1;
                  _loc5_ = true;
               }
               else if(param3 == "depth" || param3 == "move" || param3 == "hairSet" || param3 == "reset")
               {
                  _loc5_ = true;
               }
               this.charaAdd["mark" + param2 + "_" + 1].gotoAndStop(this.charaData["Mark" + param2]["_menu"] + 2);
               this.flag1 = true;
            }
            else
            {
               this.deleteFc(param2,1);
            }
            try
            {
               if(_loc5_)
               {
                  _loc4_ = 0;
                  while(_loc4_ <= Main.hukusuuNum)
                  {
                     if(this.charaData["Mark" + (Main.hukusuuNum - _loc4_)]["_depth"] == 0)
                     {
                        try
                        {
                           this.charaAdd.setChildIndex(this.charaAdd["mark" + (Main.hukusuuNum - _loc4_) + "_" + 1],this.charaAdd.getChildIndex(this.charaAdd.face) + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.setChildIndex(this.charaAdd["mark" + (Main.hukusuuNum - _loc4_) + "_" + 0],this.charaAdd.getChildIndex(this.charaAdd.face) + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     else if(this.charaData["Mark" + (Main.hukusuuNum - _loc4_)]["_depth"] == 1)
                     {
                        try
                        {
                           this.charaAdd.setChildIndex(this.charaAdd["mark" + (Main.hukusuuNum - _loc4_) + "_" + 1],this.charaAdd.getChildIndex(this.charaAdd.defoEye) + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.setChildIndex(this.charaAdd["mark" + (Main.hukusuuNum - _loc4_) + "_" + 0],this.charaAdd.getChildIndex(this.charaAdd.defoEye) + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     _loc4_++;
                  }
               }
            }
            catch(myError:Error)
            {
            }
            new MeterPersentRibon(0,1,param1,"MarkAlpha",param2);
            try
            {
               this.charaAdd["mark" + param2 + "_" + 0].alpha = MeterPersentRibon.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd["mark" + param2 + "_" + 1].alpha = MeterPersentRibon.MeterPersentNum;
            }
            catch(myError:Error)
            {
            }
            _loc6_ = new Matrix();
            new MeterPersentRibon(360,0,param1,"MarkRotation",param2);
            _loc7_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(90,-110,param1,"MarkY",param2);
            _loc8_ = MeterPersentRibon.MeterPersentNum;
            new MeterPersentRibon(0.1,5,param1,"MarkScaleX",param2);
            _loc9_ = MeterPersentRibon.MeterPersentNum;
            if(this.flag0)
            {
               new MeterPersentRibon(1.5,-1.5,param1,"MarkScaleB",param2);
               _loc6_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
               this.charaAdd["mark" + param2 + "_" + 0].mark0.transform.matrix = _loc6_;
               this.charaAdd["mark" + param2 + "_" + 0].mark0.rotation = _loc7_ * -1;
               new MeterPersentRibon(90,-90,param1,"MarkX",param2);
               _loc13_ = MeterPersentRibon.MeterPersentNum;
            }
            if(this.flag1)
            {
               new MeterPersentRibon(-1.5,1.5,param1,"MarkScaleB",param2);
               _loc6_.b = Math.tan(MeterPersentRibon.MeterPersentNum);
               this.charaAdd["mark" + param2 + "_" + 1].mark0.transform.matrix = _loc6_;
               this.charaAdd["mark" + param2 + "_" + 1].mark0.rotation = _loc7_;
               new MeterPersentRibon(-90,90,param1,"MarkX",param2);
               _loc14_ = MeterPersentRibon.MeterPersentNum;
            }
            if(param3 == "paste" || param3 == "pasteRibon")
            {
               if(this.charaData["MarkScaleY" + param2]["_meter"] != this.charaData["MarkScaleX" + param2]["_meter"])
               {
                  MenuClass.systemData["LinkMark"]["_flag"] = false;
               }
            }
            if(MenuClass.systemData["LinkMark"]["_flag"] && (MenuClass._nowTabName == "MarkScaleX" || param3 == "random"))
            {
               this.charaData["MarkScaleY" + param2]["_meter"] = this.charaData["MarkScaleX" + param2]["_meter"];
            }
            new MeterPersentRibon(0.1,5,param1,"MarkScaleY",param2);
            _loc10_ = MeterPersentRibon.MeterPersentNum;
            if(this.flag0)
            {
               this.charaAdd["mark" + param2 + "_" + 0].mark0.scaleX = _loc9_ * -1;
               this.charaAdd["mark" + param2 + "_" + 0].mark0.x = _loc13_;
            }
            if(this.flag1)
            {
               this.charaAdd["mark" + param2 + "_" + 1].mark0.scaleX = _loc9_;
               this.charaAdd["mark" + param2 + "_" + 1].mark0.x = _loc14_;
            }
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               if(_loc4_ == 0 && this.flag0 || _loc4_ == 1 && this.flag1)
               {
                  this.charaAdd["mark" + param2 + "_" + _loc4_].mark0.scaleY = _loc10_;
                  this.charaAdd["mark" + param2 + "_" + _loc4_].mark0.y = _loc8_;
                  this.charaAdd["mark" + param2 + "_" + _loc4_].faceMask.gotoAndStop(this.charaData["Contour"]["_menu"] + 1);
                  new MeterPersent(0.92,1.1,"ContourWidth",param1);
                  this.charaAdd["mark" + param2 + "_" + _loc4_].faceMask.scaleX = MeterPersent.MeterPersentNum;
                  new MeterPersent(-0.03,0.02,"BodyHeight",param1);
                  _loc15_ = MeterPersent.MeterPersentNum;
                  new MeterPersent(0.96,1.04,"ContourHeight",param1);
                  this.charaAdd["mark" + param2 + "_" + _loc4_].faceMask.scaleY = MeterPersent.MeterPersentNum + _loc15_;
               }
               _loc4_++;
            }
            new Chara_ColorClass(param1,"Mark" + param2);
         }
         else
         {
            this.deleteFc(param2,0);
            this.deleteFc(param2,1);
         }
      }
      
      private function deleteFc(param1:int, param2:int) : void
      {
         try
         {
            this.charaAdd.removeChild(this.charaAdd["mark" + param1 + "_" + param2]);
            this.charaAdd["mark" + param1 + "_" + param2] = null;
         }
         catch(myError:Error)
         {
         }
      }
   }
}
