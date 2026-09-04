package menu
{
   public class HukuClick_s
   {
       
      
      private var charaData:Object;
      
      public function HukuClick_s(param1:int, param2:String, param3:int)
      {
         super();
         this.charaData = MenuClass.charaData[param1];
         if(param3 == 0)
         {
            if(param2 == "s_btn1")
            {
               if(!this.charaData["Vibrator"]["_visible"][0])
               {
                  this.charaData["s"]["_hidaCount"] = 1;
                  if(this.charaData["s"]["_hidaPlay"] == 0 || this.charaData["s"]["_hidaPlay"] == 1)
                  {
                     this.charaData["s"]["_hidaPlay"] = 2;
                  }
                  else if(this.charaData["s"]["_hidaPlay"] == 2)
                  {
                     this.charaData["s"]["_hidaPlay"] = 3;
                  }
                  else if(this.charaData["s"]["_hidaPlay"] == 4)
                  {
                     this.charaData["s"]["_hidaPlay"] = 9;
                  }
                  else if(this.charaData["s"]["_hidaPlay"] == 6)
                  {
                     this.charaData["s"]["_hidaPlay"] = 8;
                  }
               }
            }
            else if(param2 == "s_btn0")
            {
               if(!this.charaData["Vibrator"]["_visible"][0])
               {
                  this.charaData["s"]["_hidaCount"] = 1;
                  if(this.charaData["s"]["_hidaPlay"] == 0 || this.charaData["s"]["_hidaPlay"] == 1)
                  {
                     this.charaData["s"]["_hidaPlay"] = 4;
                  }
                  else if(this.charaData["s"]["_hidaPlay"] == 2)
                  {
                     this.charaData["s"]["_hidaPlay"] = 10;
                  }
                  else if(this.charaData["s"]["_hidaPlay"] == 4)
                  {
                     this.charaData["s"]["_hidaPlay"] = 5;
                  }
                  else if(this.charaData["s"]["_hidaPlay"] == 6)
                  {
                     this.charaData["s"]["_hidaPlay"] = 8;
                  }
               }
            }
            else if(param2 == "s_btn2")
            {
               if(!this.charaData["Vibrator"]["_visible"][0])
               {
                  this.charaData["s"]["_hidaCount"] = 1;
                  if(this.charaData["s"]["_hidaPlay"] == 0 || this.charaData["s"]["_hidaPlay"] == 1)
                  {
                     this.charaData["s"]["_hidaPlay"] = 6;
                  }
                  else if(this.charaData["s"]["_hidaPlay"] == 2)
                  {
                     this.charaData["s"]["_hidaPlay"] = 11;
                  }
                  else if(this.charaData["s"]["_hidaPlay"] == 4)
                  {
                     this.charaData["s"]["_hidaPlay"] = 9;
                  }
                  else if(this.charaData["s"]["_hidaPlay"] == 6)
                  {
                     this.charaData["s"]["_hidaPlay"] = 7;
                  }
               }
            }
         }
         else if(param3 == 1)
         {
            if(this.charaData["s"]["_hidaPlay"] == 2 && param2 == "s_btn1")
            {
               this.charaData["s"]["_hidaCount"] = 1;
               this.charaData["s"]["_hidaPlay"] = 3;
            }
            else if(this.charaData["s"]["_hidaPlay"] == 2 && param2 == "s_btn0")
            {
               this.charaData["s"]["_hidaCount"] = 1;
               this.charaData["s"]["_hidaPlay"] = 10;
            }
            else if(this.charaData["s"]["_hidaPlay"] == 2 && param2 == "s_btn2")
            {
               this.charaData["s"]["_hidaCount"] = 1;
               this.charaData["s"]["_hidaPlay"] = 11;
            }
            else if(this.charaData["s"]["_hidaPlay"] == 4 && param2 == "s_btn0")
            {
               this.charaData["s"]["_hidaCount"] = 1;
               this.charaData["s"]["_hidaPlay"] = 5;
            }
            else if(this.charaData["s"]["_hidaPlay"] == 6 && param2 == "s_btn2")
            {
               this.charaData["s"]["_hidaCount"] = 1;
               this.charaData["s"]["_hidaPlay"] = 7;
            }
            else
            {
               this.charaData["s"]["_hidaCount"] = 1;
               this.charaData["s"]["_hidaPlay"] = 1;
            }
         }
      }
   }
}
