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
            if (!IsPostBack)
            {
                PolulateGridview();
            }
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();

            if (con.State == System.Data.ConnectionState.Open)
            {
                string a = "insert into Product (Brand_name,Product_id,Product_name,Sales_price,Quantity)values('" + DropDownList1.Text.ToString() + "','" + id.Text.ToString() + "','" + PName.Text.ToString()
                    + "','" + SPrice.Text.ToString() + "','" + DropDownList2.Text.ToString() + "')";
                SqlCommand camand = new SqlCommand(a, con);
                camand.ExecuteNonQuery();
                String myquery = "Select *from Product";
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
        void PolulateGridview()
        {

            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(cnstring))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Product", sqlCon);

                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GridView1.DataSource = dtbl;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = "No Data Found . . !";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

            }

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(cnstring))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO Product (Product_id, Brand_name, Product_name,Sales_price,Quantity) VALUES (@Brand_ID, @Brand_name,@Product_name,@Sales_price,@Quantity)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@Product_", (GridView1.FooterRow.FindControl("txtProduct_Footer") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Brand_name", (GridView1.FooterRow.FindControl("txtBrand_nameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Product_name", (GridView1.FooterRow.FindControl("txtProduct_nameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Sales_price", (GridView1.FooterRow.FindControl("txtSales_priceFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Quantity", (GridView1.FooterRow.FindControl("txtQuantityFooter") as TextBox).Text.Trim());

                        sqlCmd.ExecuteNonQuery();
                        PolulateGridview();
                        lblSucessMessage.Text = "New Record Added";
                        lblErrorMessage.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSucessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;

            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            PolulateGridview();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            PolulateGridview();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(cnstring))
                {
                     sqlCon.Open();
                    string query = "UPDATE Product SET Product_id =@Product_id, Brand_name=@Brand_name,Product_name=@Product_name,Sales_price=@Sales_price,Quantity=@Quantity WHERE Id=@Id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Product_id", (GridView1.Rows[e.RowIndex].FindControl("txtProduct_id") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Brand_name", (GridView1.Rows[e.RowIndex].FindControl("txtBrand_name") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Product_name", (GridView1.Rows[e.RowIndex].FindControl("txtProduct_name") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Sales_price", (GridView1.Rows[e.RowIndex].FindControl("txtSales_price") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Quantity", (GridView1.Rows[e.RowIndex].FindControl("txtQuantity") as TextBox).Text.Trim());
                  
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    GridView1.EditIndex = -1;
                    PolulateGridview();
                    lblSucessMessage.Text = "Selected Row Updated";
                    lblErrorMessage.Text = "";
                }

            }
            catch (Exception ex)
            {
                lblSucessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(cnstring);
            sqlcon.Open();
            SqlCommand sqlCmd = sqlcon.CreateCommand();
            sqlCmd.CommandType = CommandType.Text;
            sqlCmd.CommandText = "update Product set Product_id ='" +id.Text.ToString()+" + Brand_name ='" + DropDownList1.Text.ToString() + "'," + 
                PName.Text.ToString() + "',"+ SPrice.Text.ToString() + "'," + DropDownList2.Text.ToString() + "'," +

          
            sqlCmd.ExecuteNonQuery();
            sqlcon.Close();
            id.Text = "";
            DropDownList1.Text = "";
            PName.Text = "";
            SPrice.Text = "";
            DropDownList2.Text = "";

            string query = "select * from Product";
            SqlConnection con = new SqlConnection(cnstring);
            SqlCommand sqlcmd1 = new SqlCommand(query, con);
            sqlCmd.CommandText = query;
            sqlCmd.Connection = con;
            SqlDataAdapter sqlda = new SqlDataAdapter();
            sqlda.SelectCommand = sqlcmd1;
            DataSet ds = new DataSet();
            sqlda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            sqlcon.Close();
            GridView1.EditIndex = -1;



        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(cnstring))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM Product WHERE Id=@Id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Id", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PolulateGridview();
                    lblSucessMessage.Text = "Selected Row deleted";
                    lblErrorMessage.Text = "";
                }

            }
            catch (Exception ex)
            {
                lblSucessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}
    
