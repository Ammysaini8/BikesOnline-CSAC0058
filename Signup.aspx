<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Home.Signup1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 193px;
        }
        .auto-style2 {
            width: 345px;
        }
        .auto-style3 {
            margin-left: 382px;
            width: 548px;
            height: 201px;
            position: absolute;
            top: 159px;
            left: -358px;
            z-index: 1;
        }
        .auto-style4 {
            background-position:unset;
            width: 96%;
            height: 659px;
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            background-attachment: fixed;
        }
        .auto-style5 {
            position: absolute;
            top: 14px;
            left: 590px;
            z-index: 1;
            font-size: xx-large;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            
            <asp:Image ID="Image1" runat="server" ForeColor="White" Height="663px" ImageUrl="~/image/C.jpg" Width="1395px" />
            
         <table class="auto-style3">
            <tr>
                <td class="auto-style1">Username:</td>
                <td class="auto-style2"><asp:TextBox ID="uname" runat="server" Width="195px"></asp:TextBox></td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Password :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="pass" runat="server" Width="198px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Confirm Password:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="cpass" runat="server" Width="196px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Image ID="imgCaptcha" runat="server" ImageUrl="~/CaptchaImage.aspx" />
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCaptchaText" runat="server" Width="100px" /> 
                    <br />
                    [Type the characters you see]
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style2">
                    <asp:Button ID="btnSubmit" runat="server"  Text="Signup" OnClick="btnSubmit_Click"/>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style2">
                    <asp:Label ID="lblMessage" runat="server" />
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <p class="auto-style6">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" ForeColor="White" Text="BIKES ONLINE"></asp:Label>
            </strong>
        </p>
    </form>
</body>
</html>
