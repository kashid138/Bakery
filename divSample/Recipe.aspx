<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Recipe.aspx.cs" Inherits="divSample.Recipe" %>
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
    <style>
   .dropdown:hover>.dropdown-menu{
   display:block;
   }
   </style>
     </head>
    <body>
        <hr class="my-4" />
        <div>
            <img src="img/PageRecipe.jpg" class="mx-auto d-block"/>
            <h1 align="center"><u>Recipe</u></h1>
            <hr class="my-2" />
            <dl class="row">
            <dt class="col-sm-3 text-center">Cake flour:</dt>
            <dd class="col-sm-9"> cake flour has less gluten in it than all-purpose flour which results in a more tender and soft crumb.
                <p> Cake flour is what we always used in pastry school for the best cakes. </p></dd>

            <dt class="col-sm-3 text-center">Whole eggs:</dt>
            <dd class="col-sm-9">
            <p>eggs not only provide structure to the cake but flavor. Using egg yolks adds an added richness and depth of flavor to the vanilla cake recipe.</p>
             </dd>

            <dt class="col-sm-3 text-center">Good quality butter:</dt>
           <dd class="col-sm-9">Did you know cheap butter contains more water? The best butter has a high fat content and results in a better flavor in cake recipes.</dd>

           <dt class="col-sm-3 text-truncate text-center">Real vanilla:</dt>
           <dd class="col-sm-9">I know vanilla is SUPER expensive right now but for truly the best flavor, real vanilla is key.<p> I prefer a vanilla bean because I love seeing all those little flecks in the cake but any pure vanilla extract is excellent.</p> 
</dd>
        
           <dt class="col-sm-3 text-center">Oil:</dt>
           <dd class="col-sm-9">You might be wondering if that oil is absolutely necessary and I’m here to tell you it is a must.<p>Oil helps keep the cake from drying out, staying soft and moist.</p></dd>
 
</dl>
        </div>
        <div>
            <p align="center">Learn how to bake on <mark>Birdy's</mark></p>
             
        </div>
       
         <hr class="my-4" />
    </body>
</asp:Content>
