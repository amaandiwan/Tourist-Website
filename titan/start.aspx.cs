using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace titan
{
    public partial class start : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                sqlCon.Open();
                String name = TextBox3.Text;
                String pass = TextBox4.Text;

                string query = "SELECT COUNT(1) FROM login WHERE username=@username AND password=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", name.Trim());
                sqlCmd.Parameters.AddWithValue("@password", pass.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = name.Trim();
                    Response.Redirect("default.aspx");
                }
                else
                {
                    lbldisop.Text = "Wrong username or password !";
                }
                sqlCon.Close();
            }
            catch (Exception ex)
            {
                lbldisop.Text = ex.ToString();
            }
        }
    }
}