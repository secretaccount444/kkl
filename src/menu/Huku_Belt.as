package menu
{
   import parameter.Dress_data;
   
   public class Huku_Belt
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_Belt(param1:int, param2:int)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         super();
         this.charaData = MenuClass.charaData[param1];
         var _loc3_:int = this.charaData["Waist"]["_menu"];
         if(this.charaData["BeltPlus"]["_visible"][param2] && this.charaData["Belt" + param2]["_mask"] == 0)
         {
            if(this.charaData["Belt" + param2]["_depth"] >= 2)
            {
               this.charaAdd = MenuClass.charaAdd[param1];
            }
            else
            {
               this.charaAdd = MenuClass.charaAdd[param1].dou;
            }
            _loc4_ = 0;
            while(_loc4_ <= 1)
            {
               try
               {
                  if(this.charaAdd["belt" + param2 + "_" + _loc4_].beltMask.ueMask.currentFrame != Dress_data.ObjData["Waist"][_loc3_]["dou"])
                  {
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltMask.ueMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc3_]["dou"]);
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc3_]["dou"]);
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc3_]["dou"]);
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.ueSen.gotoAndStop(Dress_data.ObjData["Waist"][_loc3_]["dou"]);
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSenMask0.gotoAndStop(Dress_data.ObjData["Waist"][_loc3_]["dou"]);
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.SenMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc3_]["dou"]);
                  }
                  if(this.charaData["BeltLine" + param2]["_menu"] == 0)
                  {
                     if(this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.ueSen.sen0.currentFrame != 6)
                     {
                        this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.ueSen.sen0.gotoAndStop(6);
                        this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.ueSen.sen1.gotoAndStop(6);
                        this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen0.gotoAndStop(6);
                        this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen1.gotoAndStop(6);
                     }
                  }
                  else if(this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.ueSen.sen0.currentFrame != this.charaData["BeltLine" + param2]["_menu"])
                  {
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.ueSen.sen0.gotoAndStop(this.charaData["BeltLine" + param2]["_menu"]);
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.ueSen.sen1.gotoAndStop(this.charaData["BeltLine" + param2]["_menu"]);
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen0.gotoAndStop(this.charaData["BeltLine" + param2]["_menu"]);
                     this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen1.gotoAndStop(this.charaData["BeltLine" + param2]["_menu"]);
                  }
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSen0.ueSen.mask = this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0.maskMcUe;
                  this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.mask = this.charaAdd["belt" + param2 + "_" + _loc4_].beltDou.belt0.maskMc;
               }
               catch(myError:Error)
               {
               }
               _loc4_++;
            }
            if(Dress_data.ObjData["Waist"][_loc3_]["harabote"] == 0)
            {
               _loc5_ = this.charaData["TsyatuSkirt"]["_menu"];
               _loc6_ = false;
               if(this.charaData["Tsyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc5_]["skirt"] != 0)
               {
                  _loc6_ = true;
               }
               _loc5_ = this.charaData["YsyatuSkirt"]["_menu"];
               _loc7_ = false;
               if(this.charaData["Ysyatu"]["_visible"][0] && Dress_data.ObjData["onePieceSkirt"][_loc5_]["skirt"] != 0)
               {
                  _loc7_ = true;
               }
               if((this.charaData["Skirt"]["_visible"][0] || this.charaData["Zubon"]["_visible"][0]) && !_loc6_ && !_loc7_)
               {
                  if(this.charaData["Skirt"]["_depth"] >= 1 && this.charaData["Belt" + param2]["_depth"] == 0)
                  {
                     this.charaAdd = MenuClass.charaAdd[param1].dou;
                     _loc4_ = 0;
                     for(; _loc4_ <= 1; _loc4_++)
                     {
                        try
                        {
                           if(this.charaAdd["belt" + param2 + "_" + _loc4_].beltMask.nakaMask.currentFrame != Dress_data.ObjData["Waist"][_loc3_]["dou"] + 6)
                           {
                              this.charaAdd["belt" + param2 + "_" + _loc4_].beltMask.nakaMask.gotoAndStop(Dress_data.ObjData["Waist"][_loc3_]["dou"] + 6);
                              this.charaAdd["belt" + param2 + "_" + _loc4_].beltUeSenMask0.gotoAndStop(Dress_data.ObjData["Waist"][_loc3_]["dou"] + 6);
                              this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.gotoAndStop(Dress_data.ObjData["Waist"][_loc3_]["dou"] + 6);
                           }
                           if(this.charaData["BeltLine" + param2]["_menu"] == 0)
                           {
                              if(this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen0.currentFrame != 6)
                              {
                                 this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen0.gotoAndStop(6);
                                 this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen1.gotoAndStop(6);
                              }
                           }
                           else if(this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen0.currentFrame != this.charaData["BeltLine" + param2]["_menu"])
                           {
                              this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen0.gotoAndStop(this.charaData["BeltLine" + param2]["_menu"]);
                              this.charaAdd["belt" + param2 + "_" + _loc4_].beltNakaSen0.Sen.sen1.gotoAndStop(this.charaData["BeltLine" + param2]["_menu"]);
                           }
                        }
                        catch(myError:Error)
                        {
                           continue;
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
