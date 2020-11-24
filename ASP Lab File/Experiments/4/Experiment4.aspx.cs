using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._4
{
    public partial class Experiment4 : System.Web.UI.Page
    {
        string num;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            num = inputNumber.Text.ToString();
            checkPal(num);
        }

        private void checkPal(string num)
        {
            int rem, sum = 0;
            int number = int.Parse(num);
            int temp = number;
            while (number > 0)
            {
                rem = number % 10;
                sum = (sum * 10) + rem;
                number = number / 10;
            }
            if (temp==sum)
            {
                outPut.InnerText = "It is a Palindrome";
            }
            else
            {
                outPut.InnerText = "Not a Palindrome";
            }
        }
    }
}