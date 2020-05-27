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
    public partial class ulog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlog_Click(object sender, EventArgs e)
        {
            string em = email.Text;
            string pass = password.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM userreg WHERE (Email=@email and Password=@pass)", con);
            cmd.Parameters.AddWithValue("@email", em);
            cmd.Parameters.AddWithValue("@pass", pass);
            String op = cmd.ExecuteScalar().ToString();
           
            if (op == "1")
            {
                Session["uuser"] = email.Text;
                Session["upass"] = password.Text;
                Response.Redirect("~/uprofile.aspx");
            }
                
            else
            {

                Response.Write("<script>alert('Login Faild')</script>");

            }
            email.Text = string.Empty;
            password.Text = string.Empty;
            
        }
    }
}