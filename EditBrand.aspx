﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBrand.aspx.cs" Inherits="Home.EditBrand" %>

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
            top: 104px;
            left: 57px;
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
            top: 241px;
            left: 431px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 6px;
            left: 642px;
            z-index: 1;
            font-size: x-large;
        }
        .auto-style5 {
            position: absolute;
            top: 174px;
            left: 630px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 241px;
            left: 628px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 308px;
            left: 507px;
            z-index: 1;
            width: 76px;
            right: 727px;
        }
          .auto-style8 {
            height: 642px;
            background-color: #CCFF99;
        }
        .auto-style10 {
            text-align: center;
        }
        
        .auto-style11 {
            position: absolute;
            top: 307px;
            left: 639px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 25px;
            left: 1277px;
            z-index: 1;
            font-size: large;
        }

        .auto-style13 {
            width: 1112px;
            height: 228px;
            position: absolute;
            top: 399px;
            left: 180px;
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
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Edit Brand"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style12" ForeColor="White" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Brand Name"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text="Brand ID"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" CssClass="auto-style4" ForeColor="White" Text="BIKES ONLINE"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Text="Cancel" />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="Update" />
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6"></asp:TextBox>
            <br />
            <br />
             <div class="auto-style10">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True"  DataKeyName="Id"
                ShowHeaderWhenEmpty="True"
                OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" 
                 OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CssClass="auto-style13" ForeColor="#333333" GridLines="None" >
                
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                
                <Columns>
                    <asp:TemplateField HeaderText ="Brand_ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Brand_ID") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID ="txtBrand_ID" Text='<%# Eval("Brand_ID") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="txtBrand_IDFooter"  runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                
                    <asp:TemplateField HeaderText ="Brand_name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Brand_name") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID ="txtBrandName" Text='<%# Eval("Brand_name") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="txtBrandNameFooter"  runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/crud/edit.jpg" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/crud/delete.jpg" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/crud/save.jpg" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/crud/cancel.jpg" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/crud/addn.jpg" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                
            <asp:Label ID="lblSucessMessage" Text="" runat="server" ForeColor="Green" />
            <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
             </div>
                 <br />
            <br />
            <br />
            <div class="auto-style10">
            </div>
            <br />
            <br />
            <div class="auto-style10">
            </div>
            <br />
        </div>
            <br />
           
    </form>
</body>
</html>
