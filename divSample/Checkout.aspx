<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="divSample.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/popper.min.js?parameter=1"rel="stylesheet nofollow".../>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js?parameter=1" rel="stylesheet nofollow"..."/>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.cs"></script>
    <script src=" https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.6.3/css/all.css"></script>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
            text-align:center;
            width: 451px;
        }
        .auto-style3 {
            width: 146px;
          
        }
        .auto-style4 {
            height: 26px;
             margin-left:-200px;
            width: 483px;
        }
        .auto-style5 {
            height: 30px;
             margin-left:-200px;
            width: 483px;
        }
        .auto-style6 {
            height: 30px;
            text-align: center;
            width: 451px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">


    <br />
    <br />
    <br />
    <br />
    <br />
  <center> <table>
        <tr>
            <td class="auto-style5" style="text-align:center">Order ID:</td>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" style="margin-left:-600px"></asp:Label>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" style="margin-left:300px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order Date:</td>
            <td class="auto-style1">
                &nbsp;<asp:Label ID="Label3" runat="server" style="margin-left:-600px"></asp:Label>
            </td>
        </tr>
    </table> 
    <br />
    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="303px" ShowFooter="True" Width="689px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No" />
                <asp:BoundField DataField="Id" HeaderText="Product ID" />
                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                <asp:BoundField DataField="ProductPrice" HeaderText="Price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="40px" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <br />
        <table   style="height:198px; width:466px">
            <tr>
                <td class="auto-style3">Type your addresss:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="98px" TextMode="MultiLine" Width="336px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mobile Number:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="46px" Width="338px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button1"  runat="server" Height="61px" Text="Place Order" Width="223px" CssClass="btn btn-outline-warning" OnClick="Button1_Click" />
        <br />
    <br />
    <br />
 

      </center> 
    </form>


</asp:Content>
