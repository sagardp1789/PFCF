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
    public partial class uregister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Fname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
           
        }

        protected void signup_Click1(object sender, EventArgs e)
        {
            string dbad = ConfigurationManager.ConnectionStrings["DBCON"].ConnectionString;
            SqlConnection mycon = new SqlConnection(dbad);

                mycon.Open();
                string save = "insert into userreg(Full_Name, Email, Phone, Password, Pin_Code, Address) values (@fname,@email,@phn,@pass,@pin,@ad)";
                SqlCommand cmd = new SqlCommand(save, mycon);

                cmd.Parameters.AddWithValue("@fname", Fname.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@phn", phone.Text);
                cmd.Parameters.AddWithValue("@pass", password.Text);
                cmd.Parameters.AddWithValue("@pin", pin.Text);
                cmd.Parameters.AddWithValue("@ad", address.Text);



                cmd.ExecuteNonQuery();
                mycon.Close();


                Fname.Text = string.Empty;
                email.Text = string.Empty;
                phone.Text = string.Empty;
                password.Text = string.Empty;
                pin.Text = string.Empty;
                address.Text = string.Empty;
        }
           
        }
        }
    
