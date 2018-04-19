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

            int count = 0;

            
           for (int i = 0; i<25; i++)
            {
                DropDownList1.Items.Insert(i, i.ToString());
                count++;

            }





        }
     
    }
}