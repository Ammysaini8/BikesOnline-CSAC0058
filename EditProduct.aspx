<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Home.EditProduct" %>

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
        .auto-style16 {
            text-align: center;
            background-color: #CCFF99;
        }
        .auto-style19 {
            position: absolute;
            top: 354px;
            left: 629px;
            z-index: 1;
            width: 94px;
            right: 730px;
        }
        .auto-style20 {
            position: absolute;
            top: 355px;
            left: 767px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 399px;
            left: 16px;
            z-index: 1;
            width: 1028px;
            height: 196px;
        }
        .auto-style24 {
            position: absolute;
            top: 692px;
            left: 826px;
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
            <asp:Label ID="Label8" runat="server" Text="Edit Product"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style13" >
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Brand"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style6">
                <asp:ListItem>GT</asp:ListItem>
                <asp:ListItem>Diadora</asp:ListItem>
                <asp:ListItem>Nakamura</asp:ListItem>
                <asp:ListItem>Super Cycle</asp:ListItem>
                <asp:ListItem>Hyper</asp:ListItem>
                <asp:ListItem>Movelo</asp:ListItem>
                <asp:ListItem>Banshee</asp:ListItem>
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
            <asp:Button ID="Button2" runat="server" CssClass="auto-style19" OnClick="Button2_Click" Text="Update" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" ForeColor="White" Text="BIKES ONLINE"></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style2" ForeColor="White" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
            <asp:TextBox ID="SPrice" runat="server" CssClass="auto-style8"></asp:TextBox>
            <asp:TextBox ID="PName" runat="server" CssClass="auto-style12"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="auto-style20" PostBackUrl="~/AddProduct.aspx" />
            
            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" CssClass="auto-style24"></asp:Label>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True"  DataKeyName="Id"
                ShowHeaderWhenEmpty="True"
                OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" 
                 OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CssClass="auto-style21" >
               
                <Columns>
                    <asp:TemplateField HeaderText ="Product_id">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Product_id") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID ="txtProduct_id" Text='<%# Eval("Product_id") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="txtProduct_idFooter"  runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Brand_name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Brand_name") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID ="txtBrand" Text='<%# Eval("Brand_name") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="txtBrand_nameFooter"  runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Product_name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Product_name") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID ="txtProduct_name" Text='<%# Eval("Product_name") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="txtProduct_nameFooter"  runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Sales_price">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Sales_price") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID ="txtSales_price" Text='<%# Eval("Sales_price") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="txtSales_priceFooter"  runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Quantity">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Quantity") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID ="txtQuantity" Text='<%# Eval("Quantity") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID ="txtQuantityFooter"  runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/Crud/edit.jpg" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                            <asp:ImageButton ImageUrl="~/Crud/delete.jpg" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/Crud/save.jpg" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                            <asp:ImageButton  ImageUrl="~/Crud/cancel.jpg" runat="server" CommandName="Cancle" ToolTip="Cancle" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/Crud/addn.jpg" runat="server" CommandName="AddNew" ToolTip="AddNew" Width="20px" Height="20px" />
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <br />  
            


            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:Label ID="lblSucessMessage" runat="server" foreColor="Green"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
