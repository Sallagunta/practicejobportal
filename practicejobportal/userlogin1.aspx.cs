using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace practicejobportal
{
    public partial class userlogin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page lastpage = (Page)Context.Handler;
            

        }

        protected void Btnlogin_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlStr = "Data source=LAPTOP-RSVLL0Q3\\SQLEXPRESS;initial Catalog=officialjobportal;Integrated Security=True";

            SqlConnection conn = new SqlConnection(sqlStr);
            conn.Open();
           string checkuser= "select count(*) from userlogin where emailid ='"+ TextBox1.Text+ "'";
            SqlCommand comm = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
           // Response.Write("successfully login!");
            conn.Close();
            if(temp == 1)
            {
                conn.Open();
                string Checkpassword = "select pasword from userlogin where emailid = '" + TextBox1.Text + "' ";
                SqlCommand passcomm = new SqlCommand(Checkpassword, conn);
                string password = passcomm.ExecuteScalar().ToString().Replace(" ","");
                if(password==TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("password is correct");
                    Response.Redirect("jobsavvailableaspx.aspx");
                }
                else
                {
                    Response.Write("password is invalid");
                   
                }
               
            }
            else
            {
                Response.Write("emailid is invalid");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userregestration.aspx");
        }
    }
}