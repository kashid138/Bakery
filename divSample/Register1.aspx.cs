using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;
using System.Configuration;
using System.Net;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace divSample
{
    public partial class Register1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
          SqlCommand cmd    = new SqlCommand("insert into Reglast(username,Email,password,confirmPassword,contactNo,address)values('" + TextBoxUSername.Text + "','" + TextBoxEmail.Text + "','" + TextBoxpassword.Text + "','" + TextBoxconfirmpassword.Text + "','" + TextBoxcontact.Text + "','" + TextBoxaddress.Text + "')",con);
          cmd.CommandType = CommandType.Text;
          try
          {
              con.Open();
              cmd.ExecuteNonQuery();
              //Response.Write("<script>alert('user is registered successfully')</script>");
              con.Close();
          }

          catch (Exception ex)
          {
              Literal1.Text = ex.Message;
          
          }
      
        }
        //public bool IsReCaptchaValid()
        //{
        //    var result = false;
        //    var captchaResponse=Request.Form["g-recaptcha-response"];
        //    var secretKey = "6LeIQZ8UAAAAADLrpRT0aVSHWt8_Bf3rBSQzxvWO";
        //    var apiUrl = "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}";
        //    var requestUri = string.Format(apiUrl, secretKey, captchaResponse);
        //    var request=(HttpWebRequest)WebRequest.Create(requestUri);

        //    using (WebResponse response = request.GetResponse())
        //    {
        //        using (StreamReader stream = new StreamReader(response.GetResponseStream()))
        //        {
        //            JObject jResponse = JObject.Parse(stream.ReadToEnd());
        //            var isSuccess = jResponse.Value<bool>("success");
        //            result = (isSuccess) ? true : false;
        //        }
        //    }
        //    return result;
        //}
    }
}