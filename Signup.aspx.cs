using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Home
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public string cnstring = "Data Source=amrinder\\sqlexpress;Initial Catalog=Project;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                SqlConnection conn = new SqlConnection(cnstring);
                conn.Open();
                if (conn.State == System.Data.ConnectionState.Open)
                {
                    string a = "insert into signup(username,password, Confirm_password)values('" + username.Text.ToString() + "','"
                        + pswd.Text.ToString() + "','" + cpswd.Text.ToString() + "')";

                    SqlCommand cmd = new SqlCommand(a, conn);

                    cmd.ExecuteNonQuery();

                    Response.Write("Connect Successfully");
                    Response.Redirect("~/Home.aspx");
                }
                else
                {
                    Response.Write("failed");
                }
            }
        }
    }
}