using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

namespace gymApplication
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                using (SqlConnection connection = new SqlConnection(hashed.constring))
                {
                    connection.Open();
                    string checkEmail = "SELECT COUNT(*) FROM Users WHERE UserEmail = '" + Email.Text + "'";
                    SqlCommand command = new SqlCommand(checkEmail, connection);
                    int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                    if (temp == 1)
                    {
                        Response.Write("User already Exists");
                    }

                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Username"] = Username.Text;
            if (IsPostBack && Page.IsValid)

            {
                using (SqlConnection connection = new SqlConnection(hashed.constring))
                {
                    connection.Open();
                    string insertQuery = "INSERT INTO Users (UserEmail, UserName, UserPassword,saltpassword) VALUES(@Email,@UserName,@Password,@saltpassword)";

                    SqlCommand command = new SqlCommand(insertQuery, connection);
                    command.Parameters.AddWithValue("@Email", Email.Text);
                    command.Parameters.AddWithValue("@UserName", Username.Text);
                    //
                    string password = Password.Text;
                    string salt = hashed.salting(10);
                    command.Parameters.AddWithValue("@saltpassword", salt);

                    string hasedpass = hashed.SHA256Hash(password, salt);

                    command.Parameters.AddWithValue("@Password", hasedpass);

                    command.ExecuteNonQuery();//Execute Query
                    Session["user"] = Email.Text;
                    Response.Redirect("Home.aspx");

                }


            }

        }

    }
    public static class hashed
    {
        public static string constring = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        public static string salting(int size)
        {
            var rng = new System.Security.Cryptography.RNGCryptoServiceProvider();
            var buff = new byte[size];
            rng.GetBytes(buff);
            return Convert.ToBase64String(buff);
        }
        public static string SHA256Hash(string textinput, string salted)
        {
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(textinput + salted);
            System.Security.Cryptography.SHA256Managed sha256str =
                new System.Security.Cryptography.SHA256Managed();
            byte[] hash = sha256str.ComputeHash(bytes);
            return ByteArrayToHexString(hash);

        }
        public static string ByteArrayToHexString(byte[] ba)
        {
            StringBuilder hex = new StringBuilder(ba.Length * 2);
            foreach (byte b in ba) hex.AppendFormat("{0:x2}", b);
            return hex.ToString();
        }

    }
}