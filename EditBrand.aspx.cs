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
    public partial class EditBrand : System.Web.UI.Page
    {

        string cnstring = "Data Source=amrinder\\sqlexpress;Initial Catalog=Project;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PolulateGridview();
            }
        }

        void PolulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(cnstring))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Brand1", sqlCon);

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
                        string query = "INSERT INTO Brand1 (Brand_ID, Brand_name) VALUES (@Brand_ID, @Brand_name)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@Brand_ID", (GridView1.FooterRow.FindControl("txtBrand_IDFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Brand_name", (GridView1.FooterRow.FindControl("txtBrand_nameFooter") as TextBox).Text.Trim());
                        
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
                    string query = "UPDATE Brand1 SET Brand_ID =@Brand_ID, Brand_name=@Brand_name WHERE Id=@Id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Brand_ID", (GridView1.Rows[e.RowIndex].FindControl("txtBrand_ID") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Brand_name", (GridView1.Rows[e.RowIndex].FindControl("txtBrand_name") as TextBox).Text.Trim());
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection(cnstring);
            sqlcon.Open();
            SqlCommand sqlCmd = sqlcon.CreateCommand();
            sqlCmd.CommandType = CommandType.Text;
            sqlCmd.CommandText = "update Brand1 set Brand_name ='" + TextBox1.Text.ToString() + "'," +
            "Brand_ID='" + TextBox2.Text.ToString() + "'";
            sqlCmd.ExecuteNonQuery();
            sqlcon.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            string query = "select * from Brand1";
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
                    string query = "DELETE FROM Brand1 WHERE Id=@Id";
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