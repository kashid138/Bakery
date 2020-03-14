using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace divSample
{
    public partial class Login1 : System.Web.UI.Page
    {
     
        //int i;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void b1_Click(object sender, EventArgs e)
        {
            //       i=0;
            //    con.Open();
            //    SqlCommand cmd = con.CreateCommand();
            //    cmd.CommandType = CommandType.Text;
            //    cmd.CommandText = "select * from admin_Login where username='"+t1.Text+"' and password='" +t2.Text+ "'";
            //    cmd.ExecuteNonQuery();
            //    DataTable dt = new DataTable();
            //    SqlDataAdapter da = new SqlDataAdapter(cmd);
            //    da.Fill(dt);
            //    i=Convert.ToInt32(dt.Rows.Count.ToString());
            //    Response.Write(i);
            //    if (i == 1)
            //    {
            //        Response.Redirect("Home.aspx");
            //    }
            //    else
            //    {
            //        lblmsg.ForeColor = Color.Red;
            //        lblmsg.Text = "error";                                                                                                                                                           
            //    }
            //    con.Close();

            //}


            //Method:2
            //SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;");
            //SqlDataAdapter sda = new SqlDataAdapter("select * from Muser where username='" + t1.Text + "' and password='" + t2.Text + "' and usertype='" + DropDownList1.SelectedItem.ToString() + "'", con);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //if (dt.Rows.Count > 0)
            //{

            //    Response.Write("<script>alert('You are logged in as-" + dt.Rows[0][2] + "')</script>");
            //    if (DropDownList1.SelectedIndex == 1)
            //    {
            //        Server.Transfer("Home.aspx");
            //    }
            //    else if (DropDownList1.SelectedIndex == 2)
            //    {
            //        Server.Transfer("FAQs.aspx");
            //    }
            //}
            //else
            //{
            //    Response.Write("error");
            //}


            //}

            //Method:3

            String mycon = "Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from Muser where username='" + t1.Text + "' and password='"+t2.Text+"' and usertype='"+DropDownList1.SelectedItem.ToString()+"'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = new DataTable();//
            da.Fill(dt);//
            String uname;
            String pass;
            Response.Write("<script>alert('You are logged in as-" + dt.Rows[0][2] + "')</script>");
            if (ds.Tables[0].Rows.Count > 0 && dt.Rows.Count > 0)
            {
                 uname = ds.Tables[0].Rows[0]["username"].ToString();
                pass = ds.Tables[0].Rows[0]["password"].ToString();

                scon.Close();
                if (uname == t1.Text && pass == t2.Text && DropDownList1.SelectedIndex == 1)
                {
                    Session["username"] = uname;
                    Session["buyitems"] = null;
                    fillsavedCart();
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }
                else if((DropDownList1.SelectedIndex == 2))
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lblmsg.Text = "Invalid Username or Password - Relogin with Correct Username Password";
                }
            }
            else
            {
                lblmsg.Text = "Invalid Username or Password - Relogin with Correct Username Password";
            }
            
        }
        private void fillsavedCart()
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("Id");
            dt.Columns.Add("ProductName");
            dt.Columns.Add("quantity");
            dt.Columns.Add("ProductPrice");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("ProductImg");

            String mycon = "Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from SavedCartDetails where username='" + Session["username"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                int counter = ds.Tables[0].Rows.Count;
                while (i < counter)
                {
                    dr = dt.NewRow();
                    dr["sno"] = i + 1;
                    dr["Id"] = ds.Tables[0].Rows[i]["Id"].ToString();
                    dr["ProductName"] = ds.Tables[0].Rows[i]["ProductName"].ToString();
                    dr["ProductImg"] = ds.Tables[0].Rows[i]["ProductImg"].ToString();
                    dr["quantity"] = "1";
                    dr["ProductPrice"] = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                    int price1 = Convert.ToInt16(ds.Tables[0].Rows[i]["price"].ToString());
                    int quantity1 = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                    int totalprice1 = price1 * quantity1;
                    dr["totalprice"] = totalprice1;
                    dt.Rows.Add(dr);
                    i = i + 1;
                }

            }
            else
            {
                Session["buyitems"] = null;
            }
            Session["buyitems"] = dt;
        }
         

        
    }
}

 