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
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "Update tblBoard SET readcount = readcount + 1 Where num =" + Request["No"];
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();

            cmd.CommandText = "Select * from tblBoard Where num =" + Request["No"];
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();


            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label1.Text = dr["name"].ToString();

                Label2.Text = dr["writedate"].ToString();

                Label3.Text = dr["readcount"].ToString();

                Label4.Text = dr["title"].ToString();

                TextBox1.Text = dr["contents"].ToString();
                

            }
            dr.Close();
            con.Close();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/List.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // 삭제
            Response.Redirect("~/Password.aspx?Action=Delete&No=" + Request["No"]);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // 수정
            Response.Redirect("~/Password.aspx?Action=Modify&No=" + Request["No"]);
        }
    }
}