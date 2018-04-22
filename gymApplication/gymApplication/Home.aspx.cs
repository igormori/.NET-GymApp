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
    public partial class Home : System.Web.UI.Page
    {
        int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(hashed.constring))
            {

                SqlCommand com;
                string cmd;

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
                    Image1.ImageUrl = "pictures/profile/" + reader["picture_url"].ToString();
                    age.Text = "Age: " + reader["UserAge"].ToString();
                    heigth.Text = "Weight: " + reader["UserWeight"].ToString() + "KG";
                    reader.Close();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }


            if (CheckBox1.Checked == true)
            {
                count++;
            }
            if (CheckBox2.Checked == true)
            {
                count++;
            }
            if (CheckBox3.Checked == true)
            {
                count++;
            }
            if (CheckBox4.Checked == true)
            {
                count++;
            }
            if (CheckBox5.Checked == true)
            {
                count++;
            }
            if (CheckBox6.Checked == true)
            {
                count++;
            }
            if (CheckBox7.Checked == true)
            {
                count++;
            }

        }

        protected void SubmitResults_Click(object sender, EventArgs e)
        {



            results.Text = count.ToString();

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(hashed.constring))
            {

                connection.Open();
                string s = "UPDATE Users set TimeLine = '" + TextBox1.Text + "'where UserEmail='" + Session["user"] + "'";
                SqlCommand command = new SqlCommand(s, connection);
                command.ExecuteNonQuery();

            }
        }
    }
}

