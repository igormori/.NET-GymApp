using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace gymApplication
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void SubmitResults_Click(Object sender,
                         EventArgs e)
        {
            if (IsPostBack && Page.IsValid)

            {
                using (SqlConnection connection = new SqlConnection(hashed.constring))
                {
                    connection.Open();
                    string insertQuery = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Sun, @Sunval)";
                    string insertQuery = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Sun, @Sunval)";
                    string insertQuery = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Sun, @Sunval)";
                    string insertQuery = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Sun, @Sunval)";
                    string insertQuery = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Sun, @Sunval)";
                    string insertQuery = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Sun, @Sunval)";
                    string insertQuery = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Sun, @Sunval)";

                    SqlCommand command = new SqlCommand(insertQuery, connection);
                    command.Parameters.AddWithValue("@Sun", 0);
                    command.Parameters.AddWithValue("@Sunval", CheckBox1.Checked);
                    command.Parameters.AddWithValue("@Mon", 1);
                    command.Parameters.AddWithValue("@Monval", CheckBox1.Checked);
                    command.Parameters.AddWithValue("@Tue", 2);
                    command.Parameters.AddWithValue("@Tueval", CheckBox1.Checked);
                    command.Parameters.AddWithValue("@Wed", 3);
                    command.Parameters.AddWithValue("@Wedval", CheckBox1.Checked);
                    command.Parameters.AddWithValue("@Thur", 4);
                    command.Parameters.AddWithValue("@Thurval", CheckBox1.Checked);
                    command.Parameters.AddWithValue("@Fri", 5);
                    command.Parameters.AddWithValue("@Frival", CheckBox1.Checked);
                    command.Parameters.AddWithValue("@Sat", 6);
                    command.Parameters.AddWithValue("@Satval", CheckBox1.Checked);
                    command.ExecuteNonQuery();//Execute Query
                }

                
                results.Text = count.ToString();

            }


        }
    }
}