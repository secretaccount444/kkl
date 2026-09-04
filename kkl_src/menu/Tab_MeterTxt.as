package menu
{
   import parts.Ribbon;
   import parts.Hairpiece;
   
   public class Tab_MeterTxt
   {
       
      
      public function Tab_MeterTxt(param1:Boolean)
      {
         var _loc2_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var oldSliders:Boolean = false;
         super();
         var _loc3_:int = MenuClass.tabData[MenuClass._nowHeaderName].length - 1;
         if(param1)
         {
            _loc2_ = 0;
            for(; _loc2_ <= _loc3_; _loc2_++)
            {
               _loc7_ = MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][0];
               try
               {
                  if(MenuClass.tabMenuAdd[_loc7_]["meter0"] != undefined)
                  {
                     MenuClass.tabMenuAdd[_loc7_]["meter0"].meterTxt.visible = true;

                     oldSliders = MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_meterType"] > 2 && MenuClass.f10KeyPress;

                     if(MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_meter"] == "charaPlus")
                     {
                        _loc4_ = MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_data"];
                        _loc5_ = MenuClass.systemData[_loc4_]["_menu"];
                        _loc6_ = _loc7_ + _loc5_;

                        if (_loc4_ == "RibonPlus") {
                           var ribbon = Ribbon.fromCharacter(MenuClass._nowCharaNum, _loc5_);
                           _loc8_ = ribbon.getData(_loc7_, "_meter");
                        } else if (_loc4_ == "HairExPlus") {
                           var hairpiece = Hairpiece.fromCharacter(MenuClass._nowCharaNum, _loc5_);
                           _loc8_ = hairpiece.getData(_loc7_, "_meter");
                        } else {
                           _loc8_ = MenuClass.charaData[MenuClass._nowCharaNum][_loc6_]["_meter"];
                        }
                     }
                     else if(MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_meter"] == "chara")
                     {
                        _loc8_ =  MenuClass.charaData[MenuClass._nowCharaNum][_loc7_]["_meter"];
                     }
                     else if(MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_meter"] == "systemPlus")
                     {
                        _loc4_ = MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_data"];
                        _loc5_ = MenuClass.systemData[_loc4_]["_menu"];
                        _loc6_ = _loc7_ + _loc5_;
                        _loc8_ = MenuClass.systemData[_loc6_]["_meter"];
                     }
                     else if(MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_meter"] == "system" || MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_meter"] == "systemAll")
                     {
                        _loc8_ = MenuClass.systemData[_loc7_]["_meter"];
                     }

                     if(_loc8_ >= 1000 || _loc8_ <= -100)
                     {
                        MenuClass.tabMenuAdd[_loc7_]["meter0"].meterTxt.gotoAndStop(5);
                     }
                     else
                     {
                        MenuClass.tabMenuAdd[_loc7_]["meter0"].meterTxt.gotoAndStop(1);
                     }

                     if (oldSliders)
                     {
                        _loc8_ = Math.floor(_loc8_ / 10);
                     }
                     trace("loc8 " + _loc8_);

                     /* NOTE: could probably replace this with a more general formatting mechanism */
                     if (MenuClass._nowHeaderName == "Tool" && _loc7_ == "MenuScale") {
                        var scale = (_loc8_ * (0.50 / 100)) + .50;
                        MenuClass.tabMenuAdd[_loc7_]["meter0"].meterTxt.num.text = scale.toFixed(2);
                     } else {
                        MenuClass.tabMenuAdd[_loc7_]["meter0"].meterTxt.num.text = _loc8_;
                     
                        if(MenuClass.spaceKeyPress == MenuClass.f12KeyPress)
                        {
                           if(_loc8_ == 1000 && MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_meterType"] == 2)
                           {
                              MenuClass.tabMenuAdd[_loc7_]["meter0"].meterTxt.gotoAndStop(4);
                           }
                           //else if(_loc8_ == 3600 && MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_meterType"] == 4)
                           //{
                           //   MenuClass.tabMenuAdd[_loc7_]["meter0"].meterTxt.gotoAndStop(3);
                           //}
                           else if(_loc8_ == 100 && MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][2]["_meterType"] == 0)
                           {
                              MenuClass.tabMenuAdd[_loc7_]["meter0"].meterTxt.gotoAndStop(2);
                           }
                        }
                     }
                  }
               }
               catch(myError:Error)
               {
                  continue;
               }
            }
         }
         else
         {
            _loc2_ = 0;
            for(; _loc2_ <= _loc3_; _loc2_++)
            {
               _loc7_ = MenuClass.tabData[MenuClass._nowHeaderName][_loc2_][0];
               try
               {
                  if(MenuClass.tabMenuAdd[_loc7_]["meter0"] != undefined)
                  {
                     MenuClass.tabMenuAdd[_loc7_]["meter0"].meterTxt.visible = false;
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
