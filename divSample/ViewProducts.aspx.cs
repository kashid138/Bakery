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
 

namespace divSample
{
    public partial class ViewProducts : System.Web.UI.Page
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
            ProductGV.DataSource = dt;//the source of gridview is the table that is returned by function which should include th products
            ProductGV.DataBind();//bind the data to gridview
        }
    }
}