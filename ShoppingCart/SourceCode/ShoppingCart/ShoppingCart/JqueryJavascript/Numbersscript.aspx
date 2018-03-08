<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Numbersscript.aspx.cs" Inherits="JqueryJavascript.Numbersscript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Message() {
            var a = document.getElementById("a").value;
            var b = document.getElementById("b").value;
            var Total = Number(a) + Number(b);
            alert(Total);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="text" id="a" />
    <input type="text" id="b" />
        <input type="button" onclick="Message()" value="Total" />
    </div>
    </form>
</body>
</html>
