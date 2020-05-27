using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace PFCF.Admin
{
    public partial class amin_news : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = GetData();
            table1.DataSource = ds;
            table1.DataBind();
        }
        private DataSet GetData()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from news", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string dbad = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection mycon = new SqlConnection(dbad);
            mycon.Open();
            string save = "insert into news (Title, Description) values(@title,@des)";
            SqlCommand cmd = new SqlCommand(save, mycon);
            cmd.Parameters.AddWithValue("@title", title.Text);
            cmd.Parameters.AddWithValue("@des", desc.Text);
            cmd.ExecuteNonQuery();
            mycon.Close();
            title.Text = string.Empty;
            desc.Text = string.Empty;
        }
    }
}