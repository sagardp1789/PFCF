using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace PFCF
{
    public partial class Bprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                string user = Session["user"].ToString();
                string pass = Session["pass"].ToString();
                string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
                SqlConnection con = new SqlConnection(CS);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM builderr WHERE Email = '" + Session["user"] + "' and Password = '" + Session["pass"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                sid.Text = ds.Tables[0].Rows[0]["Id"].ToString();
                uimg.ImageUrl = ds.Tables[0].Rows[0]["image"].ToString();
                iname.Text = ds.Tables[0].Rows[0]["Full_Name"].ToString();
                name.Text = ds.Tables[0].Rows[0]["Full_Name"].ToString();
                agname.Text = ds.Tables[0].Rows[0]["Agency_Name"].ToString();
                ad1.Text = ds.Tables[0].Rows[0]["Address_Line1"].ToString();
                ad2.Text = ds.Tables[0].Rows[0]["Address_Line2"].ToString();
                service.Text = ds.Tables[0].Rows[0]["Service"].ToString();
                email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                phone.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
                lblfacebook.Text = ds.Tables[0].Rows[0]["Facebook"].ToString();
                lbltwitter.Text = ds.Tables[0].Rows[0]["Twitter"].ToString();
                lblgoogle.Text = ds.Tables[0].Rows[0]["Google"].ToString();
                txtservices.Text = ds.Tables[0].Rows[0]["Service"].ToString();
                Session["id2"] = sid.Text;
           
        }

        protected void save_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE builderr SET Password='" + cpass.Text + "'  WHERE Email = '" + Session["user"] + "' and Password = '" + Session["pass"] + "'", con);
            cmd.ExecuteNonQuery();
        }
        
        

       
        protected void reset_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("update builderr SET Facebook=@f,Twitter=@t,Google=@g  WHERE Email = '" + Session["user"] + "' and Password = '" + Session["pass"] + "'", con);
            cmd.Parameters.AddWithValue("@f", facebook.Text);
            cmd.Parameters.AddWithValue("@t", twitter.Text);
            cmd.Parameters.AddWithValue("@g", google.Text);


            cmd.ExecuteNonQuery();
            con.Close();
            facebook.Text = string.Empty;
            twitter.Text = string.Empty;
            google.Text = string.Empty;
        }

        protected void update_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE builderr SET Service='" + txtservices.Text + "'  WHERE Email = '" + Session["user"] + "' and Password = '" + Session["pass"] + "'", con);
            cmd.ExecuteNonQuery();

        }
    }
}