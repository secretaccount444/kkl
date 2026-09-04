package menu
{
   import system.MeterPersent;
   
   public class Hair_SideBurn
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Hair_SideBurn(param1:String, param2:int)
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param2];
         this.charaData = MenuClass.charaData[param2];
         this.charaAdd.head[param1].visible = this.charaData[param1]["_visible"][0];
         this.charaAdd.SideBurnMiddle[param1].visible = this.charaData[param1]["_visible"][0];
         if(this.charaData[param1]["_visible"][0])
         {
            new MeterPersent(0,100,"Head",param2);
            _loc3_ = Math.floor(MeterPersent.MeterPersentNum);
            this.charaAdd.head[param1].SideBurn.gotoAndStop(this.charaData[param1]["_menu"] + 2);
            this.charaAdd.SideBurnMiddle[param1].SideBurn.gotoAndStop(this.charaData[param1]["_menu"] + 2);
            this.charaAdd.head[param1].SideBurn.side.mouseChildren = false;
            this.charaAdd.head[param1].SideBurn.side.buttonMode = true;
            this.charaAdd.SideBurnMiddle[param1].SideBurn.side.mouseChildren = false;
            this.charaAdd.SideBurnMiddle[param1].SideBurn.side.buttonMode = true;
            if(this.charaData[param1]["_turn"] == 1)
            {
               if(param1 == "SideBurnLeft")
               {
                  this.charaAdd.head[param1].gotoAndStop(Move_DataClass.SideBurnRotation2[_loc3_]);
                  this.charaAdd.SideBurnMiddle[param1].gotoAndStop(Move_DataClass.SideBurnRotation2[_loc3_]);
               }
               else
               {
                  this.charaAdd.head[param1].gotoAndStop(Move_DataClass.SideBurnRotation[_loc3_]);
                  this.charaAdd.SideBurnMiddle[param1].gotoAndStop(Move_DataClass.SideBurnRotation[_loc3_]);
               }
            }
            else if(param1 == "SideBurnLeft")
            {
               this.charaAdd.head[param1].gotoAndStop(1);
               this.charaAdd.SideBurnMiddle[param1].gotoAndStop(1);
            }
            else
            {
               this.charaAdd.head[param1].gotoAndStop(1);
               this.charaAdd.SideBurnMiddle[param1].gotoAndStop(1);
            }
            if(param1 == "SideBurnLeft")
            {
               if(MenuClass.sideBurnLeftHeightData[param2][0] != this.charaData[param1]["_menu"])
               {
                  MenuClass.sideBurnLeftHeightData[param2][0] = this.charaData[param1]["_menu"];
                  MenuClass.sideBurnLeftHeightData[param2][1] = this.charaAdd.head[param1].SideBurn.side.x;
                  MenuClass.sideBurnLeftHeightData[param2][2] = this.charaAdd.head[param1].SideBurn.side.y;
                  MenuClass.sideBurnLeftHeightData[param2][3] = this.charaAdd.head[param1].SideBurn.side.scaleX;
                  MenuClass.sideBurnLeftHeightData[param2][4] = this.charaAdd.head[param1].SideBurn.side.scaleY;
                  MenuClass.sideBurnLeftHeightData[param2][5] = this.charaAdd.head[param1].SideBurn.side.rotation;
               }
            }
            else if(MenuClass.sideBurnRightHeightData[param2][0] != this.charaData[param1]["_menu"])
            {
               MenuClass.sideBurnRightHeightData[param2][0] = this.charaData[param1]["_menu"];
               MenuClass.sideBurnRightHeightData[param2][1] = this.charaAdd.head[param1].SideBurn.side.x;
               MenuClass.sideBurnRightHeightData[param2][2] = this.charaAdd.head[param1].SideBurn.side.y;
               MenuClass.sideBurnRightHeightData[param2][3] = this.charaAdd.head[param1].SideBurn.side.scaleX;
               MenuClass.sideBurnRightHeightData[param2][4] = this.charaAdd.head[param1].SideBurn.side.scaleY;
               MenuClass.sideBurnRightHeightData[param2][5] = this.charaAdd.head[param1].SideBurn.side.rotation;
            }
            if(this.charaData[param1]["_visible"][0])
            {
               _loc4_ = this.charaAdd.head.getChildIndex(this.charaAdd.head[param1 + "_swap"]);
               _loc5_ = this.charaAdd.head.getChildIndex(this.charaAdd.head[param1]);
               if(this.charaData[param1]["_depth"] == 0)
               {
                  this.charaAdd.head[param1].visible = false;
                  this.charaAdd.SideBurnMiddle[param1].visible = true;
               }
               else if(this.charaData[param1]["_depth"] == 1)
               {
                  this.charaAdd.head[param1].visible = true;
                  this.charaAdd.SideBurnMiddle[param1].visible = false;
                  if(_loc4_ < _loc5_)
                  {
                     this.charaAdd.head.swapChildren(this.charaAdd.head[param1],this.charaAdd.head[param1 + "_swap"]);
                  }
               }
               else if(this.charaData[param1]["_depth"] == 2)
               {
                  this.charaAdd.head[param1].visible = true;
                  this.charaAdd.SideBurnMiddle[param1].visible = false;
                  if(_loc4_ > _loc5_)
                  {
                     this.charaAdd.head.swapChildren(this.charaAdd.head[param1],this.charaAdd.head[param1 + "_swap"]);
                  }
               }
               else if(this.charaData[param1]["_depth"] == 3)
               {
                  this.charaAdd.head[param1].visible = false;
                  this.charaAdd.SideBurnMiddle[param1].visible = false;
               }
            }
            new Hair_Sen(param2);
            new SetClass(param2,param1 + "_Height","tab");
            new Chara_ColorClass(param2,param1);
            if(this.charaData["Hat"]["_visible"][0] && this.charaData["Hat"]["_hair2"] == 0)
            {
               this.charaAdd.head[param1].visible = false;
               this.charaAdd.SideBurnMiddle[param1].visible = false;
            }
         }
         else
         {
            this.charaAdd.head[param1].SideBurn.gotoAndStop(1);
            this.charaAdd.SideBurnMiddle[param1].SideBurn.gotoAndStop(1);
         }
      }
   }
}
