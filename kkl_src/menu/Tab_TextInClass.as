package menu
{
   public class Tab_TextInClass
   {
       
      
      public function Tab_TextInClass(param1:int, param2:String, param3:int)
      {
         super();
         try
         {
            if(MenuClass.tabMenuAdd[param2].menu0.width == 102 || param2 == "HairEx")
            {
               if(param3 < 9)
               {
                  MenuClass.tabMenuAdd[param2].menu0["num" + param1].text = "00" + (param3 + 1);
               }
               else if(param3 < 99)
               {
                  MenuClass.tabMenuAdd[param2].menu0["num" + param1].text = "0" + (param3 + 1);
               }
               else
               {
                  MenuClass.tabMenuAdd[param2].menu0["num" + param1].text = param3 + 1;
               }
            }
            else if(param3 < 9)
            {
               MenuClass.tabMenuAdd[param2].menu0["num" + param1].text = "0" + (param3 + 1);
            }
            else
            {
               MenuClass.tabMenuAdd[param2].menu0["num" + param1].text = param3 + 1;
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
