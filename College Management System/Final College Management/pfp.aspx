<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pfp.aspx.cs" Inherits="pfp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-q10VITrVYUM-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        <br />
        &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <table style="height: 509px; left: 741px; position: relative; top: 35px;">
            <tr>
                <td colspan="2" style="text-align: center">
                    <strong><span style="font-size: 14pt; color: white;">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/116117042-forgot-password-folder-shows-login-authentication-invalid-remember-login-security-verification-3d-il.jpg"
                            Style="left: 70px; position: relative; top: 0px" Width="195px" />Forgot Password</span></strong></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Username</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtpuser" runat="server" style="font-weight: bold; font-size: x-large"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Security question</strong></td>
                <td style="width: 397px; text-align: left">
                    &nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" ForeColor="Black">
                    </asp:GridView>
                    &nbsp;&nbsp;<asp:Button ID="btnpclick" runat="server" Height="45px" OnClick="btnsclick_Click"
                        Text="Click here to view your security questions" Width="339px" /><br />
                </td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Type your answer</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtpans" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">New Password</strong></td>
                <td style="width: 397px; text-align: left">
                    <asp:TextBox ID="txtpnpwd" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Confirm Password</strong></td>
                <td style="width: 397px; text-align: left">
                    &nbsp;<asp:TextBox ID="txtpcpwd" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpnpwd"
                        ControlToValidate="txtpcpwd" ErrorMessage="Password do not match"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 51px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp;<asp:Button ID="btnok" runat="server" Height="45px" OnClick="btnok_Click"
                        Text="OK" Width="100px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="btnback" runat="server" Height="45px" OnClick="btnback_Click" Text="Back"
                        Width="100px" Font-Bold="True" Font-Size="X-Large" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
