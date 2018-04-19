using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Data;


namespace gymApplication
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            if (IsPostBack && Page.IsValid)
            {
                using (SqlConnection connection = new SqlConnection(hashed.constring))
                {
                    connection.Open();
                    //query
                    string s = "SELECT COUNT(*) FROM Users WHERE UserEmail = '" + txtEmail.Text + "'and UserName ='" + txtUser.Text + "'";
                    SqlCommand command = new SqlCommand(s, connection);
                    int numrow = Convert.ToInt32(command.ExecuteScalar().ToString());
                    if (numrow == 0)
                    {
                        lblresetpass.Text = "Username and email address is incorrect!!!";
                    }
                    else
                    {
                        Session["resetemail"] = txtEmail.Text;
                        Response.Redirect("ResetPage.aspx?user=");
                    }
                }
            }

        }
    }
}