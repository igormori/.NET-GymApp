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
            using (SqlConnection connection = new SqlConnection(hashed.constring))
            {
                if(Session["user"] != null)
                {
                    connection.Open();
                    //query
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = "SELECT * FROM Users WHERE UserEmail = '" + Session["user"].ToString() + "'";
                    DataTable dt = new DataTable();
                    SqlDataAdapter sqlad = new SqlDataAdapter(cmd);
                    name.Text = cmd.Parameters["userName"].ToString();
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
               




            }
        }
    }
}