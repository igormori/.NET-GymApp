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
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(hashed.constring))
            {

                int ageint = Convert.ToInt32(txtage.Text);
                int weightint = Convert.ToInt32(txtweight.Text);

               

                Random rand = new Random();
                //string imagepath;
                int guid = rand.Next();
                string ext = Path.GetExtension(FileUpload1.FileName);
                string Serverpath;
                Serverpath = "~/pictures/profile/" + guid.ToString() + ext.ToString();

                String pic1 = guid.ToString();
                String pic2 = ext.ToString();
                String pic = pic1 + pic2;


                //string filepath = MapPath(Serverpath).ToString();
                FileUpload1.PostedFile.SaveAs(MapPath(Serverpath));
                
                connection.Open();
                
                string s = "UPDATE Users set bio = '" + txtbio.Text + "', UserAge ='" + ageint + "', UserWeight='" + weightint + "', picture_url ='" + pic + "' WHERE UserEmail ='" + Session["user"] + "'";
                SqlCommand command = new SqlCommand(s, connection);
                command.ExecuteNonQuery();
                Response.Redirect("Profile.aspx");
            }
               

            }
        }
    }
