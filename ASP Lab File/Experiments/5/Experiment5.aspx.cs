using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._5
{
    public partial class Experiment51 : System.Web.UI.Page
    {
        int PROTEIN = 4, CARBS = 4, FATS = 9;
        int item_Count = 0;
        int total_Prot, total_Fat, total_Carb;
        int total_calories = 0, current_total_calories = 0;
        int CurProtGrams, CurFatGrams, CurCarbGrams;
        int CurProtCals, CurFatCals, CurCarbCalss;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {
                if (ViewState["item_Count"] != null)
                {
                    item_Count = int.Parse(ViewState["item_Count"].ToString());
                    total_Fat = int.Parse(ViewState["total_Fat"].ToString());
                    total_Prot = int.Parse(ViewState["total_Prot"].ToString());
                    total_Carb = int.Parse(ViewState["total_Carb"].ToString());
                }
                else
                {
                    total_Fat = total_Prot = total_Carb = 0;
                }
            }


            int.TryParse(FatTxt.Text,out CurFatGrams);
            int.TryParse(ProtTxt.Text, out CurProtGrams);
            int.TryParse(CarbTxt.Text, out CurCarbGrams);
        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            item_Count += 1;
            ViewState["item_Count"] = item_Count;
            setLabels();
            setCurrentTotalCalories();
            setTotalFCPCals();
            setTotalCals();
        }

        private void setLabels()
        {
            CurFatCals = CurFatGrams * FATS;
            CurProtCals = CurProtGrams * PROTEIN;
            CurCarbCalss = CurCarbGrams * CARBS;
            CurrFat.Text = "Current Fat\t:\t" + (CurFatCals).ToString() + "Cal";
            CurrProt.Text = "Current Protiens\t:\t" + (CurProtCals).ToString() + " Cal";
            CurrCarb.Text = "Current Carbs\t:\t" + (CurCarbCalss).ToString() + " Cal";
            ItemCount.Text = "Item Count\t:\t" + item_Count.ToString();
        }
        private void setCurrentTotalCalories()
        {
            current_total_calories = CurFatCals + CurProtCals + CurCarbCalss;
            CurrCals.Text = "Current Calories\t:\t" + current_total_calories.ToString() + " Cal";
        }
        private void setTotalFCPCals()
        {
            total_Fat += CurFatCals;
            ViewState["total_Fat"] = total_Fat;
            TotalFat.Text = "Total Fats\t:\t" + total_Fat.ToString() + "Cal";
            total_Prot += CurProtCals;
            ViewState["total_Prot"] = total_Prot;
            TotalProt.Text = "Total Proteins\t:\t" + total_Prot.ToString() + " Cal";
            total_Carb += CurCarbCalss;
            ViewState["total_Carb"] = total_Carb;
            TotalCarb.Text = "Total Carbs\t:\t" + total_Carb.ToString() + " Cal";
        }
        private void setTotalCals()
        {
            total_calories = total_Fat + total_Prot + total_Carb;
            TotalCalories.Text = "Total Calories : " + total_calories.ToString() + " Cal";
        }
    }
}