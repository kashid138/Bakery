<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Add_item.aspx.cs" Inherits="divSample.Add_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
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
        .dropdown:hover > .dropdown-menu {
            display: block;
        }

        table.center {
            width: 70%;
            margin-left: 35%;
            margin-right: 15%;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <hr class="my-2" />
    <br /> <center><img src="img/logo.png"/> </center>
    <br />
    <center>
        <h2>Add products</h2>
    <table class="center" style="vertical-align:central" style="text-align:center">
        <tr>
            <td>Product Catalog:</td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Product Name:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Product Description:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Product Price</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Product Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
        </tr>
        <tr>
            <td>
                <asp:Button class="b1" ID="b1" runat="server" Text="Upload" OnClick="b1_Click" CssClass="btn btn-outline-dark"/>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
 </center>

    <hr class="my-2" />
</asp:Content>
