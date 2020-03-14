<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cakeAndcel.aspx.cs" Inherits="divSample.cakeAndcel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <head>
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
  <link href="Hamburger-Push-Navigation-Swipe-Menu/Hamburger-Push-Navigation-Swipe-Menu/css/cmenu2.css"  rel="stylesheet"/>
      <style>
          .dropdown:hover>.dropdown-menu{
          display:block;
          }

      </style>
  </head>
    <body>
    <%-- HEADER--%>
        <div class="container-fluid padding">
            <div class="row welcome text-center">
                <div class="col-12">
                    <h1 class="display-4">Cakes And Celebration</h1>
                </div>
                <hr />
            </div>
        </div>
     <hr class="my-4" /> s
  <%--  Cards for products--%>
        <div class="container-fluid padding">
            <div class="row padding">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="img/Occasion/CakeAndCelebration/strawberry.jpg" />
                        <div class="card-body">
                             <h4 class="pull-right">₹500</h4>
                            <h4 class="card-title">Strawberry Cake</h4>
                            <a href="#" class="btn btn-outline-secondary" data-price="10">Add to cart</a>
                        </div>
                    </div>
                </div>
                 <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="img/Occasion/CakeAndCelebration/lemon.jpg" />
                        <div class="card-body">
                             <h4 class="pull-right">₹550</h4>
                            <h4 class="card-title">Lemon Cake</h4>
                            <a href="#" class="btn btn-outline-secondary">Add to cart</a>
                        </div>
                    </div>
                </div>
                 <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="img/Occasion/CakeAndCelebration/RedVelvet.jpg" />
                        <div class="card-body">
                             <h4 class="pull-right">₹500</h4>
                            <h4 class="card-title">Red Velvet Cake</h4>
                            <a href="#" class="btn btn-outline-secondary">Add to cart</a>
                        </div>
                    </div>
                </div>
                <hr class="my-4" />
             
                    <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="img/Occasion/CakeAndCelebration/fruits.jpg" />
                        <div class="card-body">
                             <h4 class="pull-right">₹500</h4>
                            <h4 class="card-title">Fruits Cake</h4>
                            <a href="#" class="btn btn-outline-secondary">Add to cart</a>
                        </div>
                    </div>
                </div>
                    <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="img/Occasion/CakeAndCelebration/blueberry.jpg" />
                        <div class="card-body">
                             <h4 class="pull-right">₹600</h4>
                            <h4 class="card-title">Blueberry Cake</h4>
                            <a href="#" class="btn btn-outline-secondary">Add to cart</a>
                        </div>
                    </div>
                </div>
                    <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="img/Occasion/CakeAndCelebration/orange.jpg" />
                        <div class="card-body">
                             <h4 class="pull-right">₹600</h4>
                            <h4 class="card-title">Orange Cake</h4>
                            <a href="#" class="btn btn-outline-secondary">Add to cart</a>
                        </div>
                    </div>
                </div>

                    
                </div>
            </div>
        <hr class="my-4" />
 
     </body>
      </asp:Content>
