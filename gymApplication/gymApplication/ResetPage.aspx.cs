using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Cryptography;

namespace gymApplication
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRestPassword_Click(object sender, EventArgs e)
        {
            if (IsPostBack && Page.IsValid)
            {
                if (txtNewpassword.Text == txtRepNewpassword.Text)
                {
                    using (SqlConnection connection = new SqlConnection(hashed.constring))
                    {
                        string resetpassword = txtNewpassword.Text;
                        string salt = hashed.salting(10);
                        string hasedpass = hashed.SHA256Hash(resetpassword, salt);
                        connection.Open();
                        string s = "UPDATE Users set saltpassword = '" + salt + "', UserPassword ='" + hasedpass + "'where UserEmail='" + Session["resetemail"] + "'";
                        SqlCommand command = new SqlCommand(s, connection);
                        command.ExecuteNonQuery();

                    }
                }
            }
            else
            {
                lblreset.Text = "Password not matched, Try again";
            }

        }




    }
}






