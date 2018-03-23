using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gymApplication
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if(Request.QueryString["response"].ToString() == "ThankYou")
            {
                Label1.Text = "<h1>Thank you for the completing the survey.</h1>";
            }
            
        }
    }
}