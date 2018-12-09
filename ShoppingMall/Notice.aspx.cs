using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingMall
{
    public partial class About : Page
    {
        string strst = "SELECT [num], [name], [title], [writedate], [readcount], [depth], [refer], [pos] FROM[tblBoard] ORDER BY[refer] DESC, [pos]";


        string strst1;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch1_Click(object sender, EventArgs e)
        {
            strst = "SELECT [num], [name], [title], [writedate], [readcount] FROM tblBoard WHERE " + drdwSearch.SelectedValue + " LIKE '%" + txtSearch.Text + "%' ORDER BY [num] DESC";
            ListDisplay();



        }

        private void ListDisplay()
        {
            SqlDataSource1.SelectCommand = strst;
        }


        protected void btnWrite_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Write.aspx");
        }

    }
}