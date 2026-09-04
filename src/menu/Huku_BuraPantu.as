package menu
{
   import flash.utils.ByteArray;
   import parameter.Dress_data;
   
   public class Huku_BuraPantu
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      private var clickTarget:String;
      
      public function Huku_BuraPantu(param1:String, param2:int, param3:String)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         super();
         this.charaNum = param2;
         this.clickTarget = param3;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         var _loc7_:int = this.charaData["Bura"]["_menu"];
         var _loc8_:Boolean = false;
         if(Main.r18Check)
         {
            if(this.charaData["Bura"]["_visible"][0] && this.charaData["Bura"]["_separate"] == 2)
            {
               this.charaData["Bura"]["_separate"] = 0;
            }
            else
            {
               if(!this.charaData["Bura"]["_visible"][0])
               {
                  this.charaData["Bura"]["_visible"][0] = true;
                  this.charaData["Bura"]["_menu"] = 10;
                  this.charaData["Bura"]["_color0"][0] = 55;
                  Dress_data.DressCharaData[this.charaNum]["Bura"][10]["_color0"] = 55;
                  _loc7_ = this.charaData["Bura"]["_menu"];
               }
               if(!this.charaData["Pantu"]["_visible"][0])
               {
                  if(!(this.charaData["Bura"]["_visible"][0] && Dress_data.BuraData[_loc7_]["Pantu"] != 0 && this.charaData["Bura"]["_separate"] == 0))
                  {
                     this.charaData["Pantu"]["_visible"][0] = true;
                     this.charaData["Pantu"]["_menu"] = 10;
                     this.charaData["Pantu"]["_color0"][0] = this.charaData["Bura"]["_color0"][0];
                     Dress_data.DressCharaData[this.charaNum]["Pantu"][10]["_color0"] = this.clone(Dress_data.DressCharaData[this.charaNum]["Bura"][_loc7_]["_color0"]);
                     this.PantuFc(this.charaData["Pantu"]["_visible"][0],this.charaData["Pantu"]["_menu"]);
                  }
               }
            }
         }
         if(param1 == "Bura")
         {
            if(Dress_data.BuraData[_loc7_]["separate"] > 0 && this.charaData["Bura"]["_separate"] == 1)
            {
               this.SpantuFc(this.charaData["Bura"]["_visible"][0],0);
               if(MenuClass.systemData["LinkBura"]["_flag"] && Dress_data.BuraData[_loc7_]["Pantu"] != 0)
               {
                  if(Main.r18Check)
                  {
                     _loc8_ = true;
                  }
               }
            }
            else
            {
               this.SpantuFc(this.charaData["Bura"]["_visible"][0],Dress_data.BuraData[_loc7_]["Pantu"]);
            }
            new Huku_BuraHukin(this.charaNum);
            this.BuraFc();
         }
         if(MenuClass.systemData["LinkBura"]["_flag"] && (this.clickTarget == "menu" || this.clickTarget == "tab" || this.clickTarget == "random"))
         {
            if(Dress_data.BuraData[_loc7_]["Pantu"] == 0)
            {
               this.charaData["Pantu"]["_visible"][0] = this.charaData["Bura"]["_visible"][0];
               _loc6_ = Dress_data.PantuData.length - 1;
               _loc4_ = 0;
               while(_loc4_ <= _loc6_)
               {
                  if(Dress_data.BuraData[_loc7_]["link"] == Dress_data.PantuData[_loc4_]["link"])
                  {
                     this.charaData["Pantu"]["_menu"] = _loc4_;
                     _loc5_ = 0;
                     while(_loc5_ <= 2)
                     {
                        try
                        {
                           this.charaData["Pantu"]["_color" + _loc5_][0] = this.charaData["Bura"]["_color" + _loc5_][0];
                           Dress_data.DressCharaData[this.charaNum]["Pantu"][_loc4_]["_color" + _loc5_] = this.clone(Dress_data.DressCharaData[this.charaNum]["Bura"][_loc7_]["_color" + _loc5_]);
                           Dress_data.DressCharaData[this.charaNum]["Pantu"][_loc4_]["_color" + _loc5_][1] = Dress_data.DressCharaData[this.charaNum]["Bura"][_loc7_]["_color" + _loc5_][1];
                        }
                        catch(myError:Error)
                        {
                        }
                        _loc5_++;
                     }
                  }
                  _loc4_++;
               }
               this.PantuFc(this.charaData["Pantu"]["_visible"][0],this.charaData["Pantu"]["_menu"]);
            }
            else
            {
               if(_loc8_)
               {
                  this.charaData["Pantu"]["_visible"][0] = true;
                  this.charaData["Pantu"]["_menu"] = 10;
                  this.charaData["Pantu"]["_color0"][0] = this.charaData["Bura"]["_color0"][0];
                  Dress_data.DressCharaData[this.charaNum]["Pantu"][9]["_color0"] = this.clone(Dress_data.DressCharaData[this.charaNum]["Bura"][_loc7_]["_color0"]);
               }
               else
               {
                  this.charaData["Pantu"]["_visible"][0] = false;
               }
               this.PantuFc(this.charaData["Pantu"]["_visible"][0],this.charaData["Pantu"]["_menu"]);
            }
         }
         else if(param1 == "Pantu")
         {
            this.PantuFc(this.charaData["Pantu"]["_visible"][0],this.charaData["Pantu"]["_menu"]);
         }
      }
      
      private function SpantuFc(param1:Boolean, param2:int) : void
      {
         if(param2 == 0)
         {
            this.charaAdd.dou.dou_shitaHuku.Spantu.visible = false;
            this.charaAdd.dou.dou_shitaHuku.Spantu.gotoAndStop(1);
         }
         else
         {
            this.charaAdd.dou.dou_shitaHuku.Spantu.visible = param1;
            this.charaAdd.dou.dou_shitaHuku.Spantu.gotoAndStop(param2 + 1);
            try
            {
               this.charaAdd.dou.dou_shitaHuku.Spantu.Pantu0.right.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.dou.dou_shitaHuku.Spantu.Pantu1.left.visible = false;
            }
            catch(myError:Error)
            {
            }
         }
         new Huku_Vibrator(this.charaNum);
         new Tab_SetClass();
         new Huku_Pantu(this.charaNum,"Spantu");
         new Huku_PantuWaistSen(this.charaNum,"Spantu");
         new Huku_PantuHarabote(this.charaNum);
         new Huku_PantuAshi(this.charaNum,"Spantu");
         new Huku_PantuMask(this.charaNum);
         new Huku_Mosaic(this.charaNum);
         new Chara_ColorClass(this.charaNum,"Spantu");
         new Chara_ColorClass(this.charaNum,"SpantuAshi");
      }
      
      private function PantuFc(param1:Boolean, param2:int) : void
      {
         if(!param1)
         {
            this.charaAdd.dou.dou_shitaHuku.Pantu.visible = false;
            this.charaAdd.dou.dou_shitaHuku.Pantu.gotoAndStop(1);
         }
         else
         {
            this.charaAdd.dou.dou_shitaHuku.Pantu.visible = true;
            this.charaAdd.dou.dou_shitaHuku.Pantu.gotoAndStop(param2 + 2);
            try
            {
               this.charaAdd.dou.dou_shitaHuku.Pantu.Pantu0.right.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.dou.dou_shitaHuku.Pantu.Pantu1.left.visible = false;
            }
            catch(myError:Error)
            {
            }
         }
         var _loc3_:int = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Pantu_swap);
         var _loc4_:int = this.charaAdd.dou.dou_shitaHuku.getChildIndex(this.charaAdd.dou.dou_shitaHuku.Pantu);
         if(this.charaData["Pantu"]["_depth"] == 0)
         {
            if(_loc3_ < _loc4_)
            {
               this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Pantu,this.charaAdd.dou.dou_shitaHuku.Pantu_swap);
               new Huku_Tights(this.charaNum);
            }
         }
         else if(_loc3_ > _loc4_)
         {
            this.charaAdd.dou.dou_shitaHuku.swapChildren(this.charaAdd.dou.dou_shitaHuku.Pantu,this.charaAdd.dou.dou_shitaHuku.Pantu_swap);
            new Huku_Tights(this.charaNum);
         }
         new Huku_TightsMask(this.charaNum);
         new Huku_Vibrator(this.charaNum);
         new Tab_SetClass();
         new Huku_Pantu(this.charaNum,"Pantu");
         new Huku_PantuAshi(this.charaNum,"Pantu");
         new Huku_PantuHarabote(this.charaNum);
         new Huku_PantuMask(this.charaNum);
         new Huku_Mosaic(this.charaNum);
         new Chara_ColorClass(this.charaNum,"Pantu");
         new Chara_ColorClass(this.charaNum,"PantuAshi");
      }
      
      private function BuraFc() : void
      {
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Array = null;
         this.charaAdd.mune.Bura.visible = this.charaData["Bura"]["_visible"][0];
         this.charaAdd.dou.Bura.visible = this.charaData["Bura"]["_visible"][0];
         var _loc2_:int = this.charaData["Bura"]["_menu"];
         if(this.charaData["Bura"]["_visible"][0])
         {
            _loc3_ = 0;
            if(Dress_data.BuraData[_loc2_]["separate"] > 0)
            {
               _loc3_ = this.charaData["Bura"]["_separate"];
            }
            _loc4_ = new Array(Math.round(49 * this.charaData["LeftArm"]["_meter"] / 100),Math.round(49 * this.charaData["RightArm"]["_meter"] / 100));
            _loc1_ = 0;
            while(_loc1_ <= 1)
            {
               this.charaData["BreastMove"]["_mode"][_loc1_] = "buraSet";
               if(Dress_data.BuraData[_loc2_]["Dou"] == 0 || _loc3_ == 1)
               {
                  this.charaAdd.dou.Bura.visible = false;
               }
               else
               {
                  this.charaAdd.dou.Bura["Bura" + _loc1_].gotoAndStop(Dress_data.BuraData[_loc2_]["Dou"] + 1);
               }
               try
               {
                  this.charaAdd["handm0_" + _loc1_].kataBuraMask.gotoAndStop(_loc4_[_loc1_] + 1);
               }
               catch(myError:Error)
               {
               }
               _loc1_++;
            }
            new Huku_BuraHarabote(this.charaNum);
            new Huku_CorsetDou(this.charaNum);
         }
         else
         {
            new Huku_CorsetDou(this.charaNum);
         }
         new Huku_NecktieCut(this.charaNum);
         new Huku_NippleGMask(this.charaNum,0);
         new Huku_NippleGMask(this.charaNum,1);
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
