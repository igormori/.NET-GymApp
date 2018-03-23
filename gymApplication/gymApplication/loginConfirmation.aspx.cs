using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gymApplication
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Message.Text = Request.QueryString["response"].ToString();
            if(Message.Text == "YouAreLoggedIn")
            {
                Message.Text = "<h1> You are logged in </h1>";
            }

        }
    }
}