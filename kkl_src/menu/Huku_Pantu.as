package menu
{
   public class Huku_Pantu
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      public function Huku_Pantu(param1:int, param2:String)
      {
         super();
         this.charaNum = param1;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         var _loc3_:Array = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
         try
         {
            if(_loc3_[0] >= 1 && _loc3_[1] >= 1)
            {
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.gotoAndStop(2);
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.gotoAndStop(2);
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu2.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.x = 1;
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.x = 123.55;
               if(param2 == "Tights")
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.y = -7;
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.y = -7;
               }
               else
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.y = -15;
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.y = -15;
                  try
                  {
                     this.charaAdd.dou.dou_shitaHuku[param2].Pantu2.y = -15;
                  }
                  catch(myError:Error)
                  {
                  }
               }
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.scaleX = 0.95;
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.scaleX = 0.95;
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu2.scaleX = 0.9;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].sen.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
            }
            else if(_loc3_[0] >= 1 || _loc3_[1] >= 1)
            {
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.gotoAndStop(2);
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.gotoAndStop(2);
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu2.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.y = -10;
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.y = -10;
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu2.y = -10;
               }
               catch(myError:Error)
               {
               }
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.x = 1;
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.x = 123.55;
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.scaleX = 0.96;
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.scaleX = 0.96;
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu2.scaleX = 0.91;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].sen.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.gotoAndStop(1);
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.gotoAndStop(1);
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu2.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.y = 2.7;
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.y = 2.7;
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu2.y = 2.7;
               }
               catch(myError:Error)
               {
               }
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.x = -2.25;
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.x = 126.55;
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu0.scaleX = 1;
               this.charaAdd.dou.dou_shitaHuku[param2].Pantu1.scaleX = 1;
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].Pantu2.scaleX = 1;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.dou.dou_shitaHuku[param2].sen.gotoAndStop(1);
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
