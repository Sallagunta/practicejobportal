<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jobdetails.aspx.cs" Inherits="practicejobportal.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
            width: 1589px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            color: #FF0000;
        }
        .auto-style5 {
            width: 92%;
            height: 355px;
        }
        .auto-style6 {
            color: #FFFF00;
            width: 726px;
            background-color: #FFFF00;
        }
        .auto-style8 {
            color: #000000;
            width: 699px;
            background-color: #FFFF00;
        }
        .auto-style9 {
            color: #FFFF00;
            width: 699px;
            background-color: #FFFF00;
        }
        .auto-style10 {
            background-color: #FF9900;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="job adda!!!!!"></asp:Label>
            </strong>
        <div class="auto-style3">
            <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Apply for the post:web developer in asp.net"></asp:Label>
            <br />
            <br />
        </div>
        </div>
        <table border="1" class="auto-style5">
            <tr>
                <td class="auto-style8">your Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Address</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Email Address</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Mobile Number</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server" Height="31px" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Upload Resume(PDF Format only!)</td>
                <td class="auto-style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="46px" Width="333px" />
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="Submit" Width="134px" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label>
    </form>
</body>
</html>
