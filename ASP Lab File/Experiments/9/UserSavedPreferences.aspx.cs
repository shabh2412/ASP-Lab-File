using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._9
{
    public partial class UserSavedPreferences : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["StudentPreference"];
            HttpCookie collegeCookie = Request.Cookies["EducationDetails"];
            if (cookie != null)
            {
                nameTxt.Text = cookie["Name"];
                if (collegeCookie != null)
                {
                    collegeTxt.Text = collegeCookie["College"];
                    courseTxt.Text = collegeCookie["Course"];
                    semesterTxt.Text = collegeCookie["Sem"];
                }
                favSubTxt.Text = cookie["Sub"];
            }
            else
            {
                nameTxt.Text = "Null";
                collegeTxt.Text = "Null";
                courseTxt.Text = "Null";
                semesterTxt.Text = "Null";
                favSubTxt.Text = "Null";
                if (cookie == null)
                {
                    SavePreferences.Enabled = false;
                }
            }
        }

        protected void SavePreferences_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["StudentPreference"];
            HttpCookie collegeCookie = Request.Cookies["EducationDetails"];
            cookie.Expires = DateTime.Now.AddDays(-1);
            if (collegeCookie != null)
            {
                collegeCookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(collegeCookie);
            }
            Response.Cookies.Add(cookie);
            Response.Redirect("UserSavedPreferences");
        }
    }
}