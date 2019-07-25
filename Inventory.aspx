<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="Home.Inventory" %>

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
         .auto-style13 {
             position: absolute;
             top: 11px;
             left: 587px;
             z-index: 1;
             font-size: xx-large;
             width: 252px;
         }
         .auto-style14 {
             position: absolute;
             top: 188px;
             left: 929px;
             z-index: 1;
             width: 152px;
             height: 45px;
             }
         .auto-style15 {
             position: absolute;
             top: 205px;
             left: 62px;
             z-index: 1;
             width: 130px;
         }
         .auto-style16 {
             position: absolute;
             top: 203px;
             left: 248px;
             z-index: 1;
             width: 149px;
         }
         .auto-style17 {
             width: 232px;
             height: 152px;
             position: absolute;
             top: 331px;
             left: 18px;
             z-index: 1;
         }
         .auto-style18 {
             width: 232px;
             height: 152px;
             position: absolute;
             top: 329px;
             left: 285px;
             z-index: 1;
         }
         .auto-style20 {
             margin-top: 0px;
             width: 1391px;
             height: 699px;
         }
         .auto-style21 {
             margin-right: 0px;
             margin-top: 0px;
         }
         .auto-style22 {
             position: absolute;
             top: 184px;
             left: 1145px;
             z-index: 1;
         }
         .auto-style23 {
             position: absolute;
             top: 14px;
             left: 1227px;
             z-index: 1;
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
            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style23" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
 
            <br />
            <br />

 
        <div class="auto-style20">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="BIKES ONLINE" ForeColor="White"></asp:Label>
            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style22" PostBackUrl="~/AddProduct.aspx">Add Product</asp:LinkButton>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/image/F.jpg" Height="698px" Width="1393px" CssClass="auto-style21" />
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style14" PostBackUrl="~/AddBrand.aspx">Add Brand</asp:LinkButton>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style16" OnClick="Button2_Click1" Text="Product Details" />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style15" OnClick="Button1_Click1" Text="Brand Details" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style17" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
            <br />
            <asp:GridView ID="GridView2" runat="server" CssClass="auto-style18">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>

 
    </div>
    </form>
</body>
</html>
