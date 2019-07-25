﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Home.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 1423px;
            height: 695px;
        }
        .topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 20px 22px;
  text-decoration: none;
  font-size: 20px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
        .auto-style2 {
            position: absolute;
            top: 82px;
            left: 564px;
            z-index: 1;
            font-size: xx-large;
            width: 299px;
        }
        .auto-style3 {
            position: absolute;
            top: 220px;
            left: 437px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 223px;
            left: 634px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 226px;
            left: 865px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 20px;
            left: 1287px;
            z-index: 1;
            height: 32px;
            width: 86px;
        }
        .auto-style7 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="topnav">
 <a class="active" href="Home.aspx">Home</a>
  <a href="BrandList.aspx">Brand</a>
            <a href="PList.aspx">Product</a>
 
            <br />
            <br />
 
</div>
        <div class="auto-style1">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="BIKES ONLINE"></asp:Label>
            </strong>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style3" PostBackUrl="~/AddBrand.aspx">Add Brand</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style4" PostBackUrl="~/AddProduct.aspx">Add Product</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style5" PostBackUrl="~/Inventory.aspx">Inventory</asp:LinkButton>
            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style6" PostBackUrl="~/Login.aspx" ForeColor="White">Logout</asp:LinkButton>
        
           
  <a href="BrandList.aspx">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/D.jpg" Height="698px" Width="1393px" CssClass="auto-style7" />
        
           
            </a>
 
           
        </div>

    &nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
