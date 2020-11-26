using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._10
{
    public partial class LoggedInPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null && Session["Password"] != null)
            {
                NameLabel.Text = Session["Username"].ToString();
                PasswordLabel.Text = Session["Password"].ToString();
                LoginStatus.InnerText = "Logged In!";
            }
            else
            {
                NameLabel.Text = "Null";
                PasswordLabel.Text = "Null";
                LoginStatus.InnerText = "Not Logged In!";
            }
        }
    }
}