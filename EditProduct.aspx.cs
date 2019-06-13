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
    public partial class EditProduct : System.Web.UI.Page
    {
        public string cnstring = "Data Source=amrinder\\sqlexpress;Initial Catalog=Project;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
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
            GridView1.DataSource = set;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();

            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "insert into Product (Brand,Product_id,Product_name,Sales_price,Quantity)values(" + DropDownList1.Text.ToString() + ",'" + id.Text.ToString() + ",'" + PName.Text.ToString()
                    + "," + SPrice.Text.ToString() + "','" + DropDownList2.Text.ToString() + "')'";
                SqlCommand camand = new SqlCommand(a, con);
                camand.ExecuteNonQuery();
                Response.Write("connect successfully");
                con.Close();

            }
        }
    }
}