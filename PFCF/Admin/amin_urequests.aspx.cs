using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace PFCF.Admin
{
    public partial class amin_urequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = GetData();
            tableur.DataSource = ds;
            tableur.DataBind();
        }
        private DataSet GetData()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from request", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

        }
    }
}