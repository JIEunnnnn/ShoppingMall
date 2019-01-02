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
    public partial class writelist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnwrite_Click(object sender, EventArgs e)
        {

            string strfn = FileUpload1.FileName;
            string strfs = Server.MapPath("~/Photo/" + strfn);
            FileUpload1.SaveAs(strfs);

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO dbWatch(name, title, contents, writedate, price, fileurl) VALUES("
                   + "N'" + txtName.Text + "', N'" + txttitle.Text + "', N'"
                   + txtcontents.Text + "', '" + DateTime.Now.ToShortDateString()+ txtprice.Text +  "', 0, '" + strfn + "')";

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();

            string strnow = "<script>alert('사진등록');</script>";
            Page.ClientScript.RegisterClientScriptBlock(GetType(), "Write", strnow);

        }

        protected void btnlist_Click(object sender, EventArgs e)
        {
            //사진리스트
            Response.Redirect("~/list.aspx");
        }
    }
}