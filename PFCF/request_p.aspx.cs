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
    public partial class request_p : System.Web.UI.Page
    {
        string bid = string.Empty;
        string ag = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            bid = Session["bid"].ToString();
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM builderr WHERE Id = '" + Session["bid"] + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ag = ds.Tables[0].Rows[0]["Agency_Name"].ToString();
            txtBId.Text = bid.ToString();
            txtag.Text = ag.ToString();
        }

        protected void send_Click(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToString();
            string dbad = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection mycon = new SqlConnection(dbad);
            mycon.Open();
            string save = "insert into request (BId, Agency_Name, Full_Name, Email, Phone, Address, Requirement, Date) values(@id,@ag,@n,@e,@p,@a,@r,@dt)";
            SqlCommand cmd = new SqlCommand(save, mycon);
            cmd.Parameters.AddWithValue("@e", email.Text);
            cmd.Parameters.AddWithValue("@n", fname.Text);
            cmd.Parameters.AddWithValue("@p", phone.Text);
            cmd.Parameters.AddWithValue("@a", address.Text);
            cmd.Parameters.AddWithValue("@r", requ.Text);
            cmd.Parameters.AddWithValue("@id", bid.ToString());
            cmd.Parameters.AddWithValue("@ag", ag.ToString());
            cmd.Parameters.AddWithValue("@dt", date.ToString());
            cmd.ExecuteNonQuery();
            mycon.Close();
            email.Text = string.Empty;
            fname.Text = string.Empty;
            phone.Text = string.Empty;
            address.Text = string.Empty;
            requ.Text = string.Empty;
            
    
        }
    }
}