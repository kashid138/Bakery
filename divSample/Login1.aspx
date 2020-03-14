<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="divSample.Login1" %>

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
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.cs"></script>
        <script src=" https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.bundle.min.js"></script>
        <link href="NewloginCSS.css" rel="stylesheet" type="text/css" />
        <style>
            .dropdown:hover > .dropdown-menu {
                display: block;
            }
 
        </style>
    </head>


    <%--        <hr class="my-4" />
        <div class="container-fluid">
            <div class="row no-gutter">
                <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
                <div class="col-md-8 col-lg-6">
                    <div class="login d-flex align-items-center py-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-9 col-lg-8 mx-auto">
                                    <h3 class="login-heading mb-4">Welcome back!</h3>
                                    <form runat="server">

                                        <div class="form-label-group">
                                            <input type="email" id="TextBoxEmail" class="form-control"  placeholder="Email address" required autofocus />
                                            <label for="TextBoxEmail">Email address</label>
                                        </div>

                                        <div class="form-label-group">
                                            <input type="password" id="TextBoxPassword" class="form-control"  placeholder="Password" required />
                                            <label for="TextBoxPassword">Password</label>
                                        </div>

                                        <div class="custom-control custom-checkbox mb-3">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1" />
                                            <label class="custom-control-label" for="customCheck1">Remember password</label>
                                        </div>

                                        <button id="btnSubmit" class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit" runat="server">Sign in</button>

                                        <div class="text-center">
                                            <a class="small" href="#">Forgot password?</a>
                                        </div>
                                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr class="my-4" />--%>
    <hr class="my-4" />
    <%--    <div class="container-fluid">
        <div class="row no-gutter">
            <div class="d-none d-md-flex col-4 col-lg-6 bg-image"></div>
            <div class="col-md-8 col-lg-6">
                <div class="login d-flex align-items-center py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-9 col-lg-8 mx-auto">
                                <h3 class="login-heading mb-4">Welcome back!</h3>
                                <form id="Form1" runat="server">


                                    <div class="form-label-group">
                                          <asp:TextBox ID="t1"   runat="server" CssClass="form-control" value="type anything" required autofocus></asp:TextBox>
                                    </div> 
                                      
                                    <br />
                                    <div class="form-label-group">
                                         
                                        <asp:TextBox ID="t2" runat="server" CssClass="form-control input-lg" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>
                                  
                                      
                                    <br />

                                 

                                    <asp:Button ID="b1" runat="server" Text="Button" OnClick="b1_Click" CssClass="btn btn-lg btn-outline-primary btn-block btn-login text-uppercase font-weight-bold mb-2" />
                                    <br />
                                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                                </form>

                            </div>
                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>--%>
    <div class="container-fluid">
        <div class="row no-gutter">
            <div class="d-none d-md-flex col-4 col-lg-6 bg-image"></div>
            <div class="col-md-8 col-lg-6">
                <div class="login d-flex align-items-center py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-9 col-lg-8 mx-auto">
                                <h3 class="login-heading mb-4">Welcome back!</h3>
                             
                                <form id="Form1" runat="server">

                                    <div class="form-group">

                                        <asp:TextBox ID="t1" runat="server" CssClass="form-control" placeholder="Username" Style="width: 300px"  data-error="Bruh, that email address is invalid" required></asp:TextBox>
                                    </div>
                                    <div class="form-group">


                                        <asp:TextBox ID="t2" runat="server" CssClass="form-control" placeholder="Password" Style="width: 300px" TextMode="Password" required></asp:TextBox>
                                    </div>
                                    <div class="dropdown">
                                        <asp:DropDownList ID="DropDownList1" runat="server" style="width:160px">
                                            <asp:ListItem>Select User Type</asp:ListItem>
                                            <asp:ListItem>Admin</asp:ListItem>
                                            <asp:ListItem>User</asp:ListItem>
                                          </asp:DropDownList>
                                    </div>
                                    <br />

                                    <asp:Button ID="b1" runat="server" Text="Button" OnClick="b1_Click" CssClass="btn btn-lg btn-primary" Style="width: 100px" />
                                    <div class="forgot">
                                      <a href="#" onclick="window.open('ForgetPassword.aspx','FP','width=700,height=400,top=300,left=500,fullscreen=no,resizable=0');">Forget Password?</a> 
                                    </div>
                                    <center><asp:Label ID="lblmsg" runat="server" Text="lblmsg" Visible="False"></asp:Label></center>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DisplayProduct.aspx">Products</asp:HyperLink>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    
    <hr class="my-4" />
</asp:Content>
