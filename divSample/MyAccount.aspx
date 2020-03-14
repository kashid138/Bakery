<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="divSample.MyAccount" %>
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
    <link href="MyAccCSS.css" rel="stylesheet" type="text/css" />
   <style>
     .dropdown:hover>.dropdown-menu{
     display:block;
      }
   </style>
     </head>
    <body>
        <hr class="my-4" />
        <div class="model-dialog text-center">
            <div class="col-sm-9 main-section">
                <div class="modal-content">
                    <div class="col-12 user-img">
                        <img src="img/face.png" />
                         </div>
                     <div class="col-12 form-input">
                         <form>
                             <div class="form-group">
                                 <input id="TextboxEmail" type="email" class="form-control" placeholder="Enter Email" required/>
                             </div>
                              <div class="form-group">
                                 <input id="TextboxPass" type="password" class="form-control" placeholder="Enter Password" required />
                             </div>
                            <button id="btnSubmit" type="submit" class="btn btn-success">Login</button>
                         </form>
                    </div>
                    <div class="col-12 forgot">
                        <a href="#">Forgot Password?</a>
                    </div>
                </div>

            </div>
        </div>

    </body>
    <hr class="my-4" />
   </asp:Content>
