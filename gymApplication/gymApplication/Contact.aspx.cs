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
using System.IO;

namespace gymApplication
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(RequiredFieldValidator2.IsValid && RequiredFieldValidator3.IsValid && RequiredFieldValidator4.IsValid)
            {
                using (SqlConnection connection = new SqlConnection(hashed.constring))
                {
                    String userName = txtFName.Text + txtLName;
                    double phone = Convert.ToDouble(txtPhone.Text);
                    connection.Open();
                    string checkWorkoutName = "SELECT COUNT(*) FROM Feedback_table WHERE UserEmail = '" + Session["user"] + "'";
                    SqlCommand command = new SqlCommand(checkWorkoutName, connection);
                    int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                    if (temp == 1)
                    {
                        string s = "UPDATE Feedback_table set UserEmail = '" + txtEmail.Text + "', PhoneNum ='" + phone + "', Description ='" + txtMessage.Text + "', UserName ='" + userName + "' WHERE UserEmail ='" + Session["user"] + "'";
                        SqlCommand command2 = new SqlCommand(s, connection);
                        command2.ExecuteNonQuery();
                        Response.Redirect("loginConfirmation.aspx?response=ThankYou!");
                    }
                    else
                    {
                        string insertQuery = "INSERT INTO Feedback_table  (UserEmail, PhoneNum, Description,UserName) VALUES(@Email,@PhoneNum,@Description,@UserName)";
                        SqlCommand command3 = new SqlCommand(insertQuery, connection);
                     
                        command3.Parameters.AddWithValue("@Email", txtEmail.Text);
                        command3.Parameters.AddWithValue("@PhoneNum", phone);
                        command3.Parameters.AddWithValue("@Description", txtMessage.Text);
                        command3.Parameters.AddWithValue("@UserName", userName);
                        command3.ExecuteNonQuery();//Execute Query
                        Response.Redirect("loginConfirmation.aspx?response=ThankYou!");
                       
                        //
                    }



                    
                }
                
            }
        }
    }
}