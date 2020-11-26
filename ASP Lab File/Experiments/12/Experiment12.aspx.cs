using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._12
{
    public partial class Experiment12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ZeroByZero_Click(object sender, EventArgs e)
        {
            try
            {
                int v = 0;
                Output.Text = (v/v).ToString();
            }
            catch (Exception)
            {
                Output.Text = "Error!!! Cannot Divid By Zero";
                Output.ForeColor = Color.Red;
            }
        }
    }
}