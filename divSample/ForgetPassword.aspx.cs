using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace divSample
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButPwd_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source=(local);Initial Catalog=div;User ID=sa;Password=system;";
            SqlConnection scon = new SqlConnection(mycon);
            string sqlquery = "select Email,password from Reglast where Email=@Email";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, scon);
            sqlcomm.Parameters.AddWithValue("@Email", TextBox1.Text);
            scon.Open();
            SqlDataReader sdr=sqlcomm.ExecuteReader();
            if(sdr.Read())
            {
            string  username=sdr["Email"].ToString();
                string password=sdr["password"].ToString();

                MailMessage mm=new MailMessage("ykashid9@gmail.com",TextBox1.Text);
                mm.Subject="Your password!";
                mm.Body=string.Format("Hello : <h1>{0}</h1> is your email id </br> your password is <h1>{1}</h1>",username,password);
                mm.IsBodyHtml=true;
                SmtpClient smtp=new SmtpClient();
                smtp.Host="smtp.gmail.com";
                smtp.EnableSsl=true;
                NetworkCredential nc=new NetworkCredential();
                nc.UserName="ykashid9@gmail.com";
                nc.Password="dashberlin";
                smtp.UseDefaultCredentials=true;
                smtp.Credentials=nc;
                smtp.Port=587;
                smtp.Send(mm);
                labmsg.Text="Your password has been sent to"+TextBox1.Text;
                labmsg.ForeColor=Color.Green;
            }
            else
            {
            labmsg.Text=TextBox1.Text+"- This email doesn't exist!";
                labmsg.ForeColor=Color.Red;
            }
 
            }
         
        }
    }
