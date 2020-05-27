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
    public partial class steel_reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            string imgname = imgup.FileName.ToString();
            imgup.PostedFile.SaveAs(Server.MapPath("~/imagesr/") + imgname);
            string path = "~/imagesr/" + imgname;



            string dbad = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection mycon = new SqlConnection(dbad);


            mycon.Open();
            string save = "insert into builderr ( Agency_Name, Description, Full_Name, Email, Phone, Address_Line1, Address_Line2, City, Pin_Code, Password, image, Service, Business) values(@agname,@des,@fname,@email,@phn,@ad1,@ad2,@city,@pin,@pass,@img,@ser,@bus)";
            SqlCommand cmd = new SqlCommand(save, mycon);
            cmd.Parameters.AddWithValue("@agname", agname.Text);
            cmd.Parameters.AddWithValue("@des", description.Text);
            cmd.Parameters.AddWithValue("@fname", fname.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@phn", phone.Text);
            cmd.Parameters.AddWithValue("@ad1", address1.Text);
            cmd.Parameters.AddWithValue("@ad2", address2.Text);
            cmd.Parameters.AddWithValue("@city", city.Text);
            cmd.Parameters.AddWithValue("@pin", pin.Text);
            cmd.Parameters.AddWithValue("@pass", password.Text);
            cmd.Parameters.AddWithValue("@img", path.ToString());
            cmd.Parameters.AddWithValue("@ser", service.Text);
            cmd.Parameters.AddWithValue("@bus", bus.Text);


            cmd.ExecuteNonQuery();
            mycon.Close();


            agname.Text = String.Empty;
            description.Text = String.Empty;
            fname.Text = String.Empty;
            email.Text = String.Empty;
            phone.Text = String.Empty;
            address1.Text = String.Empty;
            address2.Text = String.Empty;
            city.Text = String.Empty;
            pin.Text = String.Empty;
            password.Text = String.Empty;
            path = String.Empty;
            service.Text = String.Empty;
            
        
        }
    }
}