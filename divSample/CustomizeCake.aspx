<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomizeCake.aspx.cs" Inherits="divSample.CustomizeCake" %>

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
        <link href="CustCakeCSS.css" rel="stylesheet" type="text/css" />
        <style>
            .dropdown:hover > .dropdown-menu {
                display: block;
            }
        </style>
    </head>
    <hr class="my-4" />
    <body>

        <div class="container text-center">
            <div class="col-lg-12 col-lg-offset-12">
                <div class="container">
                    <br />
                    <hr />

                    <hr class="my-2" />
                    <div class="slideshow-container">

                        <div class="mySlides fade">
                            <div class="numbertext">1 / 3</div>
                            <img src="img/cust1.jpg" style="width: 100%">
                            <%--<div class="text" style="color:#000">For 1st Birthday!</div>--%>
                        </div>

                        <div class="mySlides fade">
                            <div class="numbertext">2 / 3</div>
                            <img src="img/cust2.jpg" style="width: 100%">
                            <%-- <div class="text">Anniversarry Cake</div>--%>
                        </div>

                        <div class="mySlides fade">
                            <div class="numbertext">3 / 3</div>
                            <img src="img/cust3.jpg" style="width: 100%">
                            <%--<div class="text" style="color:#000">Any shape!</div>--%>
                        </div>

                    </div>
                    <br>

                    <div style="text-align: center">
                        <span class="dot"></span>
                        <span class="dot"></span>
                        <span class="dot"></span>
                    </div>
                    <div class="card bg-light">
                        <article class="card-body mx-auto" style="max-width: 400px;">


                            <%--<h4 class="card-title mt-3 text-center">Create Account</h4>
	<p class="text-center">Get started with your free account</p>--%>
                            <%--<p>
		<a href="" class="btn btn-block btn-twitter"> <i class="fab fa-twitter"></i>   Login via Twitter</a>
		<a href="" class="btn btn-block btn-facebook"> <i class="fab fa-facebook-f"></i>   Login via facebook</a>
	</p>--%>

                            <p class="divider-text">
                                <span class="bg-light">BIRD'S</span>
                            </p>
                            <form id="form1" runat="server">
                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                    </div>
                                    <asp:TextBox ID="textName" CssClass="form-control" runat="server" placeholder="Full name"></asp:TextBox>
                                </div>
                                <!-- form-group// -->
                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                                    </div>
                                     <asp:TextBox ID="textEmail" CssClass="form-control" runat="server"  placeholder="Email address"></asp:TextBox>
                                </div>
                                     <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-address-book"></i></span>
                                    </div>
                                     <asp:TextBox ID="textAddress" CssClass="form-control" runat="server"  placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                <!-- form-group// -->
                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-phone"></i></span>
                                    </div>
                                  
                                    <asp:TextBox ID="textPhone" CssClass="form-control" runat="server" placeholder="Phone number"></asp:TextBox>
                                </div>
                                <!-- form-group// -->
                                <div class="form-group input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-birthday-cake"></i></span>
                                    </div>
                                     <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                        <asp:ListItem>Select cake size</asp:ListItem>
                                        <asp:ListItem>Small:250₹</asp:ListItem>
                                         <asp:ListItem>Medium:400₹</asp:ListItem>
                                         <asp:ListItem>Large:700₹</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group input-group">
                                    <%--<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>--%>
                                    <%-- <input class="form-control" placeholder="Create password" type="password">--%>
                                </div>
                                <div class="form-group input-group">
                                    <%--<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>--%>
                                    <%--<input class="form-control" placeholder="Repeat password" type="password">--%>
                                    <div class="form-group">
                                         <asp:Label ID="Label1" runat="server" Text="">Upload image file if any.</asp:Label>
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn btn-primary btn-block" OnClick="Button1_Click"/>
                                </div>
                                <p class="text-center">Dont Have an account? <a href="Register1.aspx">Sign In</a> </p>
                                <asp:Literal ID="Literal1" runat="server" Visible="True "></asp:Literal>
                            </form>
                        </article>
                    </div>
                    <!-- card.// -->

                </div>
                <!--container end.//-->

                <br>
                <br>
                <%--<article class="bg-secondary mb-3">  
<div class="card-body text-center">
    <h3 class="text-white mt-3">Bootstrap 4 UI KIT</h3>
<p class="h5 text-white">Components and templates  <br> for Ecommerce, marketplace, booking websites 
and product landing pages</p>   <br>
<p><a class="btn btn-warning" target="_blank" href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com  
 <i class="fa fa-window-restore "></i></a></p>
</div>
<br><br>
</article>--%>
            </div>
        </div>
        <script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) { slideIndex = 1 }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 2000); // Change image every 2 seconds
            }
        </script>

    </body>

    <hr class="my-4" />
</asp:Content>
