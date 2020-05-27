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
    public partial class user_req : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = GetData();
            Repeater1.DataSource = ds;
            Repeater1.DataBind();

        }
        private DataSet GetData()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM request WHERE BId = '" + Session["id2"] + "'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

        }

        protected void delete_Click(object sender, EventArgs e)
        {


            string id = (sender as LinkButton).CommandArgument;
            string dbad = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection mycon = new SqlConnection(dbad);
            mycon.Open();
            string save = "DELETE FROM request WHERE Id ='" + id + "'";
            SqlCommand cmd = new SqlCommand(save, mycon);
            cmd.ExecuteNonQuery();
            mycon.Close();
            pa


        }

        
    }
}