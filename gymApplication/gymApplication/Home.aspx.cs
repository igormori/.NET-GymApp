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

            

            results.Text = count.ToString();

        }


    }
}

