using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practicejobportal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnuser_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin1.aspx");
        }

        protected void btnemployee_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employeelogin1.aspx");
        }

        protected void btnadmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin1.aspx");
        }
    }
}