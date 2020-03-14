<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LatestProducts.aspx.cs" Inherits="divSample.LatestProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <!--CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css" />

    <!--JS-->
    <script src="js/jquery-2.2.3.min.js"></script>
    <script type='text/javascript' src="js/bootstrap.min.js"></script>
    <script type='text/javascript' src="js/jquery.mycart.js"></script>
    <style>
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
        <%--        <div>
            <h2>View Latest Products</h2>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="floating">
                       <center> <table border="1" style="width: 200px">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label1" runat="server" Style="text-align: center" Text="Product ID"></asp:Label>
                                    &nbsp;
                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Style="text-align: center" Text='<%# Eval("ProductName") %>'></asp:Label>
                                </td>
                            </tr>

                            <tr class="zoom">
                                <td>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImg") %>' Height="300" Width="300" />
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
                                 <asp:ListItem></asp:ListItem>
                             </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/addtocart.jpg" Height="54px" Width="195px" CommandArgument='<%# Eval("Id") %>' CommandName="addtocart" />
                                </td>
                            </tr>
                        </table>
                           </center>
                    </div>
                    <br />
                </ItemTemplate>

            </asp:Repeater>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:divConnectionString2 %>" SelectCommand="SELECT top 3 *  FROM [ProductCatlog] ORDER BY [Id] DESC"></asp:SqlDataSource>

        </div>--%>
        <div>
            <h2 style="text-align:center">View Latest Products</h2>
            <center>
                 <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Both" RepeatDirection="Horizontal">
               <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
               <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
               <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
               <ItemTemplate>
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
                                 <asp:ListItem></asp:ListItem>
                             </asp:DropDownList>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style1">
                             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/addtocart.jpg"   Height="54px" Width="195px" CommandArgument='<%# Eval("Id") %>' CommandName="addtocart" />
                         </td>
                     </tr>
                 </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
           </asp:DataList>
                <br />
                   </center>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:divConnectionString2 %>" SelectCommand="SELECT top 3 * FROM [ProductCatlog] ORDER BY [Id] DESC"></asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
