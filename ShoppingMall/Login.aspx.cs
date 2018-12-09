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
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                if (IsRightUser(TextBox1.Text, TextBox2.Text))
                {
                    FormsAuthentication.SetAuthCookie(TextBox1.Text, false); //인증쿠키값을 부여

                string strst = "<script>alert('로그인완료');location.herf='Site.Master'; </script>";

                Page.ClientScript.RegisterClientScriptBlock(GetType(), "goDefault", strst);

                Response.Redirect("~/Site.Master");
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            // 아이디 비밀번호 찾기
            Response.Redirect("~/Find.aspx");
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            // 회원가입하기 
            Response.Redirect("~/Register.aspx");
        }
    }
}