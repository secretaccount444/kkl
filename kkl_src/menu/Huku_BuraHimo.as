package menu
{
   public class Huku_BuraHimo
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_BuraHimo(param1:int, param2:String)
      {
         var _loc3_:int = 0;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         try
         {
            if(this.charaAdd.mune.Bura.Bura["Bura" + 0].himo)
            {
               if(param2 == "LeftArm")
               {
                  _loc3_ = 0;
               }
               else
               {
                  _loc3_ = 1;
               }
               _loc4_ = new Array(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,15,15,15,15,15,15);
               _loc5_ = new Array(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,4,5,6,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7);
               _loc6_ = new Array(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,4,4,4,4,4,4);
               _loc7_ = new Array(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
               _loc8_ = new Array(_loc4_,_loc4_,_loc4_,_loc4_,_loc4_,_loc4_,_loc5_,_loc5_,_loc5_,_loc6_,_loc6_,_loc6_,_loc7_,_loc7_,_loc7_);
               _loc9_ = Math.round(49 * MenuClass.charaData[param1][param2]["_meter"] / 100);
               _loc10_ = MenuClass.charaData[param1]["Breast"]["_menu"];
               try
               {
                  this.charaAdd.mune.Bura.Bura["Bura" + _loc3_].himo.gotoAndStop(_loc8_[_loc10_][_loc9_]);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune.Bura.Bura["Bura" + _loc3_].himo1.gotoAndStop(_loc8_[_loc10_][_loc9_]);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune.TsyatuMune["ysyatu" + _loc3_].ysyatu.himo.gotoAndStop(_loc8_[_loc10_][_loc9_]);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune.VestMune["ysyatu" + _loc3_].ysyatu.himo.gotoAndStop(_loc8_[_loc10_][_loc9_]);
               }
               catch(myError:Error)
               {
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
