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
                    string insertQuery = "INSERT INTO GraphTable (Sunday, Monday, Tuesday, Wednesday, Thrursday, Friday, Saturday) VALUES(@S,@M,@T,@W,@Th,@F,@Sa)";

                    SqlCommand command = new SqlCommand(insertQuery, connection);
                    command.Parameters.AddWithValue("@S", CheckBox1.Checked);
                    command.Parameters.AddWithValue("@M", CheckBox2.Checked);
                    command.Parameters.AddWithValue("@T", CheckBox3.Checked);
                    command.Parameters.AddWithValue("@W", CheckBox4.Checked);
                    command.Parameters.AddWithValue("@Th", CheckBox5.Checked);
                    command.Parameters.AddWithValue("@F", CheckBox6.Checked);
                    command.Parameters.AddWithValue("@Sa", CheckBox7.Checked);

                    command.ExecuteNonQuery();//Execute Query
                }

                Response.Redirect("Home.aspx");
                results.Text = count.ToString();

            }


        }
    }
}