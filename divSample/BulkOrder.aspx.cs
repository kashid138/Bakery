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
    public partial class BulkOrder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         
        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into BulkOrder(Name,Number,Email,Msg)values('" + TextBoxName.Text + "','" + TextBoxPhone.Text + "','" + TextBoxEmail.Text + "','" + TextBoxMsg.Text + "')", con);
            cmd.CommandType = CommandType.Text;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Thank you for the order!')</script>");
                con.Close();
            }

            catch (Exception ex)
            {
                Literal1.Text = ex.Message;

            }
        }
    } 
}