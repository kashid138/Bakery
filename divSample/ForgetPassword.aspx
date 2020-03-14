<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="divSample.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      <center> <h2>BIRDY'S</h2></center> 
        <center><div>
           
       Enter Your Email ID here:<asp:TextBox ID="TextBox1" runat="server" style="top:-50px"></asp:TextBox> <br/> <br />
        <asp:Button ID="ButPwd" runat="server" Text="Get your password!" CssClass="btn btn-outline-success" OnClick="ButPwd_Click" /><br />
        <asp:Label ID="labmsg" runat="server"></asp:Label>
     </div>
          </center>
    </form>
</body>
</html>
