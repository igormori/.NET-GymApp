using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gymApplication
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public void MyLnkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
        public void SetCopyrightMessage()
        {
            Copyright.InnerHtml = "&copy; Copyright " + DateTime.Now.Year;
        }
    }
}