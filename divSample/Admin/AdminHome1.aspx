<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminHome1.aspx.cs" Inherits="divSample.Admin.AdminHome1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
     <%--   Jumbotron--%>
         <div id="slides" class="carousel slide" data-ride="carousel" style="align-self: center; margin: 0px auto;">
            <ul class="carousel-indicators">
                <li data-target="#slides" data-slide-to="0" class="active"></li>
                <li data-target="#slides" data-slide-to="1"></li>
                <li data-target="#slides" data-slide-to="2"></li>
            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../img/cake.jpg" style="display: block; margin-left: auto; margin-right: auto;" />
                     
                    <div class="carousel-caption">
                        <h1 class="display-1">Handcraft for you</h1>
                        <a href="Ocassions.aspx" class="btn btn-outline-light btn-lg">View more</a>
                    </div>

                </div>
                <div class="carousel-item">
                    <img src="../img/cupcake.jpg" style="display: block; margin-left: auto; margin-right: auto;" />
                    <div class="carousel-caption">
                        <h1 class="display-1">Baker's Corner</h1>
                        <a href="Ocassions.aspx" class="btn btn-outline-light btn-lg">View more</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../img/legacy.jpg" style="display: block; margin-left: auto; margin-right: auto;" />
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
               
                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-2" style="width: 100%">
          
                       <a href="#">
                        <asp:Button ID="Button1" runat="server" Text="Products"  CssClass="btn btn-outline-secondary btn-lg"/>
                     </a>
                </div>
                  
            </div>
        </div>
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
 
    <hr class="my-4" />
</asp:Content>
 
