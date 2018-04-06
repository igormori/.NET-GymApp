using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace gymApplication
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) {
                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                connection.Open();
                string checkEmail = "SELECT COUNT(*) FROM Users WHERE UserEmail = '" + Email.Text + "'";
                SqlCommand command = new SqlCommand(checkEmail, connection);
                int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                if (temp == 1) {
                    Response.Write("User already Exists");
                }
                connection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Username"] = Username.Text;
            if (IsPostBack&& Page.IsValid)
      
            {
                try
                {
                    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    connection.Open();
                    string insertQuery = "INSERT INTO Users (UserEmail, UserName, UserPassword) VALUES(@Email,@UserName,@Password)";

                    SqlCommand command = new SqlCommand(insertQuery, connection);
                    command.Parameters.AddWithValue("@Email", Email.Text);
                    command.Parameters.AddWithValue("@UserName", Username.Text);
                    command.Parameters.AddWithValue("@Password", Password.Text);

                    command.ExecuteNonQuery();//Execute Query
                    Response.Redirect("login.aspx");
                    Response.Write("Registration Successfull");

                    connection.Close();
                }
                catch (Exception )
                {

                    Response.Write("Ooops something went wrong...");
                }
                
            }
        }
    }
}