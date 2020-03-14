using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace divSample
{
    public partial class Add_item : System.Web.UI.Page
    {
        string mainconn = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
             SqlConnection sqlconn = new SqlConnection(mainconn);
       FileUpload1.SaveAs(Server.MapPath("~/img/")+Path.GetFileName(FileUpload1.FileName));
            string link="img/"+Path.GetFileName(FileUpload1.FileName);
            SqlCommand cmd = new SqlCommand("insert into ProductCatlog(ProductCatlog,ProductName,ProductDesc,ProductPrice,ProductImg) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + link + "')",sqlconn);
            cmd.CommandType = CommandType.Text;
            
                sqlconn.Open();
                cmd.ExecuteNonQuery();
                sqlconn.Close();
         
            Label1.Text = "Product Added!";
        
        
        }
    }
}