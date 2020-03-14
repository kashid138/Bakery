<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ImageDimension.aspx.cs" Inherits="divSample.ImageDimension" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
<meta charset="UTF-8">
<title>JavaScript Find Current Image Width and Height</title>
<script type="text/javascript">
    function imgSize() {
        var myImg = document.querySelector("#sky");
        var currWidth = myImg.clientWidth;
        var currHeight = myImg.clientHeight;
        alert("Current width=" + currWidth + ", " + "Original height=" + currHeight);
    }
</script>
</head>
<body>
    <img src="/img/desk.png" id="sky" width="250" alt="Cloudy Sky" contextmenu="skymenu">
    <p><button type="button" onclick="imgSize();">Get Current Image Size</button></p>
</body>
 
</asp:Content>
