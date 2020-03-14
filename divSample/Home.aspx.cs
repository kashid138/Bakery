using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using divSample.App_Code;
using System.Data;
using System.Data.SqlClient;

namespace divSample
{
    public partial class Home : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
          if (Session["username"] == null)
          {
              if (Session["username"] == null)
              {

                  Response.Redirect("Login1.aspx");
              
              }
              Label2.Text = "Hello Guest,";
              LinkButton2.Visible = true;
              LinkButton1.Visible = false;
          }
        else
        {
            Label2.Text = "Hello " + Session["username"].ToString();
            LinkButton1.Visible = true;
            LinkButton2.Visible = false;

        }

          DataTable dt = new DataTable();
          dt = (DataTable)Session["Buyitems"];
          if (dt != null)
          {

              lblCart.Text = dt.Rows.Count.ToString();
          }
          else
          {
              lblCart.Text = "0";
          }
   }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayProduct.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login1.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownlist1"));
            Response.Redirect("Cart.aspx?Id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }

        

    }
}