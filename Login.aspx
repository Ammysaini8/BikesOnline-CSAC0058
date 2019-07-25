<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Home.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style10 {
            position: absolute;
            top: 16px;
            left: 528px;
            z-index: 1;
            font-size: xx-large;
            width: 301px;
        }
        .auto-style11 {
            position: absolute;
            top: 401px;
            left: 179px;
            z-index: 1;
            width: 60px;
            height: 28px;
            right: 1503px;
        }
        .auto-style13 {
          background-position:unset;
            height: 696px;
            width: 1365px;
        }
        .auto-style14 {
            position: absolute;
            top: 258px;
            left: 115px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 319px;
            left: 109px;
            z-index: 1;
            right: 1497px;
        }
        .auto-style17 {
            position: absolute;
            top: 312px;
            left: 238px;
            z-index: 1;
            width: 180px;
        }
        .auto-style18 {
            width: 49%;
            height: 95px;
            position: absolute;
            top: 249px;
            left: 58px;
            z-index: 1;
        }
        .auto-style19 {
            width: 895px;
        }
        .auto-style20 {
            width: 1185px;
        }
        .auto-style21 {
            width: 895px;
            height: 31px;
        }
        .auto-style22 {
            width: 1185px;
            height: 31px;
        }
        .auto-style23 {
            position: absolute;
            top: 252px;
            left: 235px;
            z-index: 1;
            width: 185px;
        }
        .auto-style24 {
            position: absolute;
            top: 399px;
            left: 297px;
            z-index: 1;
            width: 65px;
            height: 31px;
        }
        .auto-style25 {
            width: 1083px;
            height: 31px;
        }
        .auto-style26 {
            width: 1083px;
        }
        .auto-style27 {
            position: absolute;
            top: 177px;
            left: 211px;
            z-index: 1;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style13" property="og:image:width">
            <table class="auto-style18">
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style22">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style23"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style24" OnClick="Button2_Click" PostBackUrl="~/Signup.aspx" Text="Signup" />
            <asp:Label ID="Label5" runat="server" CssClass="auto-style27" ForeColor="#FF3300"></asp:Label>
            <strong>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/C.jpg" Height="698px" Width="1366px" />
              
                    </strong>&nbsp;<asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text="UserName"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" CssClass="auto-style15" Text="Password"></asp:Label>
            <strong>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style17" TextMode="Password"></asp:TextBox>
              
                    </strong>
            <br />
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="BIKES ONLINE" ForeColor="White"></asp:Label>
                        <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" Text="Login" CssClass="auto-style11" />
              
                    </strong>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
