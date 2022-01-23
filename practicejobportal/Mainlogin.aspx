<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainlogin.aspx.cs" Inherits="practicejobportal.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN!!!!</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #FF0000;
        }
        .auto-style2 {
            font-size: large;
            color: #00CC00;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-size: large;
            color: #00FF00;
        }
        .auto-style5 {
            color: #FF0066;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
           


            Login!!</div>
        <div class="auto-style3">
            <br />

            <asp:Button ID="btnuser" runat="server" Text="USER" CssClass="auto-style2" Width="177px" OnClick="btnuser_Click" />
            <hr />
            <asp:Button ID="btnemployee" runat="server" Text="EMPLOYEE" CssClass="auto-style4" OnClick="btnemployee_Click" />
            <hr />
            <asp:Button ID="btnadmin" runat="server" Text="ADMIN" CssClass="auto-style5" Width="189px" OnClick="btnadmin_Click" />  

        </div>
    </form>
</body>
</html>
