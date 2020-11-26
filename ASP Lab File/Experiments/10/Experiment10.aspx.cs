using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._10
{
    public partial class Experiment10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            Session["Username"] = NameTxt.Text;
            Session["Password"] = PasswordTxt.Text;
            Response.Redirect("LoggedInPage");
        }
    }
}