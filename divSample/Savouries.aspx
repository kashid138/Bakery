<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Savouries.aspx.cs" Inherits="divSample.Savouries" %>

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
    </head>
    <body>
        <%-- HEADER--%>
        <div class="container-fluid padding">
            <div class="row welcome text-center">
                <div class="col-12">
                    <h1 class="display-4">Savouries</h1>
                </div>
                <hr />
            </div>
        </div>
        <hr class="my-4" />

        <%--  Cards for products--%>


        <div class="container-fluid padding">
            <div class="row padding">
                <div class="col-md-4">
                    <div class="card">

                        <img class="card-img-top" src="img/Occasion/Savouries/BreadCheese.jpg" />
                        <div class="card-body">
                            <h4 class="pull-right">₹70</h4>
                            <h4 class="card-title">Bread Cheese</h4>
                            <a href="#" class="btn btn-outline-secondary">Add to cart</a>
                        </div>
                    </div>
                </div>
                     <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="img/Occasion/Savouries/Fries.jpg" />
                        <div class="card-body">
                            <h4 class="pull-right">₹120</h4>
                            <h4 class="card-title">Fries</h4>
                            <a href="#" class="btn btn-outline-secondary">Add to cart</a>
                        </div>
                    </div>
                </div>
                    <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="img/Occasion/Savouries/ClubSandwich.jpg" />
                        <div class="card-body">
                            <h4 class="pull-right">₹50</h4>
                            <h4 class="card-title">ClubSandwich</h4>
                            <a href="#" class="btn btn-outline-secondary">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="my-4" />
    </body>
</asp:Content>
 