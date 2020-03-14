<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register1.aspx.cs" Inherits="divSample.Register1" %>

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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <script src="https://use.fontawesome.com/releases/v5.6.3/css/all.css"></script>
        <script src="Scripts/bootstrap.validate.js"></script>

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
                            <h5 class="card-title" style="margin-left:90px">Register</h5>
                            <form class="form-signin" id="form1" runat="server">
                                <%--  <div class="form-label-group">
                <input type="text" id="inputUserame" class="form-control" placeholder="Username" required autofocus>
                <label for="inputUserame">Username</label>
              </div>--%>
                                <%--    <div class="form-label-group">
                                    <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required />
                                    <label for="inputEmail">Email address</label>
                                </div>--%>
                                <div class="form-group">

                                    <asp:TextBox ID="TextBoxUSername" runat="server" CssClass="form-control" placeholder="Username" Style="width: 300px" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUSername" ErrorMessage="This Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">

                                    <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control" placeholder="Email" Style="width: 300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="This Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Enter Valid Email address" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>

                                <hr />
                                <%--        <div class="form-label-group">
                                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required />
                                    <label for="inputPassword">Password</label>
                                </div>

                                <div class="form-label-group">
                                    <input type="password" id="inputConfirmPassword" class="form-control" placeholder="Password" required />
                                    <label for="inputConfirmPassword">Confirm password</label>
                                </div>

                                <div class="form-label-group">
                                    <input type="number" id="inputnumber" class="form-control" placeholder="Number" required />
                                    <label for="inputnumber">Contact number</label>
                                </div>

                                <div class="form-label-group">
                                    <input type="text" id="inputAddress" class="form-control" placeholder="Address" required />
                                    <label for="inputAddress">Address</label>
                                </div>--%>
                                <div class="form-group has-feedback">

                                    <asp:TextBox ID="TextBoxpassword" runat="server" CssClass="form-control" placeholder="Password" Style="width: 300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxpassword" ErrorMessage="This Field is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group has-feedback">

                                    <asp:TextBox ID="TextBoxconfirmpassword" runat="server" CssClass="form-control" placeholder="Confirm Password" Style="width: 300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxconfirmpassword" ErrorMessage="This Field is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxpassword" ControlToValidate="TextBoxconfirmpassword" ErrorMessage="Password doesn't match" ForeColor="#FF3300"></asp:CompareValidator>
                                </div>
                                <div class="form-group">

                                    <asp:TextBox ID="TextBoxcontact" runat="server" CssClass="form-control" placeholder="Contact Number" Style="width: 300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxcontact" ErrorMessage="This Field is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxcontact" ErrorMessage="Contact Number should be valid" ForeColor="#FF3300" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">

                                    <asp:TextBox ID="TextBoxaddress" runat="server" CssClass="form-control" placeholder="Address" Style="width: 300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxaddress" ErrorMessage="This Field is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                </div>
                                
                                <%--<div class="form-group"> 
                                 <div class="ReCaptchContainer"></div>
                                    <asp:Label ID="lblMessege1" runat="server"></asp:Label>
                                    </div>
                                </div>--%>
                                <%--<button class="btn btn-lg btn-primary btn-block text-uppercase" id="btnSubmit" type="submit">Register</button>--%>
                                <asp:Button ID="b1" runat="server" Text="Register" CssClass="btn btn-lg btn-primary btn-block text-uppercase" Style="width: 300px" OnClick="b1_Click" />

                                <a class="d-block text-center mt-2 small" href="login1.aspx" style="margin-left: -70px">Login</a>


                                <hr class="my-4">
                                <%--   <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i>Sign up with Google</button>
                                <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i>Sign up with Facebook</button>--%>
                                <asp:Button ID="btnfacebook" runat="server" Text="Google"  CssClass="btn btn-lg btn-google btn-block text-uppercase" Style="width: 300px"/>
 
                                <asp:Button ID="btngoogle" runat="server" Text="Facebook" CssClass="btn btn-lg btn-facebook btn-block text-uppercase" Style="width: 300px" />
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        </form>
                            
                        </div>
                    </div>
                </div>
            </div>
       <%--  
        <script src="https://www.google.com/recaptcha/api.js?onload=renderRecaptcha&render=explicit" async defer></script>
        <script type="text/javascript">
            var your_site_key = '6LeIQZ8UAAAAAKfgid_Zc66dsDeKyCGCnWsGmXFO';
            var renderRecaptcha=function(){
                grecaptcha.render('ReCaptchaContainer',{
                    'sitekey':'6LeIQZ8UAAAAAKfgid_Zc66dsDeKyCGCnWsGmXFO',
                    'callback': reCaptchaCallback,
                    theme:'light',
                    type:'image',
                size:'normal'
            });
            };
            var reCaptchaCallback = function (response) {
                if (response !== '') {
                    document.getElementById('lblMessege1').innerHTML = "";
                }
            };
        </script>--%>
            <script type="text/javascript">
                $(document).ready(function(){
                    $('#form1').bootstrapValidator({
                        feedbackIcons: {
                            valid: 'glyphicon glyphicon-ok',
                            invalid: 'glyphicon glyphicon-remove',
                            validating: 'glyphicon glyphicon-refresh'
                        },
                        fields: {
                            TextBoxUSername: {
                                validators: {
                                    stringLength: {
                                        min: 5,
                                        message: 'Please Enter your Full name with minimum 5 letters length'
                                    },
                                    notEmpty: {
                                        message: 'Please Enter your Full name'
                                    }
                                }
                            },
                            TextBoxcontact: {
                                validators: {
                                    numeric: {
                                        message: 'The phone no must be a number'
                                    },
                                    notEmpty: {
                                        message: 'Please Enter your phone number'
                                    }
                                }
                            },
                            TextBoxaddress: {
                                validators: {
                                    stringLength: {
                                        min: 15,
                                        max: 100,
                                        message:'Please enter at least 15 characters and no more than 100'
                                    },
                                    notEmpty: {
                                        message: 'Please Enter Address'
                                    }
                                }
                            },
                            TextBoxEmail: {
                                validators: {
                                    notEmpty: {
                                        message: 'Please Enter your email address'
                                    },
                                    emailAddress: {
                                        message: 'Please Enter a valid email address'
                                    }
                                }
                            },
                            TextBoxpassword: {
                                validators: {
                                    notEmpty: {
                                        message: 'Enter your profile password'
                                    }
                                }
                            },
                            TextBoxconfirmpassword: {
                                validators: {
                                    notEmpty: {
                                        message: 'Enter confirm your profile password'
                                    },
                                    identical: {
                                        field: 'password',
                                        message: 'Enter the password, what enter in password field'
                                    }
                                }
                            },
                           
                        }
                    });
            </script>
       
        <hr class="my-4" />
        </div>
      
        </body>
</asp:Content>
