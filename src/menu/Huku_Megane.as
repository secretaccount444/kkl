package menu
{
   import flash.display.BlendMode;
   import parameter.Dress_data;
   
   public class Huku_Megane
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var menuNum:int;
      
      private var menuFrameNum:int;
      
      public function Huku_Megane(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         if(this.charaData["Megane"]["_visible"][0])
         {
            _loc4_ = Dress_data.menuCustom["Megane"].length - 1;
            _loc3_ = 0;
            while(_loc3_ <= _loc4_)
            {
               if(this.charaData["Megane"]["_menu"] == Dress_data.menuCustom["Megane"][_loc3_])
               {
                  Dress_data.menuCustomNum[param1]["Megane"] = _loc3_;
                  break;
               }
               _loc3_++;
            }
            this.charaData["Megane"]["_menu"] = Dress_data.menuCustom["Megane"][Dress_data.menuCustomNum[param1]["Megane"]];
            this.menuNum = this.charaData["Megane"]["_menu"];
            if(param2 == "menu")
            {
               this.charaData["Megane"]["_g0"] = 0;
            }
            this.charaAdd.head.Megane.gotoAndStop(Dress_data.ObjData["Megane"][this.menuNum]["megane"] + 1);
            this.charaAdd.head.Megane.visible = true;
            try
            {
               this.charaAdd.head.Megane.faceMask.gotoAndStop(this.charaData["Contour"]["_menu"] + 1);
               this.charaAdd.head.Megane.faceSen.gotoAndStop(this.charaData["Contour"]["_menu"] + 1);
               this.charaAdd.head.Megane.faceSen.faceHair.visible = false;
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head.Megane.megane0.gotoAndStop(this.charaData["Megane"]["_g0"] + 1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head.Megane.megane1.gotoAndStop(this.charaData["Megane"]["_g0"] + 1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.head.Megane.faceSen.gotoAndStop(this.charaData["Contour"]["_menu"] + 1);
            }
            catch(myError:Error)
            {
            }
            if(this.charaData["Megane"]["_reversal"])
            {
               this.charaAdd.head.Megane.scaleX = 1;
            }
            else
            {
               this.charaAdd.head.Megane.scaleX = -1;
            }
            if(Dress_data.ObjData["Megane"][this.menuNum]["megane"] == 0)
            {
               this.charaAdd.head.Megane.visible = false;
            }
            if(this.charaData["BodyPlus"]["_menu"] == 0)
            {
               try
               {
                  this.charaAdd.head.Megane.megane0.blend_color0_0.blendMode = BlendMode.MULTIPLY;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane1.blend_color0_0.blendMode = BlendMode.MULTIPLY;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane0.blend_color0_1.blendMode = BlendMode.MULTIPLY;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane1.blend_color0_1.blendMode = BlendMode.MULTIPLY;
               }
               catch(myError:Error)
               {
               }
            }
            else if(this.charaData["BodyPlus"]["_menu"] == 1)
            {
               try
               {
                  this.charaAdd.head.Megane.megane0.blend_color0_0.blendMode = BlendMode.NORMAL;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane1.blend_color0_0.blendMode = BlendMode.NORMAL;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane0.blend_color0_1.blendMode = BlendMode.NORMAL;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.head.Megane.megane1.blend_color0_1.blendMode = BlendMode.NORMAL;
               }
               catch(myError:Error)
               {
               }
            }
            _loc6_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane);
            _loc7_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap3);
            if(_loc6_ > _loc7_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane,this.charaAdd.head.Megane_swap3);
            }
            _loc6_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane);
            _loc7_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap2);
            if(_loc6_ > _loc7_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane,this.charaAdd.head.Megane_swap2);
            }
            _loc6_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane);
            _loc7_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap1);
            if(_loc6_ > _loc7_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane,this.charaAdd.head.Megane_swap1);
            }
            _loc6_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane);
            _loc7_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap0);
            if(_loc6_ > _loc7_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane,this.charaAdd.head.Megane_swap0);
            }
            _loc6_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap0);
            _loc7_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap3);
            if(_loc6_ > _loc7_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane_swap0,this.charaAdd.head.Megane_swap3);
            }
            _loc6_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap0);
            _loc7_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap2);
            if(_loc6_ > _loc7_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane_swap0,this.charaAdd.head.Megane_swap2);
            }
            _loc6_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap0);
            _loc7_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap1);
            if(_loc6_ > _loc7_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane_swap0,this.charaAdd.head.Megane_swap1);
            }
            _loc6_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap1);
            _loc7_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap3);
            if(_loc6_ > _loc7_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane_swap1,this.charaAdd.head.Megane_swap3);
            }
            _loc6_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap1);
            _loc7_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap2);
            if(_loc6_ > _loc7_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane_swap1,this.charaAdd.head.Megane_swap2);
            }
            _loc6_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap2);
            _loc7_ = this.charaAdd.head.getChildIndex(this.charaAdd.head.Megane_swap3);
            if(_loc6_ > _loc7_)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane_swap2,this.charaAdd.head.Megane_swap3);
            }
            if(this.charaData["Megane"]["_g0"] == 1)
            {
               this.charaAdd.head.swapChildren(this.charaAdd.head.Megane,this.charaAdd.head.Megane_swap3);
            }
            else if(Dress_data.ObjData["Megane"][this.menuNum]["depth"] == 1)
            {
               if(this.charaData["Megane"]["_depth"] == 0)
               {
                  this.charaAdd.head.swapChildren(this.charaAdd.head.Megane,this.charaAdd.head.Megane_swap1);
               }
               else if(this.charaData["Megane"]["_depth"] == 1)
               {
                  this.charaAdd.head.swapChildren(this.charaAdd.head.Megane,this.charaAdd.head.Megane_swap2);
               }
               else if(this.charaData["Megane"]["_depth"] == 2)
               {
                  this.charaAdd.head.swapChildren(this.charaAdd.head.Megane,this.charaAdd.head.Megane_swap3);
               }
            }
            else if(Dress_data.ObjData["Megane"][this.menuNum]["depth"] == 0)
            {
               if(this.charaData["Megane"]["_depth"] != 0)
               {
                  if(this.charaData["Megane"]["_depth"] == 1)
                  {
                     this.charaAdd.head.swapChildren(this.charaAdd.head.Megane,this.charaAdd.head.Megane_swap0);
                  }
                  else if(this.charaData["Megane"]["_depth"] == 2)
                  {
                     this.charaAdd.head.swapChildren(this.charaAdd.head.Megane,this.charaAdd.head.Megane_swap1);
                  }
               }
            }
            new Chara_SetSize(param1,"Megane",param2);
            new Chara_ColorClass(param1,"Megane");
         }
         else
         {
            this.charaAdd.head.Megane.visible = false;
            this.charaAdd.head.Megane.gotoAndStop(1);
         }
      }
   }
}
