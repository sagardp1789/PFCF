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
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = true;
            string str;
            Label1.Text = name.Text ;
        }

        protected void submit_Click(object sender, EventArgs e)
        {




            string dbad = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection mycon = new SqlConnection(dbad);


            mycon.Open();
            string save = "insert into contact (Full_Name,  Email, Subject,Message) values(@name,@email,@subject,@message)";
            SqlCommand cmd = new SqlCommand(save, mycon);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@subject", subject.Text);
            cmd.Parameters.AddWithValue("@message", message.Text);
            

            cmd.ExecuteNonQuery();
            mycon.Close();

            name.Text = string.Empty;
            email.Text = string.Empty;
            subject.Text = string.Empty;
            message.Text = string.Empty;
            
        
        }
    }
}