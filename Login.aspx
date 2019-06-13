<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Home.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 31%;
            height: 147px;
            position: absolute;
            top: 297px;
            left: 48px;
            z-index: 1;
        }
        .auto-style2 {
            width: 104px;
        }
        .auto-style3 {
            width: 191px;
        }
        .auto-style5 {
            width: 30px;
        }
        .auto-style6 {
            width: 104px;
            height: 36px;
        }
        .auto-style7 {
            width: 191px;
            height: 36px;
        }
        .auto-style8 {
            width: 30px;
            height: 36px;
        }
        .auto-style10 {
            position: absolute;
            top: 170px;
            left: 76px;
            z-index: 1;
            font-size: xx-large;
            width: 301px;
        }
        .auto-style11 {
            position: absolute;
            top: 413px;
            left: 79px;
            z-index: 1;
            width: 74px;
            height: 28px;
            right: 1300px;
        }
        .auto-style12 {
            position: absolute;
            top: 114px;
            left: 151px;
            z-index: 1;
            width: 70px;
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Username</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Password</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" Text="Signup" CssClass="auto-style12" Height="30px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <br />
            <strong>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/C.jpg" Height="698px" Width="1366px" />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="BIKES ONLINE"></asp:Label>
                        <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" Text="Login" CssClass="auto-style11" />
              
                    </strong>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
