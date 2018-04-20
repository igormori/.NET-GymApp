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

            using (SqlConnection connection = new SqlConnection(hashed.constring))
            {

                if (Session["user"] != null)
                {
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = "SELECT * FROM Workouts_table ";
                    connection.Open();
                    DataTable dt = new DataTable();
                    SqlDataAdapter sqladapter = new SqlDataAdapter(cmd);
                    sqladapter.Fill(dt);
                    //query
                    string r = dt.Rows[0]["WorkoutName"].ToString();
                    

                    if (Request.QueryString["selected"].ToString() == "begining")
                    {
                        string s1,s2, s3,d1,d2,d3;
                        s2=s3=d1=d2=d3=s1 = "";
                        
                        for ( int i=0; i< 4; i++)
                        {
                            if(i==0)
                            {
                                s1= dt.Rows[i]["WorkoutName"].ToString();
                                d1= dt.Rows[i]["Description"].ToString();
                            }
                            if (i == 1)
                            {
                                s2 = dt.Rows[i]["WorkoutName"].ToString();
                                d2 = dt.Rows[i]["Description"].ToString();
                            }
                            if (i == 3)
                            {
                                s3 = dt.Rows[i]["WorkoutName"].ToString();
                                d3 = dt.Rows[i]["Description"].ToString();
                            }
                            leg1.Text = s1;
                            leg1d.Text = d1;
                            leg2.Text = s2;
                            leg2d.Text = d2;

                        }


                        

                    }
                }

            }
        }
    }
}