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
    public partial class WebForm4 : System.Web.UI.Page
    {
        static string resumelink;
        static Int32 applicationid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(uploadresume() == true)
            {
                string query = " insert into candedatedetails(applicationid,cname,address,emailaddress,mobilenumber,resumefile) values(" + applicationid + ",'" + TextBox1.Text + "' ,'" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ", '" + resumelink + "')";
                string mycon= "Data source=LAPTOP-RSVLL0Q3\\SQLEXPRESS;initial Catalog=officialjobportal;Integrated Security=True";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label3.Text = "your application id is " + applicationid.ToString() + "for furthur reference.Thanks for apply for the post.We will reach you soon";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }

        }
        private Boolean uploadresume()
        {
            Boolean resumesaved = false;
            if (FileUpload1.HasFile == true)
            {
                string contenttype = FileUpload1.PostedFile.ContentType;
                if (contenttype == "application/pdf")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;
                    getapplicationid();
                    FileUpload1.SaveAs(Server.MapPath("~/uploadedresume/") + applicationid + ".pdf");
                    resumelink = "~/uploadedresume/" + applicationid + ".pdf";
                    resumesaved = true;
                    Label4.Text = " ";
                }
                else
                {
                    Label4.Text = " upload resume in pdf format only";
                }
            }
            else
            {
                Label4.Text = "Kindly upload resume before apply in pdf format ";
            }
            return resumesaved;
        }



        public void getapplicationid()
        {
            string mycon = "Data source=LAPTOP-RSVLL0Q3\\SQLEXPRESS;initial Catalog=officialjobportal;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon);
            string myquery = "select applicationid from candedatedetails";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);

            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                applicationid = 1001;
            }
            else
            {
                string mycon1= "Data source=LAPTOP-RSVLL0Q3\\SQLEXPRESS;initial Catalog=officialjobportal;Integrated Security=True";
                SqlConnection scon1 = new SqlConnection(mycon1);
                string myquery1 = "select max(applicationid) from candedatedetails";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                applicationid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());
                applicationid = applicationid + 1;
                scon1.Close();
            }



        }
    }
}
