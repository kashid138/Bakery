using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using divSample.App_Code;
using System.Data;
using System.Data.SqlClient;

namespace divSample
{
    public partial class ViewProduct1 : System.Web.UI.Page
    {
        Class1 da = new Class1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                productInfo();
            }
        }
        protected void productInfo()
        {
            DataTable dt = da.viewProductData();
            ProductGV.DataSource = dt;
            ProductGV.DataBind();
            ProductGV.UseAccessibleHeader = true;
            ProductGV.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void ProductGV_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ProductGV.EditIndex = e.NewEditIndex;
            productInfo();
        }

        protected void ProductGV_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            ProductGV.EditIndex = -1;
            productInfo();
        }

        protected void ProductGV_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string pid = ProductGV.DataKeys[e.RowIndex].Value.ToString();
            GridViewRow row = ProductGV.Rows[e.RowIndex];
            string pname = ((TextBox)row.FindControl("txtpname")).Text;
            string price = ((TextBox)row.FindControl("txtpprice")).Text;
            string descr = ((TextBox)row.FindControl("txtdescr")).Text;
            string quantity = ((TextBox)row.FindControl("txtpquantity")).Text;
            string img = ((TextBox)row.FindControl("txtpimg")).Text;

            //da.UpdateProduct(pid, pname, price, descr, quantity, img);
            ProductGV.EditIndex = -1;
            productInfo();
        }

        protected void ProductGV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string pid = ProductGV.DataKeys[e.RowIndex].Value.ToString();
            GridViewRow row = ProductGV.Rows[e.RowIndex];
            da.deleteProduct(pid);
            productInfo();
        }

        protected void ProductGV_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            ProductGV.PageIndex = e.NewPageIndex;
            productInfo();
        }
    }
}