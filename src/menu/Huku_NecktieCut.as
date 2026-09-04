package menu
{
   import parameter.Dress_data;
   
   public class Huku_NecktieCut
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var menuNum:int;
      
      public function Huku_NecktieCut(param1:int)
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         this.menuNum = this.charaData["Ysyatu"]["_menu"];
         var _loc2_:int = this.charaAdd.mune.getChildIndex(this.charaAdd.mune.Necktie0);
         var _loc3_:int = this.charaAdd.mune.getChildIndex(this.charaAdd.mune.necktie_swap0);
         try
         {
            _loc4_ = "0";
            try
            {
               _loc4_ = this.charaAdd.mune.SeihukuMune.ysyatu0.currentLabel.substring(0,1);
            }
            catch(myError:Error)
            {
            }
            if(this.charaData["Seihuku"]["_visible"][0] && _loc4_ == "0")
            {
               if((Dress_data.YsyatuData[this.menuNum]["necktie"] == 2 || Dress_data.YsyatuData[this.menuNum]["necktie"] == 3 || Dress_data.YsyatuData[this.menuNum]["necktie"] == 4) && this.charaData["Ysyatu"]["_visible"][0])
               {
                  this.charaAdd.mune.Necktie0.maskMc.mask = null;
                  this.charaAdd.mune.Necktie0.maskMc.visible = false;
                  if(_loc2_ < _loc3_)
                  {
                     this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necktie0,this.charaAdd.mune.necktie_swap0);
                  }
               }
               else
               {
                  this.charaAdd.mune.Necktie0.necktie.mask = this.charaAdd.mune.Necktie0.maskMc;
                  this.charaAdd.mune.Necktie0.maskMc.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                  if(_loc2_ > _loc3_)
                  {
                     this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necktie0,this.charaAdd.mune.necktie_swap0);
                  }
               }
            }
            else if(this.charaData["Vest"]["_visible"][0] && (this.charaData["VestDou"]["_menu"] == 1 || this.charaData["VestDou"]["_menu"] == 2 && Dress_data.VestData[this.charaData["Vest"]["_menu"]]["data"].length == 5))
            {
               if((Dress_data.YsyatuData[this.menuNum]["necktie"] == 2 || Dress_data.YsyatuData[this.menuNum]["necktie"] == 3 || Dress_data.YsyatuData[this.menuNum]["necktie"] == 4) && this.charaData["Ysyatu"]["_visible"][0])
               {
                  this.charaAdd.mune.Necktie0.maskMc.mask = null;
                  this.charaAdd.mune.Necktie0.maskMc.visible = false;
                  if(_loc2_ < _loc3_)
                  {
                     this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necktie0,this.charaAdd.mune.necktie_swap0);
                  }
               }
               else
               {
                  _loc5_ = "0";
                  try
                  {
                     _loc5_ = this.charaAdd.mune.VestMune["ysyatu" + 0].currentLabel.substring(0,1);
                  }
                  catch(myError:Error)
                  {
                  }
                  if(_loc5_ == "1")
                  {
                     this.charaAdd.mune.Necktie0.maskMc.mask = null;
                     this.charaAdd.mune.Necktie0.maskMc.visible = false;
                  }
                  else
                  {
                     this.charaAdd.mune.Necktie0.necktie.mask = this.charaAdd.mune.Necktie0.maskMc;
                     this.charaAdd.mune.Necktie0.maskMc.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                  }
                  if(_loc2_ > _loc3_)
                  {
                     this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necktie0,this.charaAdd.mune.necktie_swap0);
                  }
               }
            }
            else
            {
               this.charaAdd.mune.Necktie0.maskMc.mask = null;
               this.charaAdd.mune.Necktie0.maskMc.visible = false;
               if((Dress_data.YsyatuData[this.menuNum]["necktie"] == 2 || Dress_data.YsyatuData[this.menuNum]["necktie"] == 3 || Dress_data.YsyatuData[this.menuNum]["necktie"] == 4) && this.charaData["Ysyatu"]["_visible"][0])
               {
                  if(_loc2_ < _loc3_)
                  {
                     this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necktie0,this.charaAdd.mune.necktie_swap0);
                  }
               }
               else
               {
                  new Huku_BreastOpen(param1);
                  if(Huku_BreastOpen.muneOpen)
                  {
                     if(_loc2_ < _loc3_)
                     {
                        this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necktie0,this.charaAdd.mune.necktie_swap0);
                     }
                  }
                  else if(_loc2_ > _loc3_)
                  {
                     this.charaAdd.mune.swapChildren(this.charaAdd.mune.Necktie0,this.charaAdd.mune.necktie_swap0);
                  }
               }
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
