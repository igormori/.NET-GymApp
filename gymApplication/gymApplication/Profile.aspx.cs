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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand com;
            string cmd;
            using (SqlConnection connection = new SqlConnection(hashed.constring))
            {

                if(Session["user"] != null)
                {
                    connection.Open();
                    //query
                
                    cmd = "SELECT * FROM Users WHERE UserEmail = '" + Session["user"].ToString() + "'";
                    DataTable dt = new DataTable();
                    com = new SqlCommand(cmd, connection);
                    SqlDataReader reader = com.ExecuteReader();

                    reader.Read();
                    name.Text = reader["UserName"].ToString();
                    bio.Text = reader["bio"].ToString();
                    Image1.ImageUrl = reader["picture_url"].ToString();
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
               




            }
        }
    }
}