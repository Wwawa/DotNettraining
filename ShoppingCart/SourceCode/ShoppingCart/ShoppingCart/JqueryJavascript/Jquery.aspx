<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jquery.aspx.cs" Inherits="JqueryJavascript.Jquery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        function Message() {
            alert($("#txtMessage").val());
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" id="txtMessage" />
            <input type="button" id="Button1" onclick="Message()" value="Submit" />
        </div>
    </form>
</body>
</html>
