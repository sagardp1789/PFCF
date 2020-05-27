using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace PFCF
{
    public partial class uprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Session["uuser"].ToString();
            string pass = Session["upass"].ToString();
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM userreg WHERE Email = '" + Session["uuser"] + "' and Password = '" + Session["upass"] + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            
            name.Text = ds.Tables[0].Rows[0]["Full_Name"].ToString();
            uid.Text = ds.Tables[0].Rows[0]["ID"].ToString();
            phone.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
            add.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            pin.Text = ds.Tables[0].Rows[0]["Pin_Code"].ToString();
            email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            lblfacebook.Text = ds.Tables[0].Rows[0]["Facebook"].ToString();
            lbltwitter.Text = ds.Tables[0].Rows[0]["Twitter"].ToString();
            lblgoogle.Text = ds.Tables[0].Rows[0]["Google"].ToString();
        }

        protected void save_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE userreg SET Password='" + cpass.Text + "'  WHERE Email = '" + Session["uuser"] + "' and Password = '" + Session["upass"] + "'", con);



            cmd.ExecuteNonQuery();
        }
        protected void reset_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("update userreg SET Facebook=@f,Twitter=@t,Google=@g  WHERE Email = '" + Session["uuser"] + "' and Password = '" + Session["upass"] + "'", con);
            cmd.Parameters.AddWithValue("@f", facebook.Text);
            cmd.Parameters.AddWithValue("@t", twitter.Text);
            cmd.Parameters.AddWithValue("@g", google.Text);


            cmd.ExecuteNonQuery();
        
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Session.Remove("pass");
            Session.Clear();
            Session.Abandon();


            
            Response.Redirect("~/ulog.aspx");
            }
    }
}