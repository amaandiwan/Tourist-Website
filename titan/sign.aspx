<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign.aspx.cs" Inherits="titan.sign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="sign.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Create An Account </h3>
        <asp:Label class = "label" ID="Label1" runat="server" Text="FirstName"></asp:Label>
        <br />
        <asp:TextBox  class ="textbox" ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label class = "label" ID="Label2" runat="server" Text="LastName"></asp:Label>
        <br />
        <asp:TextBox  class ="textbox" ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label class = "label" ID="Label3" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox   class ="textbox" TextMode = "Password" ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label  ID="Label4" runat="server" Text="Re-Enter Password"></asp:Label>
        <br />
        <asp:TextBox class ="textbox" TextMode="Password" ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Label class = "label" ID="Label5" runat="server" Text="Username"></asp:Label>
        <br />
        <asp:TextBox  class ="textbox" ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <!--
        <textarea class ="textarea" id="TextArea1" cols="20" name="S1" rows="2" runat="server"></textarea><br />
        <br />
        <br />
        <asp:Label class = "label" ID="Label6" runat="server" Text="Gender"></asp:Label>
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" />
&nbsp;  <asp:RadioButton ID="RadioButton2" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Female" />
        <br /> 
        -->
        <br />
        <asp:Button Class ="btn" ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
        <br />
        <br />
        <asp:Label ID="lbldisop" runat="server" Text="       "></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
