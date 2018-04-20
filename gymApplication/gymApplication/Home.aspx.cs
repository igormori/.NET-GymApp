using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gymApplication
{
    public partial class Home : System.Web.UI.Page
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

        protected void SubmitResults_Click(object sender, EventArgs e)
        {

            using (SqlConnection connection = new SqlConnection(hashed.constring))
            {
                connection.Open();
                string insertQuery = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Sun, @Sunval)";
                string insertQuery2 = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Mon, @Monval)";
                string insertQuery3 = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Tue, @Tueval)";
                string insertQuery4 = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Wed, @Wedval)";
                string insertQuery5 = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Thur, @Thurval)";
                string insertQuery6 = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Fri, @Frival)";
                string insertQuery7 = "INSERT INTO GraphTable (days_of_the_week,completed) VALUES(@Sat, @Sunval)";

                SqlCommand command = new SqlCommand(insertQuery, connection);
                command.Parameters.AddWithValue("@Sun", 0);
                command.Parameters.AddWithValue("@Sunval", CheckBox1.Checked);


                SqlCommand command2 = new SqlCommand(insertQuery2, connection);
                command2.Parameters.AddWithValue("@Mon", 1);
                command2.Parameters.AddWithValue("@Monval", CheckBox2.Checked);

                SqlCommand command3 = new SqlCommand(insertQuery3, connection);
                command3.Parameters.AddWithValue("@Tue", 2);
                command3.Parameters.AddWithValue("@Tueval", CheckBox3.Checked);

                SqlCommand command4 = new SqlCommand(insertQuery4, connection);
                command4.Parameters.AddWithValue("@Wed", 3);
                command4.Parameters.AddWithValue("@Wedval", CheckBox4.Checked);

                SqlCommand command5 = new SqlCommand(insertQuery5, connection);
                command5.Parameters.AddWithValue("@Thur", 4);
                command5.Parameters.AddWithValue("@Thurval", CheckBox5.Checked);

                SqlCommand command6 = new SqlCommand(insertQuery6, connection);
                command6.Parameters.AddWithValue("@Fri", 5);
                command6.Parameters.AddWithValue("@Frival", CheckBox6.Checked);

                SqlCommand command7 = new SqlCommand(insertQuery7, connection);
                command7.Parameters.AddWithValue("@Sat", 6);
                command7.Parameters.AddWithValue("@Satval", CheckBox7.Checked);

                command.ExecuteNonQuery();//Execute Query
                command2.ExecuteNonQuery();//Execute Query
                command3.ExecuteNonQuery();//Execute Query
                command4.ExecuteNonQuery();//Execute Query
                command5.ExecuteNonQuery();//Execute Query
                command6.ExecuteNonQuery();//Execute Query
                command7.ExecuteNonQuery();//Execute Query
            }


            results.Text = count.ToString();

        }


    }
}

