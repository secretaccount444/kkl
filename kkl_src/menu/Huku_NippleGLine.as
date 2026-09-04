package menu
{
   public class Huku_NippleGLine
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      public function Huku_NippleGLine(param1:int, param2:String, param3:int)
      {
         super();
         this.charaAdd = MenuClass.charaAdd[param1];
         this.charaData = MenuClass.charaData[param1];
         if(this.charaData["Breast"]["_menu"] <= 5)
         {
            if(this.charaData[param2]["_meter"] <= 30)
            {
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.Nipple.nippleG.sen.gotoAndStop(5);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.NippleG.nippleG.sen.gotoAndStop(5);
               }
               catch(myError:Error)
               {
               }
            }
            else if(this.charaData[param2]["_meter"] <= 60)
            {
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.Nipple.nippleG.sen.gotoAndStop(4);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.NippleG.nippleG.sen.gotoAndStop(4);
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.Nipple.nippleG.sen.gotoAndStop(3);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.NippleG.nippleG.sen.gotoAndStop(3);
               }
               catch(myError:Error)
               {
               }
            }
         }
         else if(this.charaData["Breast"]["_menu"] <= 10)
         {
            if(this.charaData[param2]["_meter"] <= 30)
            {
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.Nipple.nippleG.sen.gotoAndStop(4);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.NippleG.nippleG.sen.gotoAndStop(4);
               }
               catch(myError:Error)
               {
               }
            }
            else if(this.charaData[param2]["_meter"] <= 60)
            {
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.Nipple.nippleG.sen.gotoAndStop(3);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.NippleG.nippleG.sen.gotoAndStop(3);
               }
               catch(myError:Error)
               {
               }
            }
            else
            {
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.Nipple.nippleG.sen.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune["mune" + param3].mune.NippleG.nippleG.sen.gotoAndStop(2);
               }
               catch(myError:Error)
               {
               }
            }
         }
         else if(this.charaData[param2]["_meter"] <= 30)
         {
            try
            {
               this.charaAdd.mune["mune" + param3].mune.Nipple.nippleG.sen.gotoAndStop(3);
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.mune["mune" + param3].mune.NippleG.nippleG.sen.gotoAndStop(3);
            }
            catch(myError:Error)
            {
            }
         }
         else if(this.charaData[param2]["_meter"] <= 60)
         {
            try
            {
               this.charaAdd.mune["mune" + param3].mune.Nipple.nippleG.sen.gotoAndStop(2);
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.mune["mune" + param3].mune.NippleG.nippleG.sen.gotoAndStop(2);
            }
            catch(myError:Error)
            {
            }
         }
         else
         {
            try
            {
               this.charaAdd.mune["mune" + param3].mune.Nipple.nippleG.sen.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
            try
            {
               this.charaAdd.mune["mune" + param3].mune.NippleG.nippleG.sen.gotoAndStop(1);
            }
            catch(myError:Error)
            {
            }
         }
      }
   }
}
