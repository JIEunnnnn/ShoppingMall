using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1127
{
    public partial class Write : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "WriteBoard";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@title", TextBox4.Text);
            cmd.Parameters.AddWithValue("@contents", TextBox5.Text);

            cmd.Parameters.AddWithValue("@writeDate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@readcount", 0);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/list.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/list.aspx");
        }
    }
}