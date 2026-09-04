package menu
{
   public class Free_HukidashiMenuSet
   {
       
      
      public function Free_HukidashiMenuSet(param1:int)
      {
         super();
         var _loc2_:Number = MenuClass.systemData["FreeHukidashiBlend" + param1]["_menu"];
         try
         {
            if(_loc2_ == 0)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "NORMAL";
            }
            else if(_loc2_ == 1)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "MULTIPLY";
            }
            else if(_loc2_ == 2)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "SCREEN";
            }
            else if(_loc2_ == 3)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "LIGHTEN";
            }
            else if(_loc2_ == 4)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "DARKEN";
            }
            else if(_loc2_ == 5)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "DIFFERENCE";
            }
            else if(_loc2_ == 6)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "ADD";
            }
            else if(_loc2_ == 7)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "SUBTRACT";
            }
            else if(_loc2_ == 8)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "OVERLAY";
            }
            else if(_loc2_ == 9)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "HARDLIGHT";
            }
            else if(_loc2_ == 10)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "ERASE";
            }
            else if(_loc2_ == 11)
            {
               MenuClass.tabMenuAdd["FreeHukidashiBlend"].txt.text = "ALPHA";
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
