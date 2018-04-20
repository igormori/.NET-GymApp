using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gymApplication
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["leg1"] = "leg1";
            Session["leg1"] = "leg2";
            Session["back1"] = "back1";
            Session["back2"] = "back2";


        }
     
    }
}