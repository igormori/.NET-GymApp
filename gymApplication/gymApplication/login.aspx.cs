using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gymApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            MessageArea.Visible = false;

            // this is to hidde my required fild validator messages 
            if (IsPostBack)
            {
                if (RequiredFieldValidator1.IsValid)
                {
                    MessageArea.Visible = false;
                }
                else
                {
                    MessageArea.Visible = true;
                }
            }

            // this will be the massege to send to support confirmation page 

            if (RequiredFieldValidator1.IsValid && RequiredFieldValidator2.IsValid)
            {
                Response.Redirect("loginConfirmation.aspx?response=YouAreLoggedIn");
            }
            else
            {
                Response.Redirect("loginConfirmation.aspx?response=Loginfailed");
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}