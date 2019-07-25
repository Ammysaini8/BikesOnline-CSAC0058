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
    public partial class Inventory : System.Web.UI.Page
    {
        public string cnstring = "Data Source=amrinder\\sqlexpress;Initial Catalog=Project;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
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
            con.Close();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            String myquery = "Select *from Product";
            SqlConnection con = new SqlConnection(cnstring);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet set = new DataSet();
            da.Fill(set);
            GridView2.DataSource = set;
            GridView2.DataBind();
            con.Close();
        }
    }
}