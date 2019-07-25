<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrandList.aspx.cs" Inherits="Home.BrandList" %>

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
            top: 6px;
            left: 659px;
            z-index: 1;
            font-size: x-large;
        }
        .auto-style2 {
            position: absolute;
            top: 74px;
            left: 674px;
            z-index: 1;
            font-size: x-large;
            width: 142px;
        }
        .auto-style3 {
            position: absolute;
            top: 153px;
            left: 1126px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 24px;
            left: 1284px;
            z-index: 1;
            font-size: large;
        }
        .auto-style5 {
            width: 833px;
            height: 202px;
            position: absolute;
            top: 214px;
            left: 459px;
            z-index: 1;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style8 {
            position: absolute;
            top: 70px;
            left: -7px;
            z-index: 1;
            height: 684px;
            width: 1414px;
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
        <div class="auto-style6">
            <br />
            <asp:Image ID="Image1" runat="server"  ImageUrl="~/image/H.jpg" CssClass="auto-style8" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" ForeColor="White" Text="BIKES ONLINE"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" ForeColor="White" Text="Brand List"></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style4" ForeColor="White" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style5" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="Add Brand" PostBackUrl="~/AddBrand.aspx" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
