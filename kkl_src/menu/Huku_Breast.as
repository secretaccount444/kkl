package menu
{
   import parameter.Dress_data;
   
   public class Huku_Breast
   {
       
      
      private var charaAdd:Object;
      
      private var charaData:Object;
      
      private var charaNum:int;
      
      private var BreastNum:int;
      
      private var seihukuMask:String = "null";
      
      private var ysyatuMask:String = "null";
      
      private var tsyatuMask:String = "null";
      
      private var vestMask:String = "null";
      
      public function Huku_Breast(param1:String, param2:int)
      {
         var i:int = 0;
         var j:int = 0;
         var k:int = 0;
         var dataNum:int = 0;
         var SeihukuKataCheck:Boolean = false;
         var VestKataCheck:Boolean = false;
         var YsyatuKataCheck:Boolean = false;
         var TsyatuKataCheck:Boolean = false;
         var tabName:String = param1;
         var CharaNum:int = param2;
         super();
         this.charaNum = CharaNum;
         this.charaAdd = MenuClass.charaAdd[this.charaNum];
         this.charaData = MenuClass.charaData[this.charaNum];
         var YsyatuCheck:Boolean = false;
         var VestCheck:Boolean = false;
         if(this.charaData["VestDou"]["_menu"] != 1 && this.charaData["VestSkirt"]["_menu"] != 0)
         {
            VestCheck = true;
         }
         if(this.charaData["YsyatuDou"]["_menu"] != 1 && this.charaData["YsyatuSkirt"]["_menu"] != 0)
         {
            YsyatuCheck = true;
         }
         i = 0;
         for(; i <= 1; i++)
         {
            if(tabName == "Seihuku")
            {
               if(this.charaData["Seihuku"]["_visible"][0])
               {
                  try
                  {
                     this.charaAdd.mune.SeihukuMune["ysyatu" + i].ysyatu.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.mune.SeihukuMune["ysyatu" + i].ysyatu.kage.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  j = 0;
                  for(; j <= 2; j++)
                  {
                     try
                     {
                        k = 0;
                        while(k <= 1)
                        {
                           this.charaAdd.mune.SeihukuMune["ysyatu" + i].ysyatu["m_color" + j + "_" + k].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           k++;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        k = 0;
                        while(k <= 1)
                        {
                           this.charaAdd.mune.SeihukuMune["ysyatu" + i].ysyatu["m_kage" + j + "_" + k].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           k++;
                        }
                     }
                     catch(myError:Error)
                     {
                        continue;
                     }
                  }
                  j = 0;
                  while(j <= 3)
                  {
                     try
                     {
                        this.charaAdd.mune.SeihukuMune.ysyatu0.ysyatu["right" + j].visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     try
                     {
                        this.charaAdd.mune.SeihukuMune.ysyatu1.ysyatu["left" + j].visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                     j++;
                  }
                  new SetClass(this.charaNum,"SeihukuBreastOption","tab");
                  new Chara_ColorClass(this.charaNum,"SeihukuMune");
               }
            }
            else if(tabName == "Ysyatu")
            {
               if(this.charaData["Ysyatu"]["_visible"][0])
               {
                  try
                  {
                     new Huku_BreastOpen(this.charaNum);
                     try
                     {
                        if(this.charaData["YsyatuDou"]["_menu"] == 1 && VestCheck || this.charaData["YsyatuDou"]["_menu"] == 1 && this.charaData["YsyatuSkirt"]["_menu"] == 0)
                        {
                           dataNum = 4;
                        }
                        else
                        {
                           dataNum = Dress_data.ObjData["YsyatuDou"][this.charaData["YsyatuDou"]["_menu"]]["mune"] - 1;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     if(dataNum == 0 || dataNum == 1 || dataNum == 4)
                     {
                        this.BreastNum = this.charaData["Breast"]["_menu"];
                        if(Huku_BreastOpen.muneOpen)
                        {
                           if(this.charaData["Breast"]["_menu"] == 14)
                           {
                              this.BreastNum = 12;
                           }
                           else if(this.charaData["Breast"]["_menu"] >= 11)
                           {
                              this.BreastNum = 11;
                           }
                        }
                        try
                        {
                           this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu.gotoAndStop(this.BreastNum + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        j = 0;
                        while(j <= 2)
                        {
                           try
                           {
                              k = 0;
                              while(k <= 1)
                              {
                                 this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu["m_color" + j + "_" + k].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                                 k++;
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              k = 0;
                              while(k <= 1)
                              {
                                 this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu["m_kage" + j + "_" + k].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                                 k++;
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu["m_right_color" + j + "_0"].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu["m_right_kage" + j + "_0"].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu["m_left_color" + j + "_0"].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu["m_left_kage" + j + "_0"].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           }
                           catch(myError:Error)
                           {
                           }
                           j++;
                        }
                        j = 0;
                        while(j <= 3)
                        {
                           try
                           {
                              this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu["right" + j].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu["left" + j].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           }
                           catch(myError:Error)
                           {
                           }
                           j++;
                        }
                        try
                        {
                           this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu.m_mask.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu.kage.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                     }
                     new SetClass(this.charaNum,"YsyatuBreastOption","tab");
                     new Chara_ColorClass(this.charaNum,"YsyatuMune");
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else if(tabName == "Tsyatu")
            {
               if(this.charaData["Tsyatu"]["_visible"][0])
               {
                  try
                  {
                     try
                     {
                        if(this.charaData["TsyatuDou"]["_menu"] == 1 && VestCheck || this.charaData["TsyatuDou"]["_menu"] == 1 && YsyatuCheck || this.charaData["TsyatuDou"]["_menu"] == 1 && this.charaData["TsyatuSkirt"]["_menu"] == 0)
                        {
                           dataNum = 2;
                        }
                        else
                        {
                           dataNum = Dress_data.ObjData["TsyatuDou"][this.charaData["TsyatuDou"]["_menu"]]["mune"] - 1;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     if(dataNum != 3)
                     {
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        j = 0;
                        for(; j <= 2; j++)
                        {
                           try
                           {
                              k = 0;
                              while(k <= 1)
                              {
                                 this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu["tsyatu_color" + j + "_" + k].visible = true;
                                 this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu["tsyatu_color" + j + "_" + k].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                                 k++;
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              k = 0;
                              while(k <= 1)
                              {
                                 this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu["vest_color" + j + "_" + k].visible = false;
                                 k++;
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              k = 0;
                              while(k <= 1)
                              {
                                 this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu["m_color" + j + "_" + k].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                                 k++;
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              k = 0;
                              while(k <= 1)
                              {
                                 this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu["m_kage" + j + "_" + k].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                                 k++;
                              }
                           }
                           catch(myError:Error)
                           {
                              continue;
                           }
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.kage.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.TsyatuSen.visible = true;
                           this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.TsyatuSen.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 0].ysyatu.TsyatuSenLeft.visible = true;
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 0].ysyatu.TsyatuSenLeft.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 1].ysyatu.TsyatuSenRight.visible = true;
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 1].ysyatu.TsyatuSenRight.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 0].ysyatu.TsyatuSenRight.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 1].ysyatu.TsyatuSenLeft.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.VestSen.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 0].ysyatu.VestSenRight.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 1].ysyatu.VestSenLeft.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.tsyatuRight_color1_0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.tsyatuLeft_color1_0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 0].ysyatu.vestRight_color1_0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 1].ysyatu.vestRight_color1_0.visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 0].ysyatu.vestLeft_color1_0.visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + 1].ysyatu.vestLeft_color1_0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune.ysyatu1.ysyatu.right_m.visible = true;
                           this.charaAdd.mune.TsyatuMune.ysyatu1.ysyatu.right_m.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           this.charaAdd.mune.TsyatuMune.ysyatu0.ysyatu.right_m.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune.ysyatu0.ysyatu.left_m.visible = true;
                           this.charaAdd.mune.TsyatuMune.ysyatu0.ysyatu.left_m.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           this.charaAdd.mune.TsyatuMune.ysyatu1.ysyatu.left_m.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.m_mask.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        j = 0;
                        while(j <= 3)
                        {
                           try
                           {
                              this.charaAdd.mune.TsyatuMune.ysyatu0.ysyatu["right" + j].visible = false;
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd.mune.TsyatuMune.ysyatu1.ysyatu["left" + j].visible = false;
                           }
                           catch(myError:Error)
                           {
                           }
                           k = 0;
                           while(k <= 1)
                           {
                              try
                              {
                                 this.charaAdd.mune.TsyatuMune["ysyatu" + j].ysyatu["vestColor" + k].visible = false;
                              }
                              catch(myError:Error)
                              {
                              }
                              k++;
                           }
                           j++;
                        }
                     }
                     new SetClass(this.charaNum,"TsyatuBreastOption","tab");
                     new Chara_ColorClass(this.charaNum,"TsyatuMune");
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else if(tabName == "Vest")
            {
               if(this.charaData["Vest"]["_visible"][0])
               {
                  try
                  {
                     try
                     {
                        if(this.charaData["VestDou"]["_menu"] == 1 && this.charaData["VestSkirt"]["_menu"] == 0)
                        {
                           dataNum = 2;
                        }
                        else
                        {
                           dataNum = Dress_data.ObjData["VestDou"][this.charaData["VestDou"]["_menu"]]["mune"] - 1;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                     if(dataNum != 3)
                     {
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        j = 0;
                        for(; j <= 2; j++)
                        {
                           try
                           {
                              k = 0;
                              while(k <= 1)
                              {
                                 this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu["vest_color" + j + "_" + k].visible = true;
                                 this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu["vest_color" + j + "_" + k].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                                 k++;
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              k = 0;
                              while(k <= 1)
                              {
                                 this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu["tsyatu_color" + j + "_" + k].visible = false;
                                 k++;
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              k = 0;
                              while(k <= 1)
                              {
                                 this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu["m_color" + j + "_" + k].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                                 k++;
                              }
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              k = 0;
                              while(k <= 1)
                              {
                                 this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu["m_kage" + j + "_" + k].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                                 k++;
                              }
                           }
                           catch(myError:Error)
                           {
                              continue;
                           }
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu.kage.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu.VestSen.visible = true;
                           this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu.VestSen.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + 0].ysyatu.VestSenLeft.visible = true;
                           this.charaAdd.mune.VestMune["ysyatu" + 0].ysyatu.VestSenLeft.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + 1].ysyatu.VestSenRight.visible = true;
                           this.charaAdd.mune.VestMune["ysyatu" + 1].ysyatu.VestSenRight.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + 0].ysyatu.VestSenRight.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + 1].ysyatu.VestSenLeft.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu.TsyatuSen.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + 0].ysyatu.TsyatuSenRight.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + 1].ysyatu.TsyatuSenLeft.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu.tsyatuRight_color1_0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu.tsyatuLeft_color1_0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + 0].ysyatu.vestRight_color1_0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + 1].ysyatu.vestRight_color1_0.visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + 0].ysyatu.vestLeft_color1_0.visible = true;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + 1].ysyatu.vestLeft_color1_0.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune.ysyatu1.ysyatu.right_m.visible = true;
                           this.charaAdd.mune.VestMune.ysyatu1.ysyatu.right_m.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           this.charaAdd.mune.VestMune.ysyatu0.ysyatu.right_m.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune.ysyatu0.ysyatu.left_m.visible = true;
                           this.charaAdd.mune.VestMune.ysyatu0.ysyatu.left_m.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                           this.charaAdd.mune.VestMune.ysyatu1.ysyatu.left_m.visible = false;
                        }
                        catch(myError:Error)
                        {
                        }
                        try
                        {
                           this.charaAdd.mune.VestMune["ysyatu" + i].ysyatu.m_mask.gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                        }
                        catch(myError:Error)
                        {
                        }
                        j = 0;
                        while(j <= 3)
                        {
                           try
                           {
                              this.charaAdd.mune.VestMune.ysyatu0.ysyatu["right" + j].visible = false;
                           }
                           catch(myError:Error)
                           {
                           }
                           try
                           {
                              this.charaAdd.mune.VestMune.ysyatu1.ysyatu["left" + j].visible = false;
                           }
                           catch(myError:Error)
                           {
                           }
                           j++;
                        }
                     }
                     new SetClass(this.charaNum,"VestBreastOption","tab");
                     new Chara_ColorClass(this.charaNum,"VestMune");
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            else if(tabName == "Bura")
            {
               if(this.charaData["Bura"]["_visible"][0])
               {
                  try
                  {
                     this.charaAdd.mune.Bura.Bura["Bura" + i].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if(this.charaAdd.mune.Bura.visible)
                     {
                        this.charaAdd.dou.Bura["Bura" + i].Bura.mask = this.charaAdd.mune.Bura.Bura["Bura" + i].buraDouMask;
                     }
                     else
                     {
                        this.charaAdd.dou.Bura["Bura" + i].Bura.mask = null;
                     }
                  }
                  catch(myError:Error)
                  {
                     try
                     {
                        charaAdd.mune.Bura.Bura["Bura" + i].buraDouMask.visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  try
                  {
                     if(this.charaData["Breast"]["_menu"] <= 1)
                     {
                        this.charaAdd.mune.Bura.Bura["Bura" + i].kage.visible = false;
                     }
                     else
                     {
                        this.charaAdd.mune.Bura.Bura["Bura" + i].kage.visible = true;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     if(this.charaData["Breast"]["_menu"] >= 7)
                     {
                        this.charaAdd.mune.Bura.Bura["Bura" + i].Side.visible = false;
                     }
                     else
                     {
                        this.charaAdd.mune.Bura.Bura["Bura" + i].Side.visible = true;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  new Huku_BuraUnder(this.charaNum);
                  new Chara_ColorClass(this.charaNum,"Bura");
               }
            }
            else if(tabName == "Nawa")
            {
               if(this.charaData["Nawa"]["_visible"][0])
               {
                  try
                  {
                     this.charaAdd.mune.Nawa.Nawa["Nawa" + i].gotoAndStop(this.charaData["Breast"]["_menu"] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  new Chara_ColorClass(this.charaNum,"Nawa");
               }
            }
            if(!this.charaData["Bura"]["_visible"][0])
            {
            }
            new Huku_BuraHimo(this.charaNum,"LeftArm");
            new Huku_BuraHimo(this.charaNum,"RightArm");
            new Huku_BreastOpen(this.charaNum);
            if(this.charaData["Seihuku"]["_visible"][0])
            {
               try
               {
                  this.seihukuMask = this.charaAdd.mune.SeihukuMune["ysyatu" + 0].currentLabel.substring(0,1);
               }
               catch(myError:Error)
               {
               }
            }
            if(this.charaData["Ysyatu"]["_visible"][0])
            {
               try
               {
                  this.ysyatuMask = this.charaAdd.mune.YsyatuMune["ysyatu" + 0].currentLabel.substring(0,1);
               }
               catch(myError:Error)
               {
               }
            }
            if(this.charaData["Tsyatu"]["_visible"][0])
            {
               try
               {
                  this.tsyatuMask = this.charaAdd.mune.TsyatuMune["ysyatu" + 0].currentLabel.substring(0,1);
               }
               catch(myError:Error)
               {
               }
            }
            if(this.charaData["Vest"]["_visible"][0])
            {
               try
               {
                  this.vestMask = this.charaAdd.mune.VestMune["ysyatu" + 0].currentLabel.substring(0,1);
               }
               catch(myError:Error)
               {
               }
            }
            if(!(this.seihukuMask == "0" || this.seihukuMask == "1" || this.seihukuMask == "2" || this.seihukuMask == "3"))
            {
               this.seihukuMask = "null";
            }
            if(!(this.ysyatuMask == "0" || this.ysyatuMask == "1" || this.ysyatuMask == "2" || this.ysyatuMask == "3"))
            {
               this.ysyatuMask = "null";
            }
            if(!(this.tsyatuMask == "0" || this.tsyatuMask == "1" || this.tsyatuMask == "2" || this.tsyatuMask == "3" || this.tsyatuMask == "4"))
            {
               this.tsyatuMask = "null";
            }
            if(!(this.vestMask == "0" || this.vestMask == "1" || this.vestMask == "2" || this.vestMask == "3" || this.vestMask == "4"))
            {
               this.vestMask = "null";
            }
            SeihukuKataCheck = false;
            VestKataCheck = false;
            YsyatuKataCheck = false;
            TsyatuKataCheck = false;
            if(i == 0)
            {
               if(this.charaData["Seihuku"]["_visible"][0] && (this.charaData["SeihukuLeftArm"]["_menu"] == 0 || this.charaData["SeihukuLeftArm"]["_menu"] == 1) || !this.charaData["Seihuku"]["_visible"][0])
               {
                  SeihukuKataCheck = true;
               }
               if(this.charaData["Vest"]["_visible"][0] && (this.charaData["VestLeftArm"]["_menu"] == 0 || this.charaData["VestLeftArm"]["_menu"] == 1) || !this.charaData["Vest"]["_visible"][0])
               {
                  VestKataCheck = true;
               }
               if(this.charaData["Ysyatu"]["_visible"][0] && (this.charaData["YsyatuLeftArm"]["_menu"] == 0 || this.charaData["YsyatuLeftArm"]["_menu"] == 1) || !this.charaData["Ysyatu"]["_visible"][0])
               {
                  YsyatuKataCheck = true;
               }
               if(this.charaData["Tsyatu"]["_visible"][0] && (this.charaData["TsyatuLeftArm"]["_menu"] == 0 || this.charaData["TsyatuLeftArm"]["_menu"] == 1) || !this.charaData["Tsyatu"]["_visible"][0])
               {
                  TsyatuKataCheck = true;
               }
            }
            else if(i == 1)
            {
               if(this.charaData["Seihuku"]["_visible"][0] && (this.charaData["SeihukuRightArm"]["_menu"] == 0 || this.charaData["SeihukuRightArm"]["_menu"] == 1) || !this.charaData["Seihuku"]["_visible"][0])
               {
                  SeihukuKataCheck = true;
               }
               if(this.charaData["Vest"]["_visible"][0] && (this.charaData["VestRightArm"]["_menu"] == 0 || this.charaData["VestRightArm"]["_menu"] == 1) || !this.charaData["Vest"]["_visible"][0])
               {
                  VestKataCheck = true;
               }
               if(this.charaData["Ysyatu"]["_visible"][0] && (this.charaData["YsyatuRightArm"]["_menu"] == 0 || this.charaData["YsyatuRightArm"]["_menu"] == 1) || !this.charaData["Ysyatu"]["_visible"][0])
               {
                  YsyatuKataCheck = true;
               }
               if(this.charaData["Tsyatu"]["_visible"][0] && (this.charaData["TsyatuRightArm"]["_menu"] == 0 || this.charaData["TsyatuRightArm"]["_menu"] == 1) || !this.charaData["Tsyatu"]["_visible"][0])
               {
                  TsyatuKataCheck = true;
               }
            }
            try
            {
               if(Huku_BreastOpen.buraOpen)
               {
                  try
                  {
                     this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(7);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.mune.Nawa.Nawa["Nawa" + i].buraMask.gotoAndStop(7);
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else if((this.seihukuMask == "null" || this.seihukuMask == null) && (this.ysyatuMask == "null" || this.ysyatuMask == null) && (this.tsyatuMask == "null" || this.tsyatuMask == null) && (this.vestMask == "null" || this.vestMask == null))
               {
                  try
                  {
                     this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(7);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.mune.Nawa.Nawa["Nawa" + i].buraMask.gotoAndStop(7);
                  }
                  catch(myError:Error)
                  {
                  }
               }
               else if(this.seihukuMask == "0" || this.ysyatuMask == "0" || this.tsyatuMask == "0" || this.vestMask == "0")
               {
                  try
                  {
                     this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(1);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.mune.Nawa.Nawa["Nawa" + i].buraMask.gotoAndStop(1);
                  }
                  catch(myError:Error)
                  {
                  }
                  if(SeihukuKataCheck && VestKataCheck && YsyatuKataCheck && TsyatuKataCheck)
                  {
                     try
                     {
                        this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(2);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               else if(this.ysyatuMask == "1" || this.tsyatuMask == "1" || this.vestMask == "1")
               {
                  try
                  {
                     this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(3);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.mune.Nawa.Nawa["Nawa" + i].buraMask.gotoAndStop(3);
                  }
                  catch(myError:Error)
                  {
                  }
                  if(SeihukuKataCheck && VestKataCheck && YsyatuKataCheck && TsyatuKataCheck)
                  {
                     try
                     {
                        this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(4);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  this.UeOpen(1,i);
               }
               else if(this.ysyatuMask == "2" || this.tsyatuMask == "2" || this.vestMask == "2")
               {
                  try
                  {
                     this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(8);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.mune.Nawa.Nawa["Nawa" + i].buraMask.gotoAndStop(8);
                  }
                  catch(myError:Error)
                  {
                  }
                  if(SeihukuKataCheck && VestKataCheck && YsyatuKataCheck && TsyatuKataCheck)
                  {
                     try
                     {
                        this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(9);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  this.UeOpen(2,i);
               }
               else if(this.seihukuMask == "1")
               {
                  try
                  {
                     this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(5);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.mune.Nawa.Nawa["Nawa" + i].buraMask.gotoAndStop(5);
                  }
                  catch(myError:Error)
                  {
                  }
                  if(SeihukuKataCheck && VestKataCheck && YsyatuKataCheck && TsyatuKataCheck)
                  {
                     try
                     {
                        this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(6);
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  this.UeOpen(3,i);
               }
               else if(this.tsyatuMask == "3" || this.vestMask == "3")
               {
                  try
                  {
                     this.charaAdd.mune.Bura.Bura["Bura" + i].buraMask.gotoAndStop(10);
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     this.charaAdd.mune.Nawa.Nawa["Nawa" + i].buraMask.gotoAndStop(10);
                  }
                  catch(myError:Error)
                  {
                  }
               }
            }
            catch(myError:Error)
            {
               continue;
            }
         }
      }
      
      private function UeOpen(param1:int, param2:int) : void
      {
         if(param1 == 1)
         {
            if(this.tsyatuMask == "3")
            {
               try
               {
                  this.charaAdd.mune.Bura.Bura["Bura" + param2].buraMask.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune.Nawa.Nawa["Nawa" + param2].buraMask.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
            }
         }
         else if(param1 == 2)
         {
            if(this.tsyatuMask == "3")
            {
               try
               {
                  this.charaAdd.mune.Bura.Bura["Bura" + param2].buraMask.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune.Nawa.Nawa["Nawa" + param2].buraMask.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
            }
         }
         else if(param1 == 3)
         {
            if(this.tsyatuMask == "3")
            {
               try
               {
                  this.charaAdd.mune.Bura.Bura["Bura" + param2].buraMask.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
               try
               {
                  this.charaAdd.mune.Nawa.Nawa["Nawa" + param2].buraMask.gotoAndStop(1);
               }
               catch(myError:Error)
               {
               }
            }
         }
      }
   }
}
