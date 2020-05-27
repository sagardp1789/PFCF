using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PFCF.Admin
{
    public partial class admin_master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Remove("aminuser");
            Session.Remove("aminpass");
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Admin/amin_login.aspx");
        }

       
    }
}