using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingMall
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsRightUser(txtUserID.Text, txtPassword.Text))
            {
                FormsAuthentication.SetAuthCookie(txtUserID.Text, false); //인증쿠키값을 부여
                Response.Redirect("~/Intro.aspx");
               
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showMsg", "<script>alert('잘못된 사용자입니다');</script>");
            }
        }

        private bool IsRightUser(string userId, string password)
        {
            bool rst = false;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * From Users Where UserId = @userId And Password = @password";
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.Parameters.AddWithValue("@Password", password);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                rst = true;
            }
            dr.Close();
            con.Close();
            return rst;
        }
    }
}