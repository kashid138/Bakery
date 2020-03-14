<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="divSample.Home" %>

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
        <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
        <link href="Hamburger-Push-Navigation-Swipe-Menu/Hamburger-Push-Navigation-Swipe-Menu/css/cmenu2.css" rel="stylesheet" />
        <style>
            .dropdown:hover > .dropdown-menu {
                display: block;
            }

            .social a {
                font-size: 4.5em;
                padding: 3rem;
            }

            .fa-facebook {
                color: #3b5998;
            }

            .fa-twitter {
                color: #00aced;
            }

            .fa-instagram {
                color: #517fa4;
            }

            .fa-youtube {
                color: #bb0000;
            }

                .fa-facebook:hover,
                .fa-twitter:hover,
                .fa-instagram:hover,
                .fa-youtube:hover {
                    color: #d5d5d5;
                }
        </style>

    </head>
    <body>
        <%--Image Slider--%>

        <%--   Jumbotron--%>
         <div id="slides" class="carousel slide" data-ride="carousel" style="align-self: center; margin: 0px auto;">
            <ul class="carousel-indicators">
                <li data-target="#slides" data-slide-to="0" class="active"></li>
                <li data-target="#slides" data-slide-to="1"></li>
                <li data-target="#slides" data-slide-to="2"></li>
            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/cake.jpg" style="display: block; margin-left: auto; margin-right: auto;" />
                    <div class="carousel-caption">
                        <h1 class="display-1">Handcraft for you</h1>
                        <a href="Ocassions.aspx" class="btn btn-outline-light btn-lg">View more</a>
                    </div>

                </div>
                <div class="carousel-item">
                    <img src="img/cupcake.jpg" style="display: block; margin-left: auto; margin-right: auto;" />
                    <div class="carousel-caption">
                        <h1 class="display-1">Baker's Corner</h1>
                        <a href="Ocassions.aspx" class="btn btn-outline-light btn-lg">View more</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/legacy.jpg" style="display: block; margin-left: auto; margin-right: auto;" />
                    <div class="carousel-caption">
                        <h1 class="display-1">Legacy Of Birdy's</h1>
                        <a href="Ocassions.aspx" class="btn btn-outline-light btn-lg">View more</a>
                    </div>
                </div>
            </div>
        </div>
        <%--   Jumbotron--%>

        <div class="container-fluid">
            <div class="row jumbotron">
                <div class="col-xs-12 col-sm-12 col-md-9 col-xl-10">
                    <p class="lead">
                        <h2>Welcome To Bird's!</h2>
                    </p>
                </div>
                <form id="form1" runat="server">
                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-2" style="width: 100%">
                     <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="X-Large"></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >Signout</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Login</asp:LinkButton>
                       <a href="#">
                        <asp:Button ID="Button1" runat="server" Text="Products"  CssClass="btn btn-outline-secondary btn-lg" OnClick="Button1_Click"/>
                     </a>
                </div>
                  
            </div>
        </div>
        <br />

         <%-- Welcome Section--%>

        <div class="container">
            <div class="row jumbotron">
               You Have Products In Your Cart:
                 <asp:Label ID="lblCart" runat="server" Font-Bold="True"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server">Show Cart</asp:HyperLink>
&nbsp;<center>    <br />
                        <h2 style="display: ; float: left">Welcome To Bird's!</h2>
                   
                 </center>
           <br />
               <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Both" RepeatDirection="Horizontal" align="right" OnItemCommand="DataList1_ItemCommand">
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
                 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:divConnectionString2 %>" SelectCommand="SELECT top 3 * FROM [ProductCatlog] ORDER BY [Id] DESC"></asp:SqlDataSource>
                 
            </div>
        </div>
          </form>
        <br />
        
        <%--  Two column Section--%>
      
         <div class="container-fluid padding">
            <div class="row welcome text-center">
                <div class="col-12">
                    <h1 class="display-4">Build with ease.</h1>
                </div>
                <hr />
                <div class="col-12">
                    <p class="lead">Welcome to birdys</p>
                </div>
            </div>
        </div>
      

        <%--style="display:block; margin-left:auto;margin-right:auto--%>
        <div class="container-fluid padding">
            <div class="row padding text-center">
                <div class="col-12  text-center">
                    <h2>About Birdys</h2>
                    <p>Serving since 1998</p>
                    <p>
                        Taste, Quality and Reliability are words associated with the brand “Birdys” since its inception in 1992.
                    And since that time, the promise of a GREAT PRODUCT remains much the same.
                    </p>
                    <p>
                        Today, “Dutch Truffle”, “New York Truffle” and “Cuban Crunch”  are household names.
                     And many of our chefs have been delivering on our brand promise, day after day, for more than a decade.
                    </p>
                    <p>
                        All of which ensures a product that has gone through that ultimate quality test:
                      “A PASSIONATE CHEF”.
                    </p>
                    <br />
                    <a href="#" class="btn btn-primary">Learn More</a>
                    <br />
                    <br />
                </div>

                <div class="cols-lg-12">
                    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            <img src="/img/Recipe.jpg" class="img-fluid" />
                    <%-- Fixed background--%>
                </div>
            </div>
        </div>

        <hr class="my-4" />
        <%--connect Social Media--%>
        <figure>
            <div class="fixed-wrap">
                <div id="fixed">
                </div>
            </div>
        </figure>

        <%--Footer--%>
        <div class="container-fluid padding">
            <div class="row text-center padding">
                <div class="col-12">
                    <h2>Connect</h2>
                </div>
                <div class="col-12 social padding">
                    <a href="http://www.facebook.com"><i class="fab fa-facebook" style=""></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
        </div>

        <%--Footer--%>
    </body>
    <hr class="my-4" />
</asp:Content>
