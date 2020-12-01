using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._15
{
    public partial class Experiment15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SampleDataContext dataContext = new SampleDataContext();
            GridView1.DataSource = from student in dataContext.Students
                                   where student.Gender == "Female"
                                   select student;
            GridView1.DataBind();
        }
    }
}