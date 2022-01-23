<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employeelogin1.aspx.cs" Inherits="practicejobportal.Employeelogin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
            color: #FF0000;
            text-align: center;
        }
        .auto-style5 {
            margin-left: 0px;
            margin-right: 0px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style8 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1"><strong>Login</strong><tr><td class="auto-style3"></h1>
            <h1 class="auto-style1">Email Id</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6" Height="40px" Width="308px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter a valid usermailid"></asp:RequiredFieldValidator>
            </h1>
            <h1 class="auto-style1">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5" Height="50px" TextMode="Password" Width="316px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"  ErrorMessage ="Enter a valid password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td></h1>
            <h1 class="auto-style1">&nbsp;<td class="auto-style4"><asp:Button ID="Button1" runat="server" Height="48px" OnClick="Button1_Click" Text="Login" Width="131px" />
&nbsp;
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="48px" Text="Show Cv Where user Updated" Width="237px" OnClick="Button2_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </h1>
        </div>
        <asp:GridView ID="gvdetails" runat="server">
        </asp:GridView>
    </form>
</body>
</html>

