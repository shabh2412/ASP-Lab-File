using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._9
{
    public partial class Experiment9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SavePreferences_Click(object sender, EventArgs e)
        {
            //Will be persistent cookie
            HttpCookie cookie = new HttpCookie("StudentPreference");
            cookie["Name"] = nameTxt.Text;
            cookie["Sub"] = favSubTxt.Text;
            cookie.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(cookie);
            //Will be non persistent cookie
            HttpCookie collegeCookie = new HttpCookie("EducationDetails");
            collegeCookie["College"] = collegeTxt.Text;
            collegeCookie["Course"] = courseTxt.Text;
            collegeCookie["Sem"] = semesterTxt.Text;
            Response.Cookies.Add(collegeCookie);
            Response.Redirect("UserSavedPreferences.aspx");
        }
    }
}