using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

namespace ASP_Lab_File.Experiments._13
{
    public partial class Experiment13 : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("Select * from [ExperimentThirteen]", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }
        private byte[] CalculateSHA256(string str)
        {
            SHA256 sha256 = SHA256Managed.Create();
            byte[] hashValue;
            UTF8Encoding objUtf8 = new UTF8Encoding();
            hashValue = sha256.ComputeHash(objUtf8.GetBytes(str));

            return hashValue;
        }


        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("Insert into ExperimentThirteen values (@Username, @Password)", con);
            string pwdHash = Encoding.Default.GetString(CalculateSHA256(PasswordTxt.Text));

            cmd.Parameters.AddWithValue("@Username", UsernameTxt.Text);
            cmd.Parameters.AddWithValue("@Password", pwdHash);
            try
            {
                con.Open();

                cmd.ExecuteNonQuery();
            }
            catch (Exception excpetion)
            {
                Console.WriteLine(excpetion.Message);
            }
            finally
            {
                con.Close();

            }
        }
    }
}