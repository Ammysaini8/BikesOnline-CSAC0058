using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SRVTextToImage;
using System.Drawing;
using System.Drawing.Imaging;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Home
{
    public partial class Signup1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool isCaptchaValid = false;
            if (Session["CaptchaText"] != null && Session["CaptchaText"].ToString() == txtCaptchaText.Text)
            {
                isCaptchaValid = true;
            }

            if (isCaptchaValid)
            {
                lblMessage.Text = "Captcha Validation Success";
                lblMessage.ForeColor = Color.Green;
                SqlConnection con = new SqlConnection("Data Source=amrinder\\sqlexpress;Initial Catalog=Project;Integrated Security=True");
                con.Open();
                if (con.State == System.Data.ConnectionState.Open)

                {
                    string a = "insert into signup(username,password, Confirm_password)values('" + uname.Text.ToString() + "','"
                        + pass.Text.ToString() + "','" + cpass.Text.ToString() + "')";

                    SqlCommand cmd = new SqlCommand(a, con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");

                    



                }
            }
            else
            {
                lblMessage.Text = "Please apply Captcha to Signup";
                lblMessage.ForeColor = Color.Red;
            }
           
        }
    }
}