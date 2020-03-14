using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace divSample
{
    public partial class LoginNew : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString ="Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;";
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        { 
        
        }

        
    }
}