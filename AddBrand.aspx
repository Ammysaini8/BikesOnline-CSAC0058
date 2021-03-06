﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBrand.aspx.cs" Inherits="Home.AddBrand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
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

        .auto-style1 {
            position: absolute;
            top: 107px;
            left: 41px;
            z-index: 1;
            font-size: x-large;
        }
        .auto-style2 {
            position: absolute;
            top: 172px;
            left: 430px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 242px;
            left: 431px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 240px;
            left: 627px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 174px;
            left: 629px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 317px;
            left: 505px;
            z-index: 1;
            width: 76px;
        }
        .auto-style8 {
            height: 642px;
            background-color: #CCFF99;
        }
        .auto-style9 {
            margin-left: 2px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            position: absolute;
            top: 23px;
            left: 1298px;
            z-index: 1;
            font-size: large;
        }
        .auto-style12 {
            position: absolute;
            top: 318px;
            left: 652px;
            z-index: 1;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="topnav" style="position: relative">
 <a class="active" href="Home.aspx">Home</a>
  <a href="BrandList.aspx">Brand</a>
            <a href="PList.aspx">Product</a>
 
            <br style="position: relative" />
            <br />
 
</div>
        <div class="auto-style8">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Add Brand"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style11" ForeColor="White" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Brand Name"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text="Brand ID"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style12" PostBackUrl="~/EditBrand.aspx" Text="Update" OnClick="Button2_Click" />
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="Add" />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6"></asp:TextBox>
            <br />
            <br />
            <br />
            <div class="auto-style10">
                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style9" Width="1302px">
                </asp:GridView>
            </div>
            <br />
            <br />
            <div class="auto-style10">
            </div>
            <br />
        </div>
    </form>
</body>
</html>
