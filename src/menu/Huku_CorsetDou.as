package menu
{
   import parameter.Dress_data;
   
   public class Huku_CorsetDou
   {
      
      public static var sepaLineCheck:Boolean;
       
      
      public function Huku_CorsetDou(param1:int)
      {
         var i:int = 0;
         var tabStr:Array = null;
         var dataNum:int = 0;
         var SeihukuGimmickCheck:Boolean = false;
         var VestGimmickCheck:Boolean = false;
         var YsyatuGimmickCheck:Boolean = false;
         var TsyatuGimmickCheck:Boolean = false;
         var BuraGimmickCheck:Boolean = false;
         var separateCheck:int = 0;
         var buraMenuNum:int = 0;
         var charaNum:int = param1;
         super();
         var charaAdd:Object = MenuClass.charaAdd[charaNum];
         var charaData:Object = MenuClass.charaData[charaNum];
         var YsyatuCheck:Boolean = false;
         var TsyatuCheck:Boolean = false;
         var VestCheck:Boolean = false;
         var BuraCheck:Boolean = false;
         var SodeSeihukuCheck0:Boolean = false;
         var SodeSeihukuCheck1:Boolean = false;
         var SodeVestCheck0:Boolean = false;
         var SodeVestCheck1:Boolean = false;
         var SodeYsyatuCheck0:Boolean = false;
         var SodeYsyatuCheck1:Boolean = false;
         var NagaSodeSeihukuCheck0:Boolean = false;
         var NagaSodeSeihukuCheck1:Boolean = false;
         var NagaSodeVestCheck0:Boolean = false;
         var NagaSodeVestCheck1:Boolean = false;
         var NagaSodeYsyatuCheck0:Boolean = false;
         var NagaSodeYsyatuCheck1:Boolean = false;
         try
         {
            if(charaData["Seihuku"]["_visible"][0])
            {
               i = 0;
               for(; i <= 1; i++)
               {
                  try
                  {
                     if(charaData["SeihukuLeftArm"]["_menu"] == 0)
                     {
                        charaAdd.mune.SeihukuMune.ysyatu0.gotoAndStop(3 + charaData["Seihuku"]["_g0"]);
                        charaAdd.mune.SodeSeihukuMune1_0.gotoAndStop(1);
                        charaAdd.mune.SodeSeihukuMune0_0.gotoAndStop(1);
                     }
                     else if(charaData["SeihukuLeftArm"]["_menu"] == 1)
                     {
                        charaAdd.mune.SeihukuMune.ysyatu0.gotoAndStop(5 + charaData["Seihuku"]["_g0"]);
                        charaAdd.mune.SodeSeihukuMune1_0.gotoAndStop(1);
                        charaAdd.mune.SodeSeihukuMune0_0.gotoAndStop(1);
                     }
                     else if(Dress_data.ArmData[charaData["SeihukuLeftArm"]["_menu"]]["sode"] != 0)
                     {
                        charaAdd.mune.SeihukuMune.ysyatu0.gotoAndStop(Dress_data.SeihukuData[charaData["Seihuku"]["_menu"]]["data"][Dress_data.SeihukuData[charaData["Seihuku"]["_menu"]]["sode"]][charaData["Seihuku"]["_g0"]]);
                        charaAdd.mune.SodeSeihukuMune1_0.gotoAndStop(Dress_data.ArmData[charaData["SeihukuLeftArm"]["_menu"]]["sode"] + 1);
                        charaAdd.mune.SodeSeihukuMune0_0.gotoAndStop(Dress_data.ArmData[charaData["SeihukuLeftArm"]["_menu"]]["sode"] + 1);
                        SodeSeihukuCheck0 = true;
                     }
                     else
                     {
                        charaAdd.mune.SeihukuMune.ysyatu0.gotoAndStop(1 + charaData["Seihuku"]["_g0"]);
                        charaAdd.mune.SodeSeihukuMune1_0.gotoAndStop(1);
                        charaAdd.mune.SodeSeihukuMune0_0.gotoAndStop(1);
                        NagaSodeSeihukuCheck0 = true;
                     }
                     if(charaData["SeihukuRightArm"]["_menu"] == 0)
                     {
                        charaAdd.mune.SeihukuMune.ysyatu1.gotoAndStop(3 + charaData["Seihuku"]["_g0"]);
                        charaAdd.mune.SodeSeihukuMune1_1.gotoAndStop(1);
                        charaAdd.mune.SodeSeihukuMune0_1.gotoAndStop(1);
                     }
                     else if(charaData["SeihukuRightArm"]["_menu"] == 1)
                     {
                        charaAdd.mune.SeihukuMune.ysyatu1.gotoAndStop(5 + charaData["Seihuku"]["_g0"]);
                        charaAdd.mune.SodeSeihukuMune1_1.gotoAndStop(1);
                        charaAdd.mune.SodeSeihukuMune0_1.gotoAndStop(1);
                     }
                     else if(Dress_data.ArmData[charaData["SeihukuRightArm"]["_menu"]]["sode"] != 0)
                     {
                        charaAdd.mune.SeihukuMune.ysyatu1.gotoAndStop(Dress_data.SeihukuData[charaData["Seihuku"]["_menu"]]["data"][Dress_data.SeihukuData[charaData["Seihuku"]["_menu"]]["sode"]][charaData["Seihuku"]["_g0"]]);
                        charaAdd.mune.SodeSeihukuMune1_1.gotoAndStop(Dress_data.ArmData[charaData["SeihukuRightArm"]["_menu"]]["sode"] + 1);
                        charaAdd.mune.SodeSeihukuMune0_1.gotoAndStop(Dress_data.ArmData[charaData["SeihukuRightArm"]["_menu"]]["sode"] + 1);
                        SodeSeihukuCheck1 = true;
                     }
                     else
                     {
                        charaAdd.mune.SeihukuMune.ysyatu1.gotoAndStop(1 + charaData["Seihuku"]["_g0"]);
                        charaAdd.mune.SodeSeihukuMune1_1.gotoAndStop(1);
                        charaAdd.mune.SodeSeihukuMune0_1.gotoAndStop(1);
                        NagaSodeSeihukuCheck1 = true;
                     }
                  }
                  catch(myError:Error)
                  {
                     continue;
                  }
               }
               try
               {
                  charaAdd.dou.SeihukuDou.seihuku.gotoAndStop(charaData["Seihuku"]["_g0"] + 1);
               }
               catch(myError:Error)
               {
               }
               tabStr = new Array(Math.round(49 * charaData["LeftArm"]["_meter"] / 100),Math.round(49 * charaData["RightArm"]["_meter"] / 100));
               i = 0;
               while(i <= 1)
               {
                  charaAdd["handm0_" + i].kataSeihukuMask.gotoAndStop(tabStr[i] + 1);
                  try
                  {
                     charaAdd.mune.SeihukuMune["ysyatu" + i].ysyatu.kataColor0_0.mask = charaAdd["handm0_" + i].kataSeihukuMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.SeihukuMune["ysyatu" + i].ysyatu.kata.mask = charaAdd["handm0_" + i].kataSeihukuMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.SeihukuMune["ysyatu" + i].ysyatu.himo.mask = charaAdd["handm0_" + i].kataSeihukuMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.SeihukuMune["ysyatu" + i].ysyatu.kataMask.gotoAndStop(tabStr[i] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  i++;
               }
               new Huku_Breast("Seihuku",charaNum);
               new Huku_Sode(charaNum);
            }
            if(charaData["Vest"]["_visible"][0])
            {
               if(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"].length != 5)
               {
                  if(charaData["VestDou"]["_menu"] != 1 && charaData["VestSkirt"]["_menu"] != 0)
                  {
                     VestCheck = true;
                  }
               }
               else if(charaData["VestDou"]["_menu"] == 0 && charaData["VestSkirt"]["_menu"] != 0)
               {
                  VestCheck = true;
               }
               try
               {
                  if(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"].length == 5)
                  {
                     if(charaData["VestDou"]["_menu"] == 1 && charaData["VestSkirt"]["_menu"] == 0)
                     {
                        dataNum = 2;
                     }
                     else if(charaData["VestDou"]["_menu"] == 2 && charaData["VestSkirt"]["_menu"] == 0)
                     {
                        dataNum = 4;
                     }
                     else
                     {
                        dataNum = Dress_data.ObjData["VestDou"][charaData["VestDou"]["_menu"]]["mune"] - 1;
                     }
                  }
                  else if(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"].length == 4)
                  {
                     if(charaData["VestDou"]["_menu"] == 1 && charaData["VestSkirt"]["_menu"] == 0)
                     {
                        dataNum = 2;
                     }
                     else
                     {
                        dataNum = Dress_data.ObjData["VestDou"][charaData["VestDou"]["_menu"]]["mune"] - 1;
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(VestCheck)
                  {
                     charaAdd.dou.VestDou.ysyatu.mask = charaAdd.mune["mune" + 0].vestMaskMc;
                  }
                  else
                  {
                     charaAdd.dou.VestDou.ysyatu.mask = null;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(charaData["VestLeftArm"]["_menu"] == 0)
                  {
                     if(SodeSeihukuCheck0)
                     {
                        charaAdd.mune.VestMune.ysyatu0.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][Dress_data.VestData[charaData["Vest"]["_menu"]]["sode"]][charaData["Vest"]["_g1"]]);
                     }
                     else
                     {
                        charaAdd.mune.VestMune.ysyatu0.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][1][charaData["Vest"]["_g1"]]);
                     }
                     charaAdd.mune.SodeVestMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeVestMune0_0.gotoAndStop(1);
                  }
                  else if(charaData["VestLeftArm"]["_menu"] == 1)
                  {
                     charaAdd.mune.VestMune.ysyatu0.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][2][charaData["Vest"]["_g1"]]);
                     charaAdd.mune.SodeVestMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeVestMune0_0.gotoAndStop(1);
                  }
                  else if(Dress_data.ArmData[charaData["VestLeftArm"]["_menu"]]["sode"] != 0)
                  {
                     charaAdd.mune.VestMune.ysyatu0.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][Dress_data.VestData[charaData["Vest"]["_menu"]]["sode"]][charaData["Vest"]["_g1"]]);
                     if(NagaSodeSeihukuCheck0)
                     {
                        charaAdd.mune.SodeVestMune1_0.gotoAndStop(1);
                        charaAdd.mune.SodeVestMune0_0.gotoAndStop(1);
                     }
                     else
                     {
                        charaAdd.mune.SodeVestMune1_0.gotoAndStop(Dress_data.ArmData[charaData["VestLeftArm"]["_menu"]]["sode"] + 1);
                        charaAdd.mune.SodeVestMune0_0.gotoAndStop(Dress_data.ArmData[charaData["VestLeftArm"]["_menu"]]["sode"] + 1);
                     }
                     SodeVestCheck0 = true;
                  }
                  else if(SodeSeihukuCheck0)
                  {
                     charaAdd.mune.VestMune.ysyatu0.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][Dress_data.VestData[charaData["Vest"]["_menu"]]["sode"]][charaData["Vest"]["_g1"]]);
                     charaAdd.mune.SodeVestMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeVestMune0_0.gotoAndStop(1);
                  }
                  else
                  {
                     charaAdd.mune.VestMune.ysyatu0.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][0][charaData["Vest"]["_g1"]]);
                     charaAdd.mune.SodeVestMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeVestMune0_0.gotoAndStop(1);
                     NagaSodeVestCheck0 = true;
                  }
                  if(charaData["VestRightArm"]["_menu"] == 0)
                  {
                     if(SodeSeihukuCheck1)
                     {
                        charaAdd.mune.VestMune.ysyatu1.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][Dress_data.VestData[charaData["Vest"]["_menu"]]["sode"]][charaData["Vest"]["_g1"]]);
                     }
                     else
                     {
                        charaAdd.mune.VestMune.ysyatu1.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][1][charaData["Vest"]["_g1"]]);
                     }
                     charaAdd.mune.SodeVestMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeVestMune0_1.gotoAndStop(1);
                  }
                  else if(charaData["VestRightArm"]["_menu"] == 1)
                  {
                     charaAdd.mune.VestMune.ysyatu1.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][2][charaData["Vest"]["_g1"]]);
                     charaAdd.mune.SodeVestMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeVestMune0_1.gotoAndStop(1);
                  }
                  else if(Dress_data.ArmData[charaData["VestRightArm"]["_menu"]]["sode"] != 0)
                  {
                     charaAdd.mune.VestMune.ysyatu1.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][Dress_data.VestData[charaData["Vest"]["_menu"]]["sode"]][charaData["Vest"]["_g1"]]);
                     if(NagaSodeSeihukuCheck1)
                     {
                        charaAdd.mune.SodeVestMune1_1.gotoAndStop(1);
                        charaAdd.mune.SodeVestMune0_1.gotoAndStop(1);
                     }
                     else
                     {
                        charaAdd.mune.SodeVestMune1_1.gotoAndStop(Dress_data.ArmData[charaData["VestRightArm"]["_menu"]]["sode"] + 1);
                        charaAdd.mune.SodeVestMune0_1.gotoAndStop(Dress_data.ArmData[charaData["VestRightArm"]["_menu"]]["sode"] + 1);
                     }
                     SodeVestCheck1 = true;
                  }
                  else if(SodeSeihukuCheck1)
                  {
                     charaAdd.mune.VestMune.ysyatu1.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][Dress_data.VestData[charaData["Vest"]["_menu"]]["sode"]][charaData["Vest"]["_g1"]]);
                     charaAdd.mune.SodeVestMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeVestMune0_1.gotoAndStop(1);
                  }
                  else
                  {
                     charaAdd.mune.VestMune.ysyatu1.gotoAndStop(Dress_data.VestData[charaData["Vest"]["_menu"]]["data"][dataNum][0][charaData["Vest"]["_g1"]]);
                     charaAdd.mune.SodeVestMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeVestMune0_1.gotoAndStop(1);
                     NagaSodeVestCheck1 = true;
                  }
               }
               catch(myError:Error)
               {
               }
               tabStr = new Array(Math.round(49 * charaData["LeftArm"]["_meter"] / 100),Math.round(49 * charaData["RightArm"]["_meter"] / 100));
               i = 0;
               while(i <= 1)
               {
                  charaAdd["handm0_" + i].kataVestMask.gotoAndStop(tabStr[i] + 1);
                  try
                  {
                     charaAdd.mune.VestMune["ysyatu" + i].ysyatu.kataColor0_0.mask = charaAdd["handm0_" + i].kataVestMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.VestMune["ysyatu" + i].ysyatu.kata.mask = charaAdd["handm0_" + i].kataVestMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.VestMune["ysyatu" + i].ysyatu.himo.mask = charaAdd["handm0_" + i].kataVestMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.VestMune["ysyatu" + i].ysyatu.kataMask.gotoAndStop(tabStr[i] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  i++;
               }
               new Huku_Breast("Vest",charaNum);
               new Huku_Sode(charaNum);
            }
            if(charaData["Ysyatu"]["_visible"][0])
            {
               if(charaData["YsyatuDou"]["_menu"] != 1 && charaData["YsyatuSkirt"]["_menu"] != 0)
               {
                  YsyatuCheck = true;
               }
               try
               {
                  if(charaData["YsyatuDou"]["_menu"] == 1 && VestCheck || charaData["YsyatuDou"]["_menu"] == 1 && charaData["YsyatuSkirt"]["_menu"] == 0)
                  {
                     dataNum = 4;
                  }
                  else
                  {
                     dataNum = Dress_data.ObjData["YsyatuDou"][charaData["YsyatuDou"]["_menu"]]["mune"] - 1;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(YsyatuCheck)
                  {
                     charaAdd.dou.YsyatuDou.ysyatu.mask = charaAdd.mune["mune" + 0].ysyatuMaskMc;
                  }
                  else
                  {
                     charaAdd.dou.YsyatuDou.ysyatu.mask = null;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(charaData["YsyatuLeftArm"]["_menu"] == 0)
                  {
                     charaAdd.mune.YsyatuMune.ysyatu0.gotoAndStop(Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["data"][dataNum][1][charaData["Ysyatu"]["_g1"]]);
                     charaAdd.mune.SodeYsyatuMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeYsyatuMune0_0.gotoAndStop(1);
                  }
                  else if(charaData["YsyatuLeftArm"]["_menu"] == 1)
                  {
                     charaAdd.mune.YsyatuMune.ysyatu0.gotoAndStop(Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["data"][dataNum][2][charaData["Ysyatu"]["_g1"]]);
                     charaAdd.mune.SodeYsyatuMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeYsyatuMune0_0.gotoAndStop(1);
                  }
                  else if(Dress_data.ArmData[charaData["YsyatuLeftArm"]["_menu"]]["sode"] != 0)
                  {
                     charaAdd.mune.YsyatuMune.ysyatu0.gotoAndStop(Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["data"][dataNum][Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["sode"]][charaData["Ysyatu"]["_g1"]]);
                     if(NagaSodeSeihukuCheck0 || NagaSodeVestCheck0)
                     {
                        charaAdd.mune.SodeYsyatuMune1_0.gotoAndStop(1);
                        charaAdd.mune.SodeYsyatuMune0_0.gotoAndStop(1);
                     }
                     else
                     {
                        charaAdd.mune.SodeYsyatuMune1_0.gotoAndStop(Dress_data.ArmData[charaData["YsyatuLeftArm"]["_menu"]]["sode"] + 1);
                        charaAdd.mune.SodeYsyatuMune0_0.gotoAndStop(Dress_data.ArmData[charaData["YsyatuLeftArm"]["_menu"]]["sode"] + 1);
                     }
                     SodeYsyatuCheck0 = true;
                  }
                  else if(SodeSeihukuCheck0 || SodeVestCheck0)
                  {
                     charaAdd.mune.YsyatuMune.ysyatu0.gotoAndStop(Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["data"][dataNum][Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["sode"]][charaData["Ysyatu"]["_g1"]]);
                     charaAdd.mune.SodeYsyatuMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeYsyatuMune0_0.gotoAndStop(1);
                  }
                  else
                  {
                     charaAdd.mune.YsyatuMune.ysyatu0.gotoAndStop(Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["data"][dataNum][0][charaData["Ysyatu"]["_g1"]]);
                     charaAdd.mune.SodeYsyatuMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeYsyatuMune0_0.gotoAndStop(1);
                     NagaSodeYsyatuCheck0 = true;
                  }
                  if(charaData["YsyatuRightArm"]["_menu"] == 0)
                  {
                     charaAdd.mune.YsyatuMune.ysyatu1.gotoAndStop(Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["data"][dataNum][1][charaData["Ysyatu"]["_g1"]]);
                     charaAdd.mune.SodeYsyatuMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeYsyatuMune0_1.gotoAndStop(1);
                  }
                  else if(charaData["YsyatuRightArm"]["_menu"] == 1)
                  {
                     charaAdd.mune.YsyatuMune.ysyatu1.gotoAndStop(Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["data"][dataNum][2][charaData["Ysyatu"]["_g1"]]);
                     charaAdd.mune.SodeYsyatuMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeYsyatuMune0_1.gotoAndStop(1);
                  }
                  else if(Dress_data.ArmData[charaData["YsyatuRightArm"]["_menu"]]["sode"] != 0)
                  {
                     charaAdd.mune.YsyatuMune.ysyatu1.gotoAndStop(Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["data"][[dataNum]][Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["sode"]][charaData["Ysyatu"]["_g1"]]);
                     if(NagaSodeSeihukuCheck1 || NagaSodeVestCheck1)
                     {
                        charaAdd.mune.SodeYsyatuMune1_1.gotoAndStop(1);
                        charaAdd.mune.SodeYsyatuMune0_1.gotoAndStop(1);
                     }
                     else
                     {
                        charaAdd.mune.SodeYsyatuMune1_1.gotoAndStop(Dress_data.ArmData[charaData["YsyatuRightArm"]["_menu"]]["sode"] + 1);
                        charaAdd.mune.SodeYsyatuMune0_1.gotoAndStop(Dress_data.ArmData[charaData["YsyatuRightArm"]["_menu"]]["sode"] + 1);
                     }
                     SodeYsyatuCheck1 = true;
                  }
                  else if(SodeSeihukuCheck1 || SodeVestCheck1)
                  {
                     charaAdd.mune.YsyatuMune.ysyatu1.gotoAndStop(Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["data"][[dataNum]][Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["sode"]][charaData["Ysyatu"]["_g1"]]);
                     charaAdd.mune.SodeYsyatuMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeYsyatuMune0_1.gotoAndStop(1);
                  }
                  else
                  {
                     charaAdd.mune.YsyatuMune.ysyatu1.gotoAndStop(Dress_data.YsyatuData[charaData["Ysyatu"]["_menu"]]["data"][dataNum][0][charaData["Ysyatu"]["_g1"]]);
                     charaAdd.mune.SodeYsyatuMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeYsyatuMune0_1.gotoAndStop(1);
                     NagaSodeYsyatuCheck1 = true;
                  }
               }
               catch(myError:Error)
               {
               }
               tabStr = new Array(Math.round(49 * charaData["LeftArm"]["_meter"] / 100),Math.round(49 * charaData["RightArm"]["_meter"] / 100));
               i = 0;
               while(i <= 1)
               {
                  charaAdd["handm0_" + i].kataYsyatuMask.gotoAndStop(tabStr[i] + 1);
                  try
                  {
                     charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu.kataColor0_0.mask = charaAdd["handm0_" + i].kataYsyatuMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu.kata.mask = charaAdd["handm0_" + i].kataYsyatuMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.YsyatuMune["ysyatu" + i].ysyatu.kataMask.gotoAndStop(tabStr[i] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  i++;
               }
               i = 0;
               while(i <= 3)
               {
                  try
                  {
                     charaAdd.mune.YsyatuMune.ysyatu0.ysyatu["right" + i].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.YsyatuMune.ysyatu1.ysyatu["left" + i].visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  i++;
               }
               new Huku_Breast("Ysyatu",charaNum);
               new Huku_Sode(charaNum);
            }
            if(charaData["Tsyatu"]["_visible"][0])
            {
               if(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"].length != 5)
               {
                  if(charaData["TsyatuDou"]["_menu"] != 1 && charaData["TsyatuSkirt"]["_menu"] != 0)
                  {
                     TsyatuCheck = true;
                  }
               }
               else if(charaData["TsyatuDou"]["_menu"] == 0 && charaData["TsyatuSkirt"]["_menu"] != 0)
               {
                  TsyatuCheck = true;
               }
               try
               {
                  if(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"].length == 5)
                  {
                     if(charaData["TsyatuDou"]["_menu"] == 1 && charaData["TsyatuSkirt"]["_menu"] == 0)
                     {
                        dataNum = 2;
                     }
                     else if(charaData["TsyatuDou"]["_menu"] == 2 && charaData["TsyatuSkirt"]["_menu"] == 0)
                     {
                        dataNum = 4;
                     }
                     else
                     {
                        dataNum = Dress_data.ObjData["TsyatuDou"][charaData["TsyatuDou"]["_menu"]]["mune"] - 1;
                     }
                  }
                  else if(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"].length == 4)
                  {
                     try
                     {
                        if(charaData["TsyatuDou"]["_menu"] == 1 && TsyatuCheck || charaData["TsyatuDou"]["_menu"] == 1 && YsyatuCheck || charaData["TsyatuDou"]["_menu"] == 1 && charaData["TsyatuSkirt"]["_menu"] == 0)
                        {
                           dataNum = 2;
                        }
                        else
                        {
                           dataNum = Dress_data.ObjData["TsyatuDou"][charaData["TsyatuDou"]["_menu"]]["mune"] - 1;
                        }
                     }
                     catch(myError:Error)
                     {
                     }
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(TsyatuCheck)
                  {
                     charaAdd.dou.TsyatuDou.ysyatu.mask = charaAdd.mune["mune" + 0].tsyatuMaskMc;
                  }
                  else
                  {
                     charaAdd.dou.TsyatuDou.ysyatu.mask = null;
                  }
               }
               catch(myError:Error)
               {
               }
               try
               {
                  if(charaData["TsyatuLeftArm"]["_menu"] == 0)
                  {
                     if(SodeSeihukuCheck0)
                     {
                        charaAdd.mune.TsyatuMune.ysyatu0.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][[dataNum]][Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["sode"]][charaData["Tsyatu"]["_g1"]]);
                     }
                     else
                     {
                        charaAdd.mune.TsyatuMune.ysyatu0.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][dataNum][1][charaData["Tsyatu"]["_g1"]]);
                     }
                     charaAdd.mune.SodeTsyatuMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeTsyatuMune0_0.gotoAndStop(1);
                  }
                  else if(charaData["TsyatuLeftArm"]["_menu"] == 1)
                  {
                     charaAdd.mune.TsyatuMune.ysyatu0.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][dataNum][2][charaData["Tsyatu"]["_g1"]]);
                     charaAdd.mune.SodeTsyatuMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeTsyatuMune0_0.gotoAndStop(1);
                  }
                  else if(Dress_data.ArmData[charaData["TsyatuLeftArm"]["_menu"]]["sode"] != 0)
                  {
                     charaAdd.mune.TsyatuMune.ysyatu0.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][[dataNum]][Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["sode"]][charaData["Tsyatu"]["_g1"]]);
                     if(NagaSodeSeihukuCheck0 || NagaSodeVestCheck0 || NagaSodeYsyatuCheck0)
                     {
                        charaAdd.mune.SodeTsyatuMune1_0.gotoAndStop(1);
                        charaAdd.mune.SodeTsyatuMune0_0.gotoAndStop(1);
                     }
                     else
                     {
                        charaAdd.mune.SodeTsyatuMune1_0.gotoAndStop(Dress_data.ArmData[charaData["TsyatuLeftArm"]["_menu"]]["sode"] + 1);
                        charaAdd.mune.SodeTsyatuMune0_0.gotoAndStop(Dress_data.ArmData[charaData["TsyatuLeftArm"]["_menu"]]["sode"] + 1);
                     }
                  }
                  else if(SodeSeihukuCheck1 || SodeVestCheck1 || SodeYsyatuCheck1)
                  {
                     charaAdd.mune.TsyatuMune.ysyatu0.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][[dataNum]][Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["sode"]][charaData["Tsyatu"]["_g1"]]);
                     charaAdd.mune.SodeTsyatuMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeTsyatuMune0_0.gotoAndStop(1);
                  }
                  else
                  {
                     charaAdd.mune.TsyatuMune.ysyatu0.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][dataNum][0][charaData["Tsyatu"]["_g1"]]);
                     charaAdd.mune.SodeTsyatuMune1_0.gotoAndStop(1);
                     charaAdd.mune.SodeTsyatuMune0_0.gotoAndStop(1);
                  }
                  if(charaData["TsyatuRightArm"]["_menu"] == 0)
                  {
                     if(SodeSeihukuCheck0)
                     {
                        charaAdd.mune.TsyatuMune.ysyatu1.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][[dataNum]][Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["sode"]][charaData["Tsyatu"]["_g1"]]);
                     }
                     else
                     {
                        charaAdd.mune.TsyatuMune.ysyatu1.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][dataNum][1][charaData["Tsyatu"]["_g1"]]);
                     }
                     charaAdd.mune.SodeTsyatuMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeTsyatuMune0_1.gotoAndStop(1);
                  }
                  else if(charaData["TsyatuRightArm"]["_menu"] == 1)
                  {
                     charaAdd.mune.TsyatuMune.ysyatu1.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][dataNum][2][charaData["Tsyatu"]["_g1"]]);
                     charaAdd.mune.SodeTsyatuMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeTsyatuMune0_1.gotoAndStop(1);
                  }
                  else if(Dress_data.ArmData[charaData["TsyatuRightArm"]["_menu"]]["sode"] != 0)
                  {
                     charaAdd.mune.TsyatuMune.ysyatu1.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][[dataNum]][Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["sode"]][charaData["Tsyatu"]["_g1"]]);
                     if(NagaSodeSeihukuCheck1 || NagaSodeVestCheck1 || NagaSodeYsyatuCheck1)
                     {
                        charaAdd.mune.SodeTsyatuMune1_1.gotoAndStop(1);
                        charaAdd.mune.SodeTsyatuMune0_1.gotoAndStop(1);
                     }
                     else
                     {
                        charaAdd.mune.SodeTsyatuMune1_1.gotoAndStop(Dress_data.ArmData[charaData["TsyatuRightArm"]["_menu"]]["sode"] + 1);
                        charaAdd.mune.SodeTsyatuMune0_1.gotoAndStop(Dress_data.ArmData[charaData["TsyatuRightArm"]["_menu"]]["sode"] + 1);
                     }
                  }
                  else if(SodeSeihukuCheck1 || SodeVestCheck1 || SodeYsyatuCheck1)
                  {
                     charaAdd.mune.TsyatuMune.ysyatu1.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][[dataNum]][Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["sode"]][charaData["Tsyatu"]["_g1"]]);
                     charaAdd.mune.SodeTsyatuMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeTsyatuMune0_1.gotoAndStop(1);
                  }
                  else
                  {
                     charaAdd.mune.TsyatuMune.ysyatu1.gotoAndStop(Dress_data.TsyatuData[charaData["Tsyatu"]["_menu"]]["data"][dataNum][0][charaData["Tsyatu"]["_g1"]]);
                     charaAdd.mune.SodeTsyatuMune1_1.gotoAndStop(1);
                     charaAdd.mune.SodeTsyatuMune0_1.gotoAndStop(1);
                  }
               }
               catch(myError:Error)
               {
               }
               tabStr = new Array(Math.round(49 * charaData["LeftArm"]["_meter"] / 100),Math.round(49 * charaData["RightArm"]["_meter"] / 100));
               i = 0;
               while(i <= 1)
               {
                  charaAdd["handm0_" + i].kataTsyatuMask.gotoAndStop(tabStr[i] + 1);
                  try
                  {
                     charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.kataColor0_0.mask = charaAdd["handm0_" + i].kataTsyatuMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.kata.mask = charaAdd["handm0_" + i].kataTsyatuMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.himo.mask = charaAdd["handm0_" + i].kataTsyatuMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.TsyatuMune["ysyatu" + i].ysyatu.kataMask.gotoAndStop(tabStr[i] + 1);
                  }
                  catch(myError:Error)
                  {
                  }
                  i++;
               }
               new Huku_Breast("Tsyatu",charaNum);
               new Huku_Sode(charaNum);
            }
            try
            {
               if(SodeSeihukuCheck0 || SodeVestCheck0 || SodeYsyatuCheck0)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeTsyatuMuneSwap0) < charaAdd.mune.getChildIndex(charaAdd.mune.SodeTsyatuMune1_0))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeTsyatuMuneSwap0,charaAdd.mune.SodeTsyatuMune1_0);
                  }
               }
               if(SodeSeihukuCheck0 || SodeVestCheck0)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeYsyatuMuneSwap0) < charaAdd.mune.getChildIndex(charaAdd.mune.SodeYsyatuMune1_0))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeYsyatuMuneSwap0,charaAdd.mune.SodeYsyatuMune1_0);
                  }
               }
               if(SodeSeihukuCheck0)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeVestMuneSwap0) < charaAdd.mune.getChildIndex(charaAdd.mune.SodeVestMune1_0))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeVestMuneSwap0,charaAdd.mune.SodeVestMune1_0);
                  }
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(!SodeSeihukuCheck0 && !SodeVestCheck0 && !SodeYsyatuCheck0)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeTsyatuMuneSwap0) > charaAdd.mune.getChildIndex(charaAdd.mune.SodeTsyatuMune1_0))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeTsyatuMuneSwap0,charaAdd.mune.SodeTsyatuMune1_0);
                  }
               }
               if(!SodeSeihukuCheck0 && !SodeVestCheck0)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeYsyatuMuneSwap0) > charaAdd.mune.getChildIndex(charaAdd.mune.SodeYsyatuMune1_0))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeYsyatuMuneSwap0,charaAdd.mune.SodeYsyatuMune1_0);
                  }
               }
               if(!SodeSeihukuCheck0)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeVestMuneSwap0) > charaAdd.mune.getChildIndex(charaAdd.mune.SodeVestMune1_0))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeVestMuneSwap0,charaAdd.mune.SodeVestMune1_0);
                  }
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(SodeSeihukuCheck1 || SodeVestCheck1 || SodeYsyatuCheck1)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeTsyatuMuneSwap1) < charaAdd.mune.getChildIndex(charaAdd.mune.SodeTsyatuMune1_1))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeTsyatuMuneSwap1,charaAdd.mune.SodeTsyatuMune1_1);
                  }
               }
               if(SodeSeihukuCheck1 || SodeVestCheck1)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeYsyatuMuneSwap1) < charaAdd.mune.getChildIndex(charaAdd.mune.SodeYsyatuMune1_1))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeYsyatuMuneSwap1,charaAdd.mune.SodeYsyatuMune1_1);
                  }
               }
               if(SodeSeihukuCheck1)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeVestMuneSwap1) < charaAdd.mune.getChildIndex(charaAdd.mune.SodeVestMune1_1))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeVestMuneSwap1,charaAdd.mune.SodeVestMune1_1);
                  }
               }
            }
            catch(myError:Error)
            {
            }
            try
            {
               if(!SodeSeihukuCheck1 && !SodeVestCheck1 && !SodeYsyatuCheck1)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeTsyatuMuneSwap1) > charaAdd.mune.getChildIndex(charaAdd.mune.SodeTsyatuMune1_1))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeTsyatuMuneSwap1,charaAdd.mune.SodeTsyatuMune1_1);
                  }
               }
               if(!SodeSeihukuCheck1 && !SodeVestCheck1)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeYsyatuMuneSwap1) > charaAdd.mune.getChildIndex(charaAdd.mune.SodeYsyatuMune1_1))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeYsyatuMuneSwap1,charaAdd.mune.SodeYsyatuMune1_1);
                  }
               }
               if(!SodeSeihukuCheck1)
               {
                  if(charaAdd.mune.getChildIndex(charaAdd.mune.SodeVestMuneSwap1) > charaAdd.mune.getChildIndex(charaAdd.mune.SodeVestMune1_1))
                  {
                     charaAdd.mune.swapChildren(charaAdd.mune.SodeVestMuneSwap1,charaAdd.mune.SodeVestMune1_1);
                  }
               }
            }
            catch(myError:Error)
            {
            }
            if(charaData["Bura"]["_visible"][0] && Dress_data.BuraData[charaData["Bura"]["_menu"]]["separate"] > 0 && charaData["Bura"]["_separate"] == 2)
            {
               if(Dress_data.BuraData[charaData["Bura"]["_menu"]]["mune"] != Dress_data.BuraData[charaData["Bura"]["_menu"]]["separate"])
               {
                  BuraCheck = true;
               }
            }
            if(charaData["Bura"]["_visible"][0])
            {
               separateCheck = 0;
               buraMenuNum = charaData["Bura"]["_menu"];
               if(Dress_data.BuraData[buraMenuNum]["separate"] > 0)
               {
                  separateCheck = charaData["Bura"]["_separate"];
               }
               if(separateCheck == 0)
               {
                  if((VestCheck || YsyatuCheck || TsyatuCheck) && Dress_data.BuraData[buraMenuNum]["separate"] > 0)
                  {
                     charaAdd.mune.Bura.Bura.gotoAndStop(Dress_data.BuraData[buraMenuNum]["separate"] + 1);
                  }
                  else
                  {
                     charaAdd.mune.Bura.Bura.gotoAndStop(Dress_data.BuraData[buraMenuNum]["mune"] + 1);
                  }
               }
               else if(separateCheck == 1)
               {
                  charaAdd.mune.Bura.Bura.gotoAndStop(Dress_data.BuraData[buraMenuNum]["separate"] + 1);
               }
               else if(separateCheck == 2)
               {
                  charaAdd.mune.Bura.visible = false;
                  charaAdd.mune.Bura.Bura.gotoAndStop(1);
               }
               i = 0;
               while(i <= 1)
               {
                  try
                  {
                     if(YsyatuCheck || TsyatuCheck || VestCheck || BuraCheck)
                     {
                        charaAdd.dou.Bura["Bura" + i].mask = charaAdd.mune["mune" + i].buraMaskMc;
                        charaAdd.dou.dou_shitaHuku.Bura_hukin.mask = charaAdd.mune["mune" + i].burahukinMaskMc;
                     }
                     else
                     {
                        charaAdd.dou.Bura["Bura" + i].mask = null;
                        charaAdd.dou.dou_shitaHuku.Bura_hukin.mask = null;
                     }
                  }
                  catch(myError:Error)
                  {
                  }
                  try
                  {
                     charaAdd.mune.Bura.Bura["Bura" + i].himo.mask = charaAdd["handm0_" + i].kataBuraMask;
                  }
                  catch(myError:Error)
                  {
                  }
                  i++;
               }
               if(YsyatuCheck || TsyatuCheck || VestCheck || BuraCheck)
               {
                  charaAdd.dou.dou_shitaHuku.Bura_hukin.mask = charaAdd.mune["mune" + 0].burahukinMaskMc;
               }
               else
               {
                  charaAdd.dou.dou_shitaHuku.Bura_hukin.mask = null;
               }
               new Huku_Breast("Bura",charaNum);
               try
               {
                  charaAdd.mune.Bura.Bura.Bura0.Bura.right.visible = false;
               }
               catch(myError:Error)
               {
               }
               try
               {
                  charaAdd.mune.Bura.Bura.Bura1.Bura.left.visible = false;
               }
               catch(myError:Error)
               {
               }
            }
            SeihukuGimmickCheck = false;
            VestGimmickCheck = false;
            YsyatuGimmickCheck = false;
            TsyatuGimmickCheck = false;
            BuraGimmickCheck = false;
            if(charaData["Seihuku"]["_visible"][0])
            {
               try
               {
                  if(charaAdd.dou.SeihukuDou.seihuku.totalFrames != 1 && charaAdd.dou.SeihukuDou.seihuku.currentFrame == charaAdd.dou.SeihukuDou.seihuku.totalFrames)
                  {
                     SeihukuGimmickCheck = true;
                  }
               }
               catch(myError:Error)
               {
                  SeihukuGimmickCheck = true;
               }
            }
            else
            {
               SeihukuGimmickCheck = true;
            }
            if(charaData["Vest"]["_visible"][0])
            {
               try
               {
                  if(charaAdd.dou.VestDou.ysyatu.ysyatu.totalFrames != 1 && charaAdd.dou.VestDou.ysyatu.ysyatu.currentFrame == charaAdd.dou.VestDou.ysyatu.ysyatu.totalFrames)
                  {
                     VestGimmickCheck = true;
                  }
               }
               catch(myError:Error)
               {
                  VestGimmickCheck = true;
               }
            }
            else
            {
               VestGimmickCheck = true;
            }
            if(charaData["Ysyatu"]["_visible"][0])
            {
               try
               {
                  if(charaAdd.dou.YsyatuDou.ysyatu.ysyatu.totalFrames != 1 && charaAdd.dou.YsyatuDou.ysyatu.ysyatu.currentFrame == charaAdd.dou.YsyatuDou.ysyatu.ysyatu.totalFrames)
                  {
                     YsyatuGimmickCheck = true;
                  }
               }
               catch(myError:Error)
               {
                  YsyatuGimmickCheck = true;
               }
            }
            else
            {
               YsyatuGimmickCheck = true;
            }
            if(charaData["Tsyatu"]["_visible"][0])
            {
               try
               {
                  if(charaAdd.dou.TsyatuDou.ysyatu.ysyatu.totalFrames != 1 && charaAdd.dou.TsyatuDou.ysyatu.ysyatu.currentFrame == charaAdd.dou.TsyatuDou.ysyatu.ysyatu.totalFrames)
                  {
                     TsyatuGimmickCheck = true;
                  }
               }
               catch(myError:Error)
               {
                  TsyatuGimmickCheck = true;
               }
            }
            else
            {
               TsyatuGimmickCheck = true;
            }
            if(!(charaData["Bura"]["_visible"][0] && charaData["Bura"]["_separate"] == 2))
            {
               BuraGimmickCheck = true;
            }
            i = 0;
            while(i <= 1)
            {
               if(YsyatuCheck || TsyatuCheck || VestCheck || BuraCheck)
               {
                  if(SeihukuGimmickCheck && VestGimmickCheck && YsyatuGimmickCheck && TsyatuGimmickCheck && BuraGimmickCheck)
                  {
                     charaAdd.mune["mune" + i].corsetLine.gotoAndStop(2);
                     try
                     {
                        charaAdd.mune["mune" + i].mune.sepaLine.visible = false;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  else
                  {
                     charaAdd.mune["mune" + i].corsetLine.gotoAndStop(1);
                     try
                     {
                        charaAdd.mune["mune" + i].mune.sepaLine.visible = true;
                     }
                     catch(myError:Error)
                     {
                     }
                  }
                  charaAdd.mune["mune" + i].corsetLine.visible = true;
                  charaAdd.mune["mune" + i].corsetLine.mask = charaAdd.mune.ue["corsetMask" + i];
                  sepaLineCheck = true;
               }
               else
               {
                  try
                  {
                     charaAdd.mune["mune" + i].mune.sepaLine.visible = false;
                  }
                  catch(myError:Error)
                  {
                  }
                  charaAdd.mune["mune" + i].corsetLine.visible = false;
                  charaAdd.mune["mune" + i].corsetLine.mask = null;
                  sepaLineCheck = false;
               }
               i++;
            }
         }
         catch(myError:Error)
         {
         }
      }
   }
}
