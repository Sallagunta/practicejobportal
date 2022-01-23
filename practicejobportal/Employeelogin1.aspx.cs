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
    public partial class Employeelogin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlStr = "Data source=LAPTOP-RSVLL0Q3\\SQLEXPRESS;initial Catalog=officialjobportal;Integrated Security=True";

            SqlConnection conn = new SqlConnection(sqlStr);
            conn.Open();
            string checkuser = "select count(*) from userlogin where emailid ='" + TextBox1.Text + "'";
            SqlCommand comm = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            Response.Write("successfully login!");
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string Checkpassword = "select pasword from userlogin where emailid = '" + TextBox1.Text + "' ";
                SqlCommand passcomm = new SqlCommand(Checkpassword, conn);
                string password = passcomm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("password is correct");
                   
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
            string sqlConnectionStr = "Data source=LAPTOP-RSVLL0Q3\\SQLEXPRESS;initial Catalog=officialjobportal;Integrated Security=True";
            
            
                SqlConnection sqlConnectionObj = new SqlConnection(sqlConnectionStr);

                SqlCommand sqlCommandObj = new SqlCommand("select resumefile  from candedatedetails", sqlConnectionObj);
                SqlConnection conn = new SqlConnection(sqlConnectionStr);
                conn.Open();
                string mycon = "select resumefile from candedatedetails ";
                SqlCommand comm = new SqlCommand(mycon, conn);


                SqlDataReader reader = comm.ExecuteReader();


                gvdetails.DataSource = reader;
                gvdetails.DataBind();
              
            }
        }
    }
