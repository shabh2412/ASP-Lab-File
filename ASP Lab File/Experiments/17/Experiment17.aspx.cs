using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._17
{
    public partial class Experiment17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["RollNumber"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TxtRoll")).Text;
            SqlDataSource1.InsertParameters["Name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TxtName")).Text;
            SqlDataSource1.InsertParameters["Gender"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlGender")).SelectedValue;
            SqlDataSource1.InsertParameters["Contact"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TxtContact")).Text;
            SqlDataSource1.Insert();
        }
    }
}