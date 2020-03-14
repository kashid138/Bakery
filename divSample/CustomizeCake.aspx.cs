using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace divSample
{
    public partial class CustomizeCake : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/img/CustomizeCake") + Path.GetFileName(FileUpload1.FileName));
            string link = "img/" + Path.GetFileName(FileUpload1.FileName);
            SqlCommand cmd = new SqlCommand("insert into Customize(Name,Email,Address,Number,Size,ImgFile)values('" + textName.Text + "','" + textEmail.Text + "','" + textAddress.Text + "','" + textPhone.Text + "','" + DropDownList1.SelectedItem + "','" +link+ "')", con);
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