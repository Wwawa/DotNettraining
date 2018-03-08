<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/Style.css" rel="stylesheet" />

</head>

<body>
       <center>
    <form id="form1" runat="server">
        <div>
            <marquee>Welcome To Shopping Cart</marquee>
            <h3>Shopping Cart</h3>
            <div class="Login" style="background:lightpink">
                <div class="Username">
                    <div>
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="TextUsername" runat="server"></asp:TextBox>
                    </div>
                    <div class="Password">
                
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="TextPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="Button">
                            <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
                        </div>
                    <div class="status">
                              <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
    </form>
           </center>
</body>
</html>
