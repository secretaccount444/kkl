package menu
{
   import parameter.Dress_data;
   
   public class Huku_PantuMask
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var douNum:int;
      
      public function Huku_PantuMask(param1:int)
      {
         var _loc2_:int = 0;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         var _loc3_:Array = new Array(Move_DataClass.AshiFrameData[this.charaData["Ashi"]["_menu"]]["depth"],Move_DataClass.AshiFrameData[this.charaData["Ashi2"]["_menu"]]["depth"]);
         this.douNum = Dress_data.ObjData["Waist"][this.charaData["Waist"]["_menu"]]["dou"];
         var _loc4_:Boolean = false;
         if(this.charaData["Tights"]["_visible"][0] && Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["side"])
         {
            if(this.charaData["Tights"]["_depth"] == 2 || this.charaData["Pantu"]["_depth"] == 0 && this.charaData["Tights"]["_depth"] == 1)
            {
               _loc4_ = true;
            }
         }
         var _loc5_:Boolean = false;
         if(this.charaData["Skirt"]["_visible"][0] && Dress_data.SkirtData[this.charaData["Skirt"]["_menu"]]["side"])
         {
            _loc5_ = true;
         }
         var _loc6_:Boolean = false;
         if(this.charaData["Zubon"]["_visible"][0])
         {
            _loc6_ = true;
         }
         if(!_loc4_ && !_loc5_ && !_loc6_)
         {
            if(_loc3_[0] >= 1 || _loc3_[1] >= 1)
            {
               this.Mji(5);
            }
            else
            {
               try
               {
                  this.charaAdd.dou.dou_shitaHuku.Pantu.pantuMask.gotoAndStop(2);
               }
               catch(e:Error)
               {
               }
               try
               {
                  this.charaAdd.dou.dou_shitaHuku.Spantu.pantuMask.gotoAndStop(2);
               }
               catch(e:Error)
               {
               }
               try
               {
                  if(this.douNum == 1)
                  {
                     this.charaAdd.dou.dou_shitaHuku.Nawa.nawaMask.gotoAndStop(2);
                  }
                  else
                  {
                     this.charaAdd.dou.dou_shitaHuku.Nawa.nawaMask.gotoAndStop(3);
                  }
               }
               catch(e:Error)
               {
               }
            }
         }
         else
         {
            if(this.charaData["Tights"]["_visible"][0] && Dress_data.TightsData[this.charaData["Tights"]["_menu"]]["Dou"])
            {
               if(Dress_data.BuraData[this.charaData["Bura"]["_menu"]]["Pantu"] != 0 && this.charaData["Bura"]["_visible"][0])
               {
                  if(_loc3_[0] >= 1 || _loc3_[1] >= 1)
                  {
                     this.Mji(5);
                  }
                  else
                  {
                     try
                     {
                        this.charaAdd.dou.dou_shitaHuku.Pantu.pantuMask.gotoAndStop(2);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        this.charaAdd.dou.dou_shitaHuku.Spantu.pantuMask.gotoAndStop(2);
                     }
                     catch(e:Error)
                     {
                     }
                     try
                     {
                        if(this.douNum == 1)
                        {
                           this.charaAdd.dou.dou_shitaHuku.Nawa.nawaMask.gotoAndStop(2);
                        }
                        else
                        {
                           this.charaAdd.dou.dou_shitaHuku.Nawa.nawaMask.gotoAndStop(3);
                        }
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               else if(_loc3_[0] >= 1 || _loc3_[1] >= 1)
               {
                  this.Mji(4);
               }
               else
               {
                  try
                  {
                     this.charaAdd.dou.dou_shitaHuku.Pantu.pantuMask.gotoAndStop(1);
                  }
                  catch(e:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.dou.dou_shitaHuku.Spantu.pantuMask.gotoAndStop(1);
                  }
                  catch(e:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.dou.dou_shitaHuku.Nawa.nawaMask.gotoAndStop(1);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            if(_loc4_ || _loc5_ || _loc6_)
            {
               if(_loc3_[0] >= 1 || _loc3_[1] >= 1)
               {
                  this.Mji(5);
               }
               else
               {
                  try
                  {
                     this.charaAdd.dou.dou_shitaHuku.Pantu.pantuMask.gotoAndStop(1);
                  }
                  catch(e:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.dou.dou_shitaHuku.Spantu.pantuMask.gotoAndStop(1);
                  }
                  catch(e:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.dou.dou_shitaHuku.Nawa.nawaMask.gotoAndStop(1);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
         }
      }
      
      private function Mji(param1:int) : void
      {
         try
         {
            this.charaAdd.dou.dou_shitaHuku.Pantu.pantuMask.gotoAndStop(param1);
         }
         catch(e:Error)
         {
         }
         try
         {
            this.charaAdd.dou.dou_shitaHuku.Spantu.pantuMask.gotoAndStop(param1);
         }
         catch(e:Error)
         {
         }
         try
         {
            if(this.douNum == 1)
            {
               this.charaAdd.dou.dou_shitaHuku.Nawa.nawaMask.gotoAndStop(4);
            }
            else
            {
               this.charaAdd.dou.dou_shitaHuku.Nawa.nawaMask.gotoAndStop(5);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}
