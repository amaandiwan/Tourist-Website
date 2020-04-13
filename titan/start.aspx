<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="start.aspx.cs" Inherits="titan.start" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="start.css"/>
    <style>a { color: #00ffff; } /* CSS link color */</style>
</head>
    <body data-spy="scroll" id = "bo" onload="puru()">
        <div id ="black">
	<div  id = "prload" class = "prel" >
	<div class = "lal"><h1><br/>Guptron</h1></div>
       </div>
    <form id="form1" runat="server">
    <div>
        <h2> Login </h2>
&nbsp;<asp:TextBox ID="TextBox3" runat="server"  placeholder ="Enter your Name"></asp:TextBox>
        <br />
&nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode = "Password" placeholder ="Enter your password"></asp:TextBox>
    </div>
        <asp:Button ID="Button1" runat="server" Text="Login" href ="main" OnClick="Button1_Click"  />
        <br /><br />
        <a href ="sign.aspx">Sign Up</a>
        <br />
        <asp:Label ID="lbldisop" runat="server" Text="       "></asp:Label>
    </form>
            </div>
</body>
    <script>
        function puru() {
            var x = document.getElementById("prload");
            x.style.display = "none";
        }
        
    </script>
</html>
