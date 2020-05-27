using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace PFCF.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void log_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM aminreg WHERE (Email=@email and Password=@pass)", con);
            cmd.Parameters.AddWithValue("@email", email1.Text);
            cmd.Parameters.AddWithValue("@pass", pass1.Text);
            String op = cmd.ExecuteScalar().ToString();

            if (op == "1")
            {
                Session["aminuser"] = email1.Text;
                Session["aminpass"] = pass1.Text;
                Response.Redirect("~/Admin/amin_index.aspx");
            }
            else
            {

                Response.Write("<script>alert('Login Faild')</script>");

            }
            email1.Text = string.Empty;
            pass1.Text = string.Empty;

        }
    }
}