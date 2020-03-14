<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="divSample.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
      <!--CSS-->
<link rel="stylesheet" href="css/bootstrap.min.css"/>
 
<!--JS-->
<script src="js/jquery-2.2.3.min.js"></script>
<script type='text/javascript' src="js/bootstrap.min.js"></script>
<script type='text/javascript' src="js/jquery.mycart.js"></script>
  <style>
          .dropdown:hover>.dropdown-menu{
          display:block;
          }

      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
 <div>
     <asp:GridView ID="ProductGV" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
         <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
             <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
             <asp:BoundField DataField="ProductCatlog" HeaderText="ProductCatlog" SortExpression="ProductCatlog" />
             <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
             <asp:BoundField DataField="ProductDesc" HeaderText="ProductDesc" SortExpression="ProductDesc" />
             <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
             <asp:BoundField DataField="ProductImg" HeaderText="ProductImg" SortExpression="ProductImg" />
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:divConnectionString %>" DeleteCommand="DELETE FROM [ProductCatlog] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ProductCatlog] ([ProductCatlog], [ProductName], [ProductDesc], [ProductPrice], [ProductImg]) VALUES (@ProductCatlog, @ProductName, @ProductDesc, @ProductPrice, @ProductImg)" SelectCommand="SELECT * FROM [ProductCatlog]" UpdateCommand="UPDATE [ProductCatlog] SET [ProductCatlog] = @ProductCatlog, [ProductName] = @ProductName, [ProductDesc] = @ProductDesc, [ProductPrice] = @ProductPrice, [ProductImg] = @ProductImg WHERE [Id] = @Id">
         <DeleteParameters>
             <asp:Parameter Name="Id" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="ProductCatlog" Type="String" />
             <asp:Parameter Name="ProductName" Type="String" />
             <asp:Parameter Name="ProductDesc" Type="String" />
             <asp:Parameter Name="ProductPrice" Type="Int32" />
             <asp:Parameter Name="ProductImg" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="ProductCatlog" Type="String" />
             <asp:Parameter Name="ProductName" Type="String" />
             <asp:Parameter Name="ProductDesc" Type="String" />
             <asp:Parameter Name="ProductPrice" Type="Int32" />
             <asp:Parameter Name="ProductImg" Type="String" />
             <asp:Parameter Name="Id" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
 </div>
</form>
</asp:Content>
