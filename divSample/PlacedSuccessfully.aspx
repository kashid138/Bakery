<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PlacedSuccessfully.aspx.cs" Inherits="divSample.PlacedSuccessfully" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/popper.min.js?parameter=1"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js?parameter=1" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.cs"></script>
    <script src=" https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.6.3/css/all.css"></script>
    <style type="text/css">
        .auto-style1 {
            height: 37px;
            text-align: center;
        }
        .auto-style2 {
            height: 64px;
            text-align: center;
        }
        .auto-style3 {
            height: 111px;
        }
        .auto-style4 {
            width: 693px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <center><asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Your Order has been placed successfully! Thank you!"></asp:Label>
            <br />
         
            <asp:Label ID="Label2" runat="server" Text="Generate Invoice as PDF"></asp:Label>
            <br />
            Order ID:
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Download Invoice" Width="193px" />
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <table class="w-100" border="1">
                    <tr>
                        <td class="auto-style1">Retail Invoice</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Order No:<asp:Label ID="Label4" runat="server"></asp:Label>
                            <br />
                            Order Date:<asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <table class="w-100" border="1">
                                <tr>
                                    <td class="auto-style4" style="text-align: center">Buyer Address:<br />
                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                    <td style="text-align: center">Seller Address:<br /> Gorai Borivali</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="190px" Width="602px">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="S.No">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Id" HeaderText="Product ID">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ProductName" HeaderText="Product Name">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ProductPrice" HeaderText="Product Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" style="text-align: center">Grand Total:
                            <asp:Label ID="Label8" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Declaration: We declare that this invoice shows actual price of the goods described inclusive of taxes and that all particulars are true and correct.<br /> Incase you find Selling price on this invoice to be more than MRP mentioned on product, Please inform <a href="mailto:ykashid9@gmail.com">ykashid9@gmail.com</a><br /> THIS IS COMPUTER GENERATED INVOICE AND DOES NOT REQUIRED SIGNATURE</td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
        
        </center>
    </form>
</asp:Content>
