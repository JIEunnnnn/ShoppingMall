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
    public partial class Write2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = Page.User.Identity.Name;


            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;

            cmd2.CommandText = "Select * From Users Where UserId = @userId ";
            cmd2.Parameters.AddWithValue("@userId", userId);
            cmd2.CommandType = CommandType.Text;
            cmd2.ExecuteNonQuery();

            SqlDataReader dr = cmd2.ExecuteReader();

            if (dr.Read())
            {
                if (!IsPostBack)
                {
                    Label1.Text = dr["name"].ToString();

                }
            }
            dr.Close();
            con.Close();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

         
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "writeBoard";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //  cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", Label1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@title", TextBox4.Text);
            cmd.Parameters.AddWithValue("@contents", TextBox5.Text);

            cmd.Parameters.AddWithValue("@writeDate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@readcount", 0);
            cmd.ExecuteNonQuery();
            con.Close();


        

            Response.Redirect("~/Notice.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Notice.aspx");
        }
    }
}