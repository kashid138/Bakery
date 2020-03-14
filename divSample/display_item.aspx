<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="display_item.aspx.cs" Inherits="divSample.display_item" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <center>
              <h1>Data bind</h1>
              <h2>asp.net</h2>
          <hr class="my-4" />
 
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CellPadding="30">
                <ItemTemplate>
                    <table border="0">
                        <tr>
                            <td><b>Product Name</b></td>
                            <br/>
                            <td><%#Eval("ProductName")%></td>
                        </tr>
                        <tr>
                            <hr />
                            <td><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ProductImg")%>' Height="300" Width="300"></asp:Image></td>
                        </tr>
                        <tr>
                            <td><b>Product Description: </b></td>
                            <td><%#Eval("ProductDesc")%></td>
                        </tr>
                        <tr>
                            <td><b>Price</b></td>
                            <td><%#Eval("ProductPrice")%></td>
                        </tr>

                        <tr>
                            <td>
<asp:Button ID="Button1" runat="server" Text="Add to cart" class="btn btn-outline-primary"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
         </center> 
        </div>
    </form>
  
</asp:Content>
