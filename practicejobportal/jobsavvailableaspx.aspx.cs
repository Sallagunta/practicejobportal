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
    public partial class jobsavvailableaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlStr = "Data source=LAPTOP-RSVLL0Q3\\SQLEXPRESS;initial Catalog=officialjobportal;Integrated Security=True";

            SqlConnection conn = new SqlConnection(sqlStr);
            conn.Open();
            string mycon = "select * from jobdetails ";
            SqlCommand comm = new SqlCommand(mycon,conn);
           

            SqlDataReader reader = comm.ExecuteReader();
            
            
            gvdetails.DataSource = reader;
            gvdetails.DataBind();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sqlStr = "Data source=LAPTOP-RSVLL0Q3\\SQLEXPRESS;initial Catalog=officialjobportal;Integrated Security=True";

            SqlConnection conn = new SqlConnection(sqlStr);
            conn.Open();
            string mycon = "select * from jobdetails ";
            SqlCommand comm = new SqlCommand(mycon);
            conn.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("jobdetails.aspx");
        }
    }
    }
