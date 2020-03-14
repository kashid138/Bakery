using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace divSample
{
    public partial class PlacedSuccessfully : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = Request.QueryString["orderid"];
              Label4.Text = Label3.Text;
            findorderdate(Label4.Text);
            findaddress(Label4.Text);
            showgrid(Label4.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            exportpdf();

        }

        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        private void findorderdate(String orderid)
        {
            String mycon ="Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;";
            String myquery = "Select * from OD where orderid='" + orderid + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label5.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();

            }

            con.Close();
        }
        private void findaddress(String orderid)
        {
            String mycon ="Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;";
            String myquery = "Select * from OD where orderid='" + orderid + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label6.Text = ds.Tables[0].Rows[0]["address"].ToString();

            }

            con.Close();
        }
        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("sno");
            dt.Columns.Add("Id");
            dt.Columns.Add("ProductName");
            dt.Columns.Add("quantity");
            dt.Columns.Add("ProductPrice");
            dt.Columns.Add("totalprice");
            String mycon ="Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from OD where orderid='" + orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
                dr["Id"] = ds.Tables[0].Rows[i]["Id"].ToString();
                dr["ProductName"] = ds.Tables[0].Rows[i]["ProductName"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                dr["ProductPrice"] = ds.Tables[0].Rows[i]["ProductPrice"].ToString();
                int price = Convert.ToInt16(ds.Tables[0].Rows[i]["ProductPrice"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                int totalprice = price * quantity;
                dr["totalprice"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

            Label8.Text = grandtotal.ToString();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
    }
}