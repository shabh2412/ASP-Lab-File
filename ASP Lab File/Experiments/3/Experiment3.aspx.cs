using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._2
{
    public partial class Experiment3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ApplyChanges_Click(object sender, EventArgs e)
        {
            if (BoldChk.Checked == true)
            {
                OutputLbl.Font.Bold = true;
            }
            else
            {
                OutputLbl.Font.Bold = false;
            }
            if (ItalicChk.Checked == true)
            {
                OutputLbl.Font.Italic = true;
            }
            else
            {
                OutputLbl.Font.Italic = false;
            }
            if (UnderlineChk.Checked == true)
            {
                OutputLbl.Font.Underline = true;
            }
            else
            {
                OutputLbl.Font.Underline = false;
            }
            if (Red.Checked == true)
            {
                OutputLbl.ForeColor = Color.Red;
            }
            else if (Blue.Checked == true)
            {
                OutputLbl.ForeColor = Color.Blue;
            }
            else
            {
                OutputLbl.ForeColor = Color.Black;
            }

        }

        protected void ClearTxtBtn_Click(object sender, EventArgs e)
        {
            NameTxt.Text = MsgTxt.Text = OutputLbl.Text = "";
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            OutputLbl.Text = NameTxt.Text + ",<br/>" + MsgTxt.Text;
        }
    }
}