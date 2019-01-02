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
    public partial class View2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = Page.User.Identity.Name;


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

            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;

            cmd2.CommandText = "Select * From Users Where UserId = @userId ";
            cmd2.Parameters.AddWithValue("@userId", userId);
            cmd2.CommandType = CommandType.Text;
            cmd2.ExecuteNonQuery();

            SqlDataReader dr2 = cmd2.ExecuteReader();

            if (dr2.Read())
            {
                if (!IsPostBack)
                {
                    Label5.Text = dr2["name"].ToString();

                }
            }
            dr2.Close();
            


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

        protected void btnComments_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO tblComment(id, name, contents, writedate) VALUES("
            + "N'" + Int32.Parse(Request["No"]) + "', N'" + Label5.Text + "', N'" +
            txtComment.Text + "', N'" + DateTime.Now.ToShortDateString() + "')";

            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("View.aspx?No=" + Request["No"]);
        }
    }
    }
