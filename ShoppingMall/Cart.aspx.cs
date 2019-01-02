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
    public partial class Cart : System.Web.UI.Page
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


            cmd.CommandText = "SELECT * FROM tblCart WHERE UserID = @userId";
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

           

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label1.Text = dr["userId"].ToString(); //고객ID
               

            }
            dr.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Intro.aspx");

        }
    }
}