using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace PFCF.Admin
{
    public partial class amin_engineer : System.Web.UI.Page
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
                SqlDataAdapter da = new SqlDataAdapter("select * from builderr where Business='Engineer'", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

        }
    }
}