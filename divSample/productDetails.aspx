<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="productDetails.aspx.cs" Inherits="divSample.productDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <h2>Add to cart</h2>
        <div class="test">
            <asp:Label ID="lblsuccess" class="success" runat="server" Text=""></asp:Label>
           <asp:Label ID="Label1" class="success" runat="server" Text=""></asp:Label>
     </div>
    </form>
</asp:Content>
