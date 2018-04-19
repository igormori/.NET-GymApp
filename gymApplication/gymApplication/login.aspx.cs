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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string category = Request.QueryString["logout"];
            if (category == "destroy")
            {
                Session["user"] = null;
                try
                {
                    Email.Text = Request.Cookies["username"].Value;
                    Password.Attributes["Value"] = Request.Cookies["userpass"].Value;
                    remembercheck.Checked = true;
                }
                catch (Exception)
                {
                    Response.Redirect("login.aspx?");
                }


            }
            else if (Session["user"] != null)
            {
                Response.Redirect("Home.aspx?");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (IsPostBack && Page.IsValid)
            {
                using (SqlConnection connection = new SqlConnection(hashed.constring))
                {
                    connection.Open();
                    //query
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = "SELECT * FROM Users WHERE UserEmail = '" + Email.Text + "'";
                    DataTable dt = new DataTable();
                    SqlDataAdapter sqlad = new SqlDataAdapter(cmd);
                    sqlad.Fill(dt);
                    //pass Asdf1234! for dfdff and Farhad123! for another

                    //hasing and salting

                    string salt = dt.Rows[0]["saltpassword"].ToString();
                    string hasandsalted = hashed.SHA256Hash(Password.Text, salt);

                    if (dt.Rows.Count != 0 && hasandsalted == dt.Rows[0]["UserPassword"].ToString())
                    {
                        if (remembercheck.Checked)
                        {
                            Response.Cookies["username"].Value = Email.Text;
                            Response.Cookies["userpass"].Value = Password.Text;
                            Response.Cookies["username"].Expires = DateTime.Now.AddHours(24);
                            Response.Cookies["userpass"].Expires = DateTime.Now.AddHours(24);


                        }
                        else
                        {
                            Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
                            Response.Cookies["userpass"].Expires = DateTime.Now.AddDays(-1);
                        }
                        Session["user"] = Email.Text;
                        Response.Redirect("Home.aspx?");
                    }

                    else
                    {

                        labelinvalid.Text = "Invalid User Name and Password";
                    }

                }
            }

                    
               



        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void forgotpassword_Click(object sender, EventArgs e)
        {
            Server.Transfer("forgotpassword.aspx");
        }
    }
}