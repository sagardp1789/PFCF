using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace PFCF
{
    public partial class cementproduct : System.Web.UI.Page
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
                SqlDataAdapter da = new SqlDataAdapter("select * from builderr where Business='Cement'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

        }
        protected void linkid_Click(object sender, EventArgs e)
        {


            Session["bid"] = (sender as LinkButton).CommandArgument;
            Response.Redirect("~/request_p.aspx");


        }
    
    }
}