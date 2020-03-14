using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace divSample.App_Code
{
    public class Class2
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConn"].ToString());
        
        public Class2()
     {
         con.Open();
     
     }
        public void CloseConnection()
        {
            con.Close();
        }
        public DataTable viewProductData()
        {

            SqlDataAdapter da = new SqlDataAdapter("viewProduct1", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}