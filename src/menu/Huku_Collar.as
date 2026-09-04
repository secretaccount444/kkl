package menu
{
   import parameter.Dress_data;
   
   public class Huku_Collar
   {
       
      
      public function Huku_Collar(param1:int)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         super();
         var _loc4_:Object = MenuClass.charaData[param1];
         var _loc5_:Object = MenuClass.charaAdd[param1];
         _loc3_ = Dress_data.menuCustom["Collar"].length - 1;
         _loc2_ = 0;
         while(_loc2_ <= _loc3_)
         {
            if(_loc4_["Collar"]["_menu"] == Dress_data.menuCustom["Collar"][_loc2_])
            {
               Dress_data.menuCustomNum[param1]["Collar"] = _loc2_;
               break;
            }
            _loc2_++;
         }
         _loc4_["Collar"]["_menu"] = Dress_data.menuCustom["Collar"][Dress_data.menuCustomNum[param1]["Collar"]];
         if(_loc4_["Collar"]["_visible"][0])
         {
            _loc6_ = _loc4_["Collar"]["_menu"];
            if(Dress_data.ObjData["Collar"][_loc6_]["under"] == 0)
            {
               _loc5_.mune.Collar0.gotoAndStop(1);
               _loc5_.mune.Collar0.visible = false;
            }
            else
            {
               _loc5_.mune.Collar0.gotoAndStop(Dress_data.ObjData["Collar"][_loc6_]["under"] + 1);
               _loc5_.mune.Collar0.visible = true;
            }
            if(Dress_data.ObjData["Collar"][_loc6_]["middle"] == 0)
            {
               _loc5_.mune.Collar1.visible = false;
               _loc5_.mune.Collar1.gotoAndStop(1);
               _loc5_.Collar.visible = false;
               _loc5_.Collar.gotoAndStop(1);
            }
            else if(_loc4_["Collar"]["_depth"] == 1)
            {
               _loc5_.Collar.visible = true;
               _loc5_.Collar.gotoAndStop(Dress_data.ObjData["Collar"][_loc6_]["middle"] + 1);
               _loc5_.mune.Collar1.visible = false;
               _loc5_.mune.Collar1.gotoAndStop(1);
            }
            else
            {
               _loc5_.Collar.visible = false;
               _loc5_.Collar.gotoAndStop(1);
               _loc5_.mune.Collar1.visible = true;
               _loc5_.mune.Collar1.gotoAndStop(Dress_data.ObjData["Collar"][_loc6_]["middle"] + 1);
            }
            if(_loc5_.mune.Collar1.Collar != undefined)
            {
               _loc5_.mune.Collar1.Collar.mouseChildren = false;
               _loc5_.mune.Collar1.Collar.buttonMode = true;
            }
            if(_loc5_.Collar.Collar != undefined)
            {
               _loc5_.Collar.Collar.mouseChildren = false;
               _loc5_.Collar.Collar.buttonMode = true;
            }
            _loc7_ = _loc5_.mune.getChildIndex(_loc5_.mune.Collar0);
            _loc8_ = _loc5_.mune.getChildIndex(_loc5_.mune.collar_swap0);
            if(_loc4_["Collar"]["_depth"] == 1)
            {
               if(_loc7_ < _loc8_)
               {
                  _loc5_.mune.swapChildren(_loc5_.mune.Collar0,_loc5_.mune.collar_swap0);
               }
            }
            else if(_loc7_ > _loc8_)
            {
               _loc5_.mune.swapChildren(_loc5_.mune.Collar0,_loc5_.mune.collar_swap0);
            }
            if(Dress_data.ObjData["Collar"][_loc4_["Collar"]["_menu"]]["chane"] < _loc4_["Collar"]["_g0"])
            {
               _loc4_["Collar"]["_g0"] = Dress_data.ObjData["Collar"][_loc4_["Collar"]["_menu"]]["chane"];
            }
            try
            {
               if(_loc5_.Collar.chane != undefined)
               {
                  _loc5_.Collar.chane.mouseChildren = false;
                  _loc5_.Collar.chane.buttonMode = true;
                  _loc5_.Collar.chane.gotoAndStop(_loc4_["Collar"]["_g0"] + 1);
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(_loc5_.mune.Collar1.Collar != undefined)
               {
                  _loc5_.mune.Collar1.Collar.mouseChildren = false;
                  _loc5_.mune.Collar1.Collar.buttonMode = true;
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(_loc5_.mune.Collar1.chane != undefined)
               {
                  _loc5_.mune.Collar1.chane.mouseChildren = false;
                  _loc5_.mune.Collar1.chane.buttonMode = true;
                  _loc5_.mune.Collar1.chane.gotoAndStop(_loc4_["Collar"]["_g0"] + 1);
               }
            }
            catch(myError:Error)
            {
            }
            new Chara_ColorClass(param1,"Collar");
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ <= 1)
            {
               _loc5_.mune["Collar" + _loc2_].visible = false;
               _loc5_.mune["Collar" + _loc2_].gotoAndStop(1);
               _loc5_.Collar.visible = false;
               _loc5_.Collar.gotoAndStop(1);
               _loc2_++;
            }
         }
      }
   }
}
