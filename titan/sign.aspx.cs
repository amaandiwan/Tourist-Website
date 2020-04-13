using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
namespace titan
{
    public partial class sign : System.Web.UI.Page
    {

        /*
public class Member
{
public string username { get; set; }
public string password { get; set; }
public string fname { get; set; }
public string lname { get; set; }
public string address { get; set; }
}*/
        protected void Page_Load(object sender, EventArgs e)
        {
            Label7.Visible =false;
        }
        /*
        private void ExecuteInsert(Member member)
        {
            SqlConnection sqlCon = new SqlConnection
                    (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
            {
                String query = @"INSERT INTO login
                             (username,password,fname,lname,address) VALUES (@username,@password,@fname,@lname,@address)";
                using (SqlCommand sqlCmd = new SqlCommand(query, sqlCon))
                {
                    sqlCmd.Parameters.AddWithValue("@username", member.username);
                    sqlCmd.Parameters.AddWithValue("@password", member.password);
                    sqlCmd.Parameters.AddWithValue("@fname", member.fname);
                    sqlCmd.Parameters.AddWithValue("@lname", member.lname);
                    sqlCmd.Parameters.AddWithValue("@address", member.address);

                    sqlCon.Open();
                    sqlCmd.CommandType = CommandType.Text;
                    sqlCmd.ExecuteNonQuery();
                }
            }
        }
        */
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if(TextBox3.Text == TextBox4.Text)
                {
                    String fname = TextBox1.Text;
                    String lname = TextBox2.Text;
                    String rpass = TextBox3.Text;
                    String password = TextBox4.Text;
                    String username = TextBox5.Text;
                    //String address = TextArea1.Value;
                    SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    sqlCon.Open();
                    String query = "insert into login values('" + username + "','" + password + "','" + fname + "','" + lname + "')";
                    SqlDataAdapter sda = new SqlDataAdapter(query, sqlCon);
                    sda.SelectCommand.ExecuteNonQuery();
                    sqlCon.Close();
                    Response.Redirect("start.aspx"); 
                }
                else
                {
                    Label7.Visible = true;
                    Label7.Text = "password did not match";
                }
                lbldisop.Text = "registration failed";
            }
            /*
            //register
            try
            {
                if (TextBox3.Text == TextBox4.Text)
                {
                    //fill the class properties with form values  
                    Member member = new Member();
                    member.username = TextBox3.Text;
                    member.password = TextBox4.Text;
                    member.fname = TextBox1.Text;
                    member.lname = TextBox2.Text;
                    //member.address = TextArea1.Text;
                    //call the method to execute insert to the database  
                    ExecuteInsert(member);
                    Response.Write("Record was successfully added!");
                    Response.Redirect("start.aspx");
                }
                else
                {
                    Response.Write("Password did not match");
                    TextBox4.Focus();
                }
            }
            */
            catch (Exception ex)
            {
                lbldisop.Text = ex.ToString();
            }
        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}