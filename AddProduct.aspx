<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Home.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            top: 21px;
            left: 616px;
            z-index: 1;
            font-size: x-large;
        }
        .auto-style2 {
            position: absolute;
            top: 29px;
            left: 1294px;
            z-index: 1;
            font-size: large;
        }
        .auto-style3 {
            position: absolute;
            top: 184px;
            left: 294px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 245px;
            left: 288px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 304px;
            left: 287px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 181px;
            left: 453px;
            z-index: 1;
            width: 155px;
        }
        .auto-style7 {
            position: absolute;
            top: 239px;
            left: 448px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 299px;
            left: 449px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 179px;
            left: 734px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 245px;
            left: 736px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 175px;
            left: 949px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 245px;
            left: 950px;
            z-index: 1;
            width: 51px;
        }
        .auto-style14 {
            position: absolute;
            top: 353px;
            left: 663px;
            z-index: 1;
            width: 107px;
        }
        .auto-style16 {
            text-align: center;
            background-color: #CCFF99;
        }
        .auto-style18 {
            width: 1253px;
            height: 152px;
            position: absolute;
            top: 425px;
            left: 59px;
            z-index: 1;
        }
        </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style16">
            <div class="topnav" style="position: relative">
 <a class="active" href="Home.aspx">Home</a>
  <a href="BrandList.aspx">Brand</a>
            <a href="PList.aspx">Product</a>
 
            <br style="position: relative" />
            <br />
 
</div>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Add Product"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style13">
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Brand"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style6">
                <asp:ListItem>GT</asp:ListItem>
                <asp:ListItem>Diadora</asp:ListItem>
                <asp:ListItem>Nakamura</asp:ListItem>
                <asp:ListItem>GT</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Product ID"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Sales Price"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="Product Name"></asp:Label>
            <br />
            <asp:TextBox ID="id" runat="server" CssClass="auto-style7"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" CssClass="auto-style11" Text="Available Quantity"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style18" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" ForeColor="White" Text="BIKES ONLINE"></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style2" ForeColor="White" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
            <asp:TextBox ID="SPrice" runat="server" CssClass="auto-style8"></asp:TextBox>
            <asp:TextBox ID="PName" runat="server" CssClass="auto-style12"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="Add" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
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
