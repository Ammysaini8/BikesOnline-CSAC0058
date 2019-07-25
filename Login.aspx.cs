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
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter ada = new SqlDataAdapter();
        DataSet ds = new DataSet();



        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=amrinder\\sqlexpress;Initial Catalog=Project;Integrated Security=True";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from signup where username='" + TextBox1.Text
                  + "'and password ='" + TextBox2.Text + "'";
            cmd.Connection = con;
            ada.SelectCommand = cmd;
            ada.Fill(ds, "signup");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("Home.aspx");
            }

            else
            {
                Label5.Text = "!!!Incorrect Username Or Password";
            }
        }
            /**SqlConnection con = new SqlConnection(cnstring);

            con.Open();

            if (con.State == System.Data.ConnectionState.Open)


            {
                String A = "select * from signup where username='" + TextBox1.Text
                  + "'and password ='" + TextBox2.Text + "'";
                SqlCommand cmd = new SqlCommand(A, con);
                cmd.ExecuteNonQuery();
                cmd.Parameters.AddWithValue("username", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("Password", TextBox2.Text.Trim());
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Session["username"] = TextBox1.Text.Trim();
                    Response.Redirect("~/Home.aspx");

                }
                else
                {
                     Response.Write("Incorrect Username Or Password");
                }


                /**String UName = TextBox1.Text;
                String Pass = TextBox2.Text;
                
                int temp = Convert.ToInt32(cmd.ExecuteScalar( ).ToString());
                con.Close();
                if (Page.IsValid && temp==1)
                {
                    con.Open();
                    String CheckQuery = "Select Username from Signup where" +
                        " username='" + TextBox1.Text;
                    SqlCommand comd = new SqlCommand(CheckQuery, con);
                    cmd.ExecuteNonQuery();
                    String Username = comd.ExecuteScalar().ToString();
                  
                    if (UName == TextBox1.Text && Pass == TextBox2.Text)
                    {
                        Response.Redirect("~/Home.aspx");
                    }
                    else
                    {
                        Response.Write("Incorrect Username Or Password");
                        con.Close();
                       
             
      
       
            
     }**/

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }
    }
    }

                

            
                
            
        

    
