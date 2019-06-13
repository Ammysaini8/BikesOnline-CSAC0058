using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Home
{
    public partial class WebForm2 : System.Web.UI.Page

    {
        public string cnstring = "Data Source=amrinder\\sqlexpress;Initial Catalog=Project;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);

            con.Open();

            if (con.State == System.Data.ConnectionState.Open) 


            {
                String A = "select * from signup where username='" + TextBox1.Text
                  + "'and password ='" + TextBox2.Text + "'";
                SqlCommand cmd = new SqlCommand(A, con);


                cmd.ExecuteNonQuery();
                Response.Write("Connected successfully");
                Response.Redirect("~/Home.aspx");
                con.Close();

            }
            
                
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("~/Signup.aspx");
            

        }
    }
}