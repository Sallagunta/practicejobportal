using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace practicejobportal
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string Gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "male";
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "female";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            Gender = "others";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection("Data source=LAPTOP-RSVLL0Q3\\SQLEXPRESS;initial Catalog=officialjobportal;Integrated Security=True");
      
            SqlCommand adp = new SqlCommand("insert into  userinformation values(  '" + txtfname.Text + "' ,  '" + txtlname.Text + "', "+txtmobile.Text+"  ,  '" + txtemail.Text + "',  '" +txtpwd.Text.Replace(" ", "") + "' , '" + txtretypepwd.Text.Replace(" ", "") + "' ,'"+Gender+"' )" , con );
            con.Open();
            adp.ExecuteNonQuery();
            con.Close();
            Response.Write("<script> alert('user is registered succesfully')</script>");
           
            Response.Redirect("userlogin1.aspx");
        }
    }
}