package menu
{
   public class Tab_EasyExpertFc
   {
       
      
      private var i:int;
      
      private var n:int;
      
      private var headerName:String;
      
      public function Tab_EasyExpertFc()
      {
         super();
         MenuClass.systemData["EExpert"]["_check"] = true;
         HeaderbtnClass.headerMenu.visible = false;
         MenuClass._nowHeaderMenuNum = 10;
         this.n = MenuClass.MY_MENUNAME.length - 1;
         this.i = 0;
         while(this.i <= this.n)
         {
            this.headerName = MenuClass.MY_MENUNAME[this.i][0];
            if(MenuClass.MY_MENUNAME[this.i][3] == 10)
            {
               MenuClass.headerAdd[this.headerName].visible = true;
            }
            else if(MenuClass.MY_MENUNAME[this.i][3] != 0)
            {
               MenuClass.headerAdd[this.headerName].visible = false;
               MenuClass.headerAdd["Tool"].visible = false;
               MenuClass.headerAdd["Save"].visible = false;
            }
            ++this.i;
         }
         MenuClass.systemData["LinkSeihukuArm"]["_flag"] = true;
         MenuClass.systemData["LinkYsyatuArm"]["_flag"] = true;
         MenuClass.systemData["LinkTsyatuArm"]["_flag"] = true;
         MenuClass.systemData["LinkVestArm"]["_flag"] = true;
         MenuClass.systemData["LinkNippleG"]["_flag"] = true;
         MenuClass.systemData["LinkKutu"]["_flag"] = true;
         MenuClass.systemData["LinkZubon"]["_flag"] = true;
         MenuClass.systemData["LinkSocks"]["_flag"] = true;
         MenuClass.systemData["LinkLegBand"]["_flag"] = true;
         MenuClass.systemData["LinkWristband"]["_flag"] = true;
         MenuClass.systemData["LinkGlove"]["_flag"] = true;
         MenuClass.systemData["LinkBracelet"]["_flag"] = true;
         MenuClass.systemData["LinkArmBracelet"]["_flag"] = true;
         MenuClass.systemData["LinkArmband"]["_flag"] = true;
         MenuClass.systemData["LinkElbowpad"]["_flag"] = true;
         MenuClass.systemData["LinkEarring"]["_flag"] = true;
         MenuClass.systemData["LinkSideBurn"]["_flag"] = true;
         MenuClass.systemData["LinkEyeball"]["_flag"] = true;
         MenuClass.systemData["BeltPlus"]["_menu"] = 0;
      }
   }
}
