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
    public partial class amin_users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            string acc = string.Empty;
            if (admin.Checked)
            { acc = "Administrator"; }
            else { acc = "Employee"; }
            string dbad = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection mycon = new SqlConnection(dbad);


            mycon.Open();
            string save = "insert into aminreg ( Account, Full_Name, Email, Password) values(@ac,@fname,@email,@pass)";
            SqlCommand cmd = new SqlCommand(save, mycon);
            cmd.Parameters.AddWithValue("@ac", acc);
            cmd.Parameters.AddWithValue("@fname", fname.Text);
            cmd.Parameters.AddWithValue("@pass", pass.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            
          


            cmd.ExecuteNonQuery();
            mycon.Close();
            acc = string.Empty;
            fname.Text = string.Empty;
            pass.Text = string.Empty;
            email.Text = string.Empty;

        }
    }
}