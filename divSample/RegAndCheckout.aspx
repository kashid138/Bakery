<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegAndCheckout.aspx.cs" Inherits="divSample.RegAndCheckout" %>
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
         <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
         <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.cs"></script>
         <script src=" https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <script src="https://use.fontawesome.com/releases/v5.6.3/css/all.css"></script>
        <link href="RegAndCheckoutCSS.css" rel="stylesheet" type="text/css" />
    </head>  
    <body>
        <hr class="my-4" />
        <div class="container">
    <div class="row">
      <div class="col-lg-10 col-xl-9 mx-auto">
        <div class="card card-signin flex-row my-5">
          <div class="card-img-left d-none d-md-flex">
             <!-- Background image for card set in CSS! -->
          </div>
          <div class="card-body">
            <h5 class="card-title text-center">Register</h5>
            <form class="form-signin">
              <div class="form-label-group">
                <input type="text" id="inputUserame" class="form-control" placeholder="Username" required autofocus>
                <label for="inputUserame">Username</label>
              </div>

              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required/>
                <label for="inputEmail">Email address</label>
              </div>
              
              <hr />
              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required/>
                <label for="inputPassword">Password</label>
              </div>
              
              <div class="form-label-group">
                <input type="password" id="inputConfirmPassword" class="form-control" placeholder="Password" required/>
                <label for="inputConfirmPassword">Confirm password</label>
              </div>

               <div class="form-label-group">
                <input type="number" id="inputnumber" class="form-control" placeholder="Number" required/>
                <label for="inputnumber">Contact number</label>
              </div>

                 <div class="form-label-group">
                <input type="text" id="inputAddress" class="form-control" placeholder="Address" required/>
                <label for="inputAddress">Address</label>
              </div>

              <button class="btn btn-lg btn-primary btn-block text-uppercase" id="btnSubmit" type="submit">Register</button>
              <a class="d-block text-center mt-2 small" href="#">Sign In</a>
              <hr class="my-4">
              <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Sign up with Google</button>
              <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Sign up with Facebook</button>
             
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
 <hr class="my-4" />
    </body>
</asp:Content>
