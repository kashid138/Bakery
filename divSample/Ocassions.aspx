<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ocassions.aspx.cs" Inherits="divSample.Ocassions" %>
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
  <link href="Hamburger-Push-Navigation-Swipe-Menu/Hamburger-Push-Navigation-Swipe-Menu/css/cmenu2.css"  rel="stylesheet"/>
            <style>
                .dropdown:hover > .dropdown-menu {
                    display: block;
                }
            </style>
  </head>
<body>
    <div class="container">
        <hr class="my-4" />
     <%--   One two three--%>
       <div class="card-deck">
  <div class="card">
    <img class="card-img-top" src="img/Occasion/CakeAndCelebration/CakeAndcel.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Celebartion & Cakes</h5>
      <p class="card-text">Birthday calories don't count!<br />
          Life is too short to skip a cake.<br />
          Order now for great deal we have it here<br />
          Selction includes a lot of variety of cakes!
         Order Now!
      </p>
        <a href="DisplayProduct.aspx" class="btn btn-outline-secondary">See more</a>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="img/Occasion/sav1.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Savouries</h5>
      <p class="card-text">Do you need gluten-free snacks, or are you just looking for healthy snack ideas packed with protein and not too much sugar?<br />
         there’s a healthy snack on this list for everyone.</p>
          <a href="Savouries.aspx" class="btn btn-outline-secondary">See more</a>
      <p class="card-text"><small class="text-muted">Last updated 8 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="img/Occasion/des1.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Desserts</h5>
      <p class="card-text">If dessert is your favourite part of the meal, then this collection is for you! Filled with luscious mousses,
           creamy caramels and comforting puds, we’re sure this selection will make your sweet tooth happy.</p>
          <a href="#" class="btn btn-outline-secondary">See more</a>
      <p class="card-text"><small class="text-muted">Last updated 4 mins ago</small></p>
    </div>
  </div>
</div>
         <hr class="my-4" />
      <%--  four five six--%>
               <div class="card-deck">
       <div class="card">
    <img class="card-img-top" src="img/Occasion/bak1.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Bakery</h5>
      <p class="card-text">Birthday calories don't count!<br />
          Life is too short to skip a cake.<br />
          Order now for great deal we have it here<br />
          Selction includes a lot of variety of cakes!
         Order Now!
      </p>
        <a href="#" class="btn btn-outline-secondary">See more</a>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="img/Occasion/chocol.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Chocolate</h5>
      <p class="card-text">Do you need gluten-free snacks, or are you just looking for healthy snack ideas packed with protein and not too much sugar?<br />
         there’s a healthy snack on this list for everyone.</p>
          <a href="#" class="btn btn-outline-secondary">See more</a>
      <p class="card-text"><small class="text-muted">Last updated 8 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="img/Occasion/bluko.jpg" alt="Card image cap">
    <div class="card-body">
      <h5 class="card-title">Bulk Orders</h5>
      <p class="card-text">If dessert is your favourite part of the meal, then this collection is for you! Filled with luscious mousses,
           creamy caramels and comforting puds, we’re sure this selection will make your sweet tooth happy.</p>
          <a href="#" class="btn btn-outline-secondary">See more</a>
      <p class="card-text"><small class="text-muted">Last updated 4 mins ago</small></p>
    </div>
  </div>
</div>
    </div>
    <hr class="my-4" />v

</body>    
</asp:Content>
