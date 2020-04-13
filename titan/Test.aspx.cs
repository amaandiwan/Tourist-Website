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
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                DataTable dt = new DataTable();
                String checkuser = "select * from login";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                SqlDataAdapter sda = new SqlDataAdapter(checkuser, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                lbl2.Text = "OK";
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        lbl1.Text = dr["name"].ToString();
                    }
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                lbl1.Text = ex.ToString();
            }
        }
    }
}