<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userregestration.aspx.cs" Inherits="practicejobportal.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Register</h1>
            <hr />
            <table>
                <tr>
                    <td>Firstname</td><td>
                        <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Firstname cannot be empty!" ControlToValidate="txtfname" ForeColor="#FF6600"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Lastname</td><td>
                        <asp:TextBox ID="txtlname" runat="server"></asp:TextBox></td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="Lastname cannot be empty" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <br />
                        <asp:RadioButton GroupName="User"  ID="RadioButton1" runat="server" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged" /><br />
                        <asp:RadioButton GroupName="User"  ID ="RadioButton2" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" /><br />
                        <asp:RadioButton GroupName="User"   ID="RadioButton3" runat="server" Text="Others" OnCheckedChanged="RadioButton3_CheckedChanged" />
                   </td> 
                </tr>
                <tr>
                    <td>Email</td><td>
                        <asp:TextBox ID="txtemail" runat="server" Text=""></asp:TextBox></td><td>
                        
                      <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Email address incorrect" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+)\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                    </td>
                </tr>
                <tr>
                    <td>Mobile</td><td>
                        <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox></td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmobile" ErrorMessage="Mobile cannot be empty" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password</td><td>
                        <asp:TextBox ID="txtpwd" TextMode="Password" runat="server"></asp:TextBox></td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpwd" ErrorMessage="Password cannot be empty" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Retyp Password</td><td>
                        <asp:TextBox ID="txtretypepwd" TextMode="Password" runat="server"></asp:TextBox></td><td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtretypepwd" ErrorMessage="Password mismatch" ForeColor="#FF6600"></asp:CompareValidator>
                    </td>
                </tr>
                <tr><td></td><td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" /></td></tr>
            </table>
            <div>
                <asp:Label Text="" ID="lblResult" runat="server" />
                <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
            </div>
            <div>
                <h2>User Details</h2>
                <hr />
                <asp:GridView ID="gvUserInfo" runat="server"></asp:GridView>
                </div>
        </div>
    </form>
</body>
</html>
