<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PList.aspx.cs" Inherits="Home.PList" %>

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

        .auto-style3 {
            text-align: center;
            position: relative;
            left: 0px;
            top: 0px;
            width: 1385px;
        }
        .auto-style6 {
            position: absolute;
            top: -63px;
            left: 584px;
            z-index: 1;
            font-size: xx-large;
            height: 59px;
        }
        .auto-style7 {
            position: absolute;
            top: -40px;
            left: 1271px;
            z-index: 1;
            width: 75px;
            height: 26px;
        }
        .auto-style8 {
            position: absolute;
            top: 144px;
            left: 236px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 144px;
            left: 44px;
            z-index: 1;
        }
        .auto-style10 {
            position: relative;
            left: -33px;
            top: -2px;
            width: 1416px;
            height: 702px;
        }
        .auto-style11 {
            width: 1308px;
            height: 152px;
            position: absolute;
            top: 304px;
            left: 8px;
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
        <div class="auto-style3">
            <asp:Label ID="Label2" runat="server" CssClass="auto-style6" ForeColor="White" Text="BIKES ONLINE"></asp:Label>
            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style7" ForeColor="White" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
            <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Text="Add product" PostBackUrl="~/AddProduct.aspx" />
            <asp:Button ID="Button3" runat="server" Text="Product List" CssClass="auto-style9" OnClick="Button3_Click1" />
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style11" ForeColor="White">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/image/S.jpg"   CssClass="auto-style10" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
