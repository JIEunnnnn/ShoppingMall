using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingMall
{
    public partial class Modifylogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = Page.User.Identity.Name;



            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "Select * From Users Where UserId = @userId ";
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                if (!IsPostBack)
                {
                    TextBox1.Text = dr["name"].ToString();
                    TextBox2.Text = dr["age"].ToString();
                    TextBox3.Text = dr["UserID"].ToString();

                }
            }
            dr.Close();
            con.Close();
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            string Query = "Update Users Set UserId = @UserID , Name=@Name, Age=@Age" +
          "  Where UserId =  @userId ";
            string userId = Page.User.Identity.Name; // SqlDataReader로 받아온 값을 저장. 

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "ConnectionString"].ConnectionString;

            con.Open();


            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Age", TextBox2.Text);
            cmd.Parameters.AddWithValue("@UserID", TextBox3.Text); // 새로 입력한 ID와 비밀번호를 파라미터 저장. 
            



            cmd.ExecuteNonQuery();

            con.Close();

            string strst = "<script>alert('수정완료');location.herf='login.aspx'; </script>";

            Page.ClientScript.RegisterClientScriptBlock(GetType(), "goDefault", strst);
        }
    }
}