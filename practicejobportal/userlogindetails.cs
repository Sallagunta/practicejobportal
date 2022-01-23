using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace practicejobportal
{
    public class userlogindetails
    {
        string sqlConnectionStr = "Data source=LAPTOP-RSVLL0Q3\\SQLEXPRESS;initial Catalog=officialjobportal;Integrated Security=True";
        public DataTable selecttutorial() 
        {
            SqlConnection sqlConnectionObj = new SqlConnection(sqlConnectionStr);
         
            SqlCommand sqlCommandObj = new SqlCommand("select resumefile from candedatedetails", sqlConnectionObj);
            sqlConnectionObj.Open();
            SqlDataReader sqlreaderobj = sqlCommandObj.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(sqlreaderobj);
            sqlConnectionObj.Close();
            return dt;
        }
    }
}

