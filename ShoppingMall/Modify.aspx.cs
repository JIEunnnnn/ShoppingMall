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
    public partial class Modify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        

          if (!IsPostBack)
            {
                string source = "Server=(localdb)\\MSSQLLocalDB;Initial Catalog = Users;Integrated Security = True;";


        SqlConnection con = new SqlConnection(source);
        con.Open();

                SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
                cmd.CommandText = "SELECT* FROM tblBoard WHERE num = " + Request["No"];
                
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    //데이터베이스에 있는 내용이 lblname.text로 쏙 들어옴
                    lblname.Text = dr["name"].ToString();
        txttitle.Text = dr["title"].ToString();
        txtContents.Text = dr["contents"].ToString();
    }
    dr.Close();
                con.Close();
            }
         


        }

        protected void btnModify_Click(object sender, EventArgs e)
{
    SqlConnection con = new SqlConnection();
    con.ConnectionString = ConfigurationManager.ConnectionStrings[
        "ConnectionString"].ConnectionString;
    con.Open();

    SqlCommand cmd = new SqlCommand();
    cmd.Connection = con;
    cmd.CommandText = "Update tblBoard Set title= N'"
      + txttitle.Text + "', contents = N'" + txtContents.Text + "' Where num = " + Request["No"];
    cmd.CommandType = CommandType.Text;
    cmd.ExecuteNonQuery();

    con.Close();

    Response.Redirect("~/Notice.aspx");
}

protected void btnReset_Click(object sender, EventArgs e)
{
    Response.Redirect("~/Notice.aspx");
}
    }
}
    
