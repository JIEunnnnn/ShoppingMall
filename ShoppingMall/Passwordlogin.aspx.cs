using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingMall
{
    public partial class Passwordlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Intro.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userId = Page.User.Identity.Name;


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "Select * From Users Where UserId = @userId ";
            cmd.Parameters.AddWithValue("@userId", userId);

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            string strPass;
            dr.Read();
            strPass = dr["Password"].ToString();

            dr.Close();

            if (strPass.CompareTo(TextBox1.Text) == 0 && Request["Action"].CompareTo("Modify") == 0)
            {
                Response.Redirect("~/Modifylogin.aspx?No=" + Request["No"]);
            }

            if (strPass.CompareTo(TextBox1.Text) == 0 &&
                    Request["Action"].CompareTo("Delete") == 0)
            {
                SqlConnection con2 = new SqlConnection();
                con2.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "ConnectionString"].ConnectionString;
                con2.Open();

                SqlCommand cmd2 = new SqlCommand();
                cmd2.Connection = con2;
                cmd2.CommandText = "Delete From Users Where UserId = @userId ";
                cmd2.ExecuteNonQuery();

                Response.Redirect("~/LoginPage.aspx");
            }
            con.Close();
        }
    }
}