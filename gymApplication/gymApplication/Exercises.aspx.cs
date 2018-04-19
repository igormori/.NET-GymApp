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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand com;
            string cmd;
            using (SqlConnection connection = new SqlConnection(hashed.constring))
            {

                if (Session["user"] != null)
                {
                    connection.Open();
                    //query

                    cmd = "SELECT * FROM Workouts_table";
                    DataTable dt = new DataTable();
                    com = new SqlCommand(cmd, connection);
                    SqlDataReader reader = com.ExecuteReader();


                    if (Request.QueryString["selected"].ToString() == "begining")
                    {
                        reader.Read();
                        name.Text = Request.QueryString["selected"].ToString();
                        leg1.Text = reader["WorkoutName"].ToString();
                        leg1d.Text = reader["Description"].ToString();
                        leg2.Text = reader["WorkoutName"].ToString();
                        leg2d.Text = reader["Description"].ToString();


                    }
                }

            }
        }
    }
}