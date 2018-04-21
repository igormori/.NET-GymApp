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
            String cmdW;
            String cmdWot;
            using (SqlConnection connection = new SqlConnection(hashed.constring))
            {
                

                if (Session["user"] != null)
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
                    Image1.ImageUrl = "pictures/"+reader["picture_url"].ToString();
                    reader.Close();
                   
                   
                    cmdWot = "SELECT COUNT(*) FROM UserWorkOuts_Table WHERE UserEmail = '" + Session["user"].ToString() + "'";
                    cmdW = "SELECT * FROM UserWorkOuts_Table WHERE UserEmail = '" + Session["user"].ToString() + "'";
                    DataTable dtW = new DataTable();
                    SqlCommand command = new SqlCommand(cmdWot, connection);
                    int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                    if (temp == 1)
                    {
                        SqlCommand command2 = new SqlCommand(cmdW, connection);
                        SqlDataReader reader2 = command2.ExecuteReader();
                        reader2.Read();
                        exercise.Text = reader2["WorkoutName"].ToString();
                        Button2.PostBackUrl = "~/Exercises.aspx?selected=" + exercise.Text + "&action=delete";
                    }
                    else
                    {
                        exercise.Text = "EXERCISE NOT SELECTED! PLEASE CLICK ON SET YOUR TRAINING TO BEGIN!";
                        Button2.PostBackUrl = "/ExercisePage.aspx";

                    }
                   
                }
                else
                {
                    Response.Redirect("login.aspx");
                    Response.Write("<span class='alert-danger'>Please login to view profile</span>");
                }
               

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
           
            

        }
    }
}