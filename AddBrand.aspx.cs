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
    public partial class AddBrand : System.Web.UI.Page
    {
        public string cnstring = "Data Source=amrinder\\sqlexpress;Initial Catalog=Project;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            String myquery = "Select *from Brand1";
            SqlConnection con = new SqlConnection(cnstring);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet set = new DataSet();
            da.Fill(set);
            GridView1.DataSource = set;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "insert into Brand1(Brand_name,Brand_ID)values('"
                    + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "')";
                SqlCommand comd = new SqlCommand(a, con);
                comd.ExecuteNonQuery();
                String myquery = "Select *from Brand1";
                SqlConnection conn = new SqlConnection(cnstring);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = conn;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet set = new DataSet();
                da.Fill(set);
                GridView1.DataSource = set;
                GridView1.DataBind();

            }



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        
 
        }
    }
}