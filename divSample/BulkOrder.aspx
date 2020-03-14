<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BulkOrder.aspx.cs" Inherits="divSample.BulkOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.cs"></script>
    <script src=" https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.bundle.min.js"> </script>
    <style>
        
        .auto-style1 {
            height: 33px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr class="my-4" />
    <div class="container">
        <div class="row jumbotron">

            <h2 class="alert-dark">BIRDY'S BULK GIFTING!!</h2>

            <p class="start">
                From coporate events, birthdays, anniversaries to bridal and baby showers – our chatering servvices have been adding extra smiles since 1992.

We at Birdy’s offer a beautiful range of customized dessert options curated with love to meet the needs of your corporate or personal gifting like no other..
            </p>

            <form id="form1" runat="server">
            <center> <img src="img/bulk.jpg" style="margin-right:-370px"/></center>
                  <center>
                    <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="" style="margin-right:350px"></asp:Label></td>
                <td><asp:TextBox ID="TextBoxName" runat="server" placeholder="Name"></asp:TextBox>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
                        <br />
                       
                         <tr>
                <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
                <td><asp:TextBox ID="TextBoxPhone" runat="server" placeholder="Phone Number"></asp:TextBox>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>--%>
                             </td>
            </tr>
                         <tr>
                <td class="auto-style1"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
                <td class="auto-style1"><asp:TextBox ID="TextBoxEmail" runat="server" placeholder="Email"></asp:TextBox>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>--%>
                             </td>
            </tr>
                         <tr>
                <td><asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
                <td><asp:TextBox ID="TextBoxMsg" runat="server" placeholder="Message" Width="200" TextMode="MultiLine"></asp:TextBox>
<%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxMsg" ErrorMessage="This field is required!"></asp:RequiredFieldValidator>--%>
                             </td>
            </tr>
                         
                        
        </table>
                    <asp:Button  ID="Button1" runat="server" Text="Submit" style="margin-right:-350px" CssClass="btn btn-outline-dark" OnClick="Button1_Click1"></asp:Button>
                  
                    </center>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </form>

        </div>

    </div>
</asp:Content>
