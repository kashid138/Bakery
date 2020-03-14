<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DisplayProduct.aspx.cs" Inherits="divSample.DisplayProduct" %>

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
    <script src=" https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.6.3/css/all.css"></script>
    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }

        .auto-style2 {
            height: 27px;
        }

        .zoom {
            padding: 50px;
            transition: transform .2s;
            width: 50px;
            height: 50px;
            margin: 0 auto;
        }

            .zoom:hover {
                -ms-transform: scale(1.2); /* IE 9 */
                -webkit-transform: scale(1.2); /* Safari 3-8 */
                transform: scale(1.2);
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        You have products in your cart:
        <asp:Label ID="lbl1" runat="server" Font-Bold="True"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cart.aspx">Show cart </asp:HyperLink>
        <center>   <asp:DataList ID="DataList1" runat="server" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Both" Height="16px" RepeatColumns="3" RepeatDirection="Horizontal" Width="23px" OnItemCommand="DataList1_ItemCommand">
             <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
             <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
             <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
             <ItemTemplate>
                <center> &nbsp;
                    <table border="1" class="w-100">
                     <tr>
                         <td class="auto-style2">
                             <asp:Label ID="Label1" runat="server" style="text-align: center" Text="Product ID"></asp:Label>
                             &nbsp;
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label3" runat="server" style="text-align: center" Text='<%# Eval("ProductName") %>'></asp:Label>
                         </td>
                     </tr>
               
                          <tr class="zoom">
                         <td>
                             <asp:Image ID="Image1" runat="server"  ImageUrl='<%# Eval("ProductImg") %>'  Height="300" Width="300" />
                         </td>
                     </tr>
                     
                     <tr>
                         <td>Price:
                             <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>Quantity:
                             <asp:DropDownList ID="DropDownList1" runat="server">
                                 <asp:ListItem>1</asp:ListItem>
                                 <asp:ListItem>2</asp:ListItem>
                                 <asp:ListItem>3</asp:ListItem>
                                 <asp:ListItem>4</asp:ListItem>
                                 <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style1">
                             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/addtocart.jpg"   Height="54px" Width="195px" CommandArgument='<%# Eval("Id") %>' CommandName="addtocart" />
                         </td>
                     </tr>
                 </table>
                    </center>
                 <br />
                 <br />
             </ItemTemplate>
             <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
          </asp:DataList>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Add_item.aspx">Manage Products</asp:HyperLink>
         </center>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:divConnectionString3 %>" SelectCommand="SELECT * FROM [ProductCatlog]"></asp:SqlDataSource>
    </form>
</asp:Content>
