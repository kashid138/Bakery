using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace divSample
{
    public partial class DisplayProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt=(DataTable)Session["Buyitems"];
            if (dt != null)
            {

                lbl1.Text = dt.Rows.Count.ToString();
            }
            else
            {
                lbl1.Text = "0";
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownlist1"));
            Response.Redirect("Cart.aspx?Id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }
    }
}