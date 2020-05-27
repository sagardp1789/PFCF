using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace PFCF
{
    public partial class BP : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            string dbad = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection mycon = new SqlConnection(dbad);
            mycon.Open();
            string save = "insert into feedback (Email, Feedback, Summary) values(@e,@f,@s)";
            SqlCommand cmd = new SqlCommand(save, mycon);
            cmd.Parameters.AddWithValue("@e", email.Text);
            cmd.Parameters.AddWithValue("@s", sum.Text);
            cmd.Parameters.AddWithValue("@f", msg.Text);
            cmd.ExecuteNonQuery();
            mycon.Close();
            email.Text = string.Empty;
            sum.Text = string.Empty;
            msg.Text = string.Empty;
        
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Session.Remove("pass");
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Seller_Log.aspx");
            
        }
    }
}