using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace PFCF
{
    public partial class Seller_log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void plog_Click(object sender, EventArgs e)
        {
            string email = email1.Text;
            string pass = password.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM builderr WHERE (Email=@email and Password=@pass)", con);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@pass", pass);
            String op = cmd.ExecuteScalar().ToString();

            if (op == "1")
            {
                Session["user"] = email1.Text;
                Session["pass"] = password.Text;
                Response.Redirect("~/Bprofile.aspx");
            }
            else
            {

                Response.Write("<script>alert('Login Faild')</script>");

            }
            email1.Text = string.Empty;
            password.Text = string.Empty;
            
        }
    }
}