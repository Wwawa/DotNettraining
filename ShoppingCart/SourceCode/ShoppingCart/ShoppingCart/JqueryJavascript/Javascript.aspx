<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Javascript.aspx.cs" Inherits="JqueryJavascript.Javascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Numbers() {
            var z = document.getElementById("txt1").value;
            var y = document.getElementById("txt2").value;
            var x = Number(y) + Number(z);
            document.getElementById("demo").innerHTML = x;
            alert(x);
        }
    </script>
    
</head>

<body>

    <p>Click Here To Calculate</p>
    <button onclick="Numbers()"> Try It </button>
    <br />
    <br />
    Enter Num1:
       <input type="text" id="txt1" />
    <br />
    Enter Num2:
       <input type="text" id="txt2" />

    <p id="demo"></p>

    
</body>




</html>
