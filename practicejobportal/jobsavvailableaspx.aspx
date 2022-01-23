<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jobsavvailableaspx.aspx.cs" Inherits="practicejobportal.jobsavvailableaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            background-color: #FF0066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div class="auto-style2">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="jobs available for You!!!!!."></asp:Label>
        </div>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="Show" />
        </div>
        <asp:GridView ID="gvdetails" runat="server"></asp:GridView>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style1" OnClick="Button2_Click" Text="Apply" />
    </form>
</body>
</html>
