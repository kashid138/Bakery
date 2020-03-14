<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="divSample.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link href="RegisterCSS.css" rel="stylesheet" type="text/css" />
        <style>
            .dropdown:hover > .dropdown-menu {
                display: block;
            }
        </style>
    </head>
    <body>
        
        <hr class="my-4" />
        <h1 align="center"><u>Contact Us</u></h1>

        <center><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d35835.11163300887!2d72.8614963644755!3d19.251809973599432!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7ae75d70ebdcfc7e!2sBirdy&#39;s+Bakery+%26+Patisserie!5e0!3m2!1sen!2sin!4v1554230893620!5m2!1sen!2sin" 
             width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></center>

        <div>
            
                <center>
        <h1 align="center">We Are Eager To Hear From You!</h1>
    
      <div class="form-group">
      <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
          <br />
  <asp:TextBox ID="TextBoxName" runat="server"  aria-describedby="emailHelp" placeholder="Enter Name" style="width:500px" Height="40px"  CssClass="form-control" required></asp:TextBox>
         
  </div>
  <div class="form-group">
    <asp:Label ID="Label2" runat="server" Text="Email address" ></asp:Label>
          <br />
  <asp:TextBox ID="TextBoxEmail" runat="server"  aria-describedby="emailHelp" placeholder="Enter email" style="width:500px" Height="40px"  CssClass="form-control" required></asp:TextBox>
        <div class="help-block with-errors"></div>

      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
       <div class="form-group">
     <asp:Label ID="Label3" runat="server" Text="Your Message"></asp:Label>
          <br />
  <asp:TextBox ID="TextBoxMsg" runat="server"  aria-describedby="emailHelp" placeholder="Enter email" style="width:500px" CssClass="form-control" TextMode="MultiLine" required></asp:TextBox>
  </div>
  <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Button1_Click"></asp:Button>
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
           
            </center> 
   <hr class="my-4" />
        </div>
    </body>

</asp:Content>



