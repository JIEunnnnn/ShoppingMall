using Microsoft.Ajax.Utilities;
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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "ConnectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "WriteUsers";
            cmd.CommandType = CommandType.StoredProcedure; // writeUsers가 저장 프로시저임!! 

            cmd.Parameters.AddWithValue("@UserID", txtID.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Age", Convert.ToInt32(txtAge.Text));

            cmd.ExecuteNonQuery();

            con.Close();

            string strst = "<script>alert('가입완료');document.location.herf='Login.aspx'; </script>";

            Page.ClientScript.RegisterClientScriptBlock(GetType(), "goDefault", strst);


            Response.Redirect("Login.aspx"); 

        }

      
    }
}