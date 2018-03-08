<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ShoppingCart.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
    <link href="Content/Home.css" rel="stylesheet" />
    <link href="Content/shoppingcart.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="logo"><a href="Home.aspx">My Shopping Cart</a></h1>
        <div class="Login">
            <a href="Login.aspx">Login</a>
            <a href="Home.aspx">Logout</a>
        </div>
        <div class="menu">
            <ul>
                <li><a href="Home.aspx">Home</a> </li>

                <li><a href="ShoppingCart.aspx">Shopping Cart</a> </li>
            </ul>
        </div>
        <div id="EmptyCart" runat="server">
            Cart Empty !
        </div>
        <div id="CartItems" runat="server">
            <table class="Cartlist" cellspacing="0">
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Product</th>
                        <th>Price(RM)</th>
                        <th>Quantity</th>
                        <th>Total(RM)</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="CartListCarting" runat="server">
                        <ItemTemplate>

                            <tr>
                                <td>
                                    <img class="carting" src="<%#Eval("ProductImage") %>" /></td>
                                <td><span><%#Eval("ProductName") %></span></td>
                                <td class="price"><%#Eval("ProductPrice") %></td>
                                <td><%#Eval("Quantity") %></td>
                                <td><%#Eval("Total") %></td>
                            </tr>

                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
            <div class="cart">
                <asp:Button ID="btnCheckout" runat="server" Text="Checkout" OnClick="btnCheckout_Click" /> 
            </div>
        </div>


    </form>
</body>
</html>
