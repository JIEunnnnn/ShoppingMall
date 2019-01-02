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
    public partial class listClick : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM dbWatch WHERE num = " + Request["No"];
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

           
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label1.Text = dr["title"].ToString(); //상품이름
                Label2.Text = dr["price"].ToString(); //가격
                
                lblFileName.Text = dr["fileurl"].ToString();
       
                Image1.ImageUrl = "/Photo/" + lblFileName.Text;


            }
            dr.Close();
            con.Close();

        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/list.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userId = Page.User.Identity.Name;


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;

            cmd2.CommandText = "INSERT INTO tblCart(UserID, name , price) VALUES("

                 + "N'" + userId + "', N'" + Label1.Text + "', N'"
                 + Label2.Text +"' )";

            cmd2.CommandType = System.Data.CommandType.Text;
            cmd2.ExecuteNonQuery();
            con.Close();


            string strst = "<script>alert('장바구니담기완료');document.location.herf='Login.aspx'; </script>";

            Page.ClientScript.RegisterClientScriptBlock(GetType(), "goDefault", strst);
        }
    }
}