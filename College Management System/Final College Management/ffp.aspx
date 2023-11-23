<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ffp.aspx.cs" Inherits="ffp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="pics/jess-bailey-q10VITrVYUM-unsplash.jpg">
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        &nbsp; &nbsp; &nbsp;&nbsp;
        <table style="left: 760px; position: relative; top: 21px">
            <tr>
                <td colspan="2" style="text-align: center">
                    <strong><span style="font-size: 14pt; color: white;">
                        <asp:Image ID="Image1" runat="server" Height="181px" ImageUrl="~/pics/116117042-forgot-password-folder-shows-login-authentication-invalid-remember-login-security-verification-3d-il.jpg"
                            Style="left: 78px; position: relative; top: -4px" />Forgot P</span></strong></td>
            </tr>
            <tr>
                <td style="font-weight: bold; font-size: x-large; width: 136px; text-align: left">
                    Faculty ID</td>
                <td style="width: 438px; text-align: left">
                    <asp:TextBox ID="txtfid" runat="server" Font-Bold="True" Font-Size="X-Large" Style="position: relative"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Name</strong></td>
                <td style="width: 438px; text-align: left">
                    <asp:TextBox ID="txtfuname" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Security question</strong></td>
                <td style="width: 438px; text-align: left">
                    &nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" ForeColor="Black">
                    </asp:GridView>
                    <asp:Button ID="btnfclick" runat="server" Height="47px" Text="Click here to view your security question"
                        Width="458px" OnClick="btnfclick_Click" Font-Bold="True" Font-Size="Large" /><br />
                </td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Type your answer</strong></td>
                <td style="width: 438px; text-align: left">
                    <asp:TextBox ID="txtfans" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">New Password</strong></td>
                <td style="width: 438px; text-align: left">
                    <asp:TextBox ID="txtfnpwd" runat="server" Font-Bold="True" Font-Size="X-Large" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 136px; text-align: left">
                    <strong style="color: black; font-weight: bold; font-size: x-large;">Confirm Password</strong></td>
                <td style="width: 438px; text-align: left">
                    <asp:TextBox ID="txtfcpwd" runat="server" Font-Bold="True" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtfnpwd"
                        ControlToValidate="txtfcpwd" ErrorMessage="New and Confirm password do not match "></asp:CompareValidator></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 51px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="btnok" runat="server" Height="43px" OnClick="btnok_Click"
                        Text="OK" Width="97px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="btnback" runat="server" Height="43px" OnClick="btnback_Click1" Text="Back"
                        Width="97px" Font-Bold="True" Font-Size="X-Large" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
