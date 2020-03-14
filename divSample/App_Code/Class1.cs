using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace divSample.App_Code
{
    public class Class1
    {
     SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ToString());

     public Class1()
     {
         con.Open();
     
     }
        public void CloseConnection()
        {
            con.Close();
        }

        public DataTable viewProductData()
        {

            SqlDataAdapter da = new SqlDataAdapter("viewProducts1", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);
           return dt; 
          
        }
        public void UpdateProduct(string id, string pname, string pprice, string pdescr, string pquantity, string pimg,string photo)
        {

            SqlCommand cmd = new SqlCommand("updateProduct1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pid", id);
            cmd.Parameters.AddWithValue("@pname", pname);
            cmd.Parameters.AddWithValue("@pprice", pprice);
            cmd.Parameters.AddWithValue("@pdescr", pdescr);
            cmd.Parameters.AddWithValue("@pquantity", pquantity);
            cmd.Parameters.AddWithValue("@pimg", pimg);
            cmd.Parameters.AddWithValue("@photo",photo);
            cmd.ExecuteNonQuery();
        }
        public void deleteProduct(string pid)
        {
            SqlCommand cmd = new SqlCommand("deleteproduct1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pid", pid);
            cmd.ExecuteNonQuery();
        
        }
    }
}
