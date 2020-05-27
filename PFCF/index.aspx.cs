using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace PFCF
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            //news
            SqlCommand cmd4 = new SqlCommand("SELECT * FROM [news] ORDER BY [Id] DESC", con);
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            DataSet ds4 = new DataSet();
            da4.Fill(ds4);
            title1.Text = ds4.Tables[0].Rows[0]["Title"].ToString();
            news1.Text = ds4.Tables[0].Rows[0]["Description"].ToString();
            title2.Text = ds4.Tables[0].Rows[1]["Title"].ToString();
            news2.Text = ds4.Tables[0].Rows[1]["Description"].ToString();
            //Builder
            SqlCommand cmd = new SqlCommand("SELECT * FROM [builderr] WHERE Business ='Builder'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            bimg.ImageUrl = ds.Tables[0].Rows[0]["image"].ToString();
            lblnameb.Text = ds.Tables[0].Rows[0]["Full_Name"].ToString();
            lbldesb.Text = ds.Tables[0].Rows[0]["Description"].ToString();
            lblcb.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
            bimg1.ImageUrl = ds.Tables[0].Rows[1]["image"].ToString();
            lblname1b.Text = ds.Tables[0].Rows[1]["Full_Name"].ToString();
            lbldes1b.Text = ds.Tables[0].Rows[1]["Description"].ToString();
            lblcb1.Text = ds.Tables[0].Rows[1]["Phone"].ToString();
            bimg2.ImageUrl = ds.Tables[0].Rows[2]["image"].ToString();
            lblname2b.Text = ds.Tables[0].Rows[2]["Full_Name"].ToString();
            lbldes2b.Text = ds.Tables[0].Rows[2]["Description"].ToString();
            lblcb2.Text = ds.Tables[0].Rows[2]["Phone"].ToString();

            //cement
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM [builderr] WHERE Business = 'Cement' ORDER BY [Id] DESC ", con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            cimg.ImageUrl = ds1.Tables[0].Rows[0]["image"].ToString();
            lblnamec.Text = ds1.Tables[0].Rows[0]["Full_Name"].ToString();
            lbldesc.Text = ds1.Tables[0].Rows[0]["Description"].ToString();
            lblcc.Text = ds.Tables[0].Rows[0]["Phone"].ToString();
            cimg1.ImageUrl = ds1.Tables[0].Rows[1]["image"].ToString();
            lblname1c.Text = ds1.Tables[0].Rows[1]["Full_Name"].ToString();
            lbldes1c.Text = ds1.Tables[0].Rows[1]["Description"].ToString();
            lblcc1.Text = ds1.Tables[0].Rows[1]["Phone"].ToString();
            cimg2.ImageUrl = ds1.Tables[0].Rows[2]["image"].ToString();
            lblname2c.Text = ds1.Tables[0].Rows[2]["Full_Name"].ToString();
            lbldes2c.Text = ds1.Tables[0].Rows[2]["Description"].ToString();
            lblcc2.Text = ds1.Tables[0].Rows[2]["Phone"].ToString();

            //Steel
            SqlCommand cmd2 = new SqlCommand("SELECT * FROM [builderr] WHERE Business = 'Steel' ORDER BY [Id] DESC ", con);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            simg.ImageUrl = ds2.Tables[0].Rows[0]["image"].ToString();
            lblnames.Text = ds2.Tables[0].Rows[0]["Full_Name"].ToString();
            lbldess.Text = ds2.Tables[0].Rows[0]["Description"].ToString();
            lblcs.Text = ds2.Tables[0].Rows[0]["Phone"].ToString();
            simg1.ImageUrl = ds2.Tables[0].Rows[1]["image"].ToString();
            lblname1s.Text = ds2.Tables[0].Rows[1]["Full_Name"].ToString();
            lbldes1s.Text = ds2.Tables[0].Rows[1]["Description"].ToString();
            lblcs1.Text = ds2.Tables[0].Rows[1]["Phone"].ToString();
            simg2.ImageUrl = ds2.Tables[0].Rows[2]["image"].ToString();
            lblname2s.Text = ds2.Tables[0].Rows[2]["Full_Name"].ToString();
            lbldes2s.Text = ds2.Tables[0].Rows[2]["Description"].ToString();
            lblcs2.Text = ds2.Tables[0].Rows[2]["Phone"].ToString();

            //engineer
            SqlCommand cmd3 = new SqlCommand("SELECT * FROM [builderr] WHERE Business = 'Engineer' ORDER BY [Id] DESC ", con);
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);

            eimg.ImageUrl = ds3.Tables[0].Rows[0]["image"].ToString();
            lblnamee.Text = ds3.Tables[0].Rows[0]["Full_Name"].ToString();
            lbldese.Text = ds3.Tables[0].Rows[0]["Description"].ToString();
            lblce.Text = ds3.Tables[0].Rows[0]["Phone"].ToString();
            eimg1.ImageUrl = ds3.Tables[0].Rows[1]["image"].ToString();
            lblname1e.Text = ds3.Tables[0].Rows[1]["Full_Name"].ToString();
            lbldes1e.Text = ds3.Tables[0].Rows[1]["Description"].ToString();
            lblce1.Text = ds3.Tables[0].Rows[1]["Phone"].ToString();
            eimg2.ImageUrl = ds3.Tables[0].Rows[2]["image"].ToString();
            lblname2e.Text = ds3.Tables[0].Rows[2]["Full_Name"].ToString();
            lbldes2e.Text = ds3.Tables[0].Rows[2]["Description"].ToString();
            lblce2.Text = ds3.Tables[0].Rows[2]["Phone"].ToString();

        }
    }
}