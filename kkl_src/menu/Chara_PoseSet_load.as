package menu
{
   import parameter.Dress_data;
   
   public class Chara_PoseSet_load
   {
       
      
      public function Chara_PoseSet_load(param1:int)
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Boolean = false;
         var _loc12_:String = null;
         var _loc13_:int = 0;
         super();
         var _loc2_:Object = MenuClass.charaData[param1];
         var _loc3_:Object = Dress_data.DressCharaData[param1];
         if(MenuClass.systemData["PoseSet"]["_reversal"] == 0)
         {
            _loc4_ = _loc2_["RightArm"]["_meter"];
            _loc2_["RightArm"]["_meter"] = _loc2_["LeftArm"]["_meter"];
            _loc2_["LeftArm"]["_meter"] = _loc4_;
            _loc5_ = _loc2_["RightArm2"]["_meter"];
            _loc2_["RightArm2"]["_meter"] = _loc2_["LeftArm2"]["_meter"];
            _loc2_["LeftArm2"]["_meter"] = _loc5_;
            _loc6_ = _loc2_["RightArm2"]["_depth"];
            _loc2_["RightArm2"]["_depth"] = _loc2_["LeftArm2"]["_depth"];
            _loc2_["LeftArm2"]["_depth"] = _loc6_;
            _loc7_ = _loc2_["RightHand"]["_menu"];
            _loc2_["RightHand"]["_menu"] = _loc2_["LeftHand"]["_menu"];
            _loc2_["LeftHand"]["_menu"] = _loc7_;
            _loc8_ = _loc2_["RightHand2"]["_meter"];
            _loc2_["RightHand2"]["_meter"] = _loc2_["LeftHand2"]["_meter"];
            _loc2_["LeftHand2"]["_meter"] = _loc8_;
            _loc10_ = _loc2_["Item0"]["_menu"];
            _loc2_["Item0"]["_menu"] = _loc2_["Item1"]["_menu"];
            _loc2_["Item1"]["_menu"] = _loc10_;
            _loc11_ = _loc2_["Item0"]["_visible"][0];
            _loc2_["Item0"]["_visible"][0] = _loc2_["Item1"]["_visible"][0];
            _loc2_["Item1"]["_visible"][0] = _loc11_;
            try
            {
               _loc13_ = 0;
               while(_loc13_ <= 2)
               {
                  _loc12_ = _loc2_["Item0"]["_color" + _loc13_][0];
                  _loc2_["Item0"]["_color" + _loc13_][0] = _loc2_["Item1"]["_color" + _loc13_][0];
                  _loc3_["Item0"][_loc2_["Item1"]["_menu"]]["_color" + _loc13_][0] = _loc2_["Item1"]["_color" + _loc13_][0];
                  _loc2_["Item1"]["_color" + _loc13_][0] = _loc12_;
                  _loc3_["Item1"][_loc2_["Item0"]["_menu"]]["_color" + _loc13_][0] = _loc12_;
                  _loc13_++;
               }
            }
            catch(myError:Error)
            {
            }
            _loc9_ = _loc2_["Ashi2"]["_menu"];
            _loc2_["Ashi2"]["_menu"] = _loc2_["Ashi"]["_menu"];
            _loc2_["Ashi"]["_menu"] = _loc9_;
            _loc2_["Head"]["_meter"] = 100 - _loc2_["Head"]["_meter"];
            _loc2_["Rmove"]["_meter"] = 360 - _loc2_["Rmove"]["_meter"];
         }
         else if(MenuClass.systemData["PoseSet"]["_reversal"] == 1)
         {
            _loc4_ = _loc2_["LeftArm"]["_meter"];
            _loc2_["LeftArm"]["_meter"] = _loc2_["RightArm"]["_meter"];
            _loc2_["RightArm"]["_meter"] = _loc4_;
            _loc5_ = _loc2_["LeftArm2"]["_meter"];
            _loc2_["LeftArm2"]["_meter"] = _loc2_["RightArm2"]["_meter"];
            _loc2_["RightArm2"]["_meter"] = _loc5_;
            _loc6_ = _loc2_["LeftArm2"]["_depth"];
            _loc2_["LeftArm2"]["_depth"] = _loc2_["RightArm2"]["_depth"];
            _loc2_["RightArm2"]["_depth"] = _loc6_;
            _loc7_ = _loc2_["LeftHand"]["_menu"];
            _loc2_["LeftHand"]["_menu"] = _loc2_["RightHand"]["_menu"];
            _loc2_["RightHand"]["_menu"] = _loc7_;
            _loc8_ = _loc2_["LeftHand2"]["_meter"];
            _loc2_["LeftHand2"]["_meter"] = _loc2_["RightHand2"]["_meter"];
            _loc2_["RightHand2"]["_meter"] = _loc8_;
            _loc10_ = _loc2_["Item1"]["_menu"];
            _loc2_["Item1"]["_menu"] = _loc2_["Item0"]["_menu"];
            _loc2_["Item0"]["_menu"] = _loc10_;
            _loc11_ = _loc2_["Item1"]["_visible"][0];
            _loc2_["Item1"]["_visible"][0] = _loc2_["Item0"]["_visible"][0];
            _loc2_["Item0"]["_visible"][0] = _loc11_;
            try
            {
               _loc13_ = 0;
               while(_loc13_ <= 2)
               {
                  _loc12_ = _loc2_["Item1"]["_color" + _loc13_][0];
                  _loc2_["Item1"]["_color" + _loc13_][0] = _loc2_["Item0"]["_color" + _loc13_][0];
                  _loc3_["Item1"][_loc2_["Item0"]["_menu"]]["_color" + _loc13_][0] = _loc2_["Item0"]["_color" + _loc13_][0];
                  _loc2_["Item0"]["_color" + _loc13_][0] = _loc12_;
                  _loc3_["Item0"][_loc2_["Item1"]["_menu"]]["_color" + _loc13_][0] = _loc12_;
                  _loc13_++;
               }
            }
            catch(myError:Error)
            {
            }
            _loc9_ = _loc2_["Ashi"]["_menu"];
            _loc2_["Ashi"]["_menu"] = _loc2_["Ashi2"]["_menu"];
            _loc2_["Ashi2"]["_menu"] = _loc9_;
            _loc2_["Head"]["_meter"] = 100 - _loc2_["Head"]["_meter"];
            _loc2_["Rmove"]["_meter"] = 360 - _loc2_["Rmove"]["_meter"];
         }
         new SetClass(param1,"LeftArm","move");
         new SetClass(param1,"LeftArm2","move");
         new SetClass(param1,"LeftHand","move");
         new SetClass(param1,"LeftHand2","move");
         new SetClass(param1,"RightArm","move");
         new SetClass(param1,"RightArm2","move");
         new SetClass(param1,"RightHand","move");
         new SetClass(param1,"RightHand2","move");
         new SetClass(param1,"Ashi","move");
         new SetClass(param1,"Ashi2","move");
         new SetClass(param1,"Head","move");
         new SetClass(param1,"Rmove","move");
         new SetClass(param1,"Item0","move");
         new SetClass(param1,"Item1","move");
      }
   }
}
