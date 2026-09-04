package
{
   import menu.Chara_Loading_text;
   
   public class Air_UmekomiFont
   {
       
      
      public function Air_UmekomiFont()
      {
         super();
         MenuClass.UmekomiFontFlag[0] = 1;
         MenuClass.UmekomiFontFlag[1] = 1;
         MenuClass.UmekomiFontFlag[2] = 1;
         MenuClass.UmekomiFontFlag[3] = 1;
         MenuClass.UmekomiFontFlag[4] = 1;
         Chara_Loading_text.FontEn1 = new fontEn1();
         Chara_Loading_text.FontEn2 = new fontEn2();
         Chara_Loading_text.FontJpBlack = new fontJpBlack();
         Chara_Loading_text.FontJpLight = new fontJpLight();
         Chara_Loading_text.FontJpMedium = new fontJpMedium();
      }
   }
}
