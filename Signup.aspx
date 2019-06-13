<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Home.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 58px;
            left: 120px;
            z-index: 1;
            font-size: xx-large;
        }
        .auto-style4 {
            position: absolute;
            top: 196px;
            left: 268px;
            z-index: 1;
            width: 130px;
        }
        .auto-style6 {
            position: absolute;
            top: 227px;
            left: 269px;
            z-index: 1;
            width: 130px;
        }
        .auto-style8 {
            position: absolute;
            top: 198px;
            left: 107px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 377px;
            left: 197px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 252px;
            left: 268px;
            z-index: 1;
            width: 129px;
        }
        .auto-style11 {
            width: 1401px;
            height: 757px;
        }
        .auto-style12 {
            position: absolute;
            top: 253px;
            left: 37px;
            z-index: 1;
        }
        .auto-style13 {
            width: 44%;
            height: 113px;
            position: absolute;
            top: 195px;
            left: -8px;
            z-index: 1;
        }
        .auto-style14 {
            width: 219px;
        }
        .auto-style15 {
            position: absolute;
            top: 226px;
            left: 107px;
            z-index: 1;
        }
        .auto-style16 {
            width: 249px;
        }
        .auto-style17 {
            position: absolute;
            top: 280px;
            left: 269px;
            z-index: 1;
            height: 23px;
            width: 136px;
        }
        .auto-style18 {
            position: absolute;
            top: 311px;
            left: 266px;
            z-index: 1;
            width: 132px;
        }
        .auto-style19 {
            position: absolute;
            top: 90px;
            left: 122px;
            z-index: 1;
            height: 19px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style11">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/C.jpg" Height="698px" Width="1366px" />
            <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text="Confirm Password"></asp:Label>
            <table class="auto-style13">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style19" Text="Captcha"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="BIKES ONLINE"></asp:Label>
            <asp:Image ID="Image2" runat="server" CssClass="auto-style17" ImageUrl="~/image/12.png" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style18">Type Here</asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text="Username"></asp:Label>
            <br />
&nbsp;
            <asp:TextBox ID="username" runat="server" CssClass="auto-style4"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" CssClass="auto-style15" Text="Password"></asp:Label>
            <br />
&nbsp;<asp:TextBox ID="pswd" runat="server" CssClass="auto-style6" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="cpswd" runat="server" CssClass="auto-style10" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style9" OnClick="Button1_Click" Text="Signup" />
            <br />
            <br />
            <br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
